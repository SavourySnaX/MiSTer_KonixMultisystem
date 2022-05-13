module BD4TR
(
    input   I,
    input   A,
    input   EN,
    input   TN,
    input   PI,
    output  reg O,
    output  reg E,
    output  reg ZI,
    output  reg PO,

    input MasterClock
);

always @(posedge MasterClock)
begin

    PO <= ~(I & PI);
    ZI <= I;
    E <= ~(~((~EN) & TN));
    O <= E ? A : I;

end

//assign PO = ~(I & PI);
//assign ZI = I;
//assign E = ~(~((~EN) & TN));
//assign O = E ? A : I;

endmodule
