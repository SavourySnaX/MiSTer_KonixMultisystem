                                                                                //[BM.NET:00001] COMPILE;
                                                                                //[BM.NET:00002] DIRECTORY MASTER;
/********************************************************
*	bm-hdl						*
*	1/11/88						*
********************************************************/



/* 
This module is the bus manager in the SLIPSTREAM chip on the ACW

It is responsible for the following:-

Latching the host address
Enabling the host address onto the internal address bus
Enabling the coprocessor or video address onto the external address bus
Multiplexing the address for DRAMs
Enabling external data onto the internal data bus 
Enabling internal data onto the external data bus
Swapping data between the lower and upper halves of the data bus
for eight bit access to the odd SRAM and joysticks
Puting zero on the data bus during reset

*/




module m_BM                                                                     //[BM.NET:00030] MODULE BM;
(                                                                               //[BM.NET:00030] MODULE BM;

    input    MasterClock,
    input    inA_0,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[BM.NET:00032] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_17,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_18,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_19,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_0,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_1,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_2,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_3,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_4,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_5,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_6,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_7,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_8,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_9,                                                             //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_10,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_11,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_12,                                                            //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_13,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    inD_14,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    inD_15,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    RESETL_0,                                                          //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_0,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_1,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_2,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_3,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_4,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_5,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_6,                                                            //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
    input    VADL_7,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_8,                                                             //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_9,                                                             //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_10,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_11,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_12,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_13,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_14,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VAL_15,                                                            //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VDL_8,                                                             //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VDL_9,                                                             //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
    input    VDL_10,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VDL_11,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VDL_12,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VDL_13,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VDL_14,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VDL_15,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VRD,                                                               //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    VWR,                                                               //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    ASL_16,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    ASL_17,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    ASL_18,                                                            //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
    input    ASL_19,                                                            //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    IOML,                                                              //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    ALEL,                                                              //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    INTAL,                                                             //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    HLDAL,                                                             //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    BHOLDL,                                                            //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    BWORD,                                                             //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    DWORD,                                                             //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    VHOLDL,                                                            //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    SSIORD,                                                            //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    JOYL_0,                                                            //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    JOYL_1,                                                            //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
    input    SA_0,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_1,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_2,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_3,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_4,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_5,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_6,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_7,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_8,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_9,                                                              //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_10,                                                             //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_11,                                                             //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_12,                                                             //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_13,                                                             //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
    input    SA_14,                                                             //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    SA_15,                                                             //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    SA_16,                                                             //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    SA_17,                                                             //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    SAEN,                                                              //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    MUXL,                                                              //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    BRD,                                                               //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    DRD,                                                               //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    BWR,                                                               //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    input    DWR,                                                               //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
                                                                                //[BM.NET:00033]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
                                                                                //[BM.NET:00034]    D_13,D_14,D_15,RESETL_0,VADL_0,VADL_1,VADL_2,VADL_3,VADL_4,VADL_5,VADL_6,
                                                                                //[BM.NET:00035]    VADL_7,VAL_8,VAL_9,VAL_10,VAL_11,VAL_12,VAL_13,VAL_14,VAL_15,VDL_8,VDL_9,
                                                                                //[BM.NET:00036]    VDL_10,VDL_11,VDL_12,VDL_13,VDL_14,VDL_15,VRD,VWR,ASL_16,ASL_17,ASL_18,
                                                                                //[BM.NET:00037]    ASL_19,IOML,ALEL,INTAL,HLDAL,BHOLDL,BWORD,DWORD,VHOLDL,SSIORD,JOYL_0,JOYL_1,
                                                                                //[BM.NET:00038]    SA_0,SA_1,SA_2,SA_3,SA_4,SA_5,SA_6,SA_7,SA_8,SA_9,SA_10,SA_11,SA_12,SA_13,
                                                                                //[BM.NET:00039]    SA_14,SA_15,SA_16,SA_17,SAEN,MUXL,BRD,DRD,BWR,DWR;
    output    outA_0, enA_0,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_17, enA_17,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_18, enA_18,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_19, enA_19,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_0, enD_0,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_1, enD_1,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_2, enD_2,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_3, enD_3,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_4, enD_4,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_5, enD_5,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_6, enD_6,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_7, enD_7,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_8, enD_8,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_9, enD_9,                                                    //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_10, enD_10,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_11, enD_11,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_12, enD_12,                                                  //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_13, enD_13,                                                  //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    outD_14, enD_14,                                                  //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    outD_15, enD_15,                                                  //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_0,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_1,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_2,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_3,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_4,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_5,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_6,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAD_7,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    ADEN,                                                             //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAL_0,                                                            //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
    output    VAL_1,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VAL_2,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VAL_3,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VAL_4,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VAL_5,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VAL_6,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VAL_7,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_8,                                                             //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_9,                                                             //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_10,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_11,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_12,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_13,                                                            //[BM.NET:00043]    VAL_1,VAL_2,VAL_3,VAL_4,VAL_5,VAL_6,VAL_7,VA_8,VA_9,VA_10,VA_11,VA_12,VA_13,
    output    VA_14,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VA_15,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    AEN,                                                              //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VAL_16,                                                           //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VAL_17,                                                           //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    DEN,                                                              //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_8,                                                             //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_9,                                                             //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_10,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_11,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_12,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_13,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_14,                                                            //[BM.NET:00044]    VA_14,VA_15,AEN,VAL_16,VAL_17,DEN,VD_8,VD_9,VD_10,VD_11,VD_12,VD_13,VD_14,
    output    VD_15,                                                            //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    VRDL,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    VWRL,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    HOLDL,                                                            //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_0,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_1,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_2,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_3,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_4,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_5,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_6,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WD_7,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    PALCS,                                                            //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    DCSL,                                                             //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    RDL,                                                              //[BM.NET:00045]    VD_15,VRDL,VWRL,HOLDL,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,PALCS,DCSL,RDL,
    output    WRL                                                               //[BM.NET:00046]    WRL;
);                                                                              //[BM.NET:00030] MODULE BM;
                                                                                //[BM.NET:00047] LEVEL FUNCTION;
