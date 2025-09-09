# ================================================ #
# ================== Start_Step ================== #
# ================================================ #
set design SYSTEM_TOP
# remove the .lock file
sh rm /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library/${design}.dlib/${design}_cts/design.ndm.lock

 
set design_lib_path /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library
open_block $design_lib_path/${design}.dlib:${design}_cts.design
copy_block -from_block ${design}.dlib:${design}_pl.design -to_block ${design}_cts
current_block ${design}_cts.design
start_gui


# ================================================ #
# =================== Pre-CTS ==================== #
# ================================================ # 
# --- Check design placment ,congestion .. 
check_design -checks pre_clock_tree_stage

# Use the check_clock_trees command before clock tree synthesis to check for common problems that might impact clock tree synthesis.

check_clock_trees

set_attribute [get_lib_cells saed90nm_max_cg/CGLPPSX4] dont_touch false


# --- Reset all option and configration for skew and latency
# --- ignore M8,M9 as they reserved for the power ring and meshs
# --- ignore M1 as it reserved for the design signal routing 
# --- therfore any clock routes will be limited from M2 to M7 
set_ignored_layers -max_routing_layer M8 -min_routing_layer M1 -verbose

# remove any previous definitions for the target skew and latency as we will set new values
remove_clock_tree_options -all -target_skew -target_latency 
# --- Clock sources  
report_clocks 
report_clock_qor -type structure
report_clock_timing -type summary

# ================================================ #
# ================= Transitions ================== #
# ================================================ # 
#set_driving_cell -lib_cell INVX1 -pin ZN [get_ports {FUN_REF_CLK FUN_UART_CLK SCAN_CLK}]
set_input_transition -rise 0.3 {FUN_REF_CLK FUN_UART_CLK SCAN_CLK}
set_input_transition -fall 0.2 {FUN_REF_CLK FUN_UART_CLK SCAN_CLK}
# ================================================ #
# ============== Clock_Exceptions ================ #
# ================================================ # 
set_lib_cell_purpose -exclude cts [get_lib_cells -of [get_cells *]]

# ================================================ #
# ================= CTS_Cells ==================== #
# ================================================ #
# ----- Prefred ( High drive strength and INV Cells )
# ----- INV Prefred to resisitance of wire interconnect and trainstions
# --- we used high driving strength inverters due to the non-existing of cts buffers  
set_lib_cell_purpose -include cts */INVX2 ; # This prefred Cell high Drive strength  
set_lib_cell_purpose -include cts */INVX4
set_lib_cell_purpose -include cts */*INVX8 ;   
set_lib_cell_purpose -include cts */*INVX16 ;
 # use this to solve hold violations
set_lib_cell_purpose -include hold [get_lib_cells */IBUFFX2] ;
set_lib_cell_purpose -include hold [get_lib_cells */IBUFFX4] ;
set_lib_cell_purpose -include hold [get_lib_cells */NBUFFX2] ;
set_lib_cell_purpose -include hold [get_lib_cells */NBUFFX4] ;
set_lib_cell_purpose -include hold [get_lib_cells */INVX1]
set_lib_cell_purpose -include hold [get_lib_cells */INVX2] 
set_lib_cell_purpose -include hold [get_lib_cells */INVX4] 

# ================================================ #
# ================ Skew & Latency ================ #
# ================================================ # 
# Define our cts targets for the tool which are global skew and insertion delay(latency)
set_clock_tree_options -clock [get_clocks FUN_REF_CLK] -target_skew 0.01 -target_latency 0.5
set_clock_tree_options -clock [get_clocks FUN_UART_CLK] -target_skew 0.2 -target_latency 0

# ================================================ #
# ====================== NDR ===================== #
# ================================================ #
# defines non-default routing rules in the design.
create_routing_rule clk_network_NDR -multiplier_spacing 2 -multiplier_width 2
# ----- root:from port to first buffer  
set_clock_routing_rules -net_type root -rules clk_network_NDR -max_routing_layer M7 -min_routing_layer M2
# ----- internal : from first buffer to last buffer before sink   
set_clock_routing_rules -net_type internal -rules clk_network_NDR -max_routing_layer M7 -min_routing_layer M2
# ----- Sink >> from last buffer to sink(leaf) without NDR     
set_clock_routing_rules -net_type sink -default_rule -max_routing_layer M7 -min_routing_layer M2

# over all Rules 		
report_routing_rules -verbose 
# Special Clock net all Rules 
report_clock_routing_rules


# ================================================ #
# ================== DRC/Options ================= #
# ================================================ #
set_max_transition -clock_path 0.100 [get_clocks ]

# since the design has 338 flops increased the max_fanout to prevent too many buffer levels
set_app_options -as_user_default -list {cts.common.max_fanout 40}
#set_app_options -name clock_opt.hold.effort -value high
#set_app_options -name plan.budget.hold_buffer_margin -value 0.05
set_app_options -name cts.common.user_instance_name_prefix -value "CTS_"
# ================================================ #
# ====================== CRP ===================== #
# ================================================ # 
# --- To reduce On-Chip Variation (OCV) effects, clock trees try to share as many buffers as possible. 
set_app_options -name time.remove_clock_reconvergence_pessimism -value true
report_clock_settings

# ================================================ #
# ====================== Opt ===================== #
# ================================================ # 

#set_clock_tree_options -target_skew 0
#set_clock_tree_options -target_latency 0
#set_max_transition -clock_path 0.3 [get_clocks ]

# since the design has 338 flops increased the max_fanout to prevent too many buffer levels
#set_app_options -as_user_default -list {cts.common.max_fanout 5}
clock_opt -from build_clock -to build_clock

report_clock_qor -type summary

clock_opt -from route_clock -to route_clock

clock_opt -from route_clock -to final_opto
report_timing -delay_type max -max_paths 3
report_timing -delay_type min -max_paths 3
# ================================================ #
# ================== Connect_PG ================== #
# ================================================ # 
sizeof_collection [get_cells "CTS_*"]
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_drc
check_routes -drc true
# ================================================ #
# =================== Reports ==================== #
# ================================================ #
report_clock_tree_options  >  ../reports/clock_tree_options.rpt
report_routing_rules -verbose >  ../reports/cts_routing_rules.rpt
report_clock_routing_rules >  ../reports/cts_clock_routing_rules.rpt
report_ports -verbose [get_ports *CLK*] >  ../reports/cts_ports.rpt
report_clock_settings >  ../reports/cts_clk_setting.rpt
report_utilization -verbose > ../reports/utilization.rpt
check_pg_drc  > ../reports/pg_drc_final.rpt
check_routes -drc true > ../reports/DRC.rpt
report_design > ../reports/design.rpt
report_cell   > ../reports/cells.rpt
report_qor    > ../reports/qor.rpt
report_timing -delay_type min -max_paths 3 > ../reports/timing_min.rpt
report_timing -delay_type max -max_paths 3 > ../reports/timing_max.rpt
# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def ../outputs/${design}.def
write_verilog -include {all} ../outputs/${design}.v
write_sdc -output ../outputs/${design}.sdc 
save_block ;

