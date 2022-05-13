                                                                                //[DMA.NET:00001] COMPILE;
                                                                                //[DMA.NET:00002] DIRECTORY MASTER;

module m_DMA                                                                    //[DMA.NET:00004] MODULE DMA;
(                                                                               //[DMA.NET:00004] MODULE DMA;

    input    MasterClock,
    input    inA_0,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[DMA.NET:00006] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_17,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_18,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_19,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_0,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_1,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_2,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_3,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_4,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_5,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_6,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_7,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_8,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_9,                                                             //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_10,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_11,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_12,                                                            //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_13,                                                            //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    inD_14,                                                            //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    inD_15,                                                            //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_0,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_1,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_2,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_3,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_4,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_5,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_6,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_7,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_8,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_9,                                                             //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_10,                                                            //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_11,                                                            //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
    input    DDB_12,                                                            //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DDB_13,                                                            //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DDB_14,                                                            //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DDB_15,                                                            //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DMA0WRL,                                                           //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DMA0RDL,                                                           //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DMA1WRL,                                                           //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DMA1RDL,                                                           //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DMDWRL,                                                            //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DMDRDL,                                                            //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
    input    DSPBAKL,                                                           //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
    input    WAITL,                                                             //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
    input    RUN,                                                               //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
    input    RESETL,                                                            //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
    input    CLK,                                                               //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
    input    DQCLK,                                                             //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
                                                                                //[DMA.NET:00007]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
                                                                                //[DMA.NET:00008]    D_13,D_14,D_15,DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,
                                                                                //[DMA.NET:00009]    DDB_12,DDB_13,DDB_14,DDB_15,DMA0WRL,DMA0RDL,DMA1WRL,DMA1RDL,DMDWRL,DMDRDL,
                                                                                //[DMA.NET:00010]    DSPBAKL,WAITL,RUN,RESETL,CLK,DQCLK;
    output    outA_0, enA_0,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_17, enA_17,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_18, enA_18,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_19, enA_19,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_0, enD_0,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_1, enD_1,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_2, enD_2,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_3, enD_3,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_4, enD_4,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_5, enD_5,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_6, enD_6,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_7, enD_7,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_8, enD_8,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_9, enD_9,                                                    //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_10, enD_10,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_11, enD_11,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_12, enD_12,                                                  //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_13, enD_13,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outD_14, enD_14,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outD_15, enD_15,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_0, enDD_0,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_1, enDD_1,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_2, enDD_2,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_3, enDD_3,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_4, enDD_4,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_5, enDD_5,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_6, enDD_6,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_7, enDD_7,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_8, enDD_8,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_9, enDD_9,                                                  //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_10, enDD_10,                                                //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_11, enDD_11,                                                //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
    output    outDD_12, enDD_12,                                                //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    outDD_13, enDD_13,                                                //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    outDD_14, enDD_14,                                                //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    outDD_15, enDD_15,                                                //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    DSPBRQL,                                                          //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    MREQ,                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    RD,                                                               //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    WR,                                                               //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
    output    WORD                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
);                                                                              //[DMA.NET:00004] MODULE DMA;
                                                                                //[DMA.NET:00015] LEVEL FUNCTION;
