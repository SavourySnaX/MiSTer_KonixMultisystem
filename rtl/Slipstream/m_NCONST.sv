module m_NCONST                                                                 //[DRAM.NET:00053] MODULE NCONST;
(                                                                               //[DRAM.NET:00053] MODULE NCONST;

    input    MasterClock,
    input    inDD_0,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_1,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_2,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_3,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_4,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_5,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_6,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_7,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_8,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_9,                                                            //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_10,                                                           //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_11,                                                           //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_12,                                                           //[DRAM.NET:00055] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_13,                                                           //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    inDD_14,                                                           //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    inDD_15,                                                           //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    A_0,                                                               //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    A_1,                                                               //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    A_2,                                                               //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    A_3,                                                               //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    CONEN,                                                             //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    RESETL,                                                            //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    TRARDL,                                                            //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    IXRDL,                                                             //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    DMA1RDL,                                                           //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    MZ2RDL,                                                            //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
    input    PCRDL,                                                             //[DRAM.NET:00057]    PCRDL,MODRDL,GPRDL,NOCONL;
    input    MODRDL,                                                            //[DRAM.NET:00057]    PCRDL,MODRDL,GPRDL,NOCONL;
    input    GPRDL,                                                             //[DRAM.NET:00057]    PCRDL,MODRDL,GPRDL,NOCONL;
    input    NOCONL,                                                            //[DRAM.NET:00057]    PCRDL,MODRDL,GPRDL,NOCONL;
                                                                                //[DRAM.NET:00056]    DD_13,DD_14,DD_15,A_0,A_1,A_2,A_3,CONEN,RESETL,TRARDL,IXRDL,DMA1RDL,MZ2RDL,
                                                                                //[DRAM.NET:00057]    PCRDL,MODRDL,GPRDL,NOCONL;
    output    outDD_0, enDD_0,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_1, enDD_1,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_2, enDD_2,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_3, enDD_3,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_4, enDD_4,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_5, enDD_5,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_6, enDD_6,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_7, enDD_7,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_8, enDD_8,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_9, enDD_9,                                                  //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_10, enDD_10,                                                //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_11, enDD_11,                                                //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_12, enDD_12,                                                //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_13, enDD_13,                                                //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
    output    outDD_14, enDD_14,                                                //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
    output    outDD_15, enDD_15                                                 //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
);                                                                              //[DRAM.NET:00053] MODULE NCONST;

                                                                                //[DRAM.NET:00061] LEVEL FUNCTION;
