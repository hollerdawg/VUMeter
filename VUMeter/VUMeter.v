`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Holleran Industries
// Engineer: Ryan Holleran
// 
// Create Date:    23:08:42 11/19/2013 
// Design Name: VU Meter
// Module Name:    VUMeter 
// Project Name: Digital design final
// Target Devices: Nexys 3
// Tool versions: 
// Description: This project is designed to be uploaded onto a Nexys 3 board
//	with a PmodMic, or pmodAD1 connected to the lower half of JA1 Pmod connector.
// This program will take input from the on board ADC converters from the Pmod devices
// and will analyze it, and turn on/off the LEDs on the Nexys 3 board according to the
// analog signal input from the ADC.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module VUMeter(
	input wire clk, 			// clock signal from the 100 Mhz clock on board
	input wire reset,			// system reset, mapped to onboard pushbutton
	output wire [7:0] LED,	// outputs to the 8 on board LEDs
	output clk12,	
	output clk122,				// divided clock output of 12.5 Mhz
	output CS,
	output CS2,					// Ccontrols signal sending from the ADC on Pmod devices
	input switch,
	input Data1,					// signal used to recieve data from Pmod devices
	input Data2
    );
	
	wire done;					// used to tell meterOp when to turn lights on or off
	wire [11:0] dig;			// used to link the digital output from serialCom to meterOp
	
	clkDiv U0 (.CLK(clk),.RST(reset),.clk12(clk12),.clk122(clk122));
	serialCom U1 (.clk(clk12),.reset(reset),.Data1(Data1),.digital(dig),.CS(CS),.done(done),.CS2(CS2),.Data2(Data2),.switch(switch));
	meterOp U2 (.clk(done),.digital(dig),.led(LED),.switch(switch));
	endmodule


//************************************************************
// This module divides the onboard 100 Mhz clock to 12.5 Mhz
// for use with the Pmod devices.
//************************************************************
	module clkDiv(
		input CLK,		// input clock
		input RST,		// reset signal
		output clk12,	// 12.5 Mhz divided clock
		output clk122	// 12.5 Mhz divided clock to second Pmod
		);
		
		reg [3:0] div;											//used to count how many clocks cycles have passed

		always @(posedge CLK or posedge RST)
		begin
			if(RST)
				div <= 1'b0;
			else
				div <= div + 1'b1;
		end
			 
		assign clk12 = div[3];	// assigning clk12 output to synced to the third bit in register div
		assign clk122 = div[3];	//assigns second clock to same speed
	endmodule


//************************************************************
// this module takes in the digital signal that is given from
// the ADC and compares it to set values to control which LEDs
// on the Nexys 3 board to turn on/off.
// this is all triggered on the positive edge done signal from
// serialCom. (attached in topblock)
//************************************************************
module meterOp(
	input clk,					// trigger to start comparing
	input [11:0] digital,	// digital signal in from ADC
	output reg [7:0] led,		// signal to LED output
	input switch
	);
		
	always @(posedge clk) begin
		if(switch) begin					// when switch is high, the PmodAD1 is in use and uses different voltage levels
			if(digital<12'd2)				// lowest level (no LEDs on)
				led <= 8'b00000000;
			else if(digital<12'd900)	// first level
				led <= 8'b00000001;
			else if(digital<12'd950)
				led <= 8'b00000011;
			else if(digital<12'd1000)
				led <= 8'b00000111;
			else if(digital<12'd1050)
				led <= 8'b00001111;
			else if(digital<12'd1100)
				led <= 8'b00011111;
			else if(digital<12'd1150)
				led <= 8'b00111111;
			else if(digital<12'd1200)
				led <= 8'b01111111;
			else if(digital>12'd1250)	// highest level (all LEDs on)
				led <= 8'b11111111;
		end
		
		else begin							// when switch is low, the PmodMIC is in use
		if(digital<12'd2)					// lowest level (no LEDs on)
				led <= 8'b00000000;
			else if(digital<12'd100)	// first level
				led <= 8'b00000001;
			else if(digital<12'd400)
				led <= 8'b00000011;
			else if(digital<12'd700)
				led <= 8'b00000111;
			else if(digital<12'd1000)
				led <= 8'b00001111;
			else if(digital<12'd1300)
				led <= 8'b00011111;
			else if(digital<12'd1600)
				led <= 8'b00111111;
			else if(digital<12'd1900)
				led <= 8'b01111111;
			else if(digital>12'd1900)	// highest level (all LEDs on)
				led <= 8'b11111111;
		end
	end
endmodule
