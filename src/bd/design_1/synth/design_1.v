//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Fri Jan 24 16:39:52 2025
//Host        : LAPTOP-ISHII1EC running 64-bit major release  (build 9200)
//Command     : generate_target design_1.bd
//Design      : design_1
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "design_1,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=design_1,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=2,numReposBlks=2,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "design_1.hwdef" *) 
module design_1
   (clk_in1_0,
    i_rx_uart_0,
    o_tx_uart_0,
    reset_but_0);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_IN1_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_IN1_0, CLK_DOMAIN design_1_clk_in1_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk_in1_0;
  input i_rx_uart_0;
  output o_tx_uart_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET_BUT_0 RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET_BUT_0, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset_but_0;

  wire clk_in1_0_1;
  wire clk_wiz_0_clk_out1;
  wire i_rx_uart_0_1;
  wire reset_0_1;
  wire uart_example_0_o_tx_uart;

  assign clk_in1_0_1 = clk_in1_0;
  assign i_rx_uart_0_1 = i_rx_uart_0;
  assign o_tx_uart_0 = uart_example_0_o_tx_uart;
  assign reset_0_1 = reset_but_0;
  design_1_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(clk_in1_0_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .reset(reset_0_1));
  design_1_uart_example_0_0 uart_example_0
       (.i_clk_50(clk_wiz_0_clk_out1),
        .i_rx_uart(i_rx_uart_0_1),
        .o_tx_uart(uart_example_0_o_tx_uart));
endmodule
