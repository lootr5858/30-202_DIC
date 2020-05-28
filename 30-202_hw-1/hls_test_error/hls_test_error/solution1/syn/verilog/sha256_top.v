// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2017 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="sha256_top,hls_ip_2016_4,{HLS_INPUT_TYPE=c,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=7.120000,HLS_SYN_LAT=-1,HLS_SYN_TPT=none,HLS_SYN_MEM=7,HLS_SYN_DSP=0,HLS_SYN_FF=2177,HLS_SYN_LUT=5624}" *)

module sha256_top (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        data_address0,
        data_ce0,
        data_q0,
        hash_address0,
        hash_ce0,
        hash_we0,
        hash_d0,
        hash_address1,
        hash_ce1,
        hash_we1,
        hash_d1
);

parameter    ap_ST_fsm_state1 = 6'b1;
parameter    ap_ST_fsm_state2 = 6'b10;
parameter    ap_ST_fsm_state3 = 6'b100;
parameter    ap_ST_fsm_state4 = 6'b1000;
parameter    ap_ST_fsm_state5 = 6'b10000;
parameter    ap_ST_fsm_state6 = 6'b100000;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv6_0 = 6'b000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_5 = 32'b101;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_6A09E667 = 32'b1101010000010011110011001100111;
parameter    ap_const_lv32_BB67AE85 = 32'b10111011011001111010111010000101;
parameter    ap_const_lv32_3C6EF372 = 32'b111100011011101111001101110010;
parameter    ap_const_lv32_A54FF53A = 32'b10100101010011111111010100111010;
parameter    ap_const_lv32_510E527F = 32'b1010001000011100101001001111111;
parameter    ap_const_lv32_9B05688C = 32'b10011011000001010110100010001100;
parameter    ap_const_lv32_1F83D9AB = 32'b11111100000111101100110101011;
parameter    ap_const_lv32_5BE0CD19 = 32'b1011011111000001100110100011001;
parameter    ap_const_lv6_20 = 6'b100000;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv32_40 = 32'b1000000;
parameter    ap_const_lv32_FFFFFDFF = 32'b11111111111111111111110111111111;
parameter    ap_const_lv32_200 = 32'b1000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
output  [4:0] data_address0;
output   data_ce0;
input  [7:0] data_q0;
output  [4:0] hash_address0;
output   hash_ce0;
output   hash_we0;
output  [7:0] hash_d0;
output  [4:0] hash_address1;
output   hash_ce1;
output   hash_we1;
output  [7:0] hash_d1;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg data_ce0;

