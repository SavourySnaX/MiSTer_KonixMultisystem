                                                                                //[ADDR.NET:00001] COMPILE;
                                                                                //[ADDR.NET:00002] DIRECTORY MASTER;
/***************************************************************************
addr
15/10/88

The blitter address generator

This section contains the address registers and the address updating
arithmetic logic.

**************************************************************************/


module m_ADDR                                                                   //[ADDR.NET:00015] MODULE ADDR;
(                                                                               //[ADDR.NET:00015] MODULE ADDR;

    input    MasterClock,
    input    inA_0,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[ADDR.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inA_17,                                                            //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inA_18,                                                            //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inA_19,                                                            //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_0,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_1,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_2,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_3,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_4,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_5,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_6,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    inD_7,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    ADDBACKL,                                                          //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    ADDBLDL,                                                           //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    ADSTP,                                                             //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
    input    BUSOE,                                                             //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    SRCENF,                                                            //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    DSTRDL_0,                                                          //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    DSTRDL_1,                                                          //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    DSTRDL_2,                                                          //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_0,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_1,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_2,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_3,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_4,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_5,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_6,                                                              //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
    input    ID_7,                                                              //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDDAL_0,                                                           //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDDAL_1,                                                           //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDDAL_2,                                                           //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDSAL_0,                                                           //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDSAL_1,                                                           //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDSAL_2,                                                           //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDSTPL,                                                            //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LDMODL,                                                            //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    LINDR,                                                             //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
    input    PCEN,                                                              //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    PCWRL_0,                                                           //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    PCWRL_1,                                                           //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    PCWRL_2,                                                           //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    RES_0,                                                             //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    RES_1,                                                             //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    RUN,                                                               //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    SDASEL,                                                            //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    SRCRD,                                                             //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    SRCRDL_0,                                                          //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    SRCRDL_1,                                                          //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
    input    SRCRDL_2,                                                          //[ADDR.NET:00022]    SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL;
    input    UPDDSTL,                                                           //[ADDR.NET:00022]    SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL;
    input    UPDPCL,                                                            //[ADDR.NET:00022]    SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL;
    input    UPDSRCL,                                                           //[ADDR.NET:00022]    SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL;
    input    UPSLDL,                                                            //[ADDR.NET:00022]    SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL;
                                                                                //[ADDR.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,
                                                                                //[ADDR.NET:00019]    BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
                                                                                //[ADDR.NET:00020]    ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,LDMODL,LINDR,
                                                                                //[ADDR.NET:00021]    PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,SRCRDL_0,SRCRDL_1,
                                                                                //[ADDR.NET:00022]    SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL;
    output    outA_0, enA_0,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outA_17, enA_17,                                                  //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outA_18, enA_18,                                                  //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outA_19, enA_19,                                                  //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_0, enD_0,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_1, enD_1,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_2, enD_2,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_3, enD_3,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_4, enD_4,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_5, enD_5,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_6, enD_6,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    outD_7, enD_7,                                                    //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    BORROW,                                                           //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    DAM1L,                                                            //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    DSTCMP,                                                           //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
    output    SAM1L,                                                            //[ADDR.NET:00025]    SAM1L,SRCCMP;
    output    SRCCMP                                                            //[ADDR.NET:00025]    SAM1L,SRCCMP;
);                                                                              //[ADDR.NET:00015] MODULE ADDR;
                                                                                //[ADDR.NET:00026] LEVEL FUNCTION;
wire ADDQ_0;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_1;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_2;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_3;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_4;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_5;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_6;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_7;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_8;                                                                    //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
wire ADDQ_9;                                                                    //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_10;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_11;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_12;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_13;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_14;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_15;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_16;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_17;                                                                   //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
wire ADDQ_18;                                                                   //[ADDR.NET:00034]    ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ADDQ_19;                                                                   //[ADDR.NET:00034]    ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ADDQM1;                                                                    //[ADDR.NET:00034]    ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire DAL_0;                                                                     //[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire DAL_1;                                                                     //[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire DAL_2;                                                                     //[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire DAL_3;                                                                     //[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire DAL_4;                                                                     //[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire DAL_5;                                                                     //[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
wire DAL_6;                                                                     //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_7;                                                                     //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_8;                                                                     //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_9;                                                                     //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_10;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_11;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_12;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_13;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_14;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_15;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_16;                                                                    //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
wire DAL_17;                                                                    //[ADDR.NET:00031]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP) = DSTAREG(D_0,D_1,D_2,D_3,D_4,
wire DAL_18;                                                                    //[ADDR.NET:00031]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP) = DSTAREG(D_0,D_1,D_2,D_3,D_4,
wire DAL_19;                                                                    //[ADDR.NET:00031]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP) = DSTAREG(D_0,D_1,D_2,D_3,D_4,
wire DSIGN;                                                                     //[ADDR.NET:00031]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP) = DSTAREG(D_0,D_1,D_2,D_3,D_4,
wire DWRAP;                                                                     //[ADDR.NET:00031]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP) = DSTAREG(D_0,D_1,D_2,D_3,D_4,
wire SAL_0;                                                                     //[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
wire SAL_1;                                                                     //[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
wire SAL_2;                                                                     //[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
wire SAL_3;                                                                     //[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
wire SAL_4;                                                                     //[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
wire SAL_5;                                                                     //[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
wire SAL_6;                                                                     //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_7;                                                                     //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_8;                                                                     //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_9;                                                                     //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_10;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_11;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_12;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_13;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_14;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_15;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_16;                                                                    //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
wire SAL_17;                                                                    //[ADDR.NET:00039]    SAL_17,SAL_18,SAL_19,SAM1L,SRCCMP,SSIGN,SWRAP) = SRCAREG(D_0,D_1,D_2,D_3,D_4,
wire SAL_18;                                                                    //[ADDR.NET:00039]    SAL_17,SAL_18,SAL_19,SAM1L,SRCCMP,SSIGN,SWRAP) = SRCAREG(D_0,D_1,D_2,D_3,D_4,
wire SAL_19;                                                                    //[ADDR.NET:00039]    SAL_17,SAL_18,SAL_19,SAM1L,SRCCMP,SSIGN,SWRAP) = SRCAREG(D_0,D_1,D_2,D_3,D_4,
wire SSIGN;                                                                     //[ADDR.NET:00039]    SAL_17,SAL_18,SAL_19,SAM1L,SRCCMP,SSIGN,SWRAP) = SRCAREG(D_0,D_1,D_2,D_3,D_4,
wire SWRAP;                                                                     //[ADDR.NET:00039]    SAL_17,SAL_18,SAL_19,SAM1L,SRCCMP,SSIGN,SWRAP) = SRCAREG(D_0,D_1,D_2,D_3,D_4,
wire PCL_0;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_1;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_2;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_3;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_4;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_5;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_6;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_7;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_8;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_9;                                                                     //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_10;                                                                    //[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
wire PCL_11;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_12;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_13;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_14;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_15;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_16;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_17;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_18;                                                                    //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
wire PCL_19;                                                                    //[ADDR.NET:00047]    PCL_19) = PCAREG(ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,
wire ADDAM1;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_0;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_1;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_2;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_3;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_4;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_5;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_6;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_7;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_8;                                                                    //[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
wire ADDA_9;                                                                    //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_10;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_11;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_12;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_13;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_14;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_15;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_16;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_17;                                                                   //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
wire ADDA_18;                                                                   //[ADDR.NET:00054]    ADDA_18,ADDA_19) = ADDAMUX(SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,
wire ADDA_19;                                                                   //[ADDR.NET:00054]    ADDA_18,ADDA_19) = ADDAMUX(SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,
wire STEP_0;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_1;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_2;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_3;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_4;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_5;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_6;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEP_7;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire STEPM1;                                                                    //[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
wire YFRAC;                                                                     //[ADDR.NET:00062]    YFRAC) = STEPREG(ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL);
wire CARRYOUT;                                                                  //[ADDR.NET:00066]    VHISIGN) = ADDBSEL(ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,
wire ADDBM1;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_0;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_1;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_2;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_3;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_4;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_5;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_6;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_7;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire ADDB_8;                                                                    //[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
wire CARRYIN_0;                                                                 //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
wire CARRYIN_1;                                                                 //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
wire CINH6;                                                                     //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
wire CINH7;                                                                     //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
wire CINH15;                                                                    //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
wire HISIGN;                                                                    //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
wire VHISIGN;                                                                   //[ADDR.NET:00066]    VHISIGN) = ADDBSEL(ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,
wire drv0_outA_0;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[ADDR.NET:00023] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enA_16;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outA_17;                                                              //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enA_17;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outA_18;                                                              //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enA_18;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outA_19;                                                              //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enA_19;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_0;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_0;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_0;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_0;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_1;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_1;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_1;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_1;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_2;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_2;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_2;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_2;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_3;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_3;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_3;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_3;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_4;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_4;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_4;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_4;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_5;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_5;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_5;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_5;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_6;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_6;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_6;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_6;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_outD_7;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv0_enD_7;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_outD_7;                                                               //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire drv1_enD_7;                                                                //[ADDR.NET:00024]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,

m_DSTAREG DSTAREG_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.ADDQ_0(ADDQ_0),.ADDQ_1(ADDQ_1),.ADDQ_2(ADDQ_2),.ADDQ_3(ADDQ_3),.ADDQ_4(ADDQ_4),.ADDQ_5(ADDQ_5),.ADDQ_6(ADDQ_6),.ADDQ_7(ADDQ_7),.ADDQ_8(ADDQ_8),.ADDQ_9(ADDQ_9),.ADDQ_10(ADDQ_10),.ADDQ_11(ADDQ_11),.ADDQ_12(ADDQ_12),.ADDQ_13(ADDQ_13),.ADDQ_14(ADDQ_14),.ADDQ_15(ADDQ_15),.ADDQ_16(ADDQ_16),.ADDQ_17(ADDQ_17),.ADDQ_18(ADDQ_18),.ADDQ_19(ADDQ_19),.ADDQM1(ADDQM1),.DSTRDL_0(DSTRDL_0),.DSTRDL_1(DSTRDL_1),.DSTRDL_2(DSTRDL_2),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDDAL_0(LDDAL_0),.LDDAL_1(LDDAL_1),.LDDAL_2(LDDAL_2),.SDASEL(SDASEL),.UPDDSTL(UPDDSTL),.outD_0(drv0_outD_0),.enD_0(drv0_enD_0),.outD_1(drv0_outD_1),.enD_1(drv0_enD_1),.outD_2(drv0_outD_2),.enD_2(drv0_enD_2),.outD_3(drv0_outD_3),.enD_3(drv0_enD_3),.outD_4(drv0_outD_4),.enD_4(drv0_enD_4),.outD_5(drv0_outD_5),.enD_5(drv0_enD_5),.outD_6(drv0_outD_6),.enD_6(drv0_enD_6),.outD_7(drv0_outD_7),.enD_7(drv0_enD_7),.DAL_0(DAL_0),.DAL_1(DAL_1),.DAL_2(DAL_2),.DAL_3(DAL_3),.DAL_4(DAL_4),.DAL_5(DAL_5),.DAL_6(DAL_6),.DAL_7(DAL_7),.DAL_8(DAL_8),.DAL_9(DAL_9),.DAL_10(DAL_10),.DAL_11(DAL_11),.DAL_12(DAL_12),.DAL_13(DAL_13),.DAL_14(DAL_14),.DAL_15(DAL_15),.DAL_16(DAL_16),.DAL_17(DAL_17),.DAL_18(DAL_18),.DAL_19(DAL_19),.DAM1L(DAM1L),.DSTCMP(DSTCMP),.DSIGN(DSIGN),.DWRAP(DWRAP));//[ADDR.NET:00029] DSTAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,
                                                                                //[ADDR.NET:00030]    DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,
                                                                                //[ADDR.NET:00031]    DAL_17,DAL_18,DAL_19,DAM1L,DSTCMP,DSIGN,DWRAP) = DSTAREG(D_0,D_1,D_2,D_3,D_4,
                                                                                //[ADDR.NET:00032]    D_5,D_6,D_7,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
                                                                                //[ADDR.NET:00033]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
                                                                                //[ADDR.NET:00034]    ADDQ_18,ADDQ_19,ADDQM1,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,ID_4,
                                                                                //[ADDR.NET:00035]    ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,SDASEL,UPDDSTL);

