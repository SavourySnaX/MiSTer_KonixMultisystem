                                                                                //[DRAM.NET:00001] COMPILE;
                                                                                //[DRAM.NET:00002] DIRECTORY MASTER;

module m_DRAM                                                                   //[DRAM.NET:00004] MODULE DRAM;
(                                                                               //[DRAM.NET:00004] MODULE DRAM;

    input    MasterClock,
    input    inDD_0,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_1,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_2,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_3,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_4,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_5,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_6,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_7,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_8,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_9,                                                            //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_10,                                                           //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_11,                                                           //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_12,                                                           //[DRAM.NET:00006] INPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    input    inDD_13,                                                           //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    inDD_14,                                                           //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    inDD_15,                                                           //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_0,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_1,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_2,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_3,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_4,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_5,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_6,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_7,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DA_8,                                                              //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DAL_4,                                                             //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DAL_5,                                                             //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
    input    DAL_6,                                                             //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    DAL_8,                                                             //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    READL,                                                             //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    WRITEL,                                                            //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    TRARDL,                                                            //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    IXRDL,                                                             //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    DAC,                                                               //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    DMA1RDL,                                                           //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    MZ2RDL,                                                            //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    PCRDL,                                                             //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    MODRDL,                                                            //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    GPRDL,                                                             //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
    input    GPWRL,                                                             //[DRAM.NET:00009]    GPWRL,RESETL,CLK,DQCLK,INPUT;
    input    RESETL,                                                            //[DRAM.NET:00009]    GPWRL,RESETL,CLK,DQCLK,INPUT;
    input    CLK,                                                               //[DRAM.NET:00009]    GPWRL,RESETL,CLK,DQCLK,INPUT;
    input    DQCLK,                                                             //[DRAM.NET:00009]    GPWRL,RESETL,CLK,DQCLK,INPUT;
    input    INPUT,                                                             //[DRAM.NET:00009]    GPWRL,RESETL,CLK,DQCLK,INPUT;
                                                                                //[DRAM.NET:00007]    DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,DA_7,DA_8,DAL_4,DAL_5,
                                                                                //[DRAM.NET:00008]    DAL_6,DAL_8,READL,WRITEL,TRARDL,IXRDL,DAC,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,
                                                                                //[DRAM.NET:00009]    GPWRL,RESETL,CLK,DQCLK,INPUT;
    output    outDD_0, enDD_0,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_1, enDD_1,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_2, enDD_2,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_3, enDD_3,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_4, enDD_4,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_5, enDD_5,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_6, enDD_6,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_7, enDD_7,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_8, enDD_8,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_9, enDD_9,                                                  //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_10, enDD_10,                                                //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_11, enDD_11,                                                //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_12, enDD_12,                                                //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
    output    outDD_13, enDD_13,                                                //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    outDD_14, enDD_14,                                                //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    outDD_15, enDD_15,                                                //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    REGS,                                                             //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    DRAMEN,                                                           //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    DRAMWR,                                                           //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    ROMEN,                                                            //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
    output    OUTPUT                                                            //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
);                                                                              //[DRAM.NET:00004] MODULE DRAM;
                                                                                //[DRAM.NET:00012] LEVEL FUNCTION;
