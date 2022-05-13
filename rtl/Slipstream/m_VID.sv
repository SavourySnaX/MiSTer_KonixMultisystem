                                                                                //[VID.NET:00001] COMPILE;
                                                                                //[VID.NET:00002] DIRECTORY MASTER;
/********************************************************
*	vid-hdl						*
*	2/11/88						*
********************************************************/

/*
This module is the video block within the SLIPSTREAM chip on the ACW
*/




module m_VID                                                                    //[VID.NET:00015] MODULE VID;
(                                                                               //[VID.NET:00015] MODULE VID;

    input    MasterClock,
    input    inA_0,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[VID.NET:00017] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_17,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_18,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_19,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_0,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_1,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_2,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_3,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_4,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_5,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_6,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_7,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_8,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_9,                                                             //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_10,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_11,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_12,                                                            //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_13,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inD_14,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inD_15,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_0,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_1,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_2,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_3,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_4,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_5,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_6,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_7,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_8,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_9,                                                            //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_10,                                                           //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_11,                                                           //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    input    inPD_12,                                                           //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    inPD_13,                                                           //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    inPD_14,                                                           //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    inPD_15,                                                           //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_0,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_1,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_2,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_3,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_4,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_5,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_6,                                                            //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_7,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_8,                                                             //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_9,                                                             //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_10,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_11,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_12,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_13,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_14,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_15,                                                            //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VDL_8,                                                             //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VDL_9,                                                             //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VDL_10,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VDL_11,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VDL_12,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VDL_13,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VDL_14,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VDL_15,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VRD,                                                               //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VWR,                                                               //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    VLOCK,                                                             //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    HLOCK,                                                             //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    PALL,                                                              //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    PSRAML,                                                            //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
    input    ASL_16,                                                            //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    ASL_17,                                                            //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    ASL_18,                                                            //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    ASL_19,                                                            //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    RESETL_0,                                                          //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    IOML,                                                              //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    ALEL,                                                              //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    INTAL,                                                             //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    BMREQ,                                                             //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    DMREQ,                                                             //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    HLDAL,                                                             //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    XTALL,                                                             //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
    input    AIL_0,                                                             //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    AIL_1,                                                             //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    AIL_2,                                                             //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    LP,                                                                //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    BHOLDL,                                                            //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    BWORD,                                                             //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    DWORD,                                                             //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    FASTL,                                                             //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    BRD,                                                               //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    DRD,                                                               //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    BWR,                                                               //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    DWR,                                                               //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    input    CCLK,                                                              //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
                                                                                //[VID.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
                                                                                //[VID.NET:00019]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
                                                                                //[VID.NET:00020]    PD_12,PD_13,PD_14,PD_15,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
                                                                                //[VID.NET:00021]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
                                                                                //[VID.NET:00022]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,
                                                                                //[VID.NET:00023]    ASL_16,ASL_17,ASL_18,ASL_19,RESETL_0,IOML,ALEL,INTAL,BMREQ,DMREQ,HLDAL,XTALL,
                                                                                //[VID.NET:00024]    AIL_0,AIL_1,AIL_2,LP,BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR,CCLK;
    output    outA_0, enA_0,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_17, enA_17,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_18, enA_18,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_19, enA_19,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_0, enD_0,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_1, enD_1,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_2, enD_2,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_3, enD_3,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_4, enD_4,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_5, enD_5,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_6, enD_6,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_7, enD_7,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_8, enD_8,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_9, enD_9,                                                    //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_10, enD_10,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_11, enD_11,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_12, enD_12,                                                  //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_13, enD_13,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outD_14, enD_14,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outD_15, enD_15,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_0, enPD_0,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_1, enPD_1,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_2, enPD_2,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_3, enPD_3,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_4, enPD_4,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_5, enPD_5,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_6, enPD_6,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_7, enPD_7,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_8, enPD_8,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_9, enPD_9,                                                  //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_10, enPD_10,                                                //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_11, enPD_11,                                                //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
    output    outPD_12, enPD_12,                                                //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    outPD_13, enPD_13,                                                //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    outPD_14, enPD_14,                                                //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    outPD_15, enPD_15,                                                //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_0,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_1,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_2,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_3,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_4,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_5,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_6,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAD_7,                                                            //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    ADEN,                                                             //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
    output    VAL_0,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_1,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_2,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_3,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_4,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_5,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_6,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VAL_7,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VA_8,                                                             //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VA_9,                                                             //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VA_10,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VA_11,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VA_12,                                                            //[VID.NET:00029]    VAL_0,VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,
    output    VA_13,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VA_14,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VA_15,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    AEN,                                                              //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VAL_16,                                                           //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VAL_17,                                                           //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    DEN,                                                              //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_8,                                                             //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_9,                                                             //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_10,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_11,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_12,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_13,                                                            //[VID.NET:00030]    VA_13,VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,
    output    VD_14,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    VD_15,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    VRDL,                                                             //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    VWRL,                                                             //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    INTL,                                                             //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    VSYNC,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    HSYNC,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    TESTENL,                                                          //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    PCLKL,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    HOLDL,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    SCE_0,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    SCE_1,                                                            //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    WE,                                                               //[VID.NET:00031]    VD_14,VD_15,VRDL,VWRL,INTL,VSYNC,HSYNC,TESTENL,PCLKL,HOLDL,SCE_0,SCE_1,WE,
    output    DWE,                                                              //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    CS_0,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    CS_1,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    RL_0,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    RL_1,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    RL_2,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    RL_3,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    GL_0,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    GL_1,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    GL_2,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    GL_3,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    BL_0,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    BL_1,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    BL_2,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    BL_3,                                                             //[VID.NET:00032]    DWE,CS_0,CS_1,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,
    output    CHROMAL,                                                          //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    JOYL_0,                                                           //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    JOYL_1,                                                           //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    JOYL_2,                                                           //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    OE,                                                               //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    CAS,                                                              //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    IORDL,                                                            //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    IOWRL,                                                            //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    BCSL,                                                             //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    DCSL,                                                             //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    ICCLK,                                                            //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    WAITL,                                                            //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    RDL,                                                              //[VID.NET:00033]    CHROMAL,JOYL_0,JOYL_1,JOYL_2,OE,CAS,IORDL,IOWRL,BCSL,DCSL,ICCLK,WAITL,RDL,
    output    WRL,                                                              //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_0,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_1,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_2,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_3,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_4,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_5,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_6,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PA_7,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    POE,                                                              //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PWE,                                                              //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    PCS,                                                              //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    MO,                                                               //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    INCL,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    DOEN,                                                             //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    GPIOL_0,                                                          //[VID.NET:00034]    WRL,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS,MO,INCL,DOEN,GPIOL_0,
    output    GPIOL_1,                                                          //[VID.NET:00035]    GPIOL_1,DQCLK;
    output    DQCLK                                                             //[VID.NET:00035]    GPIOL_1,DQCLK;
    ,output    BLANKING
);                                                                              //[VID.NET:00015] MODULE VID;
                                                                                //[VID.NET:00036] LEVEL FUNCTION;
