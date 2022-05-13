                                                                                //[INSTRUCT.NET:00001] COMPILE;
                                                                                //[INSTRUCT.NET:00002] DIRECTORY MASTER;

module m_INSTRUCT                                                               //[INSTRUCT.NET:00004] MODULE INSTRUCT;
(                                                                               //[INSTRUCT.NET:00004] MODULE INSTRUCT;

    input    MasterClock,
    input    PD_9,                                                              //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    PD_10,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    PD_11,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    PD_12,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    PD_13,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    PD_14,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    PD_15,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DA_0,                                                              //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DA_1,                                                              //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DA_2,                                                              //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DA_3,                                                              //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DAL_0,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DAL_1,                                                             //[INSTRUCT.NET:00006] INPUTS	PD_9,PD_10,PD_11,PD_12,PD_13,PD_14,PD_15,DA_0,DA_1,DA_2,DA_3,DAL_0,DAL_1,
    input    DAL_2,                                                             //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    DAL_3,                                                             //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    REGS,                                                              //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    RUN,                                                               //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    RUNANT,                                                            //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    XCK,                                                               //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    RESETL,                                                            //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    CARRY,                                                             //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    input    TRURD,                                                             //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
                                                                                //[INSTRUCT.NET:00007]    DAL_2,DAL_3,REGS,RUN,RUNANT,XCK,RESETL,CARRY,TRURD;
    output    PCRDL,                                                            //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    PCWRL,                                                            //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    LEFTDACWRL,                                                       //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    RTDACWRL,                                                         //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    ASEL_0,                                                           //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    ASEL_1,                                                           //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    IXWRL,                                                            //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    IXRDL,                                                            //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    TRARDL,                                                           //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    MODWRL,                                                           //[INSTRUCT.NET:00008] OUTPUTS	PCRDL,PCWRL,LEFTDACWRL,RTDACWRL,ASEL_0,ASEL_1,IXWRL,IXRDL,TRARDL,MODWRL,
    output    MODRDL,                                                           //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    XWRL,                                                             //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    XRDL,                                                             //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    ZWRL,                                                             //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    ZRDL,                                                             //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    RESWRL,                                                           //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    CARRYWRL,                                                         //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    MZ0RDL,                                                           //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    MZ1RDL,                                                           //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    MZ2RDL,                                                           //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    MZ0WRL,                                                           //[INSTRUCT.NET:00009]    MODRDL,XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,
    output    MZ1WRL,                                                           //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    MZ2WRL,                                                           //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    MULTL,                                                            //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    MACL,                                                             //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    WITHCYL,                                                          //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    SUB,                                                              //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    DMA0WRL,                                                          //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    DMA1WRL,                                                          //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    DMDWRL,                                                           //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    DMDRDL,                                                           //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    INTRUD,                                                           //[INSTRUCT.NET:00010]    MZ1WRL,MZ2WRL,MULTL,MACL,WITHCYL,SUB,DMA0WRL,DMA1WRL,DMDWRL,DMDRDL,INTRUD,
    output    PDK_11,                                                           //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    PDK_12,                                                           //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    PDK_14,                                                           //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    PDKL_11,                                                          //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    PDKL_12,                                                          //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    PDKL_13,                                                          //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    PDKL_14,                                                          //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    READL,                                                            //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    WRITEL,                                                           //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    CCFL,                                                             //[INSTRUCT.NET:00011]    PDK_11,PDK_12,PDK_14,PDKL_11,PDKL_12,PDKL_13,PDKL_14,READL,WRITEL,CCFL,
    output    DMA0RDL,                                                          //[INSTRUCT.NET:00012]    DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC;
    output    DMA1RDL,                                                          //[INSTRUCT.NET:00012]    DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC;
    output    GPRDL,                                                            //[INSTRUCT.NET:00012]    DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC;
    output    GPWRL,                                                            //[INSTRUCT.NET:00012]    DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC;
    output    DAC                                                               //[INSTRUCT.NET:00012]    DMA0RDL,DMA1RDL,GPRDL,GPWRL,DAC;
);                                                                              //[INSTRUCT.NET:00004] MODULE INSTRUCT;
                                                                                //[INSTRUCT.NET:00013] LEVEL FUNCTION;
