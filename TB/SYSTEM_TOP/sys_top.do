vlib SYSTEM_TOP

vlog ASYNC_FIFO.v \
     BIT_SYNC.v \
     CLK_GATE.v \
     ClkDiv.v \
     controller_fsm.v \
     data_sampling.v \
     DATA_SYNC.v \
     deserializer.v \
     edge_bit_counter.v \
     FIFO_MEM_CNTRL.v \
     FIFO_RD.v \
     FIFO_WR.v \
     mux4x1.v \
     parity_calc.v \
     parity_check.v \
     Prescale_mux.v \
     PULSE_GEN.v \
     REG_FILE.v \
     RST_SYNC.v \
     serializer.v \
     stop_check.v \
     strt_check.v \
     SYS_CTRL.v \
     SYSTEM_TOP.v \
     SYSTEM_TOP_tb.v \
     UART.v \
     UART_RX.v \
     uart_rx_fsm.v \
     UART_TX.v


vsim -voptargs=+acc work.SYSTEM_TOP_tb

add wave *

add wave -position 6  sim:/SYSTEM_TOP_tb/DUT/U0_UART/RX_OUT_V
add wave -position 5  sim:/SYSTEM_TOP_tb/DUT/U0_UART/RX_OUT_P
add wave -position 3  sim:/SYSTEM_TOP_tb/DUT/U0_UART/TX_CLK

add wave -position 5  sim:/SYSTEM_TOP_tb/DUT/UART_RST
add wave -position 6  sim:/SYSTEM_TOP_tb/DUT/REF_RST
add wave -position 3  sim:/SYSTEM_TOP_tb/DUT/TX_CLK
add wave -position 4  sim:/SYSTEM_TOP_tb/DUT/RX_CLK

add wave -position 13  sim:/SYSTEM_TOP_tb/DUT/SYNC_RX_P_DATA
add wave -position 15  sim:/SYSTEM_TOP_tb/DUT/SYNC_RX_VLD_SIG

add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/WrEn
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/WrData
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/UART_TX_VLD
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/UART_TX_DATA
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/RX_P_DATA
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/RX_D_VLD
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/RST
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/RdEn
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/RdData_Valid
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/RdData
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/ns
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/FIFO_FULL
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/cs
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/CLK
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_SYS_CTRL/Address
add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_REG_FILE/regfile

add wave -position 20  sim:/SYSTEM_TOP_tb/DUT/WR_INC
add wave -position 21  sim:/SYSTEM_TOP_tb/DUT/WR_DATA

add wave -position 40  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/WR_DATA
add wave -position 41  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/wq2_rptr_tp
add wave -position 42  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/W_RST
add wave -position 43  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/W_INC
add wave -position 44  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/W_CLK
add wave -position 45  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/w_addr_tp
add wave -position 46  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/rq2_wptr_tp
add wave -position 47  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/RD_DATA
add wave -position 48  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/R_RST
add wave -position 49  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/R_INC
add wave -position 50  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/R_CLK
add wave -position 51  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/r_addr_tp
add wave -position 52  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/PTR_WIDTH_TOP
add wave -position 53  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/gray_w_ptr_tp
add wave -position 54  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/gray_r_ptr_tp
add wave -position 55  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/FULL
add wave -position 56  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/FIFO_DEPTH_TOP
add wave -position 57  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/EMPTY
add wave -position 58  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/DATA_WIDTH_TOP

add wave -position 20  sim:/SYSTEM_TOP_tb/DUT/ALU_OUT
add wave -position 21  sim:/SYSTEM_TOP_tb/DUT/ALU_OUT_VLD
add wave -position 22  sim:/SYSTEM_TOP_tb/DUT/ALU_CLK
add wave -position 23  sim:/SYSTEM_TOP_tb/DUT/EN
add wave -position 24  sim:/SYSTEM_TOP_tb/DUT/FUN
add wave -position 23  sim:/SYSTEM_TOP_tb/DUT/Gate_EN

add wave -position end  sim:/SYSTEM_TOP_tb/DUT/U0_ASYN_FIFO/U0_FIFO_MEM_CNTRL/fifo



run -all