wire NTSC;                                                                      //[VID.NET:00041] CLOCK_(PCLKL,ICCLK,CHROMAL,DQCLK) = CLOCK(XTALL,VRD,VWR,NTSC,FAST,TSTCLK,LP);
wire FAST;                                                                      //[VID.NET:00041] CLOCK_(PCLKL,ICCLK,CHROMAL,DQCLK) = CLOCK(XTALL,VRD,VWR,NTSC,FAST,TSTCLK,LP);
wire TSTCLK;                                                                    //[VID.NET:00041] CLOCK_(PCLKL,ICCLK,CHROMAL,DQCLK) = CLOCK(XTALL,VRD,VWR,NTSC,FAST,TSTCLK,LP);
wire SSIORD;                                                                    //[VID.NET:00045] IODEC_(IORDL,IOWRL,BCSL,JOYL_0,JOYL_1,JOYL_2,SSIORD,INTLLD,INTH,STARTL,STARTH,
wire INTLLD;                                                                    //[VID.NET:00045] IODEC_(IORDL,IOWRL,BCSL,JOYL_0,JOYL_1,JOYL_2,SSIORD,INTLLD,INTH,STARTL,STARTH,
wire INTH;                                                                      //[VID.NET:00045] IODEC_(IORDL,IOWRL,BCSL,JOYL_0,JOYL_1,JOYL_2,SSIORD,INTLLD,INTH,STARTL,STARTH,
wire STARTL;                                                                    //[VID.NET:00045] IODEC_(IORDL,IOWRL,BCSL,JOYL_0,JOYL_1,JOYL_2,SSIORD,INTLLD,INTH,STARTL,STARTH,
wire STARTH;                                                                    //[VID.NET:00045] IODEC_(IORDL,IOWRL,BCSL,JOYL_0,JOYL_1,JOYL_2,SSIORD,INTLLD,INTH,STARTL,STARTH,
wire HCNTL;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire HCNTH;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire VCNTL;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire VCNTH;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire SCRL_0;                                                                    //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire SCRL_1;                                                                    //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire SCRL_2;                                                                    //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire MODE;                                                                      //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire BORDL;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire BORDH;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire TRANS;                                                                     //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire MASK;                                                                      //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
wire INDEX;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire ENDL;                                                                      //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire ENDH;                                                                      //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire MEMLD;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire DIAGL_0;                                                                   //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire DIAG_1;                                                                    //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire LPL_0;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire LPL_1;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire LPL_2;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire LPL_3;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire STATL;                                                                     //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire LCD;                                                                       //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire ACK;                                                                       //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
wire DIS;                                                                       //[VID.NET:00048]    DIS,GPIOL_0,GPIOL_1) = IODEC(RESETL_0,CCLK,IOML,VRD,VWR,A_0,A_1,A_2,A_3,A_4,
wire VHOLDL;                                                                    //[VID.NET:00065]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
wire SA_0;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_1;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_2;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_3;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_4;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_5;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_6;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_7;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_8;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_9;                                                                      //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_10;                                                                     //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_11;                                                                     //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_12;                                                                     //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_13;                                                                     //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
wire SA_14;                                                                     //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);
wire SA_15;                                                                     //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);
wire SA_16;                                                                     //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);
wire SA_17;                                                                     //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);
wire SAEN;                                                                      //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);
wire MUXL;                                                                      //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);
wire WD_0;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_1;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_2;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_3;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_4;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_5;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_6;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire WD_7;                                                                      //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire PALCS;                                                                     //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
wire VBUSYL_0;                                                                  //[VID.NET:00074]    BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,
wire VBUSYL_1;                                                                  //[VID.NET:00074]    BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,
wire VCS;                                                                       //[VID.NET:00074]    BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,
wire VOE;                                                                       //[VID.NET:00074]    BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,
wire VCAS;                                                                      //[VID.NET:00074]    BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,
wire VRAS;                                                                      //[VID.NET:00075]    VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD);
wire PSUEDO;                                                                    //[VID.NET:00075]    VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD);
wire MODE_0;                                                                    //[VID.NET:00084]    WD_4,WD_5,WD_6,WD_7,MODE_0,MODE_1,SCRL_0,SCRL_1,SCRL_2,VVACTIVE,HVACTIVE,
wire MODE_1;                                                                    //[VID.NET:00084]    WD_4,WD_5,WD_6,WD_7,MODE_0,MODE_1,SCRL_0,SCRL_1,SCRL_2,VVACTIVE,HVACTIVE,
wire VVACTIVE;                                                                  //[VID.NET:00084]    WD_4,WD_5,WD_6,WD_7,MODE_0,MODE_1,SCRL_0,SCRL_1,SCRL_2,VVACTIVE,HVACTIVE,
wire HVACTIVE;                                                                  //[VID.NET:00084]    WD_4,WD_5,WD_6,WD_7,MODE_0,MODE_1,SCRL_0,SCRL_1,SCRL_2,VVACTIVE,HVACTIVE,
wire VSTART;                                                                    //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire HC_0;                                                                      //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire HC_1;                                                                      //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire HC_2;                                                                      //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire HC_3;                                                                      //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire HD1;                                                                       //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire HVHOLD;                                                                    //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire NOWRAP;                                                                    //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);
wire PIXLD_0;                                                                   //[VID.NET:00083]    PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1) = VTIM(RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,
wire PIXLD_1;                                                                   //[VID.NET:00083]    PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1) = VTIM(RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,
wire PIXAD_0;                                                                   //[VID.NET:00083]    PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1) = VTIM(RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,
wire PIXAD_1;                                                                   //[VID.NET:00083]    PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1) = VTIM(RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,
wire GENLOCK;                                                                   //[VID.NET:00094]    HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV);
wire OPEN;                                                                      //[VID.NET:00094]    HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV);
wire NEXTV;                                                                     //[VID.NET:00094]    HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV);
wire HBORDER;                                                                   //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
wire HBLANKING;                                                                 //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
wire HVSYNC;                                                                    //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
wire LPSET;                                                                     //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
wire LPCLK;                                                                     //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
wire HINT;                                                                      //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
wire VCEN;                                                                      //[VID.NET:00102]    STARTL,STARTH,ENDL,ENDH,INTLLD,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,VCEN,
wire LORES;                                                                     //[VID.NET:00103]    LORES,HINT);
wire VINT;                                                                      //[VID.NET:00099] VCNT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire BORDER;                                                                    //[VID.NET:00099] VCNT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
wire TMODE;                                                                     //[VID.NET:00117]    TMODE,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,VADL_7,VDL_8,VDL_9,
wire drv0_outA_0;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[VID.NET:00025] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_16;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_17;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_17;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_18;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_18;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_19;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_19;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_0;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_0;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_0;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_0;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_0;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_0;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_0;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_0;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_0;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_0;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_0;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_0;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_1;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_1;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_1;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_1;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_1;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_1;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_1;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_1;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_1;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_1;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_1;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_1;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_2;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_2;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_2;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_2;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_2;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_2;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_2;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_2;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_2;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_2;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_2;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_2;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_3;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_3;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_3;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_3;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_3;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_3;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_3;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_3;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_3;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_3;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_3;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_3;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_4;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_4;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_4;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_4;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_4;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_4;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_4;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_4;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_4;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_4;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_4;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_4;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_5;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_5;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_5;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_5;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_5;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_5;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_5;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_5;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_5;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_5;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_5;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_5;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_6;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_6;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_6;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_6;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_6;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_6;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_6;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_6;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_6;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_6;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_6;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_6;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_7;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_7;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_7;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_7;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_7;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_7;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_7;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_7;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_outD_7;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv4_enD_7;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_outD_7;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv5_enD_7;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_8;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_8;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_9;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_9;                                                                //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_10;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_10;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_11;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_11;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_12;                                                              //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_12;                                                               //[VID.NET:00026]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_13;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enD_13;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outD_14;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enD_14;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outD_15;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enD_15;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_0;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_0;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_1;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_1;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_2;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_2;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_3;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_3;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_4;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_4;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_5;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_5;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_6;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_6;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_7;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_7;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_8;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_8;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_9;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_9;                                                               //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_10;                                                             //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_10;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_11;                                                             //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_enPD_11;                                                              //[VID.NET:00027]    D_13,D_14,D_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
wire drv0_outPD_12;                                                             //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_enPD_12;                                                              //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_outPD_13;                                                             //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_enPD_13;                                                              //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_outPD_14;                                                             //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_enPD_14;                                                              //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_outPD_15;                                                             //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,
wire drv0_enPD_15;                                                              //[VID.NET:00028]    PD_12,PD_13,PD_14,PD_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,

