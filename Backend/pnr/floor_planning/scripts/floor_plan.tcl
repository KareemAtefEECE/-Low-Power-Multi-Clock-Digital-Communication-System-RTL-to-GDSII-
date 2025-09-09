# ================================================ #
# ================== Start_Step ================== #
# ================================================ #
set design SYSTEM_TOP

# remove the .lock file
sh rm /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library/${design}.dlib/${design}_setup/design.ndm.lock

 
set design_lib_path /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library
open_block $design_lib_path/${design}.dlib:${design}_setup.design
copy_block -from_block ${design}.dlib:${design}_setup.design -to_block ${design}_fp
current_block ${design}_fp.design
start_gui

# ================================================ #
# ================= First Step =================== #
# ================================================ # 

# -- Metal layers Directions 
set_attribute [get_layers {M1 M3 M5 M7 M9}] routing_direction vertical
set_attribute [get_layers {M2 M4 M6 M8}] routing_direction horizontal 


# # -- Metal Layers Offest 
set_attribute [get_layers {M1}] track_offset 0.03 
set_attribute [get_layers {M2}] track_offset 0.04

# -- Wire Track pattern (Method1)

# set_wire_track_pattern -site_def unit -layer M1 -mode uniform \
#-mask_constraint {mask_two mask_one} -coord 0.037 -space 0.074 -direction vertical

# -- For power Layers 
set_ignored_layers -max_routing_layer M8 
set_ignored_layers -max_routing_layer M9


# -- site def attribute 
set Name_unit [get_site_defs]
set_attribute [get_site_defs $Name_unit] is_default true
set_attribute [get_site_defs  $Name_unit] symmetry {Y}

# ================================================ #
# ================== Second Step ================= #
# ================================================ #
# -- Initialize_Floor_planning 

# std_cell area = 32,000 , core area = 32,000/0.6 = 64,000
initialize_floorplan -core_utilization .5 -shape R -orientation N -core_offset {10 10 10 10}  \
					 -flip_first_row false -side_ratio {1 1}


# ================================================ #
# ================= Third Step =================== #
# ================================================ #
# -- Muliple Power Domains (if UPF File existing) 
#load_upf file.upf
#commit_upf 

# ================================================================= #
# ================= Fourth Step (PIN_PLACEMENT)  ================== #
# ================================================================= #


get_attribute [current_block] boundary
#{ bottom-left} {top-left} {top-right} {bottom-right}

#{0.0000 0.0000} {0.0000 267.6800} {268.9600 267.6800} {268.9600 0.0000}


remove_pin_guides -all

# ================================================================
# TOP SIDE: FUN CLKS PINS
# ================================================================

set_individual_pin_constraints -ports [get_ports {FUN_REF_CLK}] -sides {2} -offset 89.653 -allowed_layers [get_layers {M3}]
set_individual_pin_constraints -ports [get_ports {FUN_UART_CLK}] -sides {2} -offset 179.306 -allowed_layers [get_layers {M3}]

# ================================================================
# LEFT SIDE: INPUT PINS
# ================================================================

set_individual_pin_constraints -ports [get_ports {RX_IN}] -sides {1} -offset 133.8399 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_IN_1}] -sides {1} -offset 89.2266 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_IN_2}] -sides {1} -offset 178.4532 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_IN_3}] -sides {1} -offset 44.6133 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_IN_4}] -sides {1} -offset 223.0665 -allowed_layers [get_layers {M2}]

# ================================================================
# RIGHT SIDE: OUTPUT PINS
# ================================================================

set_individual_pin_constraints -ports [get_ports {TX_OUT}] -sides {3} -offset 133.8399 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_OUT_1}] -sides {3} -offset 89.2266 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_OUT_2}] -sides {3} -offset 178.4532 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_OUT_3}] -sides {3} -offset 44.6133 -allowed_layers [get_layers {M2}]
set_individual_pin_constraints -ports [get_ports {SCAN_OUT_4}] -sides {3} -offset 223.0665 -allowed_layers [get_layers {M2}]


# ================================================================
# BOTTOM SIDE: CONTROL & RESET PINS
# ================================================================

set_individual_pin_constraints -ports [get_ports {FUN_RST}] -sides {4} -offset 134.4733 -allowed_layers [get_layers {M3}]
set_individual_pin_constraints -ports [get_ports {SCAN_CLK}] -sides {4} -offset 89.6533 -allowed_layers [get_layers {M3}]
set_individual_pin_constraints -ports [get_ports {SCAN_RST}] -sides {4} -offset 44.82 -allowed_layers [get_layers {M3}]
set_individual_pin_constraints -ports [get_ports {TEST_MODE}] -sides {4} -offset 179.2933 -allowed_layers [get_layers {M3}]
set_individual_pin_constraints -ports [get_ports {SCAN_EN}] -sides {4} -offset 224.1133 -allowed_layers [get_layers {M3}]

# =========================================================
# Place Pins
# =========================================================
place_pins -self
# place_pins -ports [get_ports *]

# check pin placement

check_pin_placement

# ================================================ #
# ================= Fifth Step =================== #
# ================================================ #
# --- Placement Blockage  
#create_placement_blockage -boundary {{70 70} {150  150}} -name B1 -type hard
#create_placement_blockage -boundary {{150  150} {200 200}} -name B2 -type partial -blocked_percentage 40 
#create_placement_blockage -boundary {{200 200} {250 250}}  -name B3 -type soft
#remove_placement_blockages -all



# ================================================ #
# ================ Seventh Step ================== #
# ================================================ #
# -- in this library don't exist tapcells sothat insert Dcaps only for get it 
#get_lib_cell saed90nm_max/DC*
# use of tap cell is to remove the latch up problem

#create_tap_cells -lib_cell saed90nm_max/DCAP  -pattern every_row -distance 6
#get_cells tap*
#remove_cell tap*

# ================================================ #
# ================== Reports ===================== #
# ================================================ #
report_ports [all_inputs] > ../reports/input_port.rpt
report_ports [all_outputs] > ../reports/output_port.rpt
report_cell  > ../reports/cells.rpt
report_nets  > ../reports/nets.rpt
report_qor   > ../reports/qor.rpt
report_utilization > ../reports/utilization.rpt
report_pin_placement -self > ../reports/pin_placement.rpt
get_placement_blockages > ../reports/Blockage.rpt

# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def ../outputs/${design}.def
write_verilog -include {all} ../outputs/${design}.v
write_sdc -output ../outputs/${design}.sdc

# =================== End_Step =================== #
save_block 