wire ALE;                                                                       //[BM.NET:00052] ALE_(ALE) = N1C(ALEL);
wire PAL_0;                                                                     //[BM.NET:00053] PA_0_(PAL_0,PA_0) = LD1A(VADL_0,ALE);
wire PA_0;                                                                      //[BM.NET:00053] PA_0_(PAL_0,PA_0) = LD1A(VADL_0,ALE);
wire PAL_1;                                                                     //[BM.NET:00054] PA_1_(PAL_1,PA_1) = LD1A(VADL_1,ALE);
wire PA_1;                                                                      //[BM.NET:00054] PA_1_(PAL_1,PA_1) = LD1A(VADL_1,ALE);
wire PAL_2;                                                                     //[BM.NET:00055] PA_2_(PAL_2,PA_2) = LD1A(VADL_2,ALE);
wire PA_2;                                                                      //[BM.NET:00055] PA_2_(PAL_2,PA_2) = LD1A(VADL_2,ALE);
wire PAL_3;                                                                     //[BM.NET:00056] PA_3_(PAL_3,PA_3) = LD1A(VADL_3,ALE);
wire PA_3;                                                                      //[BM.NET:00056] PA_3_(PAL_3,PA_3) = LD1A(VADL_3,ALE);
wire PAL_4;                                                                     //[BM.NET:00057] PA_4_(PAL_4,PA_4) = LD1A(VADL_4,ALE);
wire PA_4;                                                                      //[BM.NET:00057] PA_4_(PAL_4,PA_4) = LD1A(VADL_4,ALE);
wire PAL_5;                                                                     //[BM.NET:00058] PA_5_(PAL_5,PA_5) = LD1A(VADL_5,ALE);
wire PA_5;                                                                      //[BM.NET:00058] PA_5_(PAL_5,PA_5) = LD1A(VADL_5,ALE);
wire PAL_6;                                                                     //[BM.NET:00059] PA_6_(PAL_6,PA_6) = LD1A(VADL_6,ALE);
wire PA_6;                                                                      //[BM.NET:00059] PA_6_(PAL_6,PA_6) = LD1A(VADL_6,ALE);
wire PAL_7;                                                                     //[BM.NET:00060] PA_7_(PAL_7,PA_7) = LD1A(VADL_7,ALE);
wire PA_7;                                                                      //[BM.NET:00060] PA_7_(PAL_7,PA_7) = LD1A(VADL_7,ALE);
wire PAL_16;                                                                    //[BM.NET:00061] PA_16_(PAL_16,PA_16) = LD1A(ASL_16,ALE);
wire PA_16;                                                                     //[BM.NET:00061] PA_16_(PAL_16,PA_16) = LD1A(ASL_16,ALE);
wire PAL_17;                                                                    //[BM.NET:00062] PA_17_(PAL_17,PA_17) = LD1A(ASL_17,ALE);
wire PA_17;                                                                     //[BM.NET:00062] PA_17_(PAL_17,PA_17) = LD1A(ASL_17,ALE);
wire PAL_18;                                                                    //[BM.NET:00063] PA_18_(PAL_18,PA_18) = LD1A(ASL_18,ALE);
wire PA_18;                                                                     //[BM.NET:00063] PA_18_(PAL_18,PA_18) = LD1A(ASL_18,ALE);
wire PAL_19;                                                                    //[BM.NET:00064] PA_19_(PAL_19,PA_19) = LD1A(ASL_19,ALE);
wire PA_19;                                                                     //[BM.NET:00064] PA_19_(PAL_19,PA_19) = LD1A(ASL_19,ALE);
wire PAEN;                                                                      //[BM.NET:00072] A_0_(A_0) = BTS5A(PAL_0,PAEN);
wire CRD;                                                                       //[BM.NET:00095] CRD_(CRD) = OR2A(BRD,DRD);
wire CWR;                                                                       //[BM.NET:00096] CWR_(CWR) = OR2A(BWR,DWR);
wire WORDL;                                                                     //[BM.NET:00097] WORDL_(WORDL) = NR2A(DWORD,BWORD);
wire HLDA;                                                                      //[BM.NET:00098] RDL_(RDL) = AO2C(HLDA,CRD,HLDAL,VRD);
wire SAENL;                                                                     //[BM.NET:00106] SAENL_(SAENL) = N1C(SAEN);
wire SAENBL;                                                                    //[BM.NET:00107] SAENBL_(SAENBL) = B1A(SAEN);
wire SAENB;                                                                     //[BM.NET:00108] SAENB_(SAENB) = B1A(SAENL);
wire OAL_0;                                                                     //[BM.NET:00110] OA_0_(OAL_0) = AO2A(SA_0,SAENB,A_0,SAENBL);
wire OAL_1;                                                                     //[BM.NET:00111] OA_1_(OAL_1) = AO2A(SA_1,SAENB,A_1,SAENBL);
wire OAL_2;                                                                     //[BM.NET:00112] OA_2_(OAL_2) = AO2A(SA_2,SAENB,A_2,SAENBL);
wire OAL_3;                                                                     //[BM.NET:00113] OA_3_(OAL_3) = AO2A(SA_3,SAENB,A_3,SAENBL);
wire OAL_4;                                                                     //[BM.NET:00114] OA_4_(OAL_4) = AO2A(SA_4,SAENB,A_4,SAENBL);
wire OAL_5;                                                                     //[BM.NET:00115] OA_5_(OAL_5) = AO2A(SA_5,SAENB,A_5,SAENBL);
wire OAL_6;                                                                     //[BM.NET:00116] OA_6_(OAL_6) = AO2A(SA_6,SAENB,A_6,SAENBL);
wire OAL_7;                                                                     //[BM.NET:00117] OA_7_(OAL_7) = AO2A(SA_7,SAENB,A_7,SAENBL);
wire OAL_8;                                                                     //[BM.NET:00118] OA_8_(OAL_8) = AO2A(SA_8,SAENB,A_8,SAENBL);
wire OAL_9;                                                                     //[BM.NET:00119] OA_9_(OAL_9) = AO2A(SA_9,SAENB,A_9,SAENBL);
wire OAL_10;                                                                    //[BM.NET:00120] OA_10_(OAL_10) = AO2A(SA_10,SAENB,A_10,SAENBL);
wire OAL_11;                                                                    //[BM.NET:00121] OA_11_(OAL_11) = AO2A(SA_11,SAENB,A_11,SAENBL);
wire OAL_12;                                                                    //[BM.NET:00122] OA_12_(OAL_12) = AO2A(SA_12,SAENB,A_12,SAENBL);
wire OAL_13;                                                                    //[BM.NET:00123] OA_13_(OAL_13) = AO2A(SA_13,SAENB,A_13,SAENBL);
wire OAL_14;                                                                    //[BM.NET:00124] OA_14_(OAL_14) = AO2A(SA_14,SAENB,A_14,SAENBL);
wire OAL_15;                                                                    //[BM.NET:00125] OA_15_(OAL_15) = AO2A(SA_15,SAENB,A_15,SAENBL);
wire OAL_16;                                                                    //[BM.NET:00126] OA_16_(OAL_16) = AO2A(SA_16,SAENB,A_16,SAENBL);
wire MUX;                                                                       //[BM.NET:00131] MUX_(MUX) = N1C(MUXL);
wire MUXB;                                                                      //[BM.NET:00132] MUXB_(MUXB) = B1A(MUXL);
wire MUXBL;                                                                     //[BM.NET:00133] MUXBL_(MUXBL) = B1A(MUX);
wire VA_0;                                                                      //[BM.NET:00135] VA_0_(VA_0) = AO2A(OAL_0,MUXBL,OAL_8,MUXB);
wire VA_1;                                                                      //[BM.NET:00136] VA_1_(VA_1) = AO2A(OAL_1,MUXBL,OAL_9,MUXB);
wire VA_2;                                                                      //[BM.NET:00137] VA_2_(VA_2) = AO2A(OAL_2,MUXBL,OAL_10,MUXB);
wire VA_3;                                                                      //[BM.NET:00138] VA_3_(VA_3) = AO2A(OAL_3,MUXBL,OAL_11,MUXB);
wire VA_4;                                                                      //[BM.NET:00139] VA_4_(VA_4) = AO2A(OAL_4,MUXBL,OAL_12,MUXB);
wire VA_5;                                                                      //[BM.NET:00140] VA_5_(VA_5) = AO2A(OAL_5,MUXBL,OAL_13,MUXB);
wire VA_6;                                                                      //[BM.NET:00141] VA_6_(VA_6) = AO2A(OAL_6,MUXBL,OAL_14,MUXB);
wire VA_7;                                                                      //[BM.NET:00142] VA_7_(VA_7) = AO2A(OAL_7,MUXBL,OAL_15,MUXB);
wire VA_16;                                                                     //[BM.NET:00171] VA_16_(VA_16) = AO2A(OAL_16,MUXBL,VAL_17,MUXB);
wire RESET_0;                                                                   //[BM.NET:00184] RESET_0_(RESET_0) = N1A(RESETL_0);
wire RESETL_1;                                                                  //[BM.NET:00185] RESETL_1_(RESETL_1) = N1A(RESET_0);
wire RESET_1;                                                                   //[BM.NET:00186] RESET_1_(RESET_1) = N1A(RESETL_1);
wire RESETL_2;                                                                  //[BM.NET:00187] RESETL_2_(RESETL_2) = N1A(RESET_1);
wire RESET_2;                                                                   //[BM.NET:00188] RESET_2_(RESET_2) = N1A(RESETL_2);
wire RESETL_3;                                                                  //[BM.NET:00189] RESETL_3_(RESETL_3) = N1A(RESET_2);
wire RESET_3;                                                                   //[BM.NET:00190] RESET_3_(RESET_3) = N1A(RESETL_3);
wire RESETL_4;                                                                  //[BM.NET:00191] RESETL_4_(RESETL_4) = N1A(RESET_3);
wire RESET_4;                                                                   //[BM.NET:00192] RESET_4_(RESET_4) = N1A(RESETL_4);
wire RESETL_5;                                                                  //[BM.NET:00193] RESETL_5_(RESETL_5) = N1A(RESET_4);
wire RESET_5;                                                                   //[BM.NET:00194] RESET_5_(RESET_5) = N1A(RESETL_5);
wire RESETL_6;                                                                  //[BM.NET:00195] RESETL_6_(RESETL_6) = N1A(RESET_5);
wire RESET_6;                                                                   //[BM.NET:00196] RESET_6_(RESET_6) = N1A(RESETL_6);
wire RD;                                                                        //[BM.NET:00209] IMRDL_(IMRDL) = ND4A(IOML,RD,A_18,AL_19);
wire AL_19;                                                                     //[BM.NET:00209] IMRDL_(IMRDL) = ND4A(IOML,RD,A_18,AL_19);
wire IMRDL;                                                                     //[BM.NET:00209] IMRDL_(IMRDL) = ND4A(IOML,RD,A_18,AL_19);
wire SSIORDL;                                                                   //[BM.NET:00210] EN0_(EN0) = ND3B(IMRDL,SSIORDL,RESETL_6);
wire EN0;                                                                       //[BM.NET:00210] EN0_(EN0) = ND3B(IMRDL,SSIORDL,RESETL_6);
wire SDL_0;                                                                     //[BM.NET:00231] DH_0_(D_0) = BTS5A(SDL_0,ENID);
wire ENID;                                                                      //[BM.NET:00231] DH_0_(D_0) = BTS5A(SDL_0,ENID);
wire SDL_1;                                                                     //[BM.NET:00232] DH_1_(D_1) = BTS5A(SDL_1,ENID);
wire SDL_2;                                                                     //[BM.NET:00233] DH_2_(D_2) = BTS5A(SDL_2,ENID);
wire SDL_3;                                                                     //[BM.NET:00234] DH_3_(D_3) = BTS5A(SDL_3,ENID);
wire SDL_4;                                                                     //[BM.NET:00235] DH_4_(D_4) = BTS5A(SDL_4,ENID);
wire SDL_5;                                                                     //[BM.NET:00236] DH_5_(D_5) = BTS5A(SDL_5,ENID);
wire SDL_6;                                                                     //[BM.NET:00237] DH_6_(D_6) = BTS5A(SDL_6,ENID);
wire SDL_7;                                                                     //[BM.NET:00238] DH_7_(D_7) = BTS5A(SDL_7,ENID);
wire SSIMRDL;                                                                   //[BM.NET:00254] SSIMRDL_(SSIMRDL) = ND5A(HLDAL,IOML,VRD,A_18,AL_19);
wire WR;                                                                        //[BM.NET:00259] WR_(WR) = N1A(WRL);
wire COPWRL;                                                                    //[BM.NET:00260] COPWRL_(COPWRL) = ND2A(HLDA,WR);
wire COPWRNVL;                                                                  //[BM.NET:00264] COPWRNVL_(COPWRNVL) = ND3A(HLDA,WR,SAENL);
wire COPIMRDL;                                                                  //[BM.NET:00269] COPIMRDL_(COPIMRDL) = ND4A(HLDA,RD,A_18,AL_19);
wire ENIDL;                                                                     //[BM.NET:00271] ENIDL_(ENIDL) = ND6A(SSIORDL,SSIMRDL,INTAL,COPWRL,COPIMRDL,RESETL_6);
wire SWAP1L;                                                                    //[BM.NET:00287] SDL_8_(SDL_8) = AO2A(D_8,SWAP1L,D_0,SWAP1);
wire SWAP1;                                                                     //[BM.NET:00287] SDL_8_(SDL_8) = AO2A(D_8,SWAP1L,D_0,SWAP1);
wire SDL_8;                                                                     //[BM.NET:00287] SDL_8_(SDL_8) = AO2A(D_8,SWAP1L,D_0,SWAP1);
wire SDL_9;                                                                     //[BM.NET:00288] SDL_9_(SDL_9) = AO2A(D_9,SWAP1L,D_1,SWAP1);
wire SDL_10;                                                                    //[BM.NET:00289] SDL_10_(SDL_10) = AO2A(D_10,SWAP1L,D_2,SWAP1);
wire SDL_11;                                                                    //[BM.NET:00290] SDL_11_(SDL_11) = AO2A(D_11,SWAP1L,D_3,SWAP1);
wire SDL_12;                                                                    //[BM.NET:00291] SDL_12_(SDL_12) = AO2A(D_12,SWAP1L,D_4,SWAP1);
wire SDL_13;                                                                    //[BM.NET:00292] SDL_13_(SDL_13) = AO2A(D_13,SWAP1L,D_5,SWAP1);
wire SDL_14;                                                                    //[BM.NET:00293] SDL_14_(SDL_14) = AO2A(D_14,SWAP1L,D_6,SWAP1);
wire SDL_15;                                                                    //[BM.NET:00294] SDL_15_(SDL_15) = AO2A(D_15,SWAP1L,D_7,SWAP1);
wire SWAP2L;                                                                    //[BM.NET:00304] SD_0_(SD_0) = AO2A(VADL_0,SWAP2L,VDL_8,SWAP2);
wire SWAP2;                                                                     //[BM.NET:00304] SD_0_(SD_0) = AO2A(VADL_0,SWAP2L,VDL_8,SWAP2);
wire SD_0;                                                                      //[BM.NET:00304] SD_0_(SD_0) = AO2A(VADL_0,SWAP2L,VDL_8,SWAP2);
wire SD_1;                                                                      //[BM.NET:00305] SD_1_(SD_1) = AO2A(VADL_1,SWAP2L,VDL_9,SWAP2);
wire SD_2;                                                                      //[BM.NET:00306] SD_2_(SD_2) = AO2A(VADL_2,SWAP2L,VDL_10,SWAP2);
wire SD_3;                                                                      //[BM.NET:00307] SD_3_(SD_3) = AO2A(VADL_3,SWAP2L,VDL_11,SWAP2);
wire SD_4;                                                                      //[BM.NET:00308] SD_4_(SD_4) = AO2A(VADL_4,SWAP2L,VDL_12,SWAP2);
wire SD_5;                                                                      //[BM.NET:00309] SD_5_(SD_5) = AO2A(VADL_5,SWAP2L,VDL_13,SWAP2);
wire SD_6;                                                                      //[BM.NET:00310] SD_6_(SD_6) = AO2A(VADL_6,SWAP2L,VDL_14,SWAP2);
wire SD_7;                                                                      //[BM.NET:00311] SD_7_(SD_7) = AO2A(VADL_7,SWAP2L,VDL_15,SWAP2);
wire AL_18;                                                                     //[BM.NET:00331] AL_18_(AL_18) = N1A(A_18);
wire HODDL;                                                                     //[BM.NET:00333] HODDL_(HODDL) = ND5A(HLDAL,IOML,A_0,AL_18,AL_19);
wire HODDRL;                                                                    //[BM.NET:00334] HODDRL_(HODDRL) = OR2A(RDL,HODDL);
wire CODDL;                                                                     //[BM.NET:00338] CODDL_(CODDL) = ND6A(HLDA,SAENL,A_0,AL_18,AL_19,WORDL);
wire JOYL;                                                                      //[BM.NET:00342] JOYL_(JOYL) = AND2A(JOYL_0,JOYL_1);
wire SWAP;                                                                      //[BM.NET:00344] SWAP_(SWAP) = ND3A(HODDL,CODDL,JOYL);
wire DENL;                                                                      //[BM.NET:00347] SWAP2L_(SWAP2L) = ND2C(SWAP,DENL);
wire HODDWL;                                                                    //[BM.NET:00370] HODDWL_(HODDWL) = ND6A(HLDAL,IOML,VWR,A_0,AL_18,AL_19);
wire PR;                                                                        //[BM.NET:00393] PR_(PR) = NR8A(A_12,A_13,A_14,A_15,A_16,A_17,AL_18,A_19);
wire AL_9;                                                                      //[BM.NET:00394] AL_9_(AL_9) = N1A(A_9);
wire AL_10;                                                                     //[BM.NET:00395] AL_10_(AL_10) = N1A(A_10);
wire AL_11;                                                                     //[BM.NET:00396] AL_11_(AL_11) = N1A(A_11);
wire AL_14;                                                                     //[BM.NET:00397] AL_14_(AL_14) = N1A(A_14);
wire PALCSL;                                                                    //[BM.NET:00399] PALCSL_(PALCSL) = ND5A(PR,IOML,AL_9,AL_10,AL_11);
wire AL_12;                                                                     //[BM.NET:00404] AL_12_(AL_12) = N1A(A_12);
wire D0;                                                                        //[BM.NET:00405] D0_(D0) = NR8A(AL_12,A_13,A_14,A_15,A_16,A_17,AL_18,A_19);
wire drv0_outA_0;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[BM.NET:00040] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_16;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_17;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_17;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_18;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_18;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_19;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_19;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_0;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_0;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_0;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_0;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_1;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_1;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_1;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_1;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_2;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_2;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_2;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_2;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_3;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_3;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_3;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_3;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_4;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_4;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_4;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_4;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_5;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_5;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_5;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_5;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_6;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_6;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_6;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_6;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_7;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_7;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_7;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_7;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_8;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_8;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_8;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_8;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_9;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_9;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_9;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_9;                                                                //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_10;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_10;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_10;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_10;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_11;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_11;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_11;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_11;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_12;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_12;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_12;                                                              //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_12;                                                               //[BM.NET:00041]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_13;                                                              //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv0_enD_13;                                                               //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv1_outD_13;                                                              //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv1_enD_13;                                                               //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv0_outD_14;                                                              //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv0_enD_14;                                                               //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv1_outD_14;                                                              //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv1_enD_14;                                                               //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv0_outD_15;                                                              //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv0_enD_15;                                                               //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv1_outD_15;                                                              //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,
wire drv1_enD_15;                                                               //[BM.NET:00042]    D_13,D_14,D_15,VAD_0,VAD_1,VAD_2,VAD_3,VAD_4,VAD_5,VAD_6,VAD_7,ADEN,VAL_0,

