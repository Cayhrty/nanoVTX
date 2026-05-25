`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/24/2023 08:39:44 PM
// Design Name: 
// Module Name: fft_tdata_slice
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


module fft_tdata_slice(
    input [31:0] datain,
    output [23:0] dataout
    );

assign dataout = {datain[27:16],datain[11:0]};

endmodule
