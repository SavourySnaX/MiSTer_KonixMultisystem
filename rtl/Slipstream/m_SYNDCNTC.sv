module m_SYNDCNTC                                                               //[LEGO.NET:00183] MODULE SYNDCNTC;
(                                                                               //[LEGO.NET:00183] MODULE SYNDCNTC;

    input    MasterClock,
    input    CLK,                                                               //[LEGO.NET:00185] INPUTS	CLK,CLL,CI;
    input    CLL,                                                               //[LEGO.NET:00185] INPUTS	CLK,CLL,CI;
    input    CI,                                                                //[LEGO.NET:00185] INPUTS	CLK,CLL,CI;
    output    Q,                                                                //[LEGO.NET:00186] OUTPUTS	Q,QB,CO;
    output    QB,                                                               //[LEGO.NET:00186] OUTPUTS	Q,QB,CO;
    output    CO                                                                //[LEGO.NET:00186] OUTPUTS	Q,QB,CO;
);                                                                              //[LEGO.NET:00183] MODULE SYNDCNTC;
                                                                                //[LEGO.NET:00187] LEVEL FUNCTION;
wire CIL;                                                                       //[LEGO.NET:00190] CIL_(CIL) = N1A(CI);
wire DI_0;                                                                      //[LEGO.NET:00193] DI_0_(DI_0) = AO2A(CI,Q,CIL,QB);	/* toggle/static */
wire DIL;                                                                       //[LEGO.NET:00195] DIL_(DIL) = ND2A(DI_0,CLL);		/* clear/count */

assign CIL = ~CI;                                                               //[LEGO.NET:00190] CIL_(CIL) = N1A(CI);


assign DI_0 = ~((CI & Q)|(CIL & QB));                                           //[LEGO.NET:00193] DI_0_(DI_0) = AO2A(CI,Q,CIL,QB);	/* toggle/static */

assign DIL = ~(DI_0 & CLL);                                                     //[LEGO.NET:00195] DIL_(DIL) = ND2A(DI_0,CLL);		/* clear/count */


FD1A Q__inst (.MasterClock(MasterClock),.q(QB),.qL(Q),.d(DIL),.clk(CLK));       //[LEGO.NET:00198] Q_(QB,Q) = FD1A(DIL,CLK);

assign CO = ~(CIL | Q);                                                         //[LEGO.NET:00200] CO_(CO) = NR2A(CIL,Q);

endmodule                                                                       //[LEGO.NET:00202] END MODULE;
