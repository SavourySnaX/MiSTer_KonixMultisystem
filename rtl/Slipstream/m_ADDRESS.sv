                                                                                //[ADDRESS.NET:00001] COMPILE;
                                                                                //[ADDRESS.NET:00002] DIRECTORY MASTER;

module m_ADDRESS                                                                //[ADDRESS.NET:00004] MODULE ADDRESS;
(                                                                               //[ADDRESS.NET:00004] MODULE ADDRESS;

    input    MasterClock,
    input    DDB_0,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_1,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_2,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_3,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_4,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_5,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_6,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_7,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    DDB_8,                                                             //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    PD_0,                                                              //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    PD_1,                                                              //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    PD_2,                                                              //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    PD_3,                                                              //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    PD_4,                                                              //[ADDRESS.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,PD_0,PD_1,PD_2,PD_3,PD_4,
    input    PD_5,                                                              //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    PD_6,                                                              //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    PD_7,                                                              //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    PD_8,                                                              //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    ASEL_0,                                                            //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    ASEL_1,                                                            //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_1,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_2,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_3,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_4,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_5,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_6,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_7,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_8,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    A_9,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    CLK,                                                               //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
    input    DQCLK,                                                             //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
    input    RESETL,                                                            //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
    input    IXWRL,                                                             //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
    input    IXRDL,                                                             //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
    input    TRARDL,                                                            //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
    input    INTRALDL,                                                          //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
                                                                                //[ADDRESS.NET:00007]    PD_5,PD_6,PD_7,PD_8,ASEL_0,ASEL_1,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,CLK,
                                                                                //[ADDRESS.NET:00008]    DQCLK,RESETL,IXWRL,IXRDL,TRARDL,INTRALDL;
    output    outDD_0, enDD_0,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_1, enDD_1,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_2, enDD_2,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_3, enDD_3,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_4, enDD_4,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_5, enDD_5,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_6, enDD_6,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_7, enDD_7,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    outDD_8, enDD_8,                                                  //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_0,                                                             //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_1,                                                             //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_2,                                                             //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_3,                                                             //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_4,                                                             //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
    output    DA_5,                                                             //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DA_6,                                                             //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DA_7,                                                             //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DA_8,                                                             //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_0,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_1,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_2,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_3,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_4,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_5,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_6,                                                            //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
    output    DAL_8                                                             //[ADDRESS.NET:00010]    DA_5,DA_6,DA_7,DA_8,DAL_0,DAL_1,DAL_2,DAL_3,DAL_4,DAL_5,DAL_6,DAL_8;
);                                                                              //[ADDRESS.NET:00004] MODULE ADDRESS;
                                                                                //[ADDRESS.NET:00011] LEVEL FUNCTION;