m_SRCAREG SRCAREG_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.ADDBACKL(ADDBACKL),.ADDBLDL(ADDBLDL),.ADDQ_0(ADDQ_0),.ADDQ_1(ADDQ_1),.ADDQ_2(ADDQ_2),.ADDQ_3(ADDQ_3),.ADDQ_4(ADDQ_4),.ADDQ_5(ADDQ_5),.ADDQ_6(ADDQ_6),.ADDQ_7(ADDQ_7),.ADDQ_8(ADDQ_8),.ADDQ_9(ADDQ_9),.ADDQ_10(ADDQ_10),.ADDQ_11(ADDQ_11),.ADDQ_12(ADDQ_12),.ADDQ_13(ADDQ_13),.ADDQ_14(ADDQ_14),.ADDQ_15(ADDQ_15),.ADDQ_16(ADDQ_16),.ADDQ_17(ADDQ_17),.ADDQ_18(ADDQ_18),.ADDQ_19(ADDQ_19),.ADDQM1(ADDQM1),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDSAL_0(LDSAL_0),.LDSAL_1(LDSAL_1),.LDSAL_2(LDSAL_2),.SDASEL(SDASEL),.SRCRDL_0(SRCRDL_0),.SRCRDL_1(SRCRDL_1),.SRCRDL_2(SRCRDL_2),.UPSLDL(UPSLDL),.outD_0(drv1_outD_0),.enD_0(drv1_enD_0),.outD_1(drv1_outD_1),.enD_1(drv1_enD_1),.outD_2(drv1_outD_2),.enD_2(drv1_enD_2),.outD_3(drv1_outD_3),.enD_3(drv1_enD_3),.outD_4(drv1_outD_4),.enD_4(drv1_enD_4),.outD_5(drv1_outD_5),.enD_5(drv1_enD_5),.outD_6(drv1_outD_6),.enD_6(drv1_enD_6),.outD_7(drv1_outD_7),.enD_7(drv1_enD_7),.SAL_0(SAL_0),.SAL_1(SAL_1),.SAL_2(SAL_2),.SAL_3(SAL_3),.SAL_4(SAL_4),.SAL_5(SAL_5),.SAL_6(SAL_6),.SAL_7(SAL_7),.SAL_8(SAL_8),.SAL_9(SAL_9),.SAL_10(SAL_10),.SAL_11(SAL_11),.SAL_12(SAL_12),.SAL_13(SAL_13),.SAL_14(SAL_14),.SAL_15(SAL_15),.SAL_16(SAL_16),.SAL_17(SAL_17),.SAL_18(SAL_18),.SAL_19(SAL_19),.SAM1L(SAM1L),.SRCCMP(SRCCMP),.SSIGN(SSIGN),.SWRAP(SWRAP));//[ADDR.NET:00037] SRCAREG_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,
                                                                                //[ADDR.NET:00038]    SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,
                                                                                //[ADDR.NET:00039]    SAL_17,SAL_18,SAL_19,SAM1L,SRCCMP,SSIGN,SWRAP) = SRCAREG(D_0,D_1,D_2,D_3,D_4,
                                                                                //[ADDR.NET:00040]    D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,
                                                                                //[ADDR.NET:00041]    ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,
                                                                                //[ADDR.NET:00042]    ADDQ_16,ADDQ_17,ADDQ_18,ADDQ_19,ADDQM1,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,
                                                                                //[ADDR.NET:00043]    ID_7,LDSAL_0,LDSAL_1,LDSAL_2,SDASEL,SRCRDL_0,SRCRDL_1,SRCRDL_2,UPSLDL);

