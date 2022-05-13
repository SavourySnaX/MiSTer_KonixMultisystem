
module ram
#(
  parameter addr_width=16,
  parameter data_width=8,
  parameter file="zero.mif"
)
(
  input clk,
  input [data_width-1:0] din,
  input [addr_width-1:0] addr,
  input cs,
  input oe,
  input wr,
  output [data_width-1:0] Q
);

(* ram_init_file = file *) reg [data_width-1:0] memory[(1<<addr_width)-1:0];
reg [data_width-1:0] dout = {data_width{1'b0}};

assign Q = dout;//oe & cs ? dout : {data_width{1'b0}};

always @(posedge clk) begin
  if (cs) begin
    if (wr) memory[addr] <= din;
    else dout <= memory[addr];
  end
end

//initial begin
//  $readmemh(file, memory);
//end

endmodule
