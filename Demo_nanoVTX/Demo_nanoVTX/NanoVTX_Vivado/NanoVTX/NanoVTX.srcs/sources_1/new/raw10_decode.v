`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/23/2023 10:29:43 PM
// Design Name: 
// Module Name: raw10_decode
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
//  NO BACK PRESSURE
//////////////////////////////////////////////////////////////////////////////////

// next word in
`define 0_BYTE_IN
`define 1_BYTE_IN
`define 2_BYTE_IN
`define 3_BYTE_IN

module raw10_decode(
    input clk,
    input vsync_in,

    input [31:0] s_axis_data_in_tdata,
    input s_axis_data_in_tvalid,
    input s_axis_data_in_tlast,
    input s_axis_data_in_tuser,
    output s_axis_data_in_tready,

    output [31:0] m_axis_data_out_tdata,
    output [31:0] m_axis_data_out_tvalid,
    input m_axis_data_out_tready,  // ignored
    output m_axis_data_out_tlast,
    output m_axis_data_out_tuser
);

reg [2:0] status; // 5 Status , 5 beat => 4 pixel out

reg [9:0] byte0;
reg [9:0] byte1;
reg [9:0] byte2;
reg [9:0] byte3;

always @(posedge clk) begin
    if(vsync_in)begin
        status <= `1_BYTE_IN;
        m_axis_data_out_tvalid <= 0;
    end else begin
        case (ststus)
            : 
            default: 
        endcase
    end
end
endmodule
