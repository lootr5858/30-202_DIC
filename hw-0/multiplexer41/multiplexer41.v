/* !!! --- multiplexer specifications --- !!!
	
	multiplexer: 4 -> 1
	
	inputs:
		- switchs:
			- S1
			- S2
			
		- data:
			- A
			- B
			- C
			- D
			
	outputs:
		- data X
	
	control:
		- 2 bits
		- S1, S2 switches
		- logic:
			- 00: data A
			- 01: data B
			- 10: data C
			- 11: data D
*/


/*	---------- !!! ----------
	multiplexer 41 top module
	----------- !!! --------- */
module multiplexer41
(
	input wire			clk,
	input wire			reset,
	input wire			enable,
	input wire			A,
	input wire			B,
	input wire 			C,
	input wire			D,
	input wire			S1,
	input wire			S2,

	output wire			X	
);

// top module i/o


// top module logic


// top module connections



endmodule


/*	---------- !!! ----------
	multiplexer 41 cp module
	----------- !!! --------- */
