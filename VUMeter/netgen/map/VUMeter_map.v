////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: VUMeter_map.v
// /___/   /\     Timestamp: Fri Dec 13 15:42:21 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -s 3 -pcf VUMeter.pcf -sdf_anno true -sdf_path netgen/map -insert_glbl true -w -dir netgen/map -ofmt verilog -sim VUMeter_map.ncd VUMeter_map.v 
// Device	: 6slx16csg324-3 (PRODUCTION 1.22 2012-07-09)
// Input file	: VUMeter_map.ncd
// Output file	: D:\Student Data\XiLinx ISE Design Suite\VUMeter\netgen\map\VUMeter_map.v
// # of Modules	: 1
// Design Name	: VUMeter
// Xilinx        : D:\Xilinx\14.2\ISE_DS\ISE\
//             
// Purpose:    
//     This verilog netlist is a verification model and uses simulation 
//     primitives which may not represent the true implementation of the 
//     device, however the netlist is functionally correct and should not 
//     be modified. This file cannot be synthesized and should only be used 
//     with supported simulation tools.
//             
// Reference:  
//     Command Line Tools User Guide, Chapter 23 and Synthesis and Simulation Design Guide, Chapter 6
//             
////////////////////////////////////////////////////////////////////////////////

`timescale 1 ns/1 ps

module VUMeter (
  clk, reset, switch, Data1, Data2, clk12, clk122, CS, CS2, LED
);
  input clk;
  input reset;
  input switch;
  input Data1;
  input Data2;
  output clk12;
  output clk122;
  output CS;
  output CS2;
  output [7 : 0] LED;
  wire \U1/_n0226_inv ;
  wire \U0/div_3_BUFG_566 ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ;
  wire \U1/CSelect_FSM_FFd1_570 ;
  wire reset_IBUF_0;
  wire N8;
  wire N10_0;
  wire \U1/digital<1>_0 ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ;
  wire \U1/digital<3>_0 ;
  wire \U1/digital<5>_0 ;
  wire \U1/digital<7>_0 ;
  wire \U2/_n0058_inv_597 ;
  wire \U1/digital<9>_0 ;
  wire N26;
  wire \U2/_n004511 ;
  wire clk_BUFGP;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<2> ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<3> ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ;
  wire N01_0;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<4> ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<6> ;
  wire \U1/CSelect_FSM_FFd2_614 ;
  wire \U1/Begin_615 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ;
  wire \U1/_n0212_inv ;
  wire N40_0;
  wire \U1/done_622 ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<1> ;
  wire \U2/_n0045_626 ;
  wire \U2/digital[11]_GND_5_o_LessThan_20_o ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<5> ;
  wire \U1/_n0193_inv_629 ;
  wire N62_0;
  wire N38;
  wire switch_IBUF_0;
  wire Data2_IBUF_0;
  wire Data1_IBUF_0;
  wire \clk_BUFGP/IBUFG_0 ;
  wire \U1/CS2_636 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ;
  wire N4;
  wire \U1/Mcount_cnt4 ;
  wire \U1/cnt_4_1_647 ;
  wire \U1/_n0212_inv1_648 ;
  wire N66;
  wire N58;
  wire N22;
  wire N36;
  wire N30;
  wire N24;
  wire N34;
  wire N32;
  wire N28;
  wire \clk_BUFGP/IBUFG_1 ;
  wire switch_IBUF_6;
  wire Data1_IBUF_25;
  wire Data2_IBUF_28;
  wire reset_IBUF_33;
  wire \U1/CS2_rstpot_50 ;
  wire \U1/CSelect[1]_GND_3_o_Mux_28_o ;
  wire N62;
  wire \U1/Mcount_cnt3 ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> ;
  wire \U1/CSelect_FSM_FFd1-In ;
  wire \U1/CSelect_FSM_FFd2-In_138 ;
  wire N40;
  wire \U1/done_rstpot_170 ;
  wire \U1/cnt_0_rstpot_201 ;
  wire \U1/cnt_2_rstpot_195 ;
  wire N66_pack_15;
  wire \U1/cnt_1_rstpot_186 ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102_pack_12 ;
  wire N01;
  wire N22_pack_5;
  wire \U0/div<2>_pack_7 ;
  wire N10;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT611_pack_5 ;
  wire N30_pack_7;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10>_pack_2 ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> ;
  wire N34_pack_3;
  wire N32_pack_6;
  wire \U2/led<1>_pack_7 ;
  wire \U2/led_1_glue_set_515 ;
  wire \U2/led_0_glue_set_514 ;
  wire \U2/led_3_glue_set_508 ;
  wire \U2/led_4_glue_set_502 ;
  wire \U2/led_5_glue_set_495 ;
  wire \U2/led_6_glue_set_542 ;
  wire \U2/led<2>_pack_5 ;
  wire \U2/led_2_glue_set_527 ;
  wire \U2/led_7_glue_set_526 ;
  wire VCC;
  wire GND;
  wire [11 : 0] \U1/digital ;
  wire [15 : 4] \U1/temp ;
  wire [4 : 0] \U1/cnt ;
  wire [3 : 0] \U0/div ;
  wire [7 : 0] \U2/led ;
  wire [3 : 0] Result;
  initial $sdf_annotate("netgen/map/vumeter_map.sdf");
  X_IPAD #(
    .LOC ( "PAD156" ))
  clk_4 (
    .PAD(clk)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \clk_BUFGP/IBUFG  (
    .O(\clk_BUFGP/IBUFG_1 ),
    .I(clk)
  );
  X_BUF #(
    .LOC ( "PAD156" ))
  \ProtoComp16.IMUX  (
    .I(\clk_BUFGP/IBUFG_1 ),
    .O(\clk_BUFGP/IBUFG_0 )
  );
  X_OPAD #(
    .LOC ( "PAD149" ))
  CS_7 (
    .PAD(CS)
  );
  X_OBUF #(
    .LOC ( "PAD149" ))
  CS_OBUF (
    .I(\U1/CS2_636 ),
    .O(CS)
  );
  X_IPAD #(
    .LOC ( "PAD154" ))
  switch_11 (
    .PAD(switch)
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  switch_IBUF (
    .O(switch_IBUF_6),
    .I(switch)
  );
  X_BUF #(
    .LOC ( "PAD154" ))
  \ProtoComp16.IMUX.1  (
    .I(switch_IBUF_6),
    .O(switch_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD125" ))
  \LED<0>  (
    .PAD(LED[0])
  );
  X_OBUF #(
    .LOC ( "PAD125" ))
  LED_0_OBUF (
    .I(\U2/led [0]),
    .O(LED[0])
  );
  X_OPAD #(
    .LOC ( "PAD126" ))
  \LED<1>  (
    .PAD(LED[1])
  );
  X_OBUF #(
    .LOC ( "PAD126" ))
  LED_1_OBUF (
    .I(\U2/led [1]),
    .O(LED[1])
  );
  X_OPAD #(
    .LOC ( "PAD227" ))
  clk122_20 (
    .PAD(clk122)
  );
  X_OBUF #(
    .LOC ( "PAD227" ))
  clk122_OBUF (
    .I(\U0/div [3]),
    .O(clk122)
  );
  X_OPAD #(
    .LOC ( "PAD129" ))
  \LED<2>  (
    .PAD(LED[2])
  );
  X_OBUF #(
    .LOC ( "PAD129" ))
  LED_2_OBUF (
    .I(\U2/led [2]),
    .O(LED[2])
  );
  X_OPAD #(
    .LOC ( "PAD130" ))
  \LED<3>  (
    .PAD(LED[3])
  );
  X_OBUF #(
    .LOC ( "PAD130" ))
  LED_3_OBUF (
    .I(\U2/led [3]),
    .O(LED[3])
  );
  X_OPAD #(
    .LOC ( "PAD139" ))
  \LED<4>  (
    .PAD(LED[4])
  );
  X_OBUF #(
    .LOC ( "PAD139" ))
  LED_4_OBUF (
    .I(\U2/led [4]),
    .O(LED[4])
  );
  X_OPAD #(
    .LOC ( "PAD140" ))
  \LED<5>  (
    .PAD(LED[5])
  );
  X_OBUF #(
    .LOC ( "PAD140" ))
  LED_5_OBUF (
    .I(\U2/led [5]),
    .O(LED[5])
  );
  X_OPAD #(
    .LOC ( "PAD141" ))
  \LED<6>  (
    .PAD(LED[6])
  );
  X_OBUF #(
    .LOC ( "PAD141" ))
  LED_6_OBUF (
    .I(\U2/led [6]),
    .O(LED[6])
  );
  X_IPAD #(
    .LOC ( "PAD151" ))
  Data1_39 (
    .PAD(Data1)
  );
  X_BUF #(
    .LOC ( "PAD151" ))
  Data1_IBUF (
    .O(Data1_IBUF_25),
    .I(Data1)
  );
  X_BUF #(
    .LOC ( "PAD151" ))
  \ProtoComp16.IMUX.2  (
    .I(Data1_IBUF_25),
    .O(Data1_IBUF_0)
  );
  X_IPAD #(
    .LOC ( "PAD226" ))
  Data2_43 (
    .PAD(Data2)
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  Data2_IBUF (
    .O(Data2_IBUF_28),
    .I(Data2)
  );
  X_BUF #(
    .LOC ( "PAD226" ))
  \ProtoComp16.IMUX.3  (
    .I(Data2_IBUF_28),
    .O(Data2_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD142" ))
  \LED<7>  (
    .PAD(LED[7])
  );
  X_OBUF #(
    .LOC ( "PAD142" ))
  LED_7_OBUF (
    .I(\U2/led [7]),
    .O(LED[7])
  );
  X_IPAD #(
    .LOC ( "PAD28" ))
  reset_50 (
    .PAD(reset)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  reset_IBUF (
    .O(reset_IBUF_33),
    .I(reset)
  );
  X_BUF #(
    .LOC ( "PAD28" ))
  \ProtoComp16.IMUX.4  (
    .I(reset_IBUF_33),
    .O(reset_IBUF_0)
  );
  X_OPAD #(
    .LOC ( "PAD224" ))
  CS2_53 (
    .PAD(CS2)
  );
  X_OBUF #(
    .LOC ( "PAD224" ))
  CS2_OBUF (
    .I(\U1/CS2_636 ),
    .O(CS2)
  );
  X_OPAD #(
    .LOC ( "PAD152" ))
  clk12_56 (
    .PAD(clk12)
  );
  X_OBUF #(
    .LOC ( "PAD152" ))
  clk12_OBUF (
    .I(\U0/div [3]),
    .O(clk12)
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X2Y3" ))
  \U0/div_3_BUFG  (
    .I(\U0/div [3]),
    .O(\U0/div_3_BUFG_566 )
  );
  X_CKBUF #(
    .LOC ( "BUFGMUX_X3Y13" ))
  \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_0 ),
    .O(clk_BUFGP)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y23" ),
    .INIT ( 64'hF000F000F0F000F0 ))
  \U1/_n0226_inv1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/CSelect_FSM_FFd2_614 ),
    .ADR3(\U1/Begin_615 ),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/CSelect_FSM_FFd1_570 ),
    .O(\U1/_n0226_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 1'b1 ))
  \U1/CS2  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CS2_rstpot_50 ),
    .O(\U1/CS2_636 ),
    .SET(reset_IBUF_0),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y25" ),
    .INIT ( 64'hAF8AAF82EF8AAF82 ))
  \U1/CS2_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_614 ),
    .ADR1(\U1/Begin_615 ),
    .ADR2(\U1/CSelect_FSM_FFd1_570 ),
    .ADR3(\U1/CS2_636 ),
    .ADR4(\U1/cnt [4]),
    .ADR5(N62_0),
    .O(\U1/CS2_rstpot_50 )
  );
  X_FF #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 1'b0 ))
  \U1/cnt_4_1  (
    .CE(\U1/_n0193_inv_629 ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/Mcount_cnt4 ),
    .O(\U1/cnt_4_1_647 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X18Y27" ),
    .INIT ( 64'h2888888888888888 ))
  \U1/Mcount_cnt_xor<4>11  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [4]),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [2]),
    .ADR5(\U1/cnt [3]),
    .O(\U1/Mcount_cnt4 )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 1'b0 ))
  \U1/Begin  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_GND_3_o_Mux_28_o ),
    .O(\U1/Begin_615 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y23" ),
    .INIT ( 64'h00000000FFFFFFFF ))
  \U1/CSelect[1]_GND_3_o_Mux_28_o1_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .ADR5(\U1/CSelect_FSM_FFd1_570 ),
    .O(\U1/CSelect[1]_GND_3_o_Mux_28_o )
  );
  X_BUF   \U1/cnt<4>/U1/cnt<4>_AMUX_Delay  (
    .I(N62),
    .O(N62_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 64'hFFFAFFFAFFFAFFF2 ))
  \U1/_n0212_inv1  (
    .ADR0(\U1/cnt_4_1_647 ),
    .ADR1(\U1/Begin_615 ),
    .ADR2(\U1/cnt [2]),
    .ADR3(\U1/cnt [3]),
    .ADR4(\U1/cnt [1]),
    .ADR5(\U1/cnt [0]),
    .O(\U1/_n0212_inv1_648 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 64'h3C0C3C3C30003030 ))
  \U1/_n0212_inv2  (
    .ADR0(1'b1),
    .ADR1(\U1/CSelect_FSM_FFd1_570 ),
    .ADR2(\U1/CSelect_FSM_FFd2_614 ),
    .ADR3(\U1/cnt [4]),
    .ADR4(\U1/Begin_615 ),
    .ADR5(\U1/_n0212_inv1_648 ),
    .O(\U1/_n0212_inv )
  );
  X_FF #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 1'b0 ))
  \U1/cnt_4  (
    .CE(\U1/_n0193_inv_629 ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/Mcount_cnt4 ),
    .O(\U1/cnt [4]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 1'b0 ))
  \U1/cnt_3  (
    .CE(\U1/_n0193_inv_629 ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/Mcount_cnt3 ),
    .O(\U1/cnt [3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 64'h2A80AA002A80AA00 ))
  \U1/Mcount_cnt_xor<3>11  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [0]),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/cnt [3]),
    .ADR4(\U1/cnt [2]),
    .ADR5(1'b1),
    .O(\U1/Mcount_cnt3 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X19Y27" ),
    .INIT ( 32'hFFFFFFFC ))
  \U1/CS2_rstpot_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/cnt [0]),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/cnt [3]),
    .ADR4(\U1/cnt [2]),
    .O(N62)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 64'h0000CCF000000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151  (
    .ADR0(1'b1),
    .ADR1(Data1_IBUF_0),
    .ADR2(Data2_IBUF_0),
    .ADR3(switch_IBUF_0),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/CSelect_FSM_FFd1_570 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_12  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> ),
    .O(\U1/temp [12]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 64'hBB33AA00A800AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT11  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/temp [12]),
    .ADR4(N01_0),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_11  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> ),
    .O(\U1/temp [11]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 64'hAB03AB03AA00A800 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT101  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [0]),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/temp [11]),
    .ADR4(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_10  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> ),
    .O(\U1/temp [10]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y24" ),
    .INIT ( 64'hBB33AA00A800AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT91  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [1]),
    .ADR2(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR3(\U1/temp [10]),
    .ADR4(\U1/cnt [0]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 1'b1 ))
  \U1/CSelect_FSM_FFd2  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect_FSM_FFd2-In_138 ),
    .O(\U1/CSelect_FSM_FFd2_614 ),
    .SET(reset_IBUF_0),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'hFF20FF00AFAAAFAA ))
  \U1/CSelect_FSM_FFd2-In  (
    .ADR0(\U1/cnt [4]),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/Begin_615 ),
    .ADR3(\U1/CSelect_FSM_FFd2_614 ),
    .ADR4(N4),
    .ADR5(\U1/CSelect_FSM_FFd1_570 ),
    .O(\U1/CSelect_FSM_FFd2-In_138 )
  );
  X_FF #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 1'b0 ))
  \U1/CSelect_FSM_FFd1  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect_FSM_FFd1-In ),
    .O(\U1/CSelect_FSM_FFd1_570 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y26" ),
    .INIT ( 64'hF000F0F0FFFFFFFF ))
  \U1/CSelect_FSM_FFd1-In1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/Begin_615 ),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/CSelect_FSM_FFd2_614 ),
    .O(\U1/CSelect_FSM_FFd1-In )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'h00000000000000FF ))
  \U1/_n0193_inv_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/cnt [2]),
    .ADR4(\U1/cnt [1]),
    .ADR5(\U1/cnt [0]),
    .O(N4)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X20Y27" ),
    .INIT ( 64'h6266426662666266 ))
  \U1/_n0193_inv  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/CSelect_FSM_FFd2_614 ),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/Begin_615 ),
    .ADR4(\U1/cnt [3]),
    .ADR5(N4),
    .O(\U1/_n0193_inv_629 )
  );
  X_BUF   \N38/N38_AMUX_Delay  (
    .I(N40),
    .O(N40_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 64'hFFF00F00FFF00F00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(switch_IBUF_0),
    .ADR3(Data2_IBUF_0),
    .ADR4(Data1_IBUF_0),
    .ADR5(1'b1),
    .O(N38)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y24" ),
    .INIT ( 32'h000FF0FF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151_SW1  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(switch_IBUF_0),
    .ADR3(Data2_IBUF_0),
    .ADR4(Data1_IBUF_0),
    .O(N40)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y25" ),
    .INIT ( 1'b1 ))
  \U1/done  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/done_rstpot_170 ),
    .O(\U1/done_622 ),
    .SET(reset_IBUF_0),
    .RST(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y25" ),
    .INIT ( 64'h2F0A2F026F0A2F02 ))
  \U1/done_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_614 ),
    .ADR1(\U1/Begin_615 ),
    .ADR2(\U1/CSelect_FSM_FFd1_570 ),
    .ADR3(\U1/done_622 ),
    .ADR4(\U1/cnt [4]),
    .ADR5(N62_0),
    .O(\U1/done_rstpot_170 )
  );
  X_BUF   \U1/cnt<1>/U1/cnt<1>_CMUX_Delay  (
    .I(N66_pack_15),
    .O(N66)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 1'b0 ))
  \U1/cnt_1  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/cnt_1_rstpot_186 ),
    .O(\U1/cnt [1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'h9D40BF409D409D40 ))
  \U1/cnt_1_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_614 ),
    .ADR1(\U1/CSelect_FSM_FFd1_570 ),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Begin_615 ),
    .O(\U1/cnt_1_rstpot_186 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/cnt_2_rstpot_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [0]),
    .ADR5(1'b1),
    .O(N58)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 32'hFFFCFFFC ))
  \U1/cnt_0_rstpot_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/cnt [2]),
    .ADR3(\U1/cnt [1]),
    .ADR4(1'b1),
    .O(N66_pack_15)
  );
  X_FF #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 1'b0 ))
  \U1/cnt_2  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/cnt_2_rstpot_195 ),
    .O(\U1/cnt [2]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'h9D40BF409D409D40 ))
  \U1/cnt_2_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_614 ),
    .ADR1(\U1/CSelect_FSM_FFd1_570 ),
    .ADR2(N58),
    .ADR3(\U1/cnt [2]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Begin_615 ),
    .O(\U1/cnt_2_rstpot_195 )
  );
  X_FF #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 1'b0 ))
  \U1/cnt_0  (
    .CE(VCC),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/cnt_0_rstpot_201 ),
    .O(\U1/cnt [0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X21Y27" ),
    .INIT ( 64'h99449904B944B944 ))
  \U1/cnt_0_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_614 ),
    .ADR1(\U1/CSelect_FSM_FFd1_570 ),
    .ADR2(\U1/Begin_615 ),
    .ADR3(\U1/cnt [0]),
    .ADR4(N66),
    .ADR5(\U1/cnt [4]),
    .O(\U1/cnt_0_rstpot_201 )
  );
  X_BUF   \U1/digital<8>/U1/digital<8>_DMUX_Delay  (
    .I(\U1/digital [9]),
    .O(\U1/digital<9>_0 )
  );
  X_BUF   \U1/digital<8>/U1/digital<8>_CMUX_Delay  (
    .I(\U1/digital [7]),
    .O(\U1/digital<7>_0 )
  );
  X_BUF   \U1/digital<8>/U1/digital<8>_BMUX_Delay  (
    .I(\U1/digital [5]),
    .O(\U1/digital<5>_0 )
  );
  X_BUF   \U1/digital<8>/U1/digital<8>_AMUX_Delay  (
    .I(\U1/digital [3]),
    .O(\U1/digital<3>_0 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_8  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> ),
    .O(\U1/digital [8]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(\U1/temp [12]),
    .ADR5(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 32'hF000F000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT121  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/temp [13]),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_9  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> ),
    .O(\U1/digital [9]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_6  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> ),
    .O(\U1/digital [6]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT91  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(\U1/temp [10]),
    .ADR5(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 32'hF000F000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT101  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/temp [11]),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_7  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> ),
    .O(\U1/digital [7]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_4  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> ),
    .O(\U1/digital [4]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT71  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(\U1/temp [8]),
    .ADR5(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 32'hF000F000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT81  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/temp [9]),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_5  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> ),
    .O(\U1/digital [5]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_2  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ),
    .O(\U1/digital [2]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT51  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/temp [6]),
    .ADR4(\U1/CSelect_FSM_FFd1_570 ),
    .ADR5(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 32'hF0F00000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT61  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/temp [7]),
    .ADR3(1'b1),
    .ADR4(\U1/CSelect_FSM_FFd1_570 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y23" ),
    .INIT ( 1'b0 ))
  \U1/digital_3  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> ),
    .O(\U1/digital [3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_BUF   \U1/temp<9>/U1/temp<9>_CMUX_Delay  (
    .I(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102_pack_12 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_9  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> ),
    .O(\U1/temp [9]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 64'hBB33AA00A800AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT81  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [0]),
    .ADR2(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR3(\U1/temp [9]),
    .ADR4(\U1/cnt [1]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 64'hFFFFF0FFFFFFF0FF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT8111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/cnt [2]),
    .ADR3(\U1/cnt [3]),
    .ADR4(\U1/cnt [4]),
    .ADR5(1'b1),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 32'h00000400 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT1021  (
    .ADR0(N40_0),
    .ADR1(\U1/CSelect_FSM_FFd1_570 ),
    .ADR2(\U1/cnt [2]),
    .ADR3(\U1/cnt [3]),
    .ADR4(\U1/cnt [4]),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102_pack_12 )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_8  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> ),
    .O(\U1/temp [8]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 64'hFAF0AA008A00AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT71  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/temp [8]),
    .ADR4(\U1/cnt [0]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> )
  );
  X_FF #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_7  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> ),
    .O(\U1/temp [7]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y24" ),
    .INIT ( 64'hBB33AA00A800AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT6  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(N8),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/temp [7]),
    .ADR4(\U1/cnt [3]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> )
  );
  X_BUF   \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211/U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211_AMUX_Delay  (
    .I(N01),
    .O(N01_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X22Y25" ),
    .INIT ( 64'hFFFF00FFFFFF00FF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT2111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/cnt [0]),
    .ADR4(\U1/cnt [1]),
    .ADR5(1'b1),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X22Y25" ),
    .INIT ( 32'hF0000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT11_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/cnt [2]),
    .ADR3(\U1/cnt [0]),
    .ADR4(\U1/cnt [1]),
    .O(N01)
  );
  X_BUF   \U0/div<3>/U0/div<3>_DMUX_Delay  (
    .I(\U0/div<2>_pack_7 ),
    .O(\U0/div [2])
  );
  X_BUF   \U0/div<3>/U0/div<3>_CMUX_Delay  (
    .I(N22_pack_5),
    .O(N22)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 1'b0 ))
  \U0/div_3  (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[3]),
    .O(\U0/div [3]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 64'h3FC0FF003FC0FF00 ))
  \U0/Mcount_div_xor<3>11  (
    .ADR0(1'b1),
    .ADR1(\U0/div [0]),
    .ADR2(\U0/div [1]),
    .ADR3(\U0/div [3]),
    .ADR4(\U0/div [2]),
    .ADR5(1'b1),
    .O(Result[3])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 32'h3F3FC0C0 ))
  \U0/Mcount_div_xor<2>11  (
    .ADR0(1'b1),
    .ADR1(\U0/div [0]),
    .ADR2(\U0/div [1]),
    .ADR3(1'b1),
    .ADR4(\U0/div [2]),
    .O(Result[2])
  );
  X_FF #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 1'b0 ))
  \U0/div_2  (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[2]),
    .O(\U0/div<2>_pack_7 ),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 1'b0 ))
  \U0/div_1  (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[1]),
    .O(\U0/div [1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 64'h00FFFF0000FFFF00 ))
  \U0/Mcount_div_xor<1>11  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U0/div [1]),
    .ADR4(\U0/div [0]),
    .ADR5(1'b1),
    .O(Result[1])
  );
  X_LUT5 #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 32'hFCFCFCFC ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT3_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/digital [11]),
    .ADR2(\U1/digital [10]),
    .ADR3(1'b1),
    .ADR4(1'b1),
    .O(N22_pack_5)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 64'hFFFFFFFF80808000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT3  (
    .ADR0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .ADR1(\U1/digital<5>_0 ),
    .ADR2(\U1/digital [6]),
    .ADR3(\U1/digital [4]),
    .ADR4(\U1/digital<3>_0 ),
    .ADR5(N22),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<3> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 1'b0 ))
  \U0/div_0  (
    .CE(VCC),
    .CLK(clk_BUFGP),
    .I(Result[0]),
    .O(\U0/div [0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y20" ),
    .INIT ( 64'h00FF00FF00FF00FF ))
  \U0/Mcount_div_xor<0>11_INV_0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U0/div [0]),
    .ADR4(1'b1),
    .ADR5(1'b1),
    .O(Result[0])
  );
  X_BUF   \N8/N8_AMUX_Delay  (
    .I(N10),
    .O(N10_0)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y23" ),
    .INIT ( 64'hFFFFF0FFFFFFF0FF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT6_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/cnt [2]),
    .ADR4(\U1/cnt [0]),
    .ADR5(1'b1),
    .O(N8)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X23Y23" ),
    .INIT ( 32'hFFFF0FFF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT4_SW0  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/cnt [2]),
    .ADR4(\U1/cnt [0]),
    .O(N10)
  );
  X_FF #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_15  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> ),
    .O(\U1/temp [15]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 64'hAB03AB03AA00A800 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT3  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [3]),
    .ADR2(N8),
    .ADR3(\U1/temp [15]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_14  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> ),
    .O(\U1/temp [14]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 64'hFFFF3333FFFD0000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT2  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ),
    .ADR4(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 1'b0 ))
  \U1/temp_13  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> ),
    .O(\U1/temp [13]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y24" ),
    .INIT ( 64'hAB03AB03AA00A800 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT12  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [3]),
    .ADR2(N10_0),
    .ADR3(\U1/temp [13]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 1'b0 ))
  \U1/temp_6  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> ),
    .O(\U1/temp [6]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 64'hFFFFCCCCFFF70000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT5  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ),
    .ADR4(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 64'h0000008000000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT221  (
    .ADR0(N38),
    .ADR1(\U1/cnt [2]),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/CSelect_FSM_FFd1_570 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 1'b0 ))
  \U1/temp_5  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> ),
    .O(\U1/temp [5]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 64'hBB33AA00A800AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT4  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(N10_0),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/temp [5]),
    .ADR4(\U1/cnt [3]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 1'b0 ))
  \U1/temp_4  (
    .CE(\U1/_n0212_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> ),
    .O(\U1/temp [4]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X23Y25" ),
    .INIT ( 64'hFAF0AA008A00AA00 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT1  (
    .ADR0(\U1/CSelect_FSM_FFd1_570 ),
    .ADR1(\U1/cnt [4]),
    .ADR2(N01_0),
    .ADR3(\U1/temp [4]),
    .ADR4(\U1/cnt [3]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y19" ),
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \U2/led[7]_GND_5_o_mux_35_OUT<1>_inv1  (
    .ADR0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .ADR1(\U2/_n004511 ),
    .ADR2(\U1/digital<5>_0 ),
    .ADR3(\U1/digital [6]),
    .ADR4(\U1/digital [10]),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<1> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y19" ),
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U2/digital[11]_GND_5_o_LessThan_20_o1_SW0  (
    .ADR0(\U1/digital [4]),
    .ADR1(\U1/digital<3>_0 ),
    .ADR2(\U1/digital [2]),
    .ADR3(\U1/digital<1>_0 ),
    .ADR4(\U1/digital [11]),
    .ADR5(\U1/digital [10]),
    .O(N36)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y19" ),
    .INIT ( 64'h0000000000000001 ))
  \U2/digital[11]_GND_5_o_LessThan_20_o1  (
    .ADR0(\U1/digital<9>_0 ),
    .ADR1(\U1/digital [8]),
    .ADR2(\U1/digital<7>_0 ),
    .ADR3(\U1/digital [6]),
    .ADR4(\U1/digital<5>_0 ),
    .ADR5(N36),
    .O(\U2/digital[11]_GND_5_o_LessThan_20_o )
  );
  X_BUF   \N24/N24_DMUX_Delay  (
    .I(N30_pack_7),
    .O(N30)
  );
  X_BUF   \N24/N24_BMUX_Delay  (
    .I(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611_pack_5 ),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y20" ),
    .INIT ( 64'hCCCCC000CCCCC000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT2_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/digital [4]),
    .ADR2(\U1/digital [2]),
    .ADR3(\U1/digital<1>_0 ),
    .ADR4(\U1/digital<3>_0 ),
    .ADR5(1'b1),
    .O(N24)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y20" ),
    .INIT ( 32'hFCFCCCCC ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT5_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/digital [4]),
    .ADR2(\U1/digital [2]),
    .ADR3(1'b1),
    .ADR4(\U1/digital<3>_0 ),
    .O(N30_pack_7)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y20" ),
    .INIT ( 64'hFFFFFFFFFFFFA888 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT2  (
    .ADR0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital<5>_0 ),
    .ADR3(N24),
    .ADR4(\U1/digital [10]),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<2> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y20" ),
    .INIT ( 64'hF0000000F0000000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT321  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/digital<9>_0 ),
    .ADR3(\U1/digital [8]),
    .ADR4(\U1/digital<7>_0 ),
    .ADR5(1'b1),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y20" ),
    .INIT ( 32'hFFFFFFF0 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/digital<9>_0 ),
    .ADR3(\U1/digital [8]),
    .ADR4(\U1/digital<7>_0 ),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611_pack_5 )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y20" ),
    .INIT ( 64'hFFFFFFFFAAAA8880 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT5  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital<5>_0 ),
    .ADR3(N30),
    .ADR4(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<5> )
  );
  X_BUF   \U1/digital<11>/U1/digital<11>_DMUX_Delay  (
    .I(\U1/digital [1]),
    .O(\U1/digital<1>_0 )
  );
  X_BUF   \U1/digital<11>/U1/digital<11>_CMUX_Delay  (
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10>_pack_2 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 1'b0 ))
  \U1/digital_11  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> ),
    .O(\U1/digital [11]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT31  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(\U1/temp [15]),
    .ADR5(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 32'hF000F000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT41  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/temp [5]),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 1'b0 ))
  \U1/digital_1  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> ),
    .O(\U1/digital [1]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_FF #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 1'b0 ))
  \U1/digital_0  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> ),
    .O(\U1/digital [0]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 64'hFF000000FF000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT13  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(1'b1),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(\U1/temp [4]),
    .ADR5(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 32'hF000F000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT21  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/temp [14]),
    .ADR3(\U1/CSelect_FSM_FFd1_570 ),
    .ADR4(1'b1),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10>_pack_2 )
  );
  X_FF #(
    .LOC ( "SLICE_X24Y24" ),
    .INIT ( 1'b0 ))
  \U1/digital_10  (
    .CE(\U1/_n0226_inv ),
    .CLK(\U0/div_3_BUFG_566 ),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ),
    .O(\U1/digital [10]),
    .RST(reset_IBUF_0),
    .SET(GND)
  );
  X_BUF   \U2/_n004511/U2/_n004511_CMUX_Delay  (
    .I(N34_pack_3),
    .O(N34)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y19" ),
    .INIT ( 64'hFFFFFFF0FFFFFFF0 ))
  \U2/_n0045111  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U1/digital [2]),
    .ADR3(\U1/digital<3>_0 ),
    .ADR4(\U1/digital [4]),
    .ADR5(1'b1),
    .O(\U2/_n004511 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X25Y19" ),
    .INIT ( 32'hEEEECCCC ))
  \U2/_n0058_inv_SW0  (
    .ADR0(\U1/digital<5>_0 ),
    .ADR1(\U1/digital [6]),
    .ADR2(1'b1),
    .ADR3(1'b1),
    .ADR4(\U1/digital [4]),
    .O(N34_pack_3)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y19" ),
    .INIT ( 64'hC0C0C000C000C000 ))
  \U2/_n0045_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital<5>_0 ),
    .ADR3(\U2/_n004511 ),
    .ADR4(\U1/digital<1>_0 ),
    .ADR5(\U1/digital [0]),
    .O(N26)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y19" ),
    .INIT ( 64'h0001010155555555 ))
  \U2/_n0058_inv  (
    .ADR0(\U1/digital [11]),
    .ADR1(\U1/digital [8]),
    .ADR2(\U1/digital<9>_0 ),
    .ADR3(N34),
    .ADR4(\U1/digital<7>_0 ),
    .ADR5(\U1/digital [10]),
    .O(\U2/_n0058_inv_597 )
  );
  X_BUF   \N28/N28_CMUX_Delay  (
    .I(N32_pack_6),
    .O(N32)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y20" ),
    .INIT ( 64'hC0000000C0000000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/digital [4]),
    .ADR2(\U1/digital<3>_0 ),
    .ADR3(\U1/digital [2]),
    .ADR4(\U1/digital<1>_0 ),
    .ADR5(1'b1),
    .O(N28)
  );
  X_LUT5 #(
    .LOC ( "SLICE_X25Y20" ),
    .INIT ( 32'hC0C0C000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT4_SW0  (
    .ADR0(1'b1),
    .ADR1(\U1/digital [4]),
    .ADR2(\U1/digital<3>_0 ),
    .ADR3(\U1/digital [2]),
    .ADR4(\U1/digital<1>_0 ),
    .O(N32_pack_6)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y20" ),
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .ADR2(\U1/digital [6]),
    .ADR3(\U1/digital<5>_0 ),
    .ADR4(N28),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<6> )
  );
  X_LUT6 #(
    .LOC ( "SLICE_X25Y20" ),
    .INIT ( 64'hFFFFFFFFAAAAAAA8 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT4  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital<5>_0 ),
    .ADR3(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .ADR4(N32),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<4> )
  );
  X_BUF   \U2/led<5>/U2/led<5>_AMUX_Delay  (
    .I(\U2/led<1>_pack_7 ),
    .O(\U2/led [1])
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 1'b0 ))
  \U2/led_5  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_5_glue_set_495 ),
    .O(\U2/led [5]),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 64'hFFFFFFFFFFF00F00 ))
  \U2/led_5_glue_set  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(\U2/led [5]),
    .ADR4(\U2/led[7]_GND_5_o_mux_35_OUT<5> ),
    .ADR5(\U2/_n0045_626 ),
    .O(\U2/led_5_glue_set_495 )
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 1'b0 ))
  \U2/led_4  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_4_glue_set_502 ),
    .O(\U2/led [4]),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 64'hFFFFFFFFFFF00F00 ))
  \U2/led_4_glue_set  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(\U2/led [4]),
    .ADR4(\U2/led[7]_GND_5_o_mux_35_OUT<4> ),
    .ADR5(\U2/_n0045_626 ),
    .O(\U2/led_4_glue_set_502 )
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 1'b0 ))
  \U2/led_3  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_3_glue_set_508 ),
    .O(\U2/led [3]),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 64'hFFFFFFFFFFF00F00 ))
  \U2/led_3_glue_set  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(\U2/led [3]),
    .ADR4(\U2/led[7]_GND_5_o_mux_35_OUT<3> ),
    .ADR5(\U2/_n0045_626 ),
    .O(\U2/led_3_glue_set_508 )
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 1'b0 ))
  \U2/led_0  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_0_glue_set_514 ),
    .O(\U2/led [0]),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 64'hFFFFFFF0FFFFFFF0 ))
  \U2/led_0_glue_set  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(\U2/led [0]),
    .ADR4(\U2/_n0045_626 ),
    .ADR5(1'b1),
    .O(\U2/led_0_glue_set_514 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 32'hFFFFCACA ))
  \U2/led_1_glue_set  (
    .ADR0(\U2/led [1]),
    .ADR1(\U2/led[7]_GND_5_o_mux_35_OUT<1> ),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(1'b1),
    .ADR4(\U2/_n0045_626 ),
    .O(\U2/led_1_glue_set_515 )
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y18" ),
    .INIT ( 1'b0 ))
  \U2/led_1  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_1_glue_set_515 ),
    .O(\U2/led<1>_pack_7 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_BUF   \U2/led<7>/U2/led<7>_CMUX_Delay  (
    .I(\U2/led<2>_pack_5 ),
    .O(\U2/led [2])
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 1'b0 ))
  \U2/led_7  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_7_glue_set_526 ),
    .O(\U2/led [7]),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 64'hFFFF0F00FFFF0F00 ))
  \U2/led_7_glue_set  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(\U2/led [7]),
    .ADR4(\U2/_n0045_626 ),
    .ADR5(1'b1),
    .O(\U2/led_7_glue_set_526 )
  );
  X_LUT5 #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 32'hFFFFCACA ))
  \U2/led_2_glue_set  (
    .ADR0(\U2/led [2]),
    .ADR1(\U2/led[7]_GND_5_o_mux_35_OUT<2> ),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(1'b1),
    .ADR4(\U2/_n0045_626 ),
    .O(\U2/led_2_glue_set_527 )
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 1'b0 ))
  \U2/led_2  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_2_glue_set_527 ),
    .O(\U2/led<2>_pack_5 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 64'hFFFFFFFFAAA8A8A8 ))
  \U2/_n0045  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U1/digital<9>_0 ),
    .ADR2(\U1/digital [8]),
    .ADR3(\U1/digital<7>_0 ),
    .ADR4(N26),
    .ADR5(\U1/digital [11]),
    .O(\U2/_n0045_626 )
  );
  X_SFF #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 1'b0 ))
  \U2/led_6  (
    .CE(VCC),
    .CLK(\U1/done_622 ),
    .I(\U2/led_6_glue_set_542 ),
    .O(\U2/led [6]),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT6 #(
    .LOC ( "SLICE_X26Y19" ),
    .INIT ( 64'hFFFFFFFFFFF00F00 ))
  \U2/led_6_glue_set  (
    .ADR0(1'b1),
    .ADR1(1'b1),
    .ADR2(\U2/_n0058_inv_597 ),
    .ADR3(\U2/led [6]),
    .ADR4(\U2/led[7]_GND_5_o_mux_35_OUT<6> ),
    .ADR5(\U2/_n0045_626 ),
    .O(\U2/led_6_glue_set_542 )
  );
  X_ONE   NlwBlock_VUMeter_VCC (
    .O(VCC)
  );
  X_ZERO   NlwBlock_VUMeter_GND (
    .O(GND)
  );
endmodule


`ifndef GLBL
`define GLBL

`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;

    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (weak1, weak0) GSR = GSR_int;
    assign (weak1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule

`endif