wire REGRD;                                                                     //[DRAM.NET:00066] REGRD_(REGRD) = MACNAND7(TRARDL,IXRDL,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL);
wire RESET;                                                                     //[DRAM.NET:00067] ZERO_(ZERO) = NR2C(RESET,REGRD);
wire ZERO;                                                                      //[DRAM.NET:00067] ZERO_(ZERO) = NR2C(RESET,REGRD);
wire DAL_0;                                                                     //[DRAM.NET:00069] DAL_0_(DAL_0) = ND2C(A_0,ZERO);
wire DAL_1;                                                                     //[DRAM.NET:00070] DAL_1_(DAL_1) = ND2C(A_1,ZERO);
wire DAL_2;                                                                     //[DRAM.NET:00071] DAL_2_(DAL_2) = ND2C(A_2,ZERO);
wire DAL_3;                                                                     //[DRAM.NET:00072] DAL_3_(DAL_3) = ND2C(A_3,ZERO);
wire DA_0;                                                                      //[DRAM.NET:00073] DA_0_(DA_0) = N1C(DAL_0);
wire DA_1;                                                                      //[DRAM.NET:00074] DA_1_(DA_1) = N1C(DAL_1);
wire DA_2;                                                                      //[DRAM.NET:00075] DA_2_(DA_2) = N1C(DAL_2);
wire DA_3;                                                                      //[DRAM.NET:00076] DA_3_(DA_3) = N1C(DAL_3);
wire D_0;                                                                       //[DRAM.NET:00078] D_0_(D_0) = NR3A(DAL_0,DA_1,DA_2);
wire BY_2;                                                                      //[DRAM.NET:00079] BY_2_(BY_2) = ND3A(DAL_2,DA_1,DAL_0);
wire BY_3;                                                                      //[DRAM.NET:00080] BY_3_(BY_3) = ND4A(DAL_2,DAL_3,DA_0,DA_1);
wire BY_4;                                                                      //[DRAM.NET:00081] BY_4_(BY_4) = ND4A(DAL_3,DA_2,DAL_0,DAL_1);
wire BY_5;                                                                      //[DRAM.NET:00082] BY_5_(BY_5) = ND3A(DA_2,DAL_1,DA_0);
wire BY_6;                                                                      //[DRAM.NET:00083] BY_6_(BY_6) = ND3A(DA_1,DA_2,DAL_0);
wire BY_7;                                                                      //[DRAM.NET:00084] BY_7_(BY_7) = ND3A(DA_0,DA_1,DA_2);
wire BY_8;                                                                      //[DRAM.NET:00085] BY_8_(BY_8) = ND4A(DA_3,DAL_0,DAL_1,DAL_2);
wire BY_9;                                                                      //[DRAM.NET:00086] BY_9_(BY_9) = ND4A(DA_3,DAL_1,DAL_2,DA_0);
wire BY_12;                                                                     //[DRAM.NET:00087] BY_12_(BY_12) = ND4A(DA_2,DA_3,DAL_0,DAL_1);
wire AB9_0;                                                                     //[DRAM.NET:00088] AB9_0_(AB9_0) = ND3A(DA_3,DAL_2,DA_1);
wire AB9_1;                                                                     //[DRAM.NET:00089] AB9_1_(AB9_1) = ND3A(DA_3,DAL_2,DA_0);
wire AB9;                                                                       //[DRAM.NET:00090] AB9_(AB9) = ND2A(AB9_0,AB9_1);
wire AB9L;                                                                      //[DRAM.NET:00091] AB9L_(AB9L) = N1C(AB9);
wire D_1;                                                                       //[DRAM.NET:00093] D_1_(D_1) = ND2A(BY_2,BY_9);
wire D_2;                                                                       //[DRAM.NET:00094] D_2_(D_2) = ND2A(BY_3,AB9L);
wire D_3;                                                                       //[DRAM.NET:00095] D_3_(D_3) = ND2A(BY_4,AB9L);
wire D_4;                                                                       //[DRAM.NET:00096] D_4_(D_4) = ND2A(BY_5,AB9L);
wire D_5;                                                                       //[DRAM.NET:00097] D_5_(D_5) = ND2A(BY_6,AB9L);
wire D_6;                                                                       //[DRAM.NET:00098] D_6_(D_6) = ND2A(BY_7,AB9L);
wire D_7;                                                                       //[DRAM.NET:00099] D_7_(D_7) = ND2A(BY_8,AB9L);
wire D_15;                                                                      //[DRAM.NET:00100] D_15_(D_15) = ND2A(BY_12,AB9L);
wire CON;                                                                       //[DRAM.NET:00102] DD_0_(DD_0) = BTS4B(D_0,CON);
wire ASS_1;                                                                     //[DRAM.NET:00103] DD_1_(DD_1) = BTS4B(D_1,ASS_1);
wire ASS_4;                                                                     //[DRAM.NET:00106] DD_4_(DD_4) = BTS4B(D_4,ASS_4);
wire ASS_5;                                                                     //[DRAM.NET:00107] DD_5_(DD_5) = BTS4B(D_5,ASS_5);
wire ASS_7;                                                                     //[DRAM.NET:00109] DD_7_(DD_7) = BTS4B(D_7,ASS_7);
wire ASS_8;                                                                     //[DRAM.NET:00110] DD_8_(DD_8) = BTS5B(AB9L,ASS_8);
wire ASS_9;                                                                     //[DRAM.NET:00111] DD_9_(DD_9) = BTS5B(AB9L,ASS_9);
wire ASS_12;                                                                    //[DRAM.NET:00114] DD_12_(DD_12) = BTS5B(AB9L,ASS_12);
wire CONL;                                                                      //[DRAM.NET:00119] CONL_(CONL) = NR2C(CONEN,RESET);
wire REGRDL;                                                                    //[DRAM.NET:00129] ASS_12_(ASS_12) = ND3A(REGRDL,NOCONL,CONL);
wire drv0_outDD_0;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_0;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_1;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_1;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_2;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_2;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_3;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_3;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_4;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_4;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_5;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_5;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_6;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_6;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_7;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_7;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_8;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_8;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_9;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_9;                                                               //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_10;                                                             //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_10;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_11;                                                             //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_11;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_12;                                                             //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_12;                                                              //[DRAM.NET:00058] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_13;                                                             //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
wire drv0_enDD_13;                                                              //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
wire drv0_outDD_14;                                                             //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
wire drv0_enDD_14;                                                              //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
wire drv0_outDD_15;                                                             //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
wire drv0_enDD_15;                                                              //[DRAM.NET:00059]    DD_13,DD_14,DD_15;
/* Set all these fake locations to zero if reset or dsp reading a register */
/* First check for register read */

