// megafunction wizard: %RAM: 2-PORT%
// GENERATION: STANDARD
// VERSION: WM1.0
// MODULE: altsyncram 

// ============================================================
// File Name: Stack_RAM.v
// Megafunction Name(s):
// 			altsyncram
// ============================================================
// ************************************************************
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE!
//
// 5.1 Build 213 01/19/2006 SP 1 SJ Full Version
// ************************************************************


//Copyright (C) 1991-2006 Altera Corporation
//Your use of Altera Corporation's design tools, logic functions 
//and other software and tools, and its AMPP partner logic 
//functions, and any output files any of the foregoing 
//(including device programming or simulation files), and any 
//associated documentation or information are expressly subject 
//to the terms and conditions of the Altera Program License 
//Subscription Agreement, Altera MegaCore Function License 
//Agreement, or other applicable license agreement, including, 
//without limitation, that your use is for the sole purpose of 
//programming logic devices manufactured by Altera and sold by 
//Altera or its authorized distributors.  Please refer to the 
//applicable agreement for further details.


// synopsys translate_off
`timescale 1 ps / 1 ps
// synopsys translate_on
module Stack_RAM (
	clock,
	data,
	rdaddress,
	wraddress,
	wren,
	q);

	input	  clock;
	input	[9:0]  data;
	input	[9:0]  rdaddress;
	input	[9:0]  wraddress;
	input	  wren;
	output	[9:0]  q;

	wire [9:0] sub_wire0;
	wire [9:0] q = sub_wire0[9:0];

	altsyncram	altsyncram_component (
				.wren_a (wren),
				.clock0 (clock),
				.address_a (wraddress),
				.address_b (rdaddress),
				.data_a (data),
				.q_b (sub_wire0),
				.aclr0 (1'b0),
				.aclr1 (1'b0),
				.clocken1 (1'b1),
				.clocken0 (1'b1),
				.q_a (),
				.data_b ({10{1'b1}}),
				.rden_b (1'b1),
				.wren_b (1'b0),
				.byteena_b (1'b1),
				.addressstall_a (1'b0),
				.byteena_a (1'b1),
				.addressstall_b (1'b0),
				.clock1 (1'b1));
	defparam
		altsyncram_component.address_reg_b = "CLOCK0",
		altsyncram_component.clock_enable_input_a = "BYPASS",
		altsyncram_component.clock_enable_input_b = "BYPASS",
		altsyncram_component.clock_enable_output_b = "BYPASS",
		altsyncram_component.intended_device_family = "Cyclone II",
		altsyncram_component.lpm_type = "altsyncram",
		altsyncram_component.numwords_a = 640,
		altsyncram_component.numwords_b = 640,
		altsyncram_component.operation_mode = "DUAL_PORT",
		altsyncram_component.outdata_aclr_b = "NONE",
		altsyncram_component.outdata_reg_b = "CLOCK0",
		altsyncram_component.power_up_uninitialized = "FALSE",
		altsyncram_component.ram_block_type = "M4K",
		altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE",
		altsyncram_component.widthad_a = 10,
		altsyncram_component.widthad_b = 10,
		altsyncram_component.width_a = 10,
		altsyncram_component.width_b = 10,
		altsyncram_component.width_byteena_a = 1;


endmodule

// ============================================================
// CNX file retrieval info
// ============================================================
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0"
// Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0"
// Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0"
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8"
// Retrieval info: PRIVATE: BlankMemory NUMERIC "1"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0"
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0"
// Retrieval info: PRIVATE: CLRdata NUMERIC "0"
// Retrieval info: PRIVATE: CLRq NUMERIC "0"
// Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0"
// Retrieval info: PRIVATE: CLRrren NUMERIC "0"
// Retrieval info: PRIVATE: CLRwraddress NUMERIC "0"
// Retrieval info: PRIVATE: CLRwren NUMERIC "0"
// Retrieval info: PRIVATE: Clock NUMERIC "0"
// Retrieval info: PRIVATE: Clock_A NUMERIC "0"
// Retrieval info: PRIVATE: Clock_B NUMERIC "0"
// Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0"
// Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_B"
// Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0"
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0"
// Retrieval info: PRIVATE: JTAG_ID STRING "NONE"
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0"
// Retrieval info: PRIVATE: MEMSIZE NUMERIC "6400"
// Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0"
// Retrieval info: PRIVATE: MIFfilename STRING ""
// Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "2"
// Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "1"
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2"
// Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2"
// Retrieval info: PRIVATE: REGdata NUMERIC "1"
// Retrieval info: PRIVATE: REGq NUMERIC "1"
// Retrieval info: PRIVATE: REGrdaddress NUMERIC "1"
// Retrieval info: PRIVATE: REGrren NUMERIC "1"
// Retrieval info: PRIVATE: REGwraddress NUMERIC "1"
// Retrieval info: PRIVATE: REGwren NUMERIC "1"
// Retrieval info: PRIVATE: UseDPRAM NUMERIC "1"
// Retrieval info: PRIVATE: VarWidth NUMERIC "0"
// Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "10"
// Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "10"
// Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "10"
// Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "10"
// Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0"
// Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0"
// Retrieval info: PRIVATE: enable NUMERIC "0"
// Retrieval info: PRIVATE: rden NUMERIC "0"
// Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK0"
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS"
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_B STRING "BYPASS"
// Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_B STRING "BYPASS"
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II"
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram"
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "640"
// Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "640"
// Retrieval info: CONSTANT: OPERATION_MODE STRING "DUAL_PORT"
// Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "NONE"
// Retrieval info: CONSTANT: OUTDATA_REG_B STRING "CLOCK0"
// Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE"
// Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M4K"
// Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_MIXED_PORTS STRING "DONT_CARE"
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "10"
// Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "10"
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "10"
// Retrieval info: CONSTANT: WIDTH_B NUMERIC "10"
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1"
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock
// Retrieval info: USED_PORT: data 0 0 10 0 INPUT NODEFVAL data[9..0]
// Retrieval info: USED_PORT: q 0 0 10 0 OUTPUT NODEFVAL q[9..0]
// Retrieval info: USED_PORT: rdaddress 0 0 10 0 INPUT NODEFVAL rdaddress[9..0]
// Retrieval info: USED_PORT: wraddress 0 0 10 0 INPUT NODEFVAL wraddress[9..0]
// Retrieval info: USED_PORT: wren 0 0 0 0 INPUT VCC wren
// Retrieval info: CONNECT: @data_a 0 0 10 0 data 0 0 10 0
// Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0
// Retrieval info: CONNECT: q 0 0 10 0 @q_b 0 0 10 0
// Retrieval info: CONNECT: @address_a 0 0 10 0 wraddress 0 0 10 0
// Retrieval info: CONNECT: @address_b 0 0 10 0 rdaddress 0 0 10 0
// Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.v TRUE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.inc FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.cmp FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.bsf FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_inst.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_bb.v FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_waveforms.html FALSE
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_wave*.jpg FALSE

// megafunction wizard: %RAM: 2-PORT% 
// GENERATION: STANDARD 
// VERSION: WM1.0 
// MODULE: altsyncram  
 
// ============================================================ 
// File Name: Stack_2X_RAM.v 
// Megafunction Name(s): 
// 			altsyncram 
// ============================================================ 
// ************************************************************ 
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE! 
// 
// 5.1 Build 213 01/19/2006 SP 1 SJ Full Version 
// ************************************************************ 
 
 
//Copyright (C) 1991-2006 Altera Corporation 
//Your use of Altera Corporation's design tools, logic functions  
//and other software and tools, and its AMPP partner logic  
//functions, and any output files any of the foregoing  
//(including device programming or simulation files), and any  
//associated documentation or information are expressly subject  
//to the terms and conditions of the Altera Program License  
//Subscription Agreement, Altera MegaCore Function License  
//Agreement, or other applicable license agreement, including,  
//without limitation, that your use is for the sole purpose of  
//programming logic devices manufactured by Altera and sold by  
//Altera or its authorized distributors.  Please refer to the  
//applicable agreement for further details. 
 
 
// synopsys translate_off 
`timescale 1 ps / 1 ps 
// synopsys translate_on 
module Stack_2X_RAM ( 
	clock, 
	data, 
	rdaddress, 
	wraddress, 
	wren, 
	q); 
 
	input	  clock; 
	input	[9:0]  data; 
	input	[9:0]  rdaddress; 
	input	[9:0]  wraddress; 
	input	  wren; 
	output	[9:0]  q; 
 
	wire [9:0] sub_wire0; 
	wire [9:0] q = sub_wire0[9:0]; 
 
	altsyncram	altsyncram_component ( 
				.wren_a (wren), 
				.clock0 (clock), 
				.address_a (wraddress), 
				.address_b (rdaddress), 
				.data_a (data), 
				.q_b (sub_wire0), 
				.aclr0 (1'b0), 
				.aclr1 (1'b0), 
				.clocken1 (1'b1), 
				.clocken0 (1'b1), 
				.q_a (), 
				.data_b ({10{1'b1}}), 
				.rden_b (1'b1), 
				.wren_b (1'b0), 
				.byteena_b (1'b1), 
				.addressstall_a (1'b0), 
				.byteena_a (1'b1), 
				.addressstall_b (1'b0), 
				.clock1 (1'b1)); 
	defparam 
		altsyncram_component.address_reg_b = "CLOCK0", 
		altsyncram_component.clock_enable_input_a = "BYPASS", 
		altsyncram_component.clock_enable_input_b = "BYPASS", 
		altsyncram_component.clock_enable_output_b = "BYPASS", 
		altsyncram_component.intended_device_family = "Cyclone II", 
		altsyncram_component.lpm_type = "altsyncram", 
		altsyncram_component.numwords_a = 640, 
		altsyncram_component.numwords_b = 640, 
		altsyncram_component.operation_mode = "DUAL_PORT", 
		altsyncram_component.outdata_aclr_b = "NONE", 
		altsyncram_component.outdata_reg_b = "CLOCK0", 
		altsyncram_component.power_up_uninitialized = "FALSE", 
		altsyncram_component.ram_block_type = "M4K", 
		altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE", 
		altsyncram_component.widthad_a = 10, 
		altsyncram_component.widthad_b = 10, 
		altsyncram_component.width_a = 10, 
		altsyncram_component.width_b = 10, 
		altsyncram_component.width_byteena_a = 1; 
 
 
endmodule 
 
// ============================================================ 
// CNX file retrieval info 
// ============================================================ 
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0" 
// Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0" 
// Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0" 
// Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0" 
// Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0" 
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8" 
// Retrieval info: PRIVATE: BlankMemory NUMERIC "1" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0" 
// Retrieval info: PRIVATE: CLRdata NUMERIC "0" 
// Retrieval info: PRIVATE: CLRq NUMERIC "0" 
// Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0" 
// Retrieval info: PRIVATE: CLRrren NUMERIC "0" 
// Retrieval info: PRIVATE: CLRwraddress NUMERIC "0" 
// Retrieval info: PRIVATE: CLRwren NUMERIC "0" 
// Retrieval info: PRIVATE: Clock NUMERIC "0" 
// Retrieval info: PRIVATE: Clock_A NUMERIC "0" 
// Retrieval info: PRIVATE: Clock_B NUMERIC "0" 
// Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0" 
// Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0" 
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_B" 
// Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0" 
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II" 
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0" 
// Retrieval info: PRIVATE: JTAG_ID STRING "NONE" 
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0" 
// Retrieval info: PRIVATE: MEMSIZE NUMERIC "6400" 
// Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0" 
// Retrieval info: PRIVATE: MIFfilename STRING "" 
// Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "2" 
// Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "1" 
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2" 
// Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2" 
// Retrieval info: PRIVATE: REGdata NUMERIC "1" 
// Retrieval info: PRIVATE: REGq NUMERIC "1" 
// Retrieval info: PRIVATE: REGrdaddress NUMERIC "1" 
// Retrieval info: PRIVATE: REGrren NUMERIC "1" 
// Retrieval info: PRIVATE: REGwraddress NUMERIC "1" 
// Retrieval info: PRIVATE: REGwren NUMERIC "1" 
// Retrieval info: PRIVATE: UseDPRAM NUMERIC "1" 
// Retrieval info: PRIVATE: VarWidth NUMERIC "0" 
// Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "10" 
// Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "10" 
// Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "10" 
// Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "10" 
// Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0" 
// Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: enable NUMERIC "0" 
// Retrieval info: PRIVATE: rden NUMERIC "0" 
// Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK0" 
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS" 
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_B STRING "BYPASS" 
// Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_B STRING "BYPASS" 
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II" 
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram" 
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "640" 
// Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "640" 
// Retrieval info: CONSTANT: OPERATION_MODE STRING "DUAL_PORT" 
// Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "NONE" 
// Retrieval info: CONSTANT: OUTDATA_REG_B STRING "CLOCK0" 
// Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE" 
// Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M4K" 
// Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_MIXED_PORTS STRING "DONT_CARE" 
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "10" 
// Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "10" 
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "10" 
// Retrieval info: CONSTANT: WIDTH_B NUMERIC "10" 
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1" 
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock 
// Retrieval info: USED_PORT: data 0 0 10 0 INPUT NODEFVAL data[9..0] 
// Retrieval info: USED_PORT: q 0 0 10 0 OUTPUT NODEFVAL q[9..0] 
// Retrieval info: USED_PORT: rdaddress 0 0 10 0 INPUT NODEFVAL rdaddress[9..0] 
// Retrieval info: USED_PORT: wraddress 0 0 10 0 INPUT NODEFVAL wraddress[9..0] 
// Retrieval info: USED_PORT: wren 0 0 0 0 INPUT VCC wren 
// Retrieval info: CONNECT: @data_a 0 0 10 0 data 0 0 10 0 
// Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0 
// Retrieval info: CONNECT: q 0 0 10 0 @q_b 0 0 10 0 
// Retrieval info: CONNECT: @address_a 0 0 10 0 wraddress 0 0 10 0 
// Retrieval info: CONNECT: @address_b 0 0 10 0 rdaddress 0 0 10 0 
// Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0 
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM.v TRUE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM.inc FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM.cmp FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM.bsf FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM_inst.v FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM_bb.v FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM_waveforms.html FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_2X_RAM_wave*.jpg FALSE 

// megafunction wizard: %RAM: 2-PORT% 
// GENERATION: STANDARD 
// VERSION: WM1.0 
// MODULE: altsyncram  
 
// ============================================================ 
// File Name: Stack_4X_RAM.v 
// Megafunction Name(s): 
// 			altsyncram 
// ============================================================ 
// ************************************************************ 
// THIS IS A WIZARD-GENERATED FILE. DO NOT EDIT THIS FILE! 
// 
// 5.1 Build 213 01/19/2006 SP 1 SJ Full Version 
// ************************************************************ 
 
 
//Copyright (C) 1991-2006 Altera Corporation 
//Your use of Altera Corporation's design tools, logic functions  
//and other software and tools, and its AMPP partner logic  
//functions, and any output files any of the foregoing  
//(including device programming or simulation files), and any  
//associated documentation or information are expressly subject  
//to the terms and conditions of the Altera Program License  
//Subscription Agreement, Altera MegaCore Function License  
//Agreement, or other applicable license agreement, including,  
//without limitation, that your use is for the sole purpose of  
//programming logic devices manufactured by Altera and sold by  
//Altera or its authorized distributors.  Please refer to the  
//applicable agreement for further details. 
 
 
// synopsys translate_off 
`timescale 1 ps / 1 ps 
// synopsys translate_on 
module Stack_4X_RAM ( 
	clock, 
	data, 
	rdaddress, 
	wraddress, 
	wren, 
	q); 
 
	input	  clock; 
	input	[9:0]  data; 
	input	[8:0]  rdaddress; 
	input	[8:0]  wraddress; 
	input	  wren; 
	output	[9:0]  q; 
 
	wire [9:0] sub_wire0; 
	wire [9:0] q = sub_wire0[9:0]; 
 
	altsyncram	altsyncram_component ( 
				.wren_a (wren), 
				.clock0 (clock), 
				.address_a (wraddress), 
				.address_b (rdaddress), 
				.data_a (data), 
				.q_b (sub_wire0), 
				.aclr0 (1'b0), 
				.aclr1 (1'b0), 
				.clocken1 (1'b1), 
				.clocken0 (1'b1), 
				.q_a (), 
				.data_b ({10{1'b1}}), 
				.rden_b (1'b1), 
				.wren_b (1'b0), 
				.byteena_b (1'b1), 
				.addressstall_a (1'b0), 
				.byteena_a (1'b1), 
				.addressstall_b (1'b0), 
				.clock1 (1'b1)); 
	defparam 
		altsyncram_component.address_reg_b = "CLOCK0", 
		altsyncram_component.clock_enable_input_a = "BYPASS", 
		altsyncram_component.clock_enable_input_b = "BYPASS", 
		altsyncram_component.clock_enable_output_b = "BYPASS", 
		altsyncram_component.intended_device_family = "Cyclone II", 
		altsyncram_component.lpm_type = "altsyncram", 
		altsyncram_component.numwords_a = 320, 
		altsyncram_component.numwords_b = 320, 
		altsyncram_component.operation_mode = "DUAL_PORT", 
		altsyncram_component.outdata_aclr_b = "NONE", 
		altsyncram_component.outdata_reg_b = "CLOCK0", 
		altsyncram_component.power_up_uninitialized = "FALSE", 
		altsyncram_component.ram_block_type = "M4K", 
		altsyncram_component.read_during_write_mode_mixed_ports = "DONT_CARE", 
		altsyncram_component.widthad_a = 9, 
		altsyncram_component.widthad_b = 9, 
		altsyncram_component.width_a = 10, 
		altsyncram_component.width_b = 10, 
		altsyncram_component.width_byteena_a = 1; 
 
 
endmodule 
 
// ============================================================ 
// CNX file retrieval info 
// ============================================================ 
// Retrieval info: PRIVATE: ADDRESSSTALL_A NUMERIC "0" 
// Retrieval info: PRIVATE: ADDRESSSTALL_B NUMERIC "0" 
// Retrieval info: PRIVATE: BYTEENA_ACLR_A NUMERIC "0" 
// Retrieval info: PRIVATE: BYTEENA_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: BYTE_ENABLE_A NUMERIC "0" 
// Retrieval info: PRIVATE: BYTE_ENABLE_B NUMERIC "0" 
// Retrieval info: PRIVATE: BYTE_SIZE NUMERIC "8" 
// Retrieval info: PRIVATE: BlankMemory NUMERIC "1" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_A NUMERIC "0" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_INPUT_B NUMERIC "0" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_A NUMERIC "0" 
// Retrieval info: PRIVATE: CLOCK_ENABLE_OUTPUT_B NUMERIC "0" 
// Retrieval info: PRIVATE: CLRdata NUMERIC "0" 
// Retrieval info: PRIVATE: CLRq NUMERIC "0" 
// Retrieval info: PRIVATE: CLRrdaddress NUMERIC "0" 
// Retrieval info: PRIVATE: CLRrren NUMERIC "0" 
// Retrieval info: PRIVATE: CLRwraddress NUMERIC "0" 
// Retrieval info: PRIVATE: CLRwren NUMERIC "0" 
// Retrieval info: PRIVATE: Clock NUMERIC "0" 
// Retrieval info: PRIVATE: Clock_A NUMERIC "0" 
// Retrieval info: PRIVATE: Clock_B NUMERIC "0" 
// Retrieval info: PRIVATE: IMPLEMENT_IN_LES NUMERIC "0" 
// Retrieval info: PRIVATE: INDATA_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: INDATA_REG_B NUMERIC "0" 
// Retrieval info: PRIVATE: INIT_FILE_LAYOUT STRING "PORT_B" 
// Retrieval info: PRIVATE: INIT_TO_SIM_X NUMERIC "0" 
// Retrieval info: PRIVATE: INTENDED_DEVICE_FAMILY STRING "Cyclone II" 
// Retrieval info: PRIVATE: JTAG_ENABLED NUMERIC "0" 
// Retrieval info: PRIVATE: JTAG_ID STRING "NONE" 
// Retrieval info: PRIVATE: MAXIMUM_DEPTH NUMERIC "0" 
// Retrieval info: PRIVATE: MEMSIZE NUMERIC "3200" 
// Retrieval info: PRIVATE: MEM_IN_BITS NUMERIC "0" 
// Retrieval info: PRIVATE: MIFfilename STRING "" 
// Retrieval info: PRIVATE: OPERATION_MODE NUMERIC "2" 
// Retrieval info: PRIVATE: OUTDATA_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: OUTDATA_REG_B NUMERIC "1" 
// Retrieval info: PRIVATE: RAM_BLOCK_TYPE NUMERIC "2" 
// Retrieval info: PRIVATE: READ_DURING_WRITE_MODE_MIXED_PORTS NUMERIC "2" 
// Retrieval info: PRIVATE: REGdata NUMERIC "1" 
// Retrieval info: PRIVATE: REGq NUMERIC "1" 
// Retrieval info: PRIVATE: REGrdaddress NUMERIC "1" 
// Retrieval info: PRIVATE: REGrren NUMERIC "1" 
// Retrieval info: PRIVATE: REGwraddress NUMERIC "1" 
// Retrieval info: PRIVATE: REGwren NUMERIC "1" 
// Retrieval info: PRIVATE: UseDPRAM NUMERIC "1" 
// Retrieval info: PRIVATE: VarWidth NUMERIC "0" 
// Retrieval info: PRIVATE: WIDTH_READ_A NUMERIC "10" 
// Retrieval info: PRIVATE: WIDTH_READ_B NUMERIC "10" 
// Retrieval info: PRIVATE: WIDTH_WRITE_A NUMERIC "10" 
// Retrieval info: PRIVATE: WIDTH_WRITE_B NUMERIC "10" 
// Retrieval info: PRIVATE: WRADDR_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: WRADDR_REG_B NUMERIC "0" 
// Retrieval info: PRIVATE: WRCTRL_ACLR_B NUMERIC "0" 
// Retrieval info: PRIVATE: enable NUMERIC "0" 
// Retrieval info: PRIVATE: rden NUMERIC "0" 
// Retrieval info: CONSTANT: ADDRESS_REG_B STRING "CLOCK0" 
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_A STRING "BYPASS" 
// Retrieval info: CONSTANT: CLOCK_ENABLE_INPUT_B STRING "BYPASS" 
// Retrieval info: CONSTANT: CLOCK_ENABLE_OUTPUT_B STRING "BYPASS" 
// Retrieval info: CONSTANT: INTENDED_DEVICE_FAMILY STRING "Cyclone II" 
// Retrieval info: CONSTANT: LPM_TYPE STRING "altsyncram" 
// Retrieval info: CONSTANT: NUMWORDS_A NUMERIC "320" 
// Retrieval info: CONSTANT: NUMWORDS_B NUMERIC "320" 
// Retrieval info: CONSTANT: OPERATION_MODE STRING "DUAL_PORT" 
// Retrieval info: CONSTANT: OUTDATA_ACLR_B STRING "NONE" 
// Retrieval info: CONSTANT: OUTDATA_REG_B STRING "CLOCK0" 
// Retrieval info: CONSTANT: POWER_UP_UNINITIALIZED STRING "FALSE" 
// Retrieval info: CONSTANT: RAM_BLOCK_TYPE STRING "M4K" 
// Retrieval info: CONSTANT: READ_DURING_WRITE_MODE_MIXED_PORTS STRING "DONT_CARE" 
// Retrieval info: CONSTANT: WIDTHAD_A NUMERIC "9" 
// Retrieval info: CONSTANT: WIDTHAD_B NUMERIC "9" 
// Retrieval info: CONSTANT: WIDTH_A NUMERIC "10" 
// Retrieval info: CONSTANT: WIDTH_B NUMERIC "10" 
// Retrieval info: CONSTANT: WIDTH_BYTEENA_A NUMERIC "1" 
// Retrieval info: USED_PORT: clock 0 0 0 0 INPUT NODEFVAL clock 
// Retrieval info: USED_PORT: data 0 0 10 0 INPUT NODEFVAL data[9..0] 
// Retrieval info: USED_PORT: q 0 0 10 0 OUTPUT NODEFVAL q[9..0] 
// Retrieval info: USED_PORT: rdaddress 0 0 9 0 INPUT NODEFVAL rdaddress[8..0] 
// Retrieval info: USED_PORT: wraddress 0 0 9 0 INPUT NODEFVAL wraddress[8..0] 
// Retrieval info: USED_PORT: wren 0 0 0 0 INPUT VCC wren 
// Retrieval info: CONNECT: @data_a 0 0 10 0 data 0 0 10 0 
// Retrieval info: CONNECT: @wren_a 0 0 0 0 wren 0 0 0 0 
// Retrieval info: CONNECT: q 0 0 10 0 @q_b 0 0 10 0 
// Retrieval info: CONNECT: @address_a 0 0 9 0 wraddress 0 0 9 0 
// Retrieval info: CONNECT: @address_b 0 0 9 0 rdaddress 0 0 9 0 
// Retrieval info: CONNECT: @clock0 0 0 0 0 clock 0 0 0 0 
// Retrieval info: LIBRARY: altera_mf altera_mf.altera_mf_components.all 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.v TRUE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.inc FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.cmp FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM.bsf FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_inst.v FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_bb.v FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_waveforms.html FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_RAM_wave*.jpg FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM.v TRUE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM.inc FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM.cmp FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM.bsf FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM_inst.v FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM_bb.v FALSE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM_waveforms.html TRUE 
// Retrieval info: GEN_FILE: TYPE_NORMAL Stack_4X_RAM_wave*.jpg FALSE 