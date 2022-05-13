module m_SYNDCNTC0                                                              //[LEGO.NET:00207] MODULE SYNDCNTC0;
(                                                                               //[LEGO.NET:00207] MODULE SYNDCNTC0;

    input    MasterClock,
    input    CLK,                                                               //[LEGO.NET:00209] INPUTS	CLK,CLL;
    input    CLL,                                                               //[LEGO.NET:00209] INPUTS	CLK,CLL;
    output    Q,                                                                //[LEGO.NET:00210] OUTPUTS	Q,QB;
    output    QB                                                                //[LEGO.NET:00210] OUTPUTS	Q,QB;
);                                                                              //[LEGO.NET:00207] MODULE SYNDCNTC0;
                                                                                //[LEGO.NET:00211] LEVEL FUNCTION;
wire DIL;                                                                       //[LEGO.NET:00214] DIL_(DIL) = ND2A(QB,CLL);		/* clear/count */

assign DIL = ~(QB & CLL);                                                       //[LEGO.NET:00214] DIL_(DIL) = ND2A(QB,CLL);		/* clear/count */

FD1A Q__inst (.MasterClock(MasterClock),.q(QB),.qL(Q),.d(DIL),.clk(CLK));       //[LEGO.NET:00216] Q_(QB,Q) = FD1A(DIL,CLK);

endmodule                                                                       //[LEGO.NET:00218] END MODULE;