wire LOADIX;                                                                    //[ADDRESS.NET:00017] LOADIX_(LOADIX) = NR2C(IXWRL,DQCLK);
wire IX_0;                                                                      //[ADDRESS.NET:00018] IXREG_0_(IX_0,IXL_0) = LD1A(DDB_0,LOADIX);
wire IXL_0;                                                                     //[ADDRESS.NET:00018] IXREG_0_(IX_0,IXL_0) = LD1A(DDB_0,LOADIX);
wire IX_1;                                                                      //[ADDRESS.NET:00019] IXREG_1_(IX_1,IXL_1) = LD1A(DDB_1,LOADIX);
wire IXL_1;                                                                     //[ADDRESS.NET:00019] IXREG_1_(IX_1,IXL_1) = LD1A(DDB_1,LOADIX);
wire IX_2;                                                                      //[ADDRESS.NET:00020] IXREG_2_(IX_2,IXL_2) = LD1A(DDB_2,LOADIX);
wire IXL_2;                                                                     //[ADDRESS.NET:00020] IXREG_2_(IX_2,IXL_2) = LD1A(DDB_2,LOADIX);
wire IX_3;                                                                      //[ADDRESS.NET:00021] IXREG_3_(IX_3,IXL_3) = LD1A(DDB_3,LOADIX);
wire IXL_3;                                                                     //[ADDRESS.NET:00021] IXREG_3_(IX_3,IXL_3) = LD1A(DDB_3,LOADIX);
wire IX_4;                                                                      //[ADDRESS.NET:00022] IXREG_4_(IX_4,IXL_4) = LD1A(DDB_4,LOADIX);
wire IXL_4;                                                                     //[ADDRESS.NET:00022] IXREG_4_(IX_4,IXL_4) = LD1A(DDB_4,LOADIX);
wire IX_5;                                                                      //[ADDRESS.NET:00023] IXREG_5_(IX_5,IXL_5) = LD1A(DDB_5,LOADIX);
wire IXL_5;                                                                     //[ADDRESS.NET:00023] IXREG_5_(IX_5,IXL_5) = LD1A(DDB_5,LOADIX);
wire IX_6;                                                                      //[ADDRESS.NET:00024] IXREG_6_(IX_6,IXL_6) = LD1A(DDB_6,LOADIX);
wire IXL_6;                                                                     //[ADDRESS.NET:00024] IXREG_6_(IX_6,IXL_6) = LD1A(DDB_6,LOADIX);
wire IX_7;                                                                      //[ADDRESS.NET:00025] IXREG_7_(IX_7,IXL_7) = LD1A(DDB_7,LOADIX);
wire IXL_7;                                                                     //[ADDRESS.NET:00025] IXREG_7_(IX_7,IXL_7) = LD1A(DDB_7,LOADIX);
wire IX_8;                                                                      //[ADDRESS.NET:00026] IXREG_8_(IX_8,IXL_8) = LD1A(DDB_8,LOADIX);
wire IXL_8;                                                                     //[ADDRESS.NET:00026] IXREG_8_(IX_8,IXL_8) = LD1A(DDB_8,LOADIX);
wire IXRD;                                                                      //[ADDRESS.NET:00027] READIX_0_(DD_0) = BTS5B(IXL_0,IXRD);
wire INTRA_0;                                                                   //[ADDRESS.NET:00039] INTRA_0_(INTRA_0,INTRAL_0) = LD2A(A_1,INTRALDL);
wire INTRAL_0;                                                                  //[ADDRESS.NET:00039] INTRA_0_(INTRA_0,INTRAL_0) = LD2A(A_1,INTRALDL);
wire INTRA_1;                                                                   //[ADDRESS.NET:00040] INTRA_1_(INTRA_1,INTRAL_1) = LD2A(A_2,INTRALDL);
wire INTRAL_1;                                                                  //[ADDRESS.NET:00040] INTRA_1_(INTRA_1,INTRAL_1) = LD2A(A_2,INTRALDL);
wire INTRA_2;                                                                   //[ADDRESS.NET:00041] INTRA_2_(INTRA_2,INTRAL_2) = LD2A(A_3,INTRALDL);
wire INTRAL_2;                                                                  //[ADDRESS.NET:00041] INTRA_2_(INTRA_2,INTRAL_2) = LD2A(A_3,INTRALDL);
wire INTRA_3;                                                                   //[ADDRESS.NET:00042] INTRA_3_(INTRA_3,INTRAL_3) = LD2A(A_4,INTRALDL);
wire INTRAL_3;                                                                  //[ADDRESS.NET:00042] INTRA_3_(INTRA_3,INTRAL_3) = LD2A(A_4,INTRALDL);
wire INTRA_4;                                                                   //[ADDRESS.NET:00043] INTRA_4_(INTRA_4,INTRAL_4) = LD2A(A_5,INTRALDL);
wire INTRAL_4;                                                                  //[ADDRESS.NET:00043] INTRA_4_(INTRA_4,INTRAL_4) = LD2A(A_5,INTRALDL);
wire INTRA_5;                                                                   //[ADDRESS.NET:00044] INTRA_5_(INTRA_5,INTRAL_5) = LD2A(A_6,INTRALDL);
wire INTRAL_5;                                                                  //[ADDRESS.NET:00044] INTRA_5_(INTRA_5,INTRAL_5) = LD2A(A_6,INTRALDL);
wire INTRA_6;                                                                   //[ADDRESS.NET:00045] INTRA_6_(INTRA_6,INTRAL_6) = LD2A(A_7,INTRALDL);
wire INTRAL_6;                                                                  //[ADDRESS.NET:00045] INTRA_6_(INTRA_6,INTRAL_6) = LD2A(A_7,INTRALDL);
wire INTRA_7;                                                                   //[ADDRESS.NET:00046] INTRA_7_(INTRA_7,INTRAL_7) = LD2A(A_8,INTRALDL);
wire INTRAL_7;                                                                  //[ADDRESS.NET:00046] INTRA_7_(INTRA_7,INTRAL_7) = LD2A(A_8,INTRALDL);
wire INTRA_8;                                                                   //[ADDRESS.NET:00047] INTRA_8_(INTRA_8,INTRAL_8) = LD2A(A_9,INTRALDL);
wire INTRAL_8;                                                                  //[ADDRESS.NET:00047] INTRA_8_(INTRA_8,INTRAL_8) = LD2A(A_9,INTRALDL);
wire TRARD;                                                                     //[ADDRESS.NET:00048] READINTRA_0_(DD_0) = BTS5B(INTRAL_0,TRARD);
wire IXA_0;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_1;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_2;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_3;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_4;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_5;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_6;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_7;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire IXA_8;                                                                     //[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
wire DAUN_0;                                                                    //[ADDRESS.NET:00067] DAUN_0_(DAUN_0) = MUX3(PD_0,IXA_0,INTRA_0,ASEL_0,ASEL_1);
wire DAUN_1;                                                                    //[ADDRESS.NET:00068] DAUN_1_(DAUN_1) = MUX3(PD_1,IXA_1,INTRA_1,ASEL_0,ASEL_1);
wire DAUN_2;                                                                    //[ADDRESS.NET:00069] DAUN_2_(DAUN_2) = MUX3(PD_2,IXA_2,INTRA_2,ASEL_0,ASEL_1);
wire DAUN_3;                                                                    //[ADDRESS.NET:00070] DAUN_3_(DAUN_3) = MUX3(PD_3,IXA_3,INTRA_3,ASEL_0,ASEL_1);
wire DAUN_4;                                                                    //[ADDRESS.NET:00071] DAUN_4_(DAUN_4) = MUX3(PD_4,IXA_4,INTRA_4,ASEL_0,ASEL_1);
wire DAUN_5;                                                                    //[ADDRESS.NET:00072] DAUN_5_(DAUN_5) = MUX3(PD_5,IXA_5,INTRA_5,ASEL_0,ASEL_1);
wire DAUN_6;                                                                    //[ADDRESS.NET:00073] DAUN_6_(DAUN_6) = MUX3(PD_6,IXA_6,INTRA_6,ASEL_0,ASEL_1);
wire DAUN_7;                                                                    //[ADDRESS.NET:00074] DAUN_7_(DAUN_7) = MUX3(PD_7,IXA_7,INTRA_7,ASEL_0,ASEL_1);
wire DAUN_8;                                                                    //[ADDRESS.NET:00075] DAUN_8_(DAUN_8) = MUX3(PD_8,IXA_8,INTRA_8,ASEL_0,ASEL_1);
wire DAL_7;                                                                     //[ADDRESS.NET:00086] DA_7_(DA_7,DAL_7) = FD2A(DAUN_7,CLK,RESETL);
wire drv0_outDD_0;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_0;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_0;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_0;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_1;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_1;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_1;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_1;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_2;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_2;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_2;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_2;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_3;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_3;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_3;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_3;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_4;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_4;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_4;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_4;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_5;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_5;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_5;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_5;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_6;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_6;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_6;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_6;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_7;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_7;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_7;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_7;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_outDD_8;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv0_enDD_8;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_outDD_8;                                                              //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,
wire drv1_enDD_8;                                                               //[ADDRESS.NET:00009] OUTPUTS	DD_0,DD_1,DD_2,DD_3,DD_4,DD_5,DD_6,DD_7,DD_8,DA_0,DA_1,DA_2,DA_3,DA_4,

