                                                                                //[LFU.NET:00001] COMPILE;
                                                                                //[LFU.NET:00002] DIRECTORY MASTER;
/****************************************************************************
lfu
19/10/88

Blitter data logic function unit

This unit selects the data to be output during a write cycle.  This may be
taken from the source data, the destination data, or the pattern data.  In
sixteen bit mode the high byte is always the source data.

****************************************************************************/


module m_LFU                                                                    //[LFU.NET:00016] MODULE LFU;
(                                                                               //[LFU.NET:00016] MODULE LFU;

    input    MasterClock,
    input    inD_0,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_1,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_2,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_3,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_4,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_5,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_6,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_7,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_8,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_9,                                                             //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_10,                                                            //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_11,                                                            //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_12,                                                            //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_13,                                                            //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_14,                                                            //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_15,                                                            //[LFU.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    DAM1L,                                                             //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DATOEL,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_0,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_1,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_2,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_3,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_4,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_5,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_6,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    DSTD_7,                                                            //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    ID_4,                                                              //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
    input    ID_5,                                                              //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    ID_6,                                                              //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    ID_7,                                                              //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    LDCMPL,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    LDMODL,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_0,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_1,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_2,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_3,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_4,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_5,                                                            //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
    input    PATD_6,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    PATD_7,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    RES_0,                                                             //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_0,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_1,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_2,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_3,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_4,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_5,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_6,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_7,                                                            //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
    input    SRCD_8,                                                            //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_9,                                                            //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_10,                                                           //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_11,                                                           //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_12,                                                           //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_13,                                                           //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_14,                                                           //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    input    SRCD_15,                                                           //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
                                                                                //[LFU.NET:00019]    DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,ID_4,
                                                                                //[LFU.NET:00020]    ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
                                                                                //[LFU.NET:00021]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
                                                                                //[LFU.NET:00022]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    output    outD_0, enD_0,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_1, enD_1,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_2, enD_2,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_3, enD_3,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_4, enD_4,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_5, enD_5,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_6, enD_6,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_7, enD_7,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_8, enD_8,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_9, enD_9,                                                    //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_10, enD_10,                                                  //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_11, enD_11,                                                  //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_12, enD_12,                                                  //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_13, enD_13,                                                  //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_14, enD_14,                                                  //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
    output    outD_15, enD_15                                                   //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
);                                                                              //[LFU.NET:00016] MODULE LFU;
                                                                                //[LFU.NET:00024] LEVEL FUNCTION;
