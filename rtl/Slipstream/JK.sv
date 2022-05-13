/* JK is a JK flip flop with reset. J, K and R are active high */

module JK
(
    input   j,
    input   k,
    input   r,
    input   clk,
    output  q,
    output  qL
);

wire KL,K;
assign KL = ~(k | r);
assign K = ~KL;

FJK1A Q_inst
(
    .q      (q),
    .qL     (qL),
    .j      (j),
    .k      (K),
    .clk    (clk)
);

endmodule