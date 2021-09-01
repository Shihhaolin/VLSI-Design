module alu_test_verilog( input_X,  input_Y,  opcode,  clock, reset, output_Z);
	
	parameter Data_width=32;//building system as 32bits;
	
	input [Data_width-1:0]  input_X,input_Y;	// define two input;
	input         clock;   //define clock;
	input         reset;			//define reset;
	input [2:0]   opcode;			//define operation code;
	
	
	
	output reg [Data_width:0] output_Z;
	

	
	reg [Data_width:0] mux ;   //multiplexer;
	
	
	//designing ALU
		
		
		always@( input_X,  input_Y,  opcode,  clock, reset)
		begin
		case (opcode)
		
		
			3'b000 : mux <= input_X +  input_Y; //plus;
			3'b001 : mux <= input_X -  input_Y; //minus;
			3'b010 : mux <= input_X &  input_Y; //and;
			3'b011 : mux <= input_X |  input_Y; //or;
			3'b100 : mux <= input_X ^  input_Y; //XOR;
			3'b101 : mux <= input_X ^~ input_Y; //XNOR;
			3'b110 : mux <= input_X %  input_Y; //modules;
			3'b111 : mux <= input_X /  input_Y; //divide;
			
		
		
			endcase
		end
		
		always@(posedge clock)
			
			if (reset) begin
				output_Z=0;
				end
				
				
			else begin
			  output_Z =mux;
			
				end
			
endmodule
