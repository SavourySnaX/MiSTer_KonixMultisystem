                                                                                //[CLOCK.NET:00001] COMPILE;
                                                                                //[CLOCK.NET:00002] DIRECTORY MASTER;
/********************************************************
*	clock-hdl					*
*	3/11/88						*
********************************************************/

/*
This module is the clock generator in the SLIPSTREAM chip on the ACW
*/




module m_CLOCK                                                                  //[CLOCK.NET:00015] MODULE CLOCK;
(                                                                               //[CLOCK.NET:00015] MODULE CLOCK;

    input    MasterClock,
    input    MCK,                                                               //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    input    VRD,                                                               //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    input    VWR,                                                               //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    input    NTSC,                                                              //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    input    FAST,                                                              //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    input    TSTCLK,                                                            //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    input    LP,                                                                //[CLOCK.NET:00017] INPUTS	MCK,VRD,VWR,NTSC,FAST,TSTCLK,LP;
    output    PCLKL,                                                            //[CLOCK.NET:00018] OUTPUTS	PCLKL,CCLK,CHROMAL,DQCLK;
    output    CCLK,                                                             //[CLOCK.NET:00018] OUTPUTS	PCLKL,CCLK,CHROMAL,DQCLK;
    output    CHROMAL,                                                          //[CLOCK.NET:00018] OUTPUTS	PCLKL,CCLK,CHROMAL,DQCLK;
    output    DQCLK                                                             //[CLOCK.NET:00018] OUTPUTS	PCLKL,CCLK,CHROMAL,DQCLK;
);                                                                              //[CLOCK.NET:00015] MODULE CLOCK;
                                                                                //[CLOCK.NET:00019] LEVEL FUNCTION;
