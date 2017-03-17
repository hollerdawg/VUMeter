////////////////////////////////////////////////////////////////////////////////
// Copyright (c) 1995-2012 Xilinx, Inc.  All rights reserved.
////////////////////////////////////////////////////////////////////////////////
//   ____  ____
//  /   /\/   /
// /___/  \  /    Vendor: Xilinx
// \   \   \/     Version: P.28xd
//  \   \         Application: netgen
//  /   /         Filename: VUMeter_synthesis.v
// /___/   /\     Timestamp: Fri Dec 13 15:43:41 2013
// \   \  /  \ 
//  \___\/\___\
//             
// Command	: -intstyle ise -insert_glbl true -w -dir netgen/synthesis -ofmt verilog -sim VUMeter.ngc VUMeter_synthesis.v 
// Device	: xc6slx16-3-csg324
// Input file	: VUMeter.ngc
// Output file	: D:\Student Data\XiLinx ISE Design Suite\VUMeter\netgen\synthesis\VUMeter_synthesis.v
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
  wire clk_BUFGP_0;
  wire reset_IBUF_1;
  wire switch_IBUF_2;
  wire Data1_IBUF_3;
  wire Data2_IBUF_4;
  wire \U1/CS2_17 ;
  wire \U1/done_18 ;
  wire \U0/div_3_BUFG_34 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ;
  wire \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ;
  wire \U1/CSelect_FSM_FFd1-In ;
  wire \U1/CSelect_FSM_FFd2-In_42 ;
  wire \U1/Mcount_cnt4 ;
  wire \U1/Mcount_cnt3 ;
  wire \U1/CSelect_FSM_FFd1_45 ;
  wire \U1/_n0193_inv_46 ;
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
  wire \U1/Begin_73 ;
  wire \U1/CSelect[1]_GND_3_o_Mux_28_o ;
  wire \U1/CSelect_FSM_FFd2_91 ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ;
  wire \U2/_n004511 ;
  wire \U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ;
  wire \U2/_n0058_inv_95 ;
  wire \U2/_n0045_96 ;
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
  wire \U1/_n0212_inv1_108 ;
  wire N22;
  wire N24;
  wire N26;
  wire N28;
  wire N30;
  wire N32;
  wire N34;
  wire N36;
  wire \U2/led_7_glue_set_134 ;
  wire \U2/led_6_glue_set_135 ;
  wire \U2/led_5_glue_set_136 ;
  wire \U2/led_4_glue_set_137 ;
  wire \U2/led_3_glue_set_138 ;
  wire \U2/led_2_glue_set_139 ;
  wire \U2/led_1_glue_set_140 ;
  wire \U2/led_0_glue_set_141 ;
  wire N38;
  wire N40;
  wire \U1/cnt_2_rstpot_144 ;
  wire \U1/cnt_1_rstpot_145 ;
  wire \U1/cnt_0_rstpot_146 ;
  wire \U1/CS2_rstpot_147 ;
  wire \U1/done_rstpot_148 ;
  wire N58;
  wire N62;
  wire N66;
  wire \U1/cnt_4_1_152 ;
  wire [11 : 0] \U1/digital ;
  wire [7 : 0] \U2/led ;
  wire [3 : 0] Result;
  wire [3 : 0] \U0/div ;
  wire [4 : 0] \U1/cnt ;
  wire [15 : 4] \U1/temp ;
  FDC   \U0/div_0  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[0]),
    .Q(\U0/div [0])
  );
  FDC   \U0/div_1  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[1]),
    .Q(\U0/div [1])
  );
  FDC   \U0/div_2  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[2]),
    .Q(\U0/div [2])
  );
  FDC   \U0/div_3  (
    .C(clk_BUFGP_0),
    .CLR(reset_IBUF_1),
    .D(Result[3]),
    .Q(\U0/div [3])
  );
  FDC   \U1/CSelect_FSM_FFd1  (
    .C(\U0/div_3_BUFG_34 ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect_FSM_FFd1-In ),
    .Q(\U1/CSelect_FSM_FFd1_45 )
  );
  FDP   \U1/CSelect_FSM_FFd2  (
    .C(\U0/div_3_BUFG_34 ),
    .D(\U1/CSelect_FSM_FFd2-In_42 ),
    .PRE(reset_IBUF_1),
    .Q(\U1/CSelect_FSM_FFd2_91 )
  );
  FDCE   \U1/cnt_4  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0193_inv_46 ),
    .CLR(reset_IBUF_1),
    .D(\U1/Mcount_cnt4 ),
    .Q(\U1/cnt [4])
  );
  FDCE   \U1/cnt_3  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0193_inv_46 ),
    .CLR(reset_IBUF_1),
    .D(\U1/Mcount_cnt3 ),
    .Q(\U1/cnt [3])
  );
  FDCE   \U1/digital_11  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> ),
    .Q(\U1/digital [11])
  );
  FDCE   \U1/digital_10  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ),
    .Q(\U1/digital [10])
  );
  FDCE   \U1/digital_9  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> ),
    .Q(\U1/digital [9])
  );
  FDCE   \U1/digital_8  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> ),
    .Q(\U1/digital [8])
  );
  FDCE   \U1/digital_7  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> ),
    .Q(\U1/digital [7])
  );
  FDCE   \U1/digital_6  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> ),
    .Q(\U1/digital [6])
  );
  FDCE   \U1/digital_5  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> ),
    .Q(\U1/digital [5])
  );
  FDCE   \U1/digital_4  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> ),
    .Q(\U1/digital [4])
  );
  FDCE   \U1/digital_3  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> ),
    .Q(\U1/digital [3])
  );
  FDCE   \U1/digital_2  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ),
    .Q(\U1/digital [2])
  );
  FDCE   \U1/digital_1  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> ),
    .Q(\U1/digital [1])
  );
  FDCE   \U1/digital_0  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> ),
    .Q(\U1/digital [0])
  );
  FDCE   \U1/temp_15  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> ),
    .Q(\U1/temp [15])
  );
  FDCE   \U1/temp_14  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> ),
    .Q(\U1/temp [14])
  );
  FDCE   \U1/temp_13  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> ),
    .Q(\U1/temp [13])
  );
  FDCE   \U1/temp_12  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> ),
    .Q(\U1/temp [12])
  );
  FDCE   \U1/temp_11  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> ),
    .Q(\U1/temp [11])
  );
  FDCE   \U1/temp_10  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> ),
    .Q(\U1/temp [10])
  );
  FDCE   \U1/temp_9  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> ),
    .Q(\U1/temp [9])
  );
  FDCE   \U1/temp_8  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> ),
    .Q(\U1/temp [8])
  );
  FDCE   \U1/temp_7  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> ),
    .Q(\U1/temp [7])
  );
  FDCE   \U1/temp_6  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> ),
    .Q(\U1/temp [6])
  );
  FDCE   \U1/temp_5  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> ),
    .Q(\U1/temp [5])
  );
  FDCE   \U1/temp_4  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0212_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> ),
    .Q(\U1/temp [4])
  );
  FDCE   \U1/Begin  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0226_inv ),
    .CLR(reset_IBUF_1),
    .D(\U1/CSelect[1]_GND_3_o_Mux_28_o ),
    .Q(\U1/Begin_73 )
  );
  LUT2 #(
    .INIT ( 4'h6 ))
  \U0/Mcount_div_xor<1>11  (
    .I0(\U0/div [1]),
    .I1(\U0/div [0]),
    .O(Result[1])
  );
  LUT4 #(
    .INIT ( 16'h6AAA ))
  \U0/Mcount_div_xor<3>11  (
    .I0(\U0/div [3]),
    .I1(\U0/div [0]),
    .I2(\U0/div [1]),
    .I3(\U0/div [2]),
    .O(Result[3])
  );
  LUT3 #(
    .INIT ( 8'h6A ))
  \U0/Mcount_div_xor<2>11  (
    .I0(\U0/div [2]),
    .I1(\U0/div [0]),
    .I2(\U0/div [1]),
    .O(Result[2])
  );
  LUT6 #(
    .INIT ( 64'h2888888888888888 ))
  \U1/Mcount_cnt_xor<4>11  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/cnt [4]),
    .I2(\U1/cnt [0]),
    .I3(\U1/cnt [1]),
    .I4(\U1/cnt [2]),
    .I5(\U1/cnt [3]),
    .O(\U1/Mcount_cnt4 )
  );
  LUT5 #(
    .INIT ( 32'h28888888 ))
  \U1/Mcount_cnt_xor<3>11  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/cnt [3]),
    .I2(\U1/cnt [0]),
    .I3(\U1/cnt [1]),
    .I4(\U1/cnt [2]),
    .O(\U1/Mcount_cnt3 )
  );
  LUT6 #(
    .INIT ( 64'hFF88888880888888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT71  (
    .I0(\U1/temp [8]),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .I2(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .I3(\U1/cnt [1]),
    .I4(\U1/cnt [0]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<4> )
  );
  LUT6 #(
    .INIT ( 64'h888F888F88888880 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT101  (
    .I0(\U1/temp [11]),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .I2(\U1/cnt [0]),
    .I3(\U1/cnt [1]),
    .I4(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<7> )
  );
  LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT91  (
    .I0(\U1/temp [10]),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .I2(\U1/cnt [1]),
    .I3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .I4(\U1/cnt [0]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<6> )
  );
  LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT81  (
    .I0(\U1/temp [9]),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .I2(\U1/cnt [0]),
    .I3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 ),
    .I4(\U1/cnt [1]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'hD ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT2111  (
    .I0(\U1/cnt [0]),
    .I1(\U1/cnt [1]),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 )
  );
  LUT4 #(
    .INIT ( 16'h88A2 ))
  \U1/_n0226_inv1  (
    .I0(\U1/CSelect_FSM_FFd2_91 ),
    .I1(\U1/Begin_73 ),
    .I2(\U1/cnt [4]),
    .I3(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/_n0226_inv )
  );
  LUT4 #(
    .INIT ( 16'h8AFF ))
  \U1/CSelect_FSM_FFd1-In1  (
    .I0(\U1/Begin_73 ),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .I2(\U1/cnt [4]),
    .I3(\U1/CSelect_FSM_FFd2_91 ),
    .O(\U1/CSelect_FSM_FFd1-In )
  );
  LUT5 #(
    .INIT ( 32'h00AC0000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151  (
    .I0(Data1_IBUF_3),
    .I1(Data2_IBUF_4),
    .I2(switch_IBUF_2),
    .I3(\U1/cnt [4]),
    .I4(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT8111  (
    .I0(\U1/cnt [2]),
    .I1(\U1/cnt [3]),
    .I2(\U1/cnt [4]),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT811 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT13  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [4]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<0> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT21  (
    .I0(\U1/temp [14]),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT31  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [15]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<11> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT41  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [5]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<1> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT51  (
    .I0(\U1/temp [6]),
    .I1(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT61  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [7]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<3> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT71  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [8]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<4> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT81  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [9]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<5> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT91  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [10]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<6> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT101  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [11]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<7> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT111  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [12]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<8> )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_31_OUT121  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [13]),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFAAA8 ))
  \U2/led[7]_GND_5_o_mux_35_OUT<1>_inv1  (
    .I0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .I1(\U2/_n004511 ),
    .I2(\U1/digital [5]),
    .I3(\U1/digital [6]),
    .I4(\U1/digital [10]),
    .I5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<1> )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT321  (
    .I0(\U1/digital [9]),
    .I1(\U1/digital [8]),
    .I2(\U1/digital [7]),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U2/_n0045111  (
    .I0(\U1/digital [2]),
    .I1(\U1/digital [3]),
    .I2(\U1/digital [4]),
    .O(\U2/_n004511 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6111  (
    .I0(\U1/digital [9]),
    .I1(\U1/digital [7]),
    .I2(\U1/digital [8]),
    .O(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 )
  );
  LUT3 #(
    .INIT ( 8'h80 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT11_SW0  (
    .I0(\U1/cnt [2]),
    .I1(\U1/cnt [1]),
    .I2(\U1/cnt [0]),
    .O(N01)
  );
  LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT11  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [12]),
    .I2(\U1/cnt [3]),
    .I3(\U1/cnt [4]),
    .I4(N01),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<8> )
  );
  LUT6 #(
    .INIT ( 64'hFF88888880888888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT1  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [4]),
    .I2(\U1/cnt [4]),
    .I3(N01),
    .I4(\U1/cnt [3]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<0> )
  );
  LUT3 #(
    .INIT ( 8'h01 ))
  \U1/_n0193_inv_SW0  (
    .I0(\U1/cnt [2]),
    .I1(\U1/cnt [1]),
    .I2(\U1/cnt [0]),
    .O(N4)
  );
  LUT6 #(
    .INIT ( 64'h6266426662666266 ))
  \U1/_n0193_inv  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/CSelect_FSM_FFd2_91 ),
    .I2(\U1/cnt [4]),
    .I3(\U1/Begin_73 ),
    .I4(\U1/cnt [3]),
    .I5(N4),
    .O(\U1/_n0193_inv_46 )
  );
  LUT3 #(
    .INIT ( 8'hFB ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT6_SW0  (
    .I0(\U1/cnt [1]),
    .I1(\U1/cnt [2]),
    .I2(\U1/cnt [0]),
    .O(N8)
  );
  LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT6  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [7]),
    .I2(N8),
    .I3(\U1/cnt [4]),
    .I4(\U1/cnt [3]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<3> )
  );
  LUT3 #(
    .INIT ( 8'hDF ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT4_SW0  (
    .I0(\U1/cnt [2]),
    .I1(\U1/cnt [0]),
    .I2(\U1/cnt [1]),
    .O(N10)
  );
  LUT6 #(
    .INIT ( 64'h8F8F888888808888 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT4  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [5]),
    .I2(N10),
    .I3(\U1/cnt [4]),
    .I4(\U1/cnt [3]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<1> )
  );
  LUT6 #(
    .INIT ( 64'h888F888F88888880 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT3  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [15]),
    .I2(\U1/cnt [3]),
    .I3(N8),
    .I4(\U1/cnt [4]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<11> )
  );
  LUT6 #(
    .INIT ( 64'h888F888F88888880 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT12  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/temp [13]),
    .I2(\U1/cnt [3]),
    .I3(N10),
    .I4(\U1/cnt [4]),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT15 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<9> )
  );
  LUT6 #(
    .INIT ( 64'hFFFFCCCCFFF70000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT5  (
    .I0(\U1/cnt [2]),
    .I1(\U1/cnt [3]),
    .I2(\U1/cnt [4]),
    .I3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ),
    .I4(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<2> ),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<2> )
  );
  LUT6 #(
    .INIT ( 64'hFFFF3333FFFD0000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT2  (
    .I0(\U1/cnt [2]),
    .I1(\U1/cnt [3]),
    .I2(\U1/cnt [4]),
    .I3(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT211 ),
    .I4(\U1/CSelect[1]_temp[15]_wide_mux_31_OUT<10> ),
    .I5(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 ),
    .O(\U1/CSelect[1]_temp[15]_wide_mux_33_OUT<10> )
  );
  LUT6 #(
    .INIT ( 64'hFFFAFFFAFFFAFFF2 ))
  \U1/_n0212_inv1  (
    .I0(\U1/cnt_4_1_152 ),
    .I1(\U1/Begin_73 ),
    .I2(\U1/cnt [2]),
    .I3(\U1/cnt [3]),
    .I4(\U1/cnt [1]),
    .I5(\U1/cnt [0]),
    .O(\U1/_n0212_inv1_108 )
  );
  LUT5 #(
    .INIT ( 32'h62664044 ))
  \U1/_n0212_inv2  (
    .I0(\U1/CSelect_FSM_FFd1_45 ),
    .I1(\U1/CSelect_FSM_FFd2_91 ),
    .I2(\U1/cnt [4]),
    .I3(\U1/Begin_73 ),
    .I4(\U1/_n0212_inv1_108 ),
    .O(\U1/_n0212_inv )
  );
  LUT6 #(
    .INIT ( 64'hFFFFAFAF2000AAAA ))
  \U1/CSelect_FSM_FFd2-In  (
    .I0(\U1/cnt [4]),
    .I1(\U1/cnt [3]),
    .I2(\U1/Begin_73 ),
    .I3(N4),
    .I4(\U1/CSelect_FSM_FFd1_45 ),
    .I5(\U1/CSelect_FSM_FFd2_91 ),
    .O(\U1/CSelect_FSM_FFd2-In_42 )
  );
  LUT2 #(
    .INIT ( 4'hE ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT3_SW0  (
    .I0(\U1/digital [11]),
    .I1(\U1/digital [10]),
    .O(N22)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFF80808000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT3  (
    .I0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .I1(\U1/digital [5]),
    .I2(\U1/digital [6]),
    .I3(\U1/digital [4]),
    .I4(\U1/digital [3]),
    .I5(N22),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<3> )
  );
  LUT4 #(
    .INIT ( 16'hAA80 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT2_SW0  (
    .I0(\U1/digital [4]),
    .I1(\U1/digital [2]),
    .I2(\U1/digital [1]),
    .I3(\U1/digital [3]),
    .O(N24)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFA888 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT2  (
    .I0(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT32 ),
    .I1(\U1/digital [6]),
    .I2(\U1/digital [5]),
    .I3(N24),
    .I4(\U1/digital [10]),
    .I5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<2> )
  );
  LUT5 #(
    .INIT ( 32'h88808080 ))
  \U2/_n0045_SW0  (
    .I0(\U1/digital [6]),
    .I1(\U1/digital [5]),
    .I2(\U2/_n004511 ),
    .I3(\U1/digital [1]),
    .I4(\U1/digital [0]),
    .O(N26)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAA8A8A8 ))
  \U2/_n0045  (
    .I0(\U1/digital [10]),
    .I1(\U1/digital [9]),
    .I2(\U1/digital [8]),
    .I3(\U1/digital [7]),
    .I4(N26),
    .I5(\U1/digital [11]),
    .O(\U2/_n0045_96 )
  );
  LUT4 #(
    .INIT ( 16'h8000 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6_SW0  (
    .I0(\U1/digital [4]),
    .I1(\U1/digital [3]),
    .I2(\U1/digital [2]),
    .I3(\U1/digital [1]),
    .O(N28)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFA8888888 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT6  (
    .I0(\U1/digital [10]),
    .I1(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .I2(\U1/digital [6]),
    .I3(\U1/digital [5]),
    .I4(N28),
    .I5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<6> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT5_SW0  (
    .I0(\U1/digital [3]),
    .I1(\U1/digital [2]),
    .I2(\U1/digital [4]),
    .O(N30)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAA8880 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT5  (
    .I0(\U1/digital [10]),
    .I1(\U1/digital [6]),
    .I2(\U1/digital [5]),
    .I3(N30),
    .I4(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .I5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<5> )
  );
  LUT4 #(
    .INIT ( 16'h8880 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT4_SW0  (
    .I0(\U1/digital [4]),
    .I1(\U1/digital [3]),
    .I2(\U1/digital [2]),
    .I3(\U1/digital [1]),
    .O(N32)
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFAAAAAAA8 ))
  \U2/Mmux_led[7]_GND_5_o_mux_35_OUT4  (
    .I0(\U1/digital [10]),
    .I1(\U1/digital [6]),
    .I2(\U1/digital [5]),
    .I3(\U2/Mmux_led[7]_GND_5_o_mux_35_OUT611 ),
    .I4(N32),
    .I5(\U1/digital [11]),
    .O(\U2/led[7]_GND_5_o_mux_35_OUT<4> )
  );
  LUT3 #(
    .INIT ( 8'hF8 ))
  \U2/_n0058_inv_SW0  (
    .I0(\U1/digital [5]),
    .I1(\U1/digital [4]),
    .I2(\U1/digital [6]),
    .O(N34)
  );
  LUT6 #(
    .INIT ( 64'h0001010155555555 ))
  \U2/_n0058_inv  (
    .I0(\U1/digital [11]),
    .I1(\U1/digital [8]),
    .I2(\U1/digital [9]),
    .I3(N34),
    .I4(\U1/digital [7]),
    .I5(\U1/digital [10]),
    .O(\U2/_n0058_inv_95 )
  );
  LUT6 #(
    .INIT ( 64'hFFFFFFFFFFFFFFFE ))
  \U2/digital[11]_GND_5_o_LessThan_20_o1_SW0  (
    .I0(\U1/digital [4]),
    .I1(\U1/digital [3]),
    .I2(\U1/digital [2]),
    .I3(\U1/digital [1]),
    .I4(\U1/digital [11]),
    .I5(\U1/digital [10]),
    .O(N36)
  );
  LUT6 #(
    .INIT ( 64'h0000000000000001 ))
  \U2/digital[11]_GND_5_o_LessThan_20_o1  (
    .I0(\U1/digital [9]),
    .I1(\U1/digital [8]),
    .I2(\U1/digital [7]),
    .I3(\U1/digital [6]),
    .I4(\U1/digital [5]),
    .I5(N36),
    .O(\U2/digital[11]_GND_5_o_LessThan_20_o )
  );
  IBUF   reset_IBUF (
    .I(reset),
    .O(reset_IBUF_1)
  );
  IBUF   switch_IBUF (
    .I(switch),
    .O(switch_IBUF_2)
  );
  IBUF   Data1_IBUF (
    .I(Data1),
    .O(Data1_IBUF_3)
  );
  IBUF   Data2_IBUF (
    .I(Data2),
    .O(Data2_IBUF_4)
  );
  OBUF   LED_7_OBUF (
    .I(\U2/led [7]),
    .O(LED[7])
  );
  OBUF   LED_6_OBUF (
    .I(\U2/led [6]),
    .O(LED[6])
  );
  OBUF   LED_5_OBUF (
    .I(\U2/led [5]),
    .O(LED[5])
  );
  OBUF   LED_4_OBUF (
    .I(\U2/led [4]),
    .O(LED[4])
  );
  OBUF   LED_3_OBUF (
    .I(\U2/led [3]),
    .O(LED[3])
  );
  OBUF   LED_2_OBUF (
    .I(\U2/led [2]),
    .O(LED[2])
  );
  OBUF   LED_1_OBUF (
    .I(\U2/led [1]),
    .O(LED[1])
  );
  OBUF   LED_0_OBUF (
    .I(\U2/led [0]),
    .O(LED[0])
  );
  OBUF   clk12_OBUF (
    .I(\U0/div [3]),
    .O(clk12)
  );
  OBUF   clk122_OBUF (
    .I(\U0/div [3]),
    .O(clk122)
  );
  OBUF   CS_OBUF (
    .I(\U1/CS2_17 ),
    .O(CS)
  );
  OBUF   CS2_OBUF (
    .I(\U1/CS2_17 ),
    .O(CS2)
  );
  FDR   \U2/led_7  (
    .C(\U1/done_18 ),
    .D(\U2/led_7_glue_set_134 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [7])
  );
  FDR   \U2/led_6  (
    .C(\U1/done_18 ),
    .D(\U2/led_6_glue_set_135 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [6])
  );
  FDR   \U2/led_5  (
    .C(\U1/done_18 ),
    .D(\U2/led_5_glue_set_136 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [5])
  );
  FDR   \U2/led_4  (
    .C(\U1/done_18 ),
    .D(\U2/led_4_glue_set_137 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [4])
  );
  FDR   \U2/led_3  (
    .C(\U1/done_18 ),
    .D(\U2/led_3_glue_set_138 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [3])
  );
  FDR   \U2/led_2  (
    .C(\U1/done_18 ),
    .D(\U2/led_2_glue_set_139 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [2])
  );
  FDR   \U2/led_1  (
    .C(\U1/done_18 ),
    .D(\U2/led_1_glue_set_140 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [1])
  );
  FDR   \U2/led_0  (
    .C(\U1/done_18 ),
    .D(\U2/led_0_glue_set_141 ),
    .R(\U2/digital[11]_GND_5_o_LessThan_20_o ),
    .Q(\U2/led [0])
  );
  LUT3 #(
    .INIT ( 8'hE4 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151_SW0  (
    .I0(switch_IBUF_2),
    .I1(Data2_IBUF_4),
    .I2(Data1_IBUF_3),
    .O(N38)
  );
  LUT6 #(
    .INIT ( 64'h0000008000000000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT221  (
    .I0(N38),
    .I1(\U1/cnt [2]),
    .I2(\U1/cnt [0]),
    .I3(\U1/cnt [1]),
    .I4(\U1/cnt [4]),
    .I5(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT22 )
  );
  LUT3 #(
    .INIT ( 8'h27 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT151_SW1  (
    .I0(switch_IBUF_2),
    .I1(Data1_IBUF_3),
    .I2(Data2_IBUF_4),
    .O(N40)
  );
  LUT5 #(
    .INIT ( 32'h00100000 ))
  \U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT1021  (
    .I0(N40),
    .I1(\U1/cnt [2]),
    .I2(\U1/cnt [3]),
    .I3(\U1/cnt [4]),
    .I4(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/Mmux_CSelect[1]_temp[15]_wide_mux_33_OUT102 )
  );
  FDC   \U1/cnt_2  (
    .C(\U0/div_3_BUFG_34 ),
    .CLR(reset_IBUF_1),
    .D(\U1/cnt_2_rstpot_144 ),
    .Q(\U1/cnt [2])
  );
  FDC   \U1/cnt_1  (
    .C(\U0/div_3_BUFG_34 ),
    .CLR(reset_IBUF_1),
    .D(\U1/cnt_1_rstpot_145 ),
    .Q(\U1/cnt [1])
  );
  FDC   \U1/cnt_0  (
    .C(\U0/div_3_BUFG_34 ),
    .CLR(reset_IBUF_1),
    .D(\U1/cnt_0_rstpot_146 ),
    .Q(\U1/cnt [0])
  );
  FDP   \U1/CS2  (
    .C(\U0/div_3_BUFG_34 ),
    .D(\U1/CS2_rstpot_147 ),
    .PRE(reset_IBUF_1),
    .Q(\U1/CS2_17 )
  );
  FDP   \U1/done  (
    .C(\U0/div_3_BUFG_34 ),
    .D(\U1/done_rstpot_148 ),
    .PRE(reset_IBUF_1),
    .Q(\U1/done_18 )
  );
  LUT2 #(
    .INIT ( 4'h8 ))
  \U1/cnt_2_rstpot_SW0  (
    .I0(\U1/cnt [1]),
    .I1(\U1/cnt [0]),
    .O(N58)
  );
  LUT6 #(
    .INIT ( 64'h92A29AAA92A292A2 ))
  \U1/cnt_2_rstpot  (
    .I0(\U1/cnt [2]),
    .I1(\U1/CSelect_FSM_FFd2_91 ),
    .I2(\U1/CSelect_FSM_FFd1_45 ),
    .I3(N58),
    .I4(\U1/cnt [4]),
    .I5(\U1/Begin_73 ),
    .O(\U1/cnt_2_rstpot_144 )
  );
  LUT3 #(
    .INIT ( 8'hF4 ))
  \U2/led_7_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [7]),
    .I2(\U2/_n0045_96 ),
    .O(\U2/led_7_glue_set_134 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U2/led_0_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [0]),
    .I2(\U2/_n0045_96 ),
    .O(\U2/led_0_glue_set_141 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_6_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [6]),
    .I2(\U2/led[7]_GND_5_o_mux_35_OUT<6> ),
    .I3(\U2/_n0045_96 ),
    .O(\U2/led_6_glue_set_135 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_5_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [5]),
    .I2(\U2/led[7]_GND_5_o_mux_35_OUT<5> ),
    .I3(\U2/_n0045_96 ),
    .O(\U2/led_5_glue_set_136 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_4_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [4]),
    .I2(\U2/led[7]_GND_5_o_mux_35_OUT<4> ),
    .I3(\U2/_n0045_96 ),
    .O(\U2/led_4_glue_set_137 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_3_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [3]),
    .I2(\U2/led[7]_GND_5_o_mux_35_OUT<3> ),
    .I3(\U2/_n0045_96 ),
    .O(\U2/led_3_glue_set_138 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_2_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [2]),
    .I2(\U2/led[7]_GND_5_o_mux_35_OUT<2> ),
    .I3(\U2/_n0045_96 ),
    .O(\U2/led_2_glue_set_139 )
  );
  LUT4 #(
    .INIT ( 16'hFFE4 ))
  \U2/led_1_glue_set  (
    .I0(\U2/_n0058_inv_95 ),
    .I1(\U2/led [1]),
    .I2(\U2/led[7]_GND_5_o_mux_35_OUT<1> ),
    .I3(\U2/_n0045_96 ),
    .O(\U2/led_1_glue_set_140 )
  );
  LUT4 #(
    .INIT ( 16'hFFFE ))
  \U1/CS2_rstpot_SW0  (
    .I0(\U1/cnt [3]),
    .I1(\U1/cnt [2]),
    .I2(\U1/cnt [1]),
    .I3(\U1/cnt [0]),
    .O(N62)
  );
  LUT6 #(
    .INIT ( 64'hAFAF8A82EFAF8A82 ))
  \U1/CS2_rstpot  (
    .I0(\U1/CSelect_FSM_FFd2_91 ),
    .I1(\U1/Begin_73 ),
    .I2(\U1/CSelect_FSM_FFd1_45 ),
    .I3(\U1/cnt [4]),
    .I4(\U1/CS2_17 ),
    .I5(N62),
    .O(\U1/CS2_rstpot_147 )
  );
  LUT6 #(
    .INIT ( 64'h20FA20F260FA20F2 ))
  \U1/done_rstpot  (
    .I0(\U1/CSelect_FSM_FFd2_91 ),
    .I1(\U1/Begin_73 ),
    .I2(\U1/done_18 ),
    .I3(\U1/CSelect_FSM_FFd1_45 ),
    .I4(\U1/cnt [4]),
    .I5(N62),
    .O(\U1/done_rstpot_148 )
  );
  LUT3 #(
    .INIT ( 8'hFE ))
  \U1/cnt_0_rstpot_SW0  (
    .I0(\U1/cnt [3]),
    .I1(\U1/cnt [2]),
    .I2(\U1/cnt [1]),
    .O(N66)
  );
  LUT6 #(
    .INIT ( 64'h949484949C949C94 ))
  \U1/cnt_0_rstpot  (
    .I0(\U1/CSelect_FSM_FFd2_91 ),
    .I1(\U1/cnt [0]),
    .I2(\U1/CSelect_FSM_FFd1_45 ),
    .I3(\U1/Begin_73 ),
    .I4(N66),
    .I5(\U1/cnt [4]),
    .O(\U1/cnt_0_rstpot_146 )
  );
  LUT6 #(
    .INIT ( 64'h92A29AAA92A292A2 ))
  \U1/cnt_1_rstpot  (
    .I0(\U1/cnt [1]),
    .I1(\U1/CSelect_FSM_FFd2_91 ),
    .I2(\U1/CSelect_FSM_FFd1_45 ),
    .I3(\U1/cnt [0]),
    .I4(\U1/cnt [4]),
    .I5(\U1/Begin_73 ),
    .O(\U1/cnt_1_rstpot_145 )
  );
  FDCE   \U1/cnt_4_1  (
    .C(\U0/div_3_BUFG_34 ),
    .CE(\U1/_n0193_inv_46 ),
    .CLR(reset_IBUF_1),
    .D(\U1/Mcount_cnt4 ),
    .Q(\U1/cnt_4_1_152 )
  );
  BUFG   \U0/div_3_BUFG  (
    .O(\U0/div_3_BUFG_34 ),
    .I(\U0/div [3])
  );
  BUFGP   clk_BUFGP (
    .I(clk),
    .O(clk_BUFGP_0)
  );
  INV   \U0/Mcount_div_xor<0>11_INV_0  (
    .I(\U0/div [0]),
    .O(Result[0])
  );
  INV   \U1/CSelect[1]_GND_3_o_Mux_28_o1_INV_0  (
    .I(\U1/CSelect_FSM_FFd1_45 ),
    .O(\U1/CSelect[1]_GND_3_o_Mux_28_o )
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