wire INTRUDAL;                                                                  //[INSTRUCT.NET:00027] INTRUDAL_(INTRUDAL) = ND5A(PD_11,PD_12,PD_13,PD_14,PD_15);
wire INTRUDL;                                                                   //[INSTRUCT.NET:00028] INTRUDL_(INTRUDL) = AND2A(INTRUDAL,RUNANT);
wire INTRUDKL;                                                                  //[INSTRUCT.NET:00030] INTRUDCK_(INTRUDKL,INTRUD) = FD2A(INTRUDL,XCK,RESETL);
wire RUNANTL;                                                                   //[INSTRUCT.NET:00033] RUNANTL_(RUNANTL) = N1B(RUNANT);
wire PDD_10;                                                                    //[INSTRUCT.NET:00037] PDD_10_(PDD_10) = NR2A(PD_10,RUNANTL);
wire PDD_11;                                                                    //[INSTRUCT.NET:00038] PDD_11_(PDD_11) = NR2A(PD_11,RUNANTL);
wire PDD_12;                                                                    //[INSTRUCT.NET:00039] PDD_12_(PDD_12) = NR2A(PD_12,RUNANTL);
wire PDD_13;                                                                    //[INSTRUCT.NET:00040] PDD_13_(PDD_13) = NR2A(PD_13,RUNANTL);
wire PDD_14;                                                                    //[INSTRUCT.NET:00041] PDD_14_(PDD_14) = NR2A(PD_14,RUNANTL);
wire PDD_15;                                                                    //[INSTRUCT.NET:00042] PDD_15_(PDD_15) = NR2A(PD_15,RUNANTL);
wire PDKUL_10;                                                                  //[INSTRUCT.NET:00043] PDKU_10_(PDKUL_10,PDKU_10) = FD2A(PDD_10,XCK,RESETL);
wire PDKU_10;                                                                   //[INSTRUCT.NET:00043] PDKU_10_(PDKUL_10,PDKU_10) = FD2A(PDD_10,XCK,RESETL);
wire PDKUL_11;                                                                  //[INSTRUCT.NET:00044] PDKU_11_(PDKUL_11,PDKU_11) = FD2A(PDD_11,XCK,RESETL);
wire PDKU_11;                                                                   //[INSTRUCT.NET:00044] PDKU_11_(PDKUL_11,PDKU_11) = FD2A(PDD_11,XCK,RESETL);
wire PDKUL_12;                                                                  //[INSTRUCT.NET:00045] PDKU_12_(PDKUL_12,PDKU_12) = FD2A(PDD_12,XCK,RESETL);
wire PDKU_12;                                                                   //[INSTRUCT.NET:00045] PDKU_12_(PDKUL_12,PDKU_12) = FD2A(PDD_12,XCK,RESETL);
wire PDKUL_13;                                                                  //[INSTRUCT.NET:00046] PDKU_13_(PDKUL_13,PDKU_13) = FD2A(PDD_13,XCK,RESETL);
wire PDKU_13;                                                                   //[INSTRUCT.NET:00046] PDKU_13_(PDKUL_13,PDKU_13) = FD2A(PDD_13,XCK,RESETL);
wire PDKUL_14;                                                                  //[INSTRUCT.NET:00047] PDKU_14_(PDKUL_14,PDKU_14) = FD2A(PDD_14,XCK,RESETL);
wire PDKU_14;                                                                   //[INSTRUCT.NET:00047] PDKU_14_(PDKUL_14,PDKU_14) = FD2A(PDD_14,XCK,RESETL);
wire PDKUL_15;                                                                  //[INSTRUCT.NET:00048] PDKU_15_(PDKUL_15,PDKU_15) = FD2A(PDD_15,XCK,RESETL);
wire PDKU_15;                                                                   //[INSTRUCT.NET:00048] PDKU_15_(PDKUL_15,PDKU_15) = FD2A(PDD_15,XCK,RESETL);
wire PDK_10;                                                                    //[INSTRUCT.NET:00050] PDK_10_(PDK_10) = B1A(PDKUL_10);
wire PDK_13;                                                                    //[INSTRUCT.NET:00053] PDK_13_(PDK_13) = B1A(PDKUL_13);
wire PDK_15;                                                                    //[INSTRUCT.NET:00055] PDK_15_(PDK_15) = B1A(PDKUL_15);
wire PDKL_10;                                                                   //[INSTRUCT.NET:00057] PDKL_10_(PDKL_10) = B1A(PDKU_10);
wire PDKL_15;                                                                   //[INSTRUCT.NET:00062] PDKL_15_(PDKL_15) = B1A(PDKU_15);
wire RESET;                                                                     //[INSTRUCT.NET:00068] RESET_(RESET) = N1A(RESETL);
wire CARRYL;                                                                    //[INSTRUCT.NET:00073] CONDITION_(INH) = AND3B(INTRUDKL,CARRYL,PDK_10);
wire INH;                                                                       //[INSTRUCT.NET:00073] CONDITION_(INH) = AND3B(INTRUDKL,CARRYL,PDK_10);
wire OP_0;                                                                      //[INSTRUCT.NET:00086] MZ0RDL_(MZ0RDL) = NR2A(OP_0,MZ0RD);
wire MZ0RD;                                                                     //[INSTRUCT.NET:00086] MZ0RDL_(MZ0RDL) = NR2A(OP_0,MZ0RD);
wire MZ0;                                                                       //[INSTRUCT.NET:00088] MZ0RD_(MZ0RD) = NR2A(MZ0,READL);
wire OP_1;                                                                      //[INSTRUCT.NET:00091] MZ1RDL_(MZ1RDL) = NR2A(OP_1,MZ1RD);
wire MZ1RD;                                                                     //[INSTRUCT.NET:00091] MZ1RDL_(MZ1RDL) = NR2A(OP_1,MZ1RD);
wire MZ1;                                                                       //[INSTRUCT.NET:00093] MZ1RD_(MZ1RD) = NR2A(MZ1,READL);
wire OP_2;                                                                      //[INSTRUCT.NET:00096] MZ0WRL_(MZ0WRL) = NR3A(OP_2,MZ0WR,RESET);
wire MZ0WR;                                                                     //[INSTRUCT.NET:00096] MZ0WRL_(MZ0WRL) = NR3A(OP_2,MZ0WR,RESET);
wire OP_3;                                                                      //[INSTRUCT.NET:00101] MZ1WRL_(MZ1WRL) = NR3A(OP_3,MZ1WR,RESET);
wire MZ1WR;                                                                     //[INSTRUCT.NET:00101] MZ1WRL_(MZ1WRL) = NR3A(OP_3,MZ1WR,RESET);
wire MZ2WR;                                                                     //[INSTRUCT.NET:00105] MZ2WRL_(MZ2WRL) = NR2A(MZ2WR,RESET);
wire MZ2;                                                                       //[INSTRUCT.NET:00106] MZ2WR_(MZ2WR) = NR2A(MZ2,WRITEL);
wire INHL;                                                                      //[INSTRUCT.NET:00110] CCFL_(CCFL) = ND6A(PDKL_14,PDKL_15,PDK_13,PDKL_11,PDKL_12,INHL);
wire OP_5;                                                                      //[INSTRUCT.NET:00113] DMA0WRL_(DMA0WRL) = NR3A(OP_5,DMA0WR,RESET);
wire DMA0WR;                                                                    //[INSTRUCT.NET:00113] DMA0WRL_(DMA0WRL) = NR3A(OP_5,DMA0WR,RESET);
wire DMA0;                                                                      //[INSTRUCT.NET:00115] DMA0WR_(DMA0WR) = NR2A(DMA0,WRITEL);
wire OP_6;                                                                      //[INSTRUCT.NET:00118] DMA1WRL_(DMA1WRL) = NR3A(OP_6,DMA1WR,RESET);
wire DMA1WR;                                                                    //[INSTRUCT.NET:00118] DMA1WRL_(DMA1WRL) = NR3A(OP_6,DMA1WR,RESET);
wire DMA1;                                                                      //[INSTRUCT.NET:00120] DMA1WR_(DMA1WR) = NR2A(DMA1,WRITEL);
wire OP_7;                                                                      //[INSTRUCT.NET:00123] DMDWRL_(DMDWRL) = NR3A(OP_7,DMDWR,RESET);
wire DMDWR;                                                                     //[INSTRUCT.NET:00123] DMDWRL_(DMDWRL) = NR3A(OP_7,DMDWR,RESET);
wire DMD;                                                                       //[INSTRUCT.NET:00125] DMDWR_(DMDWR) = NR2A(DMD,WRITEL);
wire OP_8;                                                                      //[INSTRUCT.NET:00128] DMDRDL_(DMDRDL) = NR2A(OP_8,DMDRD);
wire DMDRD;                                                                     //[INSTRUCT.NET:00128] DMDRDL_(DMDRDL) = NR2A(OP_8,DMDRD);
wire OP_10;                                                                     //[INSTRUCT.NET:00137] MODWRL_(MODWRL) = NR3A(OP_10,MODWR,RESET);
wire MODWR;                                                                     //[INSTRUCT.NET:00137] MODWRL_(MODWRL) = NR3A(OP_10,MODWR,RESET);
wire MOD;                                                                       //[INSTRUCT.NET:00139] MODWR_(MODWR) = NR2A(MOD,WRITEL);
wire OP_11;                                                                     //[INSTRUCT.NET:00142] IXWRL_(IXWRL) = NR3A(OP_11,IXWR,RESET);
wire IXWR;                                                                      //[INSTRUCT.NET:00142] IXWRL_(IXWRL) = NR3A(OP_11,IXWR,RESET);
wire IX;                                                                        //[INSTRUCT.NET:00144] IXWR_(IXWR) = NR2A(IX,WRITEL);
wire OP_12;                                                                     //[INSTRUCT.NET:00149] PCRDL_(PCRDL) = NR2B(OP_12,PCRD);
wire PCRD;                                                                      //[INSTRUCT.NET:00149] PCRDL_(PCRDL) = NR2B(OP_12,PCRD);
wire PC;                                                                        //[INSTRUCT.NET:00151] PCRD_(PCRD) = NR2A(PC,READL);
wire OP_13;                                                                     //[INSTRUCT.NET:00154] XWRL_(XWRL) = NR3A(OP_13,XWR,RESET);
wire XWR;                                                                       //[INSTRUCT.NET:00154] XWRL_(XWRL) = NR3A(OP_13,XWR,RESET);
wire X;                                                                         //[INSTRUCT.NET:00156] XWR_(XWR) = NR2A(X,WRITEL);
wire OP_14;                                                                     //[INSTRUCT.NET:00159] XRDL_(XRDL) = NR2A(OP_14,XRD);
wire XRD;                                                                       //[INSTRUCT.NET:00159] XRDL_(XRDL) = NR2A(OP_14,XRD);
wire AL_1;                                                                      //[INSTRUCT.NET:00179] AL_1_(AL_1) = ND4A(INHL,PDKL_13,PDKL_14,PDK_15);
wire AL_2;                                                                      //[INSTRUCT.NET:00180] AL_2_(AL_2) = ND5A(INHL,PDKL_12,PDK_13,PDKL_14,PDK_15);
wire AL_3;                                                                      //[INSTRUCT.NET:00181] AL_3_(AL_3) = ND6A(INHL,PDKL_11,PDKL_12,PDK_13,PDK_14,PDK_15);
wire CARRYWR;                                                                   //[INSTRUCT.NET:00183] CARRYWR_(CARRYWR) = ND6A(AL_1,AL_2,AL_3,MULTL,MACL,CCFL);
wire SBCADC;                                                                    //[INSTRUCT.NET:00188] SBCADC_(SBCADC) = NR4A(PDKL_15,PDK_14,PDKL_13,PDK_12);
wire GAI;                                                                       //[INSTRUCT.NET:00189] GAI_(GAI) = NR5A(PDKL_13,PDKL_14,PDKL_15,PDK_11,PDK_12);
wire OP_22;                                                                     //[INSTRUCT.NET:00197] ZRDL_(ZRDL) = NR2A(OP_22,ZRD);
wire ZRD;                                                                       //[INSTRUCT.NET:00197] ZRDL_(ZRDL) = NR2A(OP_22,ZRD);
wire Z;                                                                         //[INSTRUCT.NET:00199] ZRD_(ZRD) = NR2A(Z,READL);
wire OP_23;                                                                     //[INSTRUCT.NET:00202] ZWRL_(ZWRL) = NR3C(OP_23,ZWR,RESET);
wire ZWR;                                                                       //[INSTRUCT.NET:00202] ZWRL_(ZWRL) = NR3C(OP_23,ZWR,RESET);
wire OP_24;                                                                     //[INSTRUCT.NET:00207] MZ2RDL_(MZ2RDL) = NR2B(OP_24,MZ2RD);
wire MZ2RD;                                                                     //[INSTRUCT.NET:00207] MZ2RDL_(MZ2RDL) = NR2B(OP_24,MZ2RD);
wire OP_25;                                                                     //[INSTRUCT.NET:00213] LEFTDACWRU_(LEFTDACWRU) = OR3A(OP_25,LEFTDACWR,RESET);
wire LEFTDACWR;                                                                 //[INSTRUCT.NET:00213] LEFTDACWRU_(LEFTDACWRU) = OR3A(OP_25,LEFTDACWR,RESET);
wire LEFTDACWRU;                                                                //[INSTRUCT.NET:00213] LEFTDACWRU_(LEFTDACWRU) = OR3A(OP_25,LEFTDACWR,RESET);
wire DAC1;                                                                      //[INSTRUCT.NET:00216] LEFTDACWR_(LEFTDACWR) = NR2A(DAC1,WRITEL);
wire OP_26;                                                                     //[INSTRUCT.NET:00220] RTDACWRU_(RTDACWRU) = OR3A(OP_26,RTDACWR,RESET);
wire RTDACWR;                                                                   //[INSTRUCT.NET:00220] RTDACWRU_(RTDACWRU) = OR3A(OP_26,RTDACWR,RESET);
wire RTDACWRU;                                                                  //[INSTRUCT.NET:00220] RTDACWRU_(RTDACWRU) = OR3A(OP_26,RTDACWR,RESET);
wire DAC2;                                                                      //[INSTRUCT.NET:00223] RTDACWR_(RTDACWR) = NR2A(DAC2,WRITEL);
wire OP_29;                                                                     //[INSTRUCT.NET:00229] PCWRL_(PCWRL) = NR2A(OP_29,PCWR);
wire PCWR;                                                                      //[INSTRUCT.NET:00229] PCWRL_(PCWRL) = NR2A(OP_29,PCWR);
wire WRIL_1;                                                                    //[INSTRUCT.NET:00237] WRIL_1_(WRIL_1) = ND5A(PDKL_12,PDKL_13,PDKL_14,PDKL_15,RUN);
wire WRIL_2;                                                                    //[INSTRUCT.NET:00239] WRIL_2_(WRIL_2) = ND5A(PDKL_11,PDKL_12,PDKL_13,PDK_14,RUN);
wire WRIL_3;                                                                    //[INSTRUCT.NET:00241] WRIL_3_(WRIL_3) = ND5A(PDKL_11,PDK_13,PDK_14,RUN,PDKL_15);
wire WRIL_4;                                                                    //[INSTRUCT.NET:00242] WRIL_4_(WRIL_4) = ND6A(PDKL_11,PDK_12,PDK_13,PDKL_14,PDK_15,RUN);
wire TRURDL;                                                                    //[INSTRUCT.NET:00247] READL_(READL) = ND5C(WRIL_1,WRIL_2,WRIL_3,WRIL_4,TRURDL);
wire TRAD;                                                                      //[INSTRUCT.NET:00254] TRARDL_(TRARDL) = OR2A(TRAD,READL);
wire GP;                                                                        //[INSTRUCT.NET:00258] GPRDL_(GPRDL) = OR2A(GP,READL);
wire TRUD;                                                                      //[INSTRUCT.NET:00266] TRUD_(TRUD) = ND5A(REGS,DAL_0,DAL_1,DAL_2,DAL_3);	/* 140 */