/* Clock generator */

m_CLOCK CLOCK_ (.MasterClock(MasterClock),.MCK(XTALL),.VRD(VRD),.VWR(VWR),.NTSC(NTSC),.FAST(FAST),.TSTCLK(TSTCLK),.LP(LP),.PCLKL(PCLKL),.CCLK(ICCLK),.CHROMAL(CHROMAL),.DQCLK(DQCLK));//[VID.NET:00041] CLOCK_(PCLKL,ICCLK,CHROMAL,DQCLK) = CLOCK(XTALL,VRD,VWR,NTSC,FAST,TSTCLK,LP);

/* IO decodes */

m_IODEC IODEC_ (.MasterClock(MasterClock),.RESETL_0(RESETL_0),.CLK(CCLK),.IOML(IOML),.VRD(VRD),.VWR(VWR),.A_0(inA_0),.A_1(inA_1),.A_2(inA_2),.A_3(inA_3),.A_4(inA_4),.A_5(inA_5),.A_6(inA_6),.A_7(inA_7),.IORDL(IORDL),.IOWRL(IOWRL),.BCSL(BCSL),.JOYL_0(JOYL_0),.JOYL_1(JOYL_1),.JOYL_2(JOYL_2),.SSIORD(SSIORD),.INTL(INTLLD),.INTH(INTH),.STARTL(STARTL),.STARTH(STARTH),.HCNTL(HCNTL),.HCNTH(HCNTH),.VCNTL(VCNTL),.VCNTH(VCNTH),.SCRL_0(SCRL_0),.SCRL_1(SCRL_1),.SCRL_2(SCRL_2),.MODE(MODE),.BORDL(BORDL),.BORDH(BORDH),.TRANS(TRANS),.MASK(MASK),.INDEX(INDEX),.ENDL(ENDL),.ENDH(ENDH),.MEMLD(MEMLD),.DIAGL_0(DIAGL_0),.DIAG_1(DIAG_1),.LPL_0(LPL_0),.LPL_1(LPL_1),.LPL_2(LPL_2),.LPL_3(LPL_3),.STATL(STATL),.LCD(LCD),.ACK(ACK),.DIS(DIS),.GPIOL_0(GPIOL_0),.GPIOL_1(GPIOL_1));//[VID.NET:00045] IODEC_(IORDL,IOWRL,BCSL,JOYL_0,JOYL_1,JOYL_2,SSIORD,INTLLD,INTH,STARTL,STARTH,
                                                                                //[VID.NET:00046]    HCNTL,HCNTH,VCNTL,VCNTH,SCRL_0,SCRL_1,SCRL_2,MODE,BORDL,BORDH,TRANS,MASK,
                                                                                //[VID.NET:00047]    INDEX,ENDL,ENDH,MEMLD,DIAGL_0,DIAG_1,LPL_0,LPL_1,LPL_2,LPL_3,STATL,LCD,ACK,
                                                                                //[VID.NET:00048]    DIS,GPIOL_0,GPIOL_1) = IODEC(RESETL_0,CCLK,IOML,VRD,VWR,A_0,A_1,A_2,A_3,A_4,
                                                                                //[VID.NET:00049]    A_5,A_6,A_7);

