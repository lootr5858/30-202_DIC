/* !!! --- decade counter specification --- !!!
	
	counter:
		- +1 per posedge
		- max: 4'b1001
			- ten -> HIGH @ max
			- reset @ max
	
	reset:
		- reset HIGH
*/


/* ---------- !!! ----------
	decade counter top module
	---------- !!! ---------- */
module decade_counter
(
	input wire			clk,
	input wire			reset,
	input wire			enable,
	
	output wire			ten,
	output wire [3:0] count
);

// top module i/o
wire [3:0] count_current;
wire [3:0] count_new;

// top module logic
assign count = count_current;

// connect compute modules
decadeCounter_dp decadeCounter_dp
(
	.reset		(reset),
	.enable		(enable),
	.count_current	(count_current),
	
	.ten			(ten),
	.count_new	(count_new)
);

PipeReg #(4) cnt
(
	.clk		(clk),
	.reset	(reset),
	.enable	(1),
	.D			(count_new),
	
	.Q			(count_current)
);

endmodule


/* ---------- !!! ----------
	decade counter data path
	---------- !!! ---------- */
module decadeCounter_dp
(
	input wire			reset,
	input wire			enable,
	input wire [3:0]	count_current,
	
	output reg			ten,
	output reg  [3:0] count_new
);

// dp module i/o
reg [3:0]	count_max = 4'b1001;
wire			reached;

// dp module logic
assign reached = (count_current == count_max) ? 1'b1 : 1'b0;

always @ *
begin
	
	casex ({reset, enable, reached})
	
	// counter disabled
	{1'b0, 1'b0, 1'bx}: begin
									count_new = count_current;
									ten		 = 1'b0;
								end
	
	// reset
	{1'b1, 1'bx, 1'bx}: begin
									count_new = 4'b0;
									ten		 = 1'b0;
								end
	
	// counting
	// count < max
	{1'b0, 1'b1, 1'b0}: begin
									count_new = count_current + 4'b1;
									ten		 = 1'b0;
								end
	
	// count == max
	{1'b0, 1'b1, 1'b1}:	begin
									count_new = 4'b0;
									ten		 = 1'b1;
								end
	
	endcase
	
end

endmodule


/* ---------- !!! ----------
	   pipe register module
	---------- !!! ---------- */
module PipeReg #(parameter	BITWIDTH = 1) (
	input	wire							clk,
	input	wire							reset,
	input	wire							enable,
	input	wire	[BITWIDTH-1 : 0]	D,
	
	output reg	[BITWIDTH-1 : 0]	Q
);

	always @ (posedge clk)
	begin 
		if 	  (reset)	Q <= {BITWIDTH{1'b0}}; 
		else if (enable)	Q <= D;
	end

endmodule