m_PCAREG PCAREG_ (.MasterClock(MasterClock),.ADDQ_0(ADDQ_0),.ADDQ_1(ADDQ_1),.ADDQ_2(ADDQ_2),.ADDQ_3(ADDQ_3),.ADDQ_4(ADDQ_4),.ADDQ_5(ADDQ_5),.ADDQ_6(ADDQ_6),.ADDQ_7(ADDQ_7),.ADDQ_8(ADDQ_8),.ADDQ_9(ADDQ_9),.ADDQ_10(ADDQ_10),.ADDQ_11(ADDQ_11),.ADDQ_12(ADDQ_12),.ADDQ_13(ADDQ_13),.ADDQ_14(ADDQ_14),.ADDQ_15(ADDQ_15),.ADDQ_16(ADDQ_16),.ADDQ_17(ADDQ_17),.ADDQ_18(ADDQ_18),.ADDQ_19(ADDQ_19),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.PCWRL_0(PCWRL_0),.PCWRL_1(PCWRL_1),.PCWRL_2(PCWRL_2),.RUN(RUN),.UPDPCL(UPDPCL),.PCL_0(PCL_0),.PCL_1(PCL_1),.PCL_2(PCL_2),.PCL_3(PCL_3),.PCL_4(PCL_4),.PCL_5(PCL_5),.PCL_6(PCL_6),.PCL_7(PCL_7),.PCL_8(PCL_8),.PCL_9(PCL_9),.PCL_10(PCL_10),.PCL_11(PCL_11),.PCL_12(PCL_12),.PCL_13(PCL_13),.PCL_14(PCL_14),.PCL_15(PCL_15),.PCL_16(PCL_16),.PCL_17(PCL_17),.PCL_18(PCL_18),.PCL_19(PCL_19));//[ADDR.NET:00045] PCAREG_(PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
                                                                                //[ADDR.NET:00046]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,
                                                                                //[ADDR.NET:00047]    PCL_19) = PCAREG(ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,
                                                                                //[ADDR.NET:00048]    ADDQ_8,ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,
                                                                                //[ADDR.NET:00049]    ADDQ_17,ADDQ_18,ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,
                                                                                //[ADDR.NET:00050]    PCWRL_1,PCWRL_2,RUN,UPDPCL);

