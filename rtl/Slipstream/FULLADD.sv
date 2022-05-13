
/* One bit full adder */

module FULLADD
(
    input A,
    input B,
    input CI,
    output Q,
    output CO
);

wire aabL, aobL, aab, qt, qtL, ciL, cot;

assign aabL = ~ (A & B);    //Aabgen          := NAND2 (a, b, aabL);
assign aobL = ~ (A | B);    //Aobgen          := NOR2 (a, b, aobL);
assign aab = ~aabL;         //Aabinv          := INV1 (aabL, aab);
assign qt = ~(aab | aobL);  //Qtgen           := NOR2 (aab, aobL, qt);
assign qtL = ~qt;           //Qtciinv         := INV2 (qt, ci, qtL, ciL);
assign ciL = ~CI;           //
assign Q = ~((qt & CI)|(qtL & ciL));    //Qgen            := AOI (qt, ci, qtL, ciL, q);
assign cot = ~(CI | aab);               //Cotgen          := NOR2 (ci, aab, cot);
assign CO = ~(cot | aobL);              //Cogen           := NOR2 (cot, aobL, co);

endmodule