wire DIN_0;                                                                     //[DMA.NET:00020] DMD_0_(DMD_0,DMDL_0) = LD1A(DIN_0,DMLD_0);
wire DMLD_0;                                                                    //[DMA.NET:00020] DMD_0_(DMD_0,DMDL_0) = LD1A(DIN_0,DMLD_0);
wire DMD_0;                                                                     //[DMA.NET:00020] DMD_0_(DMD_0,DMDL_0) = LD1A(DIN_0,DMLD_0);
wire DMDL_0;                                                                    //[DMA.NET:00020] DMD_0_(DMD_0,DMDL_0) = LD1A(DIN_0,DMLD_0);
wire DIN_1;                                                                     //[DMA.NET:00021] DMD_1_(DMD_1,DMDL_1) = LD1A(DIN_1,DMLD_0);
wire DMD_1;                                                                     //[DMA.NET:00021] DMD_1_(DMD_1,DMDL_1) = LD1A(DIN_1,DMLD_0);
wire DMDL_1;                                                                    //[DMA.NET:00021] DMD_1_(DMD_1,DMDL_1) = LD1A(DIN_1,DMLD_0);
wire DIN_2;                                                                     //[DMA.NET:00022] DMD_2_(DMD_2,DMDL_2) = LD1A(DIN_2,DMLD_0);
wire DMD_2;                                                                     //[DMA.NET:00022] DMD_2_(DMD_2,DMDL_2) = LD1A(DIN_2,DMLD_0);
wire DMDL_2;                                                                    //[DMA.NET:00022] DMD_2_(DMD_2,DMDL_2) = LD1A(DIN_2,DMLD_0);
wire DIN_3;                                                                     //[DMA.NET:00023] DMD_3_(DMD_3,DMDL_3) = LD1A(DIN_3,DMLD_0);
wire DMD_3;                                                                     //[DMA.NET:00023] DMD_3_(DMD_3,DMDL_3) = LD1A(DIN_3,DMLD_0);
wire DMDL_3;                                                                    //[DMA.NET:00023] DMD_3_(DMD_3,DMDL_3) = LD1A(DIN_3,DMLD_0);
wire DIN_4;                                                                     //[DMA.NET:00024] DMD_4_(DMD_4,DMDL_4) = LD1A(DIN_4,DMLD_0);
wire DMD_4;                                                                     //[DMA.NET:00024] DMD_4_(DMD_4,DMDL_4) = LD1A(DIN_4,DMLD_0);
wire DMDL_4;                                                                    //[DMA.NET:00024] DMD_4_(DMD_4,DMDL_4) = LD1A(DIN_4,DMLD_0);
wire DIN_5;                                                                     //[DMA.NET:00025] DMD_5_(DMD_5,DMDL_5) = LD1A(DIN_5,DMLD_0);
wire DMD_5;                                                                     //[DMA.NET:00025] DMD_5_(DMD_5,DMDL_5) = LD1A(DIN_5,DMLD_0);
wire DMDL_5;                                                                    //[DMA.NET:00025] DMD_5_(DMD_5,DMDL_5) = LD1A(DIN_5,DMLD_0);
wire DIN_6;                                                                     //[DMA.NET:00026] DMD_6_(DMD_6,DMDL_6) = LD1A(DIN_6,DMLD_0);
wire DMD_6;                                                                     //[DMA.NET:00026] DMD_6_(DMD_6,DMDL_6) = LD1A(DIN_6,DMLD_0);
wire DMDL_6;                                                                    //[DMA.NET:00026] DMD_6_(DMD_6,DMDL_6) = LD1A(DIN_6,DMLD_0);
wire DIN_7;                                                                     //[DMA.NET:00027] DMD_7_(DMD_7,DMDL_7) = LD1A(DIN_7,DMLD_0);
wire DMD_7;                                                                     //[DMA.NET:00027] DMD_7_(DMD_7,DMDL_7) = LD1A(DIN_7,DMLD_0);
wire DMDL_7;                                                                    //[DMA.NET:00027] DMD_7_(DMD_7,DMDL_7) = LD1A(DIN_7,DMLD_0);
wire DIN_8;                                                                     //[DMA.NET:00028] DMD_8_(DMD_8,DMDL_8) = LD1A(DIN_8,DMLD_1);
wire DMLD_1;                                                                    //[DMA.NET:00028] DMD_8_(DMD_8,DMDL_8) = LD1A(DIN_8,DMLD_1);
wire DMD_8;                                                                     //[DMA.NET:00028] DMD_8_(DMD_8,DMDL_8) = LD1A(DIN_8,DMLD_1);
wire DMDL_8;                                                                    //[DMA.NET:00028] DMD_8_(DMD_8,DMDL_8) = LD1A(DIN_8,DMLD_1);
wire DIN_9;                                                                     //[DMA.NET:00029] DMD_9_(DMD_9,DMDL_9) = LD1A(DIN_9,DMLD_1);
wire DMD_9;                                                                     //[DMA.NET:00029] DMD_9_(DMD_9,DMDL_9) = LD1A(DIN_9,DMLD_1);
wire DMDL_9;                                                                    //[DMA.NET:00029] DMD_9_(DMD_9,DMDL_9) = LD1A(DIN_9,DMLD_1);
wire DIN_10;                                                                    //[DMA.NET:00030] DMD_10_(DMD_10,DMDL_10) = LD1A(DIN_10,DMLD_1);
wire DMD_10;                                                                    //[DMA.NET:00030] DMD_10_(DMD_10,DMDL_10) = LD1A(DIN_10,DMLD_1);
wire DMDL_10;                                                                   //[DMA.NET:00030] DMD_10_(DMD_10,DMDL_10) = LD1A(DIN_10,DMLD_1);
wire DIN_11;                                                                    //[DMA.NET:00031] DMD_11_(DMD_11,DMDL_11) = LD1A(DIN_11,DMLD_1);
wire DMD_11;                                                                    //[DMA.NET:00031] DMD_11_(DMD_11,DMDL_11) = LD1A(DIN_11,DMLD_1);
wire DMDL_11;                                                                   //[DMA.NET:00031] DMD_11_(DMD_11,DMDL_11) = LD1A(DIN_11,DMLD_1);
wire DIN_12;                                                                    //[DMA.NET:00032] DMD_12_(DMD_12,DMDL_12) = LD1A(DIN_12,DMLD_1);
wire DMD_12;                                                                    //[DMA.NET:00032] DMD_12_(DMD_12,DMDL_12) = LD1A(DIN_12,DMLD_1);
wire DMDL_12;                                                                   //[DMA.NET:00032] DMD_12_(DMD_12,DMDL_12) = LD1A(DIN_12,DMLD_1);
wire DIN_13;                                                                    //[DMA.NET:00033] DMD_13_(DMD_13,DMDL_13) = LD1A(DIN_13,DMLD_1);
wire DMD_13;                                                                    //[DMA.NET:00033] DMD_13_(DMD_13,DMDL_13) = LD1A(DIN_13,DMLD_1);
wire DMDL_13;                                                                   //[DMA.NET:00033] DMD_13_(DMD_13,DMDL_13) = LD1A(DIN_13,DMLD_1);
wire DIN_14;                                                                    //[DMA.NET:00034] DMD_14_(DMD_14,DMDL_14) = LD1A(DIN_14,DMLD_1);
wire DMD_14;                                                                    //[DMA.NET:00034] DMD_14_(DMD_14,DMDL_14) = LD1A(DIN_14,DMLD_1);
wire DMDL_14;                                                                   //[DMA.NET:00034] DMD_14_(DMD_14,DMDL_14) = LD1A(DIN_14,DMLD_1);
wire DIN_15;                                                                    //[DMA.NET:00035] DMD_15_(DMD_15,DMDL_15) = LD1A(DIN_15,DMLD_1);
wire DMD_15;                                                                    //[DMA.NET:00035] DMD_15_(DMD_15,DMDL_15) = LD1A(DIN_15,DMLD_1);
wire DMDL_15;                                                                   //[DMA.NET:00035] DMD_15_(DMD_15,DMDL_15) = LD1A(DIN_15,DMLD_1);
wire BYTE;                                                                      //[DMA.NET:00042] LOBYTE_(LOBYTE) = ND2A(BYTE,LOHI);
wire LOHI;                                                                      //[DMA.NET:00042] LOBYTE_(LOBYTE) = ND2A(BYTE,LOHI);
wire LOBYTE;                                                                    //[DMA.NET:00042] LOBYTE_(LOBYTE) = ND2A(BYTE,LOHI);
wire LOHIL;                                                                     //[DMA.NET:00043] HIBYTE_(HIBYTE) = ND2A(BYTE,LOHIL);
wire HIBYTE;                                                                    //[DMA.NET:00043] HIBYTE_(HIBYTE) = ND2A(BYTE,LOHIL);
wire DMC_0;                                                                     //[DMA.NET:00045] HHILDL_(HHILDL) = ND4A(DMC_0,DMC_1,HIBYTE,RDWR);
wire DMC_1;                                                                     //[DMA.NET:00045] HHILDL_(HHILDL) = ND4A(DMC_0,DMC_1,HIBYTE,RDWR);
wire RDWR;                                                                      //[DMA.NET:00045] HHILDL_(HHILDL) = ND4A(DMC_0,DMC_1,HIBYTE,RDWR);
wire HHILDL;                                                                    //[DMA.NET:00045] HHILDL_(HHILDL) = ND4A(DMC_0,DMC_1,HIBYTE,RDWR);
wire HLOLDL;                                                                    //[DMA.NET:00046] HLOLDL_(HLOLDL) = ND4A(DMC_0,DMC_1,LOBYTE,RDWR);
wire DMHILDL;                                                                   //[DMA.NET:00047] DMHILDL_(DMHILDL) = AND2A(HHILDL,DMDWRL);
wire DMLOLDL;                                                                   //[DMA.NET:00048] DMLOLDL_(DMLOLDL) = AND2A(HLOLDL,DMDWRL);
wire DSELL_0;                                                                   //[DMA.NET:00056] DIN_0_(DIN_0) = MUX(D_0,DSELL_0,DDB_0,DSEL_0);
wire DSEL_0;                                                                    //[DMA.NET:00056] DIN_0_(DIN_0) = MUX(D_0,DSELL_0,DDB_0,DSEL_0);
wire DSEL_1;                                                                    //[DMA.NET:00064] DIN_8_(DIN_8) = MUX3(D_8,DDB_8,D_0,DSEL_0,DSEL_1);
wire DH_0;                                                                      //[DMA.NET:00089] DHOST_0_(D_0) = BTS5B(DMDL_0,DH_0);
wire DH_1;                                                                      //[DMA.NET:00097] DHOST_8_(D_8) = BTS5B(DMDL_8,DH_1);
wire DH_2;                                                                      //[DMA.NET:00105] DHSWAP_0_(D_0) = BTS5B(DMDL_8,DH_2);
wire DMDRD;                                                                     //[DMA.NET:00114] DDEN_0_(DD_0) = BTS5B(DMDL_0,DMDRD);
wire DSPBAK;                                                                    //[DMA.NET:00146] HOLDA_(DSPBAK) = B1A(DSPBAKL);
wire WAIT;                                                                      //[DMA.NET:00147] WAIT_(WAIT) = N1A(WAITL);
wire BYTEL;                                                                     //[DMA.NET:00148] DH0_1_(DH0_1) = ND3A(DSPBAK,WR,BYTEL);
wire DH0_1;                                                                     //[DMA.NET:00148] DH0_1_(DH0_1) = ND3A(DSPBAK,WR,BYTEL);
wire DH0_2;                                                                     //[DMA.NET:00149] DH0_2_(DH0_2) = ND4A(DSPBAK,WR,LOHIL,BYTE);
wire DMA0WR;                                                                    //[DMA.NET:00160] DMA0_0_(DMA_0,DMAL_0) = LD1A(DDB_0,DMA0WR);
wire DMA_0;                                                                     //[DMA.NET:00160] DMA0_0_(DMA_0,DMAL_0) = LD1A(DDB_0,DMA0WR);
wire DMAL_0;                                                                    //[DMA.NET:00160] DMA0_0_(DMA_0,DMAL_0) = LD1A(DDB_0,DMA0WR);
wire DMA_1;                                                                     //[DMA.NET:00161] DMA0_1_(DMA_1,DMAL_1) = LD1A(DDB_1,DMA0WR);
wire DMAL_1;                                                                    //[DMA.NET:00161] DMA0_1_(DMA_1,DMAL_1) = LD1A(DDB_1,DMA0WR);
wire DMA_2;                                                                     //[DMA.NET:00162] DMA0_2_(DMA_2,DMAL_2) = LD1A(DDB_2,DMA0WR);
wire DMAL_2;                                                                    //[DMA.NET:00162] DMA0_2_(DMA_2,DMAL_2) = LD1A(DDB_2,DMA0WR);
wire DMA_3;                                                                     //[DMA.NET:00163] DMA0_3_(DMA_3,DMAL_3) = LD1A(DDB_3,DMA0WR);
wire DMAL_3;                                                                    //[DMA.NET:00163] DMA0_3_(DMA_3,DMAL_3) = LD1A(DDB_3,DMA0WR);
wire DMA_4;                                                                     //[DMA.NET:00164] DMA0_4_(DMA_4,DMAL_4) = LD1A(DDB_4,DMA0WR);
wire DMAL_4;                                                                    //[DMA.NET:00164] DMA0_4_(DMA_4,DMAL_4) = LD1A(DDB_4,DMA0WR);
wire DMA_5;                                                                     //[DMA.NET:00165] DMA0_5_(DMA_5,DMAL_5) = LD1A(DDB_5,DMA0WR);
wire DMAL_5;                                                                    //[DMA.NET:00165] DMA0_5_(DMA_5,DMAL_5) = LD1A(DDB_5,DMA0WR);
wire DMA_6;                                                                     //[DMA.NET:00166] DMA0_6_(DMA_6,DMAL_6) = LD1A(DDB_6,DMA0WR);
wire DMAL_6;                                                                    //[DMA.NET:00166] DMA0_6_(DMA_6,DMAL_6) = LD1A(DDB_6,DMA0WR);
wire DMA_7;                                                                     //[DMA.NET:00167] DMA0_7_(DMA_7,DMAL_7) = LD1A(DDB_7,DMA0WR);
wire DMAL_7;                                                                    //[DMA.NET:00167] DMA0_7_(DMA_7,DMAL_7) = LD1A(DDB_7,DMA0WR);
wire DMA_8;                                                                     //[DMA.NET:00168] DMA0_8_(DMA_8,DMAL_8) = LD1A(DDB_8,DMA0WR);
wire DMAL_8;                                                                    //[DMA.NET:00168] DMA0_8_(DMA_8,DMAL_8) = LD1A(DDB_8,DMA0WR);
wire DMA_9;                                                                     //[DMA.NET:00169] DMA0_9_(DMA_9,DMAL_9) = LD1A(DDB_9,DMA0WR);
wire DMAL_9;                                                                    //[DMA.NET:00169] DMA0_9_(DMA_9,DMAL_9) = LD1A(DDB_9,DMA0WR);
wire DMA_10;                                                                    //[DMA.NET:00170] DMA0_10_(DMA_10,DMAL_10) = LD1A(DDB_10,DMA0WR);
wire DMAL_10;                                                                   //[DMA.NET:00170] DMA0_10_(DMA_10,DMAL_10) = LD1A(DDB_10,DMA0WR);
wire DMA_11;                                                                    //[DMA.NET:00171] DMA0_11_(DMA_11,DMAL_11) = LD1A(DDB_11,DMA0WR);
wire DMAL_11;                                                                   //[DMA.NET:00171] DMA0_11_(DMA_11,DMAL_11) = LD1A(DDB_11,DMA0WR);
wire DMA_12;                                                                    //[DMA.NET:00172] DMA0_12_(DMA_12,DMAL_12) = LD1A(DDB_12,DMA0WR);
wire DMAL_12;                                                                   //[DMA.NET:00172] DMA0_12_(DMA_12,DMAL_12) = LD1A(DDB_12,DMA0WR);
wire DMA_13;                                                                    //[DMA.NET:00173] DMA0_13_(DMA_13,DMAL_13) = LD1A(DDB_13,DMA0WR);
wire DMAL_13;                                                                   //[DMA.NET:00173] DMA0_13_(DMA_13,DMAL_13) = LD1A(DDB_13,DMA0WR);
wire DMA_14;                                                                    //[DMA.NET:00174] DMA0_14_(DMA_14,DMAL_14) = LD1A(DDB_14,DMA0WR);
wire DMAL_14;                                                                   //[DMA.NET:00174] DMA0_14_(DMA_14,DMAL_14) = LD1A(DDB_14,DMA0WR);
wire DMA_15;                                                                    //[DMA.NET:00175] DMA0_15_(DMA_15,DMAL_15) = LD1A(DDB_15,DMA0WR);
wire DMAL_15;                                                                   //[DMA.NET:00175] DMA0_15_(DMA_15,DMAL_15) = LD1A(DDB_15,DMA0WR);
wire DMA1WR;                                                                    //[DMA.NET:00177] DMA1_0_(DMA_16,DMAL_16) = LD1A(DDB_0,DMA1WR);
wire DMA_16;                                                                    //[DMA.NET:00177] DMA1_0_(DMA_16,DMAL_16) = LD1A(DDB_0,DMA1WR);
wire DMAL_16;                                                                   //[DMA.NET:00177] DMA1_0_(DMA_16,DMAL_16) = LD1A(DDB_0,DMA1WR);
wire DMA_17;                                                                    //[DMA.NET:00178] DMA1_1_(DMA_17,DMAL_17) = LD1A(DDB_1,DMA1WR);
wire DMAL_17;                                                                   //[DMA.NET:00178] DMA1_1_(DMA_17,DMAL_17) = LD1A(DDB_1,DMA1WR);
wire DMA_18;                                                                    //[DMA.NET:00179] DMA1_2_(DMA_18,DMAL_18) = LD1A(DDB_2,DMA1WR);
wire DMAL_18;                                                                   //[DMA.NET:00179] DMA1_2_(DMA_18,DMAL_18) = LD1A(DDB_2,DMA1WR);
wire DMA_19;                                                                    //[DMA.NET:00180] DMA1_3_(DMA_19,DMAL_19) = LD1A(DDB_3,DMA1WR);
wire DMAL_19;                                                                   //[DMA.NET:00180] DMA1_3_(DMA_19,DMAL_19) = LD1A(DDB_3,DMA1WR);
wire WRRD;                                                                      //[DMA.NET:00185] RDWR_(RDWR,WRRD) = LD1A(DDB_10,DMA1WR);
wire HOLD;                                                                      //[DMA.NET:00186] HOLD_(HOLD,HOLDL) = LD1A(DDB_11,DMA1WR);
wire HOLDL;                                                                     //[DMA.NET:00186] HOLD_(HOLD,HOLDL) = LD1A(DDB_11,DMA1WR);
wire DMA0RD;                                                                    //[DMA.NET:00211] DMA0RD_0_(DD_0) = BTS5B(DMAL_0,DMA0RD);
wire DMA1RD;                                                                    //[DMA.NET:00227] DMA1RD_0_(DD_0) = BTS5B(DMAL_16,DMA1RD);
wire MREQL;                                                                     //[DMA.NET:00245] MREQ_(MREQ) = NR2A(MREQL,DSPBAKL);
wire ST23L;                                                                     //[DMA.NET:00247] RD_(RD) = NR3B(WRRD,ST23L,DSPBAKL);
wire DMCL_0;                                                                    //[DMA.NET:00250] MACHINE_(DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL) = DMAMC(DMA0WRL,DSPBAK,DSPBAKL,
wire DMCL_1;                                                                    //[DMA.NET:00250] MACHINE_(DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL) = DMAMC(DMA0WRL,DSPBAK,DSPBAKL,
wire drv0_outA_0;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[DMA.NET:00011] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_16;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_17;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_17;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_18;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_18;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_19;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_19;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_0;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_0;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_0;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_0;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_1;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_1;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_1;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_1;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_2;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_2;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_2;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_2;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_3;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_3;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_3;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_3;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_4;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_4;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_4;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_4;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_5;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_5;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_5;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_5;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_6;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_6;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_6;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_6;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_7;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_7;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_7;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_7;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_8;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_8;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_9;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_9;                                                                //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_10;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_10;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_11;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_11;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_12;                                                              //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_12;                                                               //[DMA.NET:00012]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_13;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enD_13;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outD_14;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enD_14;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outD_15;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enD_15;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_0;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_0;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_0;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_0;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_0;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_0;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_1;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_1;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_1;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_1;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_1;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_1;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_2;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_2;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_2;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_2;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_2;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_2;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_3;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_3;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_3;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_3;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_3;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_3;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_4;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_4;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_4;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_4;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_5;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_5;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_5;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_5;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_6;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_6;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_6;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_6;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_7;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_7;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_7;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_7;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_8;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_8;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_8;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_8;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_8;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_8;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_9;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_9;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_9;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_9;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_9;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_9;                                                               //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_10;                                                             //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_10;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_10;                                                             //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_10;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_10;                                                             //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_10;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_11;                                                             //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_enDD_11;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_outDD_11;                                                             //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv1_enDD_11;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_outDD_11;                                                             //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv2_enDD_11;                                                              //[DMA.NET:00013]    D_13,D_14,D_15,DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,
wire drv0_outDD_12;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_enDD_12;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_outDD_12;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_enDD_12;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_outDD_13;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_enDD_13;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_outDD_13;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_enDD_13;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_outDD_14;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_enDD_14;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_outDD_14;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_enDD_14;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_outDD_15;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv0_enDD_15;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_outDD_15;                                                             //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;
wire drv1_enDD_15;                                                              //[DMA.NET:00014]    DD_12,DD_13,DD_14,DD_15,DSPBRQL,MREQ,RD,WR,WORD;

 /* The data register */

