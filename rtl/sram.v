module sram
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
  input odd,
  input even,
  output [data_width-1:0] Q
);

// 0000 even    32K
// 0000 odd     32K
// 8000 even    32K
// 8000 odd     32K

(* ram_init_file = file *) reg [data_width-1:0] memory[(1<<addr_width)-1:0];
reg [data_width-1:0] dout = {data_width{1'b0}};

assign Q = oe & cs ? dout : {data_width{1'b0}};

always @(posedge clk) begin
  if (cs) begin
    if (wr) 
    begin
        if (even)
            memory[addr][7:0] <= din;
        else if (odd)
            memory[addr][15:8] <= din;
        else
           memory[addr] <= din;
    end
    else 
    begin
        if (even)
            dout<=memory[addr][7:0];
        else if (odd)
            dout<=memory[addr][15:8];
        else
            dout<=memory[addr];
    end
  end
end

/*initial begin
  $readmemh(file, memory);
end*/

endmodule

