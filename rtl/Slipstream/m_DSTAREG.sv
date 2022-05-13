                                                                                //[DSTAREG.NET:00001] COMPILE;
                                                                                //[DSTAREG.NET:00002] DIRECTORY MASTER;
/****************************************************************************
dstareg
19/10/88

Destination Address Register

This register is loaded either when the blitter program is being loaded, this
is given by lddaL[0..2], or when an updated address has been computed, given 
by upddstL.  The updated address may be computed by the adder or given by
addq[0..9].

****************************************************************************/


module m_DSTAREG                                                                //[DSTAREG.NET:00017] MODULE DSTAREG;
(                                                                               //[DSTAREG.NET:00017] MODULE DSTAREG;

    input    MasterClock,
    input    inD_0,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_1,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_2,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_3,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_4,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_5,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_6,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    inD_7,                                                             //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    ADDQ_0,                                                            //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    ADDQ_1,                                                            //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    ADDQ_2,                                                            //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    ADDQ_3,                                                            //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    ADDQ_4,                                                            //[DSTAREG.NET:00019] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,
    input    ADDQ_5,                                                            //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_6,                                                            //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_7,                                                            //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_8,                                                            //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_9,                                                            //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_10,                                                           //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_11,                                                           //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_12,                                                           //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_13,                                                           //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_14,                                                           //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
    input    ADDQ_15,                                                           //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    ADDQ_16,                                                           //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    ADDQ_17,                                                           //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    ADDQ_18,                                                           //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    ADDQ_19,                                                           //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    ADDQM1,                                                            //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    DSTRDL_0,                                                          //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    DSTRDL_1,                                                          //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    DSTRDL_2,                                                          //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
    input    ID_0,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_1,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_2,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_3,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_4,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_5,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_6,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    ID_7,                                                              //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    LDDAL_0,                                                           //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    LDDAL_1,                                                           //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    LDDAL_2,                                                           //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    SDASEL,                                                            //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
    input    UPDDSTL,                                                           //[DSTAREG.NET:00023]    UPDDSTL;
                                                                                //[DSTAREG.NET:00020]    ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,
                                                                                //[DSTAREG.NET:00021]    ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,
                                                                                //[DSTAREG.NET:00022]    ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,
                                                                                //[DSTAREG.NET:00023]    UPDDSTL;
    output    outD_0, enD_0,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_1, enD_1,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_2, enD_2,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_3, enD_3,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_4, enD_4,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_5, enD_5,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_6, enD_6,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    outD_7, enD_7,                                                    //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_0,                                                            //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_1,                                                            //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_2,                                                            //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_3,                                                            //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_4,                                                            //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_5,                                                            //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
    output    DAL_6,                                                            //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_7,                                                            //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_8,                                                            //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_9,                                                            //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_10,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_11,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_12,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_13,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_14,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_15,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_16,                                                           //[DSTAREG.NET:00025]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
    output    DAL_17,                                                           //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
    output    DAL_18,                                                           //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
    output    DAL_19,                                                           //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
    output    DAM1L,                                                            //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
    output    DSTCMP,                                                           //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
    output    DSIGN,                                                            //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
    output    DWRAP                                                             //[DSTAREG.NET:00026]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP;
);                                                                              //[DSTAREG.NET:00017] MODULE DSTAREG;
                                                                                //[DSTAREG.NET:00027] LEVEL FUNCTION;
