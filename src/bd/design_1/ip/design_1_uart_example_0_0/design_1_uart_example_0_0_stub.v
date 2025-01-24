// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Fri Jan 24 16:40:48 2025
// Host        : LAPTOP-ISHII1EC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               d:/RTL/uart_example/src/bd/design_1/ip/design_1_uart_example_0_0/design_1_uart_example_0_0_stub.v
// Design      : design_1_uart_example_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "uart_example,Vivado 2021.2" *)
module design_1_uart_example_0_0(i_clk_50, i_rx_uart, o_tx_uart)
/* synthesis syn_black_box black_box_pad_pin="i_clk_50,i_rx_uart,o_tx_uart" */;
  input i_clk_50;
  input i_rx_uart;
  output o_tx_uart;
endmodule