m_ADDAMUX ADDAMUX_ (.MasterClock(MasterClock),.SAL_0(SAL_0),.SAL_1(SAL_1),.SAL_2(SAL_2),.SAL_3(SAL_3),.SAL_4(SAL_4),.SAL_5(SAL_5),.SAL_6(SAL_6),.SAL_7(SAL_7),.SAL_8(SAL_8),.SAL_9(SAL_9),.SAL_10(SAL_10),.SAL_11(SAL_11),.SAL_12(SAL_12),.SAL_13(SAL_13),.SAL_14(SAL_14),.SAL_15(SAL_15),.SAL_16(SAL_16),.SAL_17(SAL_17),.SAL_18(SAL_18),.SAL_19(SAL_19),.DAL_0(DAL_0),.DAL_1(DAL_1),.DAL_2(DAL_2),.DAL_3(DAL_3),.DAL_4(DAL_4),.DAL_5(DAL_5),.DAL_6(DAL_6),.DAL_7(DAL_7),.DAL_8(DAL_8),.DAL_9(DAL_9),.DAL_10(DAL_10),.DAL_11(DAL_11),.DAL_12(DAL_12),.DAL_13(DAL_13),.DAL_14(DAL_14),.DAL_15(DAL_15),.DAL_16(DAL_16),.DAL_17(DAL_17),.DAL_18(DAL_18),.DAL_19(DAL_19),.PCL_0(PCL_0),.PCL_1(PCL_1),.PCL_2(PCL_2),.PCL_3(PCL_3),.PCL_4(PCL_4),.PCL_5(PCL_5),.PCL_6(PCL_6),.PCL_7(PCL_7),.PCL_8(PCL_8),.PCL_9(PCL_9),.PCL_10(PCL_10),.PCL_11(PCL_11),.PCL_12(PCL_12),.PCL_13(PCL_13),.PCL_14(PCL_14),.PCL_15(PCL_15),.PCL_16(PCL_16),.PCL_17(PCL_17),.PCL_18(PCL_18),.PCL_19(PCL_19),.UPDSRCL(UPDSRCL),.UPDPCL(UPDPCL),.SAM1L(SAM1L),.DAM1L(DAM1L),.ADDAM1(ADDAM1),.ADDA_0(ADDA_0),.ADDA_1(ADDA_1),.ADDA_2(ADDA_2),.ADDA_3(ADDA_3),.ADDA_4(ADDA_4),.ADDA_5(ADDA_5),.ADDA_6(ADDA_6),.ADDA_7(ADDA_7),.ADDA_8(ADDA_8),.ADDA_9(ADDA_9),.ADDA_10(ADDA_10),.ADDA_11(ADDA_11),.ADDA_12(ADDA_12),.ADDA_13(ADDA_13),.ADDA_14(ADDA_14),.ADDA_15(ADDA_15),.ADDA_16(ADDA_16),.ADDA_17(ADDA_17),.ADDA_18(ADDA_18),.ADDA_19(ADDA_19));//[ADDR.NET:00052] ADDAMUX_(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,
                                                                                //[ADDR.NET:00053]    ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,ADDA_14,ADDA_15,ADDA_16,ADDA_17,
                                                                                //[ADDR.NET:00054]    ADDA_18,ADDA_19) = ADDAMUX(SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,
                                                                                //[ADDR.NET:00055]    SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,
                                                                                //[ADDR.NET:00056]    SAL_19,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,
                                                                                //[ADDR.NET:00057]    DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,
                                                                                //[ADDR.NET:00058]    PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,
                                                                                //[ADDR.NET:00059]    PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,UPDSRCL,UPDPCL,SAM1L,DAM1L);

