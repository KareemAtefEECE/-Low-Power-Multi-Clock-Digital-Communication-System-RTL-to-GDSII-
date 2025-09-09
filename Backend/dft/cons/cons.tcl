##################################################
	# ----- Clock Definations -----  # 
##################################################

# --- Budget Clock (Timing Definations)
create_clock -name SCAN_CLK -period 100 -waveform {0 50}   [get_ports SCAN_CLK]	;  # use it in test mode  (shift, capture )

# # --- Clock uncertainty Berfore CTS  uncertainty = Jitter + Source Latency  + Network Latency
# # --- Test_Mode only   >> scan_clk 
set_clock_uncertainty -setup 1.2  [get_clocks SCAN_CLK]  ;  # Consider Skew + Jitter 
set_clock_uncertainty -hold  1    [get_clocks SCAN_CLK]  ;  # only Consider Skew   
# # -- Type of Path IN to Reg >> pesudo as [input_delay =  Tcq + Tpd ] 
set_output_delay 20 -clock SCAN_CLK [get_ports SCAN_OUT_* ] 
# # -- Type of Path Reg to Output >> pesudo as [output_delay = Tpd + Tsetup ] 
set_input_delay 20 -clock SCAN_CLK [get_ports  { SCAN_IN_* SCAN_EN } ] 


# --- Prevent Tool do any thing on network 
set_dont_touch_network [get_clocks {SCAN_CLK}]
set_app_var auto_wire_load_selection false

##################################################
	# ----- Optimization ---------  # 
##################################################
#set_max_capacitance 3.0 [current_design]
##################################################
	# ----- Interaface  ---------  # 
##################################################
# set_driving_cell -lib_cell NBUFFX2 -pin Z [remove_from_collection [all_inputs] [get_ports {fun_clk scan_clk}]];
set_load 0.5 [all_outputs]


# Test clock paths timing 
##################################################
	# ----- Clock groups  ---------  # 
##################################################
set_clock_groups -asynchronous -group [get_clocks "ALU_CLK FUN_REF_CLK"] -group [get_clocks "FUN_UART_CLK FUN_RX_CLK FUN_TX_CLK"] -group [get_clocks "SCAN_CLK"]
set_case_analysis 0 TEST_MODE ;  
set_case_analysis 0 SCAN_EN ;  

##################################################
	# ----- Donot use   ---------  # 
##################################################
##set_dont_use [get_lib_cells */*INVX0]
##set_dont_use [get_lib_cells */*DELLN1X2]
set_dont_use [get_lib_cells */*DELL*]


