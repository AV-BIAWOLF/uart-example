//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Fri Jan 24 16:39:52 2025
//Host        : LAPTOP-ISHII1EC running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (clk_in1_0,
    i_rx_uart_0,
    o_tx_uart_0,
    reset_but_0);
  input clk_in1_0;
  input i_rx_uart_0;
  output o_tx_uart_0;
  input reset_but_0;

  wire clk_in1_0;
  wire i_rx_uart_0;
  wire o_tx_uart_0;
  wire reset_but_0;

  design_1 design_1_i
       (.clk_in1_0(clk_in1_0),
        .i_rx_uart_0(i_rx_uart_0),
        .o_tx_uart_0(o_tx_uart_0),
        .reset_but_0(reset_but_0));
endmodule