/* Address selection must be made before the pipeline latch,
   so the decode is from the unlatched data */


/* 	Asel[0] is active (1) if bit 9 of the opcode is 1 for indexed
	and this is NOT an INTRUDE instruction				*/

/* Note that runant is the anticipated version of run. This is so that
   the first instruction executed does not corrupt the intrude address */

assign INTRUDAL = ~(PD_11 & PD_12 & PD_13 & PD_14 & PD_15);                     //[INSTRUCT.NET:00027] INTRUDAL_(INTRUDAL) = ND5A(PD_11,PD_12,PD_13,PD_14,PD_15);
assign INTRUDL = INTRUDAL & RUNANT;                                             //[INSTRUCT.NET:00028] INTRUDL_(INTRUDL) = AND2A(INTRUDAL,RUNANT);

FD2A INTRUDCK__inst (.MasterClock(MasterClock),.q(INTRUDKL),.qL(INTRUD),.d(INTRUDL),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00030] INTRUDCK_(INTRUDKL,INTRUD) = FD2A(INTRUDL,XCK,RESETL);
assign ASEL_0 = INTRUDL & PD_9;                                                 //[INSTRUCT.NET:00031] ASEL_0_(ASEL_0) = AND2B(INTRUDL,PD_9);
assign ASEL_1 = ~INTRUDL;                                                       //[INSTRUCT.NET:00032] ASEL_1_(ASEL_1) = N1D(INTRUDL);
assign RUNANTL = ~RUNANT;                                                       //[INSTRUCT.NET:00033] RUNANTL_(RUNANTL) = N1B(RUNANT);
/* Pipeline latch 
   The instruction decode is forced to be INTRUDE until RUN is set */