wire CONEN;                                                                     //[DRAM.NET:00018]    DD_9,DD_10,DD_11,DD_12,DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,CONEN,RESETL,
wire NOCONL;                                                                    //[DRAM.NET:00019]    TRARDL,IXRDL,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,NOCONL);
wire NOCON_3;                                                                   //[DRAM.NET:00022]    DD_5,DD_6,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,NOCON_3);
wire RAMCSL;                                                                    //[DRAM.NET:00025] DRAMEN_(DRAMEN) = NR2A(READL,RAMCSL);
wire RESET;                                                                     //[DRAM.NET:00027] ROMEN_(ROMEN) = NR3A(READL,RESET,DA_8);
wire CONSTL;                                                                    //[DRAM.NET:00028] CONEN_(CONEN) = NR2A(CONSTL,READL);
wire CONST;                                                                     //[DRAM.NET:00031] CONST_(CONST) = NR5A(DAL_8,DA_4,DA_5,DA_6,DA_7);
wire NOCON_0;                                                                   //[DRAM.NET:00037] NOCON_0_(NOCON_0) = NR4A(DAL_8,DA_6,DA_7,DAL_5);
wire NOCON_1;                                                                   //[DRAM.NET:00038] NOCON_1_(NOCON_1) = NR4A(DAL_8,DA_6,DA_7,DAL_4);
wire NOCON_2;                                                                   //[DRAM.NET:00039] NOCON_2_(NOCON_2) = NR3A(DAC,NOCON_0,NOCON_1);
wire GPWR;                                                                      //[DRAM.NET:00046] GPWR_(GPWR) = NR2A(GPWRL,DQCLK);
wire GPRD;                                                                      //[DRAM.NET:00047] GPRD_(GPRD) = N1A(GPRDL);
wire OUTPUTL;                                                                   //[DRAM.NET:00049] OUTPUT_(OUTPUT,OUTPUTL) = LD1A(DD_0,GPWR);
wire drv0_outDD_0;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_0;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_0;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_0;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv2_outDD_0;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv2_enDD_0;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_1;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_1;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_1;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_1;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_2;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_2;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_2;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_2;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_3;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_3;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_3;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_3;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_4;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_4;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_4;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_4;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_5;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_5;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_5;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_5;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_6;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_6;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_outDD_6;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv1_enDD_6;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_7;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_7;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_8;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_8;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_9;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_9;                                                               //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_10;                                                             //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_10;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_11;                                                             //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_11;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_12;                                                             //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_enDD_12;                                                              //[DRAM.NET:00010] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
wire drv0_outDD_13;                                                             //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
wire drv0_enDD_13;                                                              //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
wire drv0_outDD_14;                                                             //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
wire drv0_enDD_14;                                                              //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
wire drv0_outDD_15;                                                             //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;
wire drv0_enDD_15;                                                              //[DRAM.NET:00011]    DD_13,DD_14,DD_15,REGS,DRAMEN,DRAMWR,ROMEN,OUTPUT;


m_NCONST CONSTS_ (.MasterClock(MasterClock),.inDD_0(inDD_0),.inDD_1(inDD_1),.inDD_2(inDD_2),.inDD_3(inDD_3),.inDD_4(inDD_4),.inDD_5(inDD_5),.inDD_6(inDD_6),.inDD_7(inDD_7),.inDD_8(inDD_8),.inDD_9(inDD_9),.inDD_10(inDD_10),.inDD_11(inDD_11),.inDD_12(inDD_12),.inDD_13(inDD_13),.inDD_14(inDD_14),.inDD_15(inDD_15),.A_0(DA_0),.A_1(DA_1),.A_2(DA_2),.A_3(DA_3),.CONEN(CONEN),.RESETL(RESETL),.TRARDL(TRARDL),.IXRDL(IXRDL),.DMA1RDL(DMA1RDL),.MZ2RDL(MZ2RDL),.PCRDL(PCRDL),.MODRDL(MODRDL),.GPRDL(GPRDL),.NOCONL(NOCONL),.outDD_0(drv0_outDD_0),.enDD_0(drv0_enDD_0),.outDD_1(drv0_outDD_1),.enDD_1(drv0_enDD_1),.outDD_2(drv0_outDD_2),.enDD_2(drv0_enDD_2),.outDD_3(drv0_outDD_3),.enDD_3(drv0_enDD_3),.outDD_4(drv0_outDD_4),.enDD_4(drv0_enDD_4),.outDD_5(drv0_outDD_5),.enDD_5(drv0_enDD_5),.outDD_6(drv0_outDD_6),.enDD_6(drv0_enDD_6),.outDD_7(drv0_outDD_7),.enDD_7(drv0_enDD_7),.outDD_8(drv0_outDD_8),.enDD_8(drv0_enDD_8),.outDD_9(drv0_outDD_9),.enDD_9(drv0_enDD_9),.outDD_10(drv0_outDD_10),.enDD_10(drv0_enDD_10),.outDD_11(drv0_outDD_11),.enDD_11(drv0_enDD_11),.outDD_12(drv0_outDD_12),.enDD_12(drv0_enDD_12),.outDD_13(drv0_outDD_13),.enDD_13(drv0_enDD_13),.outDD_14(drv0_outDD_14),.enDD_14(drv0_enDD_14),.outDD_15(drv0_outDD_15),.enDD_15(drv0_enDD_15));//[DRAM.NET:00016] CONSTS_(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DD_9,DD_10,DD_11,DD_12,
                                                                                //[DRAM.NET:00017]    DD_13,DD_14,DD_15) = NCONST(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,
                                                                                //[DRAM.NET:00018]    DD_9,DD_10,DD_11,DD_12,DD_13,DD_14,DD_15,DA_0,DA_1,DA_2,DA_3,CONEN,RESETL,
                                                                                //[DRAM.NET:00019]    TRARDL,IXRDL,DMA1RDL,MZ2RDL,PCRDL,MODRDL,GPRDL,NOCONL);