/* Bus manager */


m_BM BM_ (.MasterClock(MasterClock),.inA_0(inA_0),.inA_1(inA_1),.inA_2(inA_2),.inA_3(inA_3),.inA_4(inA_4),.inA_5(inA_5),.inA_6(inA_6),.inA_7(inA_7),.inA_8(inA_8),.inA_9(inA_9),.inA_10(inA_10),.inA_11(inA_11),.inA_12(inA_12),.inA_13(inA_13),.inA_14(inA_14),.inA_15(inA_15),.inA_16(inA_16),.inA_17(inA_17),.inA_18(inA_18),.inA_19(inA_19),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.inD_8(inD_8),.inD_9(inD_9),.inD_10(inD_10),.inD_11(inD_11),.inD_12(inD_12),.inD_13(inD_13),.inD_14(inD_14),.inD_15(inD_15),.RESETL_0(RESETL_0),.VADL_0(VADL_0),.VADL_1(VADL_1),.VADL_2(VADL_2),.VADL_3(VADL_3),.VADL_4(VADL_4),.VADL_5(VADL_5),.VADL_6(VADL_6),.VADL_7(VADL_7),.VAL_8(VAL_8),.VAL_9(VAL_9),.VAL_10(VAL_10),.VAL_11(VAL_11),.VAL_12(VAL_12),.VAL_13(VAL_13),.VAL_14(VAL_14),.VAL_15(VAL_15),.VDL_8(VDL_8),.VDL_9(VDL_9),.VDL_10(VDL_10),.VDL_11(VDL_11),.VDL_12(VDL_12),.VDL_13(VDL_13),.VDL_14(VDL_14),.VDL_15(VDL_15),.VRD(VRD),.VWR(VWR),.ASL_16(ASL_16),.ASL_17(ASL_17),.ASL_18(ASL_18),.ASL_19(ASL_19),.IOML(IOML),.ALEL(ALEL),.INTAL(INTAL),.HLDAL(HLDAL),.BHOLDL(BHOLDL),.BWORD(BWORD),.DWORD(DWORD),.VHOLDL(VHOLDL),.SSIORD(SSIORD),.JOYL_0(JOYL_0),.JOYL_1(JOYL_1),.SA_0(SA_0),.SA_1(SA_1),.SA_2(SA_2),.SA_3(SA_3),.SA_4(SA_4),.SA_5(SA_5),.SA_6(SA_6),.SA_7(SA_7),.SA_8(SA_8),.SA_9(SA_9),.SA_10(SA_10),.SA_11(SA_11),.SA_12(SA_12),.SA_13(SA_13),.SA_14(SA_14),.SA_15(SA_15),.SA_16(SA_16),.SA_17(SA_17),.SAEN(SAEN),.MUXL(MUXL),.BRD(BRD),.DRD(DRD),.BWR(BWR),.DWR(DWR),.outA_0(drv0_outA_0),.enA_0(drv0_enA_0),.outA_1(drv0_outA_1),.enA_1(drv0_enA_1),.outA_2(drv0_outA_2),.enA_2(drv0_enA_2),.outA_3(drv0_outA_3),.enA_3(drv0_enA_3),.outA_4(drv0_outA_4),.enA_4(drv0_enA_4),.outA_5(drv0_outA_5),.enA_5(drv0_enA_5),.outA_6(drv0_outA_6),.enA_6(drv0_enA_6),.outA_7(drv0_outA_7),.enA_7(drv0_enA_7),.outA_8(drv0_outA_8),.enA_8(drv0_enA_8),.outA_9(drv0_outA_9),.enA_9(drv0_enA_9),.outA_10(drv0_outA_10),.enA_10(drv0_enA_10),.outA_11(drv0_outA_11),.enA_11(drv0_enA_11),.outA_12(drv0_outA_12),.enA_12(drv0_enA_12),.outA_13(drv0_outA_13),.enA_13(drv0_enA_13),.outA_14(drv0_outA_14),.enA_14(drv0_enA_14),.outA_15(drv0_outA_15),.enA_15(drv0_enA_15),.outA_16(drv0_outA_16),.enA_16(drv0_enA_16),.outA_17(drv0_outA_17),.enA_17(drv0_enA_17),.outA_18(drv0_outA_18),.enA_18(drv0_enA_18),.outA_19(drv0_outA_19),.enA_19(drv0_enA_19),.outD_0(drv0_outD_0),.enD_0(drv0_enD_0),.outD_1(drv0_outD_1),.enD_1(drv0_enD_1),.outD_2(drv0_outD_2),.enD_2(drv0_enD_2),.outD_3(drv0_outD_3),.enD_3(drv0_enD_3),.outD_4(drv0_outD_4),.enD_4(drv0_enD_4),.outD_5(drv0_outD_5),.enD_5(drv0_enD_5),.outD_6(drv0_outD_6),.enD_6(drv0_enD_6),.outD_7(drv0_outD_7),.enD_7(drv0_enD_7),.outD_8(drv0_outD_8),.enD_8(drv0_enD_8),.outD_9(drv0_outD_9),.enD_9(drv0_enD_9),.outD_10(drv0_outD_10),.enD_10(drv0_enD_10),.outD_11(drv0_outD_11),.enD_11(drv0_enD_11),.outD_12(drv0_outD_12),.enD_12(drv0_enD_12),.outD_13(drv0_outD_13),.enD_13(drv0_enD_13),.outD_14(drv0_outD_14),.enD_14(drv0_enD_14),.outD_15(drv0_outD_15),.enD_15(drv0_enD_15),.VAD_0(VAD_0),.VAD_1(VAD_1),.VAD_2(VAD_2),.VAD_3(VAD_3),.VAD_4(VAD_4),.VAD_5(VAD_5),.VAD_6(VAD_6),.VAD_7(VAD_7),.ADEN(ADEN),.VAL_0(VAL_0),.VAL_1(VAL_1),.VAL_2(VAL_2),.VAL_3(VAL_3),.VAL_4(VAL_4),.VAL_5(VAL_5),.VAL_6(VAL_6),.VAL_7(VAL_7),.VA_8(VA_8),.VA_9(VA_9),.VA_10(VA_10),.VA_11(VA_11),.VA_12(VA_12),.VA_13(VA_13),.VA_14(VA_14),.VA_15(VA_15),.AEN(AEN),.VAL_16(VAL_16),.VAL_17(VAL_17),.DEN(DEN),.VD_8(VD_8),.VD_9(VD_9),.VD_10(VD_10),.VD_11(VD_11),.VD_12(VD_12),.VD_13(VD_13),.VD_14(VD_14),.VD_15(VD_15),.VRDL(VRDL),.VWRL(VWRL),.HOLDL(HOLDL),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.WD_4(WD_4),.WD_5(WD_5),.WD_6(WD_6),.WD_7(WD_7),.PALCS(PALCS),.DCSL(DCSL),.RDL(RDL),.WRL(WRL));//[VID.NET:00054] BM_(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,A_16,
                                                                                //[VID.NET:00055]    A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,
                                                                                //[VID.NET:00056]    D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,VAL_1,
                                                                                //[VID.NET:00057]    VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,VA_14,
                                                                                //[VID.NET:00058]    VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,VD_15,
                                                                                //[VID.NET:00059]    VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
                                                                                //[VID.NET:00060]    WRL) = BM(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,
                                                                                //[VID.NET:00061]    A_15,A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,
                                                                                //[VID.NET:00062]    D_12,D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,
                                                                                //[VID.NET:00063]    VADL_6,VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,
                                                                                //[VID.NET:00064]    VDL_9,VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
                                                                                //[VID.NET:00065]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
                                                                                //[VID.NET:00066]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
                                                                                //[VID.NET:00067]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR);