/* The IX register */


assign LOADIX = ~(IXWRL | DQCLK);                                               //[ADDRESS.NET:00017] LOADIX_(LOADIX) = NR2C(IXWRL,DQCLK);
LD1A IXREG_0__inst (.MasterClock(MasterClock),.q(IX_0),.qL(IXL_0),.d(DDB_0),.en(LOADIX));//[ADDRESS.NET:00018] IXREG_0_(IX_0,IXL_0) = LD1A(DDB_0,LOADIX);
LD1A IXREG_1__inst (.MasterClock(MasterClock),.q(IX_1),.qL(IXL_1),.d(DDB_1),.en(LOADIX));//[ADDRESS.NET:00019] IXREG_1_(IX_1,IXL_1) = LD1A(DDB_1,LOADIX);
LD1A IXREG_2__inst (.MasterClock(MasterClock),.q(IX_2),.qL(IXL_2),.d(DDB_2),.en(LOADIX));//[ADDRESS.NET:00020] IXREG_2_(IX_2,IXL_2) = LD1A(DDB_2,LOADIX);
LD1A IXREG_3__inst (.MasterClock(MasterClock),.q(IX_3),.qL(IXL_3),.d(DDB_3),.en(LOADIX));//[ADDRESS.NET:00021] IXREG_3_(IX_3,IXL_3) = LD1A(DDB_3,LOADIX);
LD1A IXREG_4__inst (.MasterClock(MasterClock),.q(IX_4),.qL(IXL_4),.d(DDB_4),.en(LOADIX));//[ADDRESS.NET:00022] IXREG_4_(IX_4,IXL_4) = LD1A(DDB_4,LOADIX);
LD1A IXREG_5__inst (.MasterClock(MasterClock),.q(IX_5),.qL(IXL_5),.d(DDB_5),.en(LOADIX));//[ADDRESS.NET:00023] IXREG_5_(IX_5,IXL_5) = LD1A(DDB_5,LOADIX);
LD1A IXREG_6__inst (.MasterClock(MasterClock),.q(IX_6),.qL(IXL_6),.d(DDB_6),.en(LOADIX));//[ADDRESS.NET:00024] IXREG_6_(IX_6,IXL_6) = LD1A(DDB_6,LOADIX);
LD1A IXREG_7__inst (.MasterClock(MasterClock),.q(IX_7),.qL(IXL_7),.d(DDB_7),.en(LOADIX));//[ADDRESS.NET:00025] IXREG_7_(IX_7,IXL_7) = LD1A(DDB_7,LOADIX);
LD1A IXREG_8__inst (.MasterClock(MasterClock),.q(IX_8),.qL(IXL_8),.d(DDB_8),.en(LOADIX));//[ADDRESS.NET:00026] IXREG_8_(IX_8,IXL_8) = LD1A(DDB_8,LOADIX);
assign drv0_outDD_0 = ~IXL_0; assign drv0_enDD_0 = IXRD;                        //[ADDRESS.NET:00027] READIX_0_(DD_0) = BTS5B(IXL_0,IXRD);
assign drv0_outDD_1 = ~IXL_1; assign drv0_enDD_1 = IXRD;                        //[ADDRESS.NET:00028] READIX_1_(DD_1) = BTS5B(IXL_1,IXRD);
assign drv0_outDD_2 = ~IXL_2; assign drv0_enDD_2 = IXRD;                        //[ADDRESS.NET:00029] READIX_2_(DD_2) = BTS5B(IXL_2,IXRD);
assign drv0_outDD_3 = ~IXL_3; assign drv0_enDD_3 = IXRD;                        //[ADDRESS.NET:00030] READIX_3_(DD_3) = BTS5B(IXL_3,IXRD);
assign drv0_outDD_4 = ~IXL_4; assign drv0_enDD_4 = IXRD;                        //[ADDRESS.NET:00031] READIX_4_(DD_4) = BTS5B(IXL_4,IXRD);
assign drv0_outDD_5 = ~IXL_5; assign drv0_enDD_5 = IXRD;                        //[ADDRESS.NET:00032] READIX_5_(DD_5) = BTS5B(IXL_5,IXRD);
assign drv0_outDD_6 = ~IXL_6; assign drv0_enDD_6 = IXRD;                        //[ADDRESS.NET:00033] READIX_6_(DD_6) = BTS5B(IXL_6,IXRD);
assign drv0_outDD_7 = ~IXL_7; assign drv0_enDD_7 = IXRD;                        //[ADDRESS.NET:00034] READIX_7_(DD_7) = BTS5B(IXL_7,IXRD);
assign drv0_outDD_8 = ~IXL_8; assign drv0_enDD_8 = IXRD;                        //[ADDRESS.NET:00035] READIX_8_(DD_8) = BTS5B(IXL_8,IXRD);
assign IXRD = ~IXRDL;                                                           //[ADDRESS.NET:00036] IXRD_(IXRD) = N1C(IXRDL);
/* The Intrude address register */

