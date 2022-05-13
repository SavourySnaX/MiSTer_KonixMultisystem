                                                                                //[BLIT.NET:00001] COMPILE;
                                                                                //[BLIT.NET:00002] DIRECTORY MASTER;
/****************************************************************************
blit
19/10/88

Top level of the blitter module

****************************************************************************/


module m_BLIT                                                                   //[BLIT.NET:00012] MODULE BLIT;
(                                                                               //[BLIT.NET:00012] MODULE BLIT;

    input    MasterClock,
    input    inA_0,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_1,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_2,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_3,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_4,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_5,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_6,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_7,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_8,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_9,                                                             //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_10,                                                            //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_11,                                                            //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_12,                                                            //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_13,                                                            //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_14,                                                            //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_15,                                                            //[BLIT.NET:00014] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    input    inA_16,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_17,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_18,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inA_19,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_0,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_1,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_2,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_3,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_4,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_5,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_6,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_7,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_8,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_9,                                                             //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_10,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_11,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_12,                                                            //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    input    inD_13,                                                            //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    inD_14,                                                            //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    inD_15,                                                            //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    RESETL,                                                            //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    HLDAL,                                                             //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    DSPBRQL,                                                           //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    INTL,                                                              //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    IORDL,                                                             //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    IOWRL,                                                             //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    BCSL,                                                              //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    CCLK,                                                              //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    input    WAITL,                                                             //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
                                                                                //[BLIT.NET:00015]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
                                                                                //[BLIT.NET:00016]    D_13,D_14,D_15,RESETL,HLDAL,DSPBRQL,INTL,IORDL,IOWRL,BCSL,CCLK,WAITL;
    output    outA_0, enA_0,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_1, enA_1,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_2, enA_2,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_3, enA_3,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_4, enA_4,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_5, enA_5,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_6, enA_6,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_7, enA_7,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_8, enA_8,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_9, enA_9,                                                    //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_10, enA_10,                                                  //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_11, enA_11,                                                  //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_12, enA_12,                                                  //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_13, enA_13,                                                  //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_14, enA_14,                                                  //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_15, enA_15,                                                  //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
    output    outA_16, enA_16,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_17, enA_17,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_18, enA_18,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outA_19, enA_19,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_0, enD_0,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_1, enD_1,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_2, enD_2,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_3, enD_3,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_4, enD_4,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_5, enD_5,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_6, enD_6,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_7, enD_7,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_8, enD_8,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_9, enD_9,                                                    //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_10, enD_10,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_11, enD_11,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_12, enD_12,                                                  //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
    output    outD_13, enD_13,                                                  //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    outD_14, enD_14,                                                  //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    outD_15, enD_15,                                                  //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    BMREQ,                                                            //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    BRD,                                                              //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    BWR,                                                              //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    BWORD,                                                            //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    DSPBAKL,                                                          //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    BHOLDL,                                                           //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
    output    TESTWRL                                                           //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
);                                                                              //[BLIT.NET:00012] MODULE BLIT;
                                                                                //[BLIT.NET:00020] LEVEL FUNCTION;