m_STEPREG STEPREG_ (.MasterClock(MasterClock),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDMODL(LDMODL),.LDSTPL(LDSTPL),.STEP_0(STEP_0),.STEP_1(STEP_1),.STEP_2(STEP_2),.STEP_3(STEP_3),.STEP_4(STEP_4),.STEP_5(STEP_5),.STEP_6(STEP_6),.STEP_7(STEP_7),.STEPM1(STEPM1),.YFRAC(YFRAC));//[ADDR.NET:00061] STEPREG_(STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,
                                                                                //[ADDR.NET:00062]    YFRAC) = STEPREG(ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL);

m_ADDBSEL ADDBSEL_ (.MasterClock(MasterClock),.ADSTP(ADSTP),.CARRYOUT(CARRYOUT),.SRCENF(SRCENF),.DSIGN(DSIGN),.DWRAP(DWRAP),.LINDR(LINDR),.RES_0(RES_0),.RES_1(RES_1),.STEP_0(STEP_0),.STEP_1(STEP_1),.STEP_2(STEP_2),.STEP_3(STEP_3),.STEP_4(STEP_4),.STEP_5(STEP_5),.STEP_6(STEP_6),.STEP_7(STEP_7),.STEPM1(STEPM1),.SSIGN(SSIGN),.SWRAP(SWRAP),.UPDPCL(UPDPCL),.UPDSRCL(UPDSRCL),.YFRAC(YFRAC),.ADDBM1(ADDBM1),.ADDB_0(ADDB_0),.ADDB_1(ADDB_1),.ADDB_2(ADDB_2),.ADDB_3(ADDB_3),.ADDB_4(ADDB_4),.ADDB_5(ADDB_5),.ADDB_6(ADDB_6),.ADDB_7(ADDB_7),.ADDB_8(ADDB_8),.BORROW(BORROW),.CARRYIN_0(CARRYIN_0),.CARRYIN_1(CARRYIN_1),.CINH6(CINH6),.CINH7(CINH7),.CINH15(CINH15),.HISIGN(HISIGN),.VHISIGN(VHISIGN));//[ADDR.NET:00064] ADDBSEL_(ADDBM1,ADDB_0,ADDB_1,ADDB_2,ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,
                                                                                //[ADDR.NET:00065]    BORROW,CARRYIN_0,CARRYIN_1,CINH6,CINH7,CINH15,HISIGN,
                                                                                //[ADDR.NET:00066]    VHISIGN) = ADDBSEL(ADSTP,CARRYOUT,SRCENF,DSIGN,DWRAP,LINDR,RES_0,RES_1,
                                                                                //[ADDR.NET:00067]    STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,SSIGN,SWRAP,
                                                                                //[ADDR.NET:00068]    UPDPCL,UPDSRCL,YFRAC);