LD2A INTRA_0__inst (.MasterClock(MasterClock),.q(INTRA_0),.qL(INTRAL_0),.d(A_1),.en(INTRALDL));//[ADDRESS.NET:00039] INTRA_0_(INTRA_0,INTRAL_0) = LD2A(A_1,INTRALDL);
LD2A INTRA_1__inst (.MasterClock(MasterClock),.q(INTRA_1),.qL(INTRAL_1),.d(A_2),.en(INTRALDL));//[ADDRESS.NET:00040] INTRA_1_(INTRA_1,INTRAL_1) = LD2A(A_2,INTRALDL);
LD2A INTRA_2__inst (.MasterClock(MasterClock),.q(INTRA_2),.qL(INTRAL_2),.d(A_3),.en(INTRALDL));//[ADDRESS.NET:00041] INTRA_2_(INTRA_2,INTRAL_2) = LD2A(A_3,INTRALDL);
LD2A INTRA_3__inst (.MasterClock(MasterClock),.q(INTRA_3),.qL(INTRAL_3),.d(A_4),.en(INTRALDL));//[ADDRESS.NET:00042] INTRA_3_(INTRA_3,INTRAL_3) = LD2A(A_4,INTRALDL);
LD2A INTRA_4__inst (.MasterClock(MasterClock),.q(INTRA_4),.qL(INTRAL_4),.d(A_5),.en(INTRALDL));//[ADDRESS.NET:00043] INTRA_4_(INTRA_4,INTRAL_4) = LD2A(A_5,INTRALDL);
LD2A INTRA_5__inst (.MasterClock(MasterClock),.q(INTRA_5),.qL(INTRAL_5),.d(A_6),.en(INTRALDL));//[ADDRESS.NET:00044] INTRA_5_(INTRA_5,INTRAL_5) = LD2A(A_6,INTRALDL);
LD2A INTRA_6__inst (.MasterClock(MasterClock),.q(INTRA_6),.qL(INTRAL_6),.d(A_7),.en(INTRALDL));//[ADDRESS.NET:00045] INTRA_6_(INTRA_6,INTRAL_6) = LD2A(A_7,INTRALDL);
LD2A INTRA_7__inst (.MasterClock(MasterClock),.q(INTRA_7),.qL(INTRAL_7),.d(A_8),.en(INTRALDL));//[ADDRESS.NET:00046] INTRA_7_(INTRA_7,INTRAL_7) = LD2A(A_8,INTRALDL);
LD2A INTRA_8__inst (.MasterClock(MasterClock),.q(INTRA_8),.qL(INTRAL_8),.d(A_9),.en(INTRALDL));//[ADDRESS.NET:00047] INTRA_8_(INTRA_8,INTRAL_8) = LD2A(A_9,INTRALDL);
assign drv1_outDD_0 = ~INTRAL_0; assign drv1_enDD_0 = TRARD;                    //[ADDRESS.NET:00048] READINTRA_0_(DD_0) = BTS5B(INTRAL_0,TRARD);
assign drv1_outDD_1 = ~INTRAL_1; assign drv1_enDD_1 = TRARD;                    //[ADDRESS.NET:00049] READINTRA_1_(DD_1) = BTS5B(INTRAL_1,TRARD);
assign drv1_outDD_2 = ~INTRAL_2; assign drv1_enDD_2 = TRARD;                    //[ADDRESS.NET:00050] READINTRA_2_(DD_2) = BTS5B(INTRAL_2,TRARD);
assign drv1_outDD_3 = ~INTRAL_3; assign drv1_enDD_3 = TRARD;                    //[ADDRESS.NET:00051] READINTRA_3_(DD_3) = BTS5B(INTRAL_3,TRARD);
assign drv1_outDD_4 = ~INTRAL_4; assign drv1_enDD_4 = TRARD;                    //[ADDRESS.NET:00052] READINTRA_4_(DD_4) = BTS5B(INTRAL_4,TRARD);
assign drv1_outDD_5 = ~INTRAL_5; assign drv1_enDD_5 = TRARD;                    //[ADDRESS.NET:00053] READINTRA_5_(DD_5) = BTS5B(INTRAL_5,TRARD);
assign drv1_outDD_6 = ~INTRAL_6; assign drv1_enDD_6 = TRARD;                    //[ADDRESS.NET:00054] READINTRA_6_(DD_6) = BTS5B(INTRAL_6,TRARD);
assign drv1_outDD_7 = ~INTRAL_7; assign drv1_enDD_7 = TRARD;                    //[ADDRESS.NET:00055] READINTRA_7_(DD_7) = BTS5B(INTRAL_7,TRARD);
assign drv1_outDD_8 = ~INTRAL_8; assign drv1_enDD_8 = TRARD;                    //[ADDRESS.NET:00056] READINTRA_8_(DD_8) = BTS5B(INTRAL_8,TRARD);
assign TRARD = ~TRARDL;                                                         //[ADDRESS.NET:00057] TRARD_(TRARD) = N1C(TRARDL);

