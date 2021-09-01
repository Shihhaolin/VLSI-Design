/////////////////////////////////////////////////////////////
// Created by: Synopsys DC Expert(TM) in wire load mode
// Version   : L-2016.03-SP3
// Date      : Tue Sep  8 21:46:26 2020
/////////////////////////////////////////////////////////////


module alu_test_verilog ( input_X, input_Y, opcode, clock, reset, output_Z );
  input [31:0] input_X;
  input [31:0] input_Y;
  input [2:0] opcode;
  output [32:0] output_Z;
  input clock, reset;
  wire   N76, N77, N79, N80, N81, N82, N84, N85, N86, N87, N88, N89, N90, N91,
         N92, N93, N94, N95, N130, N131, N132, N133, N134, N135, N136, N137,
         N138, N139, N140, N141, N142, N143, N144, N145, N146, N147, N148,
         N149, N150, N151, N152, N153, N154, N155, N156, N157, N158, N159,
         N160, N161, N162, N163, N164, N165, N166, N167, N168, N169, N170,
         N171, N172, N173, N174, N175, N176, N177, N178, N179, N180, N181,
.
.
.//skip some gate, it is way to much in my porject
.
.
.
inv U3846 ( .in(n3711), .out(N294) );
  inv U3847 ( .in(n3712), .out(N293) );
  inv U3848 ( .in(n3713), .out(N292) );
  inv U3849 ( .in(n3714), .out(N291) );
endmodule