wire SDASELL;                                                                   //[DSTAREG.NET:00032] SDASELL_(SDASELL) = N1C(SDASEL);
wire DLDL_0;                                                                    //[DSTAREG.NET:00036] DLD_0_(DLDL_0) = AND2C(LDDAL_0,UPDDSTL);
wire DLDL_1;                                                                    //[DSTAREG.NET:00037] DLD_1_(DLDL_1) = AND2C(LDDAL_1,UPDDSTL);
wire DLDL_2;                                                                    //[DSTAREG.NET:00038] DLD_2_(DLDL_2) = AND2C(LDDAL_2,UPDDSTL);
wire DIM1;                                                                      //[DSTAREG.NET:00042] MUXM1_(DIM1) = AO2A(SDASELL,ID_7,SDASEL,ADDQM1);
wire DI_0;                                                                      //[DSTAREG.NET:00043] MUX_0_(DI_0) = AO2A(SDASELL,ID_0,SDASEL,ADDQ_0);
wire DI_1;                                                                      //[DSTAREG.NET:00044] MUX_1_(DI_1) = AO2A(SDASELL,ID_1,SDASEL,ADDQ_1);
wire DI_2;                                                                      //[DSTAREG.NET:00045] MUX_2_(DI_2) = AO2A(SDASELL,ID_2,SDASEL,ADDQ_2);
wire DI_3;                                                                      //[DSTAREG.NET:00046] MUX_3_(DI_3) = AO2A(SDASELL,ID_3,SDASEL,ADDQ_3);
wire DI_4;                                                                      //[DSTAREG.NET:00047] MUX_4_(DI_4) = AO2A(SDASELL,ID_4,SDASEL,ADDQ_4);
wire DI_5;                                                                      //[DSTAREG.NET:00048] MUX_5_(DI_5) = AO2A(SDASELL,ID_5,SDASEL,ADDQ_5);
wire DI_6;                                                                      //[DSTAREG.NET:00049] MUX_6_(DI_6) = AO2A(SDASELL,ID_6,SDASEL,ADDQ_6);
wire DI_7;                                                                      //[DSTAREG.NET:00050] MUX_7_(DI_7) = AO2A(SDASELL,ID_7,SDASEL,ADDQ_7);
wire DI_8;                                                                      //[DSTAREG.NET:00051] MUX_8_(DI_8) = AO2A(SDASELL,ID_0,SDASEL,ADDQ_8);
wire DI_9;                                                                      //[DSTAREG.NET:00052] MUX_9_(DI_9) = AO2A(SDASELL,ID_1,SDASEL,ADDQ_9);
wire DI_10;                                                                     //[DSTAREG.NET:00053] MUX_10_(DI_10) = AO2A(SDASELL,ID_2,SDASEL,ADDQ_10);
wire DI_11;                                                                     //[DSTAREG.NET:00054] MUX_11_(DI_11) = AO2A(SDASELL,ID_3,SDASEL,ADDQ_11);
wire DI_12;                                                                     //[DSTAREG.NET:00055] MUX_12_(DI_12) = AO2A(SDASELL,ID_4,SDASEL,ADDQ_12);
wire DI_13;                                                                     //[DSTAREG.NET:00056] MUX_13_(DI_13) = AO2A(SDASELL,ID_5,SDASEL,ADDQ_13);
wire DI_14;                                                                     //[DSTAREG.NET:00057] MUX_14_(DI_14) = AO2A(SDASELL,ID_6,SDASEL,ADDQ_14);
wire DI_15;                                                                     //[DSTAREG.NET:00058] MUX_15_(DI_15) = AO2A(SDASELL,ID_7,SDASEL,ADDQ_15);
wire DI_16;                                                                     //[DSTAREG.NET:00059] MUX_16_(DI_16) = AO2A(SDASELL,ID_0,SDASEL,ADDQ_16);
wire DI_17;                                                                     //[DSTAREG.NET:00060] MUX_17_(DI_17) = AO2A(SDASELL,ID_1,SDASEL,ADDQ_17);
wire DI_18;                                                                     //[DSTAREG.NET:00061] MUX_18_(DI_18) = AO2A(SDASELL,ID_2,SDASEL,ADDQ_18);
wire DI_19;                                                                     //[DSTAREG.NET:00062] MUX_19_(DI_19) = AO2A(SDASELL,ID_3,SDASEL,ADDQ_19);
wire DA_0;                                                                      //[DSTAREG.NET:00066] DA_0_(DAL_0,DA_0) = FD1A(DI_0,DLDL_0);
wire DA_1;                                                                      //[DSTAREG.NET:00067] DA_1_(DAL_1,DA_1) = FD1A(DI_1,DLDL_0);
wire DA_2;                                                                      //[DSTAREG.NET:00068] DA_2_(DAL_2,DA_2) = FD1A(DI_2,DLDL_0);
wire DA_3;                                                                      //[DSTAREG.NET:00069] DA_3_(DAL_3,DA_3) = FD1A(DI_3,DLDL_0);
wire DA_4;                                                                      //[DSTAREG.NET:00070] DA_4_(DAL_4,DA_4) = FD1A(DI_4,DLDL_0);
wire DA_5;                                                                      //[DSTAREG.NET:00071] DA_5_(DAL_5,DA_5) = FD1A(DI_5,DLDL_0);
wire DA_6;                                                                      //[DSTAREG.NET:00072] DA_6_(DAL_6,DA_6) = FD1A(DI_6,DLDL_0);
wire DA_7;                                                                      //[DSTAREG.NET:00073] DA_7_(DAL_7,DA_7) = FD1A(DI_7,DLDL_0);
wire DA_8;                                                                      //[DSTAREG.NET:00074] DA_8_(DAL_8,DA_8) = FD1A(DI_8,DLDL_1);
wire DA_9;                                                                      //[DSTAREG.NET:00075] DA_9_(DAL_9,DA_9) = FD1A(DI_9,DLDL_1);
wire DA_10;                                                                     //[DSTAREG.NET:00076] DA_10_(DAL_10,DA_10) = FD1A(DI_10,DLDL_1);
wire DA_11;                                                                     //[DSTAREG.NET:00077] DA_11_(DAL_11,DA_11) = FD1A(DI_11,DLDL_1);
wire DA_12;                                                                     //[DSTAREG.NET:00078] DA_12_(DAL_12,DA_12) = FD1A(DI_12,DLDL_1);
wire DA_13;                                                                     //[DSTAREG.NET:00079] DA_13_(DAL_13,DA_13) = FD1A(DI_13,DLDL_1);
wire DA_14;                                                                     //[DSTAREG.NET:00080] DA_14_(DAL_14,DA_14) = FD1A(DI_14,DLDL_1);
wire DA_15;                                                                     //[DSTAREG.NET:00081] DA_15_(DAL_15,DA_15) = FD1A(DI_15,DLDL_1);
wire DA_16;                                                                     //[DSTAREG.NET:00082] DA_16_(DAL_16,DA_16) = FD1A(DI_16,DLDL_2);
wire DA_17;                                                                     //[DSTAREG.NET:00083] DA_17_(DAL_17,DA_17) = FD1A(DI_17,DLDL_2);
wire DA_18;                                                                     //[DSTAREG.NET:00084] DA_18_(DAL_18,DA_18) = FD1A(DI_18,DLDL_2);
wire DA_19;                                                                     //[DSTAREG.NET:00085] DA_19_(DAL_19,DA_19) = FD1A(DI_19,DLDL_2);
wire DAM1;                                                                      //[DSTAREG.NET:00086] DAM1_(DAM1L,DAM1) = FD1A(DIM1,DLDL_2);
wire DSTCMPL;                                                                   //[DSTAREG.NET:00090] DSTCMP_(DSTCMP,DSTCMPL) = LD2A(ID_4,LDDAL_2);
wire DWRAPL;                                                                    //[DSTAREG.NET:00091] DWRAP_(DWRAP,DWRAPL) = LD2A(ID_5,LDDAL_2);
wire DSIGNL;                                                                    //[DSTAREG.NET:00092] DSIGN_(DSIGN,DSIGNL) = LD2A(ID_6,LDDAL_2);
wire DSTRD_0;                                                                   //[DSTAREG.NET:00096] DIOINV_0_(DSTRD_0) = N1A(DSTRDL_0);
wire DSTRD_1;                                                                   //[DSTAREG.NET:00097] DIOINV_1_(DSTRD_1) = N1A(DSTRDL_1);
wire DSTRD_2;                                                                   //[DSTAREG.NET:00098] DIOINV_2_(DSTRD_2) = N1A(DSTRDL_2);
wire DAR_0;                                                                     //[DSTAREG.NET:00099] DARSEL1_0_(DAR_0) = MUX2(DA_0,DSTRD_0,DA_8,DSTRD_1);
wire DAR_1;                                                                     //[DSTAREG.NET:00100] DARSEL1_1_(DAR_1) = MUX2(DA_1,DSTRD_0,DA_9,DSTRD_1);
wire DAR_2;                                                                     //[DSTAREG.NET:00101] DARSEL1_2_(DAR_2) = MUX2(DA_2,DSTRD_0,DA_10,DSTRD_1);
wire DAR_3;                                                                     //[DSTAREG.NET:00102] DARSEL1_3_(DAR_3) = MUX2(DA_3,DSTRD_0,DA_11,DSTRD_1);
wire DAR_4;                                                                     //[DSTAREG.NET:00103] DARSEL1_4_(DAR_4) = MUX2(DA_4,DSTRD_0,DA_12,DSTRD_1);
wire DAR_5;                                                                     //[DSTAREG.NET:00104] DARSEL1_5_(DAR_5) = MUX2(DA_5,DSTRD_0,DA_13,DSTRD_1);
wire DAR_6;                                                                     //[DSTAREG.NET:00105] DARSEL1_6_(DAR_6) = MUX2(DA_6,DSTRD_0,DA_14,DSTRD_1);
wire DAR_7;                                                                     //[DSTAREG.NET:00106] DARSEL1_7_(DAR_7) = MUX2(DA_7,DSTRD_0,DA_15,DSTRD_1);
wire DAS_0;                                                                     //[DSTAREG.NET:00107] DARSEL2_0_(DAS_0) = AO2A(DA_16,DSTRD_2,DAR_0,DSTRDL_2);
wire DAS_1;                                                                     //[DSTAREG.NET:00108] DARSEL2_1_(DAS_1) = AO2A(DA_17,DSTRD_2,DAR_1,DSTRDL_2);
wire DAS_2;                                                                     //[DSTAREG.NET:00109] DARSEL2_2_(DAS_2) = AO2A(DA_18,DSTRD_2,DAR_2,DSTRDL_2);
wire DAS_3;                                                                     //[DSTAREG.NET:00110] DARSEL2_3_(DAS_3) = AO2A(DA_19,DSTRD_2,DAR_3,DSTRDL_2);
wire DAS_4;                                                                     //[DSTAREG.NET:00111] DARSEL2_4_(DAS_4) = ND2A(DAR_4,DSTRDL_2);
wire DAS_5;                                                                     //[DSTAREG.NET:00112] DARSEL2_5_(DAS_5) = ND2A(DAR_5,DSTRDL_2);
wire DAS_6;                                                                     //[DSTAREG.NET:00113] DARSEL2_6_(DAS_6) = AO2A(DSIGN,DSTRD_2,DAR_6,DSTRDL_2);
wire DAS_7;                                                                     //[DSTAREG.NET:00114] DARSEL2_7_(DAS_7) = AO2A(DAM1,DSTRD_2,DAR_7,DSTRDL_2);
wire DAREN;                                                                     //[DSTAREG.NET:00116] DAREN_(DAREN) = ND3A(DSTRDL_0,DSTRDL_1,DSTRDL_2);
wire drv0_outD_0;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_0;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_1;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_1;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_2;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_2;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_3;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_3;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_4;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_4;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_5;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_5;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_6;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_6;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_outD_7;                                                               //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire drv0_enD_7;                                                                //[DSTAREG.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,

