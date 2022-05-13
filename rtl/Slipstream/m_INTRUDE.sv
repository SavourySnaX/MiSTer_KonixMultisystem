                                                                                //[INTRUDE.NET:00001] COMPILE;
                                                                                //[INTRUDE.NET:00002] DIRECTORY MASTER;

module m_INTRUDE                                                                //[INTRUDE.NET:00004] MODULE INTRUDE;
(                                                                               //[INTRUDE.NET:00004] MODULE INTRUDE;

    input    MasterClock,
    input    inHD_0,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_1,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_2,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_3,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_4,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_5,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_6,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    inHD_7,                                                            //[INTRUDE.NET:00006] INPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,
    input    DDB_0,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_1,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_2,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_3,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_4,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_5,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_6,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_7,                                                             //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
    input    DDB_8,                                                             //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_9,                                                             //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_10,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_11,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_12,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_13,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_14,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DDB_15,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    HA_0,                                                              //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    HA_9,                                                              //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    HA_10,                                                             //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    DCSL,                                                              //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    RDL,                                                               //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    WRL,                                                               //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    INTRUD,                                                            //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
    input    CLK,                                                               //[INTRUDE.NET:00009]    CLK,DQCLK,RESETL;
    input    DQCLK,                                                             //[INTRUDE.NET:00009]    CLK,DQCLK,RESETL;
    input    RESETL,                                                            //[INTRUDE.NET:00009]    CLK,DQCLK,RESETL;
                                                                                //[INTRUDE.NET:00007]    DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,
                                                                                //[INTRUDE.NET:00008]    DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,HA_0,HA_9,HA_10,DCSL,RDL,WRL,INTRUD,
                                                                                //[INTRUDE.NET:00009]    CLK,DQCLK,RESETL;
    output    outHD_0, enHD_0,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_1, enHD_1,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_2, enHD_2,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_3, enHD_3,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_4, enHD_4,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_5, enHD_5,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_6, enHD_6,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outHD_7, enHD_7,                                                  //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_0, enD_0,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_1, enD_1,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_2, enD_2,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_3, enD_3,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_4, enD_4,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_5, enD_5,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_6, enD_6,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_7, enD_7,                                                    //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
    output    outD_8, enD_8,                                                    //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_9, enD_9,                                                    //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_10, enD_10,                                                  //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_11, enD_11,                                                  //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_12, enD_12,                                                  //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_13, enD_13,                                                  //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_14, enD_14,                                                  //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    outD_15, enD_15,                                                  //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    RUN,                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    RUNANT,                                                           //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    TRURD,                                                            //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
    output    INTRALDL                                                          //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
);                                                                              //[INTRUDE.NET:00004] MODULE INTRUDE;
                                                                                //[INTRUDE.NET:00012] LEVEL FUNCTION;
