
module MBRA30AA
(
    input WR,
    input CS1,
    input CS2,
    input [15:0] DI,
    input [6:0] A,
    output SO,
    output [15:0] DO,
    output [15:0] DE
);

reg [15:0] mem [127:0];

assign SO = 1'b0;
assign DE = CS1 & CS2 ? 16'b1111111111111111 : 16'b0000000000000000;
assign DO = mem[A];

always @(posedge WR) begin
    mem[A] <= DI;
end

endmodule

