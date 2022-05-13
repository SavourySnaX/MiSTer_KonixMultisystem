/* SYNCNT is a middle stage of a synchronous load and clear
up counter. Load is active low, clear is active high, carry-in is
active high */

module SYNCNT
(
    input D,
    input CLK,
    input CLR,
    input LDL,
    input CI,
    output Q,
    output QB,
    output CO
);
/*
reg value;
reg carry;

always @(posedge CLK)
begin
    
    if (~LDL)
        value <= D;
    else if (CLR)
        value <= 1'b0;
    else if (value & CI)
        value <= 1'b0;
    else
        value <= value ^ CI;
end

assign Q = value;
assign QB = ~value;
assign CO = CI & QB;
*/

wire CIL,LD;
assign CIL = ~CI;
assign LD = ~LDL;

wire [1:0] DIn;
wire DI;
assign DIn[0] = ~((CI & Q)|(CIL & QB));     // toggle/static 
assign DIn[1] = ~((D & LD)|(DIn[0] & LDL)); // load/count 
assign DI = ~(DIn[1] | CLR);                // clear 

FD1A Q_inst
(
    .q   (Q),
    .qL  (QB),
    .d   (DI),
    .clk (CLK)
);

assign CO = ~(CIL | QB);

endmodule
