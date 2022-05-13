                                                                                //[ADDROUT.NET:00001] COMPILE;
                                                                                //[ADDROUT.NET:00002] DIRECTORY MASTER;
/****************************************************************************
addrout
19/10/88

Blitter output address multiplexer

Two signals, pcen and srcen enable program and source addresses for output.
Pcen takes priority.

A18 and A19 have their own enables to get them out damn fast.

****************************************************************************/


module m_ADDROUT                                                                //[ADDROUT.NET:00017] MODULE ADDROUT;
(                                                                               //[ADDROUT.NET:00017] MODULE ADDROUT;

    input    MasterClock,
    input    inA_0,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[ADDROUT.NET:00019] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    inA_17,                                                            //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    inA_18,                                                            //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    inA_19,                                                            //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_0,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_1,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_2,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_3,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_4,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_5,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_6,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_7,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_8,                                                             //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
    input    SAL_9,                                                             //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_10,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_11,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_12,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_13,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_14,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_15,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_16,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_17,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_18,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    SAL_19,                                                            //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
    input    DAL_0,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_1,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_2,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_3,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_4,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_5,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_6,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_7,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_8,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_9,                                                             //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_10,                                                            //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_11,                                                            //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
    input    DAL_12,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_13,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_14,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_15,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_16,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_17,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_18,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    DAL_19,                                                            //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    PCL_0,                                                             //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    PCL_1,                                                             //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    PCL_2,                                                             //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
    input    PCL_3,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_4,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_5,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_6,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_7,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_8,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_9,                                                             //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_10,                                                            //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_11,                                                            //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_12,                                                            //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_13,                                                            //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_14,                                                            //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
    input    PCL_15,                                                            //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    PCL_16,                                                            //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    PCL_17,                                                            //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    PCL_18,                                                            //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    PCL_19,                                                            //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    PCEN,                                                              //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    SRCRD,                                                             //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    input    BUSOE,                                                             //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
                                                                                //[ADDROUT.NET:00020]    A_16,A_17,A_18,A_19,SAL_0,SAL_1,SAL_2,SAL_3,SAL_4,SAL_5,SAL_6,SAL_7,SAL_8,
                                                                                //[ADDROUT.NET:00021]    SAL_9,SAL_10,SAL_11,SAL_12,SAL_13,SAL_14,SAL_15,SAL_16,SAL_17,SAL_18,SAL_19,
                                                                                //[ADDROUT.NET:00022]    DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_7,DAL_8,DAL_9,DAL_10,DAL_11,
                                                                                //[ADDROUT.NET:00023]    DAL_12,DAL_13,DAL_14,DAL_15,DAL_16,DAL_17,DAL_18,DAL_19,PCL_0,PCL_1,PCL_2,
                                                                                //[ADDROUT.NET:00024]    PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,PCL_11,PCL_12,PCL_13,PCL_14,
                                                                                //[ADDROUT.NET:00025]    PCL_15,PCL_16,PCL_17,PCL_18,PCL_19,PCEN,SRCRD,BUSOE;
    output    outA_0, enA_0,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
    output    outA_17, enA_17,                                                  //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
    output    outA_18, enA_18,                                                  //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
    output    outA_19, enA_19                                                   //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
);                                                                              //[ADDROUT.NET:00017] MODULE ADDROUT;
                                                                                //[ADDROUT.NET:00028] LEVEL FUNCTION;