assign PDD_10 = ~(PD_10 | RUNANTL);                                             //[INSTRUCT.NET:00037] PDD_10_(PDD_10) = NR2A(PD_10,RUNANTL);
assign PDD_11 = ~(PD_11 | RUNANTL);                                             //[INSTRUCT.NET:00038] PDD_11_(PDD_11) = NR2A(PD_11,RUNANTL);
assign PDD_12 = ~(PD_12 | RUNANTL);                                             //[INSTRUCT.NET:00039] PDD_12_(PDD_12) = NR2A(PD_12,RUNANTL);
assign PDD_13 = ~(PD_13 | RUNANTL);                                             //[INSTRUCT.NET:00040] PDD_13_(PDD_13) = NR2A(PD_13,RUNANTL);
assign PDD_14 = ~(PD_14 | RUNANTL);                                             //[INSTRUCT.NET:00041] PDD_14_(PDD_14) = NR2A(PD_14,RUNANTL);
assign PDD_15 = ~(PD_15 | RUNANTL);                                             //[INSTRUCT.NET:00042] PDD_15_(PDD_15) = NR2A(PD_15,RUNANTL);
FD2A PDKU_10__inst (.MasterClock(MasterClock),.q(PDKUL_10),.qL(PDKU_10),.d(PDD_10),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00043] PDKU_10_(PDKUL_10,PDKU_10) = FD2A(PDD_10,XCK,RESETL);
FD2A PDKU_11__inst (.MasterClock(MasterClock),.q(PDKUL_11),.qL(PDKU_11),.d(PDD_11),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00044] PDKU_11_(PDKUL_11,PDKU_11) = FD2A(PDD_11,XCK,RESETL);
FD2A PDKU_12__inst (.MasterClock(MasterClock),.q(PDKUL_12),.qL(PDKU_12),.d(PDD_12),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00045] PDKU_12_(PDKUL_12,PDKU_12) = FD2A(PDD_12,XCK,RESETL);
FD2A PDKU_13__inst (.MasterClock(MasterClock),.q(PDKUL_13),.qL(PDKU_13),.d(PDD_13),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00046] PDKU_13_(PDKUL_13,PDKU_13) = FD2A(PDD_13,XCK,RESETL);
FD2A PDKU_14__inst (.MasterClock(MasterClock),.q(PDKUL_14),.qL(PDKU_14),.d(PDD_14),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00047] PDKU_14_(PDKUL_14,PDKU_14) = FD2A(PDD_14,XCK,RESETL);
FD2A PDKU_15__inst (.MasterClock(MasterClock),.q(PDKUL_15),.qL(PDKU_15),.d(PDD_15),.clk(XCK),.rL(RESETL));//[INSTRUCT.NET:00048] PDKU_15_(PDKUL_15,PDKU_15) = FD2A(PDD_15,XCK,RESETL);

assign PDK_10 = ~PDKUL_10;                                                      //[INSTRUCT.NET:00050] PDK_10_(PDK_10) = B1A(PDKUL_10);
assign PDK_11 = ~PDKUL_11;                                                      //[INSTRUCT.NET:00051] PDK_11_(PDK_11) = B1A(PDKUL_11);
assign PDK_12 = ~PDKUL_12;                                                      //[INSTRUCT.NET:00052] PDK_12_(PDK_12) = B1A(PDKUL_12);
assign PDK_13 = ~PDKUL_13;                                                      //[INSTRUCT.NET:00053] PDK_13_(PDK_13) = B1A(PDKUL_13);
assign PDK_14 = ~PDKUL_14;                                                      //[INSTRUCT.NET:00054] PDK_14_(PDK_14) = B1A(PDKUL_14);
assign PDK_15 = ~PDKUL_15;                                                      //[INSTRUCT.NET:00055] PDK_15_(PDK_15) = B1A(PDKUL_15);

assign PDKL_10 = ~PDKU_10;                                                      //[INSTRUCT.NET:00057] PDKL_10_(PDKL_10) = B1A(PDKU_10);
assign PDKL_11 = ~PDKU_11;                                                      //[INSTRUCT.NET:00058] PDKL_11_(PDKL_11) = B1A(PDKU_11);
assign PDKL_12 = ~PDKU_12;                                                      //[INSTRUCT.NET:00059] PDKL_12_(PDKL_12) = B1A(PDKU_12);
assign PDKL_13 = ~PDKU_13;                                                      //[INSTRUCT.NET:00060] PDKL_13_(PDKL_13) = B1A(PDKU_13);
assign PDKL_14 = ~PDKU_14;                                                      //[INSTRUCT.NET:00061] PDKL_14_(PDKL_14) = B1A(PDKU_14);
assign PDKL_15 = ~PDKU_15;                                                      //[INSTRUCT.NET:00062] PDKL_15_(PDKL_15) = B1A(PDKU_15);


/* Device decodes .... in numeric opcode order
	All the register write signals must go active during RESET */

assign RESET = ~RESETL;                                                         //[INSTRUCT.NET:00068] RESET_(RESET) = N1A(RESETL);

/* Conditional instruction detector inhibits all writes
   except intrude */

