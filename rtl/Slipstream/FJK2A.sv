/* JK flip flop - with clear */

module FJK2A
(
    input MasterClock,
    input j,
    input k,
    input clk,
    input rL,
    output q,
    output qL
);

reg latchedData = 1'b0;

assign q = latchedData;
assign qL= ~latchedData;

`ifdef USE_MCLOCK_TIME

reg old_clock;
always @(posedge MasterClock)
begin
    old_clock<=clk;
    if (~rL)
        latchedData <= 1'b0;
    else
	    if (old_clock==0 && clk==1) begin
            case ({j,k})
                2'b00 : latchedData <= latchedData;
                2'b01 : latchedData <= 1'b0;
                2'b10 : latchedData <= 1'b1;
                2'b11 : latchedData <= ~latchedData;
            endcase
        end
end

`else

always @(posedge clk or negedge rL)
begin
    if (~rL)
        latchedData <= 1'b0;
    else
        case ({j,k})
            2'b00 : latchedData <= latchedData;
            2'b01 : latchedData <= 1'b0;
            2'b10 : latchedData <= 1'b1;
            2'b11 : latchedData <= ~latchedData;
        endcase
end

`endif

endmodule
