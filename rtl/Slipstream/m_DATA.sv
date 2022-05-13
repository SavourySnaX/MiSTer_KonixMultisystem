                                                                                //[DATA.NET:00001] COMPILE;
                                                                                //[DATA.NET:00002] DIRECTORY MASTER;
/***************************************************************************
data
15/10/88

Data path of blitter

This section contains the data registers, logic function unit, and data
comparator of the blitter.

***************************************************************************/


module m_DATA                                                                   //[DATA.NET:00015] MODULE DATA;
(                                                                               //[DATA.NET:00015] MODULE DATA;

    input    MasterClock,
    input    inD_0,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_1,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_2,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_3,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_4,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_5,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_6,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_7,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_8,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_9,                                                             //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_10,                                                            //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_11,                                                            //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_12,                                                            //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_13,                                                            //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_14,                                                            //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    inD_15,                                                            //[DATA.NET:00017] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    input    DAM1L,                                                             //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    DATOEL,                                                            //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    DSTCMP,                                                            //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ICNT_0,                                                            //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ICNT_1,                                                            //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ICNT_2,                                                            //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_0,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_1,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_2,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_3,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_4,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_5,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_6,                                                              //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_7,                                                              //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_8,                                                              //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_9,                                                              //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_10,                                                             //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_11,                                                             //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_12,                                                             //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_13,                                                             //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_14,                                                             //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    ID_15,                                                             //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    LDCMPL,                                                            //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    LDDSTL,                                                            //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    LDPATL,                                                            //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
    input    LDMODL,                                                            //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
    input    LDSRCL,                                                            //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
    input    RES_0,                                                             //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
    input    SSWAP,                                                             //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
    input    SRCCMP,                                                            //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
    input    SRCLTOH,                                                           //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
                                                                                //[DATA.NET:00018]    DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
                                                                                //[DATA.NET:00019]    ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,LDPATL,
                                                                                //[DATA.NET:00020]    LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH;
    output    outD_0, enD_0,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_1, enD_1,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_2, enD_2,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_3, enD_3,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_4, enD_4,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_5, enD_5,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_6, enD_6,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_7, enD_7,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_8, enD_8,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_9, enD_9,                                                    //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_10, enD_10,                                                  //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_11, enD_11,                                                  //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_12, enD_12,                                                  //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_13, enD_13,                                                  //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_14, enD_14,                                                  //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_15, enD_15,                                                  //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    INHIB                                                             //[DATA.NET:00022]    INHIB;
);                                                                              //[DATA.NET:00015] MODULE DATA;
                                                                                //[DATA.NET:00023] LEVEL FUNCTION;
wire SRCD_0;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_1;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_2;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_3;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_4;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_5;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_6;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_7;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_8;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_9;                                                                    //[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
wire SRCD_10;                                                                   //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
wire SRCD_11;                                                                   //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
wire SRCD_12;                                                                   //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
wire SRCD_13;                                                                   //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
wire SRCD_14;                                                                   //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
wire SRCD_15;                                                                   //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
wire DSTD_0;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_1;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_2;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_3;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_4;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_5;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_6;                                                                    //[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
wire DSTD_7;                                                                    //[DATA.NET:00032]    DSTD_7) = DSTDATA(LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7);
wire PATD_0;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_1;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_2;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_3;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_4;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_5;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_6;                                                                    //[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
wire PATD_7;                                                                    //[DATA.NET:00035]    PATD_7) = PATDATA(LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7);
wire drv0_outD_0;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_0;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_1;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_1;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_2;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_2;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_3;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_3;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_4;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_4;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_5;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_5;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_6;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_6;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_7;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_7;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_8;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_8;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_9;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_9;                                                                //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_10;                                                              //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_10;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_11;                                                              //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_11;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_12;                                                              //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_12;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_13;                                                              //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_13;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_14;                                                              //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_14;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_15;                                                              //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_15;                                                               //[DATA.NET:00021] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,

m_SRCDATA SRCDATA_ (.MasterClock(MasterClock),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.ID_8(ID_8),.ID_9(ID_9),.ID_10(ID_10),.ID_11(ID_11),.ID_12(ID_12),.ID_13(ID_13),.ID_14(ID_14),.ID_15(ID_15),.LDSRCL(LDSRCL),.SRCLTOH(SRCLTOH),.SSWAP(SSWAP),.SRCD_0(SRCD_0),.SRCD_1(SRCD_1),.SRCD_2(SRCD_2),.SRCD_3(SRCD_3),.SRCD_4(SRCD_4),.SRCD_5(SRCD_5),.SRCD_6(SRCD_6),.SRCD_7(SRCD_7),.SRCD_8(SRCD_8),.SRCD_9(SRCD_9),.SRCD_10(SRCD_10),.SRCD_11(SRCD_11),.SRCD_12(SRCD_12),.SRCD_13(SRCD_13),.SRCD_14(SRCD_14),.SRCD_15(SRCD_15));//[DATA.NET:00026] SRCDATA_(SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
                                                                                //[DATA.NET:00027]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15) = SRCDATA(ID_0,ID_1,ID_2,
                                                                                //[DATA.NET:00028]    ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,
                                                                                //[DATA.NET:00029]    LDSRCL,SRCLTOH,SSWAP);

m_DSTDATA DSTDATA_ (.MasterClock(MasterClock),.LDDSTL(LDDSTL),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.DSTD_0(DSTD_0),.DSTD_1(DSTD_1),.DSTD_2(DSTD_2),.DSTD_3(DSTD_3),.DSTD_4(DSTD_4),.DSTD_5(DSTD_5),.DSTD_6(DSTD_6),.DSTD_7(DSTD_7));//[DATA.NET:00031] DSTDATA_(DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
                                                                                //[DATA.NET:00032]    DSTD_7) = DSTDATA(LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7);

