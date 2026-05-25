`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08/20/2023 04:02:21 PM
// Design Name: 
// Module Name: output_mux
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
`define NULL_SYMBOL 0
`define STS_SYMBOL 1
`define LTS_SYMBOL 2
`define DATA_SYMBOL 3

// NFFT + Ncp + Nw 
`define SYMBOL_LEN_TOTAL 1152

module output_mux(
    input clk,
    input s_axis_symbol_tvalid,
    input [23:0] s_axis_symbol_tdata,
    output reg s_axis_symbol_rden,

    output [10:0] symbol_buf_waddr,
    output [10:0] symbol_buf_raddr,
    output symbol_buf_wren,
    input [23:0] symbol_buf_dout,
    output reg [31:0] fifo_data_out,
    output [11:0] p0,
    output [11:0] p1
);

reg [23:0] output_data;
assign p0 = output_data[11:0];
assign p1 = output_data[23:12];

reg signed [11:0] wola_src1i;
reg signed [11:0] wola_src1q;

reg signed [11:0] wola_src2i;
reg signed [11:0] wola_src2q;

reg [5:0] sts_rom_index;
reg [5:0] nw_rom_index;
reg [9:0] lts_rom_index;

wire [23:0] sts_rom_dout;
wire [23:0] lts_rom_dout;
wire [23:0] nw_rom_dout;

reg signed [13:0] nw_last ;
reg signed [13:0] nw_curr ;

reg [2:0] current_symbol;
reg [2:0] last_symbol;

reg [10:0] symbol_index_cnt;

assign symbol_buf_wren = s_axis_symbol_rden;
assign symbol_buf_waddr = symbol_index_cnt;
assign symbol_buf_raddr = symbol_index_cnt + 128;


always @(posedge clk) begin
    s_axis_symbol_rden <= current_symbol == `DATA_SYMBOL; // FIFO FWFT on

    if (symbol_index_cnt == (`SYMBOL_LEN_TOTAL - 1)) begin
        symbol_index_cnt <= 0;
        last_symbol <= current_symbol;

        if(s_axis_symbol_tvalid == 1'b1 && current_symbol == `NULL_SYMBOL)begin
            current_symbol <= `STS_SYMBOL;
        end
        if(current_symbol == `STS_SYMBOL)begin
            current_symbol <= `LTS_SYMBOL;
        end
        if(current_symbol == `LTS_SYMBOL)begin
            current_symbol <= `DATA_SYMBOL;
        end
        if(s_axis_symbol_tvalid == 1'b0 && current_symbol == `DATA_SYMBOL)begin
            current_symbol <= `NULL_SYMBOL;
        end
    end
    else begin
        symbol_index_cnt <= symbol_index_cnt + 1;
    end
    //debug
    fifo_data_out <= {{4{p0[11]}},p0,{4{p1[11]}},p1};
end

always @(*) begin
    // src1: last symbol 
    // src2: current symbol
    case (last_symbol)
        `STS_SYMBOL:     {wola_src1i,wola_src1q} = sts_rom_dout;
        `LTS_SYMBOL:     {wola_src1i,wola_src1q} = lts_rom_dout;
        `DATA_SYMBOL:    {wola_src1i,wola_src1q} = symbol_buf_dout;
        `NULL_SYMBOL:    {wola_src1i,wola_src1q} = 0;
        default:        {wola_src1i,wola_src1q} = 0;
    endcase
    case (current_symbol)
        `STS_SYMBOL:  {wola_src2i,wola_src2q} = sts_rom_dout;
        `LTS_SYMBOL:  {wola_src2i,wola_src2q} = lts_rom_dout;
        `DATA_SYMBOL: {wola_src2i,wola_src2q} = s_axis_symbol_tdata;
        `NULL_SYMBOL: {wola_src2i,wola_src2q} = 0;
        default:     {wola_src2i,wola_src2q} = 0;
    endcase    
    
    if( symbol_index_cnt < 64 )begin
        nw_last = {2'b00,nw_rom_dout[11:0]};
        nw_curr = {2'b00,nw_rom_dout[23:12]};
    end else begin
        nw_last = {2'b00,12'b0};
        nw_curr = {2'b01,12'b0};
    end

end

wire [24:0] prod1 = wola_src1i*nw_last + wola_src2i*nw_curr;
wire [24:0] prod2 = wola_src1q*nw_last + wola_src2q*nw_curr;

always @(posedge clk) begin
    output_data <= {prod1[23:12],prod2[23:12]};
end

always @(*) begin: bram_index_gen
    // +1 for read latency
    sts_rom_index = symbol_index_cnt[5:0] + 1;
    lts_rom_index = symbol_index_cnt[9:0] + 1;
    nw_rom_index  = symbol_index_cnt[5:0] + 1;
end

// 0-63 sts_i sts_q
// 1024-2023 lts_i lts_q

blk_mem_gen_0 sts_lts_rom (
  .clka(clk),    // input wire clka
  .addra({5'b0,sts_rom_index}),  // input wire [10 : 0] addra
  .douta(sts_rom_dout),  // output wire [23 : 0] douta
  .clkb(clk),    // input wire clkb
  .addrb({1'b1,lts_rom_index}),  // input wire [10 : 0] addrb
  .doutb(lts_rom_dout)  // output wire [23 : 0] doutb
);

blk_mem_gen_1 nw_rom (
  .clka(clk),    // input wire clka
  .addra(nw_rom_index),  // input wire [5 : 0] addra
  .douta(nw_rom_dout)  // output wire [23 : 0] douta
);
endmodule
