`timescale 1ns / 1ps

module decadeCounter_tb();

// define clock period
localparam period = 5;
localparam cycle  = period * 2;

// testbench i/o
reg			clk;
reg			reset;
reg			enable;

wire			ten;
wire [3:0]	count;


decade_counter decade_counter
(
	.clk		(clk),
	.reset	(reset),
	.enable	(enable),
	
	.ten		(ten),
	.count	(count)
);

/* ------ !! ------
	clock generation
	------ !! ------ */
initial clk <= 1'b1;
always #(period) clk <= ~clk;

/* ------ !! ------
	 reset control
	------ !! ------ */
initial
begin
	
	reset	 <= 1'b0;
	enable <= 1'b0;
	
	#(cycle)
	
	reset  <= 1'b1;
	
	#(cycle)
	
	reset <= 1'b0;

end

/* ------ !! ------
	 SIMULATION !!!
	------ !! ------ */
initial
begin

	#(cycle * 4)
	
	enable <= 1'b1;
	
	#(cycle * 20)
	
	enable <= 1'b0;
	
	#(cycle)
	
	reset <= 1'b1;
	
	#(cycle)
	
	reset <= 1'b0;
	
	#(cycle)
	
	enable <= 1'b1;
	
	#(cycle * 25)
	
	enable <= 1'b0;
	
	#(cycle)
	
	enable <= 1'b1;
	
	#(cycle *4)
	
	enable <= 1'b0;
	
	#(cycle * 10)
	
	$finish();
	
end

endmodule
	
	
	