m_MACNAND7 REGRD_ (.MasterClock(MasterClock),.A(TRARDL),.B(IXRDL),.C(DMA1RDL),.D(MZ2RDL),.E(PCRDL),.F(MODRDL),.G(GPRDL),.Q(REGRD));//[DRAM.NET:00066] REGRD_(REGRD) = MACNAND7(TRARDL,IXRDL,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL);
assign ZERO = ~(RESET | REGRD);                                                 //[DRAM.NET:00067] ZERO_(ZERO) = NR2C(RESET,REGRD);
assign RESET = ~RESETL;                                                         //[DRAM.NET:00068] RESET_(RESET) = N1A(RESETL);
assign DAL_0 = ~(A_0 & ZERO);                                                   //[DRAM.NET:00069] DAL_0_(DAL_0) = ND2C(A_0,ZERO);
assign DAL_1 = ~(A_1 & ZERO);                                                   //[DRAM.NET:00070] DAL_1_(DAL_1) = ND2C(A_1,ZERO);
assign DAL_2 = ~(A_2 & ZERO);                                                   //[DRAM.NET:00071] DAL_2_(DAL_2) = ND2C(A_2,ZERO);
assign DAL_3 = ~(A_3 & ZERO);                                                   //[DRAM.NET:00072] DAL_3_(DAL_3) = ND2C(A_3,ZERO);
assign DA_0 = ~DAL_0;                                                           //[DRAM.NET:00073] DA_0_(DA_0) = N1C(DAL_0);
assign DA_1 = ~DAL_1;                                                           //[DRAM.NET:00074] DA_1_(DA_1) = N1C(DAL_1);
assign DA_2 = ~DAL_2;                                                           //[DRAM.NET:00075] DA_2_(DA_2) = N1C(DAL_2);
assign DA_3 = ~DAL_3;                                                           //[DRAM.NET:00076] DA_3_(DA_3) = N1C(DAL_3);

assign D_0 = ~(DAL_0 | DA_1 | DA_2);                                            //[DRAM.NET:00078] D_0_(D_0) = NR3A(DAL_0,DA_1,DA_2);
assign BY_2 = ~(DAL_2 & DA_1 & DAL_0);                                          //[DRAM.NET:00079] BY_2_(BY_2) = ND3A(DAL_2,DA_1,DAL_0);
assign BY_3 = ~(DAL_2 & DAL_3 & DA_0 & DA_1);                                   //[DRAM.NET:00080] BY_3_(BY_3) = ND4A(DAL_2,DAL_3,DA_0,DA_1);
assign BY_4 = ~(DAL_3 & DA_2 & DAL_0 & DAL_1);                                  //[DRAM.NET:00081] BY_4_(BY_4) = ND4A(DAL_3,DA_2,DAL_0,DAL_1);
assign BY_5 = ~(DA_2 & DAL_1 & DA_0);                                           //[DRAM.NET:00082] BY_5_(BY_5) = ND3A(DA_2,DAL_1,DA_0);
assign BY_6 = ~(DA_1 & DA_2 & DAL_0);                                           //[DRAM.NET:00083] BY_6_(BY_6) = ND3A(DA_1,DA_2,DAL_0);
assign BY_7 = ~(DA_0 & DA_1 & DA_2);                                            //[DRAM.NET:00084] BY_7_(BY_7) = ND3A(DA_0,DA_1,DA_2);
assign BY_8 = ~(DA_3 & DAL_0 & DAL_1 & DAL_2);                                  //[DRAM.NET:00085] BY_8_(BY_8) = ND4A(DA_3,DAL_0,DAL_1,DAL_2);
assign BY_9 = ~(DA_3 & DAL_1 & DAL_2 & DA_0);                                   //[DRAM.NET:00086] BY_9_(BY_9) = ND4A(DA_3,DAL_1,DAL_2,DA_0);
assign BY_12 = ~(DA_2 & DA_3 & DAL_0 & DAL_1);                                  //[DRAM.NET:00087] BY_12_(BY_12) = ND4A(DA_2,DA_3,DAL_0,DAL_1);
assign AB9_0 = ~(DA_3 & DAL_2 & DA_1);                                          //[DRAM.NET:00088] AB9_0_(AB9_0) = ND3A(DA_3,DAL_2,DA_1);
assign AB9_1 = ~(DA_3 & DAL_2 & DA_0);                                          //[DRAM.NET:00089] AB9_1_(AB9_1) = ND3A(DA_3,DAL_2,DA_0);
assign AB9 = ~(AB9_0 & AB9_1);                                                  //[DRAM.NET:00090] AB9_(AB9) = ND2A(AB9_0,AB9_1);
assign AB9L = ~AB9;                                                             //[DRAM.NET:00091] AB9L_(AB9L) = N1C(AB9);