/* Memory timing generator */


m_MEM MEM_ (.MasterClock(MasterClock),.RESETL_0(RESETL_0),.CLK(CCLK),.DQCLK(DQCLK),.BMREQ(BMREQ),.DMREQ(DMREQ),.HLDAL(HLDAL),.RDL(RDL),.WRL(WRL),.IOML(IOML),.A_0(inA_0),.A_18(inA_18),.A_19(inA_19),.VBUSYL_0(VBUSYL_0),.VBUSYL_1(VBUSYL_1),.VCS(VCS),.VOE(VOE),.VCAS(VCAS),.VRAS(VRAS),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.MEMLD(MEMLD),.PSUEDO(PSUEDO),.BWORD(BWORD),.DWORD(DWORD),.CAS(CAS),.MUXL(MUXL),.WAITL(WAITL),.SCE_0(SCE_0),.SCE_1(SCE_1),.WE(WE),.DWE(DWE),.CS_0(CS_0),.CS_1(CS_1),.OE(OE));//[VID.NET:00073] MEM_(CAS,MUXL,WAITL,SCE_0,SCE_1,WE,DWE,CS_0,CS_1,OE) = MEM(RESETL_0,CCLK,DQCLK,
                                                                                //[VID.NET:00074]    BMREQ,DMREQ,HLDAL,RDL,WRL,IOML,A_0,A_18,A_19,VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,
                                                                                //[VID.NET:00075]    VRAS,WD_0,WD_1,WD_2,WD_3,MEMLD,PSUEDO,BWORD,DWORD);


/* Video timing generator */


m_VTIM VTIM_ (.MasterClock(MasterClock),.RESETL_0(RESETL_0),.CLK(CCLK),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.WD_4(WD_4),.WD_5(WD_5),.WD_6(WD_6),.WD_7(WD_7),.MODE_0(MODE_0),.MODE_1(MODE_1),.SCRL_0(SCRL_0),.SCRL_1(SCRL_1),.SCRL_2(SCRL_2),.VVACTIVE(VVACTIVE),.HVACTIVE(HVACTIVE),.VSTART(VSTART),.HC_0(HC_0),.HC_1(HC_1),.HC_2(HC_2),.HC_3(HC_3),.HD1(HD1),.PSUEDO(PSUEDO),.HVHOLD(HVHOLD),.NOWRAP(NOWRAP),.VBUSYL_0(VBUSYL_0),.VBUSYL_1(VBUSYL_1),.VCS(VCS),.VOE(VOE),.VCAS(VCAS),.VRAS(VRAS),.SAEN(SAEN),.SA_0(SA_0),.SA_1(SA_1),.SA_2(SA_2),.SA_3(SA_3),.SA_4(SA_4),.SA_5(SA_5),.SA_6(SA_6),.SA_7(SA_7),.SA_8(SA_8),.SA_9(SA_9),.SA_10(SA_10),.SA_11(SA_11),.SA_12(SA_12),.SA_13(SA_13),.SA_14(SA_14),.SA_15(SA_15),.SA_16(SA_16),.SA_17(SA_17),.VHOLDL(VHOLDL),.PIXLD_0(PIXLD_0),.PIXLD_1(PIXLD_1),.PIXAD_0(PIXAD_0),.PIXAD_1(PIXAD_1));//[VID.NET:00081] VTIM_(VBUSYL_0,VBUSYL_1,VCS,VOE,VCAS,VRAS,SAEN,SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,
                                                                                //[VID.NET:00082]    SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,SA_14,SA_15,SA_16,SA_17,VHOLDL,
                                                                                //[VID.NET:00083]    PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1) = VTIM(RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,
                                                                                //[VID.NET:00084]    WD_4,WD_5,WD_6,WD_7,MODE_0,MODE_1,SCRL_0,SCRL_1,SCRL_2,VVACTIVE,HVACTIVE,
                                                                                //[VID.NET:00085]    VSTART,HC_0,HC_1,HC_2,HC_3,HD1,PSUEDO,HVHOLD,NOWRAP);