wire MCKL;                                                                      //[CLOCK.NET:00043] MCKL_(MCKL) = N1B(MCK);
wire CA;                                                                        //[CLOCK.NET:00047] CAT_(CAT) = ND2A(CA,CB);
wire CB;                                                                        //[CLOCK.NET:00047] CAT_(CAT) = ND2A(CA,CB);
wire CAT;                                                                       //[CLOCK.NET:00047] CAT_(CAT) = ND2A(CA,CB);
wire CKRSTL;                                                                    //[CLOCK.NET:00048] CA_(CA,CAL) = FD2A (CAT, MCK, CKRSTL);
wire CAL;                                                                       //[CLOCK.NET:00048] CA_(CA,CAL) = FD2A (CAT, MCK, CKRSTL);
wire CBL;                                                                       //[CLOCK.NET:00049] CB_(CB,CBL) = FD2A (CA, MCK, CKRSTL);
wire CAD;                                                                       //[CLOCK.NET:00053] CAD_(CAD,CADL) = FD2A (CA, MCKL, CKRSTL);
wire CADL;                                                                      //[CLOCK.NET:00053] CAD_(CAD,CADL) = FD2A (CA, MCKL, CKRSTL);
wire TCB;                                                                       //[CLOCK.NET:00057] TCB_(TCB) = N1A (CBL);		/* helps match path delays */
wire CCLKT;                                                                     //[CLOCK.NET:00058] CCLKT_(CCLKT) = ND2A (CA,TCB);
wire CCLKU;                                                                     //[CLOCK.NET:00059] CCLKD_(CCLKU) = ND2A (CAD, CCLKT);
wire CCLK0L;                                                                    //[CLOCK.NET:00061] CCLK0L_(CCLK0L) = N1A(CCLKU);	/* 4 inverter delay on CCLK */
wire CCLK0;                                                                     //[CLOCK.NET:00062] CCLK0_(CCLK0) = N1A (CCLK0L);
wire CCLK1L;                                                                    //[CLOCK.NET:00063] CCLK1L_(CCLK1L) = N1A(CCLK0);
wire CCLKD;                                                                     //[CLOCK.NET:00064] CCLK1_(CCLKD) = N1A (CCLK1L);
wire CBD;                                                                       //[CLOCK.NET:00068] CBD_(CBD,CBDL) = FD2A (CB, MCKL, CKRSTL);
wire CBDL;                                                                      //[CLOCK.NET:00068] CBD_(CBD,CBDL) = FD2A (CB, MCKL, CKRSTL);
wire TCA;                                                                       //[CLOCK.NET:00069] TCA_(TCA) = N1C (CAL);
wire DCLKD;                                                                     //[CLOCK.NET:00070] DCLD_(DCLKD) = ND2C (CBD, TCA);
wire CPTCA;                                                                     //[CLOCK.NET:00074] CPTCA_(CPTCA) = N1A (CAL);
wire CLK6;                                                                      //[CLOCK.NET:00075] CLK6_(CLK6) = ND2A (CPTCA, CAD);
wire TSTCLKL;                                                                   //[CLOCK.NET:00083] TSTCLKL_(TSTCLKL) = N1A(TSTCLK);
wire LPL;                                                                       //[CLOCK.NET:00088] LPL_(LPL) = N1A(LP);
wire DCLKL;                                                                     //[CLOCK.NET:00089] DCLK_(DCLKL) = AO2C(TSTCLK,LPL,TSTCLKL,DCLKD);
wire SLOW;                                                                      //[CLOCK.NET:00094] SLOW_(SLOW) = N1A(FAST);
wire X;                                                                         //[CLOCK.NET:00095] PCLKL_(PCLKL) = AO2A(FAST,X,SLOW,CLK6);
wire XL;                                                                        //[CLOCK.NET:00100] X_(X,XL) = FD2A(XL,MCKL,CKRSTL);
wire YL;                                                                        //[CLOCK.NET:00101] Y_(Y,YL) = FD2A(YL,XL,CKRSTL);
wire Y;                                                                         //[CLOCK.NET:00101] Y_(Y,YL) = FD2A(YL,XL,CKRSTL);
wire D;                                                                         //[CLOCK.NET:00105] SHIFT1_(AL,A) = FD4A(D,MCKL,CKRSTL);
wire AL;                                                                        //[CLOCK.NET:00105] SHIFT1_(AL,A) = FD4A(D,MCKL,CKRSTL);
wire A;                                                                         //[CLOCK.NET:00105] SHIFT1_(AL,A) = FD4A(D,MCKL,CKRSTL);
wire B;                                                                         //[CLOCK.NET:00106] SHIFT2_(B,BL) = FD2A(A,MCKL,CKRSTL);
wire BL;                                                                        //[CLOCK.NET:00106] SHIFT2_(B,BL) = FD2A(A,MCKL,CKRSTL);
wire C;                                                                         //[CLOCK.NET:00107] SHIFT3_(C,CL) = FD2A(B,MCKL,CKRSTL);
wire CL;                                                                        //[CLOCK.NET:00107] SHIFT3_(C,CL) = FD2A(B,MCKL,CKRSTL);
wire AD;                                                                        //[CLOCK.NET:00112] AD_(AD,ADL) = FD2A(A,MCK,CKRSTL);
wire ADL;                                                                       //[CLOCK.NET:00112] AD_(AD,ADL) = FD2A(A,MCK,CKRSTL);
wire Z;                                                                         //[CLOCK.NET:00113] Z_(Z) = ND2A(A,AD);
wire PAL;                                                                       //[CLOCK.NET:00117] PAL_(PAL) = N1A(NTSC);

/* Clock Generation

Clocks are produced from a divide by 3 shift register, thus

	  |    --  3 tick cycle  --     |

XTAL	__/^^^^\____/^^^^\____/^^^^\____/^^^^\____
CA	^^^\_________/^^^^^^^^^^^^^^^^^^^\________
CB	^^^^^^^^^^^^^\_________/^^^^^^^^^^^^^^^^^^
DCA	^^^^^^^^\_________/^^^^^^^^^^^^^^^^^^^\___
DCB	^^^^^^^^^^^^^^^^^^\_________/^^^^^^^^^^^^^
CCLK	____/^^^^\_________/^^^^\_________/^^^^\__
DQCLK	____/^^^^^^^^^\____/^^^^^^^^^\____/^^^^^^^

The two shift register terms, CA and CB are delayed with the inverse of
XTAL to give DCA and DCB.  From these decodes give CCLK and DQCLK.  Paths
are matched for delay on CCLK.  The DQCLK rising edge to CCLK rising edge
setup is given by using C strength gates in the DQCLK path, and by the
extra delay of the CCLK buffer.
*/

