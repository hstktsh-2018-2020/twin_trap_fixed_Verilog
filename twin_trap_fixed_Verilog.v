`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:29:52 01/31/2018 
// Design Name: 
// Module Name:    twin_trap_fixed_Verilog 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module twin_trap_fixed_Verilog(
	input CLK,
    output trans1,
    output trans2,
	 output trans3,
	 output trans4,
	 output trans5,
	 output trans6,
	 output trans7,
	 output trans8,
	 output trans9,
	 output trans10,
	 output trans11,
	 output trans12,
	 output trans13,
	 output trans14,
	 output trans15,
	 output trans16,
	 output trans17,
	 output trans18,
	 output trans19,
	 output trans20,
	 output trans21,
	 output trans22,
	 output trans23,
	 output trans24,
	 output trans25,
	 output trans26,
	 output trans27,
	 output trans28,
	 output trans29,
	 output trans30,
	 output trans31,
	 output trans32,
	 output trans33,
	 output trans34,
	 output trans35,
	 output trans36,
	 output trans37,
	 output trans38,
	 output trans39,
	 output trans40,
	 output trans41,
	 output trans42,
	 output trans43,
	 output trans44,
	 output trans45,
	 output trans46,
	 output trans47,
	 output trans48,
	 output trans49
    );

	//define signals
	reg [10:0] pwm_base_reg = 11'h000;
	reg [9:0] pwm1_duty_reg = 10'h000;
	reg [9:0] pwm2_duty_reg = 10'h000;
	reg [9:0] pwm3_duty_reg = 10'h000;
	reg [9:0] pwm4_duty_reg = 10'h000;
	reg [9:0] pwm5_duty_reg = 10'h000;
	reg [9:0] pwm6_duty_reg = 10'h000;
	reg [9:0] pwm7_duty_reg = 10'h000;
	reg [9:0] pwm8_duty_reg = 10'h000;
	reg [9:0] pwm9_duty_reg = 10'h000;
	reg [9:0] pwm10_duty_reg = 10'h000;
	reg [9:0] pwm11_duty_reg = 10'h000;	
	reg [9:0] pwm12_duty_reg = 10'h000;	
	reg [9:0] pwm13_duty_reg = 10'h000;
	reg [9:0] pwm14_duty_reg = 10'h000;
	reg [9:0] pwm15_duty_reg = 10'h000;
	reg [9:0] pwm16_duty_reg = 10'h000;
	reg [9:0] pwm17_duty_reg = 10'h000;
	
	reg [6:0] base_cycle_counter_reg = 7'h00;
	reg [15:0] count_base_reg = 16'h0000;
	
	wire pwm1;
	wire pwm2;
	wire pwm3;
	wire pwm4;
	wire pwm5;
	wire pwm6;
	wire pwm7;
	wire pwm8;
	wire pwm9;
	wire pwm10;
	wire pwm11;
	wire pwm12;
	wire pwm13;
	wire pwm14;
	wire pwm15;
	wire pwm16;
	wire pwm17;
	
	wire pwm1_out;
	wire pwm2_out;
	wire pwm3_out;
	wire pwm4_out;
	wire pwm5_out;
	wire pwm6_out;
	wire pwm7_out;
	wire pwm8_out;
	wire pwm9_out;
	wire pwm10_out;
	wire pwm11_out;
	wire pwm12_out;
	wire pwm13_out;
	wire pwm14_out;
	wire pwm15_out;
	wire pwm16_out;
	wire pwm17_out;
	wire pwmbp;
	

	//PWM Base Cycle Generate
	/* Calculation
		base count = 50[MHz] / 40 [kHz] = 1250
		0 ~ 1249 -> 1250 count
	*/
	always @(posedge CLK) begin  //CB16RE
		if (pwmbp == 1'b1) begin  //R:pwmbp
			pwm_base_reg <= 11'h000;  //h:hexadecimal, assign 0 to all bits
		end
		else begin
			pwm_base_reg <= pwm_base_reg + 1'b1;  //increment
		end
	end
	
	assign pwmbp = (pwm_base_reg[10:0] == 11'd1249) ? 1'b1 : 1'b0;  //COMP16
	
	//focus at 10cm
	assign pwm1 = (pwm_base_reg[10:0] == 11'd0) ? 1'b1 : 1'b0;  //COMP16
	assign pwm2 = (pwm_base_reg[10:0] == 11'd130) ? 1'b1 : 1'b0;  //COMP16
	assign pwm3 = (pwm_base_reg[10:0] == 11'd146) ? 1'b1 : 1'b0;  //COMP16
	assign pwm4 = (pwm_base_reg[10:0] == 11'd195) ? 1'b1 : 1'b0;  //COMP16
	assign pwm5 = (pwm_base_reg[10:0] == 11'd337) ? 1'b1 : 1'b0;  //COMP16
	assign pwm6 = (pwm_base_reg[10:0] == 11'd403) ? 1'b1 : 1'b0;  //COMP16
	assign pwm7 = (pwm_base_reg[10:0] == 11'd480) ? 1'b1 : 1'b0;  //COMP16
	assign pwm8 = (pwm_base_reg[10:0] == 11'd541) ? 1'b1 : 1'b0;  //COMP16
	assign pwm9 = (pwm_base_reg[10:0] == 11'd625) ? 1'b1 : 1'b0;  //COMP16
	assign pwm10 = (pwm_base_reg[10:0] == 11'd755) ? 1'b1 : 1'b0;  //COMP16
   assign pwm11 = (pwm_base_reg[10:0] == 11'd771) ? 1'b1 : 1'b0;  //COMP16
   assign pwm12 = (pwm_base_reg[10:0] == 11'd820) ? 1'b1 : 1'b0;  //COMP16
   assign pwm13 = (pwm_base_reg[10:0] == 11'd962) ? 1'b1 : 1'b0;  //COMP16
   assign pwm14 = (pwm_base_reg[10:0] == 11'd980) ? 1'b1 : 1'b0;  //COMP16
   assign pwm15 = (pwm_base_reg[10:0] == 11'd1028) ? 1'b1 : 1'b0;  //COMP16
   assign pwm16 = (pwm_base_reg[10:0] == 11'd1105) ? 1'b1 : 1'b0;  //COMP16
   assign pwm17 = (pwm_base_reg[10:0] == 11'd1166) ? 1'b1 : 1'b0;  //COMP16


	//PWM Duty Ratio Generate
    always @(posedge CLK) begin  //CB16RE
        if (pwm1 == 1'b1) begin  //R:pwm1
            pwm1_duty_reg <= 11'h000;
        end
        else if (pwm1_out == 1'b1) begin  //CE:pwm1_out
            pwm1_duty_reg <= pwm1_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm2 == 1'b1) begin  //R:pwm2
            pwm2_duty_reg <= 11'h000;
        end
        else if (pwm2_out == 1'b1) begin  //CE:pwm2_out
            pwm2_duty_reg <= pwm2_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm3 == 1'b1) begin  //R:pwm3
            pwm3_duty_reg <= 11'h000;
        end
        else if (pwm3_out == 1'b1) begin  //CE:pwm3_out
            pwm3_duty_reg <= pwm3_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm4 == 1'b1) begin  //R:pwm4
            pwm4_duty_reg <= 11'h000;
        end
        else if (pwm4_out == 1'b1) begin  //CE:pwm4_out
            pwm4_duty_reg <= pwm4_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm5 == 1'b1) begin  //R:pwm5
            pwm5_duty_reg <= 11'h000;
        end
        else if (pwm5_out == 1'b1) begin  //CE:pwm5_out
            pwm5_duty_reg <= pwm5_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm6 == 1'b1) begin  //R:pwm6
            pwm6_duty_reg <= 11'h000;
        end
        else if (pwm6_out == 1'b1) begin  //CE:pwm6_out
            pwm6_duty_reg <= pwm6_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm7 == 1'b1) begin  //R:pwm7
            pwm7_duty_reg <= 11'h000;
        end
        else if (pwm7_out == 1'b1) begin  //CE:pwm7_out
            pwm7_duty_reg <= pwm7_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm8 == 1'b1) begin  //R:pwm8
            pwm8_duty_reg <= 11'h000;
        end
        else if (pwm8_out == 1'b1) begin  //CE:pwm8_out
            pwm8_duty_reg <= pwm8_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm9 == 1'b1) begin  //R:pwm9
            pwm9_duty_reg <= 11'h000;
        end
        else if (pwm9_out == 1'b1) begin  //CE:pwm9_out
            pwm9_duty_reg <= pwm9_duty_reg + 1'b1;
        end
    end
    
    always @(posedge CLK) begin  //CB16RE
        if (pwm10 == 1'b1) begin  //R:pwm10
            pwm10_duty_reg <= 11'h000;
        end
        else if (pwm10_out == 1'b1) begin  //CE:pwm10_out
            pwm10_duty_reg <= pwm10_duty_reg + 1'b1;
        end
    end
    
   always @(posedge CLK) begin  //CB16RE
        if (pwm11 == 1'b1) begin  //R:pwm11
            pwm11_duty_reg <= 11'h000;
        end
        else if (pwm11_out == 1'b1) begin  //CE:pwm11_out
            pwm11_duty_reg <= pwm11_duty_reg + 1'b1;
        end
    end

   always @(posedge CLK) begin  //CB16RE
        if (pwm12 == 1'b1) begin  //R:pwm12
            pwm12_duty_reg <= 11'h000;
        end
        else if (pwm12_out == 1'b1) begin  //CE:pwm12_out
            pwm12_duty_reg <= pwm12_duty_reg + 1'b1;
        end
    end

   always @(posedge CLK) begin  //CB16RE
        if (pwm13 == 1'b1) begin  //R:pwm13
            pwm13_duty_reg <= 11'h000;
        end
        else if (pwm13_out == 1'b1) begin  //CE:pwm13_out
            pwm13_duty_reg <= pwm13_duty_reg + 1'b1;
        end
    end

    always @(posedge CLK) begin  //CB16RE
        if (pwm14 == 1'b1) begin  //R:pwm14
            pwm14_duty_reg <= 11'h000;
        end
        else if (pwm14_out == 1'b1) begin  //CE:pwm14_out
            pwm14_duty_reg <= pwm14_duty_reg + 1'b1;
        end
    end
	 
        always @(posedge CLK) begin  //CB16RE
        if (pwm15 == 1'b1) begin  //R:pwm15
            pwm15_duty_reg <= 11'h000;
        end
        else if (pwm15_out == 1'b1) begin  //CE:pwm15_out
            pwm15_duty_reg <= pwm15_duty_reg + 1'b1;
        end
    end
	 
        always @(posedge CLK) begin  //CB16RE
        if (pwm16 == 1'b1) begin  //R:pwm16
            pwm16_duty_reg <= 11'h000;
        end
        else if (pwm16_out == 1'b1) begin  //CE:pwm16_out
            pwm16_duty_reg <= pwm16_duty_reg + 1'b1;
        end
    end
	 
        always @(posedge CLK) begin  //CB16RE
        if (pwm17 == 1'b1) begin  //R:pwm17
            pwm17_duty_reg <= 11'h000;
        end
        else if (pwm17_out == 1'b1) begin  //CE:pwm17_out
            pwm17_duty_reg <= pwm17_duty_reg + 1'b1;
        end
    end
    

	//duty ratio = 50% -> 1250 / 2 = 625
	assign pwm1_out = (pwm1_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm2_out = (pwm2_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm3_out = (pwm3_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm4_out = (pwm4_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm5_out = (pwm5_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm6_out = (pwm6_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm7_out = (pwm7_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm8_out = (pwm8_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm9_out = (pwm9_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
	assign pwm10_out = (pwm10_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16
   assign pwm11_out = (pwm11_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm12_out = (pwm12_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm13_out = (pwm13_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm14_out = (pwm14_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm15_out = (pwm15_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm16_out = (pwm16_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
   assign pwm17_out = (pwm17_duty_reg[9:0] == 10'd624) ? 1'b0 : 1'b1;  //COMP16 
	
	//To transducers
   assign trans1 = pwm17_out;
   assign trans2 = pwm4_out;
   assign trans3 = pwm5_out;
   assign trans4 = pwm13_out;
   assign trans5 = pwm12_out;
   assign trans6 = pwm8_out;
   assign trans7 = pwm2_out;
   assign trans8 = pwm4_out;
   assign trans9 = pwm7_out;
   assign trans10 = pwm9_out;
   assign trans11 = pwm1_out;
   assign trans12 = pwm16_out;
   assign trans13 = pwm12_out;
   assign trans14 = pwm6_out;
   assign trans15 = pwm5_out;
   assign trans16 = pwm9_out;
   assign trans17 = pwm11_out;
   assign trans18 = pwm3_out;
   assign trans19 = pwm1_out;
   assign trans20 = pwm13_out;
   assign trans21 = pwm8_out;
   assign trans22 = pwm5_out;
   assign trans23 = pwm9_out;
   assign trans24 = pwm11_out;
   assign trans25 = pwm3_out;
   assign trans26 = pwm1_out;
   assign trans27 = pwm13_out;
   assign trans28 = pwm8_out;
   assign trans29 = pwm4_out;
   assign trans30 = pwm7_out;
   assign trans31 = pwm9_out;
   assign trans32 = pwm1_out;
   assign trans33 = pwm16_out;
   assign trans34 = pwm12_out;
   assign trans35 = pwm6_out;
   assign trans36 = pwm17_out;
   assign trans37 = pwm4_out;
   assign trans38 = pwm5_out;
   assign trans39 = pwm13_out;
   assign trans40 = pwm12_out;
   assign trans41 = pwm8_out;
   assign trans42 = pwm2_out;
   assign trans43 = pwm10_out;
   assign trans44 = pwm15_out;
   assign trans45 = pwm17_out;
   assign trans46 = pwm8_out;
   assign trans47 = pwm6_out;
   assign trans48 = pwm2_out;
   assign trans49 = pwm14_out;

endmodule

