# ================================================ #
# ================== Start_Step ================== #
# ================================================ #
set design SYSTEM_TOP
# remove the .lock file
sh rm /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library/${design}.dlib/${design}_pp/design.ndm.lock

 
set design_lib_path /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library
open_block $design_lib_path/${design}.dlib:${design}_pp.design
copy_block -from_block ${design}.dlib:${design}_pp.design -to_block ${design}_pl
current_block ${design}_pl.design
start_gui

# ================================================ #
# ================= def file read ================ #
# ================================================ # 
read_def ../../../dft/outputs/${design}.def
check_design -checks pre_placement_stage

# ================================================ #
# ============== Placement OPtion  =============== #
# ================================================ #

# define for the tool the new max util as we are going to add ECO and Tie cells so it must consider an extra space for them 
# this max_util value must be slightly bigger than what we set in floorplan or it will be ignored by the tool
set_app_option  -name place.coarse.congestion_driven_max_util -value 0.6
 
#set_app_options -name place.coarse.max_density -value 0.2

# constraint on the max routing density as we do not want it to exceed a specific value
set_app_options -name place.coarse.target_routing_density -value 0.6

# for any cell added by the tool in this step as the buffers used in HFS or the tie cells name it with the prefix "PLACE" to know which cells were added 
# by the tool in the placement step
set_app_options -name opt.common.user_instance_name_prefix -value "PLACE_"

set_app_options -name opt.common.max_fanout   -value 10  

# tie cells are used with all the ECO cells as the are connected to VDD or VSS and any other cell in the design that are connected to 1 or 0
set_app_options -name opt.tie_cell.max_fanout -value 10

# set_app_options -name place.coarse.enable_tie_cell_opt_after_plc true  ; # automatically insert tie cell 

report_app_options > ../reports/Placement_option.rpt
# ================================================ #
# ================= Spare cells  ================= #
# ================================================ #
# --- Get library cells to insert as spare cells 
get_lib_cell */NA*
get_lib_cell */IN*
get_lib_cell */IBU*
get_lib_cell */XO*

get_lib_cell */NBUFF*
get_lib_cell */IBUFF*



# --- add spare cells without legalized 
add_spare_cells -cell_name SpareCell \
				-lib_cell "*/NAND2X2 */INVX2  */XOR2X1" \
				-num_instances 10				
# --- Spread spare cells by randmization 
spread_spare_cells -cells [get_cells Spare*] -random_distribution

# --- legalized Sparecells 
place_eco_cells -cells [get_cells Spare*] -legalize_only

# ---  set variables 
set spare_cells [get_cells Spare*]
# ================================================ #
# ================== Tie cells  ================== #
# ================================================ #
# -- Tie-High  

# set these attributes to false to be able to use the tie cells
# knowing that the error was with title OPT-200 so we searched in messages section in the manual to solve this problem
# -- Tie-High
set_attribute [get_lib_cells saed90nm_max/TIEH] dont_use false  
set_attribute [get_lib_cells saed90nm_max/TIEH] dont_touch false
set_lib_cell_purpose -include all {saed90nm_max/TIEH}

# set_attribute [get_lib_cells saed90nm_max/TIEH] dont_touch false
# -- Tie-Low 
set_attribute [get_lib_cells saed90nm_max/TIEL] dont_use false  
set_attribute [get_lib_cells saed90nm_max/TIEL] dont_touch false
set_lib_cell_purpose -include all {saed90nm_max/TIEL}
# -- Add cells 
# -objects: defines the cells i want to connect it to the tie cells
add_tie_cells -objects $spare_cells \
			  -tie_low_lib_cells  saed90nm_max/TIEL \
			  -tie_high_lib_cells saed90nm_max/TIEH \
		          -legalize
	

# ---  Prevents ICC2 optimization from modifying, removing.
set_dont_touch $spare_cells
# --- Locks the placement location of those spare cells so ICC2 does not move them during placement optimizations.
set_fixed_objects $spare_cells

# ================================================ #
# ================ Connect_Cells  ================ #
# ================================================ #
# connect Tie cells to VDD and VSS
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_drc  > ../reports/drc_spare_cells_steps.rpt

# ================================================ #
# ============== Detailed Placement ============== #
# ================================================ #

# --- Detailed Placement divided to { Coarse placment , legalized placement  } 

# -- Performs coarse {approximate locations for cells, Cells overlap,No logic optimization }
# --- buffering_aware_timing_driven :  model that estimates the effects of buffering long nets and high fanout nets later in the flow.
#create_placement -effort high  -congestion -congestion_effort  high   -incremental
#create_placement  -effort high  \
#				  -timing_driven -buffering_aware_timing_driven \
#				  -congestion -congestion_effort  medium   -incremental

# --- Legalized placement each  illegal cell will be legal location 
#legalize_placement  -incremental 
#check_pg_drc  > ../reports/drc_legalized.rpt


# ================================================ #
# ============ Placement Optimization ============ #
# ================================================ #
# --- initial_place, initial_drc, initial_opto, final_place, and final_opto.
# before place optimization
report_utilization
report_cell
report_congestion
report_timing -max_paths 3 -delay_type max
report_timing -max_paths 3 -delay_type min

# it performs coarse/legalized placement, HFS, and optimization  
place_opt 

report_utilization
report_cell
report_congestion
report_timing -max_paths 3 -delay_type max
report_timing -max_paths 3 -delay_type min
check_pg_drc > ../reports/drc_final_opto.rpt

# --- congestion is found to be a problem after placement and optimization It can improve 
#refine_opt
#check_pg_drc > ../report/drc_refine_opto.rpt


# ================================================ #
# ================ Connect_Cells  ================ #
# ================================================ #
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_pg_drc


# ================================================ #
# =================== Reports ==================== #
# ================================================ #
check_legality -verbose  > ../reports/legality.rpt
check_routability   > ../reports/routeability.rpt
report_utilization > ../reports/utilization.rpt
check_pg_drc  > ../reports/drc_final.rpt
report_design > ../reports/design.rpt
report_cell   > ../reports/cells.rpt
report_qor    > ../reports/qor.rpt
#report_timing > ../reports/timing.rpt
report_timing -max_paths 20 -delay_type max > ../reports/setup.rpt
report_timing -max_paths 20 -delay_type min > ../reports/hold.rpt 
report_congestion > ../reports/congestion.rpt
check_scan_chain > ../reports/scan_chains.rpt
report_placement > ../reports/placement.rpt


# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def ../outputs/${design}.def
write_verilog -include {all} ../outputs/${design}.v
write_sdc -output ../outputs/${design}.sdc 
save_block ; 
