                                                                                //[LEGO.NET:00001] COMPILE;
                                                                                //[LEGO.NET:00002] DIRECTORY MASTER;
/********************************************************
*	lego-q						*
*	23/8/88						*
********************************************************/

/*
This module contains building blocks for other modules in SLIPSTREAM

This version is for use with the Qudos software.
ie it contains definitions of high power gates which are part
of the LSI library

*/



/* SYNCNT is a middle stage of a synchronous load and clear
up counter. Load is active low, clear is active high, carry-in is
active high */

module m_SYNCNT                                                                 //[LEGO.NET:00023] MODULE SYNCNT;
(                                                                               //[LEGO.NET:00023] MODULE SYNCNT;

    input    MasterClock,
    input    D,                                                                 //[LEGO.NET:00025] INPUTS	D,CLK,CLR,LDL,CI;
    input    CLK,                                                               //[LEGO.NET:00025] INPUTS	D,CLK,CLR,LDL,CI;
    input    CLR,                                                               //[LEGO.NET:00025] INPUTS	D,CLK,CLR,LDL,CI;
    input    LDL,                                                               //[LEGO.NET:00025] INPUTS	D,CLK,CLR,LDL,CI;
    input    CI,                                                                //[LEGO.NET:00025] INPUTS	D,CLK,CLR,LDL,CI;
    output    Q,                                                                //[LEGO.NET:00026] OUTPUTS	Q,QB,CO;
    output    QB,                                                               //[LEGO.NET:00026] OUTPUTS	Q,QB,CO;
    output    CO                                                                //[LEGO.NET:00026] OUTPUTS	Q,QB,CO;
);                                                                              //[LEGO.NET:00023] MODULE SYNCNT;
                                                                                //[LEGO.NET:00027] LEVEL FUNCTION;
wire CIL;                                                                       //[LEGO.NET:00030] CIL_(CIL,LD) = MACINV2(CI,LDL);
wire LD;                                                                        //[LEGO.NET:00030] CIL_(CIL,LD) = MACINV2(CI,LDL);
wire DI_0;                                                                      //[LEGO.NET:00033] DI_0_(DI_0) = AO2A(CI,Q,CIL,QB);	/* toggle/static */
wire DI_1;                                                                      //[LEGO.NET:00035] DI_1_(DI_1) = AO2A(D,LD,DI_0,LDL);/* load/count */
wire DI;                                                                        //[LEGO.NET:00037] DI_(DI) = NR2A(DI_1,CLR);		/* clear */

m_MACINV2 CIL_ (.MasterClock(MasterClock),.I1(CI),.I2(LDL),.Q1(CIL),.Q2(LD));   //[LEGO.NET:00030] CIL_(CIL,LD) = MACINV2(CI,LDL);


assign DI_0 = ~((CI & Q)|(CIL & QB));                                           //[LEGO.NET:00033] DI_0_(DI_0) = AO2A(CI,Q,CIL,QB);	/* toggle/static */

assign DI_1 = ~((D & LD)|(DI_0 & LDL));                                         //[LEGO.NET:00035] DI_1_(DI_1) = AO2A(D,LD,DI_0,LDL);/* load/count */

assign DI = ~(DI_1 | CLR);                                                      //[LEGO.NET:00037] DI_(DI) = NR2A(DI_1,CLR);		/* clear */


FD1A Q__inst (.MasterClock(MasterClock),.q(Q),.qL(QB),.d(DI),.clk(CLK));        //[LEGO.NET:00040] Q_(Q,QB) = FD1A(DI,CLK);

assign CO = ~(CIL | QB);                                                        //[LEGO.NET:00042] CO_(CO) = NR2A(CIL,QB);

endmodule                                                                       //[LEGO.NET:00044] END MODULE;