LD1A DMD_0__inst (.MasterClock(MasterClock),.q(DMD_0),.qL(DMDL_0),.d(DIN_0),.en(DMLD_0));//[DMA.NET:00020] DMD_0_(DMD_0,DMDL_0) = LD1A(DIN_0,DMLD_0);
LD1A DMD_1__inst (.MasterClock(MasterClock),.q(DMD_1),.qL(DMDL_1),.d(DIN_1),.en(DMLD_0));//[DMA.NET:00021] DMD_1_(DMD_1,DMDL_1) = LD1A(DIN_1,DMLD_0);
LD1A DMD_2__inst (.MasterClock(MasterClock),.q(DMD_2),.qL(DMDL_2),.d(DIN_2),.en(DMLD_0));//[DMA.NET:00022] DMD_2_(DMD_2,DMDL_2) = LD1A(DIN_2,DMLD_0);
LD1A DMD_3__inst (.MasterClock(MasterClock),.q(DMD_3),.qL(DMDL_3),.d(DIN_3),.en(DMLD_0));//[DMA.NET:00023] DMD_3_(DMD_3,DMDL_3) = LD1A(DIN_3,DMLD_0);
LD1A DMD_4__inst (.MasterClock(MasterClock),.q(DMD_4),.qL(DMDL_4),.d(DIN_4),.en(DMLD_0));//[DMA.NET:00024] DMD_4_(DMD_4,DMDL_4) = LD1A(DIN_4,DMLD_0);
LD1A DMD_5__inst (.MasterClock(MasterClock),.q(DMD_5),.qL(DMDL_5),.d(DIN_5),.en(DMLD_0));//[DMA.NET:00025] DMD_5_(DMD_5,DMDL_5) = LD1A(DIN_5,DMLD_0);
LD1A DMD_6__inst (.MasterClock(MasterClock),.q(DMD_6),.qL(DMDL_6),.d(DIN_6),.en(DMLD_0));//[DMA.NET:00026] DMD_6_(DMD_6,DMDL_6) = LD1A(DIN_6,DMLD_0);
LD1A DMD_7__inst (.MasterClock(MasterClock),.q(DMD_7),.qL(DMDL_7),.d(DIN_7),.en(DMLD_0));//[DMA.NET:00027] DMD_7_(DMD_7,DMDL_7) = LD1A(DIN_7,DMLD_0);
LD1A DMD_8__inst (.MasterClock(MasterClock),.q(DMD_8),.qL(DMDL_8),.d(DIN_8),.en(DMLD_1));//[DMA.NET:00028] DMD_8_(DMD_8,DMDL_8) = LD1A(DIN_8,DMLD_1);
LD1A DMD_9__inst (.MasterClock(MasterClock),.q(DMD_9),.qL(DMDL_9),.d(DIN_9),.en(DMLD_1));//[DMA.NET:00029] DMD_9_(DMD_9,DMDL_9) = LD1A(DIN_9,DMLD_1);
LD1A DMD_10__inst (.MasterClock(MasterClock),.q(DMD_10),.qL(DMDL_10),.d(DIN_10),.en(DMLD_1));//[DMA.NET:00030] DMD_10_(DMD_10,DMDL_10) = LD1A(DIN_10,DMLD_1);
LD1A DMD_11__inst (.MasterClock(MasterClock),.q(DMD_11),.qL(DMDL_11),.d(DIN_11),.en(DMLD_1));//[DMA.NET:00031] DMD_11_(DMD_11,DMDL_11) = LD1A(DIN_11,DMLD_1);
LD1A DMD_12__inst (.MasterClock(MasterClock),.q(DMD_12),.qL(DMDL_12),.d(DIN_12),.en(DMLD_1));//[DMA.NET:00032] DMD_12_(DMD_12,DMDL_12) = LD1A(DIN_12,DMLD_1);
LD1A DMD_13__inst (.MasterClock(MasterClock),.q(DMD_13),.qL(DMDL_13),.d(DIN_13),.en(DMLD_1));//[DMA.NET:00033] DMD_13_(DMD_13,DMDL_13) = LD1A(DIN_13,DMLD_1);
LD1A DMD_14__inst (.MasterClock(MasterClock),.q(DMD_14),.qL(DMDL_14),.d(DIN_14),.en(DMLD_1));//[DMA.NET:00034] DMD_14_(DMD_14,DMDL_14) = LD1A(DIN_14,DMLD_1);
LD1A DMD_15__inst (.MasterClock(MasterClock),.q(DMD_15),.qL(DMDL_15),.d(DIN_15),.en(DMLD_1));//[DMA.NET:00035] DMD_15_(DMD_15,DMDL_15) = LD1A(DIN_15,DMLD_1);

