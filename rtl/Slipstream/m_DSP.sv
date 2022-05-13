                                                                                //[DSP.NET:00001] COMPILE;
                                                                                //[DSP.NET:00002] DIRECTORY MASTER;


module m_DSP                                                                    //[DSP.NET:00005] MODULE DSP;
(                                                                               //[DSP.NET:00005] MODULE DSP;

    input    MasterClock,
    input    inA_0,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[DSP.NET:00007] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_17,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_18,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_19,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_0,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_1,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_2,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_3,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_4,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_5,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_6,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_7,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_8,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_9,                                                             //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_10,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_11,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_12,                                                            //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_13,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inD_14,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inD_15,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_0,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_1,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_2,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_3,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_4,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_5,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_6,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_7,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_8,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_9,                                                            //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_10,                                                           //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_11,                                                           //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    input    inDD_12,                                                           //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inDD_13,                                                           //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inDD_14,                                                           //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inDD_15,                                                           //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_0,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_1,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_2,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_3,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_4,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_5,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_6,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_7,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_8,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_9,                                                            //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    input    inPD_10,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    inPD_11,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    inPD_12,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    inPD_13,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    inPD_14,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    inPD_15,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    RESETL,                                                            //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    DSPBAKL,                                                           //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    DCSL,                                                              //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    CCLK,                                                              //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    WAITL,                                                             //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    IOML,                                                              //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    RDL,                                                               //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
    input    DWE,                                                               //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_0,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_1,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_2,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_3,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_4,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_5,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_6,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_7,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_8,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_9,                                                              //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_10,                                                             //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_11,                                                             //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_12,                                                             //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
    input    AZ_13,                                                             //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    AZ_14,                                                             //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    AZ_15,                                                             //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    COUTL,                                                             //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_0,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_1,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_2,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_3,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_4,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_5,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_6,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_7,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_8,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_9,                                                              //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
    input    MZ_10,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_11,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_12,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_13,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_14,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_15,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_16,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_17,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_18,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_19,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_20,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_21,                                                             //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
    input    MZ_22,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_23,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_24,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_25,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_26,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_27,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_28,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_29,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_30,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_31,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_32,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_33,                                                             //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
    input    MZ_34,                                                             //[DSP.NET:00016]    MZ_34,MZ_35,MZ_36,INPUT,DQCLK;
    input    MZ_35,                                                             //[DSP.NET:00016]    MZ_34,MZ_35,MZ_36,INPUT,DQCLK;
    input    MZ_36,                                                             //[DSP.NET:00016]    MZ_34,MZ_35,MZ_36,INPUT,DQCLK;
    input    INPUT,                                                             //[DSP.NET:00016]    MZ_34,MZ_35,MZ_36,INPUT,DQCLK;
    input    DQCLK,                                                             //[DSP.NET:00016]    MZ_34,MZ_35,MZ_36,INPUT,DQCLK;
                                                                                //[DSP.NET:00008]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
                                                                                //[DSP.NET:00009]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
                                                                                //[DSP.NET:00010]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
                                                                                //[DSP.NET:00011]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,RESETL,DSPBAKL,DCSL,CCLK,WAITL,IOML,RDL,
                                                                                //[DSP.NET:00012]    DWE,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,AZ_9,AZ_10,AZ_11,AZ_12,
                                                                                //[DSP.NET:00013]    AZ_13,AZ_14,AZ_15,COUTL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,MZ_7,MZ_8,MZ_9,
                                                                                //[DSP.NET:00014]    MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,MZ_20,MZ_21,
                                                                                //[DSP.NET:00015]    MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,MZ_32,MZ_33,
                                                                                //[DSP.NET:00016]    MZ_34,MZ_35,MZ_36,INPUT,DQCLK;
    output    outA_0, enA_0,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_17, enA_17,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_18, enA_18,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_19, enA_19,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_0, enD_0,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_1, enD_1,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_2, enD_2,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_3, enD_3,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_4, enD_4,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_5, enD_5,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_6, enD_6,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_7, enD_7,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_8, enD_8,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_9, enD_9,                                                    //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_10, enD_10,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_11, enD_11,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_12, enD_12,                                                  //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_13, enD_13,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outD_14, enD_14,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outD_15, enD_15,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_0, enDD_0,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_1, enDD_1,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_2, enDD_2,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_3, enDD_3,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_4, enDD_4,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_5, enDD_5,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_6, enDD_6,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_7, enDD_7,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_8, enDD_8,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_9, enDD_9,                                                  //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_10, enDD_10,                                                //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_11, enDD_11,                                                //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_12, enDD_12,                                                //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outDD_13, enDD_13,                                                //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outDD_14, enDD_14,                                                //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outDD_15, enDD_15,                                                //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_0, enPD_0,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_1, enPD_1,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_2, enPD_2,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_3, enPD_3,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_4, enPD_4,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_5, enPD_5,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_6, enPD_6,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_7, enPD_7,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_8, enPD_8,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_9, enPD_9,                                                  //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
    output    outPD_10, enPD_10,                                                //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    outPD_11, enPD_11,                                                //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    outPD_12, enPD_12,                                                //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    outPD_13, enPD_13,                                                //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    outPD_14, enPD_14,                                                //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    outPD_15, enPD_15,                                                //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    DSPBRQL,                                                          //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    LEFTL,                                                            //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    LEFTH,                                                            //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    RIGHTL,                                                           //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    RIGHTH,                                                           //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    MREQ,                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
    output    RD,                                                               //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    WR,                                                               //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    WORD,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_0,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_1,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_2,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_3,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_4,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_5,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_6,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    PC_7,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_0,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_1,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_2,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_3,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_4,                                                             //[DSP.NET:00022]    RD,WR,WORD,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_5,                                                             //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    DA_6,                                                             //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    DA_7,                                                             //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    PRAMEN,                                                           //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    PRAMWR,                                                           //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    DRAMEN,                                                           //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    DRAMWR,                                                           //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    ROMEN,                                                            //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_0,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_1,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_2,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_3,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_4,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_5,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_6,                                                              //[DSP.NET:00023]    DA_5,DA_6,DA_7,PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN,X_0,X_1,X_2,X_3,X_4,X_5,X_6,
    output    X_7,                                                              //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_8,                                                              //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_9,                                                              //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_10,                                                             //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_11,                                                             //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_12,                                                             //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_13,                                                             //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_14,                                                             //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    X_15,                                                             //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    ACC_0,                                                            //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    ACC_1,                                                            //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    ACC_2,                                                            //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    ACC_3,                                                            //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    ACC_4,                                                            //[DSP.NET:00024]    X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,
    output    ACC_5,                                                            //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_6,                                                            //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_7,                                                            //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_8,                                                            //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_9,                                                            //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_10,                                                           //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_11,                                                           //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_12,                                                           //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_13,                                                           //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_14,                                                           //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_15,                                                           //[DSP.NET:00025]    ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,
    output    ACC_16,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_17,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_18,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_19,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_20,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_21,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_22,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_23,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_24,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_25,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_26,                                                           //[DSP.NET:00026]    ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,
    output    ACC_27,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_28,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_29,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_30,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_31,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_32,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_33,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_34,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    ACC_35,                                                           //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    TCX,                                                              //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    TCY,                                                              //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    CINL,                                                             //[DSP.NET:00027]    ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,
    output    M,                                                                //[DSP.NET:00028]    M,S_0,S_1,S_2,S_3,OUTPUT;
    output    S_0,                                                              //[DSP.NET:00028]    M,S_0,S_1,S_2,S_3,OUTPUT;
    output    S_1,                                                              //[DSP.NET:00028]    M,S_0,S_1,S_2,S_3,OUTPUT;
    output    S_2,                                                              //[DSP.NET:00028]    M,S_0,S_1,S_2,S_3,OUTPUT;
    output    S_3,                                                              //[DSP.NET:00028]    M,S_0,S_1,S_2,S_3,OUTPUT;
    output    OUTPUT                                                            //[DSP.NET:00028]    M,S_0,S_1,S_2,S_3,OUTPUT;
    ,output    [13:0] LEFTDAC
    ,output    [13:0] RIGHTDAC
);                                                                              //[DSP.NET:00005] MODULE DSP;
                                                                                //[DSP.NET:00029] LEVEL FUNCTION;