assign MCKL = ~MCK;                                                             //[CLOCK.NET:00043] MCKL_(MCKL) = N1B(MCK);

/* divide by three shift register */

assign CAT = ~(CA & CB);                                                        //[CLOCK.NET:00047] CAT_(CAT) = ND2A(CA,CB);
FD2A CA__inst (.MasterClock(MasterClock),.q(CA),.qL(CAL),.d(CAT),.clk(MCK),.rL(CKRSTL));//[CLOCK.NET:00048] CA_(CA,CAL) = FD2A (CAT, MCK, CKRSTL);
FD2A CB__inst (.MasterClock(MasterClock),.q(CB),.qL(CBL),.d(CA),.clk(MCK),.rL(CKRSTL));//[CLOCK.NET:00049] CB_(CB,CBL) = FD2A (CA, MCK, CKRSTL);

/* delayed version of CA for cclk generation */

FD2A CAD__inst (.MasterClock(MasterClock),.q(CAD),.qL(CADL),.d(CA),.clk(MCKL),.rL(CKRSTL));//[CLOCK.NET:00053] CAD_(CAD,CADL) = FD2A (CA, MCKL, CKRSTL);

/* from this comes non-test cclk */

assign TCB = ~CBL;                                                              //[CLOCK.NET:00057] TCB_(TCB) = N1A (CBL);		/* helps match path delays */
assign CCLKT = ~(CA & TCB);                                                     //[CLOCK.NET:00058] CCLKT_(CCLKT) = ND2A (CA,TCB);
assign CCLKU = ~(CAD & CCLKT);                                                  //[CLOCK.NET:00059] CCLKD_(CCLKU) = ND2A (CAD, CCLKT);

assign CCLK0L = ~CCLKU;                                                         //[CLOCK.NET:00061] CCLK0L_(CCLK0L) = N1A(CCLKU);	/* 4 inverter delay on CCLK */
assign CCLK0 = ~CCLK0L;                                                         //[CLOCK.NET:00062] CCLK0_(CCLK0) = N1A (CCLK0L);
assign CCLK1L = ~CCLK0;                                                         //[CLOCK.NET:00063] CCLK1L_(CCLK1L) = N1A(CCLK0);
assign CCLKD = ~CCLK1L;                                                         //[CLOCK.NET:00064] CCLK1_(CCLKD) = N1A (CCLK1L);

/* DSP pervy clock requires a delayed version of B */

FD2A CBD__inst (.MasterClock(MasterClock),.q(CBD),.qL(CBDL),.d(CB),.clk(MCKL),.rL(CKRSTL));//[CLOCK.NET:00068] CBD_(CBD,CBDL) = FD2A (CB, MCKL, CKRSTL);
assign TCA = ~CAL;                                                              //[CLOCK.NET:00069] TCA_(TCA) = N1C (CAL);
assign DCLKD = ~(CBD & TCA);                                                    //[CLOCK.NET:00070] DCLD_(DCLKD) = ND2C (CBD, TCA);

/* CPU clock */

assign CPTCA = ~CAL;                                                            //[CLOCK.NET:00074] CPTCA_(CPTCA) = N1A (CAL);
assign CLK6 = ~(CPTCA & CAD);                                                   //[CLOCK.NET:00075] CLK6_(CLK6) = ND2A (CPTCA, CAD);

/* test reset is a combination of vrd and vwr */

assign CKRSTL = ~(VRD & VWR);                                                   //[CLOCK.NET:00079] CKRSTL_(CKRSTL) = ND2A(VRD,VWR);