assign D_1 = ~(BY_2 & BY_9);                                                    //[DRAM.NET:00093] D_1_(D_1) = ND2A(BY_2,BY_9);
assign D_2 = ~(BY_3 & AB9L);                                                    //[DRAM.NET:00094] D_2_(D_2) = ND2A(BY_3,AB9L);
assign D_3 = ~(BY_4 & AB9L);                                                    //[DRAM.NET:00095] D_3_(D_3) = ND2A(BY_4,AB9L);
assign D_4 = ~(BY_5 & AB9L);                                                    //[DRAM.NET:00096] D_4_(D_4) = ND2A(BY_5,AB9L);
assign D_5 = ~(BY_6 & AB9L);                                                    //[DRAM.NET:00097] D_5_(D_5) = ND2A(BY_6,AB9L);
assign D_6 = ~(BY_7 & AB9L);                                                    //[DRAM.NET:00098] D_6_(D_6) = ND2A(BY_7,AB9L);
assign D_7 = ~(BY_8 & AB9L);                                                    //[DRAM.NET:00099] D_7_(D_7) = ND2A(BY_8,AB9L);
assign D_15 = ~(BY_12 & AB9L);                                                  //[DRAM.NET:00100] D_15_(D_15) = ND2A(BY_12,AB9L);

assign drv0_outDD_0 = D_0; assign drv0_enDD_0 = CON;                            //[DRAM.NET:00102] DD_0_(DD_0) = BTS4B(D_0,CON);
assign drv0_outDD_1 = D_1; assign drv0_enDD_1 = ASS_1;                          //[DRAM.NET:00103] DD_1_(DD_1) = BTS4B(D_1,ASS_1);
assign drv0_outDD_2 = D_2; assign drv0_enDD_2 = ASS_1;                          //[DRAM.NET:00104] DD_2_(DD_2) = BTS4B(D_2,ASS_1);
assign drv0_outDD_3 = D_3; assign drv0_enDD_3 = ASS_1;                          //[DRAM.NET:00105] DD_3_(DD_3) = BTS4B(D_3,ASS_1);
assign drv0_outDD_4 = D_4; assign drv0_enDD_4 = ASS_4;                          //[DRAM.NET:00106] DD_4_(DD_4) = BTS4B(D_4,ASS_4);
assign drv0_outDD_5 = D_5; assign drv0_enDD_5 = ASS_5;                          //[DRAM.NET:00107] DD_5_(DD_5) = BTS4B(D_5,ASS_5);
assign drv0_outDD_6 = D_6; assign drv0_enDD_6 = ASS_5;                          //[DRAM.NET:00108] DD_6_(DD_6) = BTS4B(D_6,ASS_5);
assign drv0_outDD_7 = D_7; assign drv0_enDD_7 = ASS_7;                          //[DRAM.NET:00109] DD_7_(DD_7) = BTS4B(D_7,ASS_7);
assign drv0_outDD_8 = ~AB9L; assign drv0_enDD_8 = ASS_8;                        //[DRAM.NET:00110] DD_8_(DD_8) = BTS5B(AB9L,ASS_8);
assign drv0_outDD_9 = ~AB9L; assign drv0_enDD_9 = ASS_9;                        //[DRAM.NET:00111] DD_9_(DD_9) = BTS5B(AB9L,ASS_9);
assign drv0_outDD_10 = ~AB9L; assign drv0_enDD_10 = ASS_9;                      //[DRAM.NET:00112] DD_10_(DD_10) = BTS5B(AB9L,ASS_9);
assign drv0_outDD_11 = ~AB9L; assign drv0_enDD_11 = ASS_9;                      //[DRAM.NET:00113] DD_11_(DD_11) = BTS5B(AB9L,ASS_9);
assign drv0_outDD_12 = ~AB9L; assign drv0_enDD_12 = ASS_12;                     //[DRAM.NET:00114] DD_12_(DD_12) = BTS5B(AB9L,ASS_12);
assign drv0_outDD_13 = ~AB9L; assign drv0_enDD_13 = ASS_12;                     //[DRAM.NET:00115] DD_13_(DD_13) = BTS5B(AB9L,ASS_12);
assign drv0_outDD_14 = ~AB9L; assign drv0_enDD_14 = ASS_12;                     //[DRAM.NET:00116] DD_14_(DD_14) = BTS5B(AB9L,ASS_12);
assign drv0_outDD_15 = D_15; assign drv0_enDD_15 = ASS_12;                      //[DRAM.NET:00117] DD_15_(DD_15) = BTS4B(D_15,ASS_12);

