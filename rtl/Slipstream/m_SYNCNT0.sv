module m_SYNCNT0                                                                //[LEGO.NET:00049] MODULE SYNCNT0;
(                                                                               //[LEGO.NET:00049] MODULE SYNCNT0;

    input    MasterClock,
    input    D,                                                                 //[LEGO.NET:00051] INPUTS	D,CLK,CLR,LDL;
    input    CLK,                                                               //[LEGO.NET:00051] INPUTS	D,CLK,CLR,LDL;
    input    CLR,                                                               //[LEGO.NET:00051] INPUTS	D,CLK,CLR,LDL;
    input    LDL,                                                               //[LEGO.NET:00051] INPUTS	D,CLK,CLR,LDL;
    output    Q,                                                                //[LEGO.NET:00052] OUTPUTS	Q,QB;
    output    QB                                                                //[LEGO.NET:00052] OUTPUTS	Q,QB;
);                                                                              //[LEGO.NET:00049] MODULE SYNCNT0;
                                                                                //[LEGO.NET:00053] LEVEL FUNCTION;
wire LD;                                                                        //[LEGO.NET:00056] LD_(LD) = N1A(LDL);
wire DI_1;                                                                      //[LEGO.NET:00059] DI_1_(DI_1) = AO2A(D,LD,QB,LDL);	/* load/count */
wire DI;                                                                        //[LEGO.NET:00061] DI_(DI) = NR2A(DI_1,CLR);		/* clear */

assign LD = ~LDL;                                                               //[LEGO.NET:00056] LD_(LD) = N1A(LDL);


assign DI_1 = ~((D & LD)|(QB & LDL));                                           //[LEGO.NET:00059] DI_1_(DI_1) = AO2A(D,LD,QB,LDL);	/* load/count */

assign DI = ~(DI_1 | CLR);                                                      //[LEGO.NET:00061] DI_(DI) = NR2A(DI_1,CLR);		/* clear */


FD1A Q__inst (.MasterClock(MasterClock),.q(Q),.qL(QB),.d(DI),.clk(CLK));        //[LEGO.NET:00064] Q_(Q,QB) = FD1A(DI,CLK);


endmodule                                                                       //[LEGO.NET:00067] END MODULE;
