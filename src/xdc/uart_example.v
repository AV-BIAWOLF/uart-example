`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 24.01.2025 13:33:46
// Design Name: 
// Module Name: uart_example
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module uart_example(
    input i_clk_50,
    input i_rx_uart,
    output o_tx_uart
    );
    
    
    wire [7:0] w_rx_data, w_rx_valid;
    wire [7:0] w_tx_data, w_tx_valid;
    reg [7:0] r_data_rx_for_vio;
    
    
    uart_vio uart_vio_inst (
      .clk(i_clk_50),                // input wire clk
      .probe_in0(r_data_rx_for_vio),    // input wire [7 : 0] probe_in0
      .probe_out0(w_tx_data),  // output wire [7 : 0] probe_out0
      .probe_out1(w_tx_valid)  // output wire [0 : 0] probe_out1
    );
    
    
    
    uart_phy 
    #(
        .FREQ(50000000),
        .BAUDRATE(115200)
    )
    uart_phy_inst
    (
        .clk_i(i_clk_50),
        .rst_i(0),
        .rate_i(0),
        .rxd_i(i_rx_uart),
        .txd_o(o_tx_uart),
        .nd_i(w_tx_valid),
        .data_i(w_tx_data),
        .rfd_o(),
        .vd_o(w_rx_valid),
        .data_o(w_rx_data)
    );
    
    // Для того чтобы видеть правильные данные в VIO, сдеалем так, чтобы промеждуточный сигнал менялся только тогда, когда поднимается сигнал valid
    always @(posedge i_clk_50) begin
        if (w_rx_valid) begin
            r_data_rx_for_vio <= w_rx_data;
        end
    end
    
    
endmodule