/* For test purposes the external clock is used internally */

assign TSTCLKL = ~TSTCLK;                                                       //[CLOCK.NET:00083] TSTCLKL_(TSTCLKL) = N1A(TSTCLK);
assign CCLK = ~((TSTCLK & MCK)|(TSTCLKL & CCLKD));                              //[CLOCK.NET:00084] CCLK_(CCLK) = AO2C(TSTCLK,MCK,TSTCLKL,CCLKD);

/* For test purposes the lp input is used */

assign LPL = ~LP;                                                               //[CLOCK.NET:00088] LPL_(LPL) = N1A(LP);
assign DCLKL = ~((TSTCLK & LPL)|(TSTCLKL & DCLKD));                             //[CLOCK.NET:00089] DCLK_(DCLKL) = AO2C(TSTCLK,LPL,TSTCLKL,DCLKD);
assign DQCLK = ~DCLKL;                                                          //[CLOCK.NET:00090] DQCLK_(DQCLK) = B1A(DCLKL);

/* the processor clock is either 6Mhz or 9Mhz */

assign SLOW = ~FAST;                                                            //[CLOCK.NET:00094] SLOW_(SLOW) = N1A(FAST);
assign PCLKL = ~((FAST & X)|(SLOW & CLK6));                                     //[CLOCK.NET:00095] PCLKL_(PCLKL) = AO2A(FAST,X,SLOW,CLK6);

/* The colour subcarrier is either mck/4 for PAL or mck/5 for NTSC */
/* divide by four */

FD2A X__inst (.MasterClock(MasterClock),.q(X),.qL(XL),.d(XL),.clk(MCKL),.rL(CKRSTL));//[CLOCK.NET:00100] X_(X,XL) = FD2A(XL,MCKL,CKRSTL);
FD2A Y__inst (.MasterClock(MasterClock),.q(Y),.qL(YL),.d(YL),.clk(XL),.rL(CKRSTL));//[CLOCK.NET:00101] Y_(Y,YL) = FD2A(YL,XL,CKRSTL);

/* divide by five */

FD4A SHIFT1__inst (.MasterClock(MasterClock),.q(AL),.qL(A),.d(D),.clk(MCKL),.sL(CKRSTL));//[CLOCK.NET:00105] SHIFT1_(AL,A) = FD4A(D,MCKL,CKRSTL);
FD2A SHIFT2__inst (.MasterClock(MasterClock),.q(B),.qL(BL),.d(A),.clk(MCKL),.rL(CKRSTL));//[CLOCK.NET:00106] SHIFT2_(B,BL) = FD2A(A,MCKL,CKRSTL);
FD2A SHIFT3__inst (.MasterClock(MasterClock),.q(C),.qL(CL),.d(B),.clk(MCKL),.rL(CKRSTL));//[CLOCK.NET:00107] SHIFT3_(C,CL) = FD2A(B,MCKL,CKRSTL);
assign D = ~((A & CL)|(AL & BL));                                               //[CLOCK.NET:00108] SHFDEC_(D) = AO2A(A,CL,AL,BL);

/* sample 'a' with other edge of mck to get 50% duty cycle */

FD2A AD__inst (.MasterClock(MasterClock),.q(AD),.qL(ADL),.d(A),.clk(MCK),.rL(CKRSTL));//[CLOCK.NET:00112] AD_(AD,ADL) = FD2A(A,MCK,CKRSTL);
assign Z = ~(A & AD);                                                           //[CLOCK.NET:00113] Z_(Z) = ND2A(A,AD);

/* select appropriate carrier */

assign PAL = ~NTSC;                                                             //[CLOCK.NET:00117] PAL_(PAL) = N1A(NTSC);
assign CHROMAL = ~((PAL & Y)|(NTSC & Z));                                       //[CLOCK.NET:00118] CHROMAL_(CHROMAL) = AO2A(PAL,Y,NTSC,Z);

endmodule                                                                       //[CLOCK.NET:00120] END MODULE;