/* Latch the processors address */

assign ALE = ~ALEL;                                                             //[BM.NET:00052] ALE_(ALE) = N1C(ALEL);
LD1A PA_0__inst (.MasterClock(MasterClock),.q(PAL_0),.qL(PA_0),.d(VADL_0),.en(ALE));//[BM.NET:00053] PA_0_(PAL_0,PA_0) = LD1A(VADL_0,ALE);
LD1A PA_1__inst (.MasterClock(MasterClock),.q(PAL_1),.qL(PA_1),.d(VADL_1),.en(ALE));//[BM.NET:00054] PA_1_(PAL_1,PA_1) = LD1A(VADL_1,ALE);
LD1A PA_2__inst (.MasterClock(MasterClock),.q(PAL_2),.qL(PA_2),.d(VADL_2),.en(ALE));//[BM.NET:00055] PA_2_(PAL_2,PA_2) = LD1A(VADL_2,ALE);
LD1A PA_3__inst (.MasterClock(MasterClock),.q(PAL_3),.qL(PA_3),.d(VADL_3),.en(ALE));//[BM.NET:00056] PA_3_(PAL_3,PA_3) = LD1A(VADL_3,ALE);
LD1A PA_4__inst (.MasterClock(MasterClock),.q(PAL_4),.qL(PA_4),.d(VADL_4),.en(ALE));//[BM.NET:00057] PA_4_(PAL_4,PA_4) = LD1A(VADL_4,ALE);
LD1A PA_5__inst (.MasterClock(MasterClock),.q(PAL_5),.qL(PA_5),.d(VADL_5),.en(ALE));//[BM.NET:00058] PA_5_(PAL_5,PA_5) = LD1A(VADL_5,ALE);
LD1A PA_6__inst (.MasterClock(MasterClock),.q(PAL_6),.qL(PA_6),.d(VADL_6),.en(ALE));//[BM.NET:00059] PA_6_(PAL_6,PA_6) = LD1A(VADL_6,ALE);
LD1A PA_7__inst (.MasterClock(MasterClock),.q(PAL_7),.qL(PA_7),.d(VADL_7),.en(ALE));//[BM.NET:00060] PA_7_(PAL_7,PA_7) = LD1A(VADL_7,ALE);
LD1A PA_16__inst (.MasterClock(MasterClock),.q(PAL_16),.qL(PA_16),.d(ASL_16),.en(ALE));//[BM.NET:00061] PA_16_(PAL_16,PA_16) = LD1A(ASL_16,ALE);
LD1A PA_17__inst (.MasterClock(MasterClock),.q(PAL_17),.qL(PA_17),.d(ASL_17),.en(ALE));//[BM.NET:00062] PA_17_(PAL_17,PA_17) = LD1A(ASL_17,ALE);
LD1A PA_18__inst (.MasterClock(MasterClock),.q(PAL_18),.qL(PA_18),.d(ASL_18),.en(ALE));//[BM.NET:00063] PA_18_(PAL_18,PA_18) = LD1A(ASL_18,ALE);
LD1A PA_19__inst (.MasterClock(MasterClock),.q(PAL_19),.qL(PA_19),.d(ASL_19),.en(ALE));//[BM.NET:00064] PA_19_(PAL_19,PA_19) = LD1A(ASL_19,ALE);

