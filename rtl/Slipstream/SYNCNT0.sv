/* SYNCNT is a middle stage of a synchronous load and clear
up counter. Load is active low, clear is active high, carry-in is
active high */

module SYNCNT0
(
    input D,
    input CLK,
    input CLR,
    input LDL,
    output Q,
    output QB
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

assign Q = ~value;
assign QB = value;
assign CO = CI & QB;

*/

wire LD;
assign LD = ~LDL;

wire DI_1;
wire DI;
assign DI_1 = ~((D & LD)|(QB & LDL)); // load/count 
assign DI = ~(DI_1 | CLR);                // clear 

FD1A Q_inst
(
    .q   (Q),
    .qL  (QB),
    .d   (DI),
    .clk (CLK)
);

endmodule