assign INH = INTRUDKL & CARRYL & PDK_10;                                        //[INSTRUCT.NET:00073] CONDITION_(INH) = AND3B(INTRUDKL,CARRYL,PDK_10);
assign CARRYL = ~CARRY;                                                         //[INSTRUCT.NET:00074] CARRYL_(CARRYL) = N1A(CARRY);

/* MOV (nn), MZ0 ---- OR nn=145 rd
   Note that latched program data (pdk[n] is 0 at reset, so disable this
   register read during reset so that the default zero value can be 
   put onto the bus.
 */

/* Write operations are ALL enabled during reset to ensure all registers
   are defined at this time. They must be enabled by a synchronous value
   of reset */

assign MZ0RDL = ~(OP_0 | MZ0RD);                                                //[INSTRUCT.NET:00086] MZ0RDL_(MZ0RDL) = NR2A(OP_0,MZ0RD);
assign OP_0 = ~(PDK_11 | PDK_12 | PDK_13 | PDK_14 | PDK_15 | RESET);            //[INSTRUCT.NET:00087] OP_0_(OP_0) = NR6A(PDK_11,PDK_12,PDK_13,PDK_14,PDK_15,RESET);
assign MZ0RD = ~(MZ0 | READL);                                                  //[INSTRUCT.NET:00088] MZ0RD_(MZ0RD) = NR2A(MZ0,READL);

/* MOV (nn), MZ1 ---- OR nn=146 rd */
assign MZ1RDL = ~(OP_1 | MZ1RD);                                                //[INSTRUCT.NET:00091] MZ1RDL_(MZ1RDL) = NR2A(OP_1,MZ1RD);
assign OP_1 = ~(PDKL_11 | PDK_12 | PDK_13 | PDK_14 | PDK_15);                   //[INSTRUCT.NET:00092] OP_1_(OP_1) = NR5A(PDKL_11,PDK_12,PDK_13,PDK_14,PDK_15);
assign MZ1RD = ~(MZ1 | READL);                                                  //[INSTRUCT.NET:00093] MZ1RD_(MZ1RD) = NR2A(MZ1,READL);

/* MOV MZ0, (nn) ---- OR nn=145 wr */
assign MZ0WRL = ~(OP_2 | MZ0WR | RESET);                                        //[INSTRUCT.NET:00096] MZ0WRL_(MZ0WRL) = NR3A(OP_2,MZ0WR,RESET);
assign OP_2 = ~(PDK_11 | PDKL_12 | PDK_13 | PDK_14 | PDK_15 | INH);             //[INSTRUCT.NET:00097] OP_2_(OP_2) = NR6A(PDK_11,PDKL_12,PDK_13,PDK_14,PDK_15,INH);
assign MZ0WR = ~(MZ0 | WRITEL);                                                 //[INSTRUCT.NET:00098] MZ0WR_(MZ0WR) = NR2A(MZ0,WRITEL);

/* MOV MZ1, (nn) ---- OR nn=146 wr */
assign MZ1WRL = ~(OP_3 | MZ1WR | RESET);                                        //[INSTRUCT.NET:00101] MZ1WRL_(MZ1WRL) = NR3A(OP_3,MZ1WR,RESET);
assign OP_3 = ~(PDKL_11 | PDKL_12 | PDK_13 | PDK_14 | PDK_15 | INH);            //[INSTRUCT.NET:00102] OP_3_(OP_3) = NR6A(PDKL_11,PDKL_12,PDK_13,PDK_14,PDK_15,INH);
assign MZ1WR = ~(MZ1 | WRITEL);                                                 //[INSTRUCT.NET:00103] MZ1WR_(MZ1WR) = NR2A(MZ1,WRITEL);

assign MZ2WRL = ~(MZ2WR | RESET);                                               //[INSTRUCT.NET:00105] MZ2WRL_(MZ2WRL) = NR2A(MZ2WR,RESET);
assign MZ2WR = ~(MZ2 | WRITEL);                                                 //[INSTRUCT.NET:00106] MZ2WR_(MZ2WR) = NR2A(MZ2,WRITEL);

/* CCF */

assign CCFL = ~(PDKL_14 & PDKL_15 & PDK_13 & PDKL_11 & PDKL_12 & INHL);         //[INSTRUCT.NET:00110] CCFL_(CCFL) = ND6A(PDKL_14,PDKL_15,PDK_13,PDKL_11,PDKL_12,INHL);

/* MOV DMA0, (nn) ---- OR nn=142 wr */
assign DMA0WRL = ~(OP_5 | DMA0WR | RESET);                                      //[INSTRUCT.NET:00113] DMA0WRL_(DMA0WRL) = NR3A(OP_5,DMA0WR,RESET);
assign OP_5 = ~(PDKL_11 | PDK_12 | PDKL_13 | PDK_14 | PDK_15 | INH);            //[INSTRUCT.NET:00114] OP_5_(OP_5) = NR6A(PDKL_11,PDK_12,PDKL_13,PDK_14,PDK_15,INH);
assign DMA0WR = ~(DMA0 | WRITEL);                                               //[INSTRUCT.NET:00115] DMA0WR_(DMA0WR) = NR2A(DMA0,WRITEL);

/* MOV DMA1, (nn) ---- OR nn=143 wr */
assign DMA1WRL = ~(OP_6 | DMA1WR | RESET);                                      //[INSTRUCT.NET:00118] DMA1WRL_(DMA1WRL) = NR3A(OP_6,DMA1WR,RESET);
assign OP_6 = ~(PDK_11 | PDKL_12 | PDKL_13 | PDK_14 | PDK_15 | INH);            //[INSTRUCT.NET:00119] OP_6_(OP_6) = NR6A(PDK_11,PDKL_12,PDKL_13,PDK_14,PDK_15,INH);
assign DMA1WR = ~(DMA1 | WRITEL);                                               //[INSTRUCT.NET:00120] DMA1WR_(DMA1WR) = NR2A(DMA1,WRITEL);

/* MOV DMD, (nn) ---- OR nn=144 wr */
assign DMDWRL = ~(OP_7 | DMDWR | RESET);                                        //[INSTRUCT.NET:00123] DMDWRL_(DMDWRL) = NR3A(OP_7,DMDWR,RESET);
assign OP_7 = ~(PDKL_11 | PDKL_12 | PDKL_13 | PDK_14 | PDK_15 | INH);           //[INSTRUCT.NET:00124] OP_7_(OP_7) = NR6A(PDKL_11,PDKL_12,PDKL_13,PDK_14,PDK_15,INH);
assign DMDWR = ~(DMD | WRITEL);                                                 //[INSTRUCT.NET:00125] DMDWR_(DMDWR) = NR2A(DMD,WRITEL);