/* Loading of this register is defined as follows:
   From the DSP side dmdwrL 
   From the host side only during state 3 of DMAMC,
   Load the low byte IF byte=0 OR If LOHI=0 */

assign LOBYTE = ~(BYTE & LOHI);                                                 //[DMA.NET:00042] LOBYTE_(LOBYTE) = ND2A(BYTE,LOHI);
assign HIBYTE = ~(BYTE & LOHIL);                                                //[DMA.NET:00043] HIBYTE_(HIBYTE) = ND2A(BYTE,LOHIL);

assign HHILDL = ~(DMC_0 & DMC_1 & HIBYTE & RDWR);                               //[DMA.NET:00045] HHILDL_(HHILDL) = ND4A(DMC_0,DMC_1,HIBYTE,RDWR);
assign HLOLDL = ~(DMC_0 & DMC_1 & LOBYTE & RDWR);                               //[DMA.NET:00046] HLOLDL_(HLOLDL) = ND4A(DMC_0,DMC_1,LOBYTE,RDWR);
assign DMHILDL = HHILDL & DMDWRL;                                               //[DMA.NET:00047] DMHILDL_(DMHILDL) = AND2A(HHILDL,DMDWRL);
assign DMLOLDL = HLOLDL & DMDWRL;                                               //[DMA.NET:00048] DMLOLDL_(DMLOLDL) = AND2A(HLOLDL,DMDWRL);

assign DMLD_0 = ~(DMLOLDL | DQCLK);                                             //[DMA.NET:00050] DMLD_0_(DMLD_0) = NR2B(DMLOLDL,DQCLK);
assign DMLD_1 = ~(DMHILDL | DQCLK);                                             //[DMA.NET:00051] DMLD_1_(DMLD_1) = NR2B(DMHILDL,DQCLK);


/* The mux preceding the data register */

m_MUX DIN_0_ (.MasterClock(MasterClock),.A(inD_0),.B(DSELL_0),.C(DDB_0),.D(DSEL_0),.Z(DIN_0));//[DMA.NET:00056] DIN_0_(DIN_0) = MUX(D_0,DSELL_0,DDB_0,DSEL_0);
m_MUX DIN_1_ (.MasterClock(MasterClock),.A(inD_1),.B(DSELL_0),.C(DDB_1),.D(DSEL_0),.Z(DIN_1));//[DMA.NET:00057] DIN_1_(DIN_1) = MUX(D_1,DSELL_0,DDB_1,DSEL_0);
m_MUX DIN_2_ (.MasterClock(MasterClock),.A(inD_2),.B(DSELL_0),.C(DDB_2),.D(DSEL_0),.Z(DIN_2));//[DMA.NET:00058] DIN_2_(DIN_2) = MUX(D_2,DSELL_0,DDB_2,DSEL_0);
m_MUX DIN_3_ (.MasterClock(MasterClock),.A(inD_3),.B(DSELL_0),.C(DDB_3),.D(DSEL_0),.Z(DIN_3));//[DMA.NET:00059] DIN_3_(DIN_3) = MUX(D_3,DSELL_0,DDB_3,DSEL_0);
m_MUX DIN_4_ (.MasterClock(MasterClock),.A(inD_4),.B(DSELL_0),.C(DDB_4),.D(DSEL_0),.Z(DIN_4));//[DMA.NET:00060] DIN_4_(DIN_4) = MUX(D_4,DSELL_0,DDB_4,DSEL_0);
m_MUX DIN_5_ (.MasterClock(MasterClock),.A(inD_5),.B(DSELL_0),.C(DDB_5),.D(DSEL_0),.Z(DIN_5));//[DMA.NET:00061] DIN_5_(DIN_5) = MUX(D_5,DSELL_0,DDB_5,DSEL_0);
m_MUX DIN_6_ (.MasterClock(MasterClock),.A(inD_6),.B(DSELL_0),.C(DDB_6),.D(DSEL_0),.Z(DIN_6));//[DMA.NET:00062] DIN_6_(DIN_6) = MUX(D_6,DSELL_0,DDB_6,DSEL_0);
m_MUX DIN_7_ (.MasterClock(MasterClock),.A(inD_7),.B(DSELL_0),.C(DDB_7),.D(DSEL_0),.Z(DIN_7));//[DMA.NET:00063] DIN_7_(DIN_7) = MUX(D_7,DSELL_0,DDB_7,DSEL_0);
m_MUX3 DIN_8_ (.MasterClock(MasterClock),.A(inD_8),.B(DDB_8),.C(inD_0),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_8));//[DMA.NET:00064] DIN_8_(DIN_8) = MUX3(D_8,DDB_8,D_0,DSEL_0,DSEL_1);
m_MUX3 DIN_9_ (.MasterClock(MasterClock),.A(inD_9),.B(DDB_9),.C(inD_1),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_9));//[DMA.NET:00065] DIN_9_(DIN_9) = MUX3(D_9,DDB_9,D_1,DSEL_0,DSEL_1);
m_MUX3 DIN_10_ (.MasterClock(MasterClock),.A(inD_10),.B(DDB_10),.C(inD_2),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_10));//[DMA.NET:00066] DIN_10_(DIN_10) = MUX3(D_10,DDB_10,D_2,DSEL_0,DSEL_1);
m_MUX3 DIN_11_ (.MasterClock(MasterClock),.A(inD_11),.B(DDB_11),.C(inD_3),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_11));//[DMA.NET:00067] DIN_11_(DIN_11) = MUX3(D_11,DDB_11,D_3,DSEL_0,DSEL_1);
m_MUX3 DIN_12_ (.MasterClock(MasterClock),.A(inD_12),.B(DDB_12),.C(inD_4),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_12));//[DMA.NET:00068] DIN_12_(DIN_12) = MUX3(D_12,DDB_12,D_4,DSEL_0,DSEL_1);
m_MUX3 DIN_13_ (.MasterClock(MasterClock),.A(inD_13),.B(DDB_13),.C(inD_5),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_13));//[DMA.NET:00069] DIN_13_(DIN_13) = MUX3(D_13,DDB_13,D_5,DSEL_0,DSEL_1);
m_MUX3 DIN_14_ (.MasterClock(MasterClock),.A(inD_14),.B(DDB_14),.C(inD_6),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_14));//[DMA.NET:00070] DIN_14_(DIN_14) = MUX3(D_14,DDB_14,D_6,DSEL_0,DSEL_1);
m_MUX3 DIN_15_ (.MasterClock(MasterClock),.A(inD_15),.B(DDB_15),.C(inD_7),.SEL_0(DSEL_0),.SEL_1(DSEL_1),.Z_3(DIN_15));//[DMA.NET:00071] DIN_15_(DIN_15) = MUX3(D_15,DDB_15,D_7,DSEL_0,DSEL_1);
/* Selection for this input is made by the state machine, dmdwrL, lohi and byte:

	state m/c  dmdwrL  lohi  byte  rdwr     dsel[0..1]

	   3         x      x     1     1           0
	   3         x      0     0     1           0
	   3         x      1     1     1           2
	not3         0      x     x     x           1		*/

