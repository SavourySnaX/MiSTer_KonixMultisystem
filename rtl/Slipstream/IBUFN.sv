module IBUFN
(
    input A,
    input PI,
    output Z,
    output PO
);

assign Z = ~A;
assign PO = ~(PI & ~A); 

endmodule
