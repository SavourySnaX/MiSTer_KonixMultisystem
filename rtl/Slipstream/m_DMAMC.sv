module m_DMAMC                                                                  //[DMA.NET:00256] MODULE DMAMC;
(                                                                               //[DMA.NET:00256] MODULE DMAMC;

    input    MasterClock,
    input    DMA0WRL,                                                           //[DMA.NET:00258] INPUTS	DMA0WRL,DSPBAK,DSPBAKL,WAIT,CLK,RESETL;
    input    DSPBAK,                                                            //[DMA.NET:00258] INPUTS	DMA0WRL,DSPBAK,DSPBAKL,WAIT,CLK,RESETL;
    input    DSPBAKL,                                                           //[DMA.NET:00258] INPUTS	DMA0WRL,DSPBAK,DSPBAKL,WAIT,CLK,RESETL;
    input    WAIT,                                                              //[DMA.NET:00258] INPUTS	DMA0WRL,DSPBAK,DSPBAKL,WAIT,CLK,RESETL;
    input    CLK,                                                               //[DMA.NET:00258] INPUTS	DMA0WRL,DSPBAK,DSPBAKL,WAIT,CLK,RESETL;
    input    RESETL,                                                            //[DMA.NET:00258] INPUTS	DMA0WRL,DSPBAK,DSPBAKL,WAIT,CLK,RESETL;
    output    DMC_0,                                                            //[DMA.NET:00259] OUTPUTS	DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL;
    output    DMC_1,                                                            //[DMA.NET:00259] OUTPUTS	DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL;
    output    DMCL_0,                                                           //[DMA.NET:00259] OUTPUTS	DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL;
    output    DMCL_1,                                                           //[DMA.NET:00259] OUTPUTS	DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL;
    output    ST23L,                                                            //[DMA.NET:00259] OUTPUTS	DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL;
    output    MREQL                                                             //[DMA.NET:00259] OUTPUTS	DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL;
);                                                                              //[DMA.NET:00256] MODULE DMAMC;
                                                                                //[DMA.NET:00260] LEVEL FUNCTION;
wire D_0;                                                                       //[DMA.NET:00263] DMC_0_(DMC_0,DMCL_0) = FD2A(D_0,CLK,RESETL);
wire D_1;                                                                       //[DMA.NET:00264] DMC_1_(DMC_1,DMCL_1) = FD2A(D_1,CLK,RESETL);
wire D_2;                                                                       //[DMA.NET:00267] D_1_(D_1) = ND3A(D_2,D_3,D_4);
wire D_3;                                                                       //[DMA.NET:00267] D_1_(D_1) = ND3A(D_2,D_3,D_4);
wire D_4;                                                                       //[DMA.NET:00267] D_1_(D_1) = ND3A(D_2,D_3,D_4);
wire DMA0WR;                                                                    //[DMA.NET:00268] D_2_(D_2) = ND3A(DMCL_1,DSPBAK,DMA0WR);
wire DL_1;                                                                      //[DMA.NET:00273] DL_1_(DL_1) = N1A(D_1);
wire MRQU;                                                                      //[DMA.NET:00276] MRQU_(MRQU) = NR2A(DL_1,D_0);
wire MREQ;                                                                      //[DMA.NET:00277] MREQL_(MREQ,MREQL) = FD2A(MRQU,CLK,RESETL);
wire ST23U;                                                                     //[DMA.NET:00281] ST23U_(ST23U) = OR2A(D_0,D_1);
wire ST23;                                                                      //[DMA.NET:00282] ST23_(ST23,ST23L) = FD2A(ST23U,CLK,RESETL);

FD2A DMC_0__inst (.MasterClock(MasterClock),.q(DMC_0),.qL(DMCL_0),.d(D_0),.clk(CLK),.rL(RESETL));//[DMA.NET:00263] DMC_0_(DMC_0,DMCL_0) = FD2A(D_0,CLK,RESETL);
FD2A DMC_1__inst (.MasterClock(MasterClock),.q(DMC_1),.qL(DMCL_1),.d(D_1),.clk(CLK),.rL(RESETL));//[DMA.NET:00264] DMC_1_(DMC_1,DMCL_1) = FD2A(D_1,CLK,RESETL);

assign D_0 = ~(DMCL_1 | DMC_0 | DSPBAKL | WAIT);                                //[DMA.NET:00266] D_0_(D_0) = NR4A(DMCL_1,DMC_0,DSPBAKL,WAIT);
assign D_1 = ~(D_2 & D_3 & D_4);                                                //[DMA.NET:00267] D_1_(D_1) = ND3A(D_2,D_3,D_4);
assign D_2 = ~(DMCL_1 & DSPBAK & DMA0WR);                                       //[DMA.NET:00268] D_2_(D_2) = ND3A(DMCL_1,DSPBAK,DMA0WR);
assign D_3 = ~(DMC_0 & DSPBAK & DMA0WR);                                        //[DMA.NET:00269] D_3_(D_3) = ND3A(DMC_0,DSPBAK,DMA0WR);
assign D_4 = ~(DMC_1 & DMCL_0 & DSPBAK);                                        //[DMA.NET:00270] D_4_(D_4) = ND3A(DMC_1,DMCL_0,DSPBAK);

assign DMA0WR = ~DMA0WRL;                                                       //[DMA.NET:00272] DMA0WR_(DMA0WR) = N1A(DMA0WRL);
assign DL_1 = ~D_1;                                                             //[DMA.NET:00273] DL_1_(DL_1) = N1A(D_1);
/* Decode state 2 during which MREQ must be active */

assign MRQU = ~(DL_1 | D_0);                                                    //[DMA.NET:00276] MRQU_(MRQU) = NR2A(DL_1,D_0);
FD2A MREQL__inst (.MasterClock(MasterClock),.q(MREQ),.qL(MREQL),.d(MRQU),.clk(CLK),.rL(RESETL));//[DMA.NET:00277] MREQL_(MREQ,MREQL) = FD2A(MRQU,CLK,RESETL);

/* The other signals must be active during states 2 AND 3 */

assign ST23U = D_0 | D_1;                                                       //[DMA.NET:00281] ST23U_(ST23U) = OR2A(D_0,D_1);
FD2A ST23__inst (.MasterClock(MasterClock),.q(ST23),.qL(ST23L),.d(ST23U),.clk(CLK),.rL(RESETL));//[DMA.NET:00282] ST23_(ST23,ST23L) = FD2A(ST23U,CLK,RESETL);
endmodule                                                                       //[DMA.NET:00283] END MODULE;