wire DAM1L;                                                                     //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire DATOEL;                                                                    //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire DSTCMP;                                                                    //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ICNT_0;                                                                    //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ICNT_1;                                                                    //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ICNT_2;                                                                    //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ID_0;                                                                      //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ID_1;                                                                      //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ID_2;                                                                      //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ID_3;                                                                      //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ID_4;                                                                      //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
wire ID_5;                                                                      //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_6;                                                                      //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_7;                                                                      //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_8;                                                                      //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_9;                                                                      //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_10;                                                                     //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_11;                                                                     //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_12;                                                                     //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_13;                                                                     //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_14;                                                                     //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire ID_15;                                                                     //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire LDCMPL;                                                                    //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire LDDSTL;                                                                    //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
wire LDPATL;                                                                    //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire LDMODL;                                                                    //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire LDSRCL;                                                                    //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire RES_0;                                                                     //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire SSWAP;                                                                     //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire SRCCMP;                                                                    //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire SRCLTOH;                                                                   //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);
wire INHIB;                                                                     //[BLIT.NET:00026]    INHIB) = DATA(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,
wire ADDBACKL;                                                                  //[BLIT.NET:00036]    A_13,A_14,A_15,A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,
wire ADDBLDL;                                                                   //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire ADSTP;                                                                     //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire BUSOE;                                                                     //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire SRCENF;                                                                    //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire DSTRDL_0;                                                                  //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire DSTRDL_1;                                                                  //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire DSTRDL_2;                                                                  //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
wire LDDAL_0;                                                                   //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LDDAL_1;                                                                   //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LDDAL_2;                                                                   //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LDSAL_0;                                                                   //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LDSAL_1;                                                                   //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LDSAL_2;                                                                   //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LDSTPL;                                                                    //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
wire LINDR;                                                                     //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire PCEN;                                                                      //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire PCWRL_0;                                                                   //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire PCWRL_1;                                                                   //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire PCWRL_2;                                                                   //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire RES_1;                                                                     //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire RUN;                                                                       //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire SDASEL;                                                                    //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire SRCRD;                                                                     //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
wire SRCRDL_0;                                                                  //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire SRCRDL_1;                                                                  //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire SRCRDL_2;                                                                  //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire UPDDSTL;                                                                   //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire UPDPCL;                                                                    //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire UPDSRCL;                                                                   //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire UPSLDL;                                                                    //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);
wire BORROW;                                                                    //[BLIT.NET:00034]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
wire SAM1L;                                                                     //[BLIT.NET:00035]    SAM1L,SRCCMP) = ADDR(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,
wire ACKINT;                                                                    //[BLIT.NET:00048]    BWORD) = STATE(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,
wire CMDWRL;                                                                    //[BLIT.NET:00048]    BWORD) = STATE(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,
wire CONWRL;                                                                    //[BLIT.NET:00049]    CONWRL,DAM1L,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,
wire INCRDL;                                                                    //[BLIT.NET:00049]    CONWRL,DAM1L,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,
wire OUTCRDL;                                                                   //[BLIT.NET:00049]    CONWRL,DAM1L,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,
wire RESET;                                                                     //[BLIT.NET:00050]    RESET,SAM1L,STRD,WAITL);
wire STRD;                                                                      //[BLIT.NET:00050]    RESET,SAM1L,STRD,WAITL);
wire INCYCL;                                                                    //[BLIT.NET:00045]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
wire STOP;                                                                      //[BLIT.NET:00047]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
wire drv0_outA_0;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_0;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_1;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_1;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_2;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_2;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_3;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_3;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_4;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_4;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_5;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_5;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_6;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_6;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_7;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_7;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_8;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_8;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_9;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_9;                                                                //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_10;                                                              //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_10;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_11;                                                              //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_11;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_12;                                                              //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_12;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_13;                                                              //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_13;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_14;                                                              //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_14;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_15;                                                              //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_enA_15;                                                               //[BLIT.NET:00017] OUTPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
wire drv0_outA_16;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_16;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_17;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_17;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_18;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_18;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outA_19;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enA_19;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_0;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_0;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_0;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_0;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_0;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_0;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_0;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_0;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_1;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_1;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_1;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_1;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_1;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_1;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_2;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_2;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_2;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_2;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_2;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_2;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_3;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_3;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_3;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_3;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_3;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_3;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_3;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_3;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_4;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_4;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_4;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_4;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_4;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_4;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_4;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_4;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_5;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_5;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_5;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_5;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_5;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_5;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_5;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_5;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_6;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_6;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_6;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_6;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_6;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_6;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_6;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_6;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_7;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_7;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_outD_7;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv1_enD_7;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_outD_7;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv2_enD_7;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_outD_7;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv3_enD_7;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_8;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_8;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_9;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_9;                                                                //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_10;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_10;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_11;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_11;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_12;                                                              //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_enD_12;                                                               //[BLIT.NET:00018]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,
wire drv0_outD_13;                                                              //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
wire drv0_enD_13;                                                               //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
wire drv0_outD_14;                                                              //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
wire drv0_enD_14;                                                               //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
wire drv0_outD_15;                                                              //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;
wire drv0_enD_15;                                                               //[BLIT.NET:00019]    D_13,D_14,D_15,BMREQ,BRD,BWR,BWORD,DSPBAKL,BHOLDL,TESTWRL;

/* The data path */