(* fsm_encoding = "none" *) reg   [5:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [31:0] ctx_datalen;
reg   [31:0] ctx_bitlen_0;
reg   [31:0] ctx_bitlen_1;
reg   [31:0] ctx_state_0;
reg   [31:0] ctx_state_1;
reg   [31:0] ctx_state_2;
reg   [31:0] ctx_state_3;
reg   [31:0] ctx_state_4;
reg   [31:0] ctx_state_5;
reg   [31:0] ctx_state_6;
reg   [31:0] ctx_state_7;
reg   [5:0] ctx_in_data_address0;
reg    ctx_in_data_ce0;
reg    ctx_in_data_we0;
reg   [7:0] ctx_in_data_d0;
wire   [7:0] ctx_in_data_q0;
reg   [5:0] ctx_in_data_address1;
reg    ctx_in_data_ce1;
reg    ctx_in_data_we1;
wire   [7:0] ctx_in_data_q1;
wire   [5:0] i_fu_245_p2;
reg   [5:0] i_reg_315;
wire   [0:0] ap_CS_fsm_state2;
wire   [0:0] exitcond_i_fu_239_p2;
wire   [0:0] tmp_1_i_fu_268_p2;
reg   [0:0] tmp_1_i_reg_325;
wire   [0:0] ap_CS_fsm_state3;
wire    grp_sha256_final_fu_112_ap_start;
wire    grp_sha256_final_fu_112_ap_done;
wire    grp_sha256_final_fu_112_ap_idle;
wire    grp_sha256_final_fu_112_ap_ready;
wire   [4:0] grp_sha256_final_fu_112_final_hash_address0;
wire    grp_sha256_final_fu_112_final_hash_ce0;
wire    grp_sha256_final_fu_112_final_hash_we0;
wire   [7:0] grp_sha256_final_fu_112_final_hash_d0;
wire   [4:0] grp_sha256_final_fu_112_final_hash_address1;
wire    grp_sha256_final_fu_112_final_hash_ce1;
wire    grp_sha256_final_fu_112_final_hash_we1;
wire   [7:0] grp_sha256_final_fu_112_final_hash_d1;
wire   [5:0] grp_sha256_final_fu_112_ctx_in_data_address0;
wire    grp_sha256_final_fu_112_ctx_in_data_ce0;
wire    grp_sha256_final_fu_112_ctx_in_data_we0;
wire   [7:0] grp_sha256_final_fu_112_ctx_in_data_d0;
wire   [5:0] grp_sha256_final_fu_112_ctx_in_data_address1;
wire    grp_sha256_final_fu_112_ctx_in_data_ce1;
wire    grp_sha256_final_fu_112_ctx_in_data_we1;
wire   [7:0] grp_sha256_final_fu_112_ctx_in_data_d1;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_0_o;
wire    grp_sha256_final_fu_112_ctx_state_0_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_1_o;
wire    grp_sha256_final_fu_112_ctx_state_1_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_2_o;
wire    grp_sha256_final_fu_112_ctx_state_2_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_3_o;
wire    grp_sha256_final_fu_112_ctx_state_3_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_4_o;
wire    grp_sha256_final_fu_112_ctx_state_4_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_5_o;
wire    grp_sha256_final_fu_112_ctx_state_5_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_6_o;
wire    grp_sha256_final_fu_112_ctx_state_6_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_state_7_o;
wire    grp_sha256_final_fu_112_ctx_state_7_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_bitlen_0_o;
wire    grp_sha256_final_fu_112_ctx_bitlen_0_o_ap_vld;
wire   [31:0] grp_sha256_final_fu_112_ctx_bitlen_1_o;
wire    grp_sha256_final_fu_112_ctx_bitlen_1_o_ap_vld;
wire    grp_sha256_transform_fu_144_ap_start;
wire    grp_sha256_transform_fu_144_ap_done;
wire    grp_sha256_transform_fu_144_ap_idle;
wire    grp_sha256_transform_fu_144_ap_ready;
wire   [5:0] grp_sha256_transform_fu_144_data_transform_address0;
wire    grp_sha256_transform_fu_144_data_transform_ce0;
wire   [5:0] grp_sha256_transform_fu_144_data_transform_address1;
wire    grp_sha256_transform_fu_144_data_transform_ce1;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_0_o;
wire    grp_sha256_transform_fu_144_ctx_state_0_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_1_o;
wire    grp_sha256_transform_fu_144_ctx_state_1_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_2_o;
wire    grp_sha256_transform_fu_144_ctx_state_2_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_3_o;
wire    grp_sha256_transform_fu_144_ctx_state_3_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_4_o;
wire    grp_sha256_transform_fu_144_ctx_state_4_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_5_o;
wire    grp_sha256_transform_fu_144_ctx_state_5_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_6_o;
wire    grp_sha256_transform_fu_144_ctx_state_6_o_ap_vld;
wire   [31:0] grp_sha256_transform_fu_144_ctx_state_7_o;
wire    grp_sha256_transform_fu_144_ctx_state_7_o_ap_vld;
reg   [5:0] i_i_reg_101;
wire   [0:0] ap_CS_fsm_state5;
reg    ap_reg_grp_sha256_final_fu_112_ap_start;
wire   [0:0] ap_CS_fsm_state6;
reg    ap_reg_grp_sha256_transform_fu_144_ap_start;
wire   [0:0] ap_CS_fsm_state4;
wire   [31:0] i_i_cast1_fu_234_p1;
wire   [31:0] ctx_datalen_assign_i_fu_256_p2;
wire   [31:0] tmp_4_i_fu_300_p2;
wire   [31:0] tmp_3_i_fu_288_p2;
wire   [0:0] tmp_2_i_fu_278_p2;
reg   [5:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 6'b1;
#0 ctx_datalen = 32'b00000000000000000000000000000000;
#0 ctx_bitlen_0 = 32'b00000000000000000000000000000000;
#0 ctx_bitlen_1 = 32'b00000000000000000000000000000000;
#0 ctx_state_0 = 32'b00000000000000000000000000000000;
#0 ctx_state_1 = 32'b00000000000000000000000000000000;
#0 ctx_state_2 = 32'b00000000000000000000000000000000;
#0 ctx_state_3 = 32'b00000000000000000000000000000000;
#0 ctx_state_4 = 32'b00000000000000000000000000000000;
#0 ctx_state_5 = 32'b00000000000000000000000000000000;
#0 ctx_state_6 = 32'b00000000000000000000000000000000;
#0 ctx_state_7 = 32'b00000000000000000000000000000000;
#0 ap_reg_grp_sha256_final_fu_112_ap_start = 1'b0;
#0 ap_reg_grp_sha256_transform_fu_144_ap_start = 1'b0;
end

sha256_top_ctx_inbkb #(
    .DataWidth( 8 ),
    .AddressRange( 64 ),
    .AddressWidth( 6 ))
ctx_in_data_U(
    .clk(ap_clk),
    .reset(ap_rst),
    .address0(ctx_in_data_address0),
    .ce0(ctx_in_data_ce0),
    .we0(ctx_in_data_we0),
    .d0(ctx_in_data_d0),
    .q0(ctx_in_data_q0),
    .address1(ctx_in_data_address1),
    .ce1(ctx_in_data_ce1),
    .we1(ctx_in_data_we1),
    .d1(grp_sha256_final_fu_112_ctx_in_data_d1),
    .q1(ctx_in_data_q1)
);

sha256_final grp_sha256_final_fu_112(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha256_final_fu_112_ap_start),
    .ap_done(grp_sha256_final_fu_112_ap_done),
    .ap_idle(grp_sha256_final_fu_112_ap_idle),
    .ap_ready(grp_sha256_final_fu_112_ap_ready),
    .final_hash_address0(grp_sha256_final_fu_112_final_hash_address0),
    .final_hash_ce0(grp_sha256_final_fu_112_final_hash_ce0),
    .final_hash_we0(grp_sha256_final_fu_112_final_hash_we0),
    .final_hash_d0(grp_sha256_final_fu_112_final_hash_d0),
    .final_hash_address1(grp_sha256_final_fu_112_final_hash_address1),
    .final_hash_ce1(grp_sha256_final_fu_112_final_hash_ce1),
    .final_hash_we1(grp_sha256_final_fu_112_final_hash_we1),
    .final_hash_d1(grp_sha256_final_fu_112_final_hash_d1),
    .ctx_datalen(ctx_datalen),
    .ctx_in_data_address0(grp_sha256_final_fu_112_ctx_in_data_address0),
    .ctx_in_data_ce0(grp_sha256_final_fu_112_ctx_in_data_ce0),
    .ctx_in_data_we0(grp_sha256_final_fu_112_ctx_in_data_we0),
    .ctx_in_data_d0(grp_sha256_final_fu_112_ctx_in_data_d0),
    .ctx_in_data_q0(ctx_in_data_q0),
    .ctx_in_data_address1(grp_sha256_final_fu_112_ctx_in_data_address1),
    .ctx_in_data_ce1(grp_sha256_final_fu_112_ctx_in_data_ce1),
    .ctx_in_data_we1(grp_sha256_final_fu_112_ctx_in_data_we1),
    .ctx_in_data_d1(grp_sha256_final_fu_112_ctx_in_data_d1),
    .ctx_in_data_q1(ctx_in_data_q1),
    .ctx_state_0_i(ctx_state_0),
    .ctx_state_0_o(grp_sha256_final_fu_112_ctx_state_0_o),
    .ctx_state_0_o_ap_vld(grp_sha256_final_fu_112_ctx_state_0_o_ap_vld),
    .ctx_state_1_i(ctx_state_1),
    .ctx_state_1_o(grp_sha256_final_fu_112_ctx_state_1_o),
    .ctx_state_1_o_ap_vld(grp_sha256_final_fu_112_ctx_state_1_o_ap_vld),
    .ctx_state_2_i(ctx_state_2),
    .ctx_state_2_o(grp_sha256_final_fu_112_ctx_state_2_o),
    .ctx_state_2_o_ap_vld(grp_sha256_final_fu_112_ctx_state_2_o_ap_vld),
    .ctx_state_3_i(ctx_state_3),
    .ctx_state_3_o(grp_sha256_final_fu_112_ctx_state_3_o),
    .ctx_state_3_o_ap_vld(grp_sha256_final_fu_112_ctx_state_3_o_ap_vld),
    .ctx_state_4_i(ctx_state_4),
    .ctx_state_4_o(grp_sha256_final_fu_112_ctx_state_4_o),
    .ctx_state_4_o_ap_vld(grp_sha256_final_fu_112_ctx_state_4_o_ap_vld),
    .ctx_state_5_i(ctx_state_5),
    .ctx_state_5_o(grp_sha256_final_fu_112_ctx_state_5_o),
    .ctx_state_5_o_ap_vld(grp_sha256_final_fu_112_ctx_state_5_o_ap_vld),
    .ctx_state_6_i(ctx_state_6),
    .ctx_state_6_o(grp_sha256_final_fu_112_ctx_state_6_o),
    .ctx_state_6_o_ap_vld(grp_sha256_final_fu_112_ctx_state_6_o_ap_vld),
    .ctx_state_7_i(ctx_state_7),
    .ctx_state_7_o(grp_sha256_final_fu_112_ctx_state_7_o),
    .ctx_state_7_o_ap_vld(grp_sha256_final_fu_112_ctx_state_7_o_ap_vld),
    .ctx_bitlen_0_i(ctx_bitlen_0),
    .ctx_bitlen_0_o(grp_sha256_final_fu_112_ctx_bitlen_0_o),
    .ctx_bitlen_0_o_ap_vld(grp_sha256_final_fu_112_ctx_bitlen_0_o_ap_vld),
    .ctx_bitlen_1_i(ctx_bitlen_1),
    .ctx_bitlen_1_o(grp_sha256_final_fu_112_ctx_bitlen_1_o),
    .ctx_bitlen_1_o_ap_vld(grp_sha256_final_fu_112_ctx_bitlen_1_o_ap_vld)
);