wire SRCRDL;                                                                    //[ADDROUT.NET:00033] SRCRDINV_(SRCRDL) = N1C(SRCRD);
wire SRCSEL;                                                                    //[ADDROUT.NET:00034] SRCSEL_(SRCSEL) = B3A (SRCRD);
wire DSTSEL;                                                                    //[ADDROUT.NET:00035] DSTSEL_(DSTSEL) = NR2C (SRCRD,PCEN);
wire DSTSELH;                                                                   //[ADDROUT.NET:00036] DSTSELH_(DSTSELH) = NR2C (SRCRD,PCEN);
wire PCENB;                                                                     //[ADDROUT.NET:00037] PCENB_(PCENB) = B3A (PCEN);
wire AOUT_0;                                                                    //[ADDROUT.NET:00041] AOUT_0_(AOUT_0) = AO11A(PCENB,PCL_0,DSTSEL,DAL_0,SRCSEL,SAL_0);
wire AOUT_1;                                                                    //[ADDROUT.NET:00042] AOUT_1_(AOUT_1) = AO11A(PCENB,PCL_1,DSTSEL,DAL_1,SRCSEL,SAL_1);
wire AOUT_2;                                                                    //[ADDROUT.NET:00043] AOUT_2_(AOUT_2) = AO11A(PCENB,PCL_2,DSTSEL,DAL_2,SRCSEL,SAL_2);
wire AOUT_3;                                                                    //[ADDROUT.NET:00044] AOUT_3_(AOUT_3) = AO11A(PCENB,PCL_3,DSTSEL,DAL_3,SRCSEL,SAL_3);
wire AOUT_4;                                                                    //[ADDROUT.NET:00045] AOUT_4_(AOUT_4) = AO11A(PCENB,PCL_4,DSTSEL,DAL_4,SRCSEL,SAL_4);
wire AOUT_5;                                                                    //[ADDROUT.NET:00046] AOUT_5_(AOUT_5) = AO11A(PCENB,PCL_5,DSTSEL,DAL_5,SRCSEL,SAL_5);
wire AOUT_6;                                                                    //[ADDROUT.NET:00047] AOUT_6_(AOUT_6) = AO11A(PCENB,PCL_6,DSTSEL,DAL_6,SRCSEL,SAL_6);
wire AOUT_7;                                                                    //[ADDROUT.NET:00048] AOUT_7_(AOUT_7) = AO11A(PCENB,PCL_7,DSTSEL,DAL_7,SRCSEL,SAL_7);
wire AOUT_8;                                                                    //[ADDROUT.NET:00049] AOUT_8_(AOUT_8) = AO11A(PCENB,PCL_8,DSTSEL,DAL_8,SRCSEL,SAL_8);
wire AOUT_9;                                                                    //[ADDROUT.NET:00050] AOUT_9_(AOUT_9) = AO11A(PCENB,PCL_9,DSTSEL,DAL_9,SRCSEL,SAL_9);
wire AOUT_10;                                                                   //[ADDROUT.NET:00051] AOUT_10_(AOUT_10) = AO11A(PCENB,PCL_10,DSTSEL,DAL_10,SRCSEL,SAL_10);
wire AOUT_11;                                                                   //[ADDROUT.NET:00052] AOUT_11_(AOUT_11) = AO11A(PCENB,PCL_11,DSTSEL,DAL_11,SRCSEL,SAL_11);
wire AOUT_12;                                                                   //[ADDROUT.NET:00053] AOUT_12_(AOUT_12) = AO11A(PCENB,PCL_12,DSTSEL,DAL_12,SRCSEL,SAL_12);
wire AOUT_13;                                                                   //[ADDROUT.NET:00054] AOUT_13_(AOUT_13) = AO11A(PCENB,PCL_13,DSTSEL,DAL_13,SRCSEL,SAL_13);
wire AOUT_14;                                                                   //[ADDROUT.NET:00055] AOUT_14_(AOUT_14) = AO11A(PCENB,PCL_14,DSTSEL,DAL_14,SRCSEL,SAL_14);
wire AOUT_15;                                                                   //[ADDROUT.NET:00056] AOUT_15_(AOUT_15) = AO11A(PCENB,PCL_15,DSTSEL,DAL_15,SRCSEL,SAL_15);
wire AOUT_16;                                                                   //[ADDROUT.NET:00057] AOUT_16_(AOUT_16) = AO11A(PCENB,PCL_16,DSTSEL,DAL_16,SRCSEL,SAL_16);
wire AOUT_17;                                                                   //[ADDROUT.NET:00058] AOUT_17_(AOUT_17) = AO11A(PCENB,PCL_17,DSTSEL,DAL_17,SRCSEL,SAL_17);
wire AOUT_18;                                                                   //[ADDROUT.NET:00059] AOUT_18_(AOUT_18) = AO11A(PCEN,PCL_18,DSTSELH,DAL_18,SRCRD,SAL_18);
wire AOUT_19;                                                                   //[ADDROUT.NET:00060] AOUT_19_(AOUT_19) = AO11A(PCEN,PCL_19,DSTSELH,DAL_19,SRCRD,SAL_19);
wire drv0_outA_0;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[ADDROUT.NET:00026] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_enA_16;                                                               //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_outA_17;                                                              //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_enA_17;                                                               //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_outA_18;                                                              //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_enA_18;                                                               //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_outA_19;                                                              //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;
wire drv0_enA_19;                                                               //[ADDROUT.NET:00027]    A_16,A_17,A_18,A_19;