m_FILL OTHERS_ (.MasterClock(MasterClock),.inDD_0(inDD_0),.inDD_1(inDD_1),.inDD_2(inDD_2),.inDD_3(inDD_3),.inDD_4(inDD_4),.inDD_5(inDD_5),.inDD_6(inDD_6),.A_0(DA_0),.A_1(DA_1),.A_2(DA_2),.A_3(DA_3),.A_4(DA_4),.A_5(DA_5),.A_6(DA_6),.ENAB(NOCON_3),.outDD_0(drv1_outDD_0),.enDD_0(drv1_enDD_0),.outDD_1(drv1_outDD_1),.enDD_1(drv1_enDD_1),.outDD_2(drv1_outDD_2),.enDD_2(drv1_enDD_2),.outDD_3(drv1_outDD_3),.enDD_3(drv1_enDD_3),.outDD_4(drv1_outDD_4),.enDD_4(drv1_enDD_4),.outDD_5(drv1_outDD_5),.enDD_5(drv1_enDD_5),.outDD_6(drv1_outDD_6),.enDD_6(drv1_enDD_6));//[DRAM.NET:00021] OTHERS_(DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6) = FILL(DD_0,DD_1,DD_2,DD_3,DD_4,
                                                                                //[DRAM.NET:00022]    DD_5,DD_6,DA_0,DA_1,DA_2,DA_3,DA_4,DA_5,DA_6,NOCON_3);
/* Address decoding .. such as it is .. for the DSP space */

assign DRAMEN = ~(READL | RAMCSL);                                              //[DRAM.NET:00025] DRAMEN_(DRAMEN) = NR2A(READL,RAMCSL);
assign DRAMWR = ~(WRITEL | RAMCSL | DQCLK);                                     //[DRAM.NET:00026] DRAMWR_(DRAMWR) = NR3A(WRITEL,RAMCSL,DQCLK);
assign ROMEN = ~(READL | RESET | DA_8);                                         //[DRAM.NET:00027] ROMEN_(ROMEN) = NR3A(READL,RESET,DA_8);
assign CONEN = ~(CONSTL | READL);                                               //[DRAM.NET:00028] CONEN_(CONEN) = NR2A(CONSTL,READL);

assign RAMCSL = ~(DA_7 & DA_8);                                                 //[DRAM.NET:00030] RAMCSL_(RAMCSL) = ND2A(DA_7,DA_8);
assign CONST = ~(DAL_8 | DA_4 | DA_5 | DA_6 | DA_7);                            //[DRAM.NET:00031] CONST_(CONST) = NR5A(DAL_8,DA_4,DA_5,DA_6,DA_7);
assign CONSTL = ~CONST;                                                         //[DRAM.NET:00032] CONSTL_(CONSTL) = N1A(CONST);
assign REGS = ~(DAL_8 | DA_7 | DAL_6 | DA_4 | DA_5);                            //[DRAM.NET:00033] REGS_(REGS) = NR5A(DAL_8,DA_7,DAL_6,DA_4,DA_5);
/* Decode the unused space in memory map .. 10D to 13F.
   Also use this bus driver for DAC reads that are not implemented */

