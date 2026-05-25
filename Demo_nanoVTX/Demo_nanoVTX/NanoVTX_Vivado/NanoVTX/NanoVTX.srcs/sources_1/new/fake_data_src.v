`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/25/2023 11:16:04 AM
// Design Name: 
// Module Name: fake_data_src
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: This    lfsr src is after subcarrier index 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module fake_data_src #(
    parameter PKT_LENGTH = 1024
)(
    input clk,
    input trigger,
    output reg [31:0] m_axis_data_tdata,
    output m_axis_data_tvalid,
    output reg m_axis_data_tlast,
    input m_axis_data_tready
);

reg [7:0] m_seq_bit0_reg = 8'b01001101;
reg [7:0] m_seq_bit1_reg = 8'b01011001;
reg [7:0] m_seq_bit2_reg = 8'b10101101;
reg [7:0] m_seq_bit3_reg = 8'b01000110;
reg [3:0] m_symbol;      

reg trig_r2;
reg trig_r1;
reg trig;
reg trig_active;
reg [15:0] dataCnt  = 0;
reg [3:0] lfsr = 4'b1111;

assign m_axis_data_tvalid = (~(dataCnt == 0)) & m_axis_data_tready;

always @(posedge clk) begin
    trig_r2 <= trigger;
    trig_r1 <= trig_r2;
    trig <= trig_r1;
    trig_active <= (trig == 0 )&& (trig_r1 == 1);

    if(dataCnt == PKT_LENGTH)begin
        dataCnt <= 0;
    end 
    else if(trig_active == 1)begin
        dataCnt <= 1;
    end
    else if(dataCnt == 0)begin
        dataCnt <= 0;
    end else  if( m_axis_data_tvalid )begin
        dataCnt <= dataCnt + 1'b1;
    end

    if(dataCnt == PKT_LENGTH-1)begin
        m_axis_data_tlast <= 1;
    end else begin
        m_axis_data_tlast <= 0;
    end

    

    if((dataCnt <= 2) ||( dataCnt >= PKT_LENGTH - 2) ||(dataCnt>160 && dataCnt <864))begin
        m_axis_data_tdata <= 0;
    end else begin
        case (m_symbol)
        // 0.33: 0x0155 1 0x0400 -0.33: 0xFEAB -1 :FC00
            4'b0000: m_axis_data_tdata <= 32'hFC00_0400;
            4'b0001: m_axis_data_tdata <= 32'hFC00_0155;
            4'b0010: m_axis_data_tdata <= 32'hFC00_FC00;
            4'b0011: m_axis_data_tdata <= 32'hFC00_FEAB;
            4'b0100: m_axis_data_tdata <= 32'hFEAB_0400;
            4'b0101: m_axis_data_tdata <= 32'hFEAB_0155;
            4'b0110: m_axis_data_tdata <= 32'hFEAB_FC00;
            4'b0111: m_axis_data_tdata <= 32'hFEAB_FEAB;
            4'b1000: m_axis_data_tdata <= 32'h0400_0400;
            4'b1001: m_axis_data_tdata <= 32'h0400_0155;
            4'b1010: m_axis_data_tdata <= 32'h0400_FC00;
            4'b1011: m_axis_data_tdata <= 32'h0400_FEAB;
            4'b1100: m_axis_data_tdata <= 32'h0155_0400;
            4'b1101: m_axis_data_tdata <= 32'h0155_0155;
            4'b1110: m_axis_data_tdata <= 32'h0155_FC00;
            4'b1111: m_axis_data_tdata <= 32'h0155_FEAB;
            default: m_axis_data_tdata <= 32'h0;
        endcase 
    end

    lfsr[0] <=  lfsr[3] ^ lfsr[2];
    lfsr[1] <=  lfsr[0];
    lfsr[2] <=  lfsr[1];
    lfsr[3] <=  lfsr[2] ;

    m_symbol <= lfsr;

end

endmodule