/* enable onto the internal address bus */
/* the microprocessors address is enabled except when hlda is asserted */
/* NB the blitter should enable its address whenever hlda is asserted,
even if it did not issue a hold, in order that this bus does not float */


assign drv0_outA_0 = ~PAL_0; assign drv0_enA_0 = PAEN;                          //[BM.NET:00072] A_0_(A_0) = BTS5A(PAL_0,PAEN);
assign drv0_outA_1 = ~PAL_1; assign drv0_enA_1 = PAEN;                          //[BM.NET:00073] A_1_(A_1) = BTS5A(PAL_1,PAEN);
assign drv0_outA_2 = ~PAL_2; assign drv0_enA_2 = PAEN;                          //[BM.NET:00074] A_2_(A_2) = BTS5A(PAL_2,PAEN);
assign drv0_outA_3 = ~PAL_3; assign drv0_enA_3 = PAEN;                          //[BM.NET:00075] A_3_(A_3) = BTS5A(PAL_3,PAEN);
assign drv0_outA_4 = ~PAL_4; assign drv0_enA_4 = PAEN;                          //[BM.NET:00076] A_4_(A_4) = BTS5A(PAL_4,PAEN);
assign drv0_outA_5 = ~PAL_5; assign drv0_enA_5 = PAEN;                          //[BM.NET:00077] A_5_(A_5) = BTS5A(PAL_5,PAEN);
assign drv0_outA_6 = ~PAL_6; assign drv0_enA_6 = PAEN;                          //[BM.NET:00078] A_6_(A_6) = BTS5A(PAL_6,PAEN);
assign drv0_outA_7 = ~PAL_7; assign drv0_enA_7 = PAEN;                          //[BM.NET:00079] A_7_(A_7) = BTS5A(PAL_7,PAEN);
assign drv0_outA_8 = ~VAL_8; assign drv0_enA_8 = PAEN;                          //[BM.NET:00080] A_8_(A_8) = BTS5A(VAL_8,PAEN);
assign drv0_outA_9 = ~VAL_9; assign drv0_enA_9 = PAEN;                          //[BM.NET:00081] A_9_(A_9) = BTS5A(VAL_9,PAEN);
assign drv0_outA_10 = ~VAL_10; assign drv0_enA_10 = PAEN;                       //[BM.NET:00082] A_10_(A_10) = BTS5A(VAL_10,PAEN);
assign drv0_outA_11 = ~VAL_11; assign drv0_enA_11 = PAEN;                       //[BM.NET:00083] A_11_(A_11) = BTS5A(VAL_11,PAEN);
assign drv0_outA_12 = ~VAL_12; assign drv0_enA_12 = PAEN;                       //[BM.NET:00084] A_12_(A_12) = BTS5A(VAL_12,PAEN);
assign drv0_outA_13 = ~VAL_13; assign drv0_enA_13 = PAEN;                       //[BM.NET:00085] A_13_(A_13) = BTS5A(VAL_13,PAEN);
assign drv0_outA_14 = ~VAL_14; assign drv0_enA_14 = PAEN;                       //[BM.NET:00086] A_14_(A_14) = BTS5A(VAL_14,PAEN);
assign drv0_outA_15 = ~VAL_15; assign drv0_enA_15 = PAEN;                       //[BM.NET:00087] A_15_(A_15) = BTS5A(VAL_15,PAEN);
assign drv0_outA_16 = ~PAL_16; assign drv0_enA_16 = PAEN;                       //[BM.NET:00088] A_16_(A_16) = BTS5A(PAL_16,PAEN);
assign drv0_outA_17 = ~PAL_17; assign drv0_enA_17 = PAEN;                       //[BM.NET:00089] A_17_(A_17) = BTS5A(PAL_17,PAEN);
assign drv0_outA_18 = ~PAL_18; assign drv0_enA_18 = PAEN;                       //[BM.NET:00090] A_18_(A_18) = BTS5A(PAL_18,PAEN);
assign drv0_outA_19 = ~PAL_19; assign drv0_enA_19 = PAEN;                       //[BM.NET:00091] A_19_(A_19) = BTS5A(PAL_19,PAEN);

/* mix coprocessor read and write strobes */

assign CRD = BRD | DRD;                                                         //[BM.NET:00095] CRD_(CRD) = OR2A(BRD,DRD);
assign CWR = BWR | DWR;                                                         //[BM.NET:00096] CWR_(CWR) = OR2A(BWR,DWR);
assign WORDL = ~(DWORD | BWORD);                                                //[BM.NET:00097] WORDL_(WORDL) = NR2A(DWORD,BWORD);
assign RDL = ~((HLDA & CRD)|(HLDAL & VRD));                                     //[BM.NET:00098] RDL_(RDL) = AO2C(HLDA,CRD,HLDAL,VRD);
assign WRL = ~((HLDA & CWR)|(HLDAL & VWR));                                     //[BM.NET:00099] WRL_(WRL) = AO2C(HLDA,CWR,HLDAL,VWR);
assign VRDL = RDL;                                                              //[BM.NET:00100] VRDL_(VRDL) = B3A(RDL);
assign VWRL = WRL;                                                              //[BM.NET:00101] VWRL_(VWRL) = B3A(WRL);

/* select between the video address or coprocessor address */
/* the video address does not appear on the internal address bus */

assign SAENL = ~SAEN;                                                           //[BM.NET:00106] SAENL_(SAENL) = N1C(SAEN);
assign SAENBL = ~SAEN;                                                          //[BM.NET:00107] SAENBL_(SAENBL) = B1A(SAEN);
assign SAENB = ~SAENL;                                                          //[BM.NET:00108] SAENB_(SAENB) = B1A(SAENL);

