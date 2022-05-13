module SCHMITC
(
    input A,
    input PI,
    output reg Z,
    output reg PO,

    input MasterClock
);

always @(posedge MasterClock)
begin

    Z <= A;
    PO <= ~(PI & A); 

end

//assign Z = A;
//assign PO = ~(PI & A); 

endmodule

