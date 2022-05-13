module m_RIPEL                                                                  //[OUTERCNT.NET:00092] MODULE RIPEL;
(                                                                               //[OUTERCNT.NET:00092] MODULE RIPEL;

    input    MasterClock,
    input    D,                                                                 //[OUTERCNT.NET:00094] INPUTS	D,LD,LDL,CLK;
    input    LD,                                                                //[OUTERCNT.NET:00094] INPUTS	D,LD,LDL,CLK;
    input    LDL,                                                               //[OUTERCNT.NET:00094] INPUTS	D,LD,LDL,CLK;
    input    CLK,                                                               //[OUTERCNT.NET:00094] INPUTS	D,LD,LDL,CLK;
    output    Q,                                                                //[OUTERCNT.NET:00095] OUTPUTS	Q,QL;
    output    QL                                                                //[OUTERCNT.NET:00095] OUTPUTS	Q,QL;
);                                                                              //[OUTERCNT.NET:00092] MODULE RIPEL;
                                                                                //[OUTERCNT.NET:00096] LEVEL FUNCTION;
wire CLR;                                                                       //[OUTERCNT.NET:00099] PREGEN_(CLR) = OR2A(D,LDL);
wire PRE;                                                                       //[OUTERCNT.NET:00100] CLRGEN_(PRE) = ND2A(D,LD);

assign CLR = D | LDL;                                                           //[OUTERCNT.NET:00099] PREGEN_(CLR) = OR2A(D,LDL);
assign PRE = ~(D & LD);                                                         //[OUTERCNT.NET:00100] CLRGEN_(PRE) = ND2A(D,LD);
FD3A RIPLATCH__inst (.MasterClock(MasterClock),.q(Q),.qL(QL),.d(QL),.clk(CLK),.rL(CLR),.sL(PRE));//[OUTERCNT.NET:00101] RIPLATCH_(Q,QL) = FD3A(QL,CLK,CLR,PRE);

endmodule                                                                       //[OUTERCNT.NET:00103] END MODULE;
