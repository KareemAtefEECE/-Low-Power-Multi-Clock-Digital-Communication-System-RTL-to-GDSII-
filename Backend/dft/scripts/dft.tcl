# ################################## #
# ============= Setup ============== #
# ################################## #
# --- Multi Modes 
set worst_case "saed90nm_max.db" ; 
set H_worst_case "saed90nm_max_hvt.db"
set best_case "saed90nm_min.db"
set balanced_case "saed90nm_typ.db" 
set clk_gating_lib "saed90nm_max_cg.db"


# --- Libraries
lappend search_path "/home/ICer/Downloads/Lib/synopsys/models"
lappend search_path "/home/ICer/Downloads/Lib/synopsys/models/clock_gating"
lappend search_path "/home/ICer/Projects/Digital_System(RTL-to-GDSII)/syn/outputs"
set_app_var target_library [list $worst_case $best_case $clk_gating_lib] 
set_app_var link_library "* $target_library " 

# --- work directory
sh rm -rf work
sh mkdir -p work
define_design_lib work -path ./work ; 

# --fixes all violations in the design
set compile_top_all_paths true 
# --- Define Top Module 
set design SYSTEM_TOP
# --- Define Structured Verification Format (SVF) 
set_svf ${design}.svf 

# ################################## #
# =========== Read Design ========== #
# ################################## #
read_ddc ${design}.ddc
# --- Constraits 
read_sdc ${design}.sdc
current_design $design
link
check_design
# ################################## #
# ========== Configuration ========= #
# ################################## #

## num of flip flops = 338 so 1 chain for each 100
set chain_num 4
set_scan_configuration -chain_count $chain_num -clock_mixing no_mix -style multiplexed_flip_flop -max_length 100

########################## Define DFT Signals ##########################

# scan_clk
set_dft_signal -view existing_dft -type ScanClock -port SCAN_CLK -timing {45 55}


#scan_rst
set_dft_signal -view existing_dft -type Reset -port SCAN_RST -active 0

#test_mode
set_dft_signal -view existing_dft -type TestMode -port TEST_MODE -active 1

# scan_en config
create_port SCAN_EN -direction in
set_dft_signal -view spec -type ScanEnable -port SCAN_EN -active 1

for {set num 1} {$num < 5} {incr num} {

# scan_in config
create_port SCAN_IN_$num -direction in
set_dft_signal -view spec -type ScanDataIn -port SCAN_IN_$num

# scan_out config
create_port SCAN_OUT_$num -direction out
set_dft_signal -view spec -type ScanDataOut -port SCAN_OUT_$num

} 

# ################################## #
# =========== Constraints ========== #
# ################################## #
source -echo ../cons/cons.tcl 
# ################################## #
# ========== Test_Protocol ========= #
# ################################## #

# checks for all the dft_signals and the exisiting ones as scan_clk make sure that is connected correct
create_test_protocol
# --- To prevent uniquification of your design, enter the command
set_dft_insertion_configuration -preserve_design_name true  -synthesis_optimization none

# ################################## #
# ========= Scan-Insertion ========= #
# ################################## #
# to avoid any statments in netlist 
set verilogout_no_tri	 true
set verilogout_equation  false
set_fix_multiple_port_nets -all -buffer_constants

link
dft_drc -verbose
compile -scan -map_effort high  -incremental_mapping  
check_design
# ################################## #
# =============== DRC ============== #
# ################################## #
dft_drc -verbose
preview_dft -show all
 
 
# ################################## #
# ========= Scan_Stitching ========= #
# ################################## #
insert_dft
check_design
dft_drc

# ################################## #
# ====== Fix Timing Violation ====== #
# ################################## #
compile -top 
# ################################## #
# ============ Reports ============= #
# ################################## #

report_timing > ../reports/dft_timing_test_func.rpt
set_case_analysis 1 TEST_MODE ; # Enable test mode
set_case_analysis 1 SCAN_EN ; # Enable test mode
report_timing > ../reports/dft_timing_test_Test.rpt

dft_drc -coverage_estimate > ../reports/rpt_dft.drc_coverage
dft_drc > ../reports/drc.rpt
report_area > ../reports/dft_area.rpt
report_qor > ../reports/dft_qor.rpt
report_constraint -all_violators  > ../reports/dft_Violations.rpt
report_scan_path -chain all > ../reports/scan_chains.rpt
report_dft_signal -view exist > ../reports/dft_exist.rpt
report_dft_signal -view spec > ../reports/dft_spec.rpt

# ################################## #
# ============ Outputs ============= #
# ################################## #
write -format ddc  -hierarchy -output ../outputs/${design}.ddc
write -format verilog  -hierarchy -output ../outputs/${design}.v
write_test_model -output ../outputs/${design}.ctl
write_sdc ../outputs/${design}.sdc 
# ---- SPF_File (STIL Protcol File) ---- # 
write_test_protocol -out ../outputs/${design}.spf
# ---- SDF_File (Standard Delay Format) ---- # 
write_sdf  ../outputs/${design}.sdf
# ---- def_File (reorder scan chains placment step) ---- #
write_scan_def -output ../outputs/${design}.def

## Switch to functional mode
set_case_analysis 0 TEST_MODE 
set_case_analysis 0 SCAN_EN

