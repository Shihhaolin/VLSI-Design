# VLSI-Design

This was my first academic project in my graduate studies under course EE6325: VLSI Design under professor Dr. Carl Sechen. This was a big project that I would try to complete the whole VLSI Design process from front end( RTL design/ Verification) to backend design(Layout). Here is the design flow of the project:

1.RTL Coding (Frontend part)  
2.Synthesis  
3.Layout designing (Backend part)   
4.Library creation (then use this libraty to Synthesis all needed gate)  
5.Routing, floorplanning and Static Time Analysis   


&nbsp;
&nbsp;




***1.RTL codeing(Frontend part)***  
At first, I would trying to define what can of arbitary digital circuit I want to design in HDL(Hardware Description Langurage) form. For this project I chose The Arithmetic and Logic Unit (ALU) of two 32 bit inputs and one 33 bit output. It was able to welling performing 8 operations. There are two common HDL VHDL and Verilog. In this case, I used Verilog-HDL to design ALU. My behavioral code for this project is alu.v. Then create another testbench file with enough coverage to test my behavioral code. There are a lot of simulator in the world. I choose the Xilinx Vivado as my simulator. If anything is good, then we can go to next step.

***2.Synthesis***  
The behavioral code is the code which for people to read and write. To design the circuit in the real world, I need to convert my Verilog file into gate level. This process is called Synthesis.  Design Vision from Synopsys is the software I need. Once I synthesis the behavoral code, the system would generate a structural code. The phase also known as Mapped Netlist. The structural code will tell me the total number gate in the project. In the project, the circuit should contain more than 3000 gate which is required by professor. 

***3.Layout designing(Backend part)***  
In this part, I am going to design gate cells. The tool I used for layout designing is Cadence Virtuso and Schematic which can help me to complete Backend design. At the beginning, I started with the layout of inverter and schematic of inverter. By minimizing the size(the total area) of the cells after performing DRC(Design Rule Checker)/LVS(Layout vs. Schematic)/QRC and generate Spice netlist file(.sp file), I will get the (EDP)Energy-Delay Product value. Then keeping adjusting the cells's Wn((Width of the n-mos) and Wp((Width of the p-mos) to get the optimum EDP. Repeat the whole process to get all required cells such as NAND, NOR, D Flipflop,etc.

***4.Library creation (then use this libraty to Synthesis all needed gate)***  
Using SiliconSmart ACE craeting a .lib file from the Cadence library which consist of all the required layouts.
From this .lib file, creating the .db file using Library Compiler (LC shell).
Then Using this library, synthesize the original verilog code to generate a new mapped netlist based on new library.

***5.Routing, floorplanning and Static Time Analysis***  




