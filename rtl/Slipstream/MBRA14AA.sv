
module MBRA14AA
(
    input WR,
    input CS1,
    input CS2,
    input [15:0] DI,
    input [7:0] A,
    output SO,
    output [15:0] DO,
    output [15:0] DE
);

// Force initial palette to black to prevent mad flickering before loading first rom
(* ram_init_file = "rtl/pal.mif" *) reg [15:0] mem [255:0];

assign SO = 1'b0;
assign DE = CS1 & CS2 ? 16'b1111111111111111 : 16'b0000000000000000;
assign DO = mem[A];

//initial begin
//  $readmemh("../pal.mem", mem);
//end

always @(posedge WR) begin
    mem[A] <= DI;
end

endmodule
