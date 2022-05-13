module m_SYNDCNTP                                                               //[LEGO.NET:00159] MODULE SYNDCNTP;
(                                                                               //[LEGO.NET:00159] MODULE SYNDCNTP;

    input    MasterClock,
    input    CLK,                                                               //[LEGO.NET:00161] INPUTS	CLK,PRL,CI;
    input    PRL,                                                               //[LEGO.NET:00161] INPUTS	CLK,PRL,CI;
    input    CI,                                                                //[LEGO.NET:00161] INPUTS	CLK,PRL,CI;
    output    Q,                                                                //[LEGO.NET:00162] OUTPUTS	Q,QB,CO;
    output    QB,                                                               //[LEGO.NET:00162] OUTPUTS	Q,QB,CO;
    output    CO                                                                //[LEGO.NET:00162] OUTPUTS	Q,QB,CO;
);                                                                              //[LEGO.NET:00159] MODULE SYNDCNTP;
                                                                                //[LEGO.NET:00163] LEVEL FUNCTION;
wire CIL;                                                                       //[LEGO.NET:00166] CIL_(CIL) = N1A(CI);
wire DIL;                                                                       //[LEGO.NET:00169] DIL_(DIL) = AO2A(CI,QB,CIL,Q);	/* toggle/static */
wire DI;                                                                        //[LEGO.NET:00171] DI_(DI) = ND2A(DIL,PRL);		/* preset/count */

assign CIL = ~CI;                                                               //[LEGO.NET:00166] CIL_(CIL) = N1A(CI);


assign DIL = ~((CI & QB)|(CIL & Q));                                            //[LEGO.NET:00169] DIL_(DIL) = AO2A(CI,QB,CIL,Q);	/* toggle/static */

assign DI = ~(DIL & PRL);                                                       //[LEGO.NET:00171] DI_(DI) = ND2A(DIL,PRL);		/* preset/count */


FD1A Q__inst (.MasterClock(MasterClock),.q(Q),.qL(QB),.d(DI),.clk(CLK));        //[LEGO.NET:00174] Q_(Q,QB) = FD1A(DI,CLK);

assign CO = ~(CIL | Q);                                                         //[LEGO.NET:00176] CO_(CO) = NR2A(CIL,Q);

endmodule                                                                       //[LEGO.NET:00178] END MODULE;