wire RESL_0;                                                                    //[LFU.NET:00027] RESL_0_(RESL_0) = N1A(RES_0);
wire LFUC_0;                                                                    //[LFU.NET:00031] LFUCL_0_(LFUC_0,LFUCL_0) = LD2A(ID_4,LDCMPL);
wire LFUCL_0;                                                                   //[LFU.NET:00031] LFUCL_0_(LFUC_0,LFUCL_0) = LD2A(ID_4,LDCMPL);
wire LFUC_1;                                                                    //[LFU.NET:00032] LFUCL_1_(LFUC_1,LFUCL_1) = LD2A(ID_5,LDCMPL);
wire LFUCL_1;                                                                   //[LFU.NET:00032] LFUCL_1_(LFUC_1,LFUCL_1) = LD2A(ID_5,LDCMPL);
wire LFUC_2;                                                                    //[LFU.NET:00033] LFUCL_2_(LFUC_2,LFUCL_2) = LD2A(ID_6,LDCMPL);
wire LFUCL_2;                                                                   //[LFU.NET:00033] LFUCL_2_(LFUC_2,LFUCL_2) = LD2A(ID_6,LDCMPL);
wire LFUC_3;                                                                    //[LFU.NET:00034] LFUCL_3_(LFUC_3,LFUCL_3) = LD2A(ID_7,LDCMPL);
wire LFUCL_3;                                                                   //[LFU.NET:00034] LFUCL_3_(LFUC_3,LFUCL_3) = LD2A(ID_7,LDCMPL);
wire PATSEL;                                                                    //[LFU.NET:00035] PATSEL_(PATSEL,PATSELL) = LD2A(ID_7,LDMODL);
wire PATSELL;                                                                   //[LFU.NET:00035] PATSEL_(PATSEL,PATSELL) = LD2A(ID_7,LDMODL);
wire PSD_0;                                                                     //[LFU.NET:00039] PSMUX_0_(PSD_0) = MUX2(SRCD_0,PATSELL,PATD_0,PATSEL);
wire PSD_1;                                                                     //[LFU.NET:00040] PSMUX_1_(PSD_1) = MUX2(SRCD_1,PATSELL,PATD_1,PATSEL);
wire PSD_2;                                                                     //[LFU.NET:00041] PSMUX_2_(PSD_2) = MUX2(SRCD_2,PATSELL,PATD_2,PATSEL);
wire PSD_3;                                                                     //[LFU.NET:00042] PSMUX_3_(PSD_3) = MUX2(SRCD_3,PATSELL,PATD_3,PATSEL);
wire PSD_4;                                                                     //[LFU.NET:00043] PSMUX_4_(PSD_4) = MUX2(SRCD_4,PATSELL,PATD_4,PATSEL);
wire PSD_5;                                                                     //[LFU.NET:00044] PSMUX_5_(PSD_5) = MUX2(SRCD_5,PATSELL,PATD_5,PATSEL);
wire PSD_6;                                                                     //[LFU.NET:00045] PSMUX_6_(PSD_6) = MUX2(SRCD_6,PATSELL,PATD_6,PATSEL);
wire PSD_7;                                                                     //[LFU.NET:00046] PSMUX_7_(PSD_7) = MUX2(SRCD_7,PATSELL,PATD_7,PATSEL);
wire FD_0;                                                                      //[LFU.NET:00050] LFU_0_(FD_0) = LFUBIT(PSD_0,DSTD_0,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_1;                                                                      //[LFU.NET:00051] LFU_1_(FD_1) = LFUBIT(PSD_1,DSTD_1,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_2;                                                                      //[LFU.NET:00052] LFU_2_(FD_2) = LFUBIT(PSD_2,DSTD_2,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_3;                                                                      //[LFU.NET:00053] LFU_3_(FD_3) = LFUBIT(PSD_3,DSTD_3,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_4;                                                                      //[LFU.NET:00054] LFU_4_(FD_4) = LFUBIT(PSD_4,DSTD_4,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_5;                                                                      //[LFU.NET:00055] LFU_5_(FD_5) = LFUBIT(PSD_5,DSTD_5,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_6;                                                                      //[LFU.NET:00056] LFU_6_(FD_6) = LFUBIT(PSD_6,DSTD_6,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire FD_7;                                                                      //[LFU.NET:00057] LFU_7_(FD_7) = LFUBIT(PSD_7,DSTD_7,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
wire LODSELL;                                                                   //[LFU.NET:00061] HRHDINV_(LODSEL,HIDSELL) = MACINV2(LODSELL,HIDSEL);
wire HIDSEL;                                                                    //[LFU.NET:00061] HRHDINV_(LODSEL,HIDSELL) = MACINV2(LODSELL,HIDSEL);
wire LODSEL;                                                                    //[LFU.NET:00061] HRHDINV_(LODSEL,HIDSELL) = MACINV2(LODSELL,HIDSEL);
wire HIDSELL;                                                                   //[LFU.NET:00061] HRHDINV_(LODSEL,HIDSELL) = MACINV2(LODSELL,HIDSEL);
wire DAM1;                                                                      //[LFU.NET:00062] DAM1_(DAM1) = N1A(DAM1L);
wire FDOL_0;                                                                    //[LFU.NET:00065] LFDOMUX_0_(FDOL_0) = AO2A(LODSEL,DSTD_0,LODSELL,FD_0);
wire FDOL_1;                                                                    //[LFU.NET:00066] LFDOMUX_1_(FDOL_1) = AO2A(LODSEL,DSTD_1,LODSELL,FD_1);
wire FDOL_2;                                                                    //[LFU.NET:00067] LFDOMUX_2_(FDOL_2) = AO2A(LODSEL,DSTD_2,LODSELL,FD_2);
wire FDOL_3;                                                                    //[LFU.NET:00068] LFDOMUX_3_(FDOL_3) = AO2A(LODSEL,DSTD_3,LODSELL,FD_3);
wire FDOL_4;                                                                    //[LFU.NET:00069] LFDOMUX_4_(FDOL_4) = AO2A(HIDSEL,DSTD_4,HIDSELL,FD_4);
wire FDOL_5;                                                                    //[LFU.NET:00070] LFDOMUX_5_(FDOL_5) = AO2A(HIDSEL,DSTD_5,HIDSELL,FD_5);
wire FDOL_6;                                                                    //[LFU.NET:00071] LFDOMUX_6_(FDOL_6) = AO2A(HIDSEL,DSTD_6,HIDSELL,FD_6);
wire FDOL_7;                                                                    //[LFU.NET:00072] LFDOMUX_7_(FDOL_7) = AO2A(HIDSEL,DSTD_7,HIDSELL,FD_7);
wire DATOE;                                                                     //[LFU.NET:00076] DATOE_(DATOE) = N1C(DATOEL);
wire drv0_outD_0;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_0;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_1;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_1;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_2;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_2;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_3;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_3;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_4;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_4;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_5;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_5;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_6;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_6;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_7;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_7;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_8;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_8;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_9;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_9;                                                                //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_10;                                                              //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_10;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_11;                                                              //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_11;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_12;                                                              //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_12;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_13;                                                              //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_13;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_14;                                                              //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_14;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_outD_15;                                                              //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;
wire drv0_enD_15;                                                               //[LFU.NET:00023] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15;