/* The address adder */

m_ADDER9 ADADDRESS_ (.MasterClock(MasterClock),.X_0(PD_0),.X_1(PD_1),.X_2(PD_2),.X_3(PD_3),.X_4(PD_4),.X_5(PD_5),.X_6(PD_6),.X_7(PD_7),.X_8(PD_8),.Y_0(IX_0),.Y_1(IX_1),.Y_2(IX_2),.Y_3(IX_3),.Y_4(IX_4),.Y_5(IX_5),.Y_6(IX_6),.Y_7(IX_7),.Y_8(IX_8),.Z_0(IXA_0),.Z_1(IXA_1),.Z_2(IXA_2),.Z_3(IXA_3),.Z_4(IXA_4),.Z_5(IXA_5),.Z_6(IXA_6),.Z_7(IXA_7),.Z_8(IXA_8));//[ADDRESS.NET:00061] ADADDRESS_(IXA_0,IXA_1,IXA_2,IXA_3,IXA_4,IXA_5,IXA_6,IXA_7,IXA_8) = ADDER9(PD_0,
                                                                                //[ADDRESS.NET:00062]    PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,IX_0,IX_1,IX_2,IX_3,IX_4,IX_5,IX_6,
                                                                                //[ADDRESS.NET:00063]    IX_7,IX_8);