/* Invert inputs to taste */

assign SDASELL = ~SDASEL;                                                       //[DSTAREG.NET:00032] SDASELL_(SDASELL) = N1C(SDASEL);

/* The load enables for the latches */

assign DLDL_0 = LDDAL_0 & UPDDSTL;                                              //[DSTAREG.NET:00036] DLD_0_(DLDL_0) = AND2C(LDDAL_0,UPDDSTL);
assign DLDL_1 = LDDAL_1 & UPDDSTL;                                              //[DSTAREG.NET:00037] DLD_1_(DLDL_1) = AND2C(LDDAL_1,UPDDSTL);
assign DLDL_2 = LDDAL_2 & UPDDSTL;                                              //[DSTAREG.NET:00038] DLD_2_(DLDL_2) = AND2C(LDDAL_2,UPDDSTL);

/* Mltiplex between input data and adder output  */

assign DIM1 = ~((SDASELL & ID_7)|(SDASEL & ADDQM1));                            //[DSTAREG.NET:00042] MUXM1_(DIM1) = AO2A(SDASELL,ID_7,SDASEL,ADDQM1);
assign DI_0 = ~((SDASELL & ID_0)|(SDASEL & ADDQ_0));                            //[DSTAREG.NET:00043] MUX_0_(DI_0) = AO2A(SDASELL,ID_0,SDASEL,ADDQ_0);
assign DI_1 = ~((SDASELL & ID_1)|(SDASEL & ADDQ_1));                            //[DSTAREG.NET:00044] MUX_1_(DI_1) = AO2A(SDASELL,ID_1,SDASEL,ADDQ_1);
assign DI_2 = ~((SDASELL & ID_2)|(SDASEL & ADDQ_2));                            //[DSTAREG.NET:00045] MUX_2_(DI_2) = AO2A(SDASELL,ID_2,SDASEL,ADDQ_2);
assign DI_3 = ~((SDASELL & ID_3)|(SDASEL & ADDQ_3));                            //[DSTAREG.NET:00046] MUX_3_(DI_3) = AO2A(SDASELL,ID_3,SDASEL,ADDQ_3);
assign DI_4 = ~((SDASELL & ID_4)|(SDASEL & ADDQ_4));                            //[DSTAREG.NET:00047] MUX_4_(DI_4) = AO2A(SDASELL,ID_4,SDASEL,ADDQ_4);
assign DI_5 = ~((SDASELL & ID_5)|(SDASEL & ADDQ_5));                            //[DSTAREG.NET:00048] MUX_5_(DI_5) = AO2A(SDASELL,ID_5,SDASEL,ADDQ_5);
assign DI_6 = ~((SDASELL & ID_6)|(SDASEL & ADDQ_6));                            //[DSTAREG.NET:00049] MUX_6_(DI_6) = AO2A(SDASELL,ID_6,SDASEL,ADDQ_6);
assign DI_7 = ~((SDASELL & ID_7)|(SDASEL & ADDQ_7));                            //[DSTAREG.NET:00050] MUX_7_(DI_7) = AO2A(SDASELL,ID_7,SDASEL,ADDQ_7);
assign DI_8 = ~((SDASELL & ID_0)|(SDASEL & ADDQ_8));                            //[DSTAREG.NET:00051] MUX_8_(DI_8) = AO2A(SDASELL,ID_0,SDASEL,ADDQ_8);
assign DI_9 = ~((SDASELL & ID_1)|(SDASEL & ADDQ_9));                            //[DSTAREG.NET:00052] MUX_9_(DI_9) = AO2A(SDASELL,ID_1,SDASEL,ADDQ_9);
assign DI_10 = ~((SDASELL & ID_2)|(SDASEL & ADDQ_10));                          //[DSTAREG.NET:00053] MUX_10_(DI_10) = AO2A(SDASELL,ID_2,SDASEL,ADDQ_10);
assign DI_11 = ~((SDASELL & ID_3)|(SDASEL & ADDQ_11));                          //[DSTAREG.NET:00054] MUX_11_(DI_11) = AO2A(SDASELL,ID_3,SDASEL,ADDQ_11);
assign DI_12 = ~((SDASELL & ID_4)|(SDASEL & ADDQ_12));                          //[DSTAREG.NET:00055] MUX_12_(DI_12) = AO2A(SDASELL,ID_4,SDASEL,ADDQ_12);
assign DI_13 = ~((SDASELL & ID_5)|(SDASEL & ADDQ_13));                          //[DSTAREG.NET:00056] MUX_13_(DI_13) = AO2A(SDASELL,ID_5,SDASEL,ADDQ_13);
assign DI_14 = ~((SDASELL & ID_6)|(SDASEL & ADDQ_14));                          //[DSTAREG.NET:00057] MUX_14_(DI_14) = AO2A(SDASELL,ID_6,SDASEL,ADDQ_14);
assign DI_15 = ~((SDASELL & ID_7)|(SDASEL & ADDQ_15));                          //[DSTAREG.NET:00058] MUX_15_(DI_15) = AO2A(SDASELL,ID_7,SDASEL,ADDQ_15);
assign DI_16 = ~((SDASELL & ID_0)|(SDASEL & ADDQ_16));                          //[DSTAREG.NET:00059] MUX_16_(DI_16) = AO2A(SDASELL,ID_0,SDASEL,ADDQ_16);
assign DI_17 = ~((SDASELL & ID_1)|(SDASEL & ADDQ_17));                          //[DSTAREG.NET:00060] MUX_17_(DI_17) = AO2A(SDASELL,ID_1,SDASEL,ADDQ_17);
assign DI_18 = ~((SDASELL & ID_2)|(SDASEL & ADDQ_18));                          //[DSTAREG.NET:00061] MUX_18_(DI_18) = AO2A(SDASELL,ID_2,SDASEL,ADDQ_18);
assign DI_19 = ~((SDASELL & ID_3)|(SDASEL & ADDQ_19));                          //[DSTAREG.NET:00062] MUX_19_(DI_19) = AO2A(SDASELL,ID_3,SDASEL,ADDQ_19);