assign OAL_0 = ~((SA_0 & SAENB)|(inA_0 & SAENBL));                              //[BM.NET:00110] OA_0_(OAL_0) = AO2A(SA_0,SAENB,A_0,SAENBL);
assign OAL_1 = ~((SA_1 & SAENB)|(inA_1 & SAENBL));                              //[BM.NET:00111] OA_1_(OAL_1) = AO2A(SA_1,SAENB,A_1,SAENBL);
assign OAL_2 = ~((SA_2 & SAENB)|(inA_2 & SAENBL));                              //[BM.NET:00112] OA_2_(OAL_2) = AO2A(SA_2,SAENB,A_2,SAENBL);
assign OAL_3 = ~((SA_3 & SAENB)|(inA_3 & SAENBL));                              //[BM.NET:00113] OA_3_(OAL_3) = AO2A(SA_3,SAENB,A_3,SAENBL);
assign OAL_4 = ~((SA_4 & SAENB)|(inA_4 & SAENBL));                              //[BM.NET:00114] OA_4_(OAL_4) = AO2A(SA_4,SAENB,A_4,SAENBL);
assign OAL_5 = ~((SA_5 & SAENB)|(inA_5 & SAENBL));                              //[BM.NET:00115] OA_5_(OAL_5) = AO2A(SA_5,SAENB,A_5,SAENBL);
assign OAL_6 = ~((SA_6 & SAENB)|(inA_6 & SAENBL));                              //[BM.NET:00116] OA_6_(OAL_6) = AO2A(SA_6,SAENB,A_6,SAENBL);
assign OAL_7 = ~((SA_7 & SAENB)|(inA_7 & SAENBL));                              //[BM.NET:00117] OA_7_(OAL_7) = AO2A(SA_7,SAENB,A_7,SAENBL);
assign OAL_8 = ~((SA_8 & SAENB)|(inA_8 & SAENBL));                              //[BM.NET:00118] OA_8_(OAL_8) = AO2A(SA_8,SAENB,A_8,SAENBL);
assign OAL_9 = ~((SA_9 & SAENB)|(inA_9 & SAENBL));                              //[BM.NET:00119] OA_9_(OAL_9) = AO2A(SA_9,SAENB,A_9,SAENBL);
assign OAL_10 = ~((SA_10 & SAENB)|(inA_10 & SAENBL));                           //[BM.NET:00120] OA_10_(OAL_10) = AO2A(SA_10,SAENB,A_10,SAENBL);
assign OAL_11 = ~((SA_11 & SAENB)|(inA_11 & SAENBL));                           //[BM.NET:00121] OA_11_(OAL_11) = AO2A(SA_11,SAENB,A_11,SAENBL);
assign OAL_12 = ~((SA_12 & SAENB)|(inA_12 & SAENBL));                           //[BM.NET:00122] OA_12_(OAL_12) = AO2A(SA_12,SAENB,A_12,SAENBL);
assign OAL_13 = ~((SA_13 & SAENB)|(inA_13 & SAENBL));                           //[BM.NET:00123] OA_13_(OAL_13) = AO2A(SA_13,SAENB,A_13,SAENBL);
assign OAL_14 = ~((SA_14 & SAENB)|(inA_14 & SAENBL));                           //[BM.NET:00124] OA_14_(OAL_14) = AO2A(SA_14,SAENB,A_14,SAENBL);
assign OAL_15 = ~((SA_15 & SAENB)|(inA_15 & SAENBL));                           //[BM.NET:00125] OA_15_(OAL_15) = AO2A(SA_15,SAENB,A_15,SAENBL);
assign OAL_16 = ~((SA_16 & SAENB)|(inA_16 & SAENBL));                           //[BM.NET:00126] OA_16_(OAL_16) = AO2A(SA_16,SAENB,A_16,SAENBL);
assign VAL_17 = ~((SA_17 & SAENB)|(inA_17 & SAENBL));                           //[BM.NET:00127] VAL_17_(VAL_17) = AO2A(SA_17,SAENB,A_17,SAENBL);

/* the low eight address lines may be multiplexed for DRAMs */

assign MUX = ~MUXL;                                                             //[BM.NET:00131] MUX_(MUX) = N1C(MUXL);
assign MUXB = ~MUXL;                                                            //[BM.NET:00132] MUXB_(MUXB) = B1A(MUXL);
assign MUXBL = ~MUX;                                                            //[BM.NET:00133] MUXBL_(MUXBL) = B1A(MUX);

assign VA_0 = ~OAL_0;//((OAL_0 & MUXBL)|(OAL_8 & MUXB));                                //[BM.NET:00135] VA_0_(VA_0) = AO2A(OAL_0,MUXBL,OAL_8,MUXB);
assign VA_1 = ~OAL_1;//((OAL_1 & MUXBL)|(OAL_9 & MUXB));                                //[BM.NET:00136] VA_1_(VA_1) = AO2A(OAL_1,MUXBL,OAL_9,MUXB);
assign VA_2 = ~OAL_2;//((OAL_2 & MUXBL)|(OAL_10 & MUXB));                               //[BM.NET:00137] VA_2_(VA_2) = AO2A(OAL_2,MUXBL,OAL_10,MUXB);
assign VA_3 = ~OAL_3;//((OAL_3 & MUXBL)|(OAL_11 & MUXB));                               //[BM.NET:00138] VA_3_(VA_3) = AO2A(OAL_3,MUXBL,OAL_11,MUXB);
assign VA_4 = ~OAL_4;//((OAL_4 & MUXBL)|(OAL_12 & MUXB));                               //[BM.NET:00139] VA_4_(VA_4) = AO2A(OAL_4,MUXBL,OAL_12,MUXB);
assign VA_5 = ~OAL_5;//((OAL_5 & MUXBL)|(OAL_13 & MUXB));                               //[BM.NET:00140] VA_5_(VA_5) = AO2A(OAL_5,MUXBL,OAL_13,MUXB);
assign VA_6 = ~OAL_6;//((OAL_6 & MUXBL)|(OAL_14 & MUXB));                               //[BM.NET:00141] VA_6_(VA_6) = AO2A(OAL_6,MUXBL,OAL_14,MUXB);
assign VA_7 = ~OAL_7;//((OAL_7 & MUXBL)|(OAL_15 & MUXB));                               //[BM.NET:00142] VA_7_(VA_7) = AO2A(OAL_7,MUXBL,OAL_15,MUXB);
assign VAL_0 = ~VA_0;                                                           //[BM.NET:00143] VAL_0_(VAL_0) = N1A(VA_0); 

assign VAL_1 = ~VA_1;                                                           //[BM.NET:00145] VAL_1_(VAL_1) = N1A(VA_1); 

assign VAL_2 = ~VA_2;                                                           //[BM.NET:00147] VAL_2_(VAL_2) = N1A(VA_2); 

assign VAL_3 = ~VA_3;                                                           //[BM.NET:00149] VAL_3_(VAL_3) = N1A(VA_3); 

assign VAL_4 = ~VA_4;                                                           //[BM.NET:00151] VAL_4_(VAL_4) = N1A(VA_4); 

assign VAL_5 = ~VA_5;                                                           //[BM.NET:00153] VAL_5_(VAL_5) = N1A(VA_5); 

assign VAL_6 = ~VA_6;                                                           //[BM.NET:00155] VAL_6_(VAL_6) = N1A(VA_6); 

assign VAL_7 = ~VA_7;                                                           //[BM.NET:00157] VAL_7_(VAL_7) = N1A(VA_7); 


assign VA_8 = ~OAL_8;                                                           //[BM.NET:00160] VA_8_(VA_8) = N1A(OAL_8);
assign VA_9 = ~OAL_9;                                                           //[BM.NET:00161] VA_9_(VA_9) = N1A(OAL_9);
assign VA_10 = ~OAL_10;                                                         //[BM.NET:00162] VA_10_(VA_10) = N1A(OAL_10);
assign VA_11 = ~OAL_11;                                                         //[BM.NET:00163] VA_11_(VA_11) = N1A(OAL_11);
assign VA_12 = ~OAL_12;                                                         //[BM.NET:00164] VA_12_(VA_12) = N1A(OAL_12);
assign VA_13 = ~OAL_13;                                                         //[BM.NET:00165] VA_13_(VA_13) = N1A(OAL_13);
assign VA_14 = ~OAL_14;                                                         //[BM.NET:00166] VA_14_(VA_14) = N1A(OAL_14);
assign VA_15 = ~OAL_15;                                                         //[BM.NET:00167] VA_15_(VA_15) = N1A(OAL_15);

/* A16 may also be multiplexed for DRAMs */

assign VA_16 = ~OAL_16; //~((OAL_16 & MUXBL)|(VAL_17 & MUXB));                             //[BM.NET:00171] VA_16_(VA_16) = AO2A(OAL_16,MUXBL,VAL_17,MUXB);
assign VAL_16 = ~VA_16;                                                         //[BM.NET:00172] VAL_16_(VAL_16) = N1A(VA_16);