wire INP_0;                                                                     //[INTRUDE.NET:00017] INTRU_0_(OUP_0,OUPL_0) = LD1A(INP_0,WRLO);
wire WRLO;                                                                      //[INTRUDE.NET:00017] INTRU_0_(OUP_0,OUPL_0) = LD1A(INP_0,WRLO);
wire OUP_0;                                                                     //[INTRUDE.NET:00017] INTRU_0_(OUP_0,OUPL_0) = LD1A(INP_0,WRLO);
wire OUPL_0;                                                                    //[INTRUDE.NET:00017] INTRU_0_(OUP_0,OUPL_0) = LD1A(INP_0,WRLO);
wire INP_1;                                                                     //[INTRUDE.NET:00018] INTRU_1_(OUP_1,OUPL_1) = LD1A(INP_1,WRLO);
wire OUP_1;                                                                     //[INTRUDE.NET:00018] INTRU_1_(OUP_1,OUPL_1) = LD1A(INP_1,WRLO);
wire OUPL_1;                                                                    //[INTRUDE.NET:00018] INTRU_1_(OUP_1,OUPL_1) = LD1A(INP_1,WRLO);
wire INP_2;                                                                     //[INTRUDE.NET:00019] INTRU_2_(OUP_2,OUPL_2) = LD1A(INP_2,WRLO);
wire OUP_2;                                                                     //[INTRUDE.NET:00019] INTRU_2_(OUP_2,OUPL_2) = LD1A(INP_2,WRLO);
wire OUPL_2;                                                                    //[INTRUDE.NET:00019] INTRU_2_(OUP_2,OUPL_2) = LD1A(INP_2,WRLO);
wire INP_3;                                                                     //[INTRUDE.NET:00020] INTRU_3_(OUP_3,OUPL_3) = LD1A(INP_3,WRLO);
wire OUP_3;                                                                     //[INTRUDE.NET:00020] INTRU_3_(OUP_3,OUPL_3) = LD1A(INP_3,WRLO);
wire OUPL_3;                                                                    //[INTRUDE.NET:00020] INTRU_3_(OUP_3,OUPL_3) = LD1A(INP_3,WRLO);
wire INP_4;                                                                     //[INTRUDE.NET:00021] INTRU_4_(OUP_4,OUPL_4) = LD1A(INP_4,WRLO);
wire OUP_4;                                                                     //[INTRUDE.NET:00021] INTRU_4_(OUP_4,OUPL_4) = LD1A(INP_4,WRLO);
wire OUPL_4;                                                                    //[INTRUDE.NET:00021] INTRU_4_(OUP_4,OUPL_4) = LD1A(INP_4,WRLO);
wire INP_5;                                                                     //[INTRUDE.NET:00022] INTRU_5_(OUP_5,OUPL_5) = LD1A(INP_5,WRLO);
wire OUP_5;                                                                     //[INTRUDE.NET:00022] INTRU_5_(OUP_5,OUPL_5) = LD1A(INP_5,WRLO);
wire OUPL_5;                                                                    //[INTRUDE.NET:00022] INTRU_5_(OUP_5,OUPL_5) = LD1A(INP_5,WRLO);
wire INP_6;                                                                     //[INTRUDE.NET:00023] INTRU_6_(OUP_6,OUPL_6) = LD1A(INP_6,WRLO);
wire OUP_6;                                                                     //[INTRUDE.NET:00023] INTRU_6_(OUP_6,OUPL_6) = LD1A(INP_6,WRLO);
wire OUPL_6;                                                                    //[INTRUDE.NET:00023] INTRU_6_(OUP_6,OUPL_6) = LD1A(INP_6,WRLO);
wire INP_7;                                                                     //[INTRUDE.NET:00024] INTRU_7_(OUP_7,OUPL_7) = LD1A(INP_7,WRLO);
wire OUP_7;                                                                     //[INTRUDE.NET:00024] INTRU_7_(OUP_7,OUPL_7) = LD1A(INP_7,WRLO);
wire OUPL_7;                                                                    //[INTRUDE.NET:00024] INTRU_7_(OUP_7,OUPL_7) = LD1A(INP_7,WRLO);
wire INP_8;                                                                     //[INTRUDE.NET:00025] INTRU_8_(OUP_8,OUPL_8) = LD1A(INP_8,WRHI);
wire WRHI;                                                                      //[INTRUDE.NET:00025] INTRU_8_(OUP_8,OUPL_8) = LD1A(INP_8,WRHI);
wire OUP_8;                                                                     //[INTRUDE.NET:00025] INTRU_8_(OUP_8,OUPL_8) = LD1A(INP_8,WRHI);
wire OUPL_8;                                                                    //[INTRUDE.NET:00025] INTRU_8_(OUP_8,OUPL_8) = LD1A(INP_8,WRHI);
wire INP_9;                                                                     //[INTRUDE.NET:00026] INTRU_9_(OUP_9,OUPL_9) = LD1A(INP_9,WRHI);
wire OUP_9;                                                                     //[INTRUDE.NET:00026] INTRU_9_(OUP_9,OUPL_9) = LD1A(INP_9,WRHI);
wire OUPL_9;                                                                    //[INTRUDE.NET:00026] INTRU_9_(OUP_9,OUPL_9) = LD1A(INP_9,WRHI);
wire INP_10;                                                                    //[INTRUDE.NET:00027] INTRU_10_(OUP_10,OUPL_10) = LD1A(INP_10,WRHI);
wire OUP_10;                                                                    //[INTRUDE.NET:00027] INTRU_10_(OUP_10,OUPL_10) = LD1A(INP_10,WRHI);
wire OUPL_10;                                                                   //[INTRUDE.NET:00027] INTRU_10_(OUP_10,OUPL_10) = LD1A(INP_10,WRHI);
wire INP_11;                                                                    //[INTRUDE.NET:00028] INTRU_11_(OUP_11,OUPL_11) = LD1A(INP_11,WRHI);
wire OUP_11;                                                                    //[INTRUDE.NET:00028] INTRU_11_(OUP_11,OUPL_11) = LD1A(INP_11,WRHI);
wire OUPL_11;                                                                   //[INTRUDE.NET:00028] INTRU_11_(OUP_11,OUPL_11) = LD1A(INP_11,WRHI);
wire INP_12;                                                                    //[INTRUDE.NET:00029] INTRU_12_(OUP_12,OUPL_12) = LD1A(INP_12,WRHI);
wire OUP_12;                                                                    //[INTRUDE.NET:00029] INTRU_12_(OUP_12,OUPL_12) = LD1A(INP_12,WRHI);
wire OUPL_12;                                                                   //[INTRUDE.NET:00029] INTRU_12_(OUP_12,OUPL_12) = LD1A(INP_12,WRHI);
wire INP_13;                                                                    //[INTRUDE.NET:00030] INTRU_13_(OUP_13,OUPL_13) = LD1A(INP_13,WRHI);
wire OUP_13;                                                                    //[INTRUDE.NET:00030] INTRU_13_(OUP_13,OUPL_13) = LD1A(INP_13,WRHI);
wire OUPL_13;                                                                   //[INTRUDE.NET:00030] INTRU_13_(OUP_13,OUPL_13) = LD1A(INP_13,WRHI);
wire INP_14;                                                                    //[INTRUDE.NET:00031] INTRU_14_(OUP_14,OUPL_14) = LD1A(INP_14,WRHI);
wire OUP_14;                                                                    //[INTRUDE.NET:00031] INTRU_14_(OUP_14,OUPL_14) = LD1A(INP_14,WRHI);
wire OUPL_14;                                                                   //[INTRUDE.NET:00031] INTRU_14_(OUP_14,OUPL_14) = LD1A(INP_14,WRHI);
wire INP_15;                                                                    //[INTRUDE.NET:00032] INTRU_15_(OUP_15,OUPL_15) = LD1A(INP_15,WRHI);
wire OUP_15;                                                                    //[INTRUDE.NET:00032] INTRU_15_(OUP_15,OUPL_15) = LD1A(INP_15,WRHI);
wire OUPL_15;                                                                   //[INTRUDE.NET:00032] INTRU_15_(OUP_15,OUPL_15) = LD1A(INP_15,WRHI);
wire WRHIL;                                                                     //[INTRUDE.NET:00036] WRHI_(WRHI) = NR2C(WRHIL,DQCLK);
wire WRLOL;                                                                     //[INTRUDE.NET:00037] WRLO_(WRLO) = NR2C(WRLOL,DQCLK);
wire HTRUWRHI;                                                                  //[INTRUDE.NET:00039] WRHIL_(WRHIL) = NR2A(HTRUWRHI,TRUWR);
wire TRUWR;                                                                     //[INTRUDE.NET:00039] WRHIL_(WRHIL) = NR2A(HTRUWRHI,TRUWR);
wire HTRUWRLO;                                                                  //[INTRUDE.NET:00040] WRLOL_(WRLOL) = NR2A(HTRUWRLO,TRUWR);
wire TRUWR1L;                                                                   //[INTRUDE.NET:00047] TRUWR_(TRUWR) = ND2A(TRUWR1L,TRUWR2L);
wire TRUWR2L;                                                                   //[INTRUDE.NET:00047] TRUWR_(TRUWR) = ND2A(TRUWR1L,TRUWR2L);
wire INTRUDL_0;                                                                 //[INTRUDE.NET:00048] TRUWR1L_(TRUWR1L) = ND4A(INTRUDL_0,INTRUDL_2,INTRUDL_3,INTRUD);
wire INTRUDL_2;                                                                 //[INTRUDE.NET:00048] TRUWR1L_(TRUWR1L) = ND4A(INTRUDL_0,INTRUDL_2,INTRUDL_3,INTRUD);
wire INTRUDL_3;                                                                 //[INTRUDE.NET:00048] TRUWR1L_(TRUWR1L) = ND4A(INTRUDL_0,INTRUDL_2,INTRUDL_3,INTRUD);
wire INTRUDL_1;                                                                 //[INTRUDE.NET:00049] TRUWR2L_(TRUWR2L) = ND4A(INTRUDL_1,INTRUDL_2,INTRUDL_3,INTRUD);
wire HTRURDHI;                                                                  //[INTRUDE.NET:00073] HDHI_0_(HD_0) = BTS4A(OUP_8,HTRURDHI);
wire HTRURDLO;                                                                  //[INTRUDE.NET:00081] HDLO_0_(HD_0) = BTS4A(OUP_0,HTRURDLO);
wire HOSTWRL;                                                                   //[INTRUDE.NET:00094] INP_0_(INP_0) = MUX(DDB_0,HOSTWRL,HD_0,HOSTWR);
wire HOSTWR;                                                                    //[INTRUDE.NET:00094] INP_0_(INP_0) = MUX(DDB_0,HOSTWRL,HD_0,HOSTWR);
wire HAL_0;                                                                     //[INTRUDE.NET:00114] HTRURDHI_(HTRURDHI) = NR4B(DCSL,RDL,HAL_0,HA_10);
wire HOSTRD;                                                                    //[INTRUDE.NET:00116] HOSTRD_(HOSTRD) = NR3B(DCSL,RDL,HA_10);
wire HAL_10;                                                                    //[INTRUDE.NET:00118] HAL_10_(HAL_10) = N1A(HA_10);
wire HAL_9;                                                                     //[INTRUDE.NET:00119] HAL_9_(HAL_9) = N1A(HA_9);
wire INTRUD_0;                                                                  //[INTRUDE.NET:00131] INTRUDE_(INTRUD_0,INTRUD_1,INTRUD_2,INTRUD_3,INTRUDL_0,INTRUDL_1,INTRUDL_2,
wire INTRUD_1;                                                                  //[INTRUDE.NET:00131] INTRUDE_(INTRUD_0,INTRUD_1,INTRUD_2,INTRUD_3,INTRUDL_0,INTRUDL_1,INTRUDL_2,
wire INTRUD_2;                                                                  //[INTRUDE.NET:00131] INTRUDE_(INTRUD_0,INTRUD_1,INTRUD_2,INTRUD_3,INTRUDL_0,INTRUDL_1,INTRUDL_2,
wire INTRUD_3;                                                                  //[INTRUDE.NET:00131] INTRUDE_(INTRUD_0,INTRUD_1,INTRUD_2,INTRUD_3,INTRUDL_0,INTRUDL_1,INTRUDL_2,
wire RUNEN;                                                                     //[INTRUDE.NET:00146] RUNEN_(RUNEN) = OR4A(HAL_10,HAL_9,DCSL,WRL);
wire STATEN;                                                                    //[INTRUDE.NET:00147] STATEN_(STATEN) = NR4C(HAL_10,HAL_9,DCSL,RDL);
wire RUNBIT;                                                                    //[INTRUDE.NET:00149] RUNBIT_(RUNBIT,RUNBITL) = FD2A(HD_4,RUNEN,RESETL);
wire RUNBITL;                                                                   //[INTRUDE.NET:00149] RUNBIT_(RUNBIT,RUNBITL) = FD2A(HD_4,RUNEN,RESETL);
wire RUNL;                                                                      //[INTRUDE.NET:00157] STATUS_4_(HD_4) = BTS5A(RUNL,STATEN);
wire STEP_1;                                                                    //[INTRUDE.NET:00163] STEP_1_(STEP_1,STEPL_1) = FD2A(RUNEN,CLK,RESETL);
wire STEPL_1;                                                                   //[INTRUDE.NET:00163] STEP_1_(STEP_1,STEPL_1) = FD2A(RUNEN,CLK,RESETL);
wire STEP_2;                                                                    //[INTRUDE.NET:00164] STEP_2_(STEP_2,STEPL_2) = FD2A(STEP_1,CLK,RESETL);
wire STEPL_2;                                                                   //[INTRUDE.NET:00164] STEP_2_(STEP_2,STEPL_2) = FD2A(STEP_1,CLK,RESETL);
wire STEP_3;                                                                    //[INTRUDE.NET:00166] STEP_3_(STEP_3) = NR2A(STEP_1,STEPL_2);
wire drv0_outHD_0;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_0;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_0;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_0;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_0;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_0;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_1;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_1;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_1;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_1;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_1;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_1;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_2;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_2;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_2;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_2;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_2;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_2;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_3;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_3;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_3;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_3;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_3;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_3;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_4;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_4;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_4;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_4;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_4;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_4;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_5;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_5;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_5;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_5;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_5;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_5;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_6;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_6;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_6;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_6;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_6;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_6;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outHD_7;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enHD_7;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_outHD_7;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv1_enHD_7;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_outHD_7;                                                              //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv2_enHD_7;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_0;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_0;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_1;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_1;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_2;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_2;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_3;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_3;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_4;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_4;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_5;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_5;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_6;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_6;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_7;                                                               //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_enD_7;                                                                //[INTRUDE.NET:00010] OUTPUTS	HD_0,HD_1,HD_2,HD_3,HD_4,HD_5,HD_6,HD_7,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,
wire drv0_outD_8;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_8;                                                                //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_9;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_9;                                                                //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_10;                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_10;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_11;                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_11;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_12;                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_12;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_13;                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_13;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_14;                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_14;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_outD_15;                                                              //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;
wire drv0_enD_15;                                                               //[INTRUDE.NET:00011]    D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,RUN,RUNANT,TRURD,INTRALDL;

