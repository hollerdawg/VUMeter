`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: Holleran Industries
// Engineer: Ryan Holleran
// 
// Create Date:    23:08:42 11/19/2013 
// Design Name: VU Meter
// Module Name: serialCom
// Project Name: Digital design final
// Target Devices: Nexys 3
// Tool versions: 
// Description: This module creates a communication between the AD7476A 12-bit A/D
// converter and the Nexys-3. This module is designed to be used with a driver
// that has a 12.5 Mhz clock frequency.
//
// Dependencies: 12.5 Mhz clock input.
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module serialCom(
	input clk,						//12.5 Mhz clock from clkDiv
	input reset,					//reset system
	input Data1,					//Data from the Pmod ADC
	output reg [11:0] digital,	//converted analog to digital data
	output reg CS,					//Tells the ADC when to start sending data
	output reg done,				//tells meterOp when to initiate
	input Data2,
	output reg CS2,
	input switch
   );
	
	reg [1:0] CSelect;	//selects the state that the FSM is in
	reg [4:0] cnt;			//counts how many clock cycles go by ( ~1 bit is transferred every clock cycle)
	reg [15:4] temp;		//temporarily holds all the data from the ADC before shifting them to the data output register
	reg Begin;				//tells the state machine when to begin to shift the bits to the data output register
	
	parameter	fsm1 = 2'b01, //parameters to show which state the FSM is in
					fsm2 = 2'b10,
					fsm3 = 2'b11;
					
		always @(posedge clk or posedge reset) begin
			if(reset) begin	//execute when reset is pushed
				Begin <= 1'b0;
				cnt <= 4'b0;
				CS <= 1'b1;
				CS2 <= 1'b1;
				temp <= 15'b000000000000000;
				digital <= 12'b000000000000;
				done <= 1'b1;
				CSelect <= fsm1;
			end
			else begin
				case(CSelect)		//begin the case statements for the FSM.
				fsm1	:	if (Begin == 1'b1 && cnt < 16) 
								CSelect <= fsm2;				 //state 1, throws the done flag
							else begin							 //and resets the registers for				 
								done <= 1'b1;					 //another transfer.
								Begin <= 1'b1;
								cnt <= 4'b0;
								CS <= 1'b1;
								CS2 <= 1'b1;
								temp <= 12'b00000000000;
								digital <= 12'b000000000000;
								CSelect <= fsm1;
							end
				fsm2	:	if (Begin == 1'b1 && cnt == 16)
								CSelect <= fsm3;				 //state 2, begins transferring
							else begin							 //the data rom the ADC to the
								CS <= 1'b0;	 					 //temp register.
								CS2 <= 1'b0;
								done <= 1'b0;
								if(cnt > 3) begin
									if(switch) begin
										temp[19-cnt] <= Data1;
									end
									else if(!switch) begin
										temp[19-cnt] <= Data2;
									end
								end
								cnt <= cnt + 1'b1;	
								CSelect <= fsm2;
							end
				fsm3	:	if (Begin == 1'b0) 				 //state 3, puts the temp register
								CSelect <= fsm1;				 //to the digital output register
							else begin							 //while discarding the leading 0's.
								done <= 1'b0;
								CS <= 1'b1;
								CS2 <= 1'b1;
								digital [11:0] <= temp [15:4];
								Begin <= 1'b0;
								CSelect <= fsm3;
							end
				endcase
			end
		end
	endmodule

