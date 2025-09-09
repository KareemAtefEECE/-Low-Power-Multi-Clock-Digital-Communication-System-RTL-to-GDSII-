# --------------------------------------------- # 
# --------------- NDM Creation  --------------- # 
# --------------------------------------------- # 
set worst_case "saed90nm_max.db" ;
set best_case "saed90nm_min.db" ;

set lib_name ndm 
set common_path "/home/ICer/Downloads/Lib"
set std_cell_path "/synopsys/models"
set clk_gating_path "/home/ICer/Downloads/Lib/synopsys/models/clock_gating/saed90nm_max_cg.db"
set tech_file_path "/process/astro/tech/astroTechFile.tf"
#set LIBNAME "saed90nm_max"

# ======= Create Workspace  ======= #
# --- creates a library workspace, in automatically analyze the library source
create_workspace -flow exploration -technology ${common_path}/${tech_file_path} $lib_name
# ======= Read db files ======= # 
# Reads one or more logic library files (db) format into the library workspace.
read_db ${common_path}/${std_cell_path}/${worst_case}
read_db ${common_path}/${std_cell_path}/${best_case}
read_db ${clk_gating_path}
#  =======  read abstarct_view ======= # 
# Loads the physical information 
read_lef ${common_path}/lef/saed90nmEditted.lef
# ======= Change_Options ======= #
# To save design and layout views in The NDM  
set_app_options -list {lib.workspace.keep_all_physical_cells {true}}
set_app_options -list {lib.workspace.save_design_views {true}}
set_app_options -list {lib.workspace.save_layout_views {true}}
set_app_options -list {design.enable_lib_cell_editing {mutable}}

# ======= Partitions libraries ======= # 
# ---  analyzes the logic and physical source libraries in the exploration mode 
group_libs

# ======= Check & commit workspace ======= # 
# saving the data to disk and removed from memory 
process_workspaces  -directory /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/ndm -output $lib_name


# ======= quit ======= # 
quit