/* The Intrude register */

LD1A INTRU_0__inst (.MasterClock(MasterClock),.q(OUP_0),.qL(OUPL_0),.d(INP_0),.en(WRLO));//[INTRUDE.NET:00017] INTRU_0_(OUP_0,OUPL_0) = LD1A(INP_0,WRLO);
LD1A INTRU_1__inst (.MasterClock(MasterClock),.q(OUP_1),.qL(OUPL_1),.d(INP_1),.en(WRLO));//[INTRUDE.NET:00018] INTRU_1_(OUP_1,OUPL_1) = LD1A(INP_1,WRLO);
LD1A INTRU_2__inst (.MasterClock(MasterClock),.q(OUP_2),.qL(OUPL_2),.d(INP_2),.en(WRLO));//[INTRUDE.NET:00019] INTRU_2_(OUP_2,OUPL_2) = LD1A(INP_2,WRLO);
LD1A INTRU_3__inst (.MasterClock(MasterClock),.q(OUP_3),.qL(OUPL_3),.d(INP_3),.en(WRLO));//[INTRUDE.NET:00020] INTRU_3_(OUP_3,OUPL_3) = LD1A(INP_3,WRLO);
LD1A INTRU_4__inst (.MasterClock(MasterClock),.q(OUP_4),.qL(OUPL_4),.d(INP_4),.en(WRLO));//[INTRUDE.NET:00021] INTRU_4_(OUP_4,OUPL_4) = LD1A(INP_4,WRLO);
LD1A INTRU_5__inst (.MasterClock(MasterClock),.q(OUP_5),.qL(OUPL_5),.d(INP_5),.en(WRLO));//[INTRUDE.NET:00022] INTRU_5_(OUP_5,OUPL_5) = LD1A(INP_5,WRLO);
LD1A INTRU_6__inst (.MasterClock(MasterClock),.q(OUP_6),.qL(OUPL_6),.d(INP_6),.en(WRLO));//[INTRUDE.NET:00023] INTRU_6_(OUP_6,OUPL_6) = LD1A(INP_6,WRLO);
LD1A INTRU_7__inst (.MasterClock(MasterClock),.q(OUP_7),.qL(OUPL_7),.d(INP_7),.en(WRLO));//[INTRUDE.NET:00024] INTRU_7_(OUP_7,OUPL_7) = LD1A(INP_7,WRLO);
LD1A INTRU_8__inst (.MasterClock(MasterClock),.q(OUP_8),.qL(OUPL_8),.d(INP_8),.en(WRHI));//[INTRUDE.NET:00025] INTRU_8_(OUP_8,OUPL_8) = LD1A(INP_8,WRHI);
LD1A INTRU_9__inst (.MasterClock(MasterClock),.q(OUP_9),.qL(OUPL_9),.d(INP_9),.en(WRHI));//[INTRUDE.NET:00026] INTRU_9_(OUP_9,OUPL_9) = LD1A(INP_9,WRHI);
LD1A INTRU_10__inst (.MasterClock(MasterClock),.q(OUP_10),.qL(OUPL_10),.d(INP_10),.en(WRHI));//[INTRUDE.NET:00027] INTRU_10_(OUP_10,OUPL_10) = LD1A(INP_10,WRHI);
LD1A INTRU_11__inst (.MasterClock(MasterClock),.q(OUP_11),.qL(OUPL_11),.d(INP_11),.en(WRHI));//[INTRUDE.NET:00028] INTRU_11_(OUP_11,OUPL_11) = LD1A(INP_11,WRHI);
LD1A INTRU_12__inst (.MasterClock(MasterClock),.q(OUP_12),.qL(OUPL_12),.d(INP_12),.en(WRHI));//[INTRUDE.NET:00029] INTRU_12_(OUP_12,OUPL_12) = LD1A(INP_12,WRHI);
LD1A INTRU_13__inst (.MasterClock(MasterClock),.q(OUP_13),.qL(OUPL_13),.d(INP_13),.en(WRHI));//[INTRUDE.NET:00030] INTRU_13_(OUP_13,OUPL_13) = LD1A(INP_13,WRHI);
LD1A INTRU_14__inst (.MasterClock(MasterClock),.q(OUP_14),.qL(OUPL_14),.d(INP_14),.en(WRHI));//[INTRUDE.NET:00031] INTRU_14_(OUP_14,OUPL_14) = LD1A(INP_14,WRHI);
LD1A INTRU_15__inst (.MasterClock(MasterClock),.q(OUP_15),.qL(OUPL_15),.d(INP_15),.en(WRHI));//[INTRUDE.NET:00032] INTRU_15_(OUP_15,OUPL_15) = LD1A(INP_15,WRHI);