/* Generate select */

assign SRCRDL = ~SRCRD;                                                         //[ADDROUT.NET:00033] SRCRDINV_(SRCRDL) = N1C(SRCRD);
assign SRCSEL = SRCRD;                                                          //[ADDROUT.NET:00034] SRCSEL_(SRCSEL) = B3A (SRCRD);
assign DSTSEL = ~(SRCRD | PCEN);                                                //[ADDROUT.NET:00035] DSTSEL_(DSTSEL) = NR2C (SRCRD,PCEN);
assign DSTSELH = ~(SRCRD | PCEN);                                               //[ADDROUT.NET:00036] DSTSELH_(DSTSELH) = NR2C (SRCRD,PCEN);
assign PCENB = PCEN;                                                            //[ADDROUT.NET:00037] PCENB_(PCENB) = B3A (PCEN);

/* Select the output bits */

assign AOUT_0 = ~((PCENB & PCL_0) | (DSTSEL & DAL_0) | (SRCSEL & SAL_0));       //[ADDROUT.NET:00041] AOUT_0_(AOUT_0) = AO11A(PCENB,PCL_0,DSTSEL,DAL_0,SRCSEL,SAL_0);
assign AOUT_1 = ~((PCENB & PCL_1) | (DSTSEL & DAL_1) | (SRCSEL & SAL_1));       //[ADDROUT.NET:00042] AOUT_1_(AOUT_1) = AO11A(PCENB,PCL_1,DSTSEL,DAL_1,SRCSEL,SAL_1);
assign AOUT_2 = ~((PCENB & PCL_2) | (DSTSEL & DAL_2) | (SRCSEL & SAL_2));       //[ADDROUT.NET:00043] AOUT_2_(AOUT_2) = AO11A(PCENB,PCL_2,DSTSEL,DAL_2,SRCSEL,SAL_2);
assign AOUT_3 = ~((PCENB & PCL_3) | (DSTSEL & DAL_3) | (SRCSEL & SAL_3));       //[ADDROUT.NET:00044] AOUT_3_(AOUT_3) = AO11A(PCENB,PCL_3,DSTSEL,DAL_3,SRCSEL,SAL_3);
assign AOUT_4 = ~((PCENB & PCL_4) | (DSTSEL & DAL_4) | (SRCSEL & SAL_4));       //[ADDROUT.NET:00045] AOUT_4_(AOUT_4) = AO11A(PCENB,PCL_4,DSTSEL,DAL_4,SRCSEL,SAL_4);
assign AOUT_5 = ~((PCENB & PCL_5) | (DSTSEL & DAL_5) | (SRCSEL & SAL_5));       //[ADDROUT.NET:00046] AOUT_5_(AOUT_5) = AO11A(PCENB,PCL_5,DSTSEL,DAL_5,SRCSEL,SAL_5);
assign AOUT_6 = ~((PCENB & PCL_6) | (DSTSEL & DAL_6) | (SRCSEL & SAL_6));       //[ADDROUT.NET:00047] AOUT_6_(AOUT_6) = AO11A(PCENB,PCL_6,DSTSEL,DAL_6,SRCSEL,SAL_6);
assign AOUT_7 = ~((PCENB & PCL_7) | (DSTSEL & DAL_7) | (SRCSEL & SAL_7));       //[ADDROUT.NET:00048] AOUT_7_(AOUT_7) = AO11A(PCENB,PCL_7,DSTSEL,DAL_7,SRCSEL,SAL_7);
assign AOUT_8 = ~((PCENB & PCL_8) | (DSTSEL & DAL_8) | (SRCSEL & SAL_8));       //[ADDROUT.NET:00049] AOUT_8_(AOUT_8) = AO11A(PCENB,PCL_8,DSTSEL,DAL_8,SRCSEL,SAL_8);
assign AOUT_9 = ~((PCENB & PCL_9) | (DSTSEL & DAL_9) | (SRCSEL & SAL_9));       //[ADDROUT.NET:00050] AOUT_9_(AOUT_9) = AO11A(PCENB,PCL_9,DSTSEL,DAL_9,SRCSEL,SAL_9);
assign AOUT_10 = ~((PCENB & PCL_10) | (DSTSEL & DAL_10) | (SRCSEL & SAL_10));   //[ADDROUT.NET:00051] AOUT_10_(AOUT_10) = AO11A(PCENB,PCL_10,DSTSEL,DAL_10,SRCSEL,SAL_10);
assign AOUT_11 = ~((PCENB & PCL_11) | (DSTSEL & DAL_11) | (SRCSEL & SAL_11));   //[ADDROUT.NET:00052] AOUT_11_(AOUT_11) = AO11A(PCENB,PCL_11,DSTSEL,DAL_11,SRCSEL,SAL_11);
assign AOUT_12 = ~((PCENB & PCL_12) | (DSTSEL & DAL_12) | (SRCSEL & SAL_12));   //[ADDROUT.NET:00053] AOUT_12_(AOUT_12) = AO11A(PCENB,PCL_12,DSTSEL,DAL_12,SRCSEL,SAL_12);
assign AOUT_13 = ~((PCENB & PCL_13) | (DSTSEL & DAL_13) | (SRCSEL & SAL_13));   //[ADDROUT.NET:00054] AOUT_13_(AOUT_13) = AO11A(PCENB,PCL_13,DSTSEL,DAL_13,SRCSEL,SAL_13);
assign AOUT_14 = ~((PCENB & PCL_14) | (DSTSEL & DAL_14) | (SRCSEL & SAL_14));   //[ADDROUT.NET:00055] AOUT_14_(AOUT_14) = AO11A(PCENB,PCL_14,DSTSEL,DAL_14,SRCSEL,SAL_14);
assign AOUT_15 = ~((PCENB & PCL_15) | (DSTSEL & DAL_15) | (SRCSEL & SAL_15));   //[ADDROUT.NET:00056] AOUT_15_(AOUT_15) = AO11A(PCENB,PCL_15,DSTSEL,DAL_15,SRCSEL,SAL_15);
assign AOUT_16 = ~((PCENB & PCL_16) | (DSTSEL & DAL_16) | (SRCSEL & SAL_16));   //[ADDROUT.NET:00057] AOUT_16_(AOUT_16) = AO11A(PCENB,PCL_16,DSTSEL,DAL_16,SRCSEL,SAL_16);
assign AOUT_17 = ~((PCENB & PCL_17) | (DSTSEL & DAL_17) | (SRCSEL & SAL_17));   //[ADDROUT.NET:00058] AOUT_17_(AOUT_17) = AO11A(PCENB,PCL_17,DSTSEL,DAL_17,SRCSEL,SAL_17);
assign AOUT_18 = ~((PCEN & PCL_18) | (DSTSELH & DAL_18) | (SRCRD & SAL_18));    //[ADDROUT.NET:00059] AOUT_18_(AOUT_18) = AO11A(PCEN,PCL_18,DSTSELH,DAL_18,SRCRD,SAL_18);
assign AOUT_19 = ~((PCEN & PCL_19) | (DSTSELH & DAL_19) | (SRCRD & SAL_19));    //[ADDROUT.NET:00060] AOUT_19_(AOUT_19) = AO11A(PCEN,PCL_19,DSTSELH,DAL_19,SRCRD,SAL_19);

