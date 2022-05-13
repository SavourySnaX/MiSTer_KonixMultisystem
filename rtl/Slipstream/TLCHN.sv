// Bassed on Inverted LVTTL Input buffer

module TLCHN
(
    input I,
    input PI,
    output reg O,
    output reg PO,

    input MasterClock
);

always @(posedge MasterClock)
begin

    PO <= ~(PI & O);
    O <= ~I;

end

//assign PO = ~(PI & O);
//assign O = ~I;

endmodule