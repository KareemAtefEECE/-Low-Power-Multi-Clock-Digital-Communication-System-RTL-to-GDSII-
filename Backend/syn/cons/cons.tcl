
set REF_CLK_PERIOD 10
set UART_CLK_PERIOD 271.267
set TX_CLK_PERIOD 8680.55
set CLK_SETUP_SKEW 0.2
set CLK_HOLD_SKEW 0.1
set CLK_LAT 0
set CLK_RISE 0.05
set CLK_FALL 0.05


## Timing Constraints ## 

# REF_CLK_Constraints

create_clock -name FUN_REF_CLK -period $REF_CLK_PERIOD -waveform "0 [expr $REF_CLK_PERIOD/2]" [get_ports FUN_REF_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks FUN_REF_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks FUN_REF_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks FUN_REF_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks FUN_REF_CLK]

set_dont_touch_network [get_clocks FUN_REF_CLK]

# UART_CLK_Constraints

create_clock -name FUN_UART_CLK -period $UART_CLK_PERIOD -waveform "0 [expr $UART_CLK_PERIOD/2]" [get_ports FUN_UART_CLK]
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks FUN_UART_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW [get_clocks FUN_UART_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks FUN_UART_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks FUN_UART_CLK]

set_dont_touch_network [get_clocks FUN_UART_CLK]

# Genereated Clocks 

## TX_CLK
create_generated_clock -master_clock FUN_UART_CLK -source [get_ports FUN_UART_CLK] \
                       -name "FUN_TX_CLK" [get_port TX_CLK_DIV/o_div_clk] \
                       -divide_by 32
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks FUN_TX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks FUN_TX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks FUN_TX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks FUN_TX_CLK]
set_clock_latency $CLK_LAT [get_clocks FUN_TX_CLK]

## RX_CLK
create_generated_clock -master_clock FUN_UART_CLK -source [get_ports FUN_UART_CLK] \
                       -name "FUN_RX_CLK" [get_port RX_CLK_DIV/o_div_clk] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks FUN_RX_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks FUN_RX_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks FUN_RX_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks FUN_RX_CLK]
set_clock_latency $CLK_LAT [get_clocks FUN_RX_CLK]

## ALU_CLK
create_generated_clock -master_clock FUN_REF_CLK -source [get_ports FUN_REF_CLK] \
                       -name "ALU_CLK" [get_port U0_CLK_GATE/GATED_CLK] \
                       -divide_by 1
set_clock_uncertainty -setup $CLK_SETUP_SKEW [get_clocks ALU_CLK]
set_clock_uncertainty -hold $CLK_HOLD_SKEW  [get_clocks ALU_CLK]
set_clock_transition -rise $CLK_RISE  [get_clocks ALU_CLK]
set_clock_transition -fall $CLK_FALL  [get_clocks ALU_CLK]
set_clock_latency $CLK_LAT [get_clocks ALU_CLK]


#group_path -name "comp_paths" -to {fun_clk}
set_app_var compile_ultra_ungroup_dw false
set_app_var auto_wire_load_selection false
#set_wire_load_model  -name ForQA
set_case_analysis 0 TEST_MODE

## Define Clock Groups to prevent any setup/hold checks by the tool on CDC paths

set_clock_groups -asynchronous -group [get_clocks "ALU_CLK FUN_REF_CLK"] -group [get_clocks "FUN_UART_CLK FUN_RX_CLK FUN_TX_CLK"]


# --- Modeling outside for Timing 
# -- Type of Path IN to Reg >> pesudo as [input_delay =  Tcq + Tpd ] 

set in_delay [expr 0.2 * $UART_CLK_PERIOD]
set out_delay [expr 0.2 * $UART_CLK_PERIOD]

set_input_delay $in_delay -clock FUN_TX_CLK [get_port RX_IN]

# -- Type of Path Reg to Output >> pesudo as [output_delay = Tpd + Tsetup ] 
set_output_delay $out_delay -clock FUN_TX_CLK [get_port TX_OUT]

## Optimization Constraints ##

set_max_area 0.0 
set_max_transition 0.5 [current_design]
#set_max_transition 0.5 -data_path [get_clocks fun_clk]

#set_max_capacitance 3.0 [current_design]
set_max_fanout 8 $design
#set_max_transition 0.2 [current_design]  

# Ensures all combinational paths ending at outputs are no slower than 3 ns
#set_max_delay 2 -group_path "comp_paths" -to [all_outputs]


## Interface (enviroment) Constraints ##
set_driving_cell -lib_cell INVX8 -pin ZN [get_port RX_IN]
set_driving_cell -lib_cell INVX8 -pin ZN [get_port TEST_MODE]
set_load 0.5 [get_port TX_OUT]

## Operating Conditions

#set min_lib "saed90nm_min.db"
#set max_lib "saed90nm_max.db"

# Define the Worst Library for Max(#setup) analysis
# Define the Best Library for Min(hold) analysis
# -min_library -> library name itself
# -min -> operating condition name inside the library

set_operating_conditions -min_library "saed90nm_min" -min "BEST" -max_library "saed90nm_max" -max "WORST"

#size_cell [get_cells U0_ALU/div_43/U*] -library saed90nm_max -drive_strength X4


##################################################
	# ----- don't use  ---------  # 
################################################## 
set_dont_use [get_lib_cells */*DELLN*]