/* A8-A15, RDL and WRL are enabled when hlda is asserted */

assign AEN = ~HLDAL;                                                            //[BM.NET:00176] AEN_(AEN) = N1C(HLDAL);
assign PAEN = ~AEN;                                                             //[BM.NET:00177] PAEN_(PAEN) = N1C(AEN);

/* Zero is put on the internal bus during reset,
so that registers may be cleared without much additional logic */

/* Delay the enable to provide hold time */

assign RESET_0 = ~RESETL_0;                                                     //[BM.NET:00184] RESET_0_(RESET_0) = N1A(RESETL_0);
assign RESETL_1 = ~RESET_0;                                                     //[BM.NET:00185] RESETL_1_(RESETL_1) = N1A(RESET_0);
assign RESET_1 = ~RESETL_1;                                                     //[BM.NET:00186] RESET_1_(RESET_1) = N1A(RESETL_1);
assign RESETL_2 = ~RESET_1;                                                     //[BM.NET:00187] RESETL_2_(RESETL_2) = N1A(RESET_1);
assign RESET_2 = ~RESETL_2;                                                     //[BM.NET:00188] RESET_2_(RESET_2) = N1A(RESETL_2);
assign RESETL_3 = ~RESET_2;                                                     //[BM.NET:00189] RESETL_3_(RESETL_3) = N1A(RESET_2);
assign RESET_3 = ~RESETL_3;                                                     //[BM.NET:00190] RESET_3_(RESET_3) = N1A(RESETL_3);
assign RESETL_4 = ~RESET_3;                                                     //[BM.NET:00191] RESETL_4_(RESETL_4) = N1A(RESET_3);
assign RESET_4 = ~RESETL_4;                                                     //[BM.NET:00192] RESET_4_(RESET_4) = N1A(RESETL_4);
assign RESETL_5 = ~RESET_4;                                                     //[BM.NET:00193] RESETL_5_(RESETL_5) = N1A(RESET_4);
assign RESET_5 = ~RESETL_5;                                                     //[BM.NET:00194] RESET_5_(RESET_5) = N1A(RESETL_5);
assign RESETL_6 = ~RESET_5;                                                     //[BM.NET:00195] RESETL_6_(RESETL_6) = N1A(RESET_5);
assign RESET_6 = ~RESETL_6;                                                     //[BM.NET:00196] RESET_6_(RESET_6) = N1A(RESETL_6);
assign drv0_outD_0 = ~RESET_6; assign drv0_enD_0 = RESET_6;                     //[BM.NET:00197] DR_0_(D_0) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_1 = ~RESET_6; assign drv0_enD_1 = RESET_6;                     //[BM.NET:00198] DR_1_(D_1) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_2 = ~RESET_6; assign drv0_enD_2 = RESET_6;                     //[BM.NET:00199] DR_2_(D_2) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_3 = ~RESET_6; assign drv0_enD_3 = RESET_6;                     //[BM.NET:00200] DR_3_(D_3) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_4 = ~RESET_6; assign drv0_enD_4 = RESET_6;                     //[BM.NET:00201] DR_4_(D_4) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_5 = ~RESET_6; assign drv0_enD_5 = RESET_6;                     //[BM.NET:00202] DR_5_(D_5) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_6 = ~RESET_6; assign drv0_enD_6 = RESET_6;                     //[BM.NET:00203] DR_6_(D_6) = BTS5A(RESET_6,RESET_6);
assign drv0_outD_7 = ~RESET_6; assign drv0_enD_7 = RESET_6;                     //[BM.NET:00204] DR_7_(D_7) = BTS5A(RESET_6,RESET_6);

/* zero is put onto the top half of the bus during internal memory reads
and internal io reads. This prevents it from floating */

assign IMRDL = ~(IOML & RD & inA_18 & AL_19);                                   //[BM.NET:00209] IMRDL_(IMRDL) = ND4A(IOML,RD,A_18,AL_19);
assign EN0 = ~(IMRDL & SSIORDL & RESETL_6);                                     //[BM.NET:00210] EN0_(EN0) = ND3B(IMRDL,SSIORDL,RESETL_6);
assign drv0_outD_8 = ~EN0; assign drv0_enD_8 = EN0;                             //[BM.NET:00211] DR_8_(D_8) = BTS5A(EN0,EN0);
assign drv0_outD_9 = ~EN0; assign drv0_enD_9 = EN0;                             //[BM.NET:00212] DR_9_(D_9) = BTS5A(EN0,EN0);
assign drv0_outD_10 = ~EN0; assign drv0_enD_10 = EN0;                           //[BM.NET:00213] DR_10_(D_10) = BTS5A(EN0,EN0);
assign drv0_outD_11 = ~EN0; assign drv0_enD_11 = EN0;                           //[BM.NET:00214] DR_11_(D_11) = BTS5A(EN0,EN0);
assign drv0_outD_12 = ~EN0; assign drv0_enD_12 = EN0;                           //[BM.NET:00215] DR_12_(D_12) = BTS5A(EN0,EN0);
assign drv0_outD_13 = ~EN0; assign drv0_enD_13 = EN0;                           //[BM.NET:00216] DR_13_(D_13) = BTS5A(EN0,EN0);
assign drv0_outD_14 = ~EN0; assign drv0_enD_14 = EN0;                           //[BM.NET:00217] DR_14_(D_14) = BTS5A(EN0,EN0);
assign drv0_outD_15 = ~EN0; assign drv0_enD_15 = EN0;                           //[BM.NET:00218] DR_15_(D_15) = BTS5A(EN0,EN0);

/* enable the host data onto the internal data bus except:-

1)	when the host is reading internal IO
2)	when the host is reading internal memory
3)	during interupt acknowledge
4)	when the coprocessors are writing
5)	when coprocessors reading from internal memory
6)	during reset

*/

assign drv1_outD_0 = ~SDL_0; assign drv1_enD_0 = ENID;                          //[BM.NET:00231] DH_0_(D_0) = BTS5A(SDL_0,ENID);
assign drv1_outD_1 = ~SDL_1; assign drv1_enD_1 = ENID;                          //[BM.NET:00232] DH_1_(D_1) = BTS5A(SDL_1,ENID);
assign drv1_outD_2 = ~SDL_2; assign drv1_enD_2 = ENID;                          //[BM.NET:00233] DH_2_(D_2) = BTS5A(SDL_2,ENID);
assign drv1_outD_3 = ~SDL_3; assign drv1_enD_3 = ENID;                          //[BM.NET:00234] DH_3_(D_3) = BTS5A(SDL_3,ENID);
assign drv1_outD_4 = ~SDL_4; assign drv1_enD_4 = ENID;                          //[BM.NET:00235] DH_4_(D_4) = BTS5A(SDL_4,ENID);
assign drv1_outD_5 = ~SDL_5; assign drv1_enD_5 = ENID;                          //[BM.NET:00236] DH_5_(D_5) = BTS5A(SDL_5,ENID);
assign drv1_outD_6 = ~SDL_6; assign drv1_enD_6 = ENID;                          //[BM.NET:00237] DH_6_(D_6) = BTS5A(SDL_6,ENID);
assign drv1_outD_7 = ~SDL_7; assign drv1_enD_7 = ENID;                          //[BM.NET:00238] DH_7_(D_7) = BTS5A(SDL_7,ENID);
assign drv1_outD_8 = ~VDL_8; assign drv1_enD_8 = ENID;                          //[BM.NET:00239] DH_8_(D_8) = BTS5A(VDL_8,ENID);
assign drv1_outD_9 = ~VDL_9; assign drv1_enD_9 = ENID;                          //[BM.NET:00240] DH_9_(D_9) = BTS5A(VDL_9,ENID);
assign drv1_outD_10 = ~VDL_10; assign drv1_enD_10 = ENID;                       //[BM.NET:00241] DH_10_(D_10) = BTS5A(VDL_10,ENID);
assign drv1_outD_11 = ~VDL_11; assign drv1_enD_11 = ENID;                       //[BM.NET:00242] DH_11_(D_11) = BTS5A(VDL_11,ENID);
assign drv1_outD_12 = ~VDL_12; assign drv1_enD_12 = ENID;                       //[BM.NET:00243] DH_12_(D_12) = BTS5A(VDL_12,ENID);
assign drv1_outD_13 = ~VDL_13; assign drv1_enD_13 = ENID;                       //[BM.NET:00244] DH_13_(D_13) = BTS5A(VDL_13,ENID);
assign drv1_outD_14 = ~VDL_14; assign drv1_enD_14 = ENID;                       //[BM.NET:00245] DH_14_(D_14) = BTS5A(VDL_14,ENID);
assign drv1_outD_15 = ~VDL_15; assign drv1_enD_15 = ENID;                       //[BM.NET:00246] DH_15_(D_15) = BTS5A(VDL_15,ENID);

