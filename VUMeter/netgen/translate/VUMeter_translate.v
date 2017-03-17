////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: VUMeter_translate.v
// /___/   /\     Timestamp: Fri Dec 13 15:42:02 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/translate -ofmt verilog -sim VUMeter.ngd VUMeter_translate.v 
// Device	: 6slx16csg324-3
// Input file	: VUMeter.ngd
// Output file	: D:\Student Data\XiLinx ISE Design Suite\VUMeter\netgen\translate\VUMeter_translate.v
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
  wire clk_BUFGP;
  wire reset_IBUF_4;
  wire switch_IBUF_5;
  wire Data1_IBUF_6;
  wire Data2_IBUF_7;
  wire \U1/CS2_20 ;
  wire \U1/done_21 ;
  wire \U0/div_3_BUFG_37 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ;
  wire \U1/CSelect_FSM_FFd1-In ;
  wire \U1/CSelect_FSM_FFd2-In_45 ;
  wire \U1/Mcount_cnt4 ;
  wire \U1/Mcount_cnt3 ;
  wire \U1/CSelect_FSM_FFd1_48 ;
  wire \U1/_n0193_inv_49 ;
  wire \U1/_n0226_inv ;
  wire \U1/_n0212_inv ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> ;
  wire \U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> ;
  wire \U1/Begin_76 ;
  wire \U1/CSelect[1]_GND_3_o_Mux_28_o ;
  wire \U1/CSelect_FSM_FFd2_94 ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ;
  wire \U2/_n004511 ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ;
  wire \U2/_n0058_inv_98 ;
  wire \U2/_n0045_99 ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<1> ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<2> ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<3> ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<4> ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<5> ;
  wire \U2/led[7]_GND_5_o_mux_35_OUT<6> ;
  wire \U2/digital[11]_GND_5_o_LessThan_20_o ;
  wire N01;
  wire N4;
  wire N8;
  wire N10;
  wire \U1/_n0212_inv1_111 ;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire \U2/led_7_glue_set_137 ;
  wire \U2/led_6_glue_set_138 ;
  wire \U2/led_5_glue_set_139 ;
  wire \U2/led_4_glue_set_140 ;
  wire \U2/led_3_glue_set_141 ;
  wire \U2/led_2_glue_set_142 ;
  wire \U2/led_1_glue_set_143 ;
  wire \U2/led_0_glue_set_144 ;
  wire N38;
  wire N40;
  wire \U1/cnt_2_rstpot_147 ;
  wire \U1/cnt_1_rstpot_148 ;
  wire \U1/cnt_0_rstpot_149 ;
  wire \U1/CS2_rstpot_150 ;
  wire \U1/done_rstpot_151 ;
  wire N58;
  wire N62;
  wire N66;
  wire \U1/cnt_4_1_155 ;
  wire \clk_BUFGP/IBUFG_2 ;
  wire VCC;
  wire GND;
  wire [11 : 0] \U1/digital ;
  wire [7 : 0] \U2/led ;
  wire [3 : 0] Result;
  wire [3 : 0] \U0/div ;
  wire [4 : 0] \U1/cnt ;
  wire [15 : 4] \U1/temp ;
  X_FF #(
    .INIT ( 1'b0 ))
  \U0/div_0  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_4),
    .I(Result[0]),
    .O(\U0/div [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U0/div_1  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_4),
    .I(Result[1]),
    .O(\U0/div [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U0/div_2  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_4),
    .I(Result[2]),
    .O(\U0/div [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U0/div_3  (
    .CLK(clk_BUFGP),
    .RST(reset_IBUF_4),
    .I(Result[3]),
    .O(\U0/div [3]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/CSelect_FSM_FFd1  (
    .CLK(\U0/div_3_BUFG_37 ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect_FSM_FFd1-In ),
    .O(\U1/CSelect_FSM_FFd1_48 ),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \U1/CSelect_FSM_FFd2  (
    .CLK(\U0/div_3_BUFG_37 ),
    .I(\U1/CSelect_FSM_FFd2-In_45 ),
    .SET(reset_IBUF_4),
    .O(\U1/CSelect_FSM_FFd2_94 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/cnt_4  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0193_inv_49 ),
    .RST(reset_IBUF_4),
    .I(\U1/Mcount_cnt4 ),
    .O(\U1/cnt [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/cnt_3  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0193_inv_49 ),
    .RST(reset_IBUF_4),
    .I(\U1/Mcount_cnt3 ),
    .O(\U1/cnt [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_11  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> ),
    .O(\U1/digital [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_10  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ),
    .O(\U1/digital [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_9  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> ),
    .O(\U1/digital [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_8  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> ),
    .O(\U1/digital [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_7  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> ),
    .O(\U1/digital [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_6  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> ),
    .O(\U1/digital [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_5  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> ),
    .O(\U1/digital [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_4  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> ),
    .O(\U1/digital [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_3  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> ),
    .O(\U1/digital [3]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_2  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ),
    .O(\U1/digital [2]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_1  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> ),
    .O(\U1/digital [1]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/digital_0  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> ),
    .O(\U1/digital [0]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_15  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> ),
    .O(\U1/temp [15]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_14  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> ),
    .O(\U1/temp [14]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_13  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> ),
    .O(\U1/temp [13]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_12  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> ),
    .O(\U1/temp [12]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_11  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> ),
    .O(\U1/temp [11]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_10  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> ),
    .O(\U1/temp [10]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_9  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> ),
    .O(\U1/temp [9]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_8  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> ),
    .O(\U1/temp [8]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_7  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> ),
    .O(\U1/temp [7]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_6  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> ),
    .O(\U1/temp [6]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_5  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> ),
    .O(\U1/temp [5]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/temp_4  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0212_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> ),
    .O(\U1/temp [4]),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/Begin  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0226_inv ),
    .RST(reset_IBUF_4),
    .I(\U1/CSelect[1]_GND_3_o_Mux_28_o ),
    .O(\U1/Begin_76 ),
    .SET(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h6 ))
  \U0/Mcount_div_xor<1>11  (
    .ADR0(\U0/div [1]),
    .ADR1(\U0/div [0]),
    .O(Result[1])
  );
  X_LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/Mcount_div_xor<3>11  (
    .ADR0(\U0/div [3]),
    .ADR1(\U0/div [0]),
    .ADR2(\U0/div [1]),
    .ADR3(\U0/div [2]),
    .O(Result[3])
  );
  X_LUT3 #(
    .INIT ( 8'h6A ))
  \U0/Mcount_div_xor<2>11  (
    .ADR0(\U0/div [2]),
    .ADR1(\U0/div [0]),
    .ADR2(\U0/div [1]),
    .O(Result[2])
  );
  X_LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \U1/Mcount_cnt_xor<4>11  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/cnt [4]),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [2]),
    .ADR5(\U1/cnt [3]),
    .O(\U1/Mcount_cnt4 )
  );
  X_LUT5 #(
    .INIT ( 32'h28888888 ))
  \U1/Mcount_cnt_xor<3>11  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [2]),
    .O(\U1/Mcount_cnt3 )
  );
  X_LUT6 #(
    .INIT ( 64'hFF88888880888888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT71  (
    .ADR0(\U1/temp [8]),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .ADR2(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [0]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> )
  );
  X_LUT6 #(
    .INIT ( 64'h888F888F88888880 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT101  (
    .ADR0(\U1/temp [11]),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> )
  );
  X_LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT91  (
    .ADR0(\U1/temp [10]),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR4(\U1/cnt [0]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> )
  );
  X_LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT81  (
    .ADR0(\U1/temp [9]),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .ADR4(\U1/cnt [1]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> )
  );
  X_LUT2 #(
    .INIT ( 4'hD ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT2111  (
    .ADR0(\U1/cnt [0]),
    .ADR1(\U1/cnt [1]),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 )
  );
  X_LUT4 #(
    .INIT ( 16'h88A2 ))
  \U1/_n0226_inv1  (
    .ADR0(\U1/CSelect_FSM_FFd2_94 ),
    .ADR1(\U1/Begin_76 ),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/_n0226_inv )
  );
  X_LUT4 #(
    .INIT ( 16'h8AFF ))
  \U1/CSelect_FSM_FFd1-In1  (
    .ADR0(\U1/Begin_76 ),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/CSelect_FSM_FFd2_94 ),
    .O(\U1/CSelect_FSM_FFd1-In )
  );
  X_LUT5 #(
    .INIT ( 32'h00AC0000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151  (
    .ADR0(Data1_IBUF_6),
    .ADR1(Data2_IBUF_7),
    .ADR2(switch_IBUF_5),
    .ADR3(\U1/cnt [4]),
    .ADR4(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT8111  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/cnt [4]),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT13  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [4]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT21  (
    .ADR0(\U1/temp [14]),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT31  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [15]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT41  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [5]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT51  (
    .ADR0(\U1/temp [6]),
    .ADR1(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT61  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [7]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT71  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [8]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT81  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [9]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT91  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [10]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT101  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [11]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT111  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [12]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> )
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT121  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [13]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \U2/led[7]_GND_5_o_mux_35_OUT<1>_inv1  (
    .ADR0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .ADR1(\U2/_n004511 ),
    .ADR2(\U1/digital [5]),
    .ADR3(\U1/digital [6]),
    .ADR4(\U1/digital [10]),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<1> )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT321  (
    .ADR0(\U1/digital [9]),
    .ADR1(\U1/digital [8]),
    .ADR2(\U1/digital [7]),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \U2/_n0045111  (
    .ADR0(\U1/digital [2]),
    .ADR1(\U1/digital [3]),
    .ADR2(\U1/digital [4]),
    .O(\U2/_n004511 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6111  (
    .ADR0(\U1/digital [9]),
    .ADR1(\U1/digital [7]),
    .ADR2(\U1/digital [8]),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 )
  );
  X_LUT3 #(
    .INIT ( 8'h80 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT11_SW0  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/cnt [1]),
    .ADR2(\U1/cnt [0]),
    .O(N01)
  );
  X_LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT11  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [12]),
    .ADR2(\U1/cnt [3]),
    .ADR3(\U1/cnt [4]),
    .ADR4(N01),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> )
  );
  X_LUT6 #(
    .INIT ( 64'hFF88888880888888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT1  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [4]),
    .ADR2(\U1/cnt [4]),
    .ADR3(N01),
    .ADR4(\U1/cnt [3]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> )
  );
  X_LUT3 #(
    .INIT ( 8'h01 ))
  \U1/_n0193_inv_SW0  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/cnt [1]),
    .ADR2(\U1/cnt [0]),
    .O(N4)
  );
  X_LUT6 #(
    .INIT ( 64'h6266426662666266 ))
  \U1/_n0193_inv  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/CSelect_FSM_FFd2_94 ),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/Begin_76 ),
    .ADR4(\U1/cnt [3]),
    .ADR5(N4),
    .O(\U1/_n0193_inv_49 )
  );
  X_LUT3 #(
    .INIT ( 8'hFB ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT6_SW0  (
    .ADR0(\U1/cnt [1]),
    .ADR1(\U1/cnt [2]),
    .ADR2(\U1/cnt [0]),
    .O(N8)
  );
  X_LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT6  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [7]),
    .ADR2(N8),
    .ADR3(\U1/cnt [4]),
    .ADR4(\U1/cnt [3]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> )
  );
  X_LUT3 #(
    .INIT ( 8'hDF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT4_SW0  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/cnt [0]),
    .ADR2(\U1/cnt [1]),
    .O(N10)
  );
  X_LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT4  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [5]),
    .ADR2(N10),
    .ADR3(\U1/cnt [4]),
    .ADR4(\U1/cnt [3]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> )
  );
  X_LUT6 #(
    .INIT ( 64'h888F888F88888880 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT3  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [15]),
    .ADR2(\U1/cnt [3]),
    .ADR3(N8),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> )
  );
  X_LUT6 #(
    .INIT ( 64'h888F888F88888880 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT12  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/temp [13]),
    .ADR2(\U1/cnt [3]),
    .ADR3(N10),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> )
  );
  X_LUT6 #(
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
  X_LUT6 #(
    .INIT ( 64'hFFFAFFFAFFFAFFF2 ))
  \U1/_n0212_inv1  (
    .ADR0(\U1/cnt_4_1_155 ),
    .ADR1(\U1/Begin_76 ),
    .ADR2(\U1/cnt [2]),
    .ADR3(\U1/cnt [3]),
    .ADR4(\U1/cnt [1]),
    .ADR5(\U1/cnt [0]),
    .O(\U1/_n0212_inv1_111 )
  );
  X_LUT5 #(
    .INIT ( 32'h62664044 ))
  \U1/_n0212_inv2  (
    .ADR0(\U1/CSelect_FSM_FFd1_48 ),
    .ADR1(\U1/CSelect_FSM_FFd2_94 ),
    .ADR2(\U1/cnt [4]),
    .ADR3(\U1/Begin_76 ),
    .ADR4(\U1/_n0212_inv1_111 ),
    .O(\U1/_n0212_inv )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFAFAF2000AAAA ))
  \U1/CSelect_FSM_FFd2-In  (
    .ADR0(\U1/cnt [4]),
    .ADR1(\U1/cnt [3]),
    .ADR2(\U1/Begin_76 ),
    .ADR3(N4),
    .ADR4(\U1/CSelect_FSM_FFd1_48 ),
    .ADR5(\U1/CSelect_FSM_FFd2_94 ),
    .O(\U1/CSelect_FSM_FFd2-In_45 )
  );
  X_LUT2 #(
    .INIT ( 4'hE ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT3_SW0  (
    .ADR0(\U1/digital [11]),
    .ADR1(\U1/digital [10]),
    .O(N22)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFF80808000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT3  (
    .ADR0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .ADR1(\U1/digital [5]),
    .ADR2(\U1/digital [6]),
    .ADR3(\U1/digital [4]),
    .ADR4(\U1/digital [3]),
    .ADR5(N22),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<3> )
  );
  X_LUT4 #(
    .INIT ( 16'hAA80 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT2_SW0  (
    .ADR0(\U1/digital [4]),
    .ADR1(\U1/digital [2]),
    .ADR2(\U1/digital [1]),
    .ADR3(\U1/digital [3]),
    .O(N24)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA888 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT2  (
    .ADR0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital [5]),
    .ADR3(N24),
    .ADR4(\U1/digital [10]),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<2> )
  );
  X_LUT5 #(
    .INIT ( 32'h88808080 ))
  \U2/_n0045_SW0  (
    .ADR0(\U1/digital [6]),
    .ADR1(\U1/digital [5]),
    .ADR2(\U2/_n004511 ),
    .ADR3(\U1/digital [1]),
    .ADR4(\U1/digital [0]),
    .O(N26)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA8A8A8 ))
  \U2/_n0045  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U1/digital [9]),
    .ADR2(\U1/digital [8]),
    .ADR3(\U1/digital [7]),
    .ADR4(N26),
    .ADR5(\U1/digital [11]),
    .O(\U2/_n0045_99 )
  );
  X_LUT4 #(
    .INIT ( 16'h8000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6_SW0  (
    .ADR0(\U1/digital [4]),
    .ADR1(\U1/digital [3]),
    .ADR2(\U1/digital [2]),
    .ADR3(\U1/digital [1]),
    .O(N28)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .ADR2(\U1/digital [6]),
    .ADR3(\U1/digital [5]),
    .ADR4(N28),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<6> )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT5_SW0  (
    .ADR0(\U1/digital [3]),
    .ADR1(\U1/digital [2]),
    .ADR2(\U1/digital [4]),
    .O(N30)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAA8880 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT5  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital [5]),
    .ADR3(N30),
    .ADR4(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<5> )
  );
  X_LUT4 #(
    .INIT ( 16'h8880 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT4_SW0  (
    .ADR0(\U1/digital [4]),
    .ADR1(\U1/digital [3]),
    .ADR2(\U1/digital [2]),
    .ADR3(\U1/digital [1]),
    .O(N32)
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAAA8 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT4  (
    .ADR0(\U1/digital [10]),
    .ADR1(\U1/digital [6]),
    .ADR2(\U1/digital [5]),
    .ADR3(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .ADR4(N32),
    .ADR5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<4> )
  );
  X_LUT3 #(
    .INIT ( 8'hF8 ))
  \U2/_n0058_inv_SW0  (
    .ADR0(\U1/digital [5]),
    .ADR1(\U1/digital [4]),
    .ADR2(\U1/digital [6]),
    .O(N34)
  );
  X_LUT6 #(
    .INIT ( 64'h0001010155555555 ))
  \U2/_n0058_inv  (
    .ADR0(\U1/digital [11]),
    .ADR1(\U1/digital [8]),
    .ADR2(\U1/digital [9]),
    .ADR3(N34),
    .ADR4(\U1/digital [7]),
    .ADR5(\U1/digital [10]),
    .O(\U2/_n0058_inv_98 )
  );
  X_LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U2/digital[11]_GND_5_o_LessThan_20_o1_SW0  (
    .ADR0(\U1/digital [4]),
    .ADR1(\U1/digital [3]),
    .ADR2(\U1/digital [2]),
    .ADR3(\U1/digital [1]),
    .ADR4(\U1/digital [11]),
    .ADR5(\U1/digital [10]),
    .O(N36)
  );
  X_LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U2/digital[11]_GND_5_o_LessThan_20_o1  (
    .ADR0(\U1/digital [9]),
    .ADR1(\U1/digital [8]),
    .ADR2(\U1/digital [7]),
    .ADR3(\U1/digital [6]),
    .ADR4(\U1/digital [5]),
    .ADR5(N36),
    .O(\U2/digital[11]_GND_5_o_LessThan_20_o )
  );
  X_BUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_4)
  );
  X_BUF   switch_IBUF (
    .I(switch),
    .O(switch_IBUF_5)
  );
  X_BUF   Data1_IBUF (
    .I(Data1),
    .O(Data1_IBUF_6)
  );
  X_BUF   Data2_IBUF (
    .I(Data2),
    .O(Data2_IBUF_7)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_7  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_7_glue_set_137 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [7]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_6  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_6_glue_set_138 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [6]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_5  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_5_glue_set_139 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [5]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_4  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_4_glue_set_140 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [4]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_3  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_3_glue_set_141 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [3]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_2  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_2_glue_set_142 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [2]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_1  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_1_glue_set_143 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [1]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_SFF #(
    .INIT ( 1'b0 ))
  \U2/led_0  (
    .CLK(\U1/done_21 ),
    .I(\U2/led_0_glue_set_144 ),
    .SRST(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .O(\U2/led [0]),
    .CE(VCC),
    .SET(GND),
    .RST(GND),
    .SSET(GND)
  );
  X_LUT3 #(
    .INIT ( 8'hE4 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151_SW0  (
    .ADR0(switch_IBUF_5),
    .ADR1(Data2_IBUF_7),
    .ADR2(Data1_IBUF_6),
    .O(N38)
  );
  X_LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT221  (
    .ADR0(N38),
    .ADR1(\U1/cnt [2]),
    .ADR2(\U1/cnt [0]),
    .ADR3(\U1/cnt [1]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 )
  );
  X_LUT3 #(
    .INIT ( 8'h27 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151_SW1  (
    .ADR0(switch_IBUF_5),
    .ADR1(Data1_IBUF_6),
    .ADR2(Data2_IBUF_7),
    .O(N40)
  );
  X_LUT5 #(
    .INIT ( 32'h00100000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT1021  (
    .ADR0(N40),
    .ADR1(\U1/cnt [2]),
    .ADR2(\U1/cnt [3]),
    .ADR3(\U1/cnt [4]),
    .ADR4(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/cnt_2  (
    .CLK(\U0/div_3_BUFG_37 ),
    .RST(reset_IBUF_4),
    .I(\U1/cnt_2_rstpot_147 ),
    .O(\U1/cnt [2]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/cnt_1  (
    .CLK(\U0/div_3_BUFG_37 ),
    .RST(reset_IBUF_4),
    .I(\U1/cnt_1_rstpot_148 ),
    .O(\U1/cnt [1]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/cnt_0  (
    .CLK(\U0/div_3_BUFG_37 ),
    .RST(reset_IBUF_4),
    .I(\U1/cnt_0_rstpot_149 ),
    .O(\U1/cnt [0]),
    .CE(VCC),
    .SET(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \U1/CS2  (
    .CLK(\U0/div_3_BUFG_37 ),
    .I(\U1/CS2_rstpot_150 ),
    .SET(reset_IBUF_4),
    .O(\U1/CS2_20 ),
    .CE(VCC),
    .RST(GND)
  );
  X_FF #(
    .INIT ( 1'b1 ))
  \U1/done  (
    .CLK(\U0/div_3_BUFG_37 ),
    .I(\U1/done_rstpot_151 ),
    .SET(reset_IBUF_4),
    .O(\U1/done_21 ),
    .CE(VCC),
    .RST(GND)
  );
  X_LUT2 #(
    .INIT ( 4'h8 ))
  \U1/cnt_2_rstpot_SW0  (
    .ADR0(\U1/cnt [1]),
    .ADR1(\U1/cnt [0]),
    .O(N58)
  );
  X_LUT6 #(
    .INIT ( 64'h92A29AAA92A292A2 ))
  \U1/cnt_2_rstpot  (
    .ADR0(\U1/cnt [2]),
    .ADR1(\U1/CSelect_FSM_FFd2_94 ),
    .ADR2(\U1/CSelect_FSM_FFd1_48 ),
    .ADR3(N58),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Begin_76 ),
    .O(\U1/cnt_2_rstpot_147 )
  );
  X_LUT3 #(
    .INIT ( 8'hF4 ))
  \U2/led_7_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [7]),
    .ADR2(\U2/_n0045_99 ),
    .O(\U2/led_7_glue_set_137 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \U2/led_0_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [0]),
    .ADR2(\U2/_n0045_99 ),
    .O(\U2/led_0_glue_set_144 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_6_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [6]),
    .ADR2(\U2/led[7]_GND_5_o_mux_35_OUT<6> ),
    .ADR3(\U2/_n0045_99 ),
    .O(\U2/led_6_glue_set_138 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_5_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [5]),
    .ADR2(\U2/led[7]_GND_5_o_mux_35_OUT<5> ),
    .ADR3(\U2/_n0045_99 ),
    .O(\U2/led_5_glue_set_139 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_4_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [4]),
    .ADR2(\U2/led[7]_GND_5_o_mux_35_OUT<4> ),
    .ADR3(\U2/_n0045_99 ),
    .O(\U2/led_4_glue_set_140 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_3_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [3]),
    .ADR2(\U2/led[7]_GND_5_o_mux_35_OUT<3> ),
    .ADR3(\U2/_n0045_99 ),
    .O(\U2/led_3_glue_set_141 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_2_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [2]),
    .ADR2(\U2/led[7]_GND_5_o_mux_35_OUT<2> ),
    .ADR3(\U2/_n0045_99 ),
    .O(\U2/led_2_glue_set_142 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_1_glue_set  (
    .ADR0(\U2/_n0058_inv_98 ),
    .ADR1(\U2/led [1]),
    .ADR2(\U2/led[7]_GND_5_o_mux_35_OUT<1> ),
    .ADR3(\U2/_n0045_99 ),
    .O(\U2/led_1_glue_set_143 )
  );
  X_LUT4 #(
    .INIT ( 16'hFFFE ))
  \U1/CS2_rstpot_SW0  (
    .ADR0(\U1/cnt [3]),
    .ADR1(\U1/cnt [2]),
    .ADR2(\U1/cnt [1]),
    .ADR3(\U1/cnt [0]),
    .O(N62)
  );
  X_LUT6 #(
    .INIT ( 64'hAFAF8A82EFAF8A82 ))
  \U1/CS2_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_94 ),
    .ADR1(\U1/Begin_76 ),
    .ADR2(\U1/CSelect_FSM_FFd1_48 ),
    .ADR3(\U1/cnt [4]),
    .ADR4(\U1/CS2_20 ),
    .ADR5(N62),
    .O(\U1/CS2_rstpot_150 )
  );
  X_LUT6 #(
    .INIT ( 64'h20FA20F260FA20F2 ))
  \U1/done_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_94 ),
    .ADR1(\U1/Begin_76 ),
    .ADR2(\U1/done_21 ),
    .ADR3(\U1/CSelect_FSM_FFd1_48 ),
    .ADR4(\U1/cnt [4]),
    .ADR5(N62),
    .O(\U1/done_rstpot_151 )
  );
  X_LUT3 #(
    .INIT ( 8'hFE ))
  \U1/cnt_0_rstpot_SW0  (
    .ADR0(\U1/cnt [3]),
    .ADR1(\U1/cnt [2]),
    .ADR2(\U1/cnt [1]),
    .O(N66)
  );
  X_LUT6 #(
    .INIT ( 64'h949484949C949C94 ))
  \U1/cnt_0_rstpot  (
    .ADR0(\U1/CSelect_FSM_FFd2_94 ),
    .ADR1(\U1/cnt [0]),
    .ADR2(\U1/CSelect_FSM_FFd1_48 ),
    .ADR3(\U1/Begin_76 ),
    .ADR4(N66),
    .ADR5(\U1/cnt [4]),
    .O(\U1/cnt_0_rstpot_149 )
  );
  X_LUT6 #(
    .INIT ( 64'h92A29AAA92A292A2 ))
  \U1/cnt_1_rstpot  (
    .ADR0(\U1/cnt [1]),
    .ADR1(\U1/CSelect_FSM_FFd2_94 ),
    .ADR2(\U1/CSelect_FSM_FFd1_48 ),
    .ADR3(\U1/cnt [0]),
    .ADR4(\U1/cnt [4]),
    .ADR5(\U1/Begin_76 ),
    .O(\U1/cnt_1_rstpot_148 )
  );
  X_FF #(
    .INIT ( 1'b0 ))
  \U1/cnt_4_1  (
    .CLK(\U0/div_3_BUFG_37 ),
    .CE(\U1/_n0193_inv_49 ),
    .RST(reset_IBUF_4),
    .I(\U1/Mcount_cnt4 ),
    .O(\U1/cnt_4_1_155 ),
    .SET(GND)
  );
  X_CKBUF   \U0/div_3_BUFG  (
    .O(\U0/div_3_BUFG_37 ),
    .I(\U0/div [3])
  );
  X_INV   \U0/Mcount_div_xor<0>11_INV_0  (
    .I(\U0/div [0]),
    .O(Result[0])
  );
  X_INV   \U1/CSelect[1]_GND_3_o_Mux_28_o1_INV_0  (
    .I(\U1/CSelect_FSM_FFd1_48 ),
    .O(\U1/CSelect[1]_GND_3_o_Mux_28_o )
  );
  X_IPAD #(
    .LOC ( "V10" ))
  clk_152 (
    .PAD(clk)
  );
  X_IPAD #(
    .LOC ( "A8" ))
  reset_153 (
    .PAD(reset)
  );
  X_IPAD #(
    .LOC ( "T10" ))
  switch_154 (
    .PAD(switch)
  );
  X_IPAD #(
    .LOC ( "U11" ))
  Data1_155 (
    .PAD(Data1)
  );
  X_IPAD #(
    .LOC ( "J6" ))
  Data2_156 (
    .PAD(Data2)
  );
  X_OPAD #(
    .LOC ( "T11" ))
  \LED<7>  (
    .PAD(LED[7])
  );
  X_OPAD #(
    .LOC ( "R11" ))
  \LED<6>  (
    .PAD(LED[6])
  );
  X_OPAD #(
    .LOC ( "N11" ))
  \LED<5>  (
    .PAD(LED[5])
  );
  X_OPAD #(
    .LOC ( "M11" ))
  \LED<4>  (
    .PAD(LED[4])
  );
  X_OPAD #(
    .LOC ( "V15" ))
  \LED<3>  (
    .PAD(LED[3])
  );
  X_OPAD #(
    .LOC ( "U15" ))
  \LED<2>  (
    .PAD(LED[2])
  );
  X_OPAD #(
    .LOC ( "V16" ))
  \LED<1>  (
    .PAD(LED[1])
  );
  X_OPAD #(
    .LOC ( "U16" ))
  \LED<0>  (
    .PAD(LED[0])
  );
  X_OPAD #(
    .LOC ( "V11" ))
  clk12_165 (
    .PAD(clk12)
  );
  X_OPAD #(
    .LOC ( "F2" ))
  clk122_166 (
    .PAD(clk122)
  );
  X_OPAD #(
    .LOC ( "M10" ))
  CS_167 (
    .PAD(CS)
  );
  X_OPAD #(
    .LOC ( "G1" ))
  CS2_168 (
    .PAD(CS2)
  );
  X_CKBUF   \clk_BUFGP/BUFG  (
    .I(\clk_BUFGP/IBUFG_2 ),
    .O(clk_BUFGP)
  );
  X_CKBUF   \clk_BUFGP/IBUFG  (
    .I(clk),
    .O(\clk_BUFGP/IBUFG_2 )
  );
  X_OBUF   LED_7_OBUF (
    .I(\U2/led [7]),
    .O(LED[7])
  );
  X_OBUF   LED_6_OBUF (
    .I(\U2/led [6]),
    .O(LED[6])
  );
  X_OBUF   LED_5_OBUF (
    .I(\U2/led [5]),
    .O(LED[5])
  );
  X_OBUF   LED_4_OBUF (
    .I(\U2/led [4]),
    .O(LED[4])
  );
  X_OBUF   LED_3_OBUF (
    .I(\U2/led [3]),
    .O(LED[3])
  );
  X_OBUF   LED_2_OBUF (
    .I(\U2/led [2]),
    .O(LED[2])
  );
  X_OBUF   LED_1_OBUF (
    .I(\U2/led [1]),
    .O(LED[1])
  );
  X_OBUF   LED_0_OBUF (
    .I(\U2/led [0]),
    .O(LED[0])
  );
  X_OBUF   clk12_OBUF (
    .I(\U0/div [3]),
    .O(clk12)
  );
  X_OBUF   clk122_OBUF (
    .I(\U0/div [3]),
    .O(clk122)
  );
  X_OBUF   CS_OBUF (
    .I(\U1/CS2_20 ),
    .O(CS)
  );
  X_OBUF   CS2_OBUF (
    .I(\U1/CS2_20 ),
    .O(CS2)
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

