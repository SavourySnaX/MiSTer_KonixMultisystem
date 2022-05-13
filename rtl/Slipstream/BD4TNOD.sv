module BD4TNOD
(
    input   I,
    input   EN,
    input   TN,
    input   PI,
    output  reg O,
    output  reg E,
    output  reg ZI,
    output  reg PO,

    input   MasterClock
);

always @(posedge MasterClock)
begin

PO <= ~((~I) & PI);
ZI <= ~I;
E <= ~(~((~EN) & TN));
O <= E ? 1'b0 : I;

end

//assign PO = ~((~I) & PI);
//assign ZI = ~I;
//assign E = ~(~((~EN) & TN));
//assign O = E ? 1'b0 : I;

endmodule