/* internal IO reads are decoded by iodec */

assign SSIORDL = ~SSIORD;                                                       //[BM.NET:00250] SSIORDL_(SSIORDL) = N1A(SSIORD);

/* decode host internal memory reads */

assign SSIMRDL = ~(HLDAL & IOML & VRD & inA_18 & AL_19);                        //[BM.NET:00254] SSIMRDL_(SSIMRDL) = ND5A(HLDAL,IOML,VRD,A_18,AL_19);

/* decode coproccesor writes */

assign HLDA = ~HLDAL;                                                           //[BM.NET:00258] HLDA_(HLDA) = N1B(HLDAL);
assign WR = ~WRL;                                                               //[BM.NET:00259] WR_(WR) = N1A(WRL);
assign COPWRL = ~(HLDA & WR);                                                   //[BM.NET:00260] COPWRL_(COPWRL) = ND2A(HLDA,WR);

/* copwrnvL is not asserted during video fetches */

assign COPWRNVL = ~(HLDA & WR & SAENL);                                         //[BM.NET:00264] COPWRNVL_(COPWRNVL) = ND3A(HLDA,WR,SAENL);

/* decode coproccesor internal reads */

assign RD = ~RDL;                                                               //[BM.NET:00268] RD_(RD) = N1A(RDL);
assign COPIMRDL = ~(HLDA & RD & inA_18 & AL_19);                                //[BM.NET:00269] COPIMRDL_(COPIMRDL) = ND4A(HLDA,RD,A_18,AL_19);

assign ENIDL = ~(SSIORDL & SSIMRDL & INTAL & COPWRL & COPIMRDL & RESETL_6);     //[BM.NET:00271] ENIDL_(ENIDL) = ND6A(SSIORDL,SSIMRDL,INTAL,COPWRL,COPIMRDL,RESETL_6);
assign ENID = ~ENIDL;                                                           //[BM.NET:00272] ENID_(ENID) = B1A(ENIDL);

/* when SWAP1 is asserted the low byte on the internal bus is presented
to D[8-15] output pads: when SWAP2 is asserted D[8-15] input pad is presented 
to the low byte on the internal bus */

assign VAD_0 = inD_0;                                                           //[BM.NET:00278] VAD_0_(VAD_0) = B3A(D_0);
assign VAD_1 = inD_1;                                                           //[BM.NET:00279] VAD_1_(VAD_1) = B3A(D_1);
assign VAD_2 = inD_2;                                                           //[BM.NET:00280] VAD_2_(VAD_2) = B3A(D_2);
assign VAD_3 = inD_3;                                                           //[BM.NET:00281] VAD_3_(VAD_3) = B3A(D_3);
assign VAD_4 = inD_4;                                                           //[BM.NET:00282] VAD_4_(VAD_4) = B3A(D_4);
assign VAD_5 = inD_5;                                                           //[BM.NET:00283] VAD_5_(VAD_5) = B3A(D_5);
assign VAD_6 = inD_6;                                                           //[BM.NET:00284] VAD_6_(VAD_6) = B3A(D_6);
assign VAD_7 = inD_7;                                                           //[BM.NET:00285] VAD_7_(VAD_7) = B3A(D_7);

assign SDL_8 = ~((inD_8 & SWAP1L)|(inD_0 & SWAP1));                             //[BM.NET:00287] SDL_8_(SDL_8) = AO2A(D_8,SWAP1L,D_0,SWAP1);
assign SDL_9 = ~((inD_9 & SWAP1L)|(inD_1 & SWAP1));                             //[BM.NET:00288] SDL_9_(SDL_9) = AO2A(D_9,SWAP1L,D_1,SWAP1);
assign SDL_10 = ~((inD_10 & SWAP1L)|(inD_2 & SWAP1));                           //[BM.NET:00289] SDL_10_(SDL_10) = AO2A(D_10,SWAP1L,D_2,SWAP1);
assign SDL_11 = ~((inD_11 & SWAP1L)|(inD_3 & SWAP1));                           //[BM.NET:00290] SDL_11_(SDL_11) = AO2A(D_11,SWAP1L,D_3,SWAP1);
assign SDL_12 = ~((inD_12 & SWAP1L)|(inD_4 & SWAP1));                           //[BM.NET:00291] SDL_12_(SDL_12) = AO2A(D_12,SWAP1L,D_4,SWAP1);
assign SDL_13 = ~((inD_13 & SWAP1L)|(inD_5 & SWAP1));                           //[BM.NET:00292] SDL_13_(SDL_13) = AO2A(D_13,SWAP1L,D_5,SWAP1);
assign SDL_14 = ~((inD_14 & SWAP1L)|(inD_6 & SWAP1));                           //[BM.NET:00293] SDL_14_(SDL_14) = AO2A(D_14,SWAP1L,D_6,SWAP1);
assign SDL_15 = ~((inD_15 & SWAP1L)|(inD_7 & SWAP1));                           //[BM.NET:00294] SDL_15_(SDL_15) = AO2A(D_15,SWAP1L,D_7,SWAP1);
assign VD_8 = ~SDL_8;                                                           //[BM.NET:00295] VD_8_(VD_8) = N1A(SDL_8);
assign VD_9 = ~SDL_9;                                                           //[BM.NET:00296] VD_9_(VD_9) = N1A(SDL_9);
assign VD_10 = ~SDL_10;                                                         //[BM.NET:00297] VD_10_(VD_10) = N1A(SDL_10);
assign VD_11 = ~SDL_11;                                                         //[BM.NET:00298] VD_11_(VD_11) = N1A(SDL_11);
assign VD_12 = ~SDL_12;                                                         //[BM.NET:00299] VD_12_(VD_12) = N1A(SDL_12);
assign VD_13 = ~SDL_13;                                                         //[BM.NET:00300] VD_13_(VD_13) = N1A(SDL_13);
assign VD_14 = ~SDL_14;                                                         //[BM.NET:00301] VD_14_(VD_14) = N1A(SDL_14);
assign VD_15 = ~SDL_15;                                                         //[BM.NET:00302] VD_15_(VD_15) = N1A(SDL_15);

assign SD_0 = ~((VADL_0 & SWAP2L)|(VDL_8 & SWAP2));                             //[BM.NET:00304] SD_0_(SD_0) = AO2A(VADL_0,SWAP2L,VDL_8,SWAP2);
assign SD_1 = ~((VADL_1 & SWAP2L)|(VDL_9 & SWAP2));                             //[BM.NET:00305] SD_1_(SD_1) = AO2A(VADL_1,SWAP2L,VDL_9,SWAP2);
assign SD_2 = ~((VADL_2 & SWAP2L)|(VDL_10 & SWAP2));                            //[BM.NET:00306] SD_2_(SD_2) = AO2A(VADL_2,SWAP2L,VDL_10,SWAP2);
assign SD_3 = ~((VADL_3 & SWAP2L)|(VDL_11 & SWAP2));                            //[BM.NET:00307] SD_3_(SD_3) = AO2A(VADL_3,SWAP2L,VDL_11,SWAP2);
assign SD_4 = ~((VADL_4 & SWAP2L)|(VDL_12 & SWAP2));                            //[BM.NET:00308] SD_4_(SD_4) = AO2A(VADL_4,SWAP2L,VDL_12,SWAP2);
assign SD_5 = ~((VADL_5 & SWAP2L)|(VDL_13 & SWAP2));                            //[BM.NET:00309] SD_5_(SD_5) = AO2A(VADL_5,SWAP2L,VDL_13,SWAP2);
assign SD_6 = ~((VADL_6 & SWAP2L)|(VDL_14 & SWAP2));                            //[BM.NET:00310] SD_6_(SD_6) = AO2A(VADL_6,SWAP2L,VDL_14,SWAP2);
assign SD_7 = ~((VADL_7 & SWAP2L)|(VDL_15 & SWAP2));                            //[BM.NET:00311] SD_7_(SD_7) = AO2A(VADL_7,SWAP2L,VDL_15,SWAP2);
assign SDL_0 = ~SD_0;                                                           //[BM.NET:00312] SDL_0_(SDL_0) = N1A(SD_0);
assign SDL_1 = ~SD_1;                                                           //[BM.NET:00313] SDL_1_(SDL_1) = N1A(SD_1);
assign SDL_2 = ~SD_2;                                                           //[BM.NET:00314] SDL_2_(SDL_2) = N1A(SD_2);
assign SDL_3 = ~SD_3;                                                           //[BM.NET:00315] SDL_3_(SDL_3) = N1A(SD_3);
assign SDL_4 = ~SD_4;                                                           //[BM.NET:00316] SDL_4_(SDL_4) = N1A(SD_4);
assign SDL_5 = ~SD_5;                                                           //[BM.NET:00317] SDL_5_(SDL_5) = N1A(SD_5);
assign SDL_6 = ~SD_6;                                                           //[BM.NET:00318] SDL_6_(SDL_6) = N1A(SD_6);
assign SDL_7 = ~SD_7;                                                           //[BM.NET:00319] SDL_7_(SDL_7) = N1A(SD_7);