m_DATA DATA_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.inD_8(inD_8),.inD_9(inD_9),.inD_10(inD_10),.inD_11(inD_11),.inD_12(inD_12),.inD_13(inD_13),.inD_14(inD_14),.inD_15(inD_15),.DAM1L(DAM1L),.DATOEL(DATOEL),.DSTCMP(DSTCMP),.ICNT_0(ICNT_0),.ICNT_1(ICNT_1),.ICNT_2(ICNT_2),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.ID_8(ID_8),.ID_9(ID_9),.ID_10(ID_10),.ID_11(ID_11),.ID_12(ID_12),.ID_13(ID_13),.ID_14(ID_14),.ID_15(ID_15),.LDCMPL(LDCMPL),.LDDSTL(LDDSTL),.LDPATL(LDPATL),.LDMODL(LDMODL),.LDSRCL(LDSRCL),.RES_0(RES_0),.SSWAP(SSWAP),.SRCCMP(SRCCMP),.SRCLTOH(SRCLTOH),.outD_0(drv0_outD_0),.enD_0(drv0_enD_0),.outD_1(drv0_outD_1),.enD_1(drv0_enD_1),.outD_2(drv0_outD_2),.enD_2(drv0_enD_2),.outD_3(drv0_outD_3),.enD_3(drv0_enD_3),.outD_4(drv0_outD_4),.enD_4(drv0_enD_4),.outD_5(drv0_outD_5),.enD_5(drv0_enD_5),.outD_6(drv0_outD_6),.enD_6(drv0_enD_6),.outD_7(drv0_outD_7),.enD_7(drv0_enD_7),.outD_8(drv0_outD_8),.enD_8(drv0_enD_8),.outD_9(drv0_outD_9),.enD_9(drv0_enD_9),.outD_10(drv0_outD_10),.enD_10(drv0_enD_10),.outD_11(drv0_outD_11),.enD_11(drv0_enD_11),.outD_12(drv0_outD_12),.enD_12(drv0_enD_12),.outD_13(drv0_outD_13),.enD_13(drv0_enD_13),.outD_14(drv0_outD_14),.enD_14(drv0_enD_14),.outD_15(drv0_outD_15),.enD_15(drv0_enD_15),.INHIB(INHIB));//[BLIT.NET:00025] DATA_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
                                                                                //[BLIT.NET:00026]    INHIB) = DATA(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,
                                                                                //[BLIT.NET:00027]    D_14,D_15,DAM1L,DATOEL,DSTCMP,ICNT_0,ICNT_1,ICNT_2,ID_0,ID_1,ID_2,ID_3,ID_4,
                                                                                //[BLIT.NET:00028]    ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,ID_13,ID_14,ID_15,LDCMPL,LDDSTL,
                                                                                //[BLIT.NET:00029]    LDPATL,LDMODL,LDSRCL,RES_0,SSWAP,SRCCMP,SRCLTOH);

/* The address generator */

