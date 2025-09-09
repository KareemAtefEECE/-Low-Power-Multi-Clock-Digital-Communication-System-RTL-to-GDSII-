###################################################################

# Created by write_sdc on Thu Aug 28 04:25:14 2025

###################################################################
set sdc_version 2.1

set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA
set_operating_conditions -max WORST -max_library saed90nm_max\
                         -min BEST -min_library saed90nm_min
set_max_transition 0.5 [current_design]
set_max_fanout 8 [current_design]
set_max_area 0
set_driving_cell -lib_cell INVX8 -pin ZN [get_ports RX_IN]
set_driving_cell -lib_cell INVX8 -pin ZN [get_ports TEST_MODE]
set_load -pin_load 0.5 [get_ports TX_OUT]
set_load -pin_load 0.5 [get_ports SCAN_OUT_1]
set_load -pin_load 0.5 [get_ports SCAN_OUT_2]
set_load -pin_load 0.5 [get_ports SCAN_OUT_3]
set_load -pin_load 0.5 [get_ports SCAN_OUT_4]
set_case_analysis 1 [get_ports TEST_MODE]
set_case_analysis 1 [get_ports SCAN_EN]
create_clock [get_ports FUN_REF_CLK]  -period 10  -waveform {0 5}
set_clock_uncertainty -setup 0.2  [get_clocks FUN_REF_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks FUN_REF_CLK]
set_clock_transition -max -rise 0.05 [get_clocks FUN_REF_CLK]
set_clock_transition -min -rise 0.05 [get_clocks FUN_REF_CLK]
set_clock_transition -max -fall 0.05 [get_clocks FUN_REF_CLK]
set_clock_transition -min -fall 0.05 [get_clocks FUN_REF_CLK]
create_clock [get_ports FUN_UART_CLK]  -period 271.267  -waveform {0 135.633}
set_clock_uncertainty -setup 0.2  [get_clocks FUN_UART_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks FUN_UART_CLK]
set_clock_transition -max -rise 0.05 [get_clocks FUN_UART_CLK]
set_clock_transition -min -rise 0.05 [get_clocks FUN_UART_CLK]
set_clock_transition -max -fall 0.05 [get_clocks FUN_UART_CLK]
set_clock_transition -min -fall 0.05 [get_clocks FUN_UART_CLK]
create_generated_clock [get_pins TX_CLK_DIV/o_div_clk]  -name FUN_TX_CLK  -source [get_ports FUN_UART_CLK]  -master_clock FUN_UART_CLK  -divide_by 32  -add
set_clock_latency 0  [get_clocks FUN_TX_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks FUN_TX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks FUN_TX_CLK]
set_clock_transition -max -rise 0.05 [get_clocks FUN_TX_CLK]
set_clock_transition -min -rise 0.05 [get_clocks FUN_TX_CLK]
set_clock_transition -max -fall 0.05 [get_clocks FUN_TX_CLK]
set_clock_transition -min -fall 0.05 [get_clocks FUN_TX_CLK]
create_generated_clock [get_pins RX_CLK_DIV/o_div_clk]  -name FUN_RX_CLK  -source [get_ports FUN_UART_CLK]  -master_clock FUN_UART_CLK  -divide_by 1  -add
set_clock_latency 0  [get_clocks FUN_RX_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks FUN_RX_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks FUN_RX_CLK]
set_clock_transition -max -rise 0.05 [get_clocks FUN_RX_CLK]
set_clock_transition -min -rise 0.05 [get_clocks FUN_RX_CLK]
set_clock_transition -max -fall 0.05 [get_clocks FUN_RX_CLK]
set_clock_transition -min -fall 0.05 [get_clocks FUN_RX_CLK]
create_generated_clock [get_pins U0_CLK_GATE/GATED_CLK]  -name ALU_CLK  -source [get_ports FUN_REF_CLK]  -master_clock FUN_REF_CLK  -divide_by 1  -add
set_clock_latency 0  [get_clocks ALU_CLK]
set_clock_uncertainty -setup 0.2  [get_clocks ALU_CLK]
set_clock_uncertainty -hold 0.1  [get_clocks ALU_CLK]
set_clock_transition -max -rise 0.05 [get_clocks ALU_CLK]
set_clock_transition -min -rise 0.05 [get_clocks ALU_CLK]
set_clock_transition -max -fall 0.05 [get_clocks ALU_CLK]
set_clock_transition -min -fall 0.05 [get_clocks ALU_CLK]
create_clock [get_ports SCAN_CLK]  -period 100  -waveform {0 50}
set_clock_uncertainty -setup 1.2  [get_clocks SCAN_CLK]
set_clock_uncertainty -hold 1  [get_clocks SCAN_CLK]
set_input_delay -clock FUN_TX_CLK  54.2534  [get_ports RX_IN]
set_input_delay -clock SCAN_CLK  20  [get_ports SCAN_IN_1]
set_input_delay -clock SCAN_CLK  20  [get_ports SCAN_IN_2]
set_input_delay -clock SCAN_CLK  20  [get_ports SCAN_IN_3]
set_input_delay -clock SCAN_CLK  20  [get_ports SCAN_IN_4]
set_input_delay -clock SCAN_CLK  20  [get_ports SCAN_EN]
set_output_delay -clock FUN_TX_CLK  54.2534  [get_ports TX_OUT]
set_output_delay -clock SCAN_CLK  20  [get_ports SCAN_OUT_1]
set_output_delay -clock SCAN_CLK  20  [get_ports SCAN_OUT_2]
set_output_delay -clock SCAN_CLK  20  [get_ports SCAN_OUT_3]
set_output_delay -clock SCAN_CLK  20  [get_ports SCAN_OUT_4]
set_clock_groups  -asynchronous -name ALU_CLK_1  -group [list [get_clocks      \
ALU_CLK] [get_clocks FUN_REF_CLK]] -group [list [get_clocks FUN_UART_CLK]      \
[get_clocks FUN_RX_CLK] [get_clocks FUN_TX_CLK]]
set_clock_groups  -asynchronous -name ALU_CLK_2  -group [list [get_clocks      \
ALU_CLK] [get_clocks FUN_REF_CLK]] -group [list [get_clocks FUN_UART_CLK]      \
[get_clocks FUN_RX_CLK] [get_clocks FUN_TX_CLK]] -group [get_clocks SCAN_CLK]
set_case_analysis 0 TEST_MODE
set_case_analysis 0 SCAN_EN