/* SWAP is asserted:-

1) when the host is host is reading or writing to odd SRAM
2) when the coproccesors are reading or writing to odd SRAM and word is clear
3) when the host reads the joysticks
*/

/* decode odd host SRAM accesses */

assign AL_18 = ~inA_18;                                                         //[BM.NET:00331] AL_18_(AL_18) = N1A(A_18);
assign AL_19 = ~inA_19;                                                         //[BM.NET:00332] AL_19_(AL_19) = N1A(A_19);
assign HODDL = ~(HLDAL & IOML & inA_0 & AL_18 & AL_19);                         //[BM.NET:00333] HODDL_(HODDL) = ND5A(HLDAL,IOML,A_0,AL_18,AL_19);
assign HODDRL = RDL | HODDL;                                                    //[BM.NET:00334] HODDRL_(HODDRL) = OR2A(RDL,HODDL);

/* decode odd coproccesor SRAM accesses */

assign CODDL = ~(HLDA & SAENL & inA_0 & AL_18 & AL_19 & WORDL);                 //[BM.NET:00338] CODDL_(CODDL) = ND6A(HLDA,SAENL,A_0,AL_18,AL_19,WORDL);

/* decode joystick reads */

assign JOYL = JOYL_0 & JOYL_1;                                                  //[BM.NET:00342] JOYL_(JOYL) = AND2A(JOYL_0,JOYL_1);

assign SWAP = ~(HODDL & CODDL & JOYL);                                          //[BM.NET:00344] SWAP_(SWAP) = ND3A(HODDL,CODDL,JOYL);
assign SWAP1L = ~(SWAP & DEN);                                                  //[BM.NET:00345] SWAP1L_(SWAP1L) = ND2C(SWAP,DEN);
assign SWAP1 = ~SWAP1L;                                                         //[BM.NET:00346] SWAP1_(SWAP1) = N1C(SWAP1L);
assign SWAP2L = ~(SWAP & DENL);                                                 //[BM.NET:00347] SWAP2L_(SWAP2L) = ND2C(SWAP,DENL);
assign SWAP2 = ~SWAP2L;                                                         //[BM.NET:00348] SWAP2_(SWAP2) = N1C(SWAP2L);

/* the low eight data pins are enabled:-

1) when the host is reading internal memory
2) when the host is reading internal IO
3) when the host is reading joysticks
4) when the coprocessors are writing (except during video)
5) during interupt acknowledge
6) when the host is reading odd sram

*/

assign ADEN = ~(HODDRL & SSIMRDL & SSIORDL & JOYL & INTAL & COPWRNVL);          //[BM.NET:00361] ADEN_(ADEN) = ND6B(HODDRL,SSIMRDL,SSIORDL,JOYL,INTAL,COPWRNVL);

/* the high eight data pins are enabled:-

1) when the host is writing to odd SRAM
2) when the coprocessors are writing (except during video)

*/

assign HODDWL = ~(HLDAL & IOML & VWR & inA_0 & AL_18 & AL_19);                  //[BM.NET:00370] HODDWL_(HODDWL) = ND6A(HLDAL,IOML,VWR,A_0,AL_18,AL_19);

assign DEN = ~(HODDWL & COPWRNVL);                                              //[BM.NET:00372] DEN_(DEN) = ND2C(HODDWL,COPWRNVL);
assign DENL = ~DEN;                                                             //[BM.NET:00373] DENL_(DENL) = N1A(DEN);

/* buffer host data onto VID write bus */

assign WD_0 = ~(VADL_0 | RESET_6);                                              //[BM.NET:00377] WD_0_(WD_0) = NR2C(VADL_0,RESET_6);
assign WD_1 = ~(VADL_1 | RESET_6);                                              //[BM.NET:00378] WD_1_(WD_1) = NR2C(VADL_1,RESET_6);
assign WD_2 = ~(VADL_2 | RESET_6);                                              //[BM.NET:00379] WD_2_(WD_2) = NR2C(VADL_2,RESET_6);
assign WD_3 = ~(VADL_3 | RESET_6);                                              //[BM.NET:00380] WD_3_(WD_3) = NR2C(VADL_3,RESET_6);
assign WD_4 = ~(VADL_4 | RESET_6);                                              //[BM.NET:00381] WD_4_(WD_4) = NR2C(VADL_4,RESET_6);
assign WD_5 = ~(VADL_5 | RESET_6);                                              //[BM.NET:00382] WD_5_(WD_5) = NR2C(VADL_5,RESET_6);
assign WD_6 = ~(VADL_6 | RESET_6);                                              //[BM.NET:00383] WD_6_(WD_6) = NR2C(VADL_6,RESET_6);
assign WD_7 = ~(VADL_7 | RESET_6);                                              //[BM.NET:00384] WD_7_(WD_7) = NR2C(VADL_7,RESET_6);

/* hold is generated from blitter hold and video hold signals */

assign HOLDL = BHOLDL & VHOLDL;                                                 //[BM.NET:00388] HOLDL_(HOLDL) = AND2A(BHOLDL,VHOLDL);

/* palcs is decoded here */
/* the palette RAM lies between 40000 and 401FF */

assign PR = ~(inA_12 | inA_13 | inA_14 | inA_15 | inA_16 | inA_17 | AL_18 | inA_19);//[BM.NET:00393] PR_(PR) = NR8A(A_12,A_13,A_14,A_15,A_16,A_17,AL_18,A_19);
assign AL_9 = ~inA_9;                                                           //[BM.NET:00394] AL_9_(AL_9) = N1A(A_9);
assign AL_10 = ~inA_10;                                                         //[BM.NET:00395] AL_10_(AL_10) = N1A(A_10);
assign AL_11 = ~inA_11;                                                         //[BM.NET:00396] AL_11_(AL_11) = N1A(A_11);
assign AL_14 = ~inA_14;                                                         //[BM.NET:00397] AL_14_(AL_14) = N1A(A_14);

assign PALCSL = ~(PR & IOML & AL_9 & AL_10 & AL_11);                            //[BM.NET:00399] PALCSL_(PALCSL) = ND5A(PR,IOML,AL_9,AL_10,AL_11);
assign PALCS = ~PALCSL;                                                         //[BM.NET:00400] PALCS_(PALCS) = N1C(PALCSL);

/* the dsp lies between 41000 and 41FFF */

assign AL_12 = ~inA_12;                                                         //[BM.NET:00404] AL_12_(AL_12) = N1A(A_12);
assign D0 = ~(AL_12 | inA_13 | inA_14 | inA_15 | inA_16 | inA_17 | AL_18 | inA_19);//[BM.NET:00405] D0_(D0) = NR8A(AL_12,A_13,A_14,A_15,A_16,A_17,AL_18,A_19);
assign DCSL = ~(D0 & IOML & AL_11);                                             //[BM.NET:00406] DCSL_(DCSL) = ND3C(D0,IOML,AL_11);

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
assign outD_8 = (drv0_outD_8 & drv0_enD_8) | (drv1_outD_8 & drv1_enD_8);
assign enD_8 = drv0_enD_8 | drv1_enD_8;
assign outD_9 = (drv0_outD_9 & drv0_enD_9) | (drv1_outD_9 & drv1_enD_9);
assign enD_9 = drv0_enD_9 | drv1_enD_9;
assign outD_10 = (drv0_outD_10 & drv0_enD_10) | (drv1_outD_10 & drv1_enD_10);
assign enD_10 = drv0_enD_10 | drv1_enD_10;
assign outD_11 = (drv0_outD_11 & drv0_enD_11) | (drv1_outD_11 & drv1_enD_11);
assign enD_11 = drv0_enD_11 | drv1_enD_11;
assign outD_12 = (drv0_outD_12 & drv0_enD_12) | (drv1_outD_12 & drv1_enD_12);
assign enD_12 = drv0_enD_12 | drv1_enD_12;
assign outD_13 = (drv0_outD_13 & drv0_enD_13) | (drv1_outD_13 & drv1_enD_13);
assign enD_13 = drv0_enD_13 | drv1_enD_13;
assign outD_14 = (drv0_outD_14 & drv0_enD_14) | (drv1_outD_14 & drv1_enD_14);
assign enD_14 = drv0_enD_14 | drv1_enD_14;
assign outD_15 = (drv0_outD_15 & drv0_enD_15) | (drv1_outD_15 & drv1_enD_15);
assign enD_15 = drv0_enD_15 | drv1_enD_15;
endmodule                                                                       //[BM.NET:00408] END MODULE;