/* Horizontal Timebase */


m_HCNT HCNT_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.RESETL_0(RESETL_0),.CLK(CCLK),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.WD_4(WD_4),.WD_5(WD_5),.WD_6(WD_6),.WD_7(WD_7),.HCNTL(HCNTL),.HCNTH(HCNTH),.LPL_0(LPL_0),.LPL_1(LPL_1),.LP(LP),.HLOCK(HLOCK),.NTSC(NTSC),.GENLOCK(GENLOCK),.OPEN(OPEN),.NEXTV(NEXTV),.outD_0(drv1_outD_0),.enD_0(drv1_enD_0),.outD_1(drv1_outD_1),.enD_1(drv1_enD_1),.outD_2(drv1_outD_2),.enD_2(drv1_enD_2),.outD_3(drv1_outD_3),.enD_3(drv1_enD_3),.outD_4(drv1_outD_4),.enD_4(drv1_enD_4),.outD_5(drv1_outD_5),.enD_5(drv1_enD_5),.outD_6(drv1_outD_6),.enD_6(drv1_enD_6),.outD_7(drv1_outD_7),.enD_7(drv1_enD_7),.HVACTIVE(HVACTIVE),.HSYNC(HSYNC),.HC_0(HC_0),.HC_1(HC_1),.HC_2(HC_2),.HC_3(HC_3),.HBORDER(HBORDER),.HBLANKING(HBLANKING),.HVSYNC(HVSYNC),.LPSET(LPSET),.LPCLK(LPCLK),.HD1(HD1),.HVHOLD(HVHOLD),.HINT(HINT));//[VID.NET:00091] HCNT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HVACTIVE,HSYNC,HC_0,HC_1,HC_2,HC_3,
                                                                                //[VID.NET:00092]    HBORDER,HBLANKING,HVSYNC,LPSET,LPCLK,HD1,HVHOLD,HINT) = HCNT(D_0,D_1,D_2,D_3,
                                                                                //[VID.NET:00093]    D_4,D_5,D_6,D_7,RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,HCNTL,
                                                                                //[VID.NET:00094]    HCNTH,LPL_0,LPL_1,LP,HLOCK,NTSC,GENLOCK,OPEN,NEXTV);


/* Vertical Timebase */

m_VCNT VCNT_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.RESETL_0(RESETL_0),.CLK(CCLK),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.WD_4(WD_4),.WD_5(WD_5),.WD_6(WD_6),.WD_7(WD_7),.VCNTL(VCNTL),.VCNTH(VCNTH),.LPL_2(LPL_2),.LPL_3(LPL_3),.VLOCK(VLOCK),.NTSC(NTSC),.GENLOCK(GENLOCK),.STARTL(STARTL),.STARTH(STARTH),.ENDL(ENDL),.ENDH(ENDH),.INTL(INTLLD),.INTH(INTH),.HBORDER(HBORDER),.HBLANKING(HBLANKING),.HVSYNC(HVSYNC),.LPCLK(LPCLK),.HD1(HD1),.DIAG(VCEN),.LORES(LORES),.HINT(HINT),.outD_0(drv2_outD_0),.enD_0(drv2_enD_0),.outD_1(drv2_outD_1),.enD_1(drv2_enD_1),.outD_2(drv2_outD_2),.enD_2(drv2_enD_2),.outD_3(drv2_outD_3),.enD_3(drv2_enD_3),.outD_4(drv2_outD_4),.enD_4(drv2_enD_4),.outD_5(drv2_outD_5),.enD_5(drv2_enD_5),.outD_6(drv2_outD_6),.enD_6(drv2_enD_6),.outD_7(drv2_outD_7),.enD_7(drv2_enD_7),.VVACTIVE(VVACTIVE),.VSYNC(VSYNC),.VINT(VINT),.BORDER(BORDER),.BLANKING(BLANKING),.STARTD(VSTART),.NEXTV(NEXTV));//[VID.NET:00099] VCNT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,VVACTIVE,VSYNC,VINT,BORDER,BLANKING,
                                                                                //[VID.NET:00100]    VSTART,NEXTV) = VCNT(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CCLK,WD_0,WD_1,
                                                                                //[VID.NET:00101]    WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,VCNTL,VCNTH,LPL_2,LPL_3,VLOCK,NTSC,GENLOCK,
                                                                                //[VID.NET:00102]    STARTL,STARTH,ENDL,ENDH,INTLLD,INTH,HBORDER,HBLANKING,HVSYNC,LPCLK,HD1,VCEN,
                                                                                //[VID.NET:00103]    LORES,HINT);


/* Pixel generator */


