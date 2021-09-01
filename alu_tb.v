module alu_test_verilog_tb;


	
	reg [31:0] input_X;//desiding inputs as 32 bits;
	reg [31:0] input_Y;
	reg [2:0] opcode;
	reg clock;
	reg reset;

	
	wire [31:0] output_Z;
	wire [31:0] mux;

 
 
  alu_test_verilog object(
              .input_X (input_X), 
              .input_Y (input_Y),  
              .opcode  (opcode),  
              .clock   (clock),
              .reset   (reset),
              .output_Z (output_Z)
              );

	initial begin
	
   input_X = 32'b11110101001101011000011111001010;//Input data;
	
	 input_Y = 32'b11110101101001011000010110101101;//Input data;
	
	      reset = 1;
	 #100 reset = 0;
	 

	
	#100 opcode = 3'b000; //plus;
	
	#100 opcode = 3'b001; //minus;

	#100 opcode = 3'b010; //bit-wise AND
	
	#100 opcode = 3'b011; //bit-wise OR

	#100 opcode = 3'b100; //bit-wise XOR;
	
	#100 opcode = 3'b101; //bit-wise XNOR;
	
	#100 opcode = 3'b110; //remainder

	#100 opcode = 3'b111; //divide; 
	
	
	end

//set the cclock

initial begin
  #50 clock = 0;
end

always begin
  #50 clock = 0;
  #50 clock = 1;
end
      
endmodule