/* Decode the write signals .... */

assign WRHI = ~(WRHIL | DQCLK);                                                 //[INTRUDE.NET:00036] WRHI_(WRHI) = NR2C(WRHIL,DQCLK);
assign WRLO = ~(WRLOL | DQCLK);                                                 //[INTRUDE.NET:00037] WRLO_(WRLO) = NR2C(WRLOL,DQCLK);

assign WRHIL = ~(HTRUWRHI | TRUWR);                                             //[INTRUDE.NET:00039] WRHIL_(WRHIL) = NR2A(HTRUWRHI,TRUWR);
assign WRLOL = ~(HTRUWRLO | TRUWR);                                             //[INTRUDE.NET:00040] WRLOL_(WRLOL) = NR2A(HTRUWRLO,TRUWR);

/* The DSP may write into the INTRUDE register UNLESS the write cycle is
   in progress or the Read cycle has gone beyond state 2.

   ie. writes are only allowed in states 0000, 0001 and 0010. */

assign TRUWR = ~(TRUWR1L & TRUWR2L);                                            //[INTRUDE.NET:00047] TRUWR_(TRUWR) = ND2A(TRUWR1L,TRUWR2L);
assign TRUWR1L = ~(INTRUDL_0 & INTRUDL_2 & INTRUDL_3 & INTRUD);                 //[INTRUDE.NET:00048] TRUWR1L_(TRUWR1L) = ND4A(INTRUDL_0,INTRUDL_2,INTRUDL_3,INTRUD);
assign TRUWR2L = ~(INTRUDL_1 & INTRUDL_2 & INTRUDL_3 & INTRUD);                 //[INTRUDE.NET:00049] TRUWR2L_(TRUWR2L) = ND4A(INTRUDL_1,INTRUDL_2,INTRUDL_3,INTRUD);


