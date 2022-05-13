/* DTYPE LATCH preset Low */

module FD4A
(
	input   MasterClock,
	output	q,
	output	qL,
	input	d,
	input	clk,
	input	sL
);

reg latchedData = 1'b1;

assign q = latchedData;
assign qL = ~latchedData;

`ifdef USE_MCLOCK_TIME

reg old_clock;
always @(posedge MasterClock)
begin
	old_clock<=clk;
	if (~sL) begin
		latchedData <= 1'b1;
	end else if (old_clock==0 && clk==1) begin
		latchedData <= d;
	end
end

`else

always @(posedge clk or negedge sL)
begin
	if (~sL)
		latchedData <= 1'b1;
	else
		latchedData <= d;
end

`endif

endmodule




