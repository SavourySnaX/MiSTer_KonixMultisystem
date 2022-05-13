/* SR LATCH */

module SR
(
    input   S,
    input   R,
    output  Q,
    output  QL
);

reg latchedData;

assign Q = latchedData;
assign QL = ~latchedData;

always @(negedge S, negedge R)
begin
    if (~S)
        latchedData<=1'b1;
    else if (~R)
        latchedData<=1'b0;
end

endmodule