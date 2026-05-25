`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/22/2023 09:29:31 PM
// Design Name: 
// Module Name: fft_config
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


module fft_config(
  output [31:0] m_axis_config_tdata,
  input m_axis_config_tready,
  output m_axis_config_tvalid
    );

assign m_axis_config_tdata = {5'b0,10'b1010010101,1'b0,6'b0,10'h0x80}; // Invert IFFT , CPlength = 64 . W = 64
assign m_axis_config_tvalid = m_axis_config_tready;

endmodule
