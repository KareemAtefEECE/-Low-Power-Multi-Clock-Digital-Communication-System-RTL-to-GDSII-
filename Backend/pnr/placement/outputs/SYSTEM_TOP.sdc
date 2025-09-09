################################################################################
#
# Design name:  SYSTEM_TOP_pl
#
# Created by icc2 write_sdc on Wed Sep  3 16:49:17 2025
#
################################################################################

set sdc_version 2.1
set_units -time ns -resistance MOhm -capacitance fF -voltage V -current uA

################################################################################
#
# Units
# time_unit               : 1e-09
# resistance_unit         : 1000000
# capacitive_load_unit    : 1e-15
# voltage_unit            : 1
# current_unit            : 1e-06
# power_unit              : 1e-12
################################################################################


# Mode: default
# Corner: default
# Scenario: default

# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 81
set_case_analysis 0 [get_ports {TEST_MODE}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 82
set_case_analysis 0 [get_ports {SCAN_EN}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 23
create_clock -name FUN_REF_CLK -period 10 -waveform {0 5} [get_ports \
    {FUN_REF_CLK}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 30
create_clock -name FUN_UART_CLK -period 271.267 -waveform {0 135.633} \
    [get_ports {FUN_UART_CLK}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 37; \
#   /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 38
create_generated_clock -name FUN_TX_CLK -divide_by 32 -source [get_ports \
    {FUN_UART_CLK}] -add -master_clock [get_clocks {FUN_UART_CLK}] [get_pins \
    {TX_CLK_DIV/o_div_clk}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 45; \
#   /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 46
create_generated_clock -name FUN_RX_CLK -divide_by 1 -source [get_ports \
    {FUN_UART_CLK}] -add -master_clock [get_clocks {FUN_UART_CLK}] [get_pins \
    {RX_CLK_DIV/o_div_clk}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 53; \
#   /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 54
create_generated_clock -name ALU_CLK -divide_by 1 -source [get_ports \
    {FUN_REF_CLK}] -add -master_clock [get_clocks {FUN_REF_CLK}] [get_pins \
    {U0_CLK_GATE/GATED_CLK}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 61
create_clock -name SCAN_CLK -period 100 -waveform {0 50} [get_ports {SCAN_CLK}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 77
set_clock_groups -name ALU_CLK_1 -asynchronous -group [get_clocks {ALU_CLK \
    FUN_REF_CLK}] -group [get_clocks {FUN_UART_CLK FUN_RX_CLK FUN_TX_CLK}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 80
set_clock_groups -name ALU_CLK_2 -asynchronous -group [get_clocks {ALU_CLK \
    FUN_REF_CLK}] -group [get_clocks {FUN_UART_CLK FUN_RX_CLK FUN_TX_CLK}] \
    -group [get_clocks {SCAN_CLK}]
set_load -pin_load 0.5 [get_ports {TX_OUT}]
set_load -pin_load 0.5 [get_ports {SCAN_OUT_1}]
set_load -pin_load 0.5 [get_ports {SCAN_OUT_2}]
set_load -pin_load 0.5 [get_ports {SCAN_OUT_3}]
set_load -pin_load 0.5 [get_ports {SCAN_OUT_4}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 10
set_operating_conditions -analysis_type on_chip_variation -max WORST -min BEST \
    -max_library saed90nm_max -min_library saed90nm_min
# -origin user
set_clock_latency 0 [get_clocks {FUN_TX_CLK}]
# -origin user
set_clock_latency 0 [get_clocks {FUN_RX_CLK}]
# -origin user
set_clock_latency 0 [get_clocks {ALU_CLK}]
# Set latency for io paths.
set_clock_uncertainty -setup 0.2 [get_clocks {FUN_REF_CLK}]
set_clock_uncertainty -hold 0.1 [get_clocks {FUN_REF_CLK}]
set_clock_uncertainty -setup 0.2 [get_clocks {FUN_UART_CLK}]
set_clock_uncertainty -hold 0.1 [get_clocks {FUN_UART_CLK}]
set_clock_uncertainty -setup 0.2 [get_clocks {FUN_TX_CLK}]
set_clock_uncertainty -hold 0.1 [get_clocks {FUN_TX_CLK}]
set_clock_uncertainty -setup 0.2 [get_clocks {FUN_RX_CLK}]
set_clock_uncertainty -hold 0.1 [get_clocks {FUN_RX_CLK}]
set_clock_uncertainty -setup 0.2 [get_clocks {ALU_CLK}]
set_clock_uncertainty -hold 0.1 [get_clocks {ALU_CLK}]
set_clock_uncertainty -setup 1.2 [get_clocks {SCAN_CLK}]
set_clock_uncertainty -hold 1 [get_clocks {SCAN_CLK}]
set_clock_transition 0.05 [get_clocks {FUN_REF_CLK}]
set_clock_transition 0.05 [get_clocks {FUN_UART_CLK}]
set_clock_transition 0.05 [get_clocks {FUN_TX_CLK}]
set_clock_transition 0.05 [get_clocks {FUN_RX_CLK}]
set_clock_transition 0.05 [get_clocks {ALU_CLK}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 14
set_driving_cell -lib_cell INVX8 -pin ZN -max -library \
    saed90nm_max.db:saed90nm_max [get_ports {RX_IN}]
set_driving_cell -lib_cell INVX8 -pin ZN -min -library \
    saed90nm_min.db:saed90nm_min [get_ports {RX_IN}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 15
set_driving_cell -lib_cell INVX8 -pin ZN -max -library \
    saed90nm_max.db:saed90nm_max [get_ports {TEST_MODE}]
set_driving_cell -lib_cell INVX8 -pin ZN -min -library \
    saed90nm_min.db:saed90nm_min [get_ports {TEST_MODE}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 64
set_input_delay -clock [get_clocks {FUN_TX_CLK}] 54.2534 [get_ports {RX_IN}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 70
set_output_delay -clock [get_clocks {FUN_TX_CLK}] 54.2534 [get_ports {TX_OUT}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 69
set_input_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_EN}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 65
set_input_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_IN_1}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 71
set_output_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_OUT_1}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 66
set_input_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_IN_2}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 72
set_output_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_OUT_2}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 67
set_input_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_IN_3}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 73
set_output_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_OUT_3}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 68
set_input_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_IN_4}]
# /home/ICer/Projects/Digital_System(RTL-to-GDSII)/dft/outputs/SYSTEM_TOP.sdc, \
#   line 74
set_output_delay -clock [get_clocks {SCAN_CLK}] 20 [get_ports {SCAN_OUT_4}]
set_max_transition 0.5 [current_design]