/* The address multiplexer .. produces data address unlatched */

m_MUX3 DAUN_0_ (.MasterClock(MasterClock),.A(PD_0),.B(IXA_0),.C(INTRA_0),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_0));//[ADDRESS.NET:00067] DAUN_0_(DAUN_0) = MUX3(PD_0,IXA_0,INTRA_0,ASEL_0,ASEL_1);
m_MUX3 DAUN_1_ (.MasterClock(MasterClock),.A(PD_1),.B(IXA_1),.C(INTRA_1),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_1));//[ADDRESS.NET:00068] DAUN_1_(DAUN_1) = MUX3(PD_1,IXA_1,INTRA_1,ASEL_0,ASEL_1);
m_MUX3 DAUN_2_ (.MasterClock(MasterClock),.A(PD_2),.B(IXA_2),.C(INTRA_2),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_2));//[ADDRESS.NET:00069] DAUN_2_(DAUN_2) = MUX3(PD_2,IXA_2,INTRA_2,ASEL_0,ASEL_1);
m_MUX3 DAUN_3_ (.MasterClock(MasterClock),.A(PD_3),.B(IXA_3),.C(INTRA_3),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_3));//[ADDRESS.NET:00070] DAUN_3_(DAUN_3) = MUX3(PD_3,IXA_3,INTRA_3,ASEL_0,ASEL_1);
m_MUX3 DAUN_4_ (.MasterClock(MasterClock),.A(PD_4),.B(IXA_4),.C(INTRA_4),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_4));//[ADDRESS.NET:00071] DAUN_4_(DAUN_4) = MUX3(PD_4,IXA_4,INTRA_4,ASEL_0,ASEL_1);
m_MUX3 DAUN_5_ (.MasterClock(MasterClock),.A(PD_5),.B(IXA_5),.C(INTRA_5),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_5));//[ADDRESS.NET:00072] DAUN_5_(DAUN_5) = MUX3(PD_5,IXA_5,INTRA_5,ASEL_0,ASEL_1);
m_MUX3 DAUN_6_ (.MasterClock(MasterClock),.A(PD_6),.B(IXA_6),.C(INTRA_6),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_6));//[ADDRESS.NET:00073] DAUN_6_(DAUN_6) = MUX3(PD_6,IXA_6,INTRA_6,ASEL_0,ASEL_1);
m_MUX3 DAUN_7_ (.MasterClock(MasterClock),.A(PD_7),.B(IXA_7),.C(INTRA_7),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_7));//[ADDRESS.NET:00074] DAUN_7_(DAUN_7) = MUX3(PD_7,IXA_7,INTRA_7,ASEL_0,ASEL_1);
m_MUX3 DAUN_8_ (.MasterClock(MasterClock),.A(PD_8),.B(IXA_8),.C(INTRA_8),.SEL_0(ASEL_0),.SEL_1(ASEL_1),.Z_3(DAUN_8));//[ADDRESS.NET:00075] DAUN_8_(DAUN_8) = MUX3(PD_8,IXA_8,INTRA_8,ASEL_0,ASEL_1);