/* Enable the data onto the address bus */

assign drv0_outA_0 = AOUT_0; assign drv0_enA_0 = BUSOE;                         //[ADDROUT.NET:00064] ADRIV_0_(A_0) = BTS4B(AOUT_0,BUSOE);
assign drv0_outA_1 = AOUT_1; assign drv0_enA_1 = BUSOE;                         //[ADDROUT.NET:00065] ADRIV_1_(A_1) = BTS4B(AOUT_1,BUSOE);
assign drv0_outA_2 = AOUT_2; assign drv0_enA_2 = BUSOE;                         //[ADDROUT.NET:00066] ADRIV_2_(A_2) = BTS4B(AOUT_2,BUSOE);
assign drv0_outA_3 = AOUT_3; assign drv0_enA_3 = BUSOE;                         //[ADDROUT.NET:00067] ADRIV_3_(A_3) = BTS4B(AOUT_3,BUSOE);
assign drv0_outA_4 = AOUT_4; assign drv0_enA_4 = BUSOE;                         //[ADDROUT.NET:00068] ADRIV_4_(A_4) = BTS4B(AOUT_4,BUSOE);
assign drv0_outA_5 = AOUT_5; assign drv0_enA_5 = BUSOE;                         //[ADDROUT.NET:00069] ADRIV_5_(A_5) = BTS4B(AOUT_5,BUSOE);
assign drv0_outA_6 = AOUT_6; assign drv0_enA_6 = BUSOE;                         //[ADDROUT.NET:00070] ADRIV_6_(A_6) = BTS4B(AOUT_6,BUSOE);
assign drv0_outA_7 = AOUT_7; assign drv0_enA_7 = BUSOE;                         //[ADDROUT.NET:00071] ADRIV_7_(A_7) = BTS4B(AOUT_7,BUSOE);
assign drv0_outA_8 = AOUT_8; assign drv0_enA_8 = BUSOE;                         //[ADDROUT.NET:00072] ADRIV_8_(A_8) = BTS4B(AOUT_8,BUSOE);
assign drv0_outA_9 = AOUT_9; assign drv0_enA_9 = BUSOE;                         //[ADDROUT.NET:00073] ADRIV_9_(A_9) = BTS4B(AOUT_9,BUSOE);
assign drv0_outA_10 = AOUT_10; assign drv0_enA_10 = BUSOE;                      //[ADDROUT.NET:00074] ADRIV_10_(A_10) = BTS4B(AOUT_10,BUSOE);
assign drv0_outA_11 = AOUT_11; assign drv0_enA_11 = BUSOE;                      //[ADDROUT.NET:00075] ADRIV_11_(A_11) = BTS4B(AOUT_11,BUSOE);
assign drv0_outA_12 = AOUT_12; assign drv0_enA_12 = BUSOE;                      //[ADDROUT.NET:00076] ADRIV_12_(A_12) = BTS4B(AOUT_12,BUSOE);
assign drv0_outA_13 = AOUT_13; assign drv0_enA_13 = BUSOE;                      //[ADDROUT.NET:00077] ADRIV_13_(A_13) = BTS4B(AOUT_13,BUSOE);
assign drv0_outA_14 = AOUT_14; assign drv0_enA_14 = BUSOE;                      //[ADDROUT.NET:00078] ADRIV_14_(A_14) = BTS4B(AOUT_14,BUSOE);
assign drv0_outA_15 = AOUT_15; assign drv0_enA_15 = BUSOE;                      //[ADDROUT.NET:00079] ADRIV_15_(A_15) = BTS4B(AOUT_15,BUSOE);
assign drv0_outA_16 = AOUT_16; assign drv0_enA_16 = BUSOE;                      //[ADDROUT.NET:00080] ADRIV_16_(A_16) = BTS4B(AOUT_16,BUSOE);
assign drv0_outA_17 = AOUT_17; assign drv0_enA_17 = BUSOE;                      //[ADDROUT.NET:00081] ADRIV_17_(A_17) = BTS4B(AOUT_17,BUSOE);
assign drv0_outA_18 = AOUT_18; assign drv0_enA_18 = BUSOE;                      //[ADDROUT.NET:00082] ADRIV_18_(A_18) = BTS4C(AOUT_18,BUSOE);
assign drv0_outA_19 = AOUT_19; assign drv0_enA_19 = BUSOE;                      //[ADDROUT.NET:00083] ADRIV_19_(A_19) = BTS4C(AOUT_19,BUSOE);

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
endmodule                                                                       //[ADDROUT.NET:00085] END MODULE;