/* The address latches */

FD1A DA_0__inst (.MasterClock(MasterClock),.q(DAL_0),.qL(DA_0),.d(DI_0),.clk(DLDL_0));//[DSTAREG.NET:00066] DA_0_(DAL_0,DA_0) = FD1A(DI_0,DLDL_0);
FD1A DA_1__inst (.MasterClock(MasterClock),.q(DAL_1),.qL(DA_1),.d(DI_1),.clk(DLDL_0));//[DSTAREG.NET:00067] DA_1_(DAL_1,DA_1) = FD1A(DI_1,DLDL_0);
FD1A DA_2__inst (.MasterClock(MasterClock),.q(DAL_2),.qL(DA_2),.d(DI_2),.clk(DLDL_0));//[DSTAREG.NET:00068] DA_2_(DAL_2,DA_2) = FD1A(DI_2,DLDL_0);
FD1A DA_3__inst (.MasterClock(MasterClock),.q(DAL_3),.qL(DA_3),.d(DI_3),.clk(DLDL_0));//[DSTAREG.NET:00069] DA_3_(DAL_3,DA_3) = FD1A(DI_3,DLDL_0);
FD1A DA_4__inst (.MasterClock(MasterClock),.q(DAL_4),.qL(DA_4),.d(DI_4),.clk(DLDL_0));//[DSTAREG.NET:00070] DA_4_(DAL_4,DA_4) = FD1A(DI_4,DLDL_0);
FD1A DA_5__inst (.MasterClock(MasterClock),.q(DAL_5),.qL(DA_5),.d(DI_5),.clk(DLDL_0));//[DSTAREG.NET:00071] DA_5_(DAL_5,DA_5) = FD1A(DI_5,DLDL_0);
FD1A DA_6__inst (.MasterClock(MasterClock),.q(DAL_6),.qL(DA_6),.d(DI_6),.clk(DLDL_0));//[DSTAREG.NET:00072] DA_6_(DAL_6,DA_6) = FD1A(DI_6,DLDL_0);
FD1A DA_7__inst (.MasterClock(MasterClock),.q(DAL_7),.qL(DA_7),.d(DI_7),.clk(DLDL_0));//[DSTAREG.NET:00073] DA_7_(DAL_7,DA_7) = FD1A(DI_7,DLDL_0);
FD1A DA_8__inst (.MasterClock(MasterClock),.q(DAL_8),.qL(DA_8),.d(DI_8),.clk(DLDL_1));//[DSTAREG.NET:00074] DA_8_(DAL_8,DA_8) = FD1A(DI_8,DLDL_1);
FD1A DA_9__inst (.MasterClock(MasterClock),.q(DAL_9),.qL(DA_9),.d(DI_9),.clk(DLDL_1));//[DSTAREG.NET:00075] DA_9_(DAL_9,DA_9) = FD1A(DI_9,DLDL_1);
FD1A DA_10__inst (.MasterClock(MasterClock),.q(DAL_10),.qL(DA_10),.d(DI_10),.clk(DLDL_1));//[DSTAREG.NET:00076] DA_10_(DAL_10,DA_10) = FD1A(DI_10,DLDL_1);
FD1A DA_11__inst (.MasterClock(MasterClock),.q(DAL_11),.qL(DA_11),.d(DI_11),.clk(DLDL_1));//[DSTAREG.NET:00077] DA_11_(DAL_11,DA_11) = FD1A(DI_11,DLDL_1);
FD1A DA_12__inst (.MasterClock(MasterClock),.q(DAL_12),.qL(DA_12),.d(DI_12),.clk(DLDL_1));//[DSTAREG.NET:00078] DA_12_(DAL_12,DA_12) = FD1A(DI_12,DLDL_1);
FD1A DA_13__inst (.MasterClock(MasterClock),.q(DAL_13),.qL(DA_13),.d(DI_13),.clk(DLDL_1));//[DSTAREG.NET:00079] DA_13_(DAL_13,DA_13) = FD1A(DI_13,DLDL_1);
FD1A DA_14__inst (.MasterClock(MasterClock),.q(DAL_14),.qL(DA_14),.d(DI_14),.clk(DLDL_1));//[DSTAREG.NET:00080] DA_14_(DAL_14,DA_14) = FD1A(DI_14,DLDL_1);
FD1A DA_15__inst (.MasterClock(MasterClock),.q(DAL_15),.qL(DA_15),.d(DI_15),.clk(DLDL_1));//[DSTAREG.NET:00081] DA_15_(DAL_15,DA_15) = FD1A(DI_15,DLDL_1);
FD1A DA_16__inst (.MasterClock(MasterClock),.q(DAL_16),.qL(DA_16),.d(DI_16),.clk(DLDL_2));//[DSTAREG.NET:00082] DA_16_(DAL_16,DA_16) = FD1A(DI_16,DLDL_2);
FD1A DA_17__inst (.MasterClock(MasterClock),.q(DAL_17),.qL(DA_17),.d(DI_17),.clk(DLDL_2));//[DSTAREG.NET:00083] DA_17_(DAL_17,DA_17) = FD1A(DI_17,DLDL_2);
FD1A DA_18__inst (.MasterClock(MasterClock),.q(DAL_18),.qL(DA_18),.d(DI_18),.clk(DLDL_2));//[DSTAREG.NET:00084] DA_18_(DAL_18,DA_18) = FD1A(DI_18,DLDL_2);
FD1A DA_19__inst (.MasterClock(MasterClock),.q(DAL_19),.qL(DA_19),.d(DI_19),.clk(DLDL_2));//[DSTAREG.NET:00085] DA_19_(DAL_19,DA_19) = FD1A(DI_19,DLDL_2);
FD1A DAM1__inst (.MasterClock(MasterClock),.q(DAM1L),.qL(DAM1),.d(DIM1),.clk(DLDL_2));//[DSTAREG.NET:00086] DAM1_(DAM1L,DAM1) = FD1A(DIM1,DLDL_2);