assign DSEL_0 = ~(DMC_0 & DMC_1 & RDWR);                                        //[DMA.NET:00081] DSEL_0_(DSEL_0) = ND3A(DMC_0,DMC_1,RDWR);
assign DSELL_0 = ~DSEL_0;                                                       //[DMA.NET:00082] DSELL_0_(DSELL_0) = N1B(DSEL_0);
assign DSEL_1 = DSELL_0 & LOHI & BYTE & RDWR;                                   //[DMA.NET:00083] DSEL_1_(DSEL_1) = AND4B(DSELL_0,LOHI,BYTE,RDWR);


/* The register may be enabled onto the host or DSP buses */


assign drv0_outD_0 = ~DMDL_0; assign drv0_enD_0 = DH_0;                         //[DMA.NET:00089] DHOST_0_(D_0) = BTS5B(DMDL_0,DH_0);
assign drv0_outD_1 = ~DMDL_1; assign drv0_enD_1 = DH_0;                         //[DMA.NET:00090] DHOST_1_(D_1) = BTS5B(DMDL_1,DH_0);
assign drv0_outD_2 = ~DMDL_2; assign drv0_enD_2 = DH_0;                         //[DMA.NET:00091] DHOST_2_(D_2) = BTS5B(DMDL_2,DH_0);
assign drv0_outD_3 = ~DMDL_3; assign drv0_enD_3 = DH_0;                         //[DMA.NET:00092] DHOST_3_(D_3) = BTS5B(DMDL_3,DH_0);
assign drv0_outD_4 = ~DMDL_4; assign drv0_enD_4 = DH_0;                         //[DMA.NET:00093] DHOST_4_(D_4) = BTS5B(DMDL_4,DH_0);
assign drv0_outD_5 = ~DMDL_5; assign drv0_enD_5 = DH_0;                         //[DMA.NET:00094] DHOST_5_(D_5) = BTS5B(DMDL_5,DH_0);
assign drv0_outD_6 = ~DMDL_6; assign drv0_enD_6 = DH_0;                         //[DMA.NET:00095] DHOST_6_(D_6) = BTS5B(DMDL_6,DH_0);
assign drv0_outD_7 = ~DMDL_7; assign drv0_enD_7 = DH_0;                         //[DMA.NET:00096] DHOST_7_(D_7) = BTS5B(DMDL_7,DH_0);
assign drv0_outD_8 = ~DMDL_8; assign drv0_enD_8 = DH_1;                         //[DMA.NET:00097] DHOST_8_(D_8) = BTS5B(DMDL_8,DH_1);
assign drv0_outD_9 = ~DMDL_9; assign drv0_enD_9 = DH_1;                         //[DMA.NET:00098] DHOST_9_(D_9) = BTS5B(DMDL_9,DH_1);
assign drv0_outD_10 = ~DMDL_10; assign drv0_enD_10 = DH_1;                      //[DMA.NET:00099] DHOST_10_(D_10) = BTS5B(DMDL_10,DH_1);
assign drv0_outD_11 = ~DMDL_11; assign drv0_enD_11 = DH_1;                      //[DMA.NET:00100] DHOST_11_(D_11) = BTS5B(DMDL_11,DH_1);
assign drv0_outD_12 = ~DMDL_12; assign drv0_enD_12 = DH_1;                      //[DMA.NET:00101] DHOST_12_(D_12) = BTS5B(DMDL_12,DH_1);
assign drv0_outD_13 = ~DMDL_13; assign drv0_enD_13 = DH_1;                      //[DMA.NET:00102] DHOST_13_(D_13) = BTS5B(DMDL_13,DH_1);
assign drv0_outD_14 = ~DMDL_14; assign drv0_enD_14 = DH_1;                      //[DMA.NET:00103] DHOST_14_(D_14) = BTS5B(DMDL_14,DH_1);
assign drv0_outD_15 = ~DMDL_15; assign drv0_enD_15 = DH_1;                      //[DMA.NET:00104] DHOST_15_(D_15) = BTS5B(DMDL_15,DH_1);
assign drv1_outD_0 = ~DMDL_8; assign drv1_enD_0 = DH_2;                         //[DMA.NET:00105] DHSWAP_0_(D_0) = BTS5B(DMDL_8,DH_2);
assign drv1_outD_1 = ~DMDL_9; assign drv1_enD_1 = DH_2;                         //[DMA.NET:00106] DHSWAP_1_(D_1) = BTS5B(DMDL_9,DH_2);
assign drv1_outD_2 = ~DMDL_10; assign drv1_enD_2 = DH_2;                        //[DMA.NET:00107] DHSWAP_2_(D_2) = BTS5B(DMDL_10,DH_2);
assign drv1_outD_3 = ~DMDL_11; assign drv1_enD_3 = DH_2;                        //[DMA.NET:00108] DHSWAP_3_(D_3) = BTS5B(DMDL_11,DH_2);
assign drv1_outD_4 = ~DMDL_12; assign drv1_enD_4 = DH_2;                        //[DMA.NET:00109] DHSWAP_4_(D_4) = BTS5B(DMDL_12,DH_2);
assign drv1_outD_5 = ~DMDL_13; assign drv1_enD_5 = DH_2;                        //[DMA.NET:00110] DHSWAP_5_(D_5) = BTS5B(DMDL_13,DH_2);
assign drv1_outD_6 = ~DMDL_14; assign drv1_enD_6 = DH_2;                        //[DMA.NET:00111] DHSWAP_6_(D_6) = BTS5B(DMDL_14,DH_2);
assign drv1_outD_7 = ~DMDL_15; assign drv1_enD_7 = DH_2;                        //[DMA.NET:00112] DHSWAP_7_(D_7) = BTS5B(DMDL_15,DH_2);

assign drv0_outDD_0 = ~DMDL_0; assign drv0_enDD_0 = DMDRD;                      //[DMA.NET:00114] DDEN_0_(DD_0) = BTS5B(DMDL_0,DMDRD);
assign drv0_outDD_1 = ~DMDL_1; assign drv0_enDD_1 = DMDRD;                      //[DMA.NET:00115] DDEN_1_(DD_1) = BTS5B(DMDL_1,DMDRD);
assign drv0_outDD_2 = ~DMDL_2; assign drv0_enDD_2 = DMDRD;                      //[DMA.NET:00116] DDEN_2_(DD_2) = BTS5B(DMDL_2,DMDRD);
assign drv0_outDD_3 = ~DMDL_3; assign drv0_enDD_3 = DMDRD;                      //[DMA.NET:00117] DDEN_3_(DD_3) = BTS5B(DMDL_3,DMDRD);
assign drv0_outDD_4 = ~DMDL_4; assign drv0_enDD_4 = DMDRD;                      //[DMA.NET:00118] DDEN_4_(DD_4) = BTS5B(DMDL_4,DMDRD);
assign drv0_outDD_5 = ~DMDL_5; assign drv0_enDD_5 = DMDRD;                      //[DMA.NET:00119] DDEN_5_(DD_5) = BTS5B(DMDL_5,DMDRD);
assign drv0_outDD_6 = ~DMDL_6; assign drv0_enDD_6 = DMDRD;                      //[DMA.NET:00120] DDEN_6_(DD_6) = BTS5B(DMDL_6,DMDRD);
assign drv0_outDD_7 = ~DMDL_7; assign drv0_enDD_7 = DMDRD;                      //[DMA.NET:00121] DDEN_7_(DD_7) = BTS5B(DMDL_7,DMDRD);
assign drv0_outDD_8 = ~DMDL_8; assign drv0_enDD_8 = DMDRD;                      //[DMA.NET:00122] DDEN_8_(DD_8) = BTS5B(DMDL_8,DMDRD);
assign drv0_outDD_9 = ~DMDL_9; assign drv0_enDD_9 = DMDRD;                      //[DMA.NET:00123] DDEN_9_(DD_9) = BTS5B(DMDL_9,DMDRD);
assign drv0_outDD_10 = ~DMDL_10; assign drv0_enDD_10 = DMDRD;                   //[DMA.NET:00124] DDEN_10_(DD_10) = BTS5B(DMDL_10,DMDRD);
assign drv0_outDD_11 = ~DMDL_11; assign drv0_enDD_11 = DMDRD;                   //[DMA.NET:00125] DDEN_11_(DD_11) = BTS5B(DMDL_11,DMDRD);
assign drv0_outDD_12 = ~DMDL_12; assign drv0_enDD_12 = DMDRD;                   //[DMA.NET:00126] DDEN_12_(DD_12) = BTS5B(DMDL_12,DMDRD);
assign drv0_outDD_13 = ~DMDL_13; assign drv0_enDD_13 = DMDRD;                   //[DMA.NET:00127] DDEN_13_(DD_13) = BTS5B(DMDL_13,DMDRD);
assign drv0_outDD_14 = ~DMDL_14; assign drv0_enDD_14 = DMDRD;                   //[DMA.NET:00128] DDEN_14_(DD_14) = BTS5B(DMDL_14,DMDRD);
assign drv0_outDD_15 = ~DMDL_15; assign drv0_enDD_15 = DMDRD;                   //[DMA.NET:00129] DDEN_15_(DD_15) = BTS5B(DMDL_15,DMDRD);
assign DMDRD = ~DMDRDL;                                                         //[DMA.NET:00130] DMDRD_(DMDRD) = B1A(DMDRDL);