/* Enable this onto the DSP data bus */

assign drv0_outD_0 = ~OUPL_0; assign drv0_enD_0 = TRURD;                        //[INTRUDE.NET:00054] DDAT_0_(D_0) = BTS5B(OUPL_0,TRURD);
assign drv0_outD_1 = ~OUPL_1; assign drv0_enD_1 = TRURD;                        //[INTRUDE.NET:00055] DDAT_1_(D_1) = BTS5B(OUPL_1,TRURD);
assign drv0_outD_2 = ~OUPL_2; assign drv0_enD_2 = TRURD;                        //[INTRUDE.NET:00056] DDAT_2_(D_2) = BTS5B(OUPL_2,TRURD);
assign drv0_outD_3 = ~OUPL_3; assign drv0_enD_3 = TRURD;                        //[INTRUDE.NET:00057] DDAT_3_(D_3) = BTS5B(OUPL_3,TRURD);
assign drv0_outD_4 = ~OUPL_4; assign drv0_enD_4 = TRURD;                        //[INTRUDE.NET:00058] DDAT_4_(D_4) = BTS5B(OUPL_4,TRURD);
assign drv0_outD_5 = ~OUPL_5; assign drv0_enD_5 = TRURD;                        //[INTRUDE.NET:00059] DDAT_5_(D_5) = BTS5B(OUPL_5,TRURD);
assign drv0_outD_6 = ~OUPL_6; assign drv0_enD_6 = TRURD;                        //[INTRUDE.NET:00060] DDAT_6_(D_6) = BTS5B(OUPL_6,TRURD);
assign drv0_outD_7 = ~OUPL_7; assign drv0_enD_7 = TRURD;                        //[INTRUDE.NET:00061] DDAT_7_(D_7) = BTS5B(OUPL_7,TRURD);
assign drv0_outD_8 = ~OUPL_8; assign drv0_enD_8 = TRURD;                        //[INTRUDE.NET:00062] DDAT_8_(D_8) = BTS5B(OUPL_8,TRURD);
assign drv0_outD_9 = ~OUPL_9; assign drv0_enD_9 = TRURD;                        //[INTRUDE.NET:00063] DDAT_9_(D_9) = BTS5B(OUPL_9,TRURD);
assign drv0_outD_10 = ~OUPL_10; assign drv0_enD_10 = TRURD;                     //[INTRUDE.NET:00064] DDAT_10_(D_10) = BTS5B(OUPL_10,TRURD);
assign drv0_outD_11 = ~OUPL_11; assign drv0_enD_11 = TRURD;                     //[INTRUDE.NET:00065] DDAT_11_(D_11) = BTS5B(OUPL_11,TRURD);
assign drv0_outD_12 = ~OUPL_12; assign drv0_enD_12 = TRURD;                     //[INTRUDE.NET:00066] DDAT_12_(D_12) = BTS5B(OUPL_12,TRURD);
assign drv0_outD_13 = ~OUPL_13; assign drv0_enD_13 = TRURD;                     //[INTRUDE.NET:00067] DDAT_13_(D_13) = BTS5B(OUPL_13,TRURD);
assign drv0_outD_14 = ~OUPL_14; assign drv0_enD_14 = TRURD;                     //[INTRUDE.NET:00068] DDAT_14_(D_14) = BTS5B(OUPL_14,TRURD);
assign drv0_outD_15 = ~OUPL_15; assign drv0_enD_15 = TRURD;                     //[INTRUDE.NET:00069] DDAT_15_(D_15) = BTS5B(OUPL_15,TRURD);

/* And onto the host data bus */