m_PATDATA PATDATA_ (.MasterClock(MasterClock),.LDPATL(LDPATL),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.PATD_0(PATD_0),.PATD_1(PATD_1),.PATD_2(PATD_2),.PATD_3(PATD_3),.PATD_4(PATD_4),.PATD_5(PATD_5),.PATD_6(PATD_6),.PATD_7(PATD_7));//[DATA.NET:00034] PATDATA_(PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,
                                                                                //[DATA.NET:00035]    PATD_7) = PATDATA(LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7);

m_COMP COMP_ (.MasterClock(MasterClock),.DSTCMP(DSTCMP),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.LDCMPL(LDCMPL),.LDMODL(LDMODL),.SRCD_0(SRCD_0),.SRCD_1(SRCD_1),.SRCD_2(SRCD_2),.SRCD_3(SRCD_3),.SRCD_4(SRCD_4),.SRCD_5(SRCD_5),.SRCD_6(SRCD_6),.SRCD_7(SRCD_7),.DSTD_0(DSTD_0),.DSTD_1(DSTD_1),.DSTD_2(DSTD_2),.DSTD_3(DSTD_3),.DSTD_4(DSTD_4),.DSTD_5(DSTD_5),.DSTD_6(DSTD_6),.DSTD_7(DSTD_7),.PATD_0(PATD_0),.PATD_1(PATD_1),.PATD_2(PATD_2),.PATD_3(PATD_3),.PATD_4(PATD_4),.PATD_5(PATD_5),.PATD_6(PATD_6),.PATD_7(PATD_7),.ICNT_0(ICNT_0),.ICNT_1(ICNT_1),.ICNT_2(ICNT_2),.DAM1L(DAM1L),.RES_0(RES_0),.SRCCMP(SRCCMP),.INHIB(INHIB));//[DATA.NET:00037] COMP_(INHIB) = COMP(DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,
                                                                                //[DATA.NET:00038]    SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,
                                                                                //[DATA.NET:00039]    DSTD_5,DSTD_6,DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,
                                                                                //[DATA.NET:00040]    ICNT_0,ICNT_1,ICNT_2,DAM1L,RES_0,SRCCMP);         


m_LFU LFU_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.inD_8(inD_8),.inD_9(inD_9),.inD_10(inD_10),.inD_11(inD_11),.inD_12(inD_12),.inD_13(inD_13),.inD_14(inD_14),.inD_15(inD_15),.DAM1L(DAM1L),.DATOEL(DATOEL),.DSTD_0(DSTD_0),.DSTD_1(DSTD_1),.DSTD_2(DSTD_2),.DSTD_3(DSTD_3),.DSTD_4(DSTD_4),.DSTD_5(DSTD_5),.DSTD_6(DSTD_6),.DSTD_7(DSTD_7),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDCMPL(LDCMPL),.LDMODL(LDMODL),.PATD_0(PATD_0),.PATD_1(PATD_1),.PATD_2(PATD_2),.PATD_3(PATD_3),.PATD_4(PATD_4),.PATD_5(PATD_5),.PATD_6(PATD_6),.PATD_7(PATD_7),.RES_0(RES_0),.SRCD_0(SRCD_0),.SRCD_1(SRCD_1),.SRCD_2(SRCD_2),.SRCD_3(SRCD_3),.SRCD_4(SRCD_4),.SRCD_5(SRCD_5),.SRCD_6(SRCD_6),.SRCD_7(SRCD_7),.SRCD_8(SRCD_8),.SRCD_9(SRCD_9),.SRCD_10(SRCD_10),.SRCD_11(SRCD_11),.SRCD_12(SRCD_12),.SRCD_13(SRCD_13),.SRCD_14(SRCD_14),.SRCD_15(SRCD_15),.outD_0(drv0_outD_0),.enD_0(drv0_enD_0),.outD_1(drv0_outD_1),.enD_1(drv0_enD_1),.outD_2(drv0_outD_2),.enD_2(drv0_enD_2),.outD_3(drv0_outD_3),.enD_3(drv0_enD_3),.outD_4(drv0_outD_4),.enD_4(drv0_enD_4),.outD_5(drv0_outD_5),.enD_5(drv0_enD_5),.outD_6(drv0_outD_6),.enD_6(drv0_enD_6),.outD_7(drv0_outD_7),.enD_7(drv0_enD_7),.outD_8(drv0_outD_8),.enD_8(drv0_enD_8),.outD_9(drv0_outD_9),.enD_9(drv0_enD_9),.outD_10(drv0_outD_10),.enD_10(drv0_enD_10),.outD_11(drv0_outD_11),.enD_11(drv0_enD_11),.outD_12(drv0_outD_12),.enD_12(drv0_enD_12),.outD_13(drv0_outD_13),.enD_13(drv0_enD_13),.outD_14(drv0_outD_14),.enD_14(drv0_enD_14),.outD_15(drv0_outD_15),.enD_15(drv0_enD_15));//[DATA.NET:00043] LFU_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
                                                                                //[DATA.NET:00044]    D_15) = LFU(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
                                                                                //[DATA.NET:00045]    D_15,DAM1L,DATOEL,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7,
                                                                                //[DATA.NET:00046]    ID_4,ID_5,ID_6,ID_7,LDCMPL,LDMODL,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,
                                                                                //[DATA.NET:00047]    PATD_6,PATD_7,RES_0,SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,
                                                                                //[DATA.NET:00048]    SRCD_8,SRCD_9,SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15);

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
endmodule                                                                       //[DATA.NET:00050] END MODULE;