/* The data bus should be driven as long as HOLDA is active and READ is not.
   The enable signals for these drivers are: 

	dspbak  rd1L  lohi byte        dh[0]  dh[1]  dh[2]
	  0	x      x    x           0      0      0
	  1     0      x    x           0      0      0
	  1     1      x    0		1      1      0
	  1     1      0    1           1      1      0
	  1     1      1    1           0      1      1	

   It turns out that the internal data bus should be driven  by the dsp 
   during DMA (ie when the dsp is bus master) only when it wishes to write 
   host RAM. Change the rd1L signal for wr */ 

assign DSPBAK = ~DSPBAKL;                                                       //[DMA.NET:00146] HOLDA_(DSPBAK) = B1A(DSPBAKL);
assign WAIT = ~WAITL;                                                           //[DMA.NET:00147] WAIT_(WAIT) = N1A(WAITL);
assign DH0_1 = ~(DSPBAK & WR & BYTEL);                                          //[DMA.NET:00148] DH0_1_(DH0_1) = ND3A(DSPBAK,WR,BYTEL);
assign DH0_2 = ~(DSPBAK & WR & LOHIL & BYTE);                                   //[DMA.NET:00149] DH0_2_(DH0_2) = ND4A(DSPBAK,WR,LOHIL,BYTE);
assign DH_0 = ~(DH0_1 & DH0_2);                                                 //[DMA.NET:00150] DH_0_(DH_0) = ND2B(DH0_1,DH0_2);

assign DH_1 = DSPBAK & WR;                                                      //[DMA.NET:00152] DH_1_(DH_1) = AND2B(DSPBAK,WR);

assign DH_2 = DSPBAK & WR & LOHI & BYTE;                                        //[DMA.NET:00154] DH_2_(DH_2) = AND4B(DSPBAK,WR,LOHI,BYTE);


/* The address registers */


LD1A DMA0_0__inst (.MasterClock(MasterClock),.q(DMA_0),.qL(DMAL_0),.d(DDB_0),.en(DMA0WR));//[DMA.NET:00160] DMA0_0_(DMA_0,DMAL_0) = LD1A(DDB_0,DMA0WR);
LD1A DMA0_1__inst (.MasterClock(MasterClock),.q(DMA_1),.qL(DMAL_1),.d(DDB_1),.en(DMA0WR));//[DMA.NET:00161] DMA0_1_(DMA_1,DMAL_1) = LD1A(DDB_1,DMA0WR);
LD1A DMA0_2__inst (.MasterClock(MasterClock),.q(DMA_2),.qL(DMAL_2),.d(DDB_2),.en(DMA0WR));//[DMA.NET:00162] DMA0_2_(DMA_2,DMAL_2) = LD1A(DDB_2,DMA0WR);
LD1A DMA0_3__inst (.MasterClock(MasterClock),.q(DMA_3),.qL(DMAL_3),.d(DDB_3),.en(DMA0WR));//[DMA.NET:00163] DMA0_3_(DMA_3,DMAL_3) = LD1A(DDB_3,DMA0WR);
LD1A DMA0_4__inst (.MasterClock(MasterClock),.q(DMA_4),.qL(DMAL_4),.d(DDB_4),.en(DMA0WR));//[DMA.NET:00164] DMA0_4_(DMA_4,DMAL_4) = LD1A(DDB_4,DMA0WR);
LD1A DMA0_5__inst (.MasterClock(MasterClock),.q(DMA_5),.qL(DMAL_5),.d(DDB_5),.en(DMA0WR));//[DMA.NET:00165] DMA0_5_(DMA_5,DMAL_5) = LD1A(DDB_5,DMA0WR);
LD1A DMA0_6__inst (.MasterClock(MasterClock),.q(DMA_6),.qL(DMAL_6),.d(DDB_6),.en(DMA0WR));//[DMA.NET:00166] DMA0_6_(DMA_6,DMAL_6) = LD1A(DDB_6,DMA0WR);
LD1A DMA0_7__inst (.MasterClock(MasterClock),.q(DMA_7),.qL(DMAL_7),.d(DDB_7),.en(DMA0WR));//[DMA.NET:00167] DMA0_7_(DMA_7,DMAL_7) = LD1A(DDB_7,DMA0WR);
LD1A DMA0_8__inst (.MasterClock(MasterClock),.q(DMA_8),.qL(DMAL_8),.d(DDB_8),.en(DMA0WR));//[DMA.NET:00168] DMA0_8_(DMA_8,DMAL_8) = LD1A(DDB_8,DMA0WR);
LD1A DMA0_9__inst (.MasterClock(MasterClock),.q(DMA_9),.qL(DMAL_9),.d(DDB_9),.en(DMA0WR));//[DMA.NET:00169] DMA0_9_(DMA_9,DMAL_9) = LD1A(DDB_9,DMA0WR);
LD1A DMA0_10__inst (.MasterClock(MasterClock),.q(DMA_10),.qL(DMAL_10),.d(DDB_10),.en(DMA0WR));//[DMA.NET:00170] DMA0_10_(DMA_10,DMAL_10) = LD1A(DDB_10,DMA0WR);
LD1A DMA0_11__inst (.MasterClock(MasterClock),.q(DMA_11),.qL(DMAL_11),.d(DDB_11),.en(DMA0WR));//[DMA.NET:00171] DMA0_11_(DMA_11,DMAL_11) = LD1A(DDB_11,DMA0WR);
LD1A DMA0_12__inst (.MasterClock(MasterClock),.q(DMA_12),.qL(DMAL_12),.d(DDB_12),.en(DMA0WR));//[DMA.NET:00172] DMA0_12_(DMA_12,DMAL_12) = LD1A(DDB_12,DMA0WR);
LD1A DMA0_13__inst (.MasterClock(MasterClock),.q(DMA_13),.qL(DMAL_13),.d(DDB_13),.en(DMA0WR));//[DMA.NET:00173] DMA0_13_(DMA_13,DMAL_13) = LD1A(DDB_13,DMA0WR);
LD1A DMA0_14__inst (.MasterClock(MasterClock),.q(DMA_14),.qL(DMAL_14),.d(DDB_14),.en(DMA0WR));//[DMA.NET:00174] DMA0_14_(DMA_14,DMAL_14) = LD1A(DDB_14,DMA0WR);
LD1A DMA0_15__inst (.MasterClock(MasterClock),.q(DMA_15),.qL(DMAL_15),.d(DDB_15),.en(DMA0WR));//[DMA.NET:00175] DMA0_15_(DMA_15,DMAL_15) = LD1A(DDB_15,DMA0WR);
assign DMA0WR = ~(DMA0WRL | DQCLK);                                             //[DMA.NET:00176] DMA0WR_(DMA0WR) = NR2C(DMA0WRL,DQCLK);
LD1A DMA1_0__inst (.MasterClock(MasterClock),.q(DMA_16),.qL(DMAL_16),.d(DDB_0),.en(DMA1WR));//[DMA.NET:00177] DMA1_0_(DMA_16,DMAL_16) = LD1A(DDB_0,DMA1WR);
LD1A DMA1_1__inst (.MasterClock(MasterClock),.q(DMA_17),.qL(DMAL_17),.d(DDB_1),.en(DMA1WR));//[DMA.NET:00178] DMA1_1_(DMA_17,DMAL_17) = LD1A(DDB_1,DMA1WR);
LD1A DMA1_2__inst (.MasterClock(MasterClock),.q(DMA_18),.qL(DMAL_18),.d(DDB_2),.en(DMA1WR));//[DMA.NET:00179] DMA1_2_(DMA_18,DMAL_18) = LD1A(DDB_2,DMA1WR);
LD1A DMA1_3__inst (.MasterClock(MasterClock),.q(DMA_19),.qL(DMAL_19),.d(DDB_3),.en(DMA1WR));//[DMA.NET:00180] DMA1_3_(DMA_19,DMAL_19) = LD1A(DDB_3,DMA1WR);
assign DMA1WR = ~(DMA1WRL | DQCLK);                                             //[DMA.NET:00181] DMA1WR_(DMA1WR) = NR2B(DMA1WRL,DQCLK);

