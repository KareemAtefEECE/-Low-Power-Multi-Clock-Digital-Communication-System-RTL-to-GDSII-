# ================================================ #
# ================== Start_Step ================== #
# ================================================ #
set design SYSTEM_TOP
# remove the .lock file
sh rm /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library/${design}.dlib/${design}_fp/design.ndm.lock

 
set design_lib_path /home/ICer/Projects/Digital_System(RTL-to-GDSII)/pnr/design_library
open_block $design_lib_path/${design}.dlib:${design}_fp.design
copy_block -from_block ${design}.dlib:${design}_fp.design -to_block ${design}_pp
current_block ${design}_pp.design
start_gui

# ================================================ #
# ================= First Step =================== #
# ================================================ #
# --- disable ignored layers used to  used it through Power planning 
report_ignored_layers
remove_ignored_layers -all -max_routing_layer -min_routing_layer
report_ignored_layers
# ================================================ #
# ================= Second Step ================== #
# ================================================ #
# --- Creation VDD and VSS nets for Network {PDN} 
create_net -power VDD 
create_net -ground VSS

# --- Connect pins of cells and submodules  to rails   
# hierarchical [include top module + sub modules]
connect_pg_net -net VDD [get_pins -hierarchical */VDD]
connect_pg_net -net VSS [get_pins -hierarchical */VSS]

# --- Automati c connect for nets 
set_app_option -name plan.pgroute.auto_connect_pg_net -value true



# ================================================ #
# ================= Third Step =================== #
# ================================================ #
# -- Create region,patterns , Define strategie,Compile stra  
# --- Variables 
# --- ring_offset: the offset between ring region and core boundary 
# for the design core offset is 10 so resonable to make ring_offset = 1
set ring_offset 1 
# ---- Create region to define region pg network 
create_pg_region power_ring_region -core -expand_by_edge  \
          "{{side: 1} {offset: $ring_offset}} \
		   {{side: 2} {offset: $ring_offset}} \ 
		   {{side: 3} {offset: $ring_offset}} \
		   {{side: 4} {offset: $ring_offset}} "
		   

# ---- Create Pattern Rings Structure {Layers , Width , Space }
# --- Variables 
set hm_top M8  
set vm_top M9

## For the ring specs: std_cell_area = 32,000 , total power consumption = 130 uW 
## so since this is a low power design we can assign thin ring_widths to optimize in layers coverage for power delievery

set ring_width 2 
set ring_spacing 1.5
 
create_pg_ring_pattern ring_pattern \
                 -horizontal_layer $hm_top -vertical_layer $vm_top \
                 -horizontal_width $ring_width -vertical_width $ring_width \
                 -horizontal_spacing $ring_spacing -vertical_spacing $ring_spacing

# ---- Stratgie for design Rings
set_pg_strategy core_ring \
					-pg_regions { power_ring_region } \
					-pattern {{ name: ring_pattern} { nets: "VSS VDD" }}

# ---- Compile /Implement Ring   
compile_pg -strategies core_ring

# Remove the strategy you defined
#remove_pg_strategies core_ring

# Remove the pattern you defined
#remove_pg_patterns ring_pattern

# If you created the region explicitly and want to clear it too
#remove_pg_regions power_ring_region


# --- Verify routing of PG nets satisfies technology design rules
check_pg_drc
# --- Connectivity check for PG networks, standard cell PG pins, PG pads, and block terminals 
check_pg_connectivity 
# --- Check Missing Vias in the PG Network
check_pg_missing_vias 


# ================================================ #
# ================= Fourth Step ================== #
# ================================================ # 
# --- Offest : the center line of the first wire to the boundary
# --- pitch  : the pitch of the wires in this layer {centre to centre}.
# --- space  : the spacing between wires in this layer {edge to edge} . 
# --- trim   : the trim option for wires in this layer.
# --- Define structure pattern
set hm_top M8 ; set vm_top M9 ; 
# --- Create Mesh/Straps pattern {Layer, Width, Offest, Pitch }
# --- offset chosed to be 1,6 for both to Better alignment with ring structure and Avoids potential DRC issues near edges
# --- pitch 20 
create_pg_mesh_pattern straps_vddvss -layers {{{vertical_layer: M9} {width: 5} {pitch: 20} {spacing: interleaving} {offset:1} {trim:true}} \
				     {{horizontal_layer: M8} {width: 5} {pitch:20} {spacing: interleaving} {offset:  6} {trim: true}}}