assign drv0_outHD_0 = OUP_8; assign drv0_enHD_0 = HTRURDHI;                     //[INTRUDE.NET:00073] HDHI_0_(HD_0) = BTS4A(OUP_8,HTRURDHI);
assign drv0_outHD_1 = OUP_9; assign drv0_enHD_1 = HTRURDHI;                     //[INTRUDE.NET:00074] HDHI_1_(HD_1) = BTS4A(OUP_9,HTRURDHI);
assign drv0_outHD_2 = OUP_10; assign drv0_enHD_2 = HTRURDHI;                    //[INTRUDE.NET:00075] HDHI_2_(HD_2) = BTS4A(OUP_10,HTRURDHI);
assign drv0_outHD_3 = OUP_11; assign drv0_enHD_3 = HTRURDHI;                    //[INTRUDE.NET:00076] HDHI_3_(HD_3) = BTS4A(OUP_11,HTRURDHI);
assign drv0_outHD_4 = OUP_12; assign drv0_enHD_4 = HTRURDHI;                    //[INTRUDE.NET:00077] HDHI_4_(HD_4) = BTS4A(OUP_12,HTRURDHI);
assign drv0_outHD_5 = OUP_13; assign drv0_enHD_5 = HTRURDHI;                    //[INTRUDE.NET:00078] HDHI_5_(HD_5) = BTS4A(OUP_13,HTRURDHI);
assign drv0_outHD_6 = OUP_14; assign drv0_enHD_6 = HTRURDHI;                    //[INTRUDE.NET:00079] HDHI_6_(HD_6) = BTS4A(OUP_14,HTRURDHI);
assign drv0_outHD_7 = OUP_15; assign drv0_enHD_7 = HTRURDHI;                    //[INTRUDE.NET:00080] HDHI_7_(HD_7) = BTS4A(OUP_15,HTRURDHI);
assign drv1_outHD_0 = OUP_0; assign drv1_enHD_0 = HTRURDLO;                     //[INTRUDE.NET:00081] HDLO_0_(HD_0) = BTS4A(OUP_0,HTRURDLO);
assign drv1_outHD_1 = OUP_1; assign drv1_enHD_1 = HTRURDLO;                     //[INTRUDE.NET:00082] HDLO_1_(HD_1) = BTS4A(OUP_1,HTRURDLO);
assign drv1_outHD_2 = OUP_2; assign drv1_enHD_2 = HTRURDLO;                     //[INTRUDE.NET:00083] HDLO_2_(HD_2) = BTS4A(OUP_2,HTRURDLO);
assign drv1_outHD_3 = OUP_3; assign drv1_enHD_3 = HTRURDLO;                     //[INTRUDE.NET:00084] HDLO_3_(HD_3) = BTS4A(OUP_3,HTRURDLO);
assign drv1_outHD_4 = OUP_4; assign drv1_enHD_4 = HTRURDLO;                     //[INTRUDE.NET:00085] HDLO_4_(HD_4) = BTS4A(OUP_4,HTRURDLO);
assign drv1_outHD_5 = OUP_5; assign drv1_enHD_5 = HTRURDLO;                     //[INTRUDE.NET:00086] HDLO_5_(HD_5) = BTS4A(OUP_5,HTRURDLO);
assign drv1_outHD_6 = OUP_6; assign drv1_enHD_6 = HTRURDLO;                     //[INTRUDE.NET:00087] HDLO_6_(HD_6) = BTS4A(OUP_6,HTRURDLO);
assign drv1_outHD_7 = OUP_7; assign drv1_enHD_7 = HTRURDLO;                     //[INTRUDE.NET:00088] HDLO_7_(HD_7) = BTS4A(OUP_7,HTRURDLO);

/* Multiplex the two sources onto the latch. Unless the host is
   writing (hostwrL is LOW), then DSP data is always directed to the latch
   input.    */

m_MUX INP_0_ (.MasterClock(MasterClock),.A(DDB_0),.B(HOSTWRL),.C(inHD_0),.D(HOSTWR),.Z(INP_0));//[INTRUDE.NET:00094] INP_0_(INP_0) = MUX(DDB_0,HOSTWRL,HD_0,HOSTWR);
m_MUX INP_1_ (.MasterClock(MasterClock),.A(DDB_1),.B(HOSTWRL),.C(inHD_1),.D(HOSTWR),.Z(INP_1));//[INTRUDE.NET:00095] INP_1_(INP_1) = MUX(DDB_1,HOSTWRL,HD_1,HOSTWR);
m_MUX INP_2_ (.MasterClock(MasterClock),.A(DDB_2),.B(HOSTWRL),.C(inHD_2),.D(HOSTWR),.Z(INP_2));//[INTRUDE.NET:00096] INP_2_(INP_2) = MUX(DDB_2,HOSTWRL,HD_2,HOSTWR);
m_MUX INP_3_ (.MasterClock(MasterClock),.A(DDB_3),.B(HOSTWRL),.C(inHD_3),.D(HOSTWR),.Z(INP_3));//[INTRUDE.NET:00097] INP_3_(INP_3) = MUX(DDB_3,HOSTWRL,HD_3,HOSTWR);
m_MUX INP_4_ (.MasterClock(MasterClock),.A(DDB_4),.B(HOSTWRL),.C(inHD_4),.D(HOSTWR),.Z(INP_4));//[INTRUDE.NET:00098] INP_4_(INP_4) = MUX(DDB_4,HOSTWRL,HD_4,HOSTWR);
m_MUX INP_5_ (.MasterClock(MasterClock),.A(DDB_5),.B(HOSTWRL),.C(inHD_5),.D(HOSTWR),.Z(INP_5));//[INTRUDE.NET:00099] INP_5_(INP_5) = MUX(DDB_5,HOSTWRL,HD_5,HOSTWR);
m_MUX INP_6_ (.MasterClock(MasterClock),.A(DDB_6),.B(HOSTWRL),.C(inHD_6),.D(HOSTWR),.Z(INP_6));//[INTRUDE.NET:00100] INP_6_(INP_6) = MUX(DDB_6,HOSTWRL,HD_6,HOSTWR);
m_MUX INP_7_ (.MasterClock(MasterClock),.A(DDB_7),.B(HOSTWRL),.C(inHD_7),.D(HOSTWR),.Z(INP_7));//[INTRUDE.NET:00101] INP_7_(INP_7) = MUX(DDB_7,HOSTWRL,HD_7,HOSTWR);
m_MUX INP_8_ (.MasterClock(MasterClock),.A(DDB_8),.B(HOSTWRL),.C(inHD_0),.D(HOSTWR),.Z(INP_8));//[INTRUDE.NET:00102] INP_8_(INP_8) = MUX(DDB_8,HOSTWRL,HD_0,HOSTWR);
m_MUX INP_9_ (.MasterClock(MasterClock),.A(DDB_9),.B(HOSTWRL),.C(inHD_1),.D(HOSTWR),.Z(INP_9));//[INTRUDE.NET:00103] INP_9_(INP_9) = MUX(DDB_9,HOSTWRL,HD_1,HOSTWR);
m_MUX INP_10_ (.MasterClock(MasterClock),.A(DDB_10),.B(HOSTWRL),.C(inHD_2),.D(HOSTWR),.Z(INP_10));//[INTRUDE.NET:00104] INP_10_(INP_10) = MUX(DDB_10,HOSTWRL,HD_2,HOSTWR);
m_MUX INP_11_ (.MasterClock(MasterClock),.A(DDB_11),.B(HOSTWRL),.C(inHD_3),.D(HOSTWR),.Z(INP_11));//[INTRUDE.NET:00105] INP_11_(INP_11) = MUX(DDB_11,HOSTWRL,HD_3,HOSTWR);
m_MUX INP_12_ (.MasterClock(MasterClock),.A(DDB_12),.B(HOSTWRL),.C(inHD_4),.D(HOSTWR),.Z(INP_12));//[INTRUDE.NET:00106] INP_12_(INP_12) = MUX(DDB_12,HOSTWRL,HD_4,HOSTWR);
m_MUX INP_13_ (.MasterClock(MasterClock),.A(DDB_13),.B(HOSTWRL),.C(inHD_5),.D(HOSTWR),.Z(INP_13));//[INTRUDE.NET:00107] INP_13_(INP_13) = MUX(DDB_13,HOSTWRL,HD_5,HOSTWR);
m_MUX INP_14_ (.MasterClock(MasterClock),.A(DDB_14),.B(HOSTWRL),.C(inHD_6),.D(HOSTWR),.Z(INP_14));//[INTRUDE.NET:00108] INP_14_(INP_14) = MUX(DDB_14,HOSTWRL,HD_6,HOSTWR);
m_MUX INP_15_ (.MasterClock(MasterClock),.A(DDB_15),.B(HOSTWRL),.C(inHD_7),.D(HOSTWR),.Z(INP_15));//[INTRUDE.NET:00109] INP_15_(INP_15) = MUX(DDB_15,HOSTWRL,HD_7,HOSTWR);