/* MOV (nn), DMD ---- OR nn=144 rd */
assign DMDRDL = ~(OP_8 | DMDRD);                                                //[INSTRUCT.NET:00128] DMDRDL_(DMDRDL) = NR2A(OP_8,DMDRD);
assign OP_8 = ~(PDK_11 | PDK_12 | PDK_13 | PDKL_14 | PDK_15);                   //[INSTRUCT.NET:00129] OP_8_(OP_8) = NR5A(PDK_11,PDK_12,PDK_13,PDKL_14,PDK_15);
assign DMDRD = ~(DMD | READL);                                                  //[INSTRUCT.NET:00130] DMDRD_(DMDRD) = NR2A(DMD,READL);

/* MAC ALU */

assign MACL = ~(PDKL_15 & PDK_14 & PDKL_13 & PDKL_12 & PDK_11 & INHL);          //[INSTRUCT.NET:00134] MACL_(MACL) = ND6C(PDKL_15,PDK_14,PDKL_13,PDKL_12,PDK_11,INHL);

/* MOV MODE, (nn) ---- OR nn=14B wr */
assign MODWRL = ~(OP_10 | MODWR | RESET);                                       //[INSTRUCT.NET:00137] MODWRL_(MODWRL) = NR3A(OP_10,MODWR,RESET);
assign OP_10 = ~(PDK_11 | PDKL_12 | PDK_13 | PDKL_14 | PDK_15 | INH);           //[INSTRUCT.NET:00138] OP_10_(OP_10) = NR6A(PDK_11,PDKL_12,PDK_13,PDKL_14,PDK_15,INH);
assign MODWR = ~(MOD | WRITEL);                                                 //[INSTRUCT.NET:00139] MODWR_(MODWR) = NR2A(MOD,WRITEL);

/* MOV IX, (nn) ---- OR nn=141 wr */
assign IXWRL = ~(OP_11 | IXWR | RESET);                                         //[INSTRUCT.NET:00142] IXWRL_(IXWRL) = NR3A(OP_11,IXWR,RESET);
assign OP_11 = ~(PDKL_11 | PDKL_12 | PDK_13 | PDKL_14 | PDK_15 | INH);          //[INSTRUCT.NET:00143] OP_11_(OP_11) = NR6A(PDKL_11,PDKL_12,PDK_13,PDKL_14,PDK_15,INH);
assign IXWR = ~(IX | WRITEL);                                                   //[INSTRUCT.NET:00144] IXWR_(IXWR) = NR2A(IX,WRITEL);

/* MOV (nn), PC ---- OR nn=14A rd */
/* WARNING --- The PC also needs to be written from the host address
   bus REGARDLESS of RUN and CONDITION codes */
assign PCRDL = ~(OP_12 | PCRD);                                                 //[INSTRUCT.NET:00149] PCRDL_(PCRDL) = NR2B(OP_12,PCRD);
assign OP_12 = ~(PDK_11 | PDK_12 | PDKL_13 | PDKL_14 | PDK_15);                 //[INSTRUCT.NET:00150] OP_12_(OP_12) = NR5A(PDK_11,PDK_12,PDKL_13,PDKL_14,PDK_15);
assign PCRD = ~(PC | READL);                                                    //[INSTRUCT.NET:00151] PCRD_(PCRD) = NR2A(PC,READL);

/* MOV X, (nn) ---- OR nn=14C wr */
assign XWRL = ~(OP_13 | XWR | RESET);                                           //[INSTRUCT.NET:00154] XWRL_(XWRL) = NR3A(OP_13,XWR,RESET);
assign OP_13 = ~(PDKL_11 | PDK_12 | PDKL_13 | PDKL_14 | PDK_15 | INH);          //[INSTRUCT.NET:00155] OP_13_(OP_13) = NR6A(PDKL_11,PDK_12,PDKL_13,PDKL_14,PDK_15,INH);
assign XWR = ~(X | WRITEL);                                                     //[INSTRUCT.NET:00156] XWR_(XWR) = NR2A(X,WRITEL);

/* MOV (nn), X ---- OR nn=14C rd */
assign XRDL = ~(OP_14 | XRD);                                                   //[INSTRUCT.NET:00159] XRDL_(XRDL) = NR2A(OP_14,XRD);
assign OP_14 = ~(PDK_11 | PDKL_12 | PDKL_13 | PDKL_14 | PDK_15);                //[INSTRUCT.NET:00160] OP_14_(OP_14) = NR5A(PDK_11,PDKL_12,PDKL_13,PDKL_14,PDK_15);
assign XRD = ~(X | READL);                                                      //[INSTRUCT.NET:00161] XRD_(XRD) = NR2A(X,READL);

/* MULT */

assign MULTL = ~(PDKL_15 & PDK_11 & PDK_12 & PDK_13 & PDK_14 & INHL);           //[INSTRUCT.NET:00165] MULTL_(MULTL) = ND6C(PDKL_15,PDK_11,PDK_12,PDK_13,PDK_14,INHL);

/* ADD, SUB, AND, OR, ADC, SBC and GAI all enable the result register..
	decode from
			1 0000
			1 0001
			1 0010	
			1 0011
			1 0100
			1 0101
			1 1100
 */

assign INHL = ~INH;                                                             //[INSTRUCT.NET:00178] INHL_(INHL) = N1B(INH);
assign AL_1 = ~(INHL & PDKL_13 & PDKL_14 & PDK_15);                             //[INSTRUCT.NET:00179] AL_1_(AL_1) = ND4A(INHL,PDKL_13,PDKL_14,PDK_15);
assign AL_2 = ~(INHL & PDKL_12 & PDK_13 & PDKL_14 & PDK_15);                    //[INSTRUCT.NET:00180] AL_2_(AL_2) = ND5A(INHL,PDKL_12,PDK_13,PDKL_14,PDK_15);
assign AL_3 = ~(INHL & PDKL_11 & PDKL_12 & PDK_13 & PDK_14 & PDK_15);           //[INSTRUCT.NET:00181] AL_3_(AL_3) = ND6A(INHL,PDKL_11,PDKL_12,PDK_13,PDK_14,PDK_15);
assign RESWRL = AL_1 & AL_2 & AL_3 & RESETL;                                    //[INSTRUCT.NET:00182] RESWRL_(RESWRL) = AND4B(AL_1,AL_2,AL_3,RESETL);
assign CARRYWR = ~(AL_1 & AL_2 & AL_3 & MULTL & MACL & CCFL);                   //[INSTRUCT.NET:00183] CARRYWR_(CARRYWR) = ND6A(AL_1,AL_2,AL_3,MULTL,MACL,CCFL);
assign CARRYWRL = ~CARRYWR;                                                     //[INSTRUCT.NET:00184] CARRYWRL_(CARRYWRL) = N1A(CARRYWR);

/* Decode all the 'WITH CARRY' instructions */