assign NOCON_0 = ~(DAL_8 | DA_6 | DA_7 | DAL_5);                                //[DRAM.NET:00037] NOCON_0_(NOCON_0) = NR4A(DAL_8,DA_6,DA_7,DAL_5);
assign NOCON_1 = ~(DAL_8 | DA_6 | DA_7 | DAL_4);                                //[DRAM.NET:00038] NOCON_1_(NOCON_1) = NR4A(DAL_8,DA_6,DA_7,DAL_4);
assign NOCON_2 = ~(DAC | NOCON_0 | NOCON_1);                                    //[DRAM.NET:00039] NOCON_2_(NOCON_2) = NR3A(DAC,NOCON_0,NOCON_1);
assign NOCON_3 = ~(READL | NOCON_2);                                            //[DRAM.NET:00040] NOCON_3_(NOCON_3) = NR2C(READL,NOCON_2);
assign NOCONL = ~NOCON_3;                                                       //[DRAM.NET:00041] NOCONL_(NOCONL) = N1A(NOCON_3);
assign RESET = ~RESETL;                                                         //[DRAM.NET:00042] RESET_(RESET) = N1A(RESETL);

/* The general purpose IO pins */

assign GPWR = ~(GPWRL | DQCLK);                                                 //[DRAM.NET:00046] GPWR_(GPWR) = NR2A(GPWRL,DQCLK);
assign GPRD = ~GPRDL;                                                           //[DRAM.NET:00047] GPRD_(GPRD) = N1A(GPRDL);
assign drv2_outDD_0 = INPUT; assign drv2_enDD_0 = GPRD;                         //[DRAM.NET:00048] INPUT_(DD_0) = BTS4B(INPUT,GPRD);
LD1A OUTPUT__inst (.MasterClock(MasterClock),.q(OUTPUT),.qL(OUTPUTL),.d(inDD_0),.en(GPWR));//[DRAM.NET:00049] OUTPUT_(OUTPUT,OUTPUTL) = LD1A(DD_0,GPWR);
assign outDD_0 = (drv0_outDD_0 & drv0_enDD_0) | (drv1_outDD_0 & drv1_enDD_0) | (drv2_outDD_0 & drv2_enDD_0);
assign enDD_0 = drv0_enDD_0 | drv1_enDD_0 | drv2_enDD_0;
assign outDD_1 = (drv0_outDD_1 & drv0_enDD_1) | (drv1_outDD_1 & drv1_enDD_1);
assign enDD_1 = drv0_enDD_1 | drv1_enDD_1;
assign outDD_2 = (drv0_outDD_2 & drv0_enDD_2) | (drv1_outDD_2 & drv1_enDD_2);
assign enDD_2 = drv0_enDD_2 | drv1_enDD_2;
assign outDD_3 = (drv0_outDD_3 & drv0_enDD_3) | (drv1_outDD_3 & drv1_enDD_3);
assign enDD_3 = drv0_enDD_3 | drv1_enDD_3;
assign outDD_4 = (drv0_outDD_4 & drv0_enDD_4) | (drv1_outDD_4 & drv1_enDD_4);
assign enDD_4 = drv0_enDD_4 | drv1_enDD_4;
assign outDD_5 = (drv0_outDD_5 & drv0_enDD_5) | (drv1_outDD_5 & drv1_enDD_5);
assign enDD_5 = drv0_enDD_5 | drv1_enDD_5;
assign outDD_6 = (drv0_outDD_6 & drv0_enDD_6) | (drv1_outDD_6 & drv1_enDD_6);
assign enDD_6 = drv0_enDD_6 | drv1_enDD_6;
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
endmodule                                                                       //[DRAM.NET:00050] END MODULE;