/* Decode the Host Intrude transactions */

assign HTRURDHI = ~(DCSL | RDL | HAL_0 | HA_10);                                //[INTRUDE.NET:00114] HTRURDHI_(HTRURDHI) = NR4B(DCSL,RDL,HAL_0,HA_10);
assign HTRURDLO = ~(DCSL | RDL | HA_0 | HA_10);                                 //[INTRUDE.NET:00115] HTRURDLO_(HTRURDLO) = NR4B(DCSL,RDL,HA_0,HA_10);
assign HOSTRD = ~(DCSL | RDL | HA_10);                                          //[INTRUDE.NET:00116] HOSTRD_(HOSTRD) = NR3B(DCSL,RDL,HA_10);
assign HAL_0 = ~HA_0;                                                           //[INTRUDE.NET:00117] HAL_0_(HAL_0) = N1A(HA_0);
assign HAL_10 = ~HA_10;                                                         //[INTRUDE.NET:00118] HAL_10_(HAL_10) = N1A(HA_10);
assign HAL_9 = ~HA_9;                                                           //[INTRUDE.NET:00119] HAL_9_(HAL_9) = N1A(HA_9);

assign HTRUWRHI = ~(DCSL | WRL | HAL_0 | HA_10);                                //[INTRUDE.NET:00121] HTRUWRHI_(HTRUWRHI) = NR4A(DCSL,WRL,HAL_0,HA_10);
assign HTRUWRLO = ~(DCSL | WRL | HA_0 | HA_10);                                 //[INTRUDE.NET:00122] HTRWRLO_(HTRUWRLO) = NR4A(DCSL,WRL,HA_0,HA_10);
assign HOSTWR = ~(DCSL | WRL | HA_10);                                          //[INTRUDE.NET:00123] HOSTWR_(HOSTWR) = NR3C(DCSL,WRL,HA_10);
assign HOSTWRL = ~HOSTWR;                                                       //[INTRUDE.NET:00124] HOSTWRL_(HOSTWRL) = N1C(HOSTWR);
assign INTRALDL = ~(HOSTWR | HOSTRD);                                           //[INTRUDE.NET:00125] INTRALDL_(INTRALDL) = NR2C(HOSTWR,HOSTRD);


/* include the state machine */


m_RUDMC INTRUDE_ (.MasterClock(MasterClock),.WR(HOSTWR),.CLK(CLK),.RESETL(RESETL),.RD(HOSTRD),.TRUDY(INTRUD),.I_0(INTRUD_0),.I_1(INTRUD_1),.I_2(INTRUD_2),.I_3(INTRUD_3),.IL_0(INTRUDL_0),.IL_1(INTRUDL_1),.IL_2(INTRUDL_2),.IL_3(INTRUDL_3));//[INTRUDE.NET:00131] INTRUDE_(INTRUD_0,INTRUD_1,INTRUD_2,INTRUD_3,INTRUDL_0,INTRUDL_1,INTRUDL_2,
                                                                                //[INTRUDE.NET:00132]    INTRUDL_3) = RUDMC(HOSTWR,CLK,RESETL,HOSTRD,INTRUD);


/* The contents of the INTRUDE register are enabled onto the DSP data bus 
	and the write
	enable for the RAM (or other internal location) become active
	during when the machine has reached its final state (1100) and
	there is a current INTRUDE instruction.	*/

assign TRURD = INTRUD_2 & INTRUD_3 & INTRUD;                                    //[INTRUDE.NET:00141] TRURD_(TRURD) = AND3C(INTRUD_2,INTRUD_3,INTRUD);


/* The RUN/STATUS register */

assign RUNEN = HAL_10 | HAL_9 | DCSL | WRL;                                     //[INTRUDE.NET:00146] RUNEN_(RUNEN) = OR4A(HAL_10,HAL_9,DCSL,WRL);
assign STATEN = ~(HAL_10 | HAL_9 | DCSL | RDL);                                 //[INTRUDE.NET:00147] STATEN_(STATEN) = NR4C(HAL_10,HAL_9,DCSL,RDL);

FD2A RUNBIT__inst (.MasterClock(MasterClock),.q(RUNBIT),.qL(RUNBITL),.d(inHD_4),.clk(RUNEN),.rL(RESETL));//[INTRUDE.NET:00149] RUNBIT_(RUNBIT,RUNBITL) = FD2A(HD_4,RUNEN,RESETL);