m_ADDRADD ADDRADD_ (.MasterClock(MasterClock),.ADDAM1(ADDAM1),.ADDA_0(ADDA_0),.ADDA_1(ADDA_1),.ADDA_2(ADDA_2),.ADDA_3(ADDA_3),.ADDA_4(ADDA_4),.ADDA_5(ADDA_5),.ADDA_6(ADDA_6),.ADDA_7(ADDA_7),.ADDA_8(ADDA_8),.ADDA_9(ADDA_9),.ADDA_10(ADDA_10),.ADDA_11(ADDA_11),.ADDA_12(ADDA_12),.ADDA_13(ADDA_13),.ADDA_14(ADDA_14),.ADDA_15(ADDA_15),.ADDA_16(ADDA_16),.ADDA_17(ADDA_17),.ADDA_18(ADDA_18),.ADDA_19(ADDA_19),.ADDBM1(ADDBM1),.ADDB_0(ADDB_0),.ADDB_1(ADDB_1),.ADDB_2(ADDB_2),.ADDB_3(ADDB_3),.ADDB_4(ADDB_4),.ADDB_5(ADDB_5),.ADDB_6(ADDB_6),.ADDB_7(ADDB_7),.ADDB_8(ADDB_8),.CARRYIN_0(CARRYIN_0),.CARRYIN_1(CARRYIN_1),.CINH6(CINH6),.CINH7(CINH7),.CINH15(CINH15),.HISIGN(HISIGN),.VHISIGN(VHISIGN),.ADDQM1(ADDQM1),.ADDQ_0(ADDQ_0),.ADDQ_1(ADDQ_1),.ADDQ_2(ADDQ_2),.ADDQ_3(ADDQ_3),.ADDQ_4(ADDQ_4),.ADDQ_5(ADDQ_5),.ADDQ_6(ADDQ_6),.ADDQ_7(ADDQ_7),.ADDQ_8(ADDQ_8),.ADDQ_9(ADDQ_9),.ADDQ_10(ADDQ_10),.ADDQ_11(ADDQ_11),.ADDQ_12(ADDQ_12),.ADDQ_13(ADDQ_13),.ADDQ_14(ADDQ_14),.ADDQ_15(ADDQ_15),.ADDQ_16(ADDQ_16),.ADDQ_17(ADDQ_17),.ADDQ_18(ADDQ_18),.ADDQ_19(ADDQ_19),.CARRYOUT(CARRYOUT));//[ADDR.NET:00070] ADDRADD_(ADDQM1,ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,
                                                                                //[ADDR.NET:00071]    ADDQ_9,ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,
                                                                                //[ADDR.NET:00072]    ADDQ_18,ADDQ_19,CARRYOUT) = ADDRADD(ADDAM1,ADDA_0,ADDA_1,ADDA_2,ADDA_3,
                                                                                //[ADDR.NET:00073]    ADDA_4,ADDA_5,ADDA_6,ADDA_7,ADDA_8,ADDA_9,ADDA_10,ADDA_11,ADDA_12,ADDA_13,
                                                                                //[ADDR.NET:00074]    ADDA_14,ADDA_15,ADDA_16,ADDA_17,ADDA_18,ADDA_19,ADDBM1,ADDB_0,ADDB_1,ADDB_2,
                                                                                //[ADDR.NET:00075]    ADDB_3,ADDB_4,ADDB_5,ADDB_6,ADDB_7,ADDB_8,CARRYIN_0,CARRYIN_1,CINH6,CINH7,
                                                                                //[ADDR.NET:00076]    CINH15,HISIGN,VHISIGN);

