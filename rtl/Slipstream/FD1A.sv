/* DTYPE LATCH */

module FD1A
(
	input   MasterClock,
	output	q,
	output	qL,
	input	d,
	input	clk
);

reg latchedData = 1'b0;

assign q = latchedData;
assign qL = ~latchedData;

`ifdef USE_MCLOCK_TIME

reg old_clock;

always @(posedge MasterClock)
begin
	old_clock<=clk;
	if (old_clock==0 && clk==1)
    	latchedData <= d;
end

`else

always @(posedge clk)
begin	
	latchedData <= d;
end


`endif
endmodule