LD1A LOHI__inst (.MasterClock(MasterClock),.q(LOHI),.qL(LOHIL),.d(DDB_8),.en(DMA1WR));//[DMA.NET:00183] LOHI_(LOHI,LOHIL) = LD1A(DDB_8,DMA1WR);
LD1A BYTE__inst (.MasterClock(MasterClock),.q(BYTE),.qL(BYTEL),.d(DDB_9),.en(DMA1WR));//[DMA.NET:00184] BYTE_(BYTE,BYTEL) = LD1A(DDB_9,DMA1WR);
LD1A RDWR__inst (.MasterClock(MasterClock),.q(RDWR),.qL(WRRD),.d(DDB_10),.en(DMA1WR));//[DMA.NET:00185] RDWR_(RDWR,WRRD) = LD1A(DDB_10,DMA1WR);
LD1A HOLD__inst (.MasterClock(MasterClock),.q(HOLD),.qL(HOLDL),.d(DDB_11),.en(DMA1WR));//[DMA.NET:00186] HOLD_(HOLD,HOLDL) = LD1A(DDB_11,DMA1WR);
assign DSPBRQL = ~(HOLD & RUN);                                                 //[DMA.NET:00187] DSPBRQL_(DSPBRQL) = ND2A(HOLD,RUN);

/* These may also be enabled onto the host or DSP buses */

assign drv0_outA_0 = ~DMAL_0; assign drv0_enA_0 = DSPBAK;                       //[DMA.NET:00191] AHOST_0_(A_0) = BTS5B(DMAL_0,DSPBAK);
assign drv0_outA_1 = ~DMAL_1; assign drv0_enA_1 = DSPBAK;                       //[DMA.NET:00192] AHOST_1_(A_1) = BTS5B(DMAL_1,DSPBAK);
assign drv0_outA_2 = ~DMAL_2; assign drv0_enA_2 = DSPBAK;                       //[DMA.NET:00193] AHOST_2_(A_2) = BTS5B(DMAL_2,DSPBAK);
assign drv0_outA_3 = ~DMAL_3; assign drv0_enA_3 = DSPBAK;                       //[DMA.NET:00194] AHOST_3_(A_3) = BTS5B(DMAL_3,DSPBAK);
assign drv0_outA_4 = ~DMAL_4; assign drv0_enA_4 = DSPBAK;                       //[DMA.NET:00195] AHOST_4_(A_4) = BTS5B(DMAL_4,DSPBAK);
assign drv0_outA_5 = ~DMAL_5; assign drv0_enA_5 = DSPBAK;                       //[DMA.NET:00196] AHOST_5_(A_5) = BTS5B(DMAL_5,DSPBAK);
assign drv0_outA_6 = ~DMAL_6; assign drv0_enA_6 = DSPBAK;                       //[DMA.NET:00197] AHOST_6_(A_6) = BTS5B(DMAL_6,DSPBAK);
assign drv0_outA_7 = ~DMAL_7; assign drv0_enA_7 = DSPBAK;                       //[DMA.NET:00198] AHOST_7_(A_7) = BTS5B(DMAL_7,DSPBAK);
assign drv0_outA_8 = ~DMAL_8; assign drv0_enA_8 = DSPBAK;                       //[DMA.NET:00199] AHOST_8_(A_8) = BTS5B(DMAL_8,DSPBAK);
assign drv0_outA_9 = ~DMAL_9; assign drv0_enA_9 = DSPBAK;                       //[DMA.NET:00200] AHOST_9_(A_9) = BTS5B(DMAL_9,DSPBAK);
assign drv0_outA_10 = ~DMAL_10; assign drv0_enA_10 = DSPBAK;                    //[DMA.NET:00201] AHOST_10_(A_10) = BTS5B(DMAL_10,DSPBAK);
assign drv0_outA_11 = ~DMAL_11; assign drv0_enA_11 = DSPBAK;                    //[DMA.NET:00202] AHOST_11_(A_11) = BTS5B(DMAL_11,DSPBAK);
assign drv0_outA_12 = ~DMAL_12; assign drv0_enA_12 = DSPBAK;                    //[DMA.NET:00203] AHOST_12_(A_12) = BTS5B(DMAL_12,DSPBAK);
assign drv0_outA_13 = ~DMAL_13; assign drv0_enA_13 = DSPBAK;                    //[DMA.NET:00204] AHOST_13_(A_13) = BTS5B(DMAL_13,DSPBAK);
assign drv0_outA_14 = ~DMAL_14; assign drv0_enA_14 = DSPBAK;                    //[DMA.NET:00205] AHOST_14_(A_14) = BTS5B(DMAL_14,DSPBAK);
assign drv0_outA_15 = ~DMAL_15; assign drv0_enA_15 = DSPBAK;                    //[DMA.NET:00206] AHOST_15_(A_15) = BTS5B(DMAL_15,DSPBAK);
assign drv0_outA_16 = ~DMAL_16; assign drv0_enA_16 = DSPBAK;                    //[DMA.NET:00207] AHOST_16_(A_16) = BTS5B(DMAL_16,DSPBAK);
assign drv0_outA_17 = ~DMAL_17; assign drv0_enA_17 = DSPBAK;                    //[DMA.NET:00208] AHOST_17_(A_17) = BTS5B(DMAL_17,DSPBAK);
assign drv0_outA_18 = ~DMAL_18; assign drv0_enA_18 = DSPBAK;                    //[DMA.NET:00209] AHOST_18_(A_18) = BTS5B(DMAL_18,DSPBAK);
assign drv0_outA_19 = ~DMAL_19; assign drv0_enA_19 = DSPBAK;                    //[DMA.NET:00210] AHOST_19_(A_19) = BTS5B(DMAL_19,DSPBAK);
assign drv1_outDD_0 = ~DMAL_0; assign drv1_enDD_0 = DMA0RD;                     //[DMA.NET:00211] DMA0RD_0_(DD_0) = BTS5B(DMAL_0,DMA0RD);
assign drv1_outDD_1 = ~DMAL_1; assign drv1_enDD_1 = DMA0RD;                     //[DMA.NET:00212] DMA0RD_1_(DD_1) = BTS5B(DMAL_1,DMA0RD);
assign drv1_outDD_2 = ~DMAL_2; assign drv1_enDD_2 = DMA0RD;                     //[DMA.NET:00213] DMA0RD_2_(DD_2) = BTS5B(DMAL_2,DMA0RD);
assign drv1_outDD_3 = ~DMAL_3; assign drv1_enDD_3 = DMA0RD;                     //[DMA.NET:00214] DMA0RD_3_(DD_3) = BTS5B(DMAL_3,DMA0RD);
assign drv1_outDD_4 = ~DMAL_4; assign drv1_enDD_4 = DMA0RD;                     //[DMA.NET:00215] DMA0RD_4_(DD_4) = BTS5B(DMAL_4,DMA0RD);
assign drv1_outDD_5 = ~DMAL_5; assign drv1_enDD_5 = DMA0RD;                     //[DMA.NET:00216] DMA0RD_5_(DD_5) = BTS5B(DMAL_5,DMA0RD);
assign drv1_outDD_6 = ~DMAL_6; assign drv1_enDD_6 = DMA0RD;                     //[DMA.NET:00217] DMA0RD_6_(DD_6) = BTS5B(DMAL_6,DMA0RD);
assign drv1_outDD_7 = ~DMAL_7; assign drv1_enDD_7 = DMA0RD;                     //[DMA.NET:00218] DMA0RD_7_(DD_7) = BTS5B(DMAL_7,DMA0RD);
assign drv1_outDD_8 = ~DMAL_8; assign drv1_enDD_8 = DMA0RD;                     //[DMA.NET:00219] DMA0RD_8_(DD_8) = BTS5B(DMAL_8,DMA0RD);
assign drv1_outDD_9 = ~DMAL_9; assign drv1_enDD_9 = DMA0RD;                     //[DMA.NET:00220] DMA0RD_9_(DD_9) = BTS5B(DMAL_9,DMA0RD);
assign drv1_outDD_10 = ~DMAL_10; assign drv1_enDD_10 = DMA0RD;                  //[DMA.NET:00221] DMA0RD_10_(DD_10) = BTS5B(DMAL_10,DMA0RD);
assign drv1_outDD_11 = ~DMAL_11; assign drv1_enDD_11 = DMA0RD;                  //[DMA.NET:00222] DMA0RD_11_(DD_11) = BTS5B(DMAL_11,DMA0RD);
assign drv1_outDD_12 = ~DMAL_12; assign drv1_enDD_12 = DMA0RD;                  //[DMA.NET:00223] DMA0RD_12_(DD_12) = BTS5B(DMAL_12,DMA0RD);
assign drv1_outDD_13 = ~DMAL_13; assign drv1_enDD_13 = DMA0RD;                  //[DMA.NET:00224] DMA0RD_13_(DD_13) = BTS5B(DMAL_13,DMA0RD);
assign drv1_outDD_14 = ~DMAL_14; assign drv1_enDD_14 = DMA0RD;                  //[DMA.NET:00225] DMA0RD_14_(DD_14) = BTS5B(DMAL_14,DMA0RD);
assign drv1_outDD_15 = ~DMAL_15; assign drv1_enDD_15 = DMA0RD;                  //[DMA.NET:00226] DMA0RD_15_(DD_15) = BTS5B(DMAL_15,DMA0RD);
assign drv2_outDD_0 = ~DMAL_16; assign drv2_enDD_0 = DMA1RD;                    //[DMA.NET:00227] DMA1RD_0_(DD_0) = BTS5B(DMAL_16,DMA1RD);
assign drv2_outDD_1 = ~DMAL_17; assign drv2_enDD_1 = DMA1RD;                    //[DMA.NET:00228] DMA1RD_1_(DD_1) = BTS5B(DMAL_17,DMA1RD);
assign drv2_outDD_2 = ~DMAL_18; assign drv2_enDD_2 = DMA1RD;                    //[DMA.NET:00229] DMA1RD_2_(DD_2) = BTS5B(DMAL_18,DMA1RD);
assign drv2_outDD_3 = ~DMAL_19; assign drv2_enDD_3 = DMA1RD;                    //[DMA.NET:00230] DMA1RD_3_(DD_3) = BTS5B(DMAL_19,DMA1RD);
assign drv2_outDD_8 = ~LOHIL; assign drv2_enDD_8 = DMA1RD;                      //[DMA.NET:00231] DMA1RD_8_(DD_8) = BTS5B(LOHIL,DMA1RD);
assign drv2_outDD_9 = ~BYTEL; assign drv2_enDD_9 = DMA1RD;                      //[DMA.NET:00232] DMA1RD_9_(DD_9) = BTS5B(BYTEL,DMA1RD);
assign drv2_outDD_10 = ~WRRD; assign drv2_enDD_10 = DMA1RD;                     //[DMA.NET:00233] DMA1RD_10_(DD_10) = BTS5B(WRRD,DMA1RD);
assign drv2_outDD_11 = ~HOLDL; assign drv2_enDD_11 = DMA1RD;                    //[DMA.NET:00234] DMA1RD_11_(DD_11) = BTS5B(HOLDL,DMA1RD);