assign RESL_0 = ~RES_0;                                                         //[LFU.NET:00027] RESL_0_(RESL_0) = N1A(RES_0);

/* LFU Control bits */

LD2A LFUCL_0__inst (.MasterClock(MasterClock),.q(LFUC_0),.qL(LFUCL_0),.d(ID_4),.en(LDCMPL));//[LFU.NET:00031] LFUCL_0_(LFUC_0,LFUCL_0) = LD2A(ID_4,LDCMPL);
LD2A LFUCL_1__inst (.MasterClock(MasterClock),.q(LFUC_1),.qL(LFUCL_1),.d(ID_5),.en(LDCMPL));//[LFU.NET:00032] LFUCL_1_(LFUC_1,LFUCL_1) = LD2A(ID_5,LDCMPL);
LD2A LFUCL_2__inst (.MasterClock(MasterClock),.q(LFUC_2),.qL(LFUCL_2),.d(ID_6),.en(LDCMPL));//[LFU.NET:00033] LFUCL_2_(LFUC_2,LFUCL_2) = LD2A(ID_6,LDCMPL);
LD2A LFUCL_3__inst (.MasterClock(MasterClock),.q(LFUC_3),.qL(LFUCL_3),.d(ID_7),.en(LDCMPL));//[LFU.NET:00034] LFUCL_3_(LFUC_3,LFUCL_3) = LD2A(ID_7,LDCMPL);
LD2A PATSEL__inst (.MasterClock(MasterClock),.q(PATSEL),.qL(PATSELL),.d(ID_7),.en(LDMODL));//[LFU.NET:00035] PATSEL_(PATSEL,PATSELL) = LD2A(ID_7,LDMODL);

/* Select between pattern data and source data */

