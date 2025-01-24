-- Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
-- Date        : Fri Jan 24 16:40:48 2025
-- Host        : LAPTOP-ISHII1EC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/RTL/uart_example/src/bd/design_1/ip/design_1_uart_example_0_0/design_1_uart_example_0_0_stub.vhdl
-- Design      : design_1_uart_example_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_uart_example_0_0 is
  Port ( 
    i_clk_50 : in STD_LOGIC;
    i_rx_uart : in STD_LOGIC;
    o_tx_uart : out STD_LOGIC
  );

end design_1_uart_example_0_0;

architecture stub of design_1_uart_example_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "i_clk_50,i_rx_uart,o_tx_uart";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "uart_example,Vivado 2021.2";
begin
end;
