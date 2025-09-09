# ================================================ #
# ================== Search path ================= #
# ================================================ #
set_app_var search_path /home/ICer/Downloads/Lib

# ================================================ #
# ================== NDM_library ================= #
# ================================================ #
set ref_lib1 /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/ndm/saed90nm_m.ndm
set ref_lib2 /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/ndm/saed90nm_max_cg.ndm

# ================================================ #
# =================== Techfile =================== #
# ================================================ #
set TECH_FILE $search_path/process/astro/tech/astroTechFile.tf 

# ================================================ #
# ================ Design Library ================ #
# ================================================ #
create_lib -technology $TECH_FILE -ref_libs [list $ref_lib1 $ref_lib2] SYSTEM_TOP.dlib

# ================================================ #
# ================== Load Design ================= #
# ================================================ #
read_verilog -top SYSTEM_TOP ../../dft/outputs/SYSTEM_TOP.v
# ----------- Read_SDC ----------- #
read_sdc ../../dft/outputs/SYSTEM_TOP.sdc

# ================================================ #
# ===================== TLU+ ===================== #
# ================================================ #
set Tech $search_path/Technology_Kit/starrcxt

read_parasitic_tech -layermap $Tech/tech2itf.map -tlup $Tech/tluplus/saed90nm_1p9m_1t_Cmax.tluplus  -name maxTLU

read_parasitic_tech -layermap $Tech/tech2itf.map -tlup $Tech/tluplus/saed90nm_1p9m_1t_Cmin.tluplus  -name minTLU

set_parasitic_parameters -late_spec maxTLU -early_spec minTLU

# ================================================ #
# =================== End_Step =================== #
# ================================================ #
save_block -as SYSTEM_TOP_setup SYSTEM_TOP.dlib:SYSTEM_TOP.design