sha256_transform grp_sha256_transform_fu_144(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst),
    .ap_start(grp_sha256_transform_fu_144_ap_start),
    .ap_done(grp_sha256_transform_fu_144_ap_done),
    .ap_idle(grp_sha256_transform_fu_144_ap_idle),
    .ap_ready(grp_sha256_transform_fu_144_ap_ready),
    .data_transform_address0(grp_sha256_transform_fu_144_data_transform_address0),
    .data_transform_ce0(grp_sha256_transform_fu_144_data_transform_ce0),
    .data_transform_q0(ctx_in_data_q0),
    .data_transform_address1(grp_sha256_transform_fu_144_data_transform_address1),
    .data_transform_ce1(grp_sha256_transform_fu_144_data_transform_ce1),
    .data_transform_q1(ctx_in_data_q1),
    .ctx_state_0_i(ctx_state_0),
    .ctx_state_0_o(grp_sha256_transform_fu_144_ctx_state_0_o),
    .ctx_state_0_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_0_o_ap_vld),
    .ctx_state_1_i(ctx_state_1),
    .ctx_state_1_o(grp_sha256_transform_fu_144_ctx_state_1_o),
    .ctx_state_1_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_1_o_ap_vld),
    .ctx_state_2_i(ctx_state_2),
    .ctx_state_2_o(grp_sha256_transform_fu_144_ctx_state_2_o),
    .ctx_state_2_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_2_o_ap_vld),
    .ctx_state_3_i(ctx_state_3),
    .ctx_state_3_o(grp_sha256_transform_fu_144_ctx_state_3_o),
    .ctx_state_3_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_3_o_ap_vld),
    .ctx_state_4_i(ctx_state_4),
    .ctx_state_4_o(grp_sha256_transform_fu_144_ctx_state_4_o),
    .ctx_state_4_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_4_o_ap_vld),
    .ctx_state_5_i(ctx_state_5),
    .ctx_state_5_o(grp_sha256_transform_fu_144_ctx_state_5_o),
    .ctx_state_5_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_5_o_ap_vld),
    .ctx_state_6_i(ctx_state_6),
    .ctx_state_6_o(grp_sha256_transform_fu_144_ctx_state_6_o),
    .ctx_state_6_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_6_o_ap_vld),
    .ctx_state_7_i(ctx_state_7),
    .ctx_state_7_o(grp_sha256_transform_fu_144_ctx_state_7_o),
    .ctx_state_7_o_ap_vld(grp_sha256_transform_fu_144_ctx_state_7_o_ap_vld)
);

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_sha256_final_fu_112_ap_start <= 1'b0;
    end else begin
        if (((1'b1 == ap_CS_fsm_state2) & ~(exitcond_i_fu_239_p2 == 1'b0))) begin
            ap_reg_grp_sha256_final_fu_112_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sha256_final_fu_112_ap_ready)) begin
            ap_reg_grp_sha256_final_fu_112_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_reg_grp_sha256_transform_fu_144_ap_start <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state4)) begin
            ap_reg_grp_sha256_transform_fu_144_ap_start <= 1'b1;
        end else if ((1'b1 == grp_sha256_transform_fu_144_ap_ready)) begin
            ap_reg_grp_sha256_transform_fu_144_ap_start <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & ~(~(1'b0 == tmp_1_i_reg_325) & (1'b0 == grp_sha256_transform_fu_144_ap_done)))) begin
        ctx_bitlen_0 <= tmp_4_i_fu_300_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_bitlen_0 <= ap_const_lv32_0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_bitlen_0_o_ap_vld))) begin
        ctx_bitlen_0 <= grp_sha256_final_fu_112_ctx_bitlen_0_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & ~(~(1'b0 == tmp_1_i_reg_325) & (1'b0 == grp_sha256_transform_fu_144_ap_done)) & ~(1'b0 == tmp_2_i_fu_278_p2))) begin
        ctx_bitlen_1 <= tmp_3_i_fu_288_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_bitlen_1 <= ap_const_lv32_0;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_bitlen_1_o_ap_vld))) begin
        ctx_bitlen_1 <= grp_sha256_final_fu_112_ctx_bitlen_1_o;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_datalen <= ctx_datalen_assign_i_fu_256_p2;
    end else if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0)) | ((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & ~(~(1'b0 == tmp_1_i_reg_325) & (1'b0 == grp_sha256_transform_fu_144_ap_done))))) begin
        ctx_datalen <= ap_const_lv32_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_0 <= ap_const_lv32_6A09E667;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_0_o_ap_vld))) begin
        ctx_state_0 <= grp_sha256_transform_fu_144_ctx_state_0_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_0_o_ap_vld))) begin
        ctx_state_0 <= grp_sha256_final_fu_112_ctx_state_0_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_1 <= ap_const_lv32_BB67AE85;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_1_o_ap_vld))) begin
        ctx_state_1 <= grp_sha256_transform_fu_144_ctx_state_1_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_1_o_ap_vld))) begin
        ctx_state_1 <= grp_sha256_final_fu_112_ctx_state_1_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_2 <= ap_const_lv32_3C6EF372;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_2_o_ap_vld))) begin
        ctx_state_2 <= grp_sha256_transform_fu_144_ctx_state_2_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_2_o_ap_vld))) begin
        ctx_state_2 <= grp_sha256_final_fu_112_ctx_state_2_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_3 <= ap_const_lv32_A54FF53A;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_3_o_ap_vld))) begin
        ctx_state_3 <= grp_sha256_transform_fu_144_ctx_state_3_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_3_o_ap_vld))) begin
        ctx_state_3 <= grp_sha256_final_fu_112_ctx_state_3_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_4 <= ap_const_lv32_510E527F;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_4_o_ap_vld))) begin
        ctx_state_4 <= grp_sha256_transform_fu_144_ctx_state_4_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_4_o_ap_vld))) begin
        ctx_state_4 <= grp_sha256_final_fu_112_ctx_state_4_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_5 <= ap_const_lv32_9B05688C;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_5_o_ap_vld))) begin
        ctx_state_5 <= grp_sha256_transform_fu_144_ctx_state_5_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_5_o_ap_vld))) begin
        ctx_state_5 <= grp_sha256_final_fu_112_ctx_state_5_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_6 <= ap_const_lv32_1F83D9AB;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_6_o_ap_vld))) begin
        ctx_state_6 <= grp_sha256_transform_fu_144_ctx_state_6_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_6_o_ap_vld))) begin
        ctx_state_6 <= grp_sha256_final_fu_112_ctx_state_6_o;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        ctx_state_7 <= ap_const_lv32_5BE0CD19;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325) & (1'b1 == grp_sha256_transform_fu_144_ctx_state_7_o_ap_vld))) begin
        ctx_state_7 <= grp_sha256_transform_fu_144_ctx_state_7_o;
    end else if (((1'b1 == ap_CS_fsm_state6) & (1'b1 == grp_sha256_final_fu_112_ctx_state_7_o_ap_vld))) begin
        ctx_state_7 <= grp_sha256_final_fu_112_ctx_state_7_o;
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~(~(1'b0 == tmp_1_i_reg_325) & (1'b0 == grp_sha256_transform_fu_144_ap_done)))) begin
        i_i_reg_101 <= i_reg_315;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        i_i_reg_101 <= ap_const_lv6_0;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        i_reg_315 <= i_fu_245_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        tmp_1_i_reg_325 <= tmp_1_i_fu_268_p2;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~(1'b0 == grp_sha256_final_fu_112_ap_done))) begin
        ap_done = 1'b1;
    end else begin
        ap_done = 1'b0;
    end
end

always @ (*) begin
    if (((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1))) begin
        ap_idle = 1'b1;
    end else begin
        ap_idle = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state6) & ~(1'b0 == grp_sha256_final_fu_112_ap_done))) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_in_data_address0 = ctx_datalen;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325))) begin
        ctx_in_data_address0 = grp_sha256_transform_fu_144_data_transform_address0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_address0 = grp_sha256_final_fu_112_ctx_in_data_address0;
    end else begin
        ctx_in_data_address0 = 'bx;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325))) begin
        ctx_in_data_address1 = grp_sha256_transform_fu_144_data_transform_address1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_address1 = grp_sha256_final_fu_112_ctx_in_data_address1;
    end else begin
        ctx_in_data_address1 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_in_data_ce0 = 1'b1;
    end else if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325))) begin
        ctx_in_data_ce0 = grp_sha256_transform_fu_144_data_transform_ce0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_ce0 = grp_sha256_final_fu_112_ctx_in_data_ce0;
    end else begin
        ctx_in_data_ce0 = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state5) & ~(1'b0 == tmp_1_i_reg_325))) begin
        ctx_in_data_ce1 = grp_sha256_transform_fu_144_data_transform_ce1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_ce1 = grp_sha256_final_fu_112_ctx_in_data_ce1;
    end else begin
        ctx_in_data_ce1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_in_data_d0 = data_q0;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_d0 = grp_sha256_final_fu_112_ctx_in_data_d0;
    end else begin
        ctx_in_data_d0 = 'bx;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        ctx_in_data_we0 = 1'b1;
    end else if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_we0 = grp_sha256_final_fu_112_ctx_in_data_we0;
    end else begin
        ctx_in_data_we0 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state6)) begin
        ctx_in_data_we1 = grp_sha256_final_fu_112_ctx_in_data_we1;
    end else begin
        ctx_in_data_we1 = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        data_ce0 = 1'b1;
    end else begin
        data_ce0 = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            if (~(ap_start == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end
        end
        ap_ST_fsm_state2 : begin
            if (~(exitcond_i_fu_239_p2 == 1'b0)) begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state3 : begin
            if ((1'b0 == tmp_1_i_fu_268_p2)) begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        ap_ST_fsm_state4 : begin
            ap_NS_fsm = ap_ST_fsm_state5;
        end
        ap_ST_fsm_state5 : begin
            if (~(~(1'b0 == tmp_1_i_reg_325) & (1'b0 == grp_sha256_transform_fu_144_ap_done))) begin
                ap_NS_fsm = ap_ST_fsm_state2;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state5;
            end
        end
        ap_ST_fsm_state6 : begin
            if (~(1'b0 == grp_sha256_final_fu_112_ap_done)) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state6;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign ap_CS_fsm_state3 = ap_CS_fsm[ap_const_lv32_2];

assign ap_CS_fsm_state4 = ap_CS_fsm[ap_const_lv32_3];

assign ap_CS_fsm_state5 = ap_CS_fsm[ap_const_lv32_4];

assign ap_CS_fsm_state6 = ap_CS_fsm[ap_const_lv32_5];

assign ctx_datalen_assign_i_fu_256_p2 = (ctx_datalen + ap_const_lv32_1);

assign data_address0 = i_i_cast1_fu_234_p1;

assign exitcond_i_fu_239_p2 = ((i_i_reg_101 == ap_const_lv6_20) ? 1'b1 : 1'b0);

assign grp_sha256_final_fu_112_ap_start = ap_reg_grp_sha256_final_fu_112_ap_start;

assign grp_sha256_transform_fu_144_ap_start = ap_reg_grp_sha256_transform_fu_144_ap_start;

assign hash_address0 = grp_sha256_final_fu_112_final_hash_address0;

assign hash_address1 = grp_sha256_final_fu_112_final_hash_address1;

assign hash_ce0 = grp_sha256_final_fu_112_final_hash_ce0;

assign hash_ce1 = grp_sha256_final_fu_112_final_hash_ce1;

assign hash_d0 = grp_sha256_final_fu_112_final_hash_d0;

assign hash_d1 = grp_sha256_final_fu_112_final_hash_d1;

assign hash_we0 = grp_sha256_final_fu_112_final_hash_we0;

assign hash_we1 = grp_sha256_final_fu_112_final_hash_we1;

assign i_fu_245_p2 = (i_i_reg_101 + ap_const_lv6_1);

assign i_i_cast1_fu_234_p1 = i_i_reg_101;

assign tmp_1_i_fu_268_p2 = ((ctx_datalen_assign_i_fu_256_p2 == ap_const_lv32_40) ? 1'b1 : 1'b0);

assign tmp_2_i_fu_278_p2 = ((ctx_bitlen_0 > ap_const_lv32_FFFFFDFF) ? 1'b1 : 1'b0);

assign tmp_3_i_fu_288_p2 = (ctx_bitlen_1 + ap_const_lv32_1);

assign tmp_4_i_fu_300_p2 = (ctx_bitlen_0 + ap_const_lv32_200);

endmodule //sha256_top