wire DDB_0;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_1;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_2;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_3;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_4;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_5;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_6;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire DDB_7;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire RUN;                                                                       //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire RESETKL;                                                                   //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire PCRDL;                                                                     //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
wire PCWRL;                                                                     //[DSP.NET:00035]    PCWRL,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,HPCWRL);
wire HPCWRL;                                                                    //[DSP.NET:00035]    PCWRL,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,HPCWRL);
wire LEFTDACWRL;                                                                //[DSP.NET:00037] PWMLEFT_(LEFTL,LEFTH) = PWM(LEFTDACWRL,CCLK,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,
wire DDB_8;                                                                     //[DSP.NET:00037] PWMLEFT_(LEFTL,LEFTH) = PWM(LEFTDACWRL,CCLK,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,
wire DDB_9;                                                                     //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire DDB_10;                                                                    //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire DDB_11;                                                                    //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire DDB_12;                                                                    //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire DDB_13;                                                                    //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire DDB_14;                                                                    //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire DDB_15;                                                                    //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);
wire RTDACWRL;                                                                  //[DSP.NET:00040] PWMRIGHT_(RIGHTL,RIGHTH) = PWM(RTDACWRL,CCLK,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,
wire DMA0WRL;                                                                   //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
wire DMA0RDL;                                                                   //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
wire DMA1WRL;                                                                   //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
wire DMA1RDL;                                                                   //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
wire DMDWRL;                                                                    //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
wire DMDRDL;                                                                    //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
wire DWEL;                                                                      //[DSP.NET:00058]    RDL,DWEL,RUN,CCLK,DQCLK);
wire DA_8;                                                                      //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire DAL_4;                                                                     //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire DAL_5;                                                                     //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire DAL_6;                                                                     //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire DAL_8;                                                                     //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire READL;                                                                     //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire WRITEL;                                                                    //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire TRARDL;                                                                    //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
wire IXRDL;                                                                     //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);
wire DAC;                                                                       //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);
wire MZ2RDL;                                                                    //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);
wire MODRDL;                                                                    //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);
wire GPRDL;                                                                     //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);
wire GPWRL;                                                                     //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);
wire REGS;                                                                      //[DSP.NET:00061]    DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT) = DRAM(DD_0,DD_1,DD_2,DD_3,DD_4,
wire ASEL_0;                                                                    //[DSP.NET:00069]    PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,
wire ASEL_1;                                                                    //[DSP.NET:00069]    PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,
wire IXWRL;                                                                     //[DSP.NET:00070]    A_9,CCLK,DQCLK,RESETKL,IXWRL,IXRDL,TRARDL,INTRALDL);
wire INTRALDL;                                                                  //[DSP.NET:00070]    A_9,CCLK,DQCLK,RESETKL,IXWRL,IXRDL,TRARDL,INTRALDL);
wire DAL_0;                                                                     //[DSP.NET:00067]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,
wire DAL_1;                                                                     //[DSP.NET:00067]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,
wire DAL_2;                                                                     //[DSP.NET:00067]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,
wire DAL_3;                                                                     //[DSP.NET:00067]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,
wire RUNANT;                                                                    //[DSP.NET:00078]    RUNANT,CCLK,RESETKL,CARRY,TRURD);
wire CARRY;                                                                     //[DSP.NET:00078]    RUNANT,CCLK,RESETKL,CARRY,TRURD);
wire TRURD;                                                                     //[DSP.NET:00078]    RUNANT,CCLK,RESETKL,CARRY,TRURD);
wire MODWRL;                                                                    //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire XWRL;                                                                      //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire XRDL;                                                                      //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire ZWRL;                                                                      //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire ZRDL;                                                                      //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire RESWRL;                                                                    //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire CARRYWRL;                                                                  //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire MZ0RDL;                                                                    //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire MZ1RDL;                                                                    //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
wire MZ0WRL;                                                                    //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire MZ1WRL;                                                                    //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire MZ2WRL;                                                                    //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire MULTL;                                                                     //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire MACL;                                                                      //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire WITHCYL;                                                                   //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire SUB;                                                                       //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
wire INTRUD;                                                                    //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDK_11;                                                                    //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDK_12;                                                                    //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDK_14;                                                                    //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDKL_11;                                                                   //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDKL_12;                                                                   //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDKL_13;                                                                   //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire PDKL_14;                                                                   //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
wire CCFL;                                                                      //[DSP.NET:00076]    CCFL,DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC) = INSTRUCT(PD_9,PD_10,PD_11,PD_12,
wire RESETK;                                                                    //[DSP.NET:00103] RESETK_(RESETKL,RESETK) = FD2A(RESETL,CCLK,RESETL);
wire IOM;                                                                       //[DSP.NET:00111] IOM_(IOM) = N1A(IOML);
wire drv0_outA_0;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[DSP.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_16;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_17;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_17;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_18;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_18;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_19;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_19;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_0;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_0;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_0;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_0;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_0;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_0;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_1;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_1;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_1;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_1;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_1;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_1;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_2;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_2;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_2;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_2;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_2;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_2;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_3;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_3;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_3;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_3;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_3;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_3;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_4;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_4;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_4;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_4;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_4;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_4;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_5;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_5;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_5;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_5;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_5;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_5;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_6;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_6;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_6;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_6;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_6;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_6;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_7;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_7;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_7;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_7;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_7;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_7;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_8;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_8;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_9;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_9;                                                                //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_10;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_10;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_11;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_11;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_12;                                                              //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_12;                                                               //[DSP.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_13;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enD_13;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outD_14;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enD_14;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outD_15;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enD_15;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_0;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_0;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_0;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_0;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_0;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_0;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_0;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_0;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_0;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_0;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_0;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_0;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_1;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_1;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_1;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_1;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_1;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_1;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_1;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_1;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_1;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_1;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_1;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_1;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_2;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_2;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_2;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_2;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_2;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_2;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_2;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_2;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_2;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_2;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_2;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_2;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_3;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_3;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_3;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_3;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_3;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_3;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_3;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_3;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_3;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_3;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_3;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_3;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_4;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_4;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_4;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_4;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_4;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_4;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_4;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_4;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_4;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_4;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_4;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_4;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_5;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_5;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_5;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_5;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_5;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_5;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_5;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_5;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_5;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_5;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_5;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_5;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_6;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_6;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_6;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_6;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_6;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_6;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_6;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_6;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_6;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_6;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_6;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_6;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_7;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_7;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_7;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_7;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_7;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_7;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_7;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_7;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_7;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_7;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_outDD_7;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv5_enDD_7;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_8;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_8;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_8;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_8;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_8;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_8;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_8;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_8;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_outDD_8;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv4_enDD_8;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_9;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_9;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_9;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_9;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_9;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_9;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_9;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_9;                                                               //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_10;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_10;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_10;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_10;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_10;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_10;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_10;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_10;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_11;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_11;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_11;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_11;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_11;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_11;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_outDD_11;                                                             //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv3_enDD_11;                                                              //[DSP.NET:00019]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_12;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enDD_12;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_outDD_12;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_enDD_12;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_outDD_12;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_enDD_12;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_outDD_12;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_enDD_12;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outDD_13;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enDD_13;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_outDD_13;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_enDD_13;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_outDD_13;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_enDD_13;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_outDD_13;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_enDD_13;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outDD_14;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enDD_14;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_outDD_14;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_enDD_14;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_outDD_14;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_enDD_14;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_outDD_14;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_enDD_14;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outDD_15;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enDD_15;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_outDD_15;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv1_enDD_15;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_outDD_15;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv2_enDD_15;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_outDD_15;                                                             //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv3_enDD_15;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_0;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_0;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_1;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_1;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_2;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_2;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_3;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_3;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_4;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_4;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_5;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_5;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_6;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_6;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_7;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_7;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_8;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_8;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_9;                                                              //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_enPD_9;                                                               //[DSP.NET:00020]    DD_12,DD_13,DD_14,DD_15,PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,
wire drv0_outPD_10;                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_enPD_10;                                                              //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_outPD_11;                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_enPD_11;                                                              //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_outPD_12;                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_enPD_12;                                                              //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_outPD_13;                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_enPD_13;                                                              //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_outPD_14;                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_enPD_14;                                                              //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_outPD_15;                                                             //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,
wire drv0_enPD_15;                                                              //[DSP.NET:00021]    PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DSPBRQL,LEFTL,LEFTH,RIGHTL,RIGHTH,MREQ,


m_PC PC_ (.MasterClock(MasterClock),.DDB_0(DDB_0),.DDB_1(DDB_1),.DDB_2(DDB_2),.DDB_3(DDB_3),.DDB_4(DDB_4),.DDB_5(DDB_5),.DDB_6(DDB_6),.DDB_7(DDB_7),.RUN(RUN),.RESETL(RESETKL),.XCK(CCLK),.PCRDL(PCRDL),.PCWRL(PCWRL),.HA_1(inA_1),.HA_2(inA_2),.HA_3(inA_3),.HA_4(inA_4),.HA_5(inA_5),.HA_6(inA_6),.HA_7(inA_7),.HA_8(inA_8),.HPCWRL(HPCWRL),.outD_0(drv0_outDD_0),.enD_0(drv0_enDD_0),.outD_1(drv0_outDD_1),.enD_1(drv0_enDD_1),.outD_2(drv0_outDD_2),.enD_2(drv0_enDD_2),.outD_3(drv0_outDD_3),.enD_3(drv0_enDD_3),.outD_4(drv0_outDD_4),.enD_4(drv0_enDD_4),.outD_5(drv0_outDD_5),.enD_5(drv0_enDD_5),.outD_6(drv0_outDD_6),.enD_6(drv0_enDD_6),.outD_7(drv0_outDD_7),.enD_7(drv0_enDD_7),.PC_0(PC_0),.PC_1(PC_1),.PC_2(PC_2),.PC_3(PC_3),.PC_4(PC_4),.PC_5(PC_5),.PC_6(PC_6),.PC_7(PC_7));//[DSP.NET:00033] PC_(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
                                                                                //[DSP.NET:00034]    PC_7) = PC(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETKL,CCLK,PCRDL,
                                                                                //[DSP.NET:00035]    PCWRL,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,HPCWRL);

m_PWM PWMLEFT_ (.MasterClock(MasterClock),.DAC(LEFTDAC),.DACWRL(LEFTDACWRL),.XCK(CCLK),.D_2(DDB_2),.D_3(DDB_3),.D_4(DDB_4),.D_5(DDB_5),.D_6(DDB_6),.D_7(DDB_7),.D_8(DDB_8),.D_9(DDB_9),.D_10(DDB_10),.D_11(DDB_11),.D_12(DDB_12),.D_13(DDB_13),.D_14(DDB_14),.D_15(DDB_15),.PW_1(LEFTL),.PW_2(LEFTH));//[DSP.NET:00037] PWMLEFT_(LEFTL,LEFTH) = PWM(LEFTDACWRL,CCLK,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,
                                                                                //[DSP.NET:00038]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);

m_PWM PWMRIGHT_ (.MasterClock(MasterClock),.DAC(RIGHTDAC),.DACWRL(RTDACWRL),.XCK(CCLK),.D_2(DDB_2),.D_3(DDB_3),.D_4(DDB_4),.D_5(DDB_5),.D_6(DDB_6),.D_7(DDB_7),.D_8(DDB_8),.D_9(DDB_9),.D_10(DDB_10),.D_11(DDB_11),.D_12(DDB_12),.D_13(DDB_13),.D_14(DDB_14),.D_15(DDB_15),.PW_1(RIGHTL),.PW_2(RIGHTH));//[DSP.NET:00040] PWMRIGHT_(RIGHTL,RIGHTH) = PWM(RTDACWRL,CCLK,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,
                                                                                //[DSP.NET:00041]    DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15);

m_DMA DMA_ (.MasterClock(MasterClock),.inA_0(inA_0),.inA_1(inA_1),.inA_2(inA_2),.inA_3(inA_3),.inA_4(inA_4),.inA_5(inA_5),.inA_6(inA_6),.inA_7(inA_7),.inA_8(inA_8),.inA_9(inA_9),.inA_10(inA_10),.inA_11(inA_11),.inA_12(inA_12),.inA_13(inA_13),.inA_14(inA_14),.inA_15(inA_15),.inA_16(inA_16),.inA_17(inA_17),.inA_18(inA_18),.inA_19(inA_19),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.inD_8(inD_8),.inD_9(inD_9),.inD_10(inD_10),.inD_11(inD_11),.inD_12(inD_12),.inD_13(inD_13),.inD_14(inD_14),.inD_15(inD_15),.DDB_0(DDB_0),.DDB_1(DDB_1),.DDB_2(DDB_2),.DDB_3(DDB_3),.DDB_4(DDB_4),.DDB_5(DDB_5),.DDB_6(DDB_6),.DDB_7(DDB_7),.DDB_8(DDB_8),.DDB_9(DDB_9),.DDB_10(DDB_10),.DDB_11(DDB_11),.DDB_12(DDB_12),.DDB_13(DDB_13),.DDB_14(DDB_14),.DDB_15(DDB_15),.DMA0WRL(DMA0WRL),.DMA0RDL(DMA0RDL),.DMA1WRL(DMA1WRL),.DMA1RDL(DMA1RDL),.DMDWRL(DMDWRL),.DMDRDL(DMDRDL),.DSPBAKL(DSPBAKL),.WAITL(WAITL),.RUN(RUN),.RESETL(RESETKL),.CLK(CCLK),.DQCLK(DQCLK),.outA_0(drv0_outA_0),.enA_0(drv0_enA_0),.outA_1(drv0_outA_1),.enA_1(drv0_enA_1),.outA_2(drv0_outA_2),.enA_2(drv0_enA_2),.outA_3(drv0_outA_3),.enA_3(drv0_enA_3),.outA_4(drv0_outA_4),.enA_4(drv0_enA_4),.outA_5(drv0_outA_5),.enA_5(drv0_enA_5),.outA_6(drv0_outA_6),.enA_6(drv0_enA_6),.outA_7(drv0_outA_7),.enA_7(drv0_enA_7),.outA_8(drv0_outA_8),.enA_8(drv0_enA_8),.outA_9(drv0_outA_9),.enA_9(drv0_enA_9),.outA_10(drv0_outA_10),.enA_10(drv0_enA_10),.outA_11(drv0_outA_11),.enA_11(drv0_enA_11),.outA_12(drv0_outA_12),.enA_12(drv0_enA_12),.outA_13(drv0_outA_13),.enA_13(drv0_enA_13),.outA_14(drv0_outA_14),.enA_14(drv0_enA_14),.outA_15(drv0_outA_15),.enA_15(drv0_enA_15),.outA_16(drv0_outA_16),.enA_16(drv0_enA_16),.outA_17(drv0_outA_17),.enA_17(drv0_enA_17),.outA_18(drv0_outA_18),.enA_18(drv0_enA_18),.outA_19(drv0_outA_19),.enA_19(drv0_enA_19),.outD_0(drv0_outD_0),.enD_0(drv0_enD_0),.outD_1(drv0_outD_1),.enD_1(drv0_enD_1),.outD_2(drv0_outD_2),.enD_2(drv0_enD_2),.outD_3(drv0_outD_3),.enD_3(drv0_enD_3),.outD_4(drv0_outD_4),.enD_4(drv0_enD_4),.outD_5(drv0_outD_5),.enD_5(drv0_enD_5),.outD_6(drv0_outD_6),.enD_6(drv0_enD_6),.outD_7(drv0_outD_7),.enD_7(drv0_enD_7),.outD_8(drv0_outD_8),.enD_8(drv0_enD_8),.outD_9(drv0_outD_9),.enD_9(drv0_enD_9),.outD_10(drv0_outD_10),.enD_10(drv0_enD_10),.outD_11(drv0_outD_11),.enD_11(drv0_enD_11),.outD_12(drv0_outD_12),.enD_12(drv0_enD_12),.outD_13(drv0_outD_13),.enD_13(drv0_enD_13),.outD_14(drv0_outD_14),.enD_14(drv0_enD_14),.outD_15(drv0_outD_15),.enD_15(drv0_enD_15),.outDD_0(drv1_outDD_0),.enDD_0(drv1_enDD_0),.outDD_1(drv1_outDD_1),.enDD_1(drv1_enDD_1),.outDD_2(drv1_outDD_2),.enDD_2(drv1_enDD_2),.outDD_3(drv1_outDD_3),.enDD_3(drv1_enDD_3),.outDD_4(drv1_outDD_4),.enDD_4(drv1_enDD_4),.outDD_5(drv1_outDD_5),.enDD_5(drv1_enDD_5),.outDD_6(drv1_outDD_6),.enDD_6(drv1_enDD_6),.outDD_7(drv1_outDD_7),.enDD_7(drv1_enDD_7),.outDD_8(drv0_outDD_8),.enDD_8(drv0_enDD_8),.outDD_9(drv0_outDD_9),.enDD_9(drv0_enDD_9),.outDD_10(drv0_outDD_10),.enDD_10(drv0_enDD_10),.outDD_11(drv0_outDD_11),.enDD_11(drv0_enDD_11),.outDD_12(drv0_outDD_12),.enDD_12(drv0_enDD_12),.outDD_13(drv0_outDD_13),.enDD_13(drv0_enDD_13),.outDD_14(drv0_outDD_14),.enDD_14(drv0_enDD_14),.outDD_15(drv0_outDD_15),.enDD_15(drv0_enDD_15),.DSPBRQL(DSPBRQL),.MREQ(MREQ),.RD(RD),.WR(WR),.WORD(WORD));//[DSP.NET:00043] DMA_(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,A_16,
                                                                                //[DSP.NET:00044]    A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,
                                                                                //[DSP.NET:00045]    D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
                                                                                //[DSP.NET:00046]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD) = DMA(A_0,A_1,A_2,A_3,A_4,
                                                                                //[DSP.NET:00047]    A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,A_16,A_17,A_18,A_19,D_0,
                                                                                //[DSP.NET:00048]    D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,DDB_0,DDB_1,
                                                                                //[DSP.NET:00049]    DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
                                                                                //[DSP.NET:00050]    DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,DSPBAKL,WAITL,RUN,RESETKL,
                                                                                //[DSP.NET:00051]    CCLK,DQCLK);


m_PRAM PRAM_ (.MasterClock(MasterClock),.inPD_0(inPD_0),.inPD_1(inPD_1),.inPD_2(inPD_2),.inPD_3(inPD_3),.inPD_4(inPD_4),.inPD_5(inPD_5),.inPD_6(inPD_6),.inPD_7(inPD_7),.inPD_8(inPD_8),.inPD_9(inPD_9),.inPD_10(inPD_10),.inPD_11(inPD_11),.inPD_12(inPD_12),.inPD_13(inPD_13),.inPD_14(inPD_14),.inPD_15(inPD_15),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.A_0(inA_0),.A_9(inA_9),.A_10(inA_10),.DCSL(DCSL),.RDL(RDL),.WRL(DWEL),.RUN(RUN),.CLK(CCLK),.DQCLK(DQCLK),.outPD_0(drv0_outPD_0),.enPD_0(drv0_enPD_0),.outPD_1(drv0_outPD_1),.enPD_1(drv0_enPD_1),.outPD_2(drv0_outPD_2),.enPD_2(drv0_enPD_2),.outPD_3(drv0_outPD_3),.enPD_3(drv0_enPD_3),.outPD_4(drv0_outPD_4),.enPD_4(drv0_enPD_4),.outPD_5(drv0_outPD_5),.enPD_5(drv0_enPD_5),.outPD_6(drv0_outPD_6),.enPD_6(drv0_enPD_6),.outPD_7(drv0_outPD_7),.enPD_7(drv0_enPD_7),.outPD_8(drv0_outPD_8),.enPD_8(drv0_enPD_8),.outPD_9(drv0_outPD_9),.enPD_9(drv0_enPD_9),.outPD_10(drv0_outPD_10),.enPD_10(drv0_enPD_10),.outPD_11(drv0_outPD_11),.enPD_11(drv0_enPD_11),.outPD_12(drv0_outPD_12),.enPD_12(drv0_enPD_12),.outPD_13(drv0_outPD_13),.enPD_13(drv0_enPD_13),.outPD_14(drv0_outPD_14),.enPD_14(drv0_enPD_14),.outPD_15(drv0_outPD_15),.enPD_15(drv0_enPD_15),.outD_0(drv1_outD_0),.enD_0(drv1_enD_0),.outD_1(drv1_outD_1),.enD_1(drv1_enD_1),.outD_2(drv1_outD_2),.enD_2(drv1_enD_2),.outD_3(drv1_outD_3),.enD_3(drv1_enD_3),.outD_4(drv1_outD_4),.enD_4(drv1_enD_4),.outD_5(drv1_outD_5),.enD_5(drv1_enD_5),.outD_6(drv1_outD_6),.enD_6(drv1_enD_6),.outD_7(drv1_outD_7),.enD_7(drv1_enD_7),.HPCWRL(HPCWRL),.PRAMEN(PRAMEN),.PRAMWR(PRAMWR));//[DSP.NET:00054] PRAM_(PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,PD_13,
                                                                                //[DSP.NET:00055]    PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,
                                                                                //[DSP.NET:00056]    PRAMWR) = PRAM(PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,
                                                                                //[DSP.NET:00057]    PD_12,PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,
                                                                                //[DSP.NET:00058]    RDL,DWEL,RUN,CCLK,DQCLK);

m_DRAM DRAM_ (.MasterClock(MasterClock),.inDD_0(inDD_0),.inDD_1(inDD_1),.inDD_2(inDD_2),.inDD_3(inDD_3),.inDD_4(inDD_4),.inDD_5(inDD_5),.inDD_6(inDD_6),.inDD_7(inDD_7),.inDD_8(inDD_8),.inDD_9(inDD_9),.inDD_10(inDD_10),.inDD_11(inDD_11),.inDD_12(inDD_12),.inDD_13(inDD_13),.inDD_14(inDD_14),.inDD_15(inDD_15),.DA_0(DA_0),.DA_1(DA_1),.DA_2(DA_2),.DA_3(DA_3),.DA_4(DA_4),.DA_5(DA_5),.DA_6(DA_6),.DA_7(DA_7),.DA_8(DA_8),.DAL_4(DAL_4),.DAL_5(DAL_5),.DAL_6(DAL_6),.DAL_8(DAL_8),.READL(READL),.WRITEL(WRITEL),.TRARDL(TRARDL),.IXRDL(IXRDL),.DAC(DAC),.DMA1RDL(DMA1RDL),.MZ2RDL(MZ2RDL),.PCRDL(PCRDL),.MODRDL(MODRDL),.GPRDL(GPRDL),.GPWRL(GPWRL),.RESETL(RESETKL),.CLK(CCLK),.DQCLK(DQCLK),.INPUT(INPUT),.outDD_0(drv2_outDD_0),.enDD_0(drv2_enDD_0),.outDD_1(drv2_outDD_1),.enDD_1(drv2_enDD_1),.outDD_2(drv2_outDD_2),.enDD_2(drv2_enDD_2),.outDD_3(drv2_outDD_3),.enDD_3(drv2_enDD_3),.outDD_4(drv2_outDD_4),.enDD_4(drv2_enDD_4),.outDD_5(drv2_outDD_5),.enDD_5(drv2_enDD_5),.outDD_6(drv2_outDD_6),.enDD_6(drv2_enDD_6),.outDD_7(drv2_outDD_7),.enDD_7(drv2_enDD_7),.outDD_8(drv1_outDD_8),.enDD_8(drv1_enDD_8),.outDD_9(drv1_outDD_9),.enDD_9(drv1_enDD_9),.outDD_10(drv1_outDD_10),.enDD_10(drv1_enDD_10),.outDD_11(drv1_outDD_11),.enDD_11(drv1_enDD_11),.outDD_12(drv1_outDD_12),.enDD_12(drv1_enDD_12),.outDD_13(drv1_outDD_13),.enDD_13(drv1_enDD_13),.outDD_14(drv1_outDD_14),.enDD_14(drv1_enDD_14),.outDD_15(drv1_outDD_15),.enDD_15(drv1_enDD_15),.REGS(REGS),.DRAMEN(DRAMEN),.DRAMWR(DRAMWR),.ROMEN(ROMEN),.OUTPUT(OUTPUT));//[DSP.NET:00060] DRAM_(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,DD_13,
                                                                                //[DSP.NET:00061]    DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT) = DRAM(DD_0,DD_1,DD_2,DD_3,DD_4,
                                                                                //[DSP.NET:00062]    DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,
                                                                                //[DSP.NET:00063]    DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,DAL_6,DAL_8,READL,WRITEL,TRARDL,
                                                                                //[DSP.NET:00064]    IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,GPWRL,RESETKL,CCLK,DQCLK,INPUT);

m_ADDRESS ADDRESS_ (.MasterClock(MasterClock),.DDB_0(DDB_0),.DDB_1(DDB_1),.DDB_2(DDB_2),.DDB_3(DDB_3),.DDB_4(DDB_4),.DDB_5(DDB_5),.DDB_6(DDB_6),.DDB_7(DDB_7),.DDB_8(DDB_8),.PD_0(inPD_0),.PD_1(inPD_1),.PD_2(inPD_2),.PD_3(inPD_3),.PD_4(inPD_4),.PD_5(inPD_5),.PD_6(inPD_6),.PD_7(inPD_7),.PD_8(inPD_8),.ASEL_0(ASEL_0),.ASEL_1(ASEL_1),.A_1(inA_1),.A_2(inA_2),.A_3(inA_3),.A_4(inA_4),.A_5(inA_5),.A_6(inA_6),.A_7(inA_7),.A_8(inA_8),.A_9(inA_9),.CLK(CCLK),.DQCLK(DQCLK),.RESETL(RESETKL),.IXWRL(IXWRL),.IXRDL(IXRDL),.TRARDL(TRARDL),.INTRALDL(INTRALDL),.outDD_0(drv3_outDD_0),.enDD_0(drv3_enDD_0),.outDD_1(drv3_outDD_1),.enDD_1(drv3_enDD_1),.outDD_2(drv3_outDD_2),.enDD_2(drv3_enDD_2),.outDD_3(drv3_outDD_3),.enDD_3(drv3_enDD_3),.outDD_4(drv3_outDD_4),.enDD_4(drv3_enDD_4),.outDD_5(drv3_outDD_5),.enDD_5(drv3_enDD_5),.outDD_6(drv3_outDD_6),.enDD_6(drv3_enDD_6),.outDD_7(drv3_outDD_7),.enDD_7(drv3_enDD_7),.outDD_8(drv2_outDD_8),.enDD_8(drv2_enDD_8),.DA_0(DA_0),.DA_1(DA_1),.DA_2(DA_2),.DA_3(DA_3),.DA_4(DA_4),.DA_5(DA_5),.DA_6(DA_6),.DA_7(DA_7),.DA_8(DA_8),.DAL_0(DAL_0),.DAL_1(DAL_1),.DAL_2(DAL_2),.DAL_3(DAL_3),.DAL_4(DAL_4),.DAL_5(DAL_5),.DAL_6(DAL_6),.DAL_8(DAL_8));//[DSP.NET:00066] ADDRESS_(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
                                                                                //[DSP.NET:00067]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,
                                                                                //[DSP.NET:00068]    DAL_8) = ADDRESS(DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,
                                                                                //[DSP.NET:00069]    PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,
                                                                                //[DSP.NET:00070]    A_9,CCLK,DQCLK,RESETKL,IXWRL,IXRDL,TRARDL,INTRALDL);

m_INSTRUCT INSTRUCT_ (.MasterClock(MasterClock),.PD_9(inPD_9),.PD_10(inPD_10),.PD_11(inPD_11),.PD_12(inPD_12),.PD_13(inPD_13),.PD_14(inPD_14),.PD_15(inPD_15),.DA_0(DA_0),.DA_1(DA_1),.DA_2(DA_2),.DA_3(DA_3),.DAL_0(DAL_0),.DAL_1(DAL_1),.DAL_2(DAL_2),.DAL_3(DAL_3),.REGS(REGS),.RUN(RUN),.RUNANT(RUNANT),.XCK(CCLK),.RESETL(RESETKL),.CARRY(CARRY),.TRURD(TRURD),.PCRDL(PCRDL),.PCWRL(PCWRL),.LEFTDACWRL(LEFTDACWRL),.RTDACWRL(RTDACWRL),.ASEL_0(ASEL_0),.ASEL_1(ASEL_1),.IXWRL(IXWRL),.IXRDL(IXRDL),.TRARDL(TRARDL),.MODWRL(MODWRL),.MODRDL(MODRDL),.XWRL(XWRL),.XRDL(XRDL),.ZWRL(ZWRL),.ZRDL(ZRDL),.RESWRL(RESWRL),.CARRYWRL(CARRYWRL),.MZ0RDL(MZ0RDL),.MZ1RDL(MZ1RDL),.MZ2RDL(MZ2RDL),.MZ0WRL(MZ0WRL),.MZ1WRL(MZ1WRL),.MZ2WRL(MZ2WRL),.MULTL(MULTL),.MACL(MACL),.WITHCYL(WITHCYL),.SUB(SUB),.DMA0WRL(DMA0WRL),.DMA1WRL(DMA1WRL),.DMDWRL(DMDWRL),.DMDRDL(DMDRDL),.INTRUD(INTRUD),.PDK_11(PDK_11),.PDK_12(PDK_12),.PDK_14(PDK_14),.PDKL_11(PDKL_11),.PDKL_12(PDKL_12),.PDKL_13(PDKL_13),.PDKL_14(PDKL_14),.READL(READL),.WRITEL(WRITEL),.CCFL(CCFL),.DMA0RDL(DMA0RDL),.DMA1RDL(DMA1RDL),.GPRDL(GPRDL),.GPWRL(GPWRL),.DAC(DAC));//[DSP.NET:00072] INSTRUCT_(PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,
                                                                                //[DSP.NET:00073]    MODWRL,MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,
                                                                                //[DSP.NET:00074]    MZ0WRL,MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,
                                                                                //[DSP.NET:00075]    INTRUD,PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,
                                                                                //[DSP.NET:00076]    CCFL,DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC) = INSTRUCT(PD_9,PD_10,PD_11,PD_12,
                                                                                //[DSP.NET:00077]    PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,DAL_2,DAL_3,REGS,RUN,
                                                                                //[DSP.NET:00078]    RUNANT,CCLK,RESETKL,CARRY,TRURD);

m_ALU ALU_ (.MasterClock(MasterClock),.DDB_0(DDB_0),.DDB_1(DDB_1),.DDB_2(DDB_2),.DDB_3(DDB_3),.DDB_4(DDB_4),.DDB_5(DDB_5),.DDB_6(DDB_6),.DDB_7(DDB_7),.DDB_8(DDB_8),.DDB_9(DDB_9),.DDB_10(DDB_10),.DDB_11(DDB_11),.DDB_12(DDB_12),.DDB_13(DDB_13),.DDB_14(DDB_14),.DDB_15(DDB_15),.XWRL(XWRL),.XRDL(XRDL),.ZWRL(ZWRL),.ZRDL(ZRDL),.RESWRL(RESWRL),.CARRYWRL(CARRYWRL),.MZ0RDL(MZ0RDL),.MZ1RDL(MZ1RDL),.MZ2RDL(MZ2RDL),.MZ0WRL(MZ0WRL),.MZ1WRL(MZ1WRL),.MZ2WRL(MZ2WRL),.MODWRL(MODWRL),.MODRDL(MODRDL),.MULTL(MULTL),.MACL(MACL),.WITHCYL(WITHCYL),.SUB(SUB),.PDK_11(PDK_11),.PDK_12(PDK_12),.PDK_14(PDK_14),.PDKL_11(PDKL_11),.PDKL_12(PDKL_12),.PDKL_13(PDKL_13),.PDKL_14(PDKL_14),.CCFL(CCFL),.CLK(CCLK),.RESETL(RESETKL),.MZ_0(MZ_0),.MZ_1(MZ_1),.MZ_2(MZ_2),.MZ_3(MZ_3),.MZ_4(MZ_4),.MZ_5(MZ_5),.MZ_6(MZ_6),.MZ_7(MZ_7),.MZ_8(MZ_8),.MZ_9(MZ_9),.MZ_10(MZ_10),.MZ_11(MZ_11),.MZ_12(MZ_12),.MZ_13(MZ_13),.MZ_14(MZ_14),.MZ_15(MZ_15),.MZ_16(MZ_16),.MZ_17(MZ_17),.MZ_18(MZ_18),.MZ_19(MZ_19),.MZ_20(MZ_20),.MZ_21(MZ_21),.MZ_22(MZ_22),.MZ_23(MZ_23),.MZ_24(MZ_24),.MZ_25(MZ_25),.MZ_26(MZ_26),.MZ_27(MZ_27),.MZ_28(MZ_28),.MZ_29(MZ_29),.MZ_30(MZ_30),.MZ_31(MZ_31),.MZ_32(MZ_32),.MZ_33(MZ_33),.MZ_34(MZ_34),.MZ_35(MZ_35),.MZ_36(MZ_36),.AZ_0(AZ_0),.AZ_1(AZ_1),.AZ_2(AZ_2),.AZ_3(AZ_3),.AZ_4(AZ_4),.AZ_5(AZ_5),.AZ_6(AZ_6),.AZ_7(AZ_7),.AZ_8(AZ_8),.AZ_9(AZ_9),.AZ_10(AZ_10),.AZ_11(AZ_11),.AZ_12(AZ_12),.AZ_13(AZ_13),.AZ_14(AZ_14),.AZ_15(AZ_15),.COUTL(COUTL),.DQCLK(DQCLK),.outD_0(drv4_outDD_0),.enD_0(drv4_enDD_0),.outD_1(drv4_outDD_1),.enD_1(drv4_enDD_1),.outD_2(drv4_outDD_2),.enD_2(drv4_enDD_2),.outD_3(drv4_outDD_3),.enD_3(drv4_enDD_3),.outD_4(drv4_outDD_4),.enD_4(drv4_enDD_4),.outD_5(drv4_outDD_5),.enD_5(drv4_enDD_5),.outD_6(drv4_outDD_6),.enD_6(drv4_enDD_6),.outD_7(drv4_outDD_7),.enD_7(drv4_enDD_7),.outD_8(drv3_outDD_8),.enD_8(drv3_enDD_8),.outD_9(drv2_outDD_9),.enD_9(drv2_enDD_9),.outD_10(drv2_outDD_10),.enD_10(drv2_enDD_10),.outD_11(drv2_outDD_11),.enD_11(drv2_enDD_11),.outD_12(drv2_outDD_12),.enD_12(drv2_enDD_12),.outD_13(drv2_outDD_13),.enD_13(drv2_enDD_13),.outD_14(drv2_outDD_14),.enD_14(drv2_enDD_14),.outD_15(drv2_outDD_15),.enD_15(drv2_enDD_15),.CARRY(CARRY),.X_0(X_0),.X_1(X_1),.X_2(X_2),.X_3(X_3),.X_4(X_4),.X_5(X_5),.X_6(X_6),.X_7(X_7),.X_8(X_8),.X_9(X_9),.X_10(X_10),.X_11(X_11),.X_12(X_12),.X_13(X_13),.X_14(X_14),.X_15(X_15),.ACC_0(ACC_0),.ACC_1(ACC_1),.ACC_2(ACC_2),.ACC_3(ACC_3),.ACC_4(ACC_4),.ACC_5(ACC_5),.ACC_6(ACC_6),.ACC_7(ACC_7),.ACC_8(ACC_8),.ACC_9(ACC_9),.ACC_10(ACC_10),.ACC_11(ACC_11),.ACC_12(ACC_12),.ACC_13(ACC_13),.ACC_14(ACC_14),.ACC_15(ACC_15),.ACC_16(ACC_16),.ACC_17(ACC_17),.ACC_18(ACC_18),.ACC_19(ACC_19),.ACC_20(ACC_20),.ACC_21(ACC_21),.ACC_22(ACC_22),.ACC_23(ACC_23),.ACC_24(ACC_24),.ACC_25(ACC_25),.ACC_26(ACC_26),.ACC_27(ACC_27),.ACC_28(ACC_28),.ACC_29(ACC_29),.ACC_30(ACC_30),.ACC_31(ACC_31),.ACC_32(ACC_32),.ACC_33(ACC_33),.ACC_34(ACC_34),.ACC_35(ACC_35),.MOD_5(TCX),.MOD_6(TCY),.CINL(CINL),.M_3(M),.S_0(S_0),.S_1(S_1),.S_2(S_2),.S_3(S_3));//[DSP.NET:00080] ALU_(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,DD_13,
                                                                                //[DSP.NET:00081]    DD_14,DD_15,CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,
                                                                                //[DSP.NET:00082]    X_13,X_14,X_15,ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,
                                                                                //[DSP.NET:00083]    ACC_10,ACC_11,ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,
                                                                                //[DSP.NET:00084]    ACC_21,ACC_22,ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,
                                                                                //[DSP.NET:00085]    ACC_32,ACC_33,ACC_34,ACC_35,TCX,TCY,CINL,M,S_0,S_1,S_2,S_3) = ALU(DDB_0,DDB_1,
                                                                                //[DSP.NET:00086]    DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
                                                                                //[DSP.NET:00087]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
                                                                                //[DSP.NET:00088]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
                                                                                //[DSP.NET:00089]    PDKL_12,PDKL_13,PDKL_14,CCFL,CCLK,RESETKL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
                                                                                //[DSP.NET:00090]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
                                                                                //[DSP.NET:00091]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
                                                                                //[DSP.NET:00092]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
                                                                                //[DSP.NET:00093]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK);

m_INTRUDE INTRUDE_ (.MasterClock(MasterClock),.inHD_0(inD_0),.inHD_1(inD_1),.inHD_2(inD_2),.inHD_3(inD_3),.inHD_4(inD_4),.inHD_5(inD_5),.inHD_6(inD_6),.inHD_7(inD_7),.DDB_0(DDB_0),.DDB_1(DDB_1),.DDB_2(DDB_2),.DDB_3(DDB_3),.DDB_4(DDB_4),.DDB_5(DDB_5),.DDB_6(DDB_6),.DDB_7(DDB_7),.DDB_8(DDB_8),.DDB_9(DDB_9),.DDB_10(DDB_10),.DDB_11(DDB_11),.DDB_12(DDB_12),.DDB_13(DDB_13),.DDB_14(DDB_14),.DDB_15(DDB_15),.HA_0(inA_0),.HA_9(inA_9),.HA_10(inA_10),.DCSL(DCSL),.RDL(RDL),.WRL(DWEL),.INTRUD(INTRUD),.CLK(CCLK),.DQCLK(DQCLK),.RESETL(RESETKL),.outHD_0(drv2_outD_0),.enHD_0(drv2_enD_0),.outHD_1(drv2_outD_1),.enHD_1(drv2_enD_1),.outHD_2(drv2_outD_2),.enHD_2(drv2_enD_2),.outHD_3(drv2_outD_3),.enHD_3(drv2_enD_3),.outHD_4(drv2_outD_4),.enHD_4(drv2_enD_4),.outHD_5(drv2_outD_5),.enHD_5(drv2_enD_5),.outHD_6(drv2_outD_6),.enHD_6(drv2_enD_6),.outHD_7(drv2_outD_7),.enHD_7(drv2_enD_7),.outD_0(drv5_outDD_0),.enD_0(drv5_enDD_0),.outD_1(drv5_outDD_1),.enD_1(drv5_enDD_1),.outD_2(drv5_outDD_2),.enD_2(drv5_enDD_2),.outD_3(drv5_outDD_3),.enD_3(drv5_enDD_3),.outD_4(drv5_outDD_4),.enD_4(drv5_enDD_4),.outD_5(drv5_outDD_5),.enD_5(drv5_enDD_5),.outD_6(drv5_outDD_6),.enD_6(drv5_enDD_6),.outD_7(drv5_outDD_7),.enD_7(drv5_enDD_7),.outD_8(drv4_outDD_8),.enD_8(drv4_enDD_8),.outD_9(drv3_outDD_9),.enD_9(drv3_enDD_9),.outD_10(drv3_outDD_10),.enD_10(drv3_enDD_10),.outD_11(drv3_outDD_11),.enD_11(drv3_enDD_11),.outD_12(drv3_outDD_12),.enD_12(drv3_enDD_12),.outD_13(drv3_outDD_13),.enD_13(drv3_enDD_13),.outD_14(drv3_outDD_14),.enD_14(drv3_enDD_14),.outD_15(drv3_outDD_15),.enD_15(drv3_enDD_15),.RUN(RUN),.RUNANT(RUNANT),.TRURD(TRURD),.INTRALDL(INTRALDL));//[DSP.NET:00095] INTRUDE_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,
                                                                                //[DSP.NET:00096]    DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,DD_13,DD_14,DD_15,RUN,RUNANT,TRURD,
                                                                                //[DSP.NET:00097]    INTRALDL) = INTRUDE(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,
                                                                                //[DSP.NET:00098]    DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,A_0,A_9,A_10,
                                                                                //[DSP.NET:00099]    DCSL,RDL,DWEL,INTRUD,CCLK,DQCLK,RESETKL);

/* Synchronise reset to keep defined coming out of reset */

FD2A RESETK__inst (.MasterClock(MasterClock),.q(RESETKL),.qL(RESETK),.d(RESETL),.clk(CCLK),.rL(RESETL));//[DSP.NET:00103] RESETK_(RESETKL,RESETK) = FD2A(RESETL,CCLK,RESETL);



assign DWEL = ~DWE;                                                             //[DSP.NET:00107] WRITE1_(DWEL) = B1A(DWE);

/* This isn't necessary and LSI logic will rub it out anyway, but it keeps
	Qudos happy and I don't have to change anyone else's logic */
assign IOM = ~IOML;                                                             //[DSP.NET:00111] IOM_(IOM) = N1A(IOML);

assign DDB_0 = inDD_0;                                                          //[DSP.NET:00113] DDB_0_(DDB_0) = B3A(DD_0);
assign DDB_1 = inDD_1;                                                          //[DSP.NET:00114] DDB_1_(DDB_1) = B3A(DD_1);
assign DDB_2 = inDD_2;                                                          //[DSP.NET:00115] DDB_2_(DDB_2) = B3A(DD_2);
assign DDB_3 = inDD_3;                                                          //[DSP.NET:00116] DDB_3_(DDB_3) = B3A(DD_3);
assign DDB_4 = inDD_4;                                                          //[DSP.NET:00117] DDB_4_(DDB_4) = B3A(DD_4);
assign DDB_5 = inDD_5;                                                          //[DSP.NET:00118] DDB_5_(DDB_5) = B3A(DD_5);
assign DDB_6 = inDD_6;                                                          //[DSP.NET:00119] DDB_6_(DDB_6) = B3A(DD_6);
assign DDB_7 = inDD_7;                                                          //[DSP.NET:00120] DDB_7_(DDB_7) = B3A(DD_7);
assign DDB_8 = inDD_8;                                                          //[DSP.NET:00121] DDB_8_(DDB_8) = B3A(DD_8);
assign DDB_9 = inDD_9;                                                          //[DSP.NET:00122] DDB_9_(DDB_9) = B3A(DD_9);
assign DDB_10 = inDD_10;                                                        //[DSP.NET:00123] DDB_10_(DDB_10) = B3A(DD_10);
assign DDB_11 = inDD_11;                                                        //[DSP.NET:00124] DDB_11_(DDB_11) = B3A(DD_11);
assign DDB_12 = inDD_12;                                                        //[DSP.NET:00125] DDB_12_(DDB_12) = B3A(DD_12);
assign DDB_13 = inDD_13;                                                        //[DSP.NET:00126] DDB_13_(DDB_13) = B3A(DD_13);
assign DDB_14 = inDD_14;                                                        //[DSP.NET:00127] DDB_14_(DDB_14) = B3A(DD_14);
assign DDB_15 = inDD_15;                                                        //[DSP.NET:00128] DDB_15_(DDB_15) = B3A(DD_15);

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
assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0) | (drv2_outD_0 & drv2_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0 | drv2_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1) | (drv2_outD_1 & drv2_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1 | drv2_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2) | (drv2_outD_2 & drv2_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2 | drv2_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3) | (drv2_outD_3 & drv2_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3 | drv2_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4) | (drv2_outD_4 & drv2_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4 | drv2_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5) | (drv2_outD_5 & drv2_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5 | drv2_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6) | (drv2_outD_6 & drv2_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6 | drv2_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7) | (drv2_outD_7 & drv2_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7 | drv2_enD_7;
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
assign outDD_0 = (drv0_outDD_0 & drv0_enDD_0) | (drv1_outDD_0 & drv1_enDD_0) | (drv2_outDD_0 & drv2_enDD_0) | (drv3_outDD_0 & drv3_enDD_0) | (drv4_outDD_0 & drv4_enDD_0) | (drv5_outDD_0 & drv5_enDD_0);
assign enDD_0 = drv0_enDD_0 | drv1_enDD_0 | drv2_enDD_0 | drv3_enDD_0 | drv4_enDD_0 | drv5_enDD_0;
assign outDD_1 = (drv0_outDD_1 & drv0_enDD_1) | (drv1_outDD_1 & drv1_enDD_1) | (drv2_outDD_1 & drv2_enDD_1) | (drv3_outDD_1 & drv3_enDD_1) | (drv4_outDD_1 & drv4_enDD_1) | (drv5_outDD_1 & drv5_enDD_1);
assign enDD_1 = drv0_enDD_1 | drv1_enDD_1 | drv2_enDD_1 | drv3_enDD_1 | drv4_enDD_1 | drv5_enDD_1;
assign outDD_2 = (drv0_outDD_2 & drv0_enDD_2) | (drv1_outDD_2 & drv1_enDD_2) | (drv2_outDD_2 & drv2_enDD_2) | (drv3_outDD_2 & drv3_enDD_2) | (drv4_outDD_2 & drv4_enDD_2) | (drv5_outDD_2 & drv5_enDD_2);
assign enDD_2 = drv0_enDD_2 | drv1_enDD_2 | drv2_enDD_2 | drv3_enDD_2 | drv4_enDD_2 | drv5_enDD_2;
assign outDD_3 = (drv0_outDD_3 & drv0_enDD_3) | (drv1_outDD_3 & drv1_enDD_3) | (drv2_outDD_3 & drv2_enDD_3) | (drv3_outDD_3 & drv3_enDD_3) | (drv4_outDD_3 & drv4_enDD_3) | (drv5_outDD_3 & drv5_enDD_3);
assign enDD_3 = drv0_enDD_3 | drv1_enDD_3 | drv2_enDD_3 | drv3_enDD_3 | drv4_enDD_3 | drv5_enDD_3;
assign outDD_4 = (drv0_outDD_4 & drv0_enDD_4) | (drv1_outDD_4 & drv1_enDD_4) | (drv2_outDD_4 & drv2_enDD_4) | (drv3_outDD_4 & drv3_enDD_4) | (drv4_outDD_4 & drv4_enDD_4) | (drv5_outDD_4 & drv5_enDD_4);
assign enDD_4 = drv0_enDD_4 | drv1_enDD_4 | drv2_enDD_4 | drv3_enDD_4 | drv4_enDD_4 | drv5_enDD_4;
assign outDD_5 = (drv0_outDD_5 & drv0_enDD_5) | (drv1_outDD_5 & drv1_enDD_5) | (drv2_outDD_5 & drv2_enDD_5) | (drv3_outDD_5 & drv3_enDD_5) | (drv4_outDD_5 & drv4_enDD_5) | (drv5_outDD_5 & drv5_enDD_5);
assign enDD_5 = drv0_enDD_5 | drv1_enDD_5 | drv2_enDD_5 | drv3_enDD_5 | drv4_enDD_5 | drv5_enDD_5;
assign outDD_6 = (drv0_outDD_6 & drv0_enDD_6) | (drv1_outDD_6 & drv1_enDD_6) | (drv2_outDD_6 & drv2_enDD_6) | (drv3_outDD_6 & drv3_enDD_6) | (drv4_outDD_6 & drv4_enDD_6) | (drv5_outDD_6 & drv5_enDD_6);
assign enDD_6 = drv0_enDD_6 | drv1_enDD_6 | drv2_enDD_6 | drv3_enDD_6 | drv4_enDD_6 | drv5_enDD_6;
assign outDD_7 = (drv0_outDD_7 & drv0_enDD_7) | (drv1_outDD_7 & drv1_enDD_7) | (drv2_outDD_7 & drv2_enDD_7) | (drv3_outDD_7 & drv3_enDD_7) | (drv4_outDD_7 & drv4_enDD_7) | (drv5_outDD_7 & drv5_enDD_7);
assign enDD_7 = drv0_enDD_7 | drv1_enDD_7 | drv2_enDD_7 | drv3_enDD_7 | drv4_enDD_7 | drv5_enDD_7;
assign outDD_8 = (drv0_outDD_8 & drv0_enDD_8) | (drv1_outDD_8 & drv1_enDD_8) | (drv2_outDD_8 & drv2_enDD_8) | (drv3_outDD_8 & drv3_enDD_8) | (drv4_outDD_8 & drv4_enDD_8);
assign enDD_8 = drv0_enDD_8 | drv1_enDD_8 | drv2_enDD_8 | drv3_enDD_8 | drv4_enDD_8;
assign outDD_9 = (drv0_outDD_9 & drv0_enDD_9) | (drv1_outDD_9 & drv1_enDD_9) | (drv2_outDD_9 & drv2_enDD_9) | (drv3_outDD_9 & drv3_enDD_9);
assign enDD_9 = drv0_enDD_9 | drv1_enDD_9 | drv2_enDD_9 | drv3_enDD_9;
assign outDD_10 = (drv0_outDD_10 & drv0_enDD_10) | (drv1_outDD_10 & drv1_enDD_10) | (drv2_outDD_10 & drv2_enDD_10) | (drv3_outDD_10 & drv3_enDD_10);
assign enDD_10 = drv0_enDD_10 | drv1_enDD_10 | drv2_enDD_10 | drv3_enDD_10;
assign outDD_11 = (drv0_outDD_11 & drv0_enDD_11) | (drv1_outDD_11 & drv1_enDD_11) | (drv2_outDD_11 & drv2_enDD_11) | (drv3_outDD_11 & drv3_enDD_11);
assign enDD_11 = drv0_enDD_11 | drv1_enDD_11 | drv2_enDD_11 | drv3_enDD_11;
assign outDD_12 = (drv0_outDD_12 & drv0_enDD_12) | (drv1_outDD_12 & drv1_enDD_12) | (drv2_outDD_12 & drv2_enDD_12) | (drv3_outDD_12 & drv3_enDD_12);
assign enDD_12 = drv0_enDD_12 | drv1_enDD_12 | drv2_enDD_12 | drv3_enDD_12;
assign outDD_13 = (drv0_outDD_13 & drv0_enDD_13) | (drv1_outDD_13 & drv1_enDD_13) | (drv2_outDD_13 & drv2_enDD_13) | (drv3_outDD_13 & drv3_enDD_13);
assign enDD_13 = drv0_enDD_13 | drv1_enDD_13 | drv2_enDD_13 | drv3_enDD_13;
assign outDD_14 = (drv0_outDD_14 & drv0_enDD_14) | (drv1_outDD_14 & drv1_enDD_14) | (drv2_outDD_14 & drv2_enDD_14) | (drv3_outDD_14 & drv3_enDD_14);
assign enDD_14 = drv0_enDD_14 | drv1_enDD_14 | drv2_enDD_14 | drv3_enDD_14;
assign outDD_15 = (drv0_outDD_15 & drv0_enDD_15) | (drv1_outDD_15 & drv1_enDD_15) | (drv2_outDD_15 & drv2_enDD_15) | (drv3_outDD_15 & drv3_enDD_15);
assign enDD_15 = drv0_enDD_15 | drv1_enDD_15 | drv2_enDD_15 | drv3_enDD_15;
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
endmodule                                                                       //[DSP.NET:00130] END MODULE;