assign CONL = ~(CONEN | RESET);                                                 //[DRAM.NET:00119] CONL_(CONL) = NR2C(CONEN,RESET);
assign CON = ~CONL;                                                             //[DRAM.NET:00120] CON_(CON) = N1A(CONL);
/* Use these decodes for asserting unused bits of other DSP locations
   to keep the internal bus driven */
assign ASS_1 = ~(GPRDL & CONL);                                                 //[DRAM.NET:00123] ASS_1_(ASS_1) = ND2A(GPRDL,CONL);
assign ASS_4 = ~(GPRDL & DMA1RDL & CONL);                                       //[DRAM.NET:00124] ASS_4_(ASS_4) = ND3A(GPRDL,DMA1RDL,CONL);
assign ASS_5 = ~(GPRDL & DMA1RDL & MZ2RDL & CONL);                              //[DRAM.NET:00125] ASS_5_(ASS_5) = ND4A(GPRDL,DMA1RDL,MZ2RDL,CONL);
assign ASS_7 = ~(GPRDL & DMA1RDL & MZ2RDL & MODRDL & NOCONL & CONL);            //[DRAM.NET:00126] ASS_7_(ASS_7) = ND6A(GPRDL,DMA1RDL,MZ2RDL,MODRDL,NOCONL,CONL);
assign ASS_8 = ~(GPRDL & MZ2RDL & PCRDL & MODRDL & NOCONL & CONL);              //[DRAM.NET:00127] ASS_8_(ASS_8) = ND6A(GPRDL,MZ2RDL,PCRDL,MODRDL,NOCONL,CONL);
assign ASS_9 = ~(GPRDL & TRARDL & IXRDL & MZ2RDL & PCRDL & MODRDL & NOCONL & CONL);//[DRAM.NET:00128] ASS_9_(ASS_9) = ND8A(GPRDL,TRARDL,IXRDL,MZ2RDL,PCRDL,MODRDL,NOCONL,CONL);
assign ASS_12 = ~(REGRDL & NOCONL & CONL);                                      //[DRAM.NET:00129] ASS_12_(ASS_12) = ND3A(REGRDL,NOCONL,CONL);
assign REGRDL = ~REGRD;                                                         //[DRAM.NET:00130] REGRDL_(REGRDL) = N1A(REGRD);
assign outDD_0 = (drv0_outDD_0 & drv0_enDD_0);
assign enDD_0 = drv0_enDD_0;
assign outDD_1 = (drv0_outDD_1 & drv0_enDD_1);
assign enDD_1 = drv0_enDD_1;
assign outDD_2 = (drv0_outDD_2 & drv0_enDD_2);
assign enDD_2 = drv0_enDD_2;
assign outDD_3 = (drv0_outDD_3 & drv0_enDD_3);
assign enDD_3 = drv0_enDD_3;
assign outDD_4 = (drv0_outDD_4 & drv0_enDD_4);
assign enDD_4 = drv0_enDD_4;
assign outDD_5 = (drv0_outDD_5 & drv0_enDD_5);
assign enDD_5 = drv0_enDD_5;
assign outDD_6 = (drv0_outDD_6 & drv0_enDD_6);
assign enDD_6 = drv0_enDD_6;
assign outDD_7 = (drv0_outDD_7 & drv0_enDD_7);
assign enDD_7 = drv0_enDD_7;
assign outDD_8 = (drv0_outDD_8 & drv0_enDD_8);
assign enDD_8 = drv0_enDD_8;
assign outDD_9 = (drv0_outDD_9 & drv0_enDD_9);
assign enDD_9 = drv0_enDD_9;
assign outDD_10 = (drv0_outDD_10 & drv0_enDD_10);
assign enDD_10 = drv0_enDD_10;
assign outDD_11 = (drv0_outDD_11 & drv0_enDD_11);
assign enDD_11 = drv0_enDD_11;
assign outDD_12 = (drv0_outDD_12 & drv0_enDD_12);
assign enDD_12 = drv0_enDD_12;
assign outDD_13 = (drv0_outDD_13 & drv0_enDD_13);
assign enDD_13 = drv0_enDD_13;
assign outDD_14 = (drv0_outDD_14 & drv0_enDD_14);
assign enDD_14 = drv0_enDD_14;
assign outDD_15 = (drv0_outDD_15 & drv0_enDD_15);
assign enDD_15 = drv0_enDD_15;
endmodule                                                                       //[DRAM.NET:00131] END MODULE;
