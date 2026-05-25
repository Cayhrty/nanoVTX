`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2023 10:27:18 PM
// Design Name: 
// Module Name: tlast_gen
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
module tlast_gen #(
    parameter PKT_LENGTH = 1024
)(
    input clk,
    input tvalid,
    input tready,
    output tlast,
    input rst_n
    );

reg [23:0] cnt;
assign tlast = (cnt == (PKT_LENGTH-1))&&(tvalid);

always @(posedge clk or negedge rst_n) begin
    if (~rst_n) begin
        cnt <= 0;
    end
    else begin
        if(tvalid&tready)begin
            if(cnt == (PKT_LENGTH-1))begin
                cnt <= 0;
            end
            else begin 
                cnt <= cnt + 1 ;
            end
        end
    end
end
endmodule