m_MUX2 PSMUX_0_ (.MasterClock(MasterClock),.IN1(SRCD_0),.SEL1(PATSELL),.IN2(PATD_0),.SEL2(PATSEL),.OUT(PSD_0));//[LFU.NET:00039] PSMUX_0_(PSD_0) = MUX2(SRCD_0,PATSELL,PATD_0,PATSEL);
m_MUX2 PSMUX_1_ (.MasterClock(MasterClock),.IN1(SRCD_1),.SEL1(PATSELL),.IN2(PATD_1),.SEL2(PATSEL),.OUT(PSD_1));//[LFU.NET:00040] PSMUX_1_(PSD_1) = MUX2(SRCD_1,PATSELL,PATD_1,PATSEL);
m_MUX2 PSMUX_2_ (.MasterClock(MasterClock),.IN1(SRCD_2),.SEL1(PATSELL),.IN2(PATD_2),.SEL2(PATSEL),.OUT(PSD_2));//[LFU.NET:00041] PSMUX_2_(PSD_2) = MUX2(SRCD_2,PATSELL,PATD_2,PATSEL);
m_MUX2 PSMUX_3_ (.MasterClock(MasterClock),.IN1(SRCD_3),.SEL1(PATSELL),.IN2(PATD_3),.SEL2(PATSEL),.OUT(PSD_3));//[LFU.NET:00042] PSMUX_3_(PSD_3) = MUX2(SRCD_3,PATSELL,PATD_3,PATSEL);
m_MUX2 PSMUX_4_ (.MasterClock(MasterClock),.IN1(SRCD_4),.SEL1(PATSELL),.IN2(PATD_4),.SEL2(PATSEL),.OUT(PSD_4));//[LFU.NET:00043] PSMUX_4_(PSD_4) = MUX2(SRCD_4,PATSELL,PATD_4,PATSEL);
m_MUX2 PSMUX_5_ (.MasterClock(MasterClock),.IN1(SRCD_5),.SEL1(PATSELL),.IN2(PATD_5),.SEL2(PATSEL),.OUT(PSD_5));//[LFU.NET:00044] PSMUX_5_(PSD_5) = MUX2(SRCD_5,PATSELL,PATD_5,PATSEL);
m_MUX2 PSMUX_6_ (.MasterClock(MasterClock),.IN1(SRCD_6),.SEL1(PATSELL),.IN2(PATD_6),.SEL2(PATSEL),.OUT(PSD_6));//[LFU.NET:00045] PSMUX_6_(PSD_6) = MUX2(SRCD_6,PATSELL,PATD_6,PATSEL);
m_MUX2 PSMUX_7_ (.MasterClock(MasterClock),.IN1(SRCD_7),.SEL1(PATSELL),.IN2(PATD_7),.SEL2(PATSEL),.OUT(PSD_7));//[LFU.NET:00046] PSMUX_7_(PSD_7) = MUX2(SRCD_7,PATSELL,PATD_7,PATSEL);

/* Logic Function Unit */

m_LFUBIT LFU_0_ (.MasterClock(MasterClock),.SRCD(PSD_0),.DSTD(DSTD_0),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_0));//[LFU.NET:00050] LFU_0_(FD_0) = LFUBIT(PSD_0,DSTD_0,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_1_ (.MasterClock(MasterClock),.SRCD(PSD_1),.DSTD(DSTD_1),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_1));//[LFU.NET:00051] LFU_1_(FD_1) = LFUBIT(PSD_1,DSTD_1,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_2_ (.MasterClock(MasterClock),.SRCD(PSD_2),.DSTD(DSTD_2),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_2));//[LFU.NET:00052] LFU_2_(FD_2) = LFUBIT(PSD_2,DSTD_2,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_3_ (.MasterClock(MasterClock),.SRCD(PSD_3),.DSTD(DSTD_3),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_3));//[LFU.NET:00053] LFU_3_(FD_3) = LFUBIT(PSD_3,DSTD_3,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_4_ (.MasterClock(MasterClock),.SRCD(PSD_4),.DSTD(DSTD_4),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_4));//[LFU.NET:00054] LFU_4_(FD_4) = LFUBIT(PSD_4,DSTD_4,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_5_ (.MasterClock(MasterClock),.SRCD(PSD_5),.DSTD(DSTD_5),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_5));//[LFU.NET:00055] LFU_5_(FD_5) = LFUBIT(PSD_5,DSTD_5,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_6_ (.MasterClock(MasterClock),.SRCD(PSD_6),.DSTD(DSTD_6),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_6));//[LFU.NET:00056] LFU_6_(FD_6) = LFUBIT(PSD_6,DSTD_6,LFUC_0,LFUC_1,LFUC_2,LFUC_3);
m_LFUBIT LFU_7_ (.MasterClock(MasterClock),.SRCD(PSD_7),.DSTD(DSTD_7),.LFUC_0(LFUC_0),.LFUC_1(LFUC_1),.LFUC_2(LFUC_2),.LFUC_3(LFUC_3),.DOUT(FD_7));//[LFU.NET:00057] LFU_7_(FD_7) = LFUBIT(PSD_7,DSTD_7,LFUC_0,LFUC_1,LFUC_2,LFUC_3);