m_ADDR ADDR_ (.MasterClock(MasterClock),.inA_0(inA_0),.inA_1(inA_1),.inA_2(inA_2),.inA_3(inA_3),.inA_4(inA_4),.inA_5(inA_5),.inA_6(inA_6),.inA_7(inA_7),.inA_8(inA_8),.inA_9(inA_9),.inA_10(inA_10),.inA_11(inA_11),.inA_12(inA_12),.inA_13(inA_13),.inA_14(inA_14),.inA_15(inA_15),.inA_16(inA_16),.inA_17(inA_17),.inA_18(inA_18),.inA_19(inA_19),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.ADDBACKL(ADDBACKL),.ADDBLDL(ADDBLDL),.ADSTP(ADSTP),.BUSOE(BUSOE),.SRCENF(SRCENF),.DSTRDL_0(DSTRDL_0),.DSTRDL_1(DSTRDL_1),.DSTRDL_2(DSTRDL_2),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.LDDAL_0(LDDAL_0),.LDDAL_1(LDDAL_1),.LDDAL_2(LDDAL_2),.LDSAL_0(LDSAL_0),.LDSAL_1(LDSAL_1),.LDSAL_2(LDSAL_2),.LDSTPL(LDSTPL),.LDMODL(LDMODL),.LINDR(LINDR),.PCEN(PCEN),.PCWRL_0(PCWRL_0),.PCWRL_1(PCWRL_1),.PCWRL_2(PCWRL_2),.RES_0(RES_0),.RES_1(RES_1),.RUN(RUN),.SDASEL(SDASEL),.SRCRD(SRCRD),.SRCRDL_0(SRCRDL_0),.SRCRDL_1(SRCRDL_1),.SRCRDL_2(SRCRDL_2),.UPDDSTL(UPDDSTL),.UPDPCL(UPDPCL),.UPDSRCL(UPDSRCL),.UPSLDL(UPSLDL),.outA_0(drv0_outA_0),.enA_0(drv0_enA_0),.outA_1(drv0_outA_1),.enA_1(drv0_enA_1),.outA_2(drv0_outA_2),.enA_2(drv0_enA_2),.outA_3(drv0_outA_3),.enA_3(drv0_enA_3),.outA_4(drv0_outA_4),.enA_4(drv0_enA_4),.outA_5(drv0_outA_5),.enA_5(drv0_enA_5),.outA_6(drv0_outA_6),.enA_6(drv0_enA_6),.outA_7(drv0_outA_7),.enA_7(drv0_enA_7),.outA_8(drv0_outA_8),.enA_8(drv0_enA_8),.outA_9(drv0_outA_9),.enA_9(drv0_enA_9),.outA_10(drv0_outA_10),.enA_10(drv0_enA_10),.outA_11(drv0_outA_11),.enA_11(drv0_enA_11),.outA_12(drv0_outA_12),.enA_12(drv0_enA_12),.outA_13(drv0_outA_13),.enA_13(drv0_enA_13),.outA_14(drv0_outA_14),.enA_14(drv0_enA_14),.outA_15(drv0_outA_15),.enA_15(drv0_enA_15),.outA_16(drv0_outA_16),.enA_16(drv0_enA_16),.outA_17(drv0_outA_17),.enA_17(drv0_enA_17),.outA_18(drv0_outA_18),.enA_18(drv0_enA_18),.outA_19(drv0_outA_19),.enA_19(drv0_enA_19),.outD_0(drv1_outD_0),.enD_0(drv1_enD_0),.outD_1(drv1_outD_1),.enD_1(drv1_enD_1),.outD_2(drv1_outD_2),.enD_2(drv1_enD_2),.outD_3(drv1_outD_3),.enD_3(drv1_enD_3),.outD_4(drv1_outD_4),.enD_4(drv1_enD_4),.outD_5(drv1_outD_5),.enD_5(drv1_enD_5),.outD_6(drv1_outD_6),.enD_6(drv1_enD_6),.outD_7(drv1_outD_7),.enD_7(drv1_enD_7),.BORROW(BORROW),.DAM1L(DAM1L),.DSTCMP(DSTCMP),.SAM1L(SAM1L),.SRCCMP(SRCCMP));//[BLIT.NET:00033] ADDR_(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,A_13,A_14,A_15,
                                                                                //[BLIT.NET:00034]    A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,BORROW,DAM1L,DSTCMP,
                                                                                //[BLIT.NET:00035]    SAM1L,SRCCMP) = ADDR(A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11,A_12,
                                                                                //[BLIT.NET:00036]    A_13,A_14,A_15,A_16,A_17,A_18,A_19,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,
                                                                                //[BLIT.NET:00037]    ADDBLDL,ADSTP,BUSOE,SRCENF,DSTRDL_0,DSTRDL_1,DSTRDL_2,ID_0,ID_1,ID_2,ID_3,
                                                                                //[BLIT.NET:00038]    ID_4,ID_5,ID_6,ID_7,LDDAL_0,LDDAL_1,LDDAL_2,LDSAL_0,LDSAL_1,LDSAL_2,LDSTPL,
                                                                                //[BLIT.NET:00039]    LDMODL,LINDR,PCEN,PCWRL_0,PCWRL_1,PCWRL_2,RES_0,RES_1,RUN,SDASEL,SRCRD,
                                                                                //[BLIT.NET:00040]    SRCRDL_0,SRCRDL_1,SRCRDL_2,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL);

/* The state machine and control logic */

