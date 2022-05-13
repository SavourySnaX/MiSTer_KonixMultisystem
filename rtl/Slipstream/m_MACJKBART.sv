module m_MACJKBART                                                              //[QMACROS.NET:00054] MODULE MACJKBART;
(                                                                               //[QMACROS.NET:00054] MODULE MACJKBART;

    input    MasterClock,
    input    J,                                                                 //[QMACROS.NET:00056] INPUTS	J,KL,CLK;
    input    KL,                                                                //[QMACROS.NET:00056] INPUTS	J,KL,CLK;
    input    CLK,                                                               //[QMACROS.NET:00056] INPUTS	J,KL,CLK;
    output    Q,                                                                //[QMACROS.NET:00057] OUTPUTS	Q,QL;
    output    QL                                                                //[QMACROS.NET:00057] OUTPUTS	Q,QL;
);                                                                              //[QMACROS.NET:00054] MODULE MACJKBART;

                                                                                //[QMACROS.NET:00059] LEVEL FUNCTION;
wire K;                                                                         //[QMACROS.NET:00061] ONE_(K)=N1A(KL);
assign K = ~KL;                                                                 //[QMACROS.NET:00061] ONE_(K)=N1A(KL);
FJK1A TWO__inst (.MasterClock(MasterClock),.q(Q),.qL(QL),.j(J),.k(K),.clk(CLK));//[QMACROS.NET:00062] TWO_(Q,QL)=FJK1A(J,K,CLK);
endmodule                                                                       //[QMACROS.NET:00063] END MODULE;
