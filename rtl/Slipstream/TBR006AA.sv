
module TBR006AA
(
    input OE,
    input [7:0] A,
    output SO,
    output [15:0] DO,
    output [15:0] DE
);

reg [23:0] mem [255:0];

assign SO = 1'b0;
assign DE = OE ? 16'b1111111111111111 : 16'b0000000000000000;
assign DO = mem[A][15:0];

initial begin
    $readmemb("/home/snax/fpga/OLDDIRS/SS/SINTAB.ROM",mem);
end

endmodule