# --- Strategie for design mesh 
set_pg_strategy mesh_vddvss -core \
   			    -pattern {{pattern: straps_vddvss} {nets: VDD VSS}}  \
				-extension {{stop: outermost_ring}}
			    #-extension {{stop: design_boundary_and_generate_pin}}

# --- Compile /Implement Mesh  
compile_pg -strategies mesh_vddvss
# --- Create Mesh2
# use less resources from M6,M7 as pitch 50 and width 5
create_pg_mesh_pattern straps_vddvss2 -layers {{{vertical_layer: M7} {width: 5} {pitch: 50} {spacing: interleaving} {offset:15} {trim:true}} \
				     {{horizontal_layer: M6} {width: 5} {pitch: 50} {spacing: interleaving} {offset:  15} {trim: true}}}
# --- Strategie for design mesh 
set_pg_strategy mesh_vddvss2 -core \
   			    -pattern {{pattern: straps_vddvss2} {nets: VDD VSS}}  \
				-extension {{stop: outermost_ring}}
			    #-extension {{stop: design_boundary_and_generate_pin}}

# --- Compile /Implement Mesh  
compile_pg -strategies mesh_vddvss2

# --- Verify routing of PG nets satisfies technology design rules
check_pg_drc
# --- Connectivity check for PG networks, standard cell PG pins, PG pads, and block terminals 
check_pg_connectivity 
check_pg_connectivity  > ../reports/Connectivity_Mesh_Steps.rpt

# --- Check Missing Vias in the PG Network
check_pg_missing_vias 
# ================================================ #
# ================= Fifth Step =================== #
# ================================================ #
# --- Prevent Create VIA on Rails  
#set_app_option plan.pgroute.disable_via_createion -value true
# ---- Create rails patterns {Layer , Width}
create_pg_std_cell_conn_pattern std_cell_rail -layers M1 -rail_width 0.16

# ---- Define Strategie 
set_pg_strategy rails_M1 -core -pattern {{name: std_cell_rail} {nets: "VDD VSS"} }

# ---- Compiling  
compile_pg -strategies rails_M1   

# --- Verify routing of PG nets satisfies technology design rules
check_pg_drc
# --- Connectivity check for PG networks, standard cell PG pins, PG pads, and block terminals 
check_pg_connectivity 
# --- Check Missing Vias in the PG Network
check_pg_missing_vias 

# ================================================ #
# ================ Seventh Step ================== #
# ================================================ #
# --- Verify routing of PG nets satisfies technology design rules
check_pg_drc
# --- Connectivity check for PG networks, standard cell PG pins, PG pads, and block terminals 
check_pg_connectivity 
# --- Check Missing Vias in the PG Network
check_pg_missing_vias 


# ================================================ #
# ================================================ #
# ================== Reports ===================== #
# ================================================ #

check_pg_drc  > ../reports/pg_drc.rpt
check_pg_connectivity > ../reports/pg_connectivity.rpt
analyze_power_plan -report_track_utilization_only > ../reports/track_utilization.rpt
report_utilization > ../reports/utilization.rpt
report_qor > ../reports/qor.rpt  ; #optional
#report_timing > ../reports/timing.rpt ; #optional
report_timing -max_paths 20 -delay_type max > ../reports/setup.rpt
report_timing -max_paths 20 -delay_type min > ../reports/hold.rpt 

# ================================================ #
# =================== End_Step =================== #
# ================================================ #
write_def ../outputs/${design}.def
write_verilog -include {all} ../outputs/${design}.v
write_sdc -output ../outputs/${design}.sdc 
save_block ;



