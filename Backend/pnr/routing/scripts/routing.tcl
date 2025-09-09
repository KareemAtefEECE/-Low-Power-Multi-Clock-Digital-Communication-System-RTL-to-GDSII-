# ================================================ #
# ================== Start_Step ================== #
# ================================================ #
set_host_options -max_cores 6 

set GDS_MAP_FILE "/home/ICer/Downloads/Lib/Technology_Kit/milkyway/saed90nm.gdsout.map"

set design SYSTEM_TOP
# remove the .lock file
sh rm /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library/${design}.dlib/${design}_route/design.ndm.lock

 
set design_lib_path /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library
open_block $design_lib_path/${design}.dlib:${design}_route.design
copy_block -from_block ${design}.dlib:${design}_cts.design -to_block ${design}_route
current_block ${design}_route.design
start_gui

# ================================================ #
# =================== Pre-Route ================== #
# ================================================ # 
#  check for any issues that might cause problems during routing

# Checks  for  many  known  issues that degrade the performance or
             # quality of routing commands. These checks also include some san-
             # ity checks of the input data.
# -error_data: Specifies the name of the generated error data file. The default is check_routability.err.

check_routability -error_data SYS_TOP

# the following 2 commands are the same used for checking pre routing
check_design -checks routability 
check_design -checks pre_route_stage

# Returns a collection of high-fanout nets from the current design
# or from the specified input collection. A tie net will  be  filtered out in the collection.
# -through_buf_inv: goes through the nets in the clock tree to check for HF Nets
# it returns nothing if there is no HFO

all_high_transitive_fanout -nets -through_buf_inv

# --All layers below M1 and above M9 are set as ignored layers.
set_ignored_layer -max M9 -min M1
# ================================================ #
# ================== Global Route ================ #
# ================================================ #

## run them at once multiple times if there was still any timing violations 

route_global
check_routes
# ================================================ #
# ================= Track Assign ================= #
# ================================================ # 
route_track
check_routes



# ================================================ #
# =============== Detailed Route ================= #
# ================================================ # 
route_detail
check_routes
route_detail -incremental true
check_routes

route_opt
check_routes
report_timing -delay_type min -max_paths 3
report_timing -delay_type max -max_paths 3


# ================================================ #
# =================== Filler ===================== #
# ================================================ #
get_lib_cell saed90nm_max/SHF*
set FillerCells " saed90nm_max/SHFILL1 saed90nm_max/SHFILL2 saed90nm_max/SHFILL3  "

create_stdcell_fillers -lib_cells $FillerCells
create_stdcell_fillers -lib_cells saed90nm_max/SHFILL3
create_stdcell_fillers -lib_cells saed90nm_max/SHFILL1
connect_pg_net -net "VDD" [get_pins -hierarchical "*/VDD*"]
connect_pg_net -net "VSS" [get_pins -hierarchical "*/VSS"]
check_routes
check_pg_drc

remove_stdcell_fillers_with_violation

check_legality


# ================================================ #
# =================== Connect ==================== #
# ================================================ # 

# ================================================ #
# =================== Reports ==================== #
# ================================================ # 
check_routes > ../reports/drc_final.rpt
check_lvs -max_error 0 > ../reports/lvs_final.rpt
check_clock_trees > ../reports/clock_trees.rpt 
report_congestion -nosplit > ../reports/congestion.rpt 
check_legality -verbose    > ../reports/legality
report_timing -delay_type max -max_paths 3 > ../reports/final_setup.rpt
report_timing -delay_type min -max_paths 3 > ../reports/final_hold.rpt
# ================================================ #
# ================== End_Steps =================== #
# ================================================ # 
write_def ../outputs/${design}.def
write_verilog -include {all} ../outputs/${design}.v
write_parasitics -format spef  -output ../outputs/${design}

write_gds -design ${design}_route \
 -layer_map $GDS_MAP_FILE \
 -keep_data_type \
 -fill include \
 -output_pin all \
 -long_names \
 ../outputs/${design}.gds

save_block -as ${design}.dlib:${design}_route.design
#report_area -include filler
#report_area -physical_only