m_STATE STATE_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_1(inD_1),.inD_2(inD_2),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.ACKINT(ACKINT),.BORROW(BORROW),.CCLK(CCLK),.CMDWRL(CMDWRL),.CONWRL(CONWRL),.DAM1L(DAM1L),.ID_0(ID_0),.ID_1(ID_1),.ID_2(ID_2),.ID_3(ID_3),.ID_4(ID_4),.ID_5(ID_5),.ID_6(ID_6),.ID_7(ID_7),.INCRDL(INCRDL),.INHIB(INHIB),.OUTCRDL(OUTCRDL),.RESET(RESET),.SAM1L(SAM1L),.STRD(STRD),.WAITL(WAITL),.outD_0(drv2_outD_0),.enD_0(drv2_enD_0),.outD_1(drv2_outD_1),.enD_1(drv2_enD_1),.outD_2(drv2_outD_2),.enD_2(drv2_enD_2),.outD_3(drv2_outD_3),.enD_3(drv2_enD_3),.outD_4(drv2_outD_4),.enD_4(drv2_enD_4),.outD_5(drv2_outD_5),.enD_5(drv2_enD_5),.outD_6(drv2_outD_6),.enD_6(drv2_enD_6),.outD_7(drv2_outD_7),.enD_7(drv2_enD_7),.ADDBACKL(ADDBACKL),.ADDBLDL(ADDBLDL),.ADSTP(ADSTP),.DATOEL(DATOEL),.ICNT_0(ICNT_0),.ICNT_1(ICNT_1),.ICNT_2(ICNT_2),.INCYCL(INCYCL),.LDCMPL(LDCMPL),.LDDAL_0(LDDAL_0),.LDDAL_1(LDDAL_1),.LDDAL_2(LDDAL_2),.LDDSTL(LDDSTL),.LDMODL(LDMODL),.LDPATL(LDPATL),.LDSAL_0(LDSAL_0),.LDSAL_1(LDSAL_1),.LDSAL_2(LDSAL_2),.LDSRCL(LDSRCL),.LDSTPL(LDSTPL),.LINDR(LINDR),.PCEN(PCEN),.RES_0(RES_0),.RES_1(RES_1),.RUN(RUN),.SDASEL(SDASEL),.SRCENF(SRCENF),.SRCLTOH(SRCLTOH),.SRCRD(SRCRD),.SSWAP(SSWAP),.STOP(STOP),.UPDDSTL(UPDDSTL),.UPDPCL(UPDPCL),.UPDSRCL(UPDSRCL),.UPSLDL(UPSLDL),.BMREQ(BMREQ),.BRD(BRD),.BWR(BWR),.BWORD(BWORD));//[BLIT.NET:00044] STATE_(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ADDBACKL,ADDBLDL,ADSTP,DATOEL,ICNT_0,
                                                                                //[BLIT.NET:00045]    ICNT_1,ICNT_2,INCYCL,LDCMPL,LDDAL_0,LDDAL_1,LDDAL_2,LDDSTL,LDMODL,LDPATL,
                                                                                //[BLIT.NET:00046]    LDSAL_0,LDSAL_1,LDSAL_2,LDSRCL,LDSTPL,LINDR,PCEN,RES_0,RES_1,RUN,SDASEL,
                                                                                //[BLIT.NET:00047]    SRCENF,SRCLTOH,SRCRD,SSWAP,STOP,UPDDSTL,UPDPCL,UPDSRCL,UPSLDL,BMREQ,BRD,BWR,
                                                                                //[BLIT.NET:00048]    BWORD) = STATE(D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,ACKINT,BORROW,CCLK,CMDWRL,
                                                                                //[BLIT.NET:00049]    CONWRL,DAM1L,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,INCRDL,INHIB,OUTCRDL,
                                                                                //[BLIT.NET:00050]    RESET,SAM1L,STRD,WAITL);

/* The bus control and decode logic */

m_BUSCON BUSCON_ (.MasterClock(MasterClock),.inD_0(inD_0),.inD_3(inD_3),.inD_4(inD_4),.inD_5(inD_5),.inD_6(inD_6),.inD_7(inD_7),.A_0(inA_0),.A_1(inA_1),.A_2(inA_2),.A_3(inA_3),.A_4(inA_4),.BCSL(BCSL),.HLDAL(HLDAL),.DSPBRQL(DSPBRQL),.ID_0(ID_0),.INTL(INTL),.IORDL(IORDL),.IOWRL(IOWRL),.INCYCL(INCYCL),.RESET(RESET),.RUN(RUN),.STOP(STOP),.outD_0(drv3_outD_0),.enD_0(drv3_enD_0),.outD_3(drv3_outD_3),.enD_3(drv3_enD_3),.outD_4(drv3_outD_4),.enD_4(drv3_enD_4),.outD_5(drv3_outD_5),.enD_5(drv3_enD_5),.outD_6(drv3_outD_6),.enD_6(drv3_enD_6),.outD_7(drv3_outD_7),.enD_7(drv3_enD_7),.ACKINT(ACKINT),.BHOLDL(BHOLDL),.BUSOE(BUSOE),.CMDWRL(CMDWRL),.CONWRL(CONWRL),.DSPBAKL(DSPBAKL),.DSTRDL_0(DSTRDL_0),.DSTRDL_1(DSTRDL_1),.DSTRDL_2(DSTRDL_2),.INCRDL(INCRDL),.OUTCRDL(OUTCRDL),.PCWRL_0(PCWRL_0),.PCWRL_1(PCWRL_1),.PCWRL_2(PCWRL_2),.SRCRDL_0(SRCRDL_0),.SRCRDL_1(SRCRDL_1),.SRCRDL_2(SRCRDL_2),.STRD(STRD),.TESTWRL(TESTWRL));//[BLIT.NET:00054] BUSCON_(D_0,D_3,D_4,D_5,D_6,D_7,ACKINT,BHOLDL,BUSOE,CMDWRL,CONWRL,DSPBAKL,
                                                                                //[BLIT.NET:00055]    DSTRDL_0,DSTRDL_1,DSTRDL_2,INCRDL,OUTCRDL,PCWRL_0,PCWRL_1,PCWRL_2,SRCRDL_0,
                                                                                //[BLIT.NET:00056]    SRCRDL_1,SRCRDL_2,STRD,TESTWRL) = BUSCON(D_0,D_3,D_4,D_5,D_6,D_7,A_0,A_1,A_2,
                                                                                //[BLIT.NET:00057]    A_3,A_4,BCSL,HLDAL,DSPBRQL,ID_0,INTL,IORDL,IOWRL,INCYCL,RESET,RUN,STOP);