/* The destination address update sign bit, and wrap control */

LD2A DSTCMP__inst (.MasterClock(MasterClock),.q(DSTCMP),.qL(DSTCMPL),.d(ID_4),.en(LDDAL_2));//[DSTAREG.NET:00090] DSTCMP_(DSTCMP,DSTCMPL) = LD2A(ID_4,LDDAL_2);
LD2A DWRAP__inst (.MasterClock(MasterClock),.q(DWRAP),.qL(DWRAPL),.d(ID_5),.en(LDDAL_2));//[DSTAREG.NET:00091] DWRAP_(DWRAP,DWRAPL) = LD2A(ID_5,LDDAL_2);
LD2A DSIGN__inst (.MasterClock(MasterClock),.q(DSIGN),.qL(DSIGNL),.d(ID_6),.en(LDDAL_2));//[DSTAREG.NET:00092] DSIGN_(DSIGN,DSIGNL) = LD2A(ID_6,LDDAL_2);

/* Make it readable by the CPU */

assign DSTRD_0 = ~DSTRDL_0;                                                     //[DSTAREG.NET:00096] DIOINV_0_(DSTRD_0) = N1A(DSTRDL_0);
assign DSTRD_1 = ~DSTRDL_1;                                                     //[DSTAREG.NET:00097] DIOINV_1_(DSTRD_1) = N1A(DSTRDL_1);
assign DSTRD_2 = ~DSTRDL_2;                                                     //[DSTAREG.NET:00098] DIOINV_2_(DSTRD_2) = N1A(DSTRDL_2);
m_MUX2 DARSEL1_0_ (.MasterClock(MasterClock),.IN1(DA_0),.SEL1(DSTRD_0),.IN2(DA_8),.SEL2(DSTRD_1),.OUT(DAR_0));//[DSTAREG.NET:00099] DARSEL1_0_(DAR_0) = MUX2(DA_0,DSTRD_0,DA_8,DSTRD_1);
m_MUX2 DARSEL1_1_ (.MasterClock(MasterClock),.IN1(DA_1),.SEL1(DSTRD_0),.IN2(DA_9),.SEL2(DSTRD_1),.OUT(DAR_1));//[DSTAREG.NET:00100] DARSEL1_1_(DAR_1) = MUX2(DA_1,DSTRD_0,DA_9,DSTRD_1);
m_MUX2 DARSEL1_2_ (.MasterClock(MasterClock),.IN1(DA_2),.SEL1(DSTRD_0),.IN2(DA_10),.SEL2(DSTRD_1),.OUT(DAR_2));//[DSTAREG.NET:00101] DARSEL1_2_(DAR_2) = MUX2(DA_2,DSTRD_0,DA_10,DSTRD_1);
m_MUX2 DARSEL1_3_ (.MasterClock(MasterClock),.IN1(DA_3),.SEL1(DSTRD_0),.IN2(DA_11),.SEL2(DSTRD_1),.OUT(DAR_3));//[DSTAREG.NET:00102] DARSEL1_3_(DAR_3) = MUX2(DA_3,DSTRD_0,DA_11,DSTRD_1);
m_MUX2 DARSEL1_4_ (.MasterClock(MasterClock),.IN1(DA_4),.SEL1(DSTRD_0),.IN2(DA_12),.SEL2(DSTRD_1),.OUT(DAR_4));//[DSTAREG.NET:00103] DARSEL1_4_(DAR_4) = MUX2(DA_4,DSTRD_0,DA_12,DSTRD_1);
m_MUX2 DARSEL1_5_ (.MasterClock(MasterClock),.IN1(DA_5),.SEL1(DSTRD_0),.IN2(DA_13),.SEL2(DSTRD_1),.OUT(DAR_5));//[DSTAREG.NET:00104] DARSEL1_5_(DAR_5) = MUX2(DA_5,DSTRD_0,DA_13,DSTRD_1);
m_MUX2 DARSEL1_6_ (.MasterClock(MasterClock),.IN1(DA_6),.SEL1(DSTRD_0),.IN2(DA_14),.SEL2(DSTRD_1),.OUT(DAR_6));//[DSTAREG.NET:00105] DARSEL1_6_(DAR_6) = MUX2(DA_6,DSTRD_0,DA_14,DSTRD_1);
m_MUX2 DARSEL1_7_ (.MasterClock(MasterClock),.IN1(DA_7),.SEL1(DSTRD_0),.IN2(DA_15),.SEL2(DSTRD_1),.OUT(DAR_7));//[DSTAREG.NET:00106] DARSEL1_7_(DAR_7) = MUX2(DA_7,DSTRD_0,DA_15,DSTRD_1);
assign DAS_0 = ~((DA_16 & DSTRD_2)|(DAR_0 & DSTRDL_2));                         //[DSTAREG.NET:00107] DARSEL2_0_(DAS_0) = AO2A(DA_16,DSTRD_2,DAR_0,DSTRDL_2);
assign DAS_1 = ~((DA_17 & DSTRD_2)|(DAR_1 & DSTRDL_2));                         //[DSTAREG.NET:00108] DARSEL2_1_(DAS_1) = AO2A(DA_17,DSTRD_2,DAR_1,DSTRDL_2);
assign DAS_2 = ~((DA_18 & DSTRD_2)|(DAR_2 & DSTRDL_2));                         //[DSTAREG.NET:00109] DARSEL2_2_(DAS_2) = AO2A(DA_18,DSTRD_2,DAR_2,DSTRDL_2);
assign DAS_3 = ~((DA_19 & DSTRD_2)|(DAR_3 & DSTRDL_2));                         //[DSTAREG.NET:00110] DARSEL2_3_(DAS_3) = AO2A(DA_19,DSTRD_2,DAR_3,DSTRDL_2);
assign DAS_4 = ~(DAR_4 & DSTRDL_2);                                             //[DSTAREG.NET:00111] DARSEL2_4_(DAS_4) = ND2A(DAR_4,DSTRDL_2);
assign DAS_5 = ~(DAR_5 & DSTRDL_2);                                             //[DSTAREG.NET:00112] DARSEL2_5_(DAS_5) = ND2A(DAR_5,DSTRDL_2);
assign DAS_6 = ~((DSIGN & DSTRD_2)|(DAR_6 & DSTRDL_2));                         //[DSTAREG.NET:00113] DARSEL2_6_(DAS_6) = AO2A(DSIGN,DSTRD_2,DAR_6,DSTRDL_2);
assign DAS_7 = ~((DAM1 & DSTRD_2)|(DAR_7 & DSTRDL_2));                          //[DSTAREG.NET:00114] DARSEL2_7_(DAS_7) = AO2A(DAM1,DSTRD_2,DAR_7,DSTRDL_2);