assign SBCADC = ~(PDKL_15 | PDK_14 | PDKL_13 | PDK_12);                         //[INSTRUCT.NET:00188] SBCADC_(SBCADC) = NR4A(PDKL_15,PDK_14,PDKL_13,PDK_12);
assign GAI = ~(PDKL_13 | PDKL_14 | PDKL_15 | PDK_11 | PDK_12);                  //[INSTRUCT.NET:00189] GAI_(GAI) = NR5A(PDKL_13,PDKL_14,PDKL_15,PDK_11,PDK_12);

assign WITHCYL = ~(SBCADC | GAI);                                               //[INSTRUCT.NET:00191] WITHCYL_(WITHCYL) = NR2A(SBCADC,GAI);

assign SUB = ~(PDKL_11 | PDK_12 | PDK_13 | PDK_14 | PDKL_15);                   //[INSTRUCT.NET:00193] SUB_(SUB) = NR5A(PDKL_11,PDK_12,PDK_13,PDK_14,PDKL_15);


/* MOV (nn), AZ --- OR nn=14D rd */
assign ZRDL = ~(OP_22 | ZRD);                                                   //[INSTRUCT.NET:00197] ZRDL_(ZRDL) = NR2A(OP_22,ZRD);
assign OP_22 = ~(PDK_11 | PDKL_12 | PDKL_13 | PDK_14 | PDKL_15);                //[INSTRUCT.NET:00198] OP_22_(OP_22) = NR5A(PDK_11,PDKL_12,PDKL_13,PDK_14,PDKL_15);
assign ZRD = ~(Z | READL);                                                      //[INSTRUCT.NET:00199] ZRD_(ZRD) = NR2A(Z,READL);

/* MOV AZ, (nn) --- OR nn=14D wr */
assign ZWRL = ~(OP_23 | ZWR | RESET);                                           //[INSTRUCT.NET:00202] ZWRL_(ZWRL) = NR3C(OP_23,ZWR,RESET);
assign OP_23 = ~(PDKL_11 | PDKL_12 | PDKL_13 | PDK_14 | PDKL_15 | INH);         //[INSTRUCT.NET:00203] OP_23_(OP_23) = NR6A(PDKL_11,PDKL_12,PDKL_13,PDK_14,PDKL_15,INH);
assign ZWR = ~(Z | WRITEL);                                                     //[INSTRUCT.NET:00204] ZWR_(ZWR) = NR2A(Z,WRITEL);

/* MOV (nn), Z2 --- OR nn=147 rd */
assign MZ2RDL = ~(OP_24 | MZ2RD);                                               //[INSTRUCT.NET:00207] MZ2RDL_(MZ2RDL) = NR2B(OP_24,MZ2RD);
assign OP_24 = ~(PDK_11 | PDK_12 | PDK_13 | PDKL_14 | PDKL_15);                 //[INSTRUCT.NET:00208] OP_24_(OP_24) = NR5A(PDK_11,PDK_12,PDK_13,PDKL_14,PDKL_15);
assign MZ2RD = ~(MZ2 | READL);                                                  //[INSTRUCT.NET:00209] MZ2RD_(MZ2RD) = NR2A(MZ2,READL);

/* MOV DAC1, (nn) --- OR nn=148 wr */

assign LEFTDACWRU = OP_25 | LEFTDACWR | RESET;                                  //[INSTRUCT.NET:00213] LEFTDACWRU_(LEFTDACWRU) = OR3A(OP_25,LEFTDACWR,RESET);
assign LEFTDACWRL = ~LEFTDACWRU;                                                //[INSTRUCT.NET:00214] LEFTDACWRL_(LEFTDACWRL) = B1A(LEFTDACWRU);
assign OP_25 = ~(PDKL_11 | PDK_13 | PDKL_14 | PDKL_15 | INH);                   //[INSTRUCT.NET:00215] OP_25_(OP_25) = NR5A(PDKL_11,PDK_13,PDKL_14,PDKL_15,INH);
assign LEFTDACWR = ~(DAC1 | WRITEL);                                            //[INSTRUCT.NET:00216] LEFTDACWR_(LEFTDACWR) = NR2A(DAC1,WRITEL);

/* MOV DAC2, (nn) --- OR nn=149 wr */

assign RTDACWRU = OP_26 | RTDACWR | RESET;                                      //[INSTRUCT.NET:00220] RTDACWRU_(RTDACWRU) = OR3A(OP_26,RTDACWR,RESET);
assign RTDACWRL = ~RTDACWRU;                                                    //[INSTRUCT.NET:00221] RTDACWRL_(RTDACWRL) = B1A(RTDACWRU);
assign OP_26 = ~(PDKL_12 | PDK_13 | PDKL_14 | PDKL_15 | INH);                   //[INSTRUCT.NET:00222] OP_26_(OP_26) = NR5A(PDKL_12,PDK_13,PDKL_14,PDKL_15,INH);
assign RTDACWR = ~(DAC2 | WRITEL);                                              //[INSTRUCT.NET:00223] RTDACWR_(RTDACWR) = NR2A(DAC2,WRITEL);

/* includes MOV DAC12, (nn) */
/* GAI decoded within ALU */
/* MOV PC, (nn) --- OR nn=14A wr */

assign PCWRL = ~(OP_29 | PCWR);                                                 //[INSTRUCT.NET:00229] PCWRL_(PCWRL) = NR2A(OP_29,PCWR);
assign OP_29 = ~(PDKL_11 | PDK_12 | PDKL_13 | PDKL_14 | PDKL_15 | INH);         //[INSTRUCT.NET:00230] OP_29_(OP_29) = NR6A(PDKL_11,PDK_12,PDKL_13,PDKL_14,PDKL_15,INH);
assign PCWR = ~(PC | WRITEL);                                                   //[INSTRUCT.NET:00231] PCWR_(PCWR) = NR2A(PC,WRITEL);

/* Decode all the instructions that READ from the data space */
/* Warning ... INTRUDE is a special case -- Data direction depends on
   the INTRUDE state machine */

assign WRIL_1 = ~(PDKL_12 & PDKL_13 & PDKL_14 & PDKL_15 & RUN);                 //[INSTRUCT.NET:00237] WRIL_1_(WRIL_1) = ND5A(PDKL_12,PDKL_13,PDKL_14,PDKL_15,RUN);

assign WRIL_2 = ~(PDKL_11 & PDKL_12 & PDKL_13 & PDK_14 & RUN);                  //[INSTRUCT.NET:00239] WRIL_2_(WRIL_2) = ND5A(PDKL_11,PDKL_12,PDKL_13,PDK_14,RUN);

