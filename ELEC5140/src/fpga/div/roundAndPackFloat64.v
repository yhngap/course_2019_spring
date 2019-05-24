/* verilator lint_off DECLFILENAME */
/* verilator lint_off WIDTH */
/* verilator lint_off STMTDLY */
/* verilator lint_off UNUSED */
// ==============================================================
// RTL generated by Vivado(TM) HLS - High-Level Synthesis from C, C++ and SystemC
// Version: 2016.4
// Copyright (C) 1986-2016 Xilinx, Inc. All Rights Reserved.
// 
// ===========================================================

`timescale 1 ns / 1 ps 

module roundAndPackFloat64 (
        ap_clk,
        ap_rst,
        ap_start,
        ap_done,
        ap_idle,
        ap_ready,
        zSign,
        zExp,
        zSig,
        float_exception_flag_i,
        float_exception_flag_o,
        float_exception_flag_o_ap_vld,
        ap_return
);

parameter    ap_ST_fsm_state1 = 2'b1;
parameter    ap_ST_fsm_state2 = 2'b10;
parameter    ap_const_lv32_0 = 32'b00000000000000000000000000000000;
parameter    ap_const_lv13_0 = 13'b0000000000000;
parameter    ap_const_lv32_1 = 32'b1;
parameter    ap_const_lv32_3 = 32'b11;
parameter    ap_const_lv32_2 = 32'b10;
parameter    ap_const_lv10_3FF = 10'b1111111111;
parameter    ap_const_lv10_0 = 10'b0000000000;
parameter    ap_const_lv10_200 = 10'b1000000000;
parameter    ap_const_lv13_7FC = 13'b11111111100;
parameter    ap_const_lv13_7FD = 13'b11111111101;
parameter    ap_const_lv32_3F = 32'b111111;
parameter    ap_const_lv32_C = 32'b1100;
parameter    ap_const_lv32_6 = 32'b110;
parameter    ap_const_lv32_B = 32'b1011;
parameter    ap_const_lv6_1 = 6'b1;
parameter    ap_const_lv64_0 = 64'b0000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_4 = 32'b100;
parameter    ap_const_lv32_9 = 32'b1001;
parameter    ap_const_lv63_0 = 63'b000000000000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv64_7FF0000000000000 = 64'b111111111110000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv32_A = 32'b1010;
parameter    ap_const_lv32_FFFFFFFF = 32'b11111111111111111111111111111111;
parameter    ap_const_lv54_0 = 54'b000000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv12_0 = 12'b000000000000;
parameter    ap_const_lv52_0 = 52'b0000000000000000000000000000000000000000000000000000;
parameter    ap_const_lv9_0 = 9'b000000000;

input   ap_clk;
input   ap_rst;
input   ap_start;
output   ap_done;
output   ap_idle;
output   ap_ready;
input  [0:0] zSign;
input  [12:0] zExp;
input  [63:0] zSig;
input  [31:0] float_exception_flag_i;
output  [31:0] float_exception_flag_o;
output   float_exception_flag_o_ap_vld;
output  [63:0] ap_return;

reg ap_done;
reg ap_idle;
reg ap_ready;
reg[31:0] float_exception_flag_o;
reg float_exception_flag_o_ap_vld;
reg[63:0] ap_return;

(* fsm_encoding = "none" *) reg   [1:0] ap_CS_fsm;
wire   [0:0] ap_CS_fsm_state1;
reg   [31:0] float_rounding_mode;
wire   [0:0] tmp_fu_158_p2;
reg   [0:0] tmp_reg_581;
wire   [9:0] roundIncrement_4_fu_236_p3;
reg   [9:0] roundIncrement_4_reg_586;
wire   [9:0] roundBits_fu_244_p1;
wire   [0:0] tmp_8_fu_248_p2;
reg   [0:0] tmp_8_reg_597;
wire   [0:0] tmp_9_fu_254_p2;
reg   [0:0] tmp_9_reg_601;
wire   [0:0] tmp_1_fu_260_p2;
reg   [0:0] tmp_1_reg_605;
wire   [0:0] tmp_6_fu_276_p3;
reg   [0:0] tmp_6_reg_609;
wire   [63:0] z_2_fu_382_p3;
wire   [0:0] tmp_25_fu_284_p3;
wire   [9:0] roundBits_2_fu_390_p1;
wire   [63:0] tmp_11_fu_448_p2;
reg   [63:0] tmp_14_reg_106;
reg   [12:0] zExp_assign_1_reg_117;
reg   [9:0] roundBits_1_reg_130;
reg   [63:0] p_0_phi_fu_144_p4;
reg   [63:0] p_0_reg_141;
wire   [63:0] tmp_50_i6_fu_557_p2;
wire   [0:0] ap_CS_fsm_state2;
wire   [0:0] tmp_12_fu_394_p2;
wire   [0:0] tmp_15_fu_454_p2;
wire   [31:0] tmp_13_fu_400_p2;
wire   [31:0] tmp_7_fu_412_p2;
wire   [31:0] tmp_16_fu_460_p2;
wire   [0:0] tmp_s_fu_164_p2;
wire   [0:0] sel_tmp2_demorgan_fu_182_p2;
wire   [0:0] sel_tmp3_demorgan_fu_188_p2;
wire   [0:0] not_tmp_5_fu_176_p2;
wire   [0:0] not_tmp_4_fu_170_p2;
wire   [0:0] sel_tmp4_fu_194_p3;
wire   [0:0] sel_tmp6_fu_210_p2;
wire   [0:0] sel_tmp7_fu_216_p2;
wire   [0:0] tmp_3_fu_230_p2;
wire   [9:0] sel_tmp5_fu_222_p3;
wire   [9:0] sel_tmp4_cast_fu_202_p3;
wire   [63:0] tmp_2_fu_266_p1;
wire   [63:0] tmp_4_fu_270_p2;
wire   [12:0] count_assign_fu_292_p2;
wire   [5:0] tmp_27_fu_298_p4;
wire   [63:0] tmp_4_i_fu_314_p1;
wire   [5:0] tmp_28_fu_324_p1;
wire   [63:0] tmp_8_i_fu_328_p1;
wire   [63:0] tmp_9_i_fu_332_p2;
wire   [63:0] tmp_5_i_fu_318_p2;
wire   [0:0] tmp_29_fu_344_p1;
wire   [0:0] tmp_i3_fu_338_p2;
wire   [62:0] tmp_11_i_fu_354_p4;
wire   [0:0] tmp_10_i_fu_348_p2;
wire   [0:0] tmp_2_i_fu_372_p2;
wire   [0:0] icmp_fu_308_p2;
wire   [63:0] z_fu_364_p3;
wire   [63:0] z_1_fu_378_p1;
wire   [63:0] tmp_i_fu_424_p3;
wire   [0:0] tmp_5_fu_438_p2;
wire   [63:0] tmp_50_i7_fu_432_p2;
wire   [63:0] tmp_10_fu_444_p1;
wire   [63:0] tmp_17_fu_472_p1;
wire   [63:0] tmp_18_fu_475_p2;
wire   [0:0] tmp_19_fu_491_p2;
wire   [0:0] tmp_20_fu_497_p2;
wire   [31:0] tmp_21_fu_502_p1;
wire   [31:0] tmp_22_fu_506_p2;
wire   [53:0] zSig_assign_1_cast_fu_481_p4;
wire  signed [53:0] tmp_30_cast_fu_512_p1;
wire   [53:0] zSig_assign_2_fu_516_p2;
wire   [0:0] tmp_23_fu_522_p2;
wire   [11:0] tmp_31_fu_528_p1;
wire   [11:0] tmp_24_fu_532_p3;
wire   [63:0] tmp_49_i_fu_548_p4;
wire   [63:0] tmp_48_i_fu_540_p3;
reg   [63:0] ap_return_preg;
reg   [1:0] ap_NS_fsm;

// power-on initialization
initial begin
#0 ap_CS_fsm = 2'b1;
#0 float_rounding_mode = 32'b00000000000000000000000000000000;
#0 ap_return_preg = 64'b0000000000000000000000000000000000000000000000000000000000000000;
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst == 1'b1) begin
        ap_return_preg <= ap_const_lv64_0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            ap_return_preg <= p_0_phi_fu_144_p4;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_8_reg_597 == 1'b0) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_1_reg_605)) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_6_reg_609))))) begin
        p_0_reg_141 <= tmp_50_i6_fu_557_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & ~(tmp_9_fu_254_p2 == 1'b0)) | (~(tmp_8_fu_248_p2 == 1'b0) & ~(1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_6_fu_276_p3))))) begin
        p_0_reg_141 <= tmp_11_fu_448_p2;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & (tmp_8_fu_248_p2 == 1'b0)) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & (1'b0 == tmp_25_fu_284_p3)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3)))))) begin
        roundBits_1_reg_130 <= roundBits_fu_244_p1;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_25_fu_284_p3)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3))))) begin
        roundBits_1_reg_130 <= roundBits_2_fu_390_p1;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & (tmp_8_fu_248_p2 == 1'b0)) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & (1'b0 == tmp_25_fu_284_p3)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3)))))) begin
        tmp_14_reg_106 <= zSig;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_25_fu_284_p3)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3))))) begin
        tmp_14_reg_106 <= z_2_fu_382_p3;
    end
end

always @ (posedge ap_clk) begin
    if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & (tmp_8_fu_248_p2 == 1'b0)) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & (1'b0 == tmp_25_fu_284_p3)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3)))))) begin
        zExp_assign_1_reg_117 <= zExp;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_25_fu_284_p3)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3))))) begin
        zExp_assign_1_reg_117 <= ap_const_lv13_0;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0))) begin
        roundIncrement_4_reg_586 <= roundIncrement_4_fu_236_p3;
        tmp_8_reg_597 <= tmp_8_fu_248_p2;
        tmp_reg_581 <= tmp_fu_158_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0))) begin
        tmp_1_reg_605 <= tmp_1_fu_260_p2;
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & ~(1'b0 == tmp_1_fu_260_p2))) begin
        tmp_6_reg_609 <= tmp_4_fu_270_p2[ap_const_lv32_3F];
    end
end

always @ (posedge ap_clk) begin
    if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ~(tmp_8_fu_248_p2 == 1'b0))) begin
        tmp_9_reg_601 <= tmp_9_fu_254_p2;
    end
end

always @ (*) begin
    if ((((1'b0 == ap_start) & (ap_CS_fsm_state1 == 1'b1)) | (1'b1 == ap_CS_fsm_state2))) begin
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
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_ready = 1'b1;
    end else begin
        ap_ready = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state2)) begin
        ap_return = p_0_phi_fu_144_p4;
    end else begin
        ap_return = ap_return_preg;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & (((tmp_8_reg_597 == 1'b0) & (1'b0 == tmp_15_fu_454_p2)) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_1_reg_605) & (1'b0 == tmp_15_fu_454_p2)) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_6_reg_609) & (1'b0 == tmp_15_fu_454_p2))))) begin
        float_exception_flag_o = tmp_16_fu_460_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & ~(tmp_9_fu_254_p2 == 1'b0)) | (~(tmp_8_fu_248_p2 == 1'b0) & ~(1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_6_fu_276_p3))))) begin
        float_exception_flag_o = tmp_7_fu_412_p2;
    end else if (((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_12_fu_394_p2)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3) & (1'b0 == tmp_12_fu_394_p2))))) begin
        float_exception_flag_o = tmp_13_fu_400_p2;
    end else begin
        float_exception_flag_o = float_exception_flag_i;
    end
end

always @ (*) begin
    if ((((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & ~(tmp_9_fu_254_p2 == 1'b0)) | (~(tmp_8_fu_248_p2 == 1'b0) & ~(1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_6_fu_276_p3)))) | ((ap_CS_fsm_state1 == 1'b1) & ~(ap_start == 1'b0) & ((~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & (1'b0 == tmp_1_fu_260_p2) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_12_fu_394_p2)) | (~(tmp_8_fu_248_p2 == 1'b0) & (tmp_9_fu_254_p2 == 1'b0) & ~(1'b0 == tmp_25_fu_284_p3) & (1'b0 == tmp_6_fu_276_p3) & (1'b0 == tmp_12_fu_394_p2)))) | ((1'b1 == ap_CS_fsm_state2) & (((tmp_8_reg_597 == 1'b0) & (1'b0 == tmp_15_fu_454_p2)) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_1_reg_605) & (1'b0 == tmp_15_fu_454_p2)) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_6_reg_609) & (1'b0 == tmp_15_fu_454_p2)))))) begin
        float_exception_flag_o_ap_vld = 1'b1;
    end else begin
        float_exception_flag_o_ap_vld = 1'b0;
    end
end

always @ (*) begin
    if (((1'b1 == ap_CS_fsm_state2) & ((tmp_8_reg_597 == 1'b0) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_1_reg_605)) | ((tmp_9_reg_601 == 1'b0) & (1'b0 == tmp_6_reg_609))))) begin
        p_0_phi_fu_144_p4 = tmp_50_i6_fu_557_p2;
    end else begin
        p_0_phi_fu_144_p4 = p_0_reg_141;
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
            ap_NS_fsm = ap_ST_fsm_state1;
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign ap_CS_fsm_state1 = ap_CS_fsm[ap_const_lv32_0];

assign ap_CS_fsm_state2 = ap_CS_fsm[ap_const_lv32_1];

assign count_assign_fu_292_p2 = (ap_const_lv13_0 - zExp);

assign icmp_fu_308_p2 = (($signed(tmp_27_fu_298_p4) < $signed(6'b1)) ? 1'b1 : 1'b0);

assign not_tmp_4_fu_170_p2 = ((float_rounding_mode != ap_const_lv32_3) ? 1'b1 : 1'b0);

assign not_tmp_5_fu_176_p2 = ((float_rounding_mode != ap_const_lv32_2) ? 1'b1 : 1'b0);

assign roundBits_2_fu_390_p1 = z_2_fu_382_p3[9:0];

assign roundBits_fu_244_p1 = zSig[9:0];

assign roundIncrement_4_fu_236_p3 = ((tmp_3_fu_230_p2[0:0] === 1'b1) ? sel_tmp5_fu_222_p3 : sel_tmp4_cast_fu_202_p3);

assign sel_tmp2_demorgan_fu_182_p2 = (tmp_fu_158_p2 | tmp_s_fu_164_p2);

assign sel_tmp3_demorgan_fu_188_p2 = (sel_tmp2_demorgan_fu_182_p2 | zSign);

assign sel_tmp4_cast_fu_202_p3 = ((sel_tmp4_fu_194_p3[0:0] === 1'b1) ? ap_const_lv10_3FF : ap_const_lv10_0);

assign sel_tmp4_fu_194_p3 = ((sel_tmp3_demorgan_fu_188_p2[0:0] === 1'b1) ? not_tmp_5_fu_176_p2 : not_tmp_4_fu_170_p2);

assign sel_tmp5_fu_222_p3 = ((sel_tmp7_fu_216_p2[0:0] === 1'b1) ? ap_const_lv10_0 : ap_const_lv10_200);

assign sel_tmp6_fu_210_p2 = (tmp_fu_158_p2 ^ 1'b1);

assign sel_tmp7_fu_216_p2 = (tmp_s_fu_164_p2 & sel_tmp6_fu_210_p2);

assign tmp_10_fu_444_p1 = tmp_5_fu_438_p2;

assign tmp_10_i_fu_348_p2 = (tmp_29_fu_344_p1 | tmp_i3_fu_338_p2);

assign tmp_11_fu_448_p2 = (tmp_50_i7_fu_432_p2 - tmp_10_fu_444_p1);

assign tmp_11_i_fu_354_p4 = {{tmp_5_i_fu_318_p2[ap_const_lv32_3F : ap_const_lv32_1]}};

assign tmp_12_fu_394_p2 = ((roundBits_2_fu_390_p1 == ap_const_lv10_0) ? 1'b1 : 1'b0);

assign tmp_13_fu_400_p2 = (float_exception_flag_i | ap_const_lv32_4);

assign tmp_15_fu_454_p2 = ((roundBits_1_reg_130 == ap_const_lv10_0) ? 1'b1 : 1'b0);

assign tmp_16_fu_460_p2 = (float_exception_flag_i | ap_const_lv32_1);

assign tmp_17_fu_472_p1 = roundIncrement_4_reg_586;

assign tmp_18_fu_475_p2 = (tmp_14_reg_106 + tmp_17_fu_472_p1);

assign tmp_19_fu_491_p2 = ((roundBits_1_reg_130 == ap_const_lv10_200) ? 1'b1 : 1'b0);

assign tmp_1_fu_260_p2 = ((zExp == ap_const_lv13_7FD) ? 1'b1 : 1'b0);

assign tmp_20_fu_497_p2 = (tmp_19_fu_491_p2 & tmp_reg_581);

assign tmp_21_fu_502_p1 = tmp_20_fu_497_p2;

assign tmp_22_fu_506_p2 = (tmp_21_fu_502_p1 ^ ap_const_lv32_FFFFFFFF);

assign tmp_23_fu_522_p2 = ((zSig_assign_2_fu_516_p2 == ap_const_lv54_0) ? 1'b1 : 1'b0);

assign tmp_24_fu_532_p3 = ((tmp_23_fu_522_p2[0:0] === 1'b1) ? ap_const_lv12_0 : tmp_31_fu_528_p1);

assign tmp_25_fu_284_p3 = zExp[ap_const_lv32_C];

assign tmp_27_fu_298_p4 = {{count_assign_fu_292_p2[ap_const_lv32_B : ap_const_lv32_6]}};

assign tmp_28_fu_324_p1 = zExp[5:0];

assign tmp_29_fu_344_p1 = tmp_5_i_fu_318_p2[0:0];

assign tmp_2_fu_266_p1 = roundIncrement_4_fu_236_p3;

assign tmp_2_i_fu_372_p2 = ((zSig != ap_const_lv64_0) ? 1'b1 : 1'b0);

assign tmp_30_cast_fu_512_p1 = $signed(tmp_22_fu_506_p2);

assign tmp_31_fu_528_p1 = zExp_assign_1_reg_117[11:0];

assign tmp_3_fu_230_p2 = (sel_tmp7_fu_216_p2 | tmp_fu_158_p2);

assign tmp_48_i_fu_540_p3 = {{tmp_24_fu_532_p3}, {ap_const_lv52_0}};

assign tmp_49_i_fu_548_p4 = {{{zSign}, {ap_const_lv9_0}}, {zSig_assign_2_fu_516_p2}};

assign tmp_4_fu_270_p2 = (tmp_2_fu_266_p1 + zSig);

assign tmp_4_i_fu_314_p1 = count_assign_fu_292_p2;

assign tmp_50_i6_fu_557_p2 = (tmp_49_i_fu_548_p4 + tmp_48_i_fu_540_p3);

assign tmp_50_i7_fu_432_p2 = (tmp_i_fu_424_p3 | ap_const_lv64_7FF0000000000000);

assign tmp_5_fu_438_p2 = ((roundIncrement_4_fu_236_p3 == ap_const_lv10_0) ? 1'b1 : 1'b0);

assign tmp_5_i_fu_318_p2 = zSig >> tmp_4_i_fu_314_p1;

assign tmp_6_fu_276_p3 = tmp_4_fu_270_p2[ap_const_lv32_3F];

assign tmp_7_fu_412_p2 = (float_exception_flag_i | ap_const_lv32_9);

assign tmp_8_fu_248_p2 = ((zExp > ap_const_lv13_7FC) ? 1'b1 : 1'b0);

assign tmp_8_i_fu_328_p1 = tmp_28_fu_324_p1;

assign tmp_9_fu_254_p2 = (($signed(zExp) > $signed(13'b11111111101)) ? 1'b1 : 1'b0);

assign tmp_9_i_fu_332_p2 = zSig << tmp_8_i_fu_328_p1;

assign tmp_fu_158_p2 = ((float_rounding_mode == ap_const_lv32_0) ? 1'b1 : 1'b0);

assign tmp_i3_fu_338_p2 = ((tmp_9_i_fu_332_p2 != ap_const_lv64_0) ? 1'b1 : 1'b0);

assign tmp_i_fu_424_p3 = {{zSign}, {ap_const_lv63_0}};

assign tmp_s_fu_164_p2 = ((float_rounding_mode == ap_const_lv32_1) ? 1'b1 : 1'b0);

assign zSig_assign_1_cast_fu_481_p4 = {{tmp_18_fu_475_p2[ap_const_lv32_3F : ap_const_lv32_A]}};

assign zSig_assign_2_fu_516_p2 = (zSig_assign_1_cast_fu_481_p4 & tmp_30_cast_fu_512_p1);

assign z_1_fu_378_p1 = tmp_2_i_fu_372_p2;

assign z_2_fu_382_p3 = ((icmp_fu_308_p2[0:0] === 1'b1) ? z_fu_364_p3 : z_1_fu_378_p1);

assign z_fu_364_p3 = {{tmp_11_i_fu_354_p4}, {tmp_10_i_fu_348_p2}};

endmodule //roundAndPackFloat64