/* Locally invert some inputs, and buffer to keep fanouts down */

assign RESET = ~RESETL;                                                         //[BLIT.NET:00061] RESETINV_(RESET) = N1B(RESETL);
assign ID_0 = inD_0;                                                            //[BLIT.NET:00062] DBUF_0_(ID_0) = B3A(D_0);
assign ID_1 = inD_1;                                                            //[BLIT.NET:00063] DBUF_1_(ID_1) = B3A(D_1);
assign ID_2 = inD_2;                                                            //[BLIT.NET:00064] DBUF_2_(ID_2) = B3A(D_2);
assign ID_3 = inD_3;                                                            //[BLIT.NET:00065] DBUF_3_(ID_3) = B3A(D_3);
assign ID_4 = inD_4;                                                            //[BLIT.NET:00066] DBUF_4_(ID_4) = B3A(D_4);
assign ID_5 = inD_5;                                                            //[BLIT.NET:00067] DBUF_5_(ID_5) = B3A(D_5);
assign ID_6 = inD_6;                                                            //[BLIT.NET:00068] DBUF_6_(ID_6) = B3A(D_6);
assign ID_7 = inD_7;                                                            //[BLIT.NET:00069] DBUF_7_(ID_7) = B3A(D_7);
assign ID_8 = inD_8;                                                            //[BLIT.NET:00070] DBUF_8_(ID_8) = B3A(D_8);
assign ID_9 = inD_9;                                                            //[BLIT.NET:00071] DBUF_9_(ID_9) = B3A(D_9);
assign ID_10 = inD_10;                                                          //[BLIT.NET:00072] DBUF_10_(ID_10) = B3A(D_10);
assign ID_11 = inD_11;                                                          //[BLIT.NET:00073] DBUF_11_(ID_11) = B3A(D_11);
assign ID_12 = inD_12;                                                          //[BLIT.NET:00074] DBUF_12_(ID_12) = B3A(D_12);
assign ID_13 = inD_13;                                                          //[BLIT.NET:00075] DBUF_13_(ID_13) = B3A(D_13);
assign ID_14 = inD_14;                                                          //[BLIT.NET:00076] DBUF_14_(ID_14) = B3A(D_14);
assign ID_15 = inD_15;                                                          //[BLIT.NET:00077] DBUF_15_(ID_15) = B3A(D_15);

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
assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0) | (drv2_outD_0 & drv2_enD_0) | (drv3_outD_0 & drv3_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0 | drv2_enD_0 | drv3_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1) | (drv2_outD_1 & drv2_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1 | drv2_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2) | (drv2_outD_2 & drv2_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2 | drv2_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3) | (drv2_outD_3 & drv2_enD_3) | (drv3_outD_3 & drv3_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3 | drv2_enD_3 | drv3_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4) | (drv2_outD_4 & drv2_enD_4) | (drv3_outD_4 & drv3_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4 | drv2_enD_4 | drv3_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5) | (drv2_outD_5 & drv2_enD_5) | (drv3_outD_5 & drv3_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5 | drv2_enD_5 | drv3_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6) | (drv2_outD_6 & drv2_enD_6) | (drv3_outD_6 & drv3_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6 | drv2_enD_6 | drv3_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7) | (drv2_outD_7 & drv2_enD_7) | (drv3_outD_7 & drv3_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7 | drv2_enD_7 | drv3_enD_7;
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
endmodule                                                                       //[BLIT.NET:00079] END MODULE;