/* Select LFU output or unchanged destination data for hires or lores */

m_MACINV2 HRHDINV_ (.MasterClock(MasterClock),.I1(LODSELL),.I2(HIDSEL),.Q1(LODSEL),.Q2(HIDSELL));//[LFU.NET:00061] HRHDINV_(LODSEL,HIDSELL) = MACINV2(LODSELL,HIDSEL);
assign DAM1 = ~DAM1L;                                                           //[LFU.NET:00062] DAM1_(DAM1) = N1A(DAM1L);
assign LODSELL = ~(RESL_0 & DAM1);                                              //[LFU.NET:00063] LODGEN_(LODSELL) = ND2A(RESL_0,DAM1);
assign HIDSEL = ~(RES_0 | DAM1);                                                //[LFU.NET:00064] HIDGEN_(HIDSEL) = NR2A(RES_0,DAM1);
assign FDOL_0 = ~((LODSEL & DSTD_0)|(LODSELL & FD_0));                          //[LFU.NET:00065] LFDOMUX_0_(FDOL_0) = AO2A(LODSEL,DSTD_0,LODSELL,FD_0);
assign FDOL_1 = ~((LODSEL & DSTD_1)|(LODSELL & FD_1));                          //[LFU.NET:00066] LFDOMUX_1_(FDOL_1) = AO2A(LODSEL,DSTD_1,LODSELL,FD_1);
assign FDOL_2 = ~((LODSEL & DSTD_2)|(LODSELL & FD_2));                          //[LFU.NET:00067] LFDOMUX_2_(FDOL_2) = AO2A(LODSEL,DSTD_2,LODSELL,FD_2);
assign FDOL_3 = ~((LODSEL & DSTD_3)|(LODSELL & FD_3));                          //[LFU.NET:00068] LFDOMUX_3_(FDOL_3) = AO2A(LODSEL,DSTD_3,LODSELL,FD_3);
assign FDOL_4 = ~((HIDSEL & DSTD_4)|(HIDSELL & FD_4));                          //[LFU.NET:00069] LFDOMUX_4_(FDOL_4) = AO2A(HIDSEL,DSTD_4,HIDSELL,FD_4);
assign FDOL_5 = ~((HIDSEL & DSTD_5)|(HIDSELL & FD_5));                          //[LFU.NET:00070] LFDOMUX_5_(FDOL_5) = AO2A(HIDSEL,DSTD_5,HIDSELL,FD_5);
assign FDOL_6 = ~((HIDSEL & DSTD_6)|(HIDSELL & FD_6));                          //[LFU.NET:00071] LFDOMUX_6_(FDOL_6) = AO2A(HIDSEL,DSTD_6,HIDSELL,FD_6);
assign FDOL_7 = ~((HIDSEL & DSTD_7)|(HIDSELL & FD_7));                          //[LFU.NET:00072] LFDOMUX_7_(FDOL_7) = AO2A(HIDSEL,DSTD_7,HIDSELL,FD_7);

/* Drive the output data onto the data bus */