m_ADDROUT ADDROUT_ (.MasterClock(MasterClock),.inA_0(inA_0),.inA_1(inA_1),.inA_2(inA_2),.inA_3(inA_3),.inA_4(inA_4),.inA_5(inA_5),.inA_6(inA_6),.inA_7(inA_7),.inA_8(inA_8),.inA_9(inA_9),.inA_10(inA_10),.inA_11(inA_11),.inA_12(inA_12),.inA_13(inA_13),.inA_14(inA_14),.inA_15(inA_15),.inA_16(inA_16),.inA_17(inA_17),.inA_18(inA_18),.inA_19(inA_19),.SAL_0(SAL_0),.SAL_1(SAL_1),.SAL_2(SAL_2),.SAL_3(SAL_3),.SAL_4(SAL_4),.SAL_5(SAL_5),.SAL_6(SAL_6),.SAL_7(SAL_7),.SAL_8(SAL_8),.SAL_9(SAL_9),.SAL_10(SAL_10),.SAL_11(SAL_11),.SAL_12(SAL_12),.SAL_13(SAL_13),.SAL_14(SAL_14),.SAL_15(SAL_15),.SAL_16(SAL_16),.SAL_17(SAL_17),.SAL_18(SAL_18),.SAL_19(SAL_19),.DAL_0(DAL_0),.DAL_1(DAL_1),.DAL_2(DAL_2),.DAL_3(DAL_3),.DAL_4(DAL_4),.DAL_5(DAL_5),.DAL_6(DAL_6),.DAL_7(DAL_7),.DAL_8(DAL_8),.DAL_9(DAL_9),.DAL_10(DAL_10),.DAL_11(DAL_11),.DAL_12(DAL_12),.DAL_13(DAL_13),.DAL_14(DAL_14),.DAL_15(DAL_15),.DAL_16(DAL_16),.DAL_17(DAL_17),.DAL_18(DAL_18),.DAL_19(DAL_19),.PCL_0(PCL_0),.PCL_1(PCL_1),.PCL_2(PCL_2),.PCL_3(PCL_3),.PCL_4(PCL_4),.PCL_5(PCL_5),.PCL_6(PCL_6),.PCL_7(PCL_7),.PCL_8(PCL_8),.PCL_9(PCL_9),.PCL_10(PCL_10),.PCL_11(PCL_11),.PCL_12(PCL_12),.PCL_13(PCL_13),.PCL_14(PCL_14),.PCL_15(PCL_15),.PCL_16(PCL_16),.PCL_17(PCL_17),.PCL_18(PCL_18),.PCL_19(PCL_19),.PCEN(PCEN),.SRCRD(SRCRD),.BUSOE(BUSOE),.outA_0(drv0_outA_0),.enA_0(drv0_enA_0),.outA_1(drv0_outA_1),.enA_1(drv0_enA_1),.outA_2(drv0_outA_2),.enA_2(drv0_enA_2),.outA_3(drv0_outA_3),.enA_3(drv0_enA_3),.outA_4(drv0_outA_4),.enA_4(drv0_enA_4),.outA_5(drv0_outA_5),.enA_5(drv0_enA_5),.outA_6(drv0_outA_6),.enA_6(drv0_enA_6),.outA_7(drv0_outA_7),.enA_7(drv0_enA_7),.outA_8(drv0_outA_8),.enA_8(drv0_enA_8),.outA_9(drv0_outA_9),.enA_9(drv0_enA_9),.outA_10(drv0_outA_10),.enA_10(drv0_enA_10),.outA_11(drv0_outA_11),.enA_11(drv0_enA_11),.outA_12(drv0_outA_12),.enA_12(drv0_enA_12),.outA_13(drv0_outA_13),.enA_13(drv0_enA_13),.outA_14(drv0_outA_14),.enA_14(drv0_enA_14),.outA_15(drv0_outA_15),.enA_15(drv0_enA_15),.outA_16(drv0_outA_16),.enA_16(drv0_enA_16),.outA_17(drv0_outA_17),.enA_17(drv0_enA_17),.outA_18(drv0_outA_18),.enA_18(drv0_enA_18),.outA_19(drv0_outA_19),.enA_19(drv0_enA_19));//[ADDR.NET:00078] ADDROUT_(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
                                                                                //[ADDR.NET:00079]    A_16,A_17,A_18,A_19) = ADDROUT(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,
                                                                                //[ADDR.NET:00080]    A_11,A_12,A_13,A_14,A_15,A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,
                                                                                //[ADDR.NET:00081]    SAL_5,SAL_6,SAL_7,SAL_8,SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,
                                                                                //[ADDR.NET:00082]    SAL_16,SAL_17,SAL_18,SAL_19,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,
                                                                                //[ADDR.NET:00083]    DAL_8,DAL_9,DAL_10,DAL_11,DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,
                                                                                //[ADDR.NET:00084]    DAL_19,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
                                                                                //[ADDR.NET:00085]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,
                                                                                //[ADDR.NET:00086]    BUSOE);

