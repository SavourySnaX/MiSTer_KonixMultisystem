/* Define a loadable synchronous counter element for a down counter
        Qold    Cin  |  Qnew    Cout
        -------------+--------------
        0       0    |  1       0
        0       1    |  0       1
        1       0    |  0       1
        1       1    |  1       1

 */

module LSCNTEL
(
    input   D,
    input   LD,
    input   LDL,
    input   CLK,
    input   CI,
    input   RSTL,
    output  Q,
    output  QL,
    output  CO
);

wire QNT_0,QNT_1;

assign CO = CI | Q;                                 // CO_(CO) = OR2A(CI,Q);
assign QNT_0 = ~(CI ^ Q);                           // QNT_0_(QNT_0) = ENA(CI,Q);
assign QNT_1 = ~((~(LDL & QNT_0))&(~(LD & D)));     // QNT_1_(QNT_1) = MUX2(LDL,QNT_0,LD,D);
FD2A QFF_inst (.q(Q),.qL(QL),.d(QNT_1),.clk(CLK),.rL(RSTL));

endmodule