m_PIX PIX_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.inP7L_0(inPD_0),.inP7L_1(inPD_1),.inP7L_2(inPD_2),.inP7L_3(inPD_3),.inP7L_4(inPD_4),.inP7L_5(inPD_5),.inP7L_6(inPD_6),.inP7L_7(inPD_7),.inP7L_8(inPD_8),.inP7L_9(inPD_9),.inP7L_10(inPD_10),.inP7L_11(inPD_11),.inP7L_12(inPD_12),.inP7L_13(inPD_13),.inP7L_14(inPD_14),.inP7L_15(inPD_15),.RESETL_0(RESETL_0),.CLK(CCLK),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.WD_4(WD_4),.WD_5(WD_5),.WD_6(WD_6),.WD_7(WD_7),.MODE(MODE),.BORDL(BORDL),.BORDH(BORDH),.TRANS(TRANS),.MASK(MASK),.INDEX(INDEX),.BORDER(BORDER),.BLANKING(BLANKING),.HC_0(HC_0),.HC_1(HC_1),.A_0(inA_0),.A_1(inA_1),.A_2(inA_2),.A_3(inA_3),.A_4(inA_4),.A_5(inA_5),.A_6(inA_6),.A_7(inA_7),.A_8(inA_8),.RDL(RDL),.WRL(WRL),.WE(WE),.PALCS(PALCS),.PIXLD_0(PIXLD_0),.PIXLD_1(PIXLD_1),.PIXAD_0(PIXAD_0),.PIXAD_1(PIXAD_1),.TMODE(TMODE),.IDL_0(VADL_0),.IDL_1(VADL_1),.IDL_2(VADL_2),.IDL_3(VADL_3),.IDL_4(VADL_4),.IDL_5(VADL_5),.IDL_6(VADL_6),.IDL_7(VADL_7),.IDL_8(VDL_8),.IDL_9(VDL_9),.IDL_10(VDL_10),.IDL_11(VDL_11),.IDL_12(VDL_12),.IDL_13(VDL_13),.IDL_14(VDL_14),.IDL_15(VDL_15),.outD_0(drv3_outD_0),.enD_0(drv3_enD_0),.outD_1(drv3_outD_1),.enD_1(drv3_enD_1),.outD_2(drv3_outD_2),.enD_2(drv3_enD_2),.outD_3(drv3_outD_3),.enD_3(drv3_enD_3),.outD_4(drv3_outD_4),.enD_4(drv3_enD_4),.outD_5(drv3_outD_5),.enD_5(drv3_enD_5),.outD_6(drv3_outD_6),.enD_6(drv3_enD_6),.outD_7(drv3_outD_7),.enD_7(drv3_enD_7),.outP7L_0(drv0_outPD_0),.enP7L_0(drv0_enPD_0),.outP7L_1(drv0_outPD_1),.enP7L_1(drv0_enPD_1),.outP7L_2(drv0_outPD_2),.enP7L_2(drv0_enPD_2),.outP7L_3(drv0_outPD_3),.enP7L_3(drv0_enPD_3),.outP7L_4(drv0_outPD_4),.enP7L_4(drv0_enPD_4),.outP7L_5(drv0_outPD_5),.enP7L_5(drv0_enPD_5),.outP7L_6(drv0_outPD_6),.enP7L_6(drv0_enPD_6),.outP7L_7(drv0_outPD_7),.enP7L_7(drv0_enPD_7),.outP7L_8(drv0_outPD_8),.enP7L_8(drv0_enPD_8),.outP7L_9(drv0_outPD_9),.enP7L_9(drv0_enPD_9),.outP7L_10(drv0_outPD_10),.enP7L_10(drv0_enPD_10),.outP7L_11(drv0_outPD_11),.enP7L_11(drv0_enPD_11),.outP7L_12(drv0_outPD_12),.enP7L_12(drv0_enPD_12),.outP7L_13(drv0_outPD_13),.enP7L_13(drv0_enPD_13),.outP7L_14(drv0_outPD_14),.enP7L_14(drv0_enPD_14),.outP7L_15(drv0_outPD_15),.enP7L_15(drv0_enPD_15),.RL_0(RL_0),.RL_1(RL_1),.RL_2(RL_2),.RL_3(RL_3),.GL_0(GL_0),.GL_1(GL_1),.GL_2(GL_2),.GL_3(GL_3),.BL_0(BL_0),.BL_1(BL_1),.BL_2(BL_2),.BL_3(BL_3),.INC_2(INCL),.MODE_0(MODE_0),.MODE_1(MODE_1),.GENLOCK(GENLOCK),.LORES(LORES),.NOWRAP(NOWRAP),.PA_0(PA_0),.PA_1(PA_1),.PA_2(PA_2),.PA_3(PA_3),.PA_4(PA_4),.PA_5(PA_5),.PA_6(PA_6),.PA_7(PA_7),.POE(POE),.PWE(PWE),.PCS(PCS));//[VID.NET:00109] PIX_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,
                                                                                //[VID.NET:00110]    PD_8,PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RL_0,RL_1,RL_2,RL_3,GL_0,GL_1,
                                                                                //[VID.NET:00111]    GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INCL,MODE_0,MODE_1,GENLOCK,LORES,NOWRAP,PA_0,
                                                                                //[VID.NET:00112]    PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS) = PIX(D_0,D_1,D_2,D_3,D_4,
                                                                                //[VID.NET:00113]    D_5,D_6,D_7,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
                                                                                //[VID.NET:00114]    PD_12,PD_13,PD_14,PD_15,RESETL_0,CCLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,
                                                                                //[VID.NET:00115]    WD_7,MODE,BORDL,BORDH,TRANS,MASK,INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,
                                                                                //[VID.NET:00116]    A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,
                                                                                //[VID.NET:00117]    TMODE,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,VADL_7,VDL_8,VDL_9,
                                                                                //[VID.NET:00118]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15);


/* Interupt handler */

m_INT INT_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.RESETL_0(RESETL_0),.CLK(CCLK),.VINT(VINT),.AIL_0(AIL_0),.AIL_1(AIL_1),.AIL_2(AIL_2),.INTAL(INTAL),.ACK(ACK),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.DIS(DIS),.outD_0(drv4_outD_0),.enD_0(drv4_enD_0),.outD_1(drv4_outD_1),.enD_1(drv4_enD_1),.outD_2(drv4_outD_2),.enD_2(drv4_enD_2),.outD_3(drv4_outD_3),.enD_3(drv4_enD_3),.outD_4(drv4_outD_4),.enD_4(drv4_enD_4),.outD_5(drv4_outD_5),.enD_5(drv4_enD_5),.outD_6(drv4_outD_6),.enD_6(drv4_enD_6),.outD_7(drv4_outD_7),.enD_7(drv4_enD_7),.INTL(INTL));//[VID.NET:00123] INT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL) = INT(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
                                                                                //[VID.NET:00124]    D_7,RESETL_0,CCLK,VINT,AIL_0,AIL_1,AIL_2,INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS);


/* Status and diagnostic */

