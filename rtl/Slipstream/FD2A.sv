/* DTYPE LATCH reset Low */

module FD2A
(
	input   MasterClock,
	output	q,
	output	qL,
	input	d,
	input	clk,
	input	rL
);

reg latchedData = 1'b0;
assign q = latchedData;
assign qL = ~latchedData;

`ifdef USE_MCLOCK_TIME

reg old_clock;
always @(posedge MasterClock)
begin
	old_clock<=clk;
	if (~rL) begin
		latchedData <= 1'b0;
	end else if (old_clock==0 && clk==1) begin
		latchedData <= d;
	end
end

`else

always @(posedge clk or negedge rL)
begin
	if (~rL)
		latchedData <= 1'b0;
	else
		latchedData <= d;
end

`endif


endmodule