assign DATOE = ~DATOEL;                                                         //[LFU.NET:00076] DATOE_(DATOE) = N1C(DATOEL);
assign drv0_outD_0 = ~FDOL_0; assign drv0_enD_0 = DATOE;                        //[LFU.NET:00077] LFDRIV_0_(D_0) = BTS5A(FDOL_0,DATOE);
assign drv0_outD_1 = ~FDOL_1; assign drv0_enD_1 = DATOE;                        //[LFU.NET:00078] LFDRIV_1_(D_1) = BTS5A(FDOL_1,DATOE);
assign drv0_outD_2 = ~FDOL_2; assign drv0_enD_2 = DATOE;                        //[LFU.NET:00079] LFDRIV_2_(D_2) = BTS5A(FDOL_2,DATOE);
assign drv0_outD_3 = ~FDOL_3; assign drv0_enD_3 = DATOE;                        //[LFU.NET:00080] LFDRIV_3_(D_3) = BTS5A(FDOL_3,DATOE);
assign drv0_outD_4 = ~FDOL_4; assign drv0_enD_4 = DATOE;                        //[LFU.NET:00081] LFDRIV_4_(D_4) = BTS5A(FDOL_4,DATOE);
assign drv0_outD_5 = ~FDOL_5; assign drv0_enD_5 = DATOE;                        //[LFU.NET:00082] LFDRIV_5_(D_5) = BTS5A(FDOL_5,DATOE);
assign drv0_outD_6 = ~FDOL_6; assign drv0_enD_6 = DATOE;                        //[LFU.NET:00083] LFDRIV_6_(D_6) = BTS5A(FDOL_6,DATOE);
assign drv0_outD_7 = ~FDOL_7; assign drv0_enD_7 = DATOE;                        //[LFU.NET:00084] LFDRIV_7_(D_7) = BTS5A(FDOL_7,DATOE);
assign drv0_outD_8 = SRCD_8; assign drv0_enD_8 = DATOE;                         //[LFU.NET:00085] LFDRIV_8_(D_8) = BTS4A(SRCD_8,DATOE);
assign drv0_outD_9 = SRCD_9; assign drv0_enD_9 = DATOE;                         //[LFU.NET:00086] LFDRIV_9_(D_9) = BTS4A(SRCD_9,DATOE);
assign drv0_outD_10 = SRCD_10; assign drv0_enD_10 = DATOE;                      //[LFU.NET:00087] LFDRIV_10_(D_10) = BTS4A(SRCD_10,DATOE);
assign drv0_outD_11 = SRCD_11; assign drv0_enD_11 = DATOE;                      //[LFU.NET:00088] LFDRIV_11_(D_11) = BTS4A(SRCD_11,DATOE);
assign drv0_outD_12 = SRCD_12; assign drv0_enD_12 = DATOE;                      //[LFU.NET:00089] LFDRIV_12_(D_12) = BTS4A(SRCD_12,DATOE);
assign drv0_outD_13 = SRCD_13; assign drv0_enD_13 = DATOE;                      //[LFU.NET:00090] LFDRIV_13_(D_13) = BTS4A(SRCD_13,DATOE);
assign drv0_outD_14 = SRCD_14; assign drv0_enD_14 = DATOE;                      //[LFU.NET:00091] LFDRIV_14_(D_14) = BTS4A(SRCD_14,DATOE);
assign drv0_outD_15 = SRCD_15; assign drv0_enD_15 = DATOE;                      //[LFU.NET:00092] LFDRIV_15_(D_15) = BTS4A(SRCD_15,DATOE);

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
assign outD_8 = (drv0_outD_8 & drv0_enD_8);
assign enD_8 = drv0_enD_8;
assign outD_9 = (drv0_outD_9 & drv0_enD_9);
assign enD_9 = drv0_enD_9;
assign outD_10 = (drv0_outD_10 & drv0_enD_10);
assign enD_10 = drv0_enD_10;
assign outD_11 = (drv0_outD_11 & drv0_enD_11);
assign enD_11 = drv0_enD_11;
assign outD_12 = (drv0_outD_12 & drv0_enD_12);
assign enD_12 = drv0_enD_12;
assign outD_13 = (drv0_outD_13 & drv0_enD_13);
assign enD_13 = drv0_enD_13;
assign outD_14 = (drv0_outD_14 & drv0_enD_14);
assign enD_14 = drv0_enD_14;
assign outD_15 = (drv0_outD_15 & drv0_enD_15);
assign enD_15 = drv0_enD_15;
endmodule                                                                       //[LFU.NET:00094] END MODULE;