/* The pipeline latch */ 

FD2A DA_0__inst (.MasterClock(MasterClock),.q(DA_0),.qL(DAL_0),.d(DAUN_0),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00079] DA_0_(DA_0,DAL_0) = FD2A(DAUN_0,CLK,RESETL);
FD2A DA_1__inst (.MasterClock(MasterClock),.q(DA_1),.qL(DAL_1),.d(DAUN_1),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00080] DA_1_(DA_1,DAL_1) = FD2A(DAUN_1,CLK,RESETL);
FD2A DA_2__inst (.MasterClock(MasterClock),.q(DA_2),.qL(DAL_2),.d(DAUN_2),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00081] DA_2_(DA_2,DAL_2) = FD2A(DAUN_2,CLK,RESETL);
FD2A DA_3__inst (.MasterClock(MasterClock),.q(DA_3),.qL(DAL_3),.d(DAUN_3),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00082] DA_3_(DA_3,DAL_3) = FD2A(DAUN_3,CLK,RESETL);
FD2A DA_4__inst (.MasterClock(MasterClock),.q(DA_4),.qL(DAL_4),.d(DAUN_4),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00083] DA_4_(DA_4,DAL_4) = FD2A(DAUN_4,CLK,RESETL);
FD2A DA_5__inst (.MasterClock(MasterClock),.q(DA_5),.qL(DAL_5),.d(DAUN_5),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00084] DA_5_(DA_5,DAL_5) = FD2A(DAUN_5,CLK,RESETL);
FD2A DA_6__inst (.MasterClock(MasterClock),.q(DA_6),.qL(DAL_6),.d(DAUN_6),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00085] DA_6_(DA_6,DAL_6) = FD2A(DAUN_6,CLK,RESETL);
FD2A DA_7__inst (.MasterClock(MasterClock),.q(DA_7),.qL(DAL_7),.d(DAUN_7),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00086] DA_7_(DA_7,DAL_7) = FD2A(DAUN_7,CLK,RESETL);
FD2A DA_8__inst (.MasterClock(MasterClock),.q(DA_8),.qL(DAL_8),.d(DAUN_8),.clk(CLK),.rL(RESETL));//[ADDRESS.NET:00087] DA_8_(DA_8,DAL_8) = FD2A(DAUN_8,CLK,RESETL);

assign outDD_0 = (drv0_outDD_0 & drv0_enDD_0) | (drv1_outDD_0 & drv1_enDD_0);
assign enDD_0 = drv0_enDD_0 | drv1_enDD_0;
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
assign outDD_7 = (drv0_outDD_7 & drv0_enDD_7) | (drv1_outDD_7 & drv1_enDD_7);
assign enDD_7 = drv0_enDD_7 | drv1_enDD_7;
assign outDD_8 = (drv0_outDD_8 & drv0_enDD_8) | (drv1_outDD_8 & drv1_enDD_8);
assign enDD_8 = drv0_enDD_8 | drv1_enDD_8;
endmodule                                                                       //[ADDRESS.NET:00089] END MODULE;