/* The status bits are as follows */

assign drv2_outHD_0 = ~INTRUDL_0; assign drv2_enHD_0 = STATEN;                  //[INTRUDE.NET:00153] STATUS_0_(HD_0) = BTS5A(INTRUDL_0,STATEN);
assign drv2_outHD_1 = ~INTRUDL_1; assign drv2_enHD_1 = STATEN;                  //[INTRUDE.NET:00154] STATUS_1_(HD_1) = BTS5A(INTRUDL_1,STATEN);
assign drv2_outHD_2 = ~INTRUDL_2; assign drv2_enHD_2 = STATEN;                  //[INTRUDE.NET:00155] STATUS_2_(HD_2) = BTS5A(INTRUDL_2,STATEN);
assign drv2_outHD_3 = ~INTRUDL_3; assign drv2_enHD_3 = STATEN;                  //[INTRUDE.NET:00156] STATUS_3_(HD_3) = BTS5A(INTRUDL_3,STATEN);
assign drv2_outHD_4 = ~RUNL; assign drv2_enHD_4 = STATEN;                       //[INTRUDE.NET:00157] STATUS_4_(HD_4) = BTS5A(RUNL,STATEN);
assign drv2_outHD_5 = ~RESETL; assign drv2_enHD_5 = STATEN;                     //[INTRUDE.NET:00158] STATUS_5_(HD_5) = BTS5A(RESETL,STATEN);
assign drv2_outHD_6 = ~RESETL; assign drv2_enHD_6 = STATEN;                     //[INTRUDE.NET:00159] STATUS_6_(HD_6) = BTS5A(RESETL,STATEN);
assign drv2_outHD_7 = ~RESETL; assign drv2_enHD_7 = STATEN;                     //[INTRUDE.NET:00160] STATUS_7_(HD_7) = BTS5A(RESETL,STATEN);
/* Run is also the cycle AFTER the RUN register has been written to */

FD2A STEP_1__inst (.MasterClock(MasterClock),.q(STEP_1),.qL(STEPL_1),.d(RUNEN),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00163] STEP_1_(STEP_1,STEPL_1) = FD2A(RUNEN,CLK,RESETL);
FD2A STEP_2__inst (.MasterClock(MasterClock),.q(STEP_2),.qL(STEPL_2),.d(STEP_1),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00164] STEP_2_(STEP_2,STEPL_2) = FD2A(STEP_1,CLK,RESETL);

assign STEP_3 = ~(STEP_1 | STEPL_2);                                            //[INTRUDE.NET:00166] STEP_3_(STEP_3) = NR2A(STEP_1,STEPL_2);

/* combine the two ..*/

assign RUNANT = STEP_3 | RUNBIT;                                                //[INTRUDE.NET:00170] RUNANT_(RUNANT) = OR2A(STEP_3,RUNBIT);
FD2A RUN__inst (.MasterClock(MasterClock),.q(RUN),.qL(RUNL),.d(RUNANT),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00171] RUN_(RUN,RUNL) = FD2A(RUNANT,CLK,RESETL);
assign outHD_0 = (drv0_outHD_0 & drv0_enHD_0) | (drv1_outHD_0 & drv1_enHD_0) | (drv2_outHD_0 & drv2_enHD_0);
assign enHD_0 = drv0_enHD_0 | drv1_enHD_0 | drv2_enHD_0;
assign outHD_1 = (drv0_outHD_1 & drv0_enHD_1) | (drv1_outHD_1 & drv1_enHD_1) | (drv2_outHD_1 & drv2_enHD_1);
assign enHD_1 = drv0_enHD_1 | drv1_enHD_1 | drv2_enHD_1;
assign outHD_2 = (drv0_outHD_2 & drv0_enHD_2) | (drv1_outHD_2 & drv1_enHD_2) | (drv2_outHD_2 & drv2_enHD_2);
assign enHD_2 = drv0_enHD_2 | drv1_enHD_2 | drv2_enHD_2;
assign outHD_3 = (drv0_outHD_3 & drv0_enHD_3) | (drv1_outHD_3 & drv1_enHD_3) | (drv2_outHD_3 & drv2_enHD_3);
assign enHD_3 = drv0_enHD_3 | drv1_enHD_3 | drv2_enHD_3;
assign outHD_4 = (drv0_outHD_4 & drv0_enHD_4) | (drv1_outHD_4 & drv1_enHD_4) | (drv2_outHD_4 & drv2_enHD_4);
assign enHD_4 = drv0_enHD_4 | drv1_enHD_4 | drv2_enHD_4;
assign outHD_5 = (drv0_outHD_5 & drv0_enHD_5) | (drv1_outHD_5 & drv1_enHD_5) | (drv2_outHD_5 & drv2_enHD_5);
assign enHD_5 = drv0_enHD_5 | drv1_enHD_5 | drv2_enHD_5;
assign outHD_6 = (drv0_outHD_6 & drv0_enHD_6) | (drv1_outHD_6 & drv1_enHD_6) | (drv2_outHD_6 & drv2_enHD_6);
assign enHD_6 = drv0_enHD_6 | drv1_enHD_6 | drv2_enHD_6;
assign outHD_7 = (drv0_outHD_7 & drv0_enHD_7) | (drv1_outHD_7 & drv1_enHD_7) | (drv2_outHD_7 & drv2_enHD_7);
assign enHD_7 = drv0_enHD_7 | drv1_enHD_7 | drv2_enHD_7;
assign outD_0 = (drv0_outD_0 & drv0_enD_0);
assign enD_0 = drv0_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1);
assign enD_1 = drv0_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2);
assign enD_2 = drv0_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3);
assign enD_3 = drv0_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4);
assign enD_4 = drv0_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5);
assign enD_5 = drv0_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6);
assign enD_6 = drv0_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7);
assign enD_7 = drv0_enD_7;
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
endmodule                                                                       //[INTRUDE.NET:00172] END MODULE;