assign WRIL_3 = ~(PDKL_11 & PDK_13 & PDK_14 & RUN & PDKL_15);                   //[INSTRUCT.NET:00241] WRIL_3_(WRIL_3) = ND5A(PDKL_11,PDK_13,PDK_14,RUN,PDKL_15);
assign WRIL_4 = ~(PDKL_11 & PDK_12 & PDK_13 & PDKL_14 & PDK_15 & RUN);          //[INSTRUCT.NET:00242] WRIL_4_(WRIL_4) = ND6A(PDKL_11,PDK_12,PDK_13,PDKL_14,PDK_15,RUN);
/* INTRUDE is a special case. If the DSP is accessible to the host for
   writing - ie if in STOP or executing an intrude instruction, then the 
   data must be written regardless of condition and run status */

assign READL = ~(WRIL_1 & WRIL_2 & WRIL_3 & WRIL_4 & TRURDL);                   //[INSTRUCT.NET:00247] READL_(READL) = ND5C(WRIL_1,WRIL_2,WRIL_3,WRIL_4,TRURDL);
assign TRURDL = ~TRURD;                                                         //[INSTRUCT.NET:00248] TRURDL_(TRURDL) = N1A(TRURD);
assign WRITEL = ~(READL & INHL);                                                //[INSTRUCT.NET:00249] WRITEL_(WRITEL) = ND2C(READL,INHL);

/* There are a few registers not accessed by opcodes */

assign IXRDL = IX | READL;                                                      //[INSTRUCT.NET:00253] IXRDL_(IXRDL) = OR2A(IX,READL);
assign TRARDL = TRAD | READL;                                                   //[INSTRUCT.NET:00254] TRARDL_(TRARDL) = OR2A(TRAD,READL);
assign MODRDL = MOD | READL;                                                    //[INSTRUCT.NET:00255] MODRDL_(MODRDL) = OR2A(MOD,READL);
assign DMA0RDL = DMA0 | READL;                                                  //[INSTRUCT.NET:00256] DMA0RDL_(DMA0RDL) = OR2A(DMA0,READL);
assign DMA1RDL = DMA1 | READL;                                                  //[INSTRUCT.NET:00257] DMA1RDL_(DMA1RDL) = OR2A(DMA1,READL);
assign GPRDL = GP | READL;                                                      //[INSTRUCT.NET:00258] GPRDL_(GPRDL) = OR2A(GP,READL);
assign GPWRL = GP | WRITEL;                                                     //[INSTRUCT.NET:00259] GPWRL_(GPWRL) = OR2A(GP,WRITEL);


/* Now decode registers in address order ... only taking da[0..3] */



assign TRUD = ~(REGS & DAL_0 & DAL_1 & DAL_2 & DAL_3);                          //[INSTRUCT.NET:00266] TRUD_(TRUD) = ND5A(REGS,DAL_0,DAL_1,DAL_2,DAL_3);	/* 140 */

assign IX = ~(REGS & DA_0 & DAL_1 & DAL_2 & DAL_3);                             //[INSTRUCT.NET:00268] IX_(IX) = ND5A(REGS,DA_0,DAL_1,DAL_2,DAL_3);	/* 141 */

assign DMA0 = ~(REGS & DAL_0 & DA_1 & DAL_2 & DAL_3);                           //[INSTRUCT.NET:00270] DMA0_(DMA0) = ND5A(REGS,DAL_0,DA_1,DAL_2,DAL_3);/* 142 */

assign DMA1 = ~(REGS & DA_0 & DA_1 & DAL_2 & DAL_3);                            //[INSTRUCT.NET:00272] DMA1_(DMA1) = ND5A(REGS,DA_0,DA_1,DAL_2,DAL_3);/* 143 */

assign DMD = ~(REGS & DAL_0 & DAL_1 & DA_2 & DAL_3);                            //[INSTRUCT.NET:00274] DMD_(DMD) = ND5A(REGS,DAL_0,DAL_1,DA_2,DAL_3);/* 144 */

assign MZ0 = ~(REGS & DA_0 & DAL_1 & DA_2 & DAL_3);                             //[INSTRUCT.NET:00276] MZ0_(MZ0) = ND5A(REGS,DA_0,DAL_1,DA_2,DAL_3);/* 145 */

assign MZ1 = ~(REGS & DAL_0 & DA_1 & DA_2 & DAL_3);                             //[INSTRUCT.NET:00278] MZ1_(MZ1) = ND5A(REGS,DAL_0,DA_1,DA_2,DAL_3);/* 146 */

assign MZ2 = ~(REGS & DA_0 & DA_1 & DA_2 & DAL_3);                              //[INSTRUCT.NET:00280] MZ2_(MZ2) = ND5A(REGS,DA_0,DA_1,DA_2,DAL_3);/* 147 */


assign DAC1 = ~(REGS & DAL_0 & DAL_1 & DAL_2 & DA_3);                           //[INSTRUCT.NET:00283] DAC1_(DAC1) = ND5A(REGS,DAL_0,DAL_1,DAL_2,DA_3);/* 148 */

assign DAC2 = ~(REGS & DA_0 & DAL_1 & DAL_2 & DA_3);                            //[INSTRUCT.NET:00285] DAC2_(DAC2) = ND5A(REGS,DA_0,DAL_1,DAL_2,DA_3);/* 149 */

assign DAC = ~(DAC1 & DAC2);                                                    //[INSTRUCT.NET:00287] DAC_(DAC) = ND2A(DAC1,DAC2);
assign PC = ~(REGS & DAL_0 & DA_1 & DAL_2 & DA_3);                              //[INSTRUCT.NET:00288] PC_(PC) = ND5A(REGS,DAL_0,DA_1,DAL_2,DA_3);/* 14A */

assign MOD = ~(REGS & DA_0 & DA_1 & DAL_2 & DA_3);                              //[INSTRUCT.NET:00290] MOD_(MOD) = ND5A(REGS,DA_0,DA_1,DAL_2,DA_3);/* 14B */

assign X = ~(REGS & DAL_0 & DAL_1 & DA_2 & DA_3);                               //[INSTRUCT.NET:00292] X_(X) = ND5A(REGS,DAL_0,DAL_1,DA_2,DA_3);/* 14C */

assign Z = ~(REGS & DA_0 & DAL_1 & DA_2 & DA_3);                                //[INSTRUCT.NET:00294] Z_(Z) = ND5A(REGS,DA_0,DAL_1,DA_2,DA_3);/* 14D */

assign TRAD = ~(REGS & DAL_0 & DA_1 & DA_2 & DA_3);                             //[INSTRUCT.NET:00296] TRAD_(TRAD) = ND5A(REGS,DAL_0,DA_1,DA_2,DA_3);/* 14E */

assign GP = ~(REGS & DA_0 & DA_1 & DA_2 & DA_3);                                //[INSTRUCT.NET:00298] GP_(GP) = ND5A(REGS,DA_0,DA_1,DA_2,DA_3);	/* 14F */



endmodule                                                                       //[INSTRUCT.NET:00302] END MODULE;