m_STAT STAT_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.RESETL_0(RESETL_0),.WD_0(WD_0),.WD_1(WD_1),.WD_2(WD_2),.WD_3(WD_3),.WD_4(WD_4),.STATL(STATL),.DIAGL_0(DIAGL_0),.DIAG_1(DIAG_1),.LCD(LCD),.LPSET(LPSET),.PALL(PALL),.PSRAML(PSRAML),.FASTL(FASTL),.XTALL(XTALL),.outD_0(drv5_outD_0),.enD_0(drv5_enD_0),.outD_1(drv5_outD_1),.enD_1(drv5_enD_1),.outD_2(drv5_outD_2),.enD_2(drv5_enD_2),.outD_3(drv5_outD_3),.enD_3(drv5_enD_3),.outD_4(drv5_outD_4),.enD_4(drv5_enD_4),.outD_5(drv5_outD_5),.enD_5(drv5_enD_5),.outD_6(drv5_outD_6),.enD_6(drv5_enD_6),.outD_7(drv5_outD_7),.enD_7(drv5_enD_7),.OPEN(OPEN),.NTSC(NTSC),.TESTENL(TESTENL),.PSUEDO(PSUEDO),.VCEN(VCEN),.TMODE(TMODE),.FAST(FAST),.TSTCLK(TSTCLK),.MO(MO),.DOEN(DOEN));//[VID.NET:00129] STAT_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,OPEN,NTSC,TESTENL,PSUEDO,VCEN,TMODE,FAST,
                                                                                //[VID.NET:00130]    TSTCLK,MO,DOEN) = STAT(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,WD_0,WD_1,
                                                                                //[VID.NET:00131]    WD_2,WD_3,WD_4,STATL,DIAGL_0,DIAG_1,LCD,LPSET,PALL,PSRAML,FASTL,XTALL);


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
assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0) | (drv2_outD_0 & drv2_enD_0) | (drv3_outD_0 & drv3_enD_0) | (drv4_outD_0 & drv4_enD_0) | (drv5_outD_0 & drv5_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0 | drv2_enD_0 | drv3_enD_0 | drv4_enD_0 | drv5_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1) | (drv2_outD_1 & drv2_enD_1) | (drv3_outD_1 & drv3_enD_1) | (drv4_outD_1 & drv4_enD_1) | (drv5_outD_1 & drv5_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1 | drv2_enD_1 | drv3_enD_1 | drv4_enD_1 | drv5_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2) | (drv2_outD_2 & drv2_enD_2) | (drv3_outD_2 & drv3_enD_2) | (drv4_outD_2 & drv4_enD_2) | (drv5_outD_2 & drv5_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2 | drv2_enD_2 | drv3_enD_2 | drv4_enD_2 | drv5_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3) | (drv2_outD_3 & drv2_enD_3) | (drv3_outD_3 & drv3_enD_3) | (drv4_outD_3 & drv4_enD_3) | (drv5_outD_3 & drv5_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3 | drv2_enD_3 | drv3_enD_3 | drv4_enD_3 | drv5_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4) | (drv2_outD_4 & drv2_enD_4) | (drv3_outD_4 & drv3_enD_4) | (drv4_outD_4 & drv4_enD_4) | (drv5_outD_4 & drv5_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4 | drv2_enD_4 | drv3_enD_4 | drv4_enD_4 | drv5_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5) | (drv2_outD_5 & drv2_enD_5) | (drv3_outD_5 & drv3_enD_5) | (drv4_outD_5 & drv4_enD_5) | (drv5_outD_5 & drv5_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5 | drv2_enD_5 | drv3_enD_5 | drv4_enD_5 | drv5_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6) | (drv2_outD_6 & drv2_enD_6) | (drv3_outD_6 & drv3_enD_6) | (drv4_outD_6 & drv4_enD_6) | (drv5_outD_6 & drv5_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6 | drv2_enD_6 | drv3_enD_6 | drv4_enD_6 | drv5_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7) | (drv2_outD_7 & drv2_enD_7) | (drv3_outD_7 & drv3_enD_7) | (drv4_outD_7 & drv4_enD_7) | (drv5_outD_7 & drv5_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7 | drv2_enD_7 | drv3_enD_7 | drv4_enD_7 | drv5_enD_7;
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
assign outPD_0 = (drv0_outPD_0 & drv0_enPD_0);
assign enPD_0 = drv0_enPD_0;
assign outPD_1 = (drv0_outPD_1 & drv0_enPD_1);
assign enPD_1 = drv0_enPD_1;
assign outPD_2 = (drv0_outPD_2 & drv0_enPD_2);
assign enPD_2 = drv0_enPD_2;
assign outPD_3 = (drv0_outPD_3 & drv0_enPD_3);
assign enPD_3 = drv0_enPD_3;
assign outPD_4 = (drv0_outPD_4 & drv0_enPD_4);
assign enPD_4 = drv0_enPD_4;
assign outPD_5 = (drv0_outPD_5 & drv0_enPD_5);
assign enPD_5 = drv0_enPD_5;
assign outPD_6 = (drv0_outPD_6 & drv0_enPD_6);
assign enPD_6 = drv0_enPD_6;
assign outPD_7 = (drv0_outPD_7 & drv0_enPD_7);
assign enPD_7 = drv0_enPD_7;
assign outPD_8 = (drv0_outPD_8 & drv0_enPD_8);
assign enPD_8 = drv0_enPD_8;
assign outPD_9 = (drv0_outPD_9 & drv0_enPD_9);
assign enPD_9 = drv0_enPD_9;
assign outPD_10 = (drv0_outPD_10 & drv0_enPD_10);
assign enPD_10 = drv0_enPD_10;
assign outPD_11 = (drv0_outPD_11 & drv0_enPD_11);
assign enPD_11 = drv0_enPD_11;
assign outPD_12 = (drv0_outPD_12 & drv0_enPD_12);
assign enPD_12 = drv0_enPD_12;
assign outPD_13 = (drv0_outPD_13 & drv0_enPD_13);
assign enPD_13 = drv0_enPD_13;
assign outPD_14 = (drv0_outPD_14 & drv0_enPD_14);
assign enPD_14 = drv0_enPD_14;
assign outPD_15 = (drv0_outPD_15 & drv0_enPD_15);
assign enPD_15 = drv0_enPD_15;
endmodule                                                                       //[VID.NET:00134] END MODULE;