assign DAREN = ~(DSTRDL_0 & DSTRDL_1 & DSTRDL_2);                               //[DSTAREG.NET:00116] DAREN_(DAREN) = ND3A(DSTRDL_0,DSTRDL_1,DSTRDL_2);
assign drv0_outD_0 = ~DAS_0; assign drv0_enD_0 = DAREN;                         //[DSTAREG.NET:00117] DAPORT_0_(D_0) = BTS5A(DAS_0,DAREN);
assign drv0_outD_1 = ~DAS_1; assign drv0_enD_1 = DAREN;                         //[DSTAREG.NET:00118] DAPORT_1_(D_1) = BTS5A(DAS_1,DAREN);
assign drv0_outD_2 = ~DAS_2; assign drv0_enD_2 = DAREN;                         //[DSTAREG.NET:00119] DAPORT_2_(D_2) = BTS5A(DAS_2,DAREN);
assign drv0_outD_3 = ~DAS_3; assign drv0_enD_3 = DAREN;                         //[DSTAREG.NET:00120] DAPORT_3_(D_3) = BTS5A(DAS_3,DAREN);
assign drv0_outD_4 = ~DAS_4; assign drv0_enD_4 = DAREN;                         //[DSTAREG.NET:00121] DAPORT_4_(D_4) = BTS5A(DAS_4,DAREN);
assign drv0_outD_5 = ~DAS_5; assign drv0_enD_5 = DAREN;                         //[DSTAREG.NET:00122] DAPORT_5_(D_5) = BTS5A(DAS_5,DAREN);
assign drv0_outD_6 = ~DAS_6; assign drv0_enD_6 = DAREN;                         //[DSTAREG.NET:00123] DAPORT_6_(D_6) = BTS5A(DAS_6,DAREN);
assign drv0_outD_7 = ~DAS_7; assign drv0_enD_7 = DAREN;                         //[DSTAREG.NET:00124] DAPORT_7_(D_7) = BTS5A(DAS_7,DAREN);

assign outD_0 = (drv0_outD_0 & drv0_enD_0);
assign enD_0 = drv0_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1);
assign enD_1 = drv0_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2);
assign enD_2 = drv0_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3);
assign enD_3 = drv0_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4);
assign enD_4 = drv0_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5);
assign enD_5 = drv0_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6);
assign enD_6 = drv0_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7);
assign enD_7 = drv0_enD_7;
endmodule                                                                       //[DSTAREG.NET:00126] END MODULE;
