
###############SETUP##############


# make the tool use more cores in its operation for fast operation
set_host_options -max_cores 6  

# Appending the path including all the libraries that i might use
# We can append anything on this search paths as rtl files or the outputs files that may be used in the other parts of the flow 
# So just we can call it by name anytime we want to use it in our script without calling its path
lappend search_path "/home/ICer/Downloads/Lib/synopsys/models"
lappend search_path "/home/ICer/Downloads/Lib/synopsys/models/clock_gating"
# Worst Case library for setup (SS)
set worst_case "saed90nm_max.db"

# Worst Case libray for Hold (FF)
set best_case "saed90nm_min.db"

set clk_gating_lib "saed90nm_max_cg.db"

# Typical (TT)
set balanced_case "saed90nm_typ.db"

#set H_worst_case "saed90nm_max_hvt.db"
#set best_case "saed90nm_min.db"
#set balanced_case "saed90nm_typ.db" 

# "set_app_var" special set command for DC only 
set_app_var target_library [list $worst_case $best_case $clk_gating_lib] 

# Linking the .lib with macros if exist and "*" is a refrence to all the rtl files 
set_app_var link_library "* $target_library"

# shell command to remove any work directory
sh rm -rf work

# Create a new directory
sh mkdir -p work

# define its path in which "./" means in the same location we opened the terminal 
# "../" means previous directory, "../../" means prev prev directory
define_design_lib work -path ./work

# set a variable "design" holding the top module
set design SYSTEM_TOP

# --fixes all violations in the design (do optimization on all the hirarical level not only top module)
set compile_top_all_paths true

# create the structured verification format (used in formality) 
set_svf ${design}.svf

############## Translate ###################

# analyzing the design for syntax errors then create intermidiate files for elaborate step
analyze -format verilog -lib work ../rtl/${design}.v

# Translate RTl to GTECH netlist 
elaborate $design -lib work

# making sure of what is my current_design (must be the top module)
current_design

# Check Linting
check_design

# Add constraints file
source -echo ../cons/cons.tcl

# finds all nets driven by multiple ports, and if they're connected to constants, adds logic buffers to isolate the loads
set_fix_multiple_port -all -buffer_constants

# we can ignore it if we translating using (analyze/elaborate) method, for (read_file) method we need to add it
link

# optimization level -> compile do both (Mapping + Optimization)
compile -map_effort high


# ################################## #
# ==== optimize_Critical_path  ===== #
# ################################## #
#source ../cons/cons2.tcl 
# -- Fixes design-rule and top-level timing violations

# do more optimization if you still have setup violations it does not perform any mapping but it increases the compilation time
compile -top


#report_timing -max_paths 20 > ./reports/synth_timing_after_optimize.rpt 

# write sdc file in output folder 
write_sdc ../outputs/${design}.sdc

# write sdf file in output used for primetime if needed
write_sdf ../outputs/${design}.sdf

# write netlist.v file in hierarchy form
write -hierarchy -format verilog -output ../outputs/${design}.v
write -f ddc -hierarchy -output ../outputs/${design}.ddc

# Reports

# create file that contains timing informations on setup as we defined only the highest 20 max paths
report_timing -max_paths 1 -delay_type max > ../reports/critical_path.rpt
report_timing -max_paths 100 -delay_type max > ../reports/setup.rpt
report_timing -max_paths 20 -delay_type min > ../reports/hold.rpt
report_area -nosplit > ../reports/syn_area.rpt
report_power -nosplit > ../reports/syn_power.rpt
report_clock -attributes > ../reports/clocks.rpt
report_constraint -all_violators -nosplit > ../reports/syn_violations.rpt

#### DFT Preperation ####

set num_flops [sizeof_collection [all_registers -edge_triggered]]
puts $num_flops