assign DMA0RD = ~DMA0RDL;                                                       //[DMA.NET:00236] DMA0RD_(DMA0RD) = B1A(DMA0RDL);
assign DMA1RD = ~DMA1RDL;                                                       //[DMA.NET:00237] DMA1RD_(DMA1RD) = N1B(DMA1RDL);


/* Finally the memory control signals themselves */
/* Mreq, rd, wr and word are enabled asynchronously on HOLDA */
/* Mreq, rd, wr and word are asserted during state m/c state 2.
   Mreq is de-asserted during state 3 */

assign MREQ = ~(MREQL | DSPBAKL);                                               //[DMA.NET:00245] MREQ_(MREQ) = NR2A(MREQL,DSPBAKL);

assign RD = ~(WRRD | ST23L | DSPBAKL);                                          //[DMA.NET:00247] RD_(RD) = NR3B(WRRD,ST23L,DSPBAKL);
assign WR = ~(RDWR | ST23L | DSPBAKL);                                          //[DMA.NET:00248] WR_(WR) = NR3B(RDWR,ST23L,DSPBAKL);
assign WORD = ~(BYTE | ST23L | DSPBAKL);                                        //[DMA.NET:00249] WORD_(WORD) = NR3B(BYTE,ST23L,DSPBAKL);
m_DMAMC MACHINE_ (.MasterClock(MasterClock),.DMA0WRL(DMA0WRL),.DSPBAK(DSPBAK),.DSPBAKL(DSPBAKL),.WAIT(WAIT),.CLK(CLK),.RESETL(RESETL),.DMC_0(DMC_0),.DMC_1(DMC_1),.DMCL_0(DMCL_0),.DMCL_1(DMCL_1),.ST23L(ST23L),.MREQL(MREQL));//[DMA.NET:00250] MACHINE_(DMC_0,DMC_1,DMCL_0,DMCL_1,ST23L,MREQL) = DMAMC(DMA0WRL,DSPBAK,DSPBAKL,
                                                                                //[DMA.NET:00251]    WAIT,CLK,RESETL);


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
assign outDD_0 = (drv0_outDD_0 & drv0_enDD_0) | (drv1_outDD_0 & drv1_enDD_0) | (drv2_outDD_0 & drv2_enDD_0);
assign enDD_0 = drv0_enDD_0 | drv1_enDD_0 | drv2_enDD_0;
assign outDD_1 = (drv0_outDD_1 & drv0_enDD_1) | (drv1_outDD_1 & drv1_enDD_1) | (drv2_outDD_1 & drv2_enDD_1);
assign enDD_1 = drv0_enDD_1 | drv1_enDD_1 | drv2_enDD_1;
assign outDD_2 = (drv0_outDD_2 & drv0_enDD_2) | (drv1_outDD_2 & drv1_enDD_2) | (drv2_outDD_2 & drv2_enDD_2);
assign enDD_2 = drv0_enDD_2 | drv1_enDD_2 | drv2_enDD_2;
assign outDD_3 = (drv0_outDD_3 & drv0_enDD_3) | (drv1_outDD_3 & drv1_enDD_3) | (drv2_outDD_3 & drv2_enDD_3);
assign enDD_3 = drv0_enDD_3 | drv1_enDD_3 | drv2_enDD_3;
assign outDD_4 = (drv0_outDD_4 & drv0_enDD_4) | (drv1_outDD_4 & drv1_enDD_4);
assign enDD_4 = drv0_enDD_4 | drv1_enDD_4;
assign outDD_5 = (drv0_outDD_5 & drv0_enDD_5) | (drv1_outDD_5 & drv1_enDD_5);
assign enDD_5 = drv0_enDD_5 | drv1_enDD_5;
assign outDD_6 = (drv0_outDD_6 & drv0_enDD_6) | (drv1_outDD_6 & drv1_enDD_6);
assign enDD_6 = drv0_enDD_6 | drv1_enDD_6;
assign outDD_7 = (drv0_outDD_7 & drv0_enDD_7) | (drv1_outDD_7 & drv1_enDD_7);
assign enDD_7 = drv0_enDD_7 | drv1_enDD_7;
assign outDD_8 = (drv0_outDD_8 & drv0_enDD_8) | (drv1_outDD_8 & drv1_enDD_8) | (drv2_outDD_8 & drv2_enDD_8);
assign enDD_8 = drv0_enDD_8 | drv1_enDD_8 | drv2_enDD_8;
assign outDD_9 = (drv0_outDD_9 & drv0_enDD_9) | (drv1_outDD_9 & drv1_enDD_9) | (drv2_outDD_9 & drv2_enDD_9);
assign enDD_9 = drv0_enDD_9 | drv1_enDD_9 | drv2_enDD_9;
assign outDD_10 = (drv0_outDD_10 & drv0_enDD_10) | (drv1_outDD_10 & drv1_enDD_10) | (drv2_outDD_10 & drv2_enDD_10);
assign enDD_10 = drv0_enDD_10 | drv1_enDD_10 | drv2_enDD_10;
assign outDD_11 = (drv0_outDD_11 & drv0_enDD_11) | (drv1_outDD_11 & drv1_enDD_11) | (drv2_outDD_11 & drv2_enDD_11);
assign enDD_11 = drv0_enDD_11 | drv1_enDD_11 | drv2_enDD_11;
assign outDD_12 = (drv0_outDD_12 & drv0_enDD_12) | (drv1_outDD_12 & drv1_enDD_12);
assign enDD_12 = drv0_enDD_12 | drv1_enDD_12;
assign outDD_13 = (drv0_outDD_13 & drv0_enDD_13) | (drv1_outDD_13 & drv1_enDD_13);
assign enDD_13 = drv0_enDD_13 | drv1_enDD_13;
assign outDD_14 = (drv0_outDD_14 & drv0_enDD_14) | (drv1_outDD_14 & drv1_enDD_14);
assign enDD_14 = drv0_enDD_14 | drv1_enDD_14;
assign outDD_15 = (drv0_outDD_15 & drv0_enDD_15) | (drv1_outDD_15 & drv1_enDD_15);
assign enDD_15 = drv0_enDD_15 | drv1_enDD_15;
endmodule                                                                       //[DMA.NET:00254] END MODULE;