assign outA_0 = (drv0_outA_0 & drv0_enA_0);
assign enA_0 = drv0_enA_0;
assign outA_1 = (drv0_outA_1 & drv0_enA_1);
assign enA_1 = drv0_enA_1;
assign outA_2 = (drv0_outA_2 & drv0_enA_2);
assign enA_2 = drv0_enA_2;
assign outA_3 = (drv0_outA_3 & drv0_enA_3);
assign enA_3 = drv0_enA_3;
assign outA_4 = (drv0_outA_4 & drv0_enA_4);
assign enA_4 = drv0_enA_4;
assign outA_5 = (drv0_outA_5 & drv0_enA_5);
assign enA_5 = drv0_enA_5;
assign outA_6 = (drv0_outA_6 & drv0_enA_6);
assign enA_6 = drv0_enA_6;
assign outA_7 = (drv0_outA_7 & drv0_enA_7);
assign enA_7 = drv0_enA_7;
assign outA_8 = (drv0_outA_8 & drv0_enA_8);
assign enA_8 = drv0_enA_8;
assign outA_9 = (drv0_outA_9 & drv0_enA_9);
assign enA_9 = drv0_enA_9;
assign outA_10 = (drv0_outA_10 & drv0_enA_10);
assign enA_10 = drv0_enA_10;
assign outA_11 = (drv0_outA_11 & drv0_enA_11);
assign enA_11 = drv0_enA_11;
assign outA_12 = (drv0_outA_12 & drv0_enA_12);
assign enA_12 = drv0_enA_12;
assign outA_13 = (drv0_outA_13 & drv0_enA_13);
assign enA_13 = drv0_enA_13;
assign outA_14 = (drv0_outA_14 & drv0_enA_14);
assign enA_14 = drv0_enA_14;
assign outA_15 = (drv0_outA_15 & drv0_enA_15);
assign enA_15 = drv0_enA_15;
assign outA_16 = (drv0_outA_16 & drv0_enA_16);
assign enA_16 = drv0_enA_16;
assign outA_17 = (drv0_outA_17 & drv0_enA_17);
assign enA_17 = drv0_enA_17;
assign outA_18 = (drv0_outA_18 & drv0_enA_18);
assign enA_18 = drv0_enA_18;
assign outA_19 = (drv0_outA_19 & drv0_enA_19);
assign enA_19 = drv0_enA_19;
assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7;
endmodule                                                                       //[ADDR.NET:00088] END MODULE;
