`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 07/10/2023 09:51:24 PM
// Design Name: 
// Module Name: SampleControl
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

module SampleControl#(
    parameter PKT_LENGTH = 1024
)(
    input clk,
    input sample_trig,
    output reg tvalid,
    input tvalid_in,
    input vsync_in
    );

reg [23:0] dataCnt  = 0;
reg vsync_ready = 0;
reg last_trig_r1;
reg last_trig_r2;
reg last_trig;

always @(*)begin
    tvalid = (~(dataCnt == 0)) && tvalid_in && (vsync_in|vsync_ready);
end

always @(posedge clk) begin
    last_trig_r2 <= sample_trig;
    last_trig_r1 <= last_trig_r2;
    last_trig <= last_trig_r1;

    if(dataCnt == PKT_LENGTH && tvalid_in)begin
        dataCnt <= 0;
        vsync_ready <= 0;
    end 
    else if(last_trig == 1'b0 && last_trig_r1 ==1'b1)begin
        dataCnt <= 1;
    end
    else if(dataCnt == 0)begin
        dataCnt <= 0;
    end else begin
        if(tvalid_in && (vsync_in|vsync_ready))begin
            dataCnt <= dataCnt + 1'b1;
            vsync_ready <= 1;
        end
    end

end

endmodule
