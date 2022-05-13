                                                                                //[PRAM.NET:00001] COMPILE;
                                                                                //[PRAM.NET:00002] DIRECTORY MASTER;

module m_PRAM                                                                   //[PRAM.NET:00004] MODULE PRAM;
(                                                                               //[PRAM.NET:00004] MODULE PRAM;

    input    MasterClock,
    input    inPD_0,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_1,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_2,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_3,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_4,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_5,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_6,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_7,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_8,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_9,                                                            //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_10,                                                           //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_11,                                                           //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_12,                                                           //[PRAM.NET:00006] INPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    input    inPD_13,                                                           //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inPD_14,                                                           //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inPD_15,                                                           //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_0,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_1,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_2,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_3,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_4,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_5,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_6,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    inD_7,                                                             //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    A_0,                                                               //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    A_9,                                                               //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    A_10,                                                              //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    DCSL,                                                              //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    RDL,                                                               //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    WRL,                                                               //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
    input    RUN,                                                               //[PRAM.NET:00008]    RUN,CLK,DQCLK;
    input    CLK,                                                               //[PRAM.NET:00008]    RUN,CLK,DQCLK;
    input    DQCLK,                                                             //[PRAM.NET:00008]    RUN,CLK,DQCLK;
                                                                                //[PRAM.NET:00007]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,A_0,A_9,A_10,DCSL,RDL,WRL,
                                                                                //[PRAM.NET:00008]    RUN,CLK,DQCLK;
    output    outPD_0, enPD_0,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_1, enPD_1,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_2, enPD_2,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_3, enPD_3,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_4, enPD_4,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_5, enPD_5,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_6, enPD_6,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_7, enPD_7,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_8, enPD_8,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_9, enPD_9,                                                  //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_10, enPD_10,                                                //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_11, enPD_11,                                                //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_12, enPD_12,                                                //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
    output    outPD_13, enPD_13,                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outPD_14, enPD_14,                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outPD_15, enPD_15,                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_0, enD_0,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_1, enD_1,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_2, enD_2,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_3, enD_3,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_4, enD_4,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_5, enD_5,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_6, enD_6,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    outD_7, enD_7,                                                    //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    HPCWRL,                                                           //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    PRAMEN,                                                           //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
    output    PRAMWR                                                            //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
);                                                                              //[PRAM.NET:00004] MODULE PRAM;
                                                                                //[PRAM.NET:00011] LEVEL FUNCTION;
wire PDL_0;                                                                     //[PRAM.NET:00014] PDL_0_(PDL_0) = N1A(PD_0);
wire PDL_1;                                                                     //[PRAM.NET:00015] PDL_1_(PDL_1) = N1A(PD_1);
wire PDL_2;                                                                     //[PRAM.NET:00016] PDL_2_(PDL_2) = N1A(PD_2);
wire PDL_3;                                                                     //[PRAM.NET:00017] PDL_3_(PDL_3) = N1A(PD_3);
wire PDL_4;                                                                     //[PRAM.NET:00018] PDL_4_(PDL_4) = N1A(PD_4);
wire PDL_5;                                                                     //[PRAM.NET:00019] PDL_5_(PDL_5) = N1A(PD_5);
wire PDL_6;                                                                     //[PRAM.NET:00020] PDL_6_(PDL_6) = N1A(PD_6);
wire PDL_7;                                                                     //[PRAM.NET:00021] PDL_7_(PDL_7) = N1A(PD_7);
wire PDL_8;                                                                     //[PRAM.NET:00022] PDL_8_(PDL_8) = N1A(PD_8);
wire PDL_9;                                                                     //[PRAM.NET:00023] PDL_9_(PDL_9) = N1A(PD_9);
wire PDL_10;                                                                    //[PRAM.NET:00024] PDL_10_(PDL_10) = N1A(PD_10);
wire PDL_11;                                                                    //[PRAM.NET:00025] PDL_11_(PDL_11) = N1A(PD_11);
wire PDL_12;                                                                    //[PRAM.NET:00026] PDL_12_(PDL_12) = N1A(PD_12);
wire PDL_13;                                                                    //[PRAM.NET:00027] PDL_13_(PDL_13) = N1A(PD_13);
wire PDL_14;                                                                    //[PRAM.NET:00028] PDL_14_(PDL_14) = N1A(PD_14);
wire PDL_15;                                                                    //[PRAM.NET:00029] PDL_15_(PDL_15) = N1A(PD_15);
wire PRD0;                                                                      //[PRAM.NET:00031] PREAD_0_(D_0) = BTS5A(PDL_0,PRD0);
wire PRD1;                                                                      //[PRAM.NET:00039] PREAD_8_(D_0) = BTS5A(PDL_8,PRD1);
wire LOB_0;                                                                     //[PRAM.NET:00048] PWRIT_0_(PD_0) = BTS5A(LOB_0,PRAMENL);
wire PRAMENL;                                                                   //[PRAM.NET:00048] PWRIT_0_(PD_0) = BTS5A(LOB_0,PRAMENL);
wire LOB_1;                                                                     //[PRAM.NET:00049] PWRIT_1_(PD_1) = BTS5A(LOB_1,PRAMENL);
wire LOB_2;                                                                     //[PRAM.NET:00050] PWRIT_2_(PD_2) = BTS5A(LOB_2,PRAMENL);
wire LOB_3;                                                                     //[PRAM.NET:00051] PWRIT_3_(PD_3) = BTS5A(LOB_3,PRAMENL);
wire LOB_4;                                                                     //[PRAM.NET:00052] PWRIT_4_(PD_4) = BTS5A(LOB_4,PRAMENL);
wire LOB_5;                                                                     //[PRAM.NET:00053] PWRIT_5_(PD_5) = BTS5A(LOB_5,PRAMENL);
wire LOB_6;                                                                     //[PRAM.NET:00054] PWRIT_6_(PD_6) = BTS5A(LOB_6,PRAMENL);
wire LOB_7;                                                                     //[PRAM.NET:00055] PWRIT_7_(PD_7) = BTS5A(LOB_7,PRAMENL);
wire DL_0;                                                                      //[PRAM.NET:00056] DL_0_(DL_0) = N1A(D_0);
wire DL_1;                                                                      //[PRAM.NET:00057] DL_1_(DL_1) = N1A(D_1);
wire DL_2;                                                                      //[PRAM.NET:00058] DL_2_(DL_2) = N1A(D_2);
wire DL_3;                                                                      //[PRAM.NET:00059] DL_3_(DL_3) = N1A(D_3);
wire DL_4;                                                                      //[PRAM.NET:00060] DL_4_(DL_4) = N1A(D_4);
wire DL_5;                                                                      //[PRAM.NET:00061] DL_5_(DL_5) = N1A(D_5);
wire DL_6;                                                                      //[PRAM.NET:00062] DL_6_(DL_6) = N1A(D_6);
wire DL_7;                                                                      //[PRAM.NET:00063] DL_7_(DL_7) = N1A(D_7);
wire PRSEL;                                                                     //[PRAM.NET:00075] HPCWRL_(HPCWRL) = OR2A(RUN,PRSEL);
wire AL_10;                                                                     //[PRAM.NET:00076] PRSELR_(PRSELR) = NR4A(A_9,AL_10,DCSL,RDL);
wire PRSELR;                                                                    //[PRAM.NET:00076] PRSELR_(PRSELR) = NR4A(A_9,AL_10,DCSL,RDL);
wire PRSELW;                                                                    //[PRAM.NET:00077] PRSELW_(PRSELW) = NR4A(A_9,AL_10,DCSL,WRL);
wire AL_0;                                                                      //[PRAM.NET:00080] PRD1_(PRD1) = NR3C(AL_0,PRSEL,RDL);
wire PWR0;                                                                      //[PRAM.NET:00082] PWR0_(PWR0) = NR5B(RUN,A_0,PRSEL,DQCLK,WRL);
wire LOBL_0;                                                                    //[PRAM.NET:00098] LOBUF_0_(LOB_0,LOBL_0) = LD1A(DL_0,PWR0);
wire LOBL_1;                                                                    //[PRAM.NET:00099] LOBUF_1_(LOB_1,LOBL_1) = LD1A(DL_1,PWR0);
wire LOBL_2;                                                                    //[PRAM.NET:00100] LOBUF_2_(LOB_2,LOBL_2) = LD1A(DL_2,PWR0);
wire LOBL_3;                                                                    //[PRAM.NET:00101] LOBUF_3_(LOB_3,LOBL_3) = LD1A(DL_3,PWR0);
wire LOBL_4;                                                                    //[PRAM.NET:00102] LOBUF_4_(LOB_4,LOBL_4) = LD1A(DL_4,PWR0);
wire LOBL_5;                                                                    //[PRAM.NET:00103] LOBUF_5_(LOB_5,LOBL_5) = LD1A(DL_5,PWR0);
wire LOBL_6;                                                                    //[PRAM.NET:00104] LOBUF_6_(LOB_6,LOBL_6) = LD1A(DL_6,PWR0);
wire LOBL_7;                                                                    //[PRAM.NET:00105] LOBUF_7_(LOB_7,LOBL_7) = LD1A(DL_7,PWR0);
wire drv0_outPD_0;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_0;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_1;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_1;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_2;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_2;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_3;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_3;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_4;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_4;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_5;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_5;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_6;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_6;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_7;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_7;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_8;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_8;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_9;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_9;                                                               //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_10;                                                             //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_10;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_11;                                                             //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_11;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_12;                                                             //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_enPD_12;                                                              //[PRAM.NET:00009] OUTPUTS	PD_0,PD_1,PD_2,PD_3,PD_4,PD_5,PD_6,PD_7,PD_8,PD_9,PD_10,PD_11,PD_12,
wire drv0_outPD_13;                                                             //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enPD_13;                                                              //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outPD_14;                                                             //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enPD_14;                                                              //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outPD_15;                                                             //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enPD_15;                                                              //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_0;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_0;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_0;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_0;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_1;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_1;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_1;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_1;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_2;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_2;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_2;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_2;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_3;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_3;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_3;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_3;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_4;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_4;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_4;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_4;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_5;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_5;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_5;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_5;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_6;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_6;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_6;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_6;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_outD_7;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv0_enD_7;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_outD_7;                                                               //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;
wire drv1_enD_7;                                                                //[PRAM.NET:00010]    PD_13,PD_14,PD_15,D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,HPCWRL,PRAMEN,PRAMWR;

assign PDL_0 = ~inPD_0;                                                         //[PRAM.NET:00014] PDL_0_(PDL_0) = N1A(PD_0);
assign PDL_1 = ~inPD_1;                                                         //[PRAM.NET:00015] PDL_1_(PDL_1) = N1A(PD_1);
assign PDL_2 = ~inPD_2;                                                         //[PRAM.NET:00016] PDL_2_(PDL_2) = N1A(PD_2);
assign PDL_3 = ~inPD_3;                                                         //[PRAM.NET:00017] PDL_3_(PDL_3) = N1A(PD_3);
assign PDL_4 = ~inPD_4;                                                         //[PRAM.NET:00018] PDL_4_(PDL_4) = N1A(PD_4);
assign PDL_5 = ~inPD_5;                                                         //[PRAM.NET:00019] PDL_5_(PDL_5) = N1A(PD_5);
assign PDL_6 = ~inPD_6;                                                         //[PRAM.NET:00020] PDL_6_(PDL_6) = N1A(PD_6);
assign PDL_7 = ~inPD_7;                                                         //[PRAM.NET:00021] PDL_7_(PDL_7) = N1A(PD_7);
assign PDL_8 = ~inPD_8;                                                         //[PRAM.NET:00022] PDL_8_(PDL_8) = N1A(PD_8);
assign PDL_9 = ~inPD_9;                                                         //[PRAM.NET:00023] PDL_9_(PDL_9) = N1A(PD_9);
assign PDL_10 = ~inPD_10;                                                       //[PRAM.NET:00024] PDL_10_(PDL_10) = N1A(PD_10);
assign PDL_11 = ~inPD_11;                                                       //[PRAM.NET:00025] PDL_11_(PDL_11) = N1A(PD_11);
assign PDL_12 = ~inPD_12;                                                       //[PRAM.NET:00026] PDL_12_(PDL_12) = N1A(PD_12);
assign PDL_13 = ~inPD_13;                                                       //[PRAM.NET:00027] PDL_13_(PDL_13) = N1A(PD_13);
assign PDL_14 = ~inPD_14;                                                       //[PRAM.NET:00028] PDL_14_(PDL_14) = N1A(PD_14);
assign PDL_15 = ~inPD_15;                                                       //[PRAM.NET:00029] PDL_15_(PDL_15) = N1A(PD_15);

assign drv0_outD_0 = ~PDL_0; assign drv0_enD_0 = PRD0;                          //[PRAM.NET:00031] PREAD_0_(D_0) = BTS5A(PDL_0,PRD0);
assign drv0_outD_1 = ~PDL_1; assign drv0_enD_1 = PRD0;                          //[PRAM.NET:00032] PREAD_1_(D_1) = BTS5A(PDL_1,PRD0);
assign drv0_outD_2 = ~PDL_2; assign drv0_enD_2 = PRD0;                          //[PRAM.NET:00033] PREAD_2_(D_2) = BTS5A(PDL_2,PRD0);
assign drv0_outD_3 = ~PDL_3; assign drv0_enD_3 = PRD0;                          //[PRAM.NET:00034] PREAD_3_(D_3) = BTS5A(PDL_3,PRD0);
assign drv0_outD_4 = ~PDL_4; assign drv0_enD_4 = PRD0;                          //[PRAM.NET:00035] PREAD_4_(D_4) = BTS5A(PDL_4,PRD0);
assign drv0_outD_5 = ~PDL_5; assign drv0_enD_5 = PRD0;                          //[PRAM.NET:00036] PREAD_5_(D_5) = BTS5A(PDL_5,PRD0);
assign drv0_outD_6 = ~PDL_6; assign drv0_enD_6 = PRD0;                          //[PRAM.NET:00037] PREAD_6_(D_6) = BTS5A(PDL_6,PRD0);
assign drv0_outD_7 = ~PDL_7; assign drv0_enD_7 = PRD0;                          //[PRAM.NET:00038] PREAD_7_(D_7) = BTS5A(PDL_7,PRD0);
assign drv1_outD_0 = ~PDL_8; assign drv1_enD_0 = PRD1;                          //[PRAM.NET:00039] PREAD_8_(D_0) = BTS5A(PDL_8,PRD1);
assign drv1_outD_1 = ~PDL_9; assign drv1_enD_1 = PRD1;                          //[PRAM.NET:00040] PREAD_9_(D_1) = BTS5A(PDL_9,PRD1);
assign drv1_outD_2 = ~PDL_10; assign drv1_enD_2 = PRD1;                         //[PRAM.NET:00041] PREAD_10_(D_2) = BTS5A(PDL_10,PRD1);
assign drv1_outD_3 = ~PDL_11; assign drv1_enD_3 = PRD1;                         //[PRAM.NET:00042] PREAD_11_(D_3) = BTS5A(PDL_11,PRD1);
assign drv1_outD_4 = ~PDL_12; assign drv1_enD_4 = PRD1;                         //[PRAM.NET:00043] PREAD_12_(D_4) = BTS5A(PDL_12,PRD1);
assign drv1_outD_5 = ~PDL_13; assign drv1_enD_5 = PRD1;                         //[PRAM.NET:00044] PREAD_13_(D_5) = BTS5A(PDL_13,PRD1);
assign drv1_outD_6 = ~PDL_14; assign drv1_enD_6 = PRD1;                         //[PRAM.NET:00045] PREAD_14_(D_6) = BTS5A(PDL_14,PRD1);
assign drv1_outD_7 = ~PDL_15; assign drv1_enD_7 = PRD1;                         //[PRAM.NET:00046] PREAD_15_(D_7) = BTS5A(PDL_15,PRD1);

assign drv0_outPD_0 = ~LOB_0; assign drv0_enPD_0 = PRAMENL;                     //[PRAM.NET:00048] PWRIT_0_(PD_0) = BTS5A(LOB_0,PRAMENL);
assign drv0_outPD_1 = ~LOB_1; assign drv0_enPD_1 = PRAMENL;                     //[PRAM.NET:00049] PWRIT_1_(PD_1) = BTS5A(LOB_1,PRAMENL);
assign drv0_outPD_2 = ~LOB_2; assign drv0_enPD_2 = PRAMENL;                     //[PRAM.NET:00050] PWRIT_2_(PD_2) = BTS5A(LOB_2,PRAMENL);
assign drv0_outPD_3 = ~LOB_3; assign drv0_enPD_3 = PRAMENL;                     //[PRAM.NET:00051] PWRIT_3_(PD_3) = BTS5A(LOB_3,PRAMENL);
assign drv0_outPD_4 = ~LOB_4; assign drv0_enPD_4 = PRAMENL;                     //[PRAM.NET:00052] PWRIT_4_(PD_4) = BTS5A(LOB_4,PRAMENL);
assign drv0_outPD_5 = ~LOB_5; assign drv0_enPD_5 = PRAMENL;                     //[PRAM.NET:00053] PWRIT_5_(PD_5) = BTS5A(LOB_5,PRAMENL);
assign drv0_outPD_6 = ~LOB_6; assign drv0_enPD_6 = PRAMENL;                     //[PRAM.NET:00054] PWRIT_6_(PD_6) = BTS5A(LOB_6,PRAMENL);
assign drv0_outPD_7 = ~LOB_7; assign drv0_enPD_7 = PRAMENL;                     //[PRAM.NET:00055] PWRIT_7_(PD_7) = BTS5A(LOB_7,PRAMENL);
assign DL_0 = ~inD_0;                                                           //[PRAM.NET:00056] DL_0_(DL_0) = N1A(D_0);
assign DL_1 = ~inD_1;                                                           //[PRAM.NET:00057] DL_1_(DL_1) = N1A(D_1);
assign DL_2 = ~inD_2;                                                           //[PRAM.NET:00058] DL_2_(DL_2) = N1A(D_2);
assign DL_3 = ~inD_3;                                                           //[PRAM.NET:00059] DL_3_(DL_3) = N1A(D_3);
assign DL_4 = ~inD_4;                                                           //[PRAM.NET:00060] DL_4_(DL_4) = N1A(D_4);
assign DL_5 = ~inD_5;                                                           //[PRAM.NET:00061] DL_5_(DL_5) = N1A(D_5);
assign DL_6 = ~inD_6;                                                           //[PRAM.NET:00062] DL_6_(DL_6) = N1A(D_6);
assign DL_7 = ~inD_7;                                                           //[PRAM.NET:00063] DL_7_(DL_7) = N1A(D_7);
assign drv0_outPD_8 = ~DL_0; assign drv0_enPD_8 = PRAMENL;                      //[PRAM.NET:00064] PWRIT_8_(PD_8) = BTS5A(DL_0,PRAMENL);
assign drv0_outPD_9 = ~DL_1; assign drv0_enPD_9 = PRAMENL;                      //[PRAM.NET:00065] PWRIT_9_(PD_9) = BTS5A(DL_1,PRAMENL);
assign drv0_outPD_10 = ~DL_2; assign drv0_enPD_10 = PRAMENL;                    //[PRAM.NET:00066] PWRIT_10_(PD_10) = BTS5A(DL_2,PRAMENL);
assign drv0_outPD_11 = ~DL_3; assign drv0_enPD_11 = PRAMENL;                    //[PRAM.NET:00067] PWRIT_11_(PD_11) = BTS5A(DL_3,PRAMENL);
assign drv0_outPD_12 = ~DL_4; assign drv0_enPD_12 = PRAMENL;                    //[PRAM.NET:00068] PWRIT_12_(PD_12) = BTS5A(DL_4,PRAMENL);
assign drv0_outPD_13 = ~DL_5; assign drv0_enPD_13 = PRAMENL;                    //[PRAM.NET:00069] PWRIT_13_(PD_13) = BTS5A(DL_5,PRAMENL);
assign drv0_outPD_14 = ~DL_6; assign drv0_enPD_14 = PRAMENL;                    //[PRAM.NET:00070] PWRIT_14_(PD_14) = BTS5A(DL_6,PRAMENL);
assign drv0_outPD_15 = ~DL_7; assign drv0_enPD_15 = PRAMENL;                    //[PRAM.NET:00071] PWRIT_15_(PD_15) = BTS5A(DL_7,PRAMENL);

/* These buffers are only enabled during STOP. */

assign HPCWRL = RUN | PRSEL;                                                    //[PRAM.NET:00075] HPCWRL_(HPCWRL) = OR2A(RUN,PRSEL);
assign PRSELR = ~(A_9 | AL_10 | DCSL | RDL);                                    //[PRAM.NET:00076] PRSELR_(PRSELR) = NR4A(A_9,AL_10,DCSL,RDL);
assign PRSELW = ~(A_9 | AL_10 | DCSL | WRL);                                    //[PRAM.NET:00077] PRSELW_(PRSELW) = NR4A(A_9,AL_10,DCSL,WRL);
assign PRSEL = ~(PRSELR | PRSELW);                                              //[PRAM.NET:00078] PRSEL_(PRSEL) = NR2B(PRSELR,PRSELW);
assign PRD0 = ~(A_0 | PRSEL | RDL);                                             //[PRAM.NET:00079] PRD0_(PRD0) = NR3C(A_0,PRSEL,RDL);
assign PRD1 = ~(AL_0 | PRSEL | RDL);                                            //[PRAM.NET:00080] PRD1_(PRD1) = NR3C(AL_0,PRSEL,RDL);

assign PWR0 = ~(RUN | A_0 | PRSEL | DQCLK | WRL);                               //[PRAM.NET:00082] PWR0_(PWR0) = NR5B(RUN,A_0,PRSEL,DQCLK,WRL);
assign PRAMWR = ~(RUN | AL_0 | PRSEL | DQCLK | WRL);                            //[PRAM.NET:00083] PRAMWR_(PRAMWR) = NR5A(RUN,AL_0,PRSEL,DQCLK,WRL);


assign AL_0 = ~A_0;                                                             //[PRAM.NET:00086] AL_0_(AL_0) = N1A(A_0);
assign AL_10 = ~A_10;                                                           //[PRAM.NET:00087] AL_10_(AL_10) = N1A(A_10);

/* RAM output enable is on always except when being written by the host during     STOP */
assign PRAMENL = ~(AL_0 | A_9 | AL_10 | DCSL | WRL | RUN);                      //[PRAM.NET:00090] PRAMENL_(PRAMENL) = NR6B(AL_0,A_9,AL_10,DCSL,WRL,RUN);
assign PRAMEN = ~PRAMENL;                                                       //[PRAM.NET:00091] PRAMEN_(PRAMEN) = N1A(PRAMENL);
/* It is necessary to have a TLATCH in between the host and the low byte of
   RAM as it is only possible to write 8 bits at a time. This assumes that
   the programs are loaded LOW BYTE FIRST, HIGH BYTE LAST. RAM is updated when
   the high byte is written. Programmers please
   note. */

LD1A LOBUF_0__inst (.MasterClock(MasterClock),.q(LOB_0),.qL(LOBL_0),.d(DL_0),.en(PWR0));//[PRAM.NET:00098] LOBUF_0_(LOB_0,LOBL_0) = LD1A(DL_0,PWR0);
LD1A LOBUF_1__inst (.MasterClock(MasterClock),.q(LOB_1),.qL(LOBL_1),.d(DL_1),.en(PWR0));//[PRAM.NET:00099] LOBUF_1_(LOB_1,LOBL_1) = LD1A(DL_1,PWR0);
LD1A LOBUF_2__inst (.MasterClock(MasterClock),.q(LOB_2),.qL(LOBL_2),.d(DL_2),.en(PWR0));//[PRAM.NET:00100] LOBUF_2_(LOB_2,LOBL_2) = LD1A(DL_2,PWR0);
LD1A LOBUF_3__inst (.MasterClock(MasterClock),.q(LOB_3),.qL(LOBL_3),.d(DL_3),.en(PWR0));//[PRAM.NET:00101] LOBUF_3_(LOB_3,LOBL_3) = LD1A(DL_3,PWR0);
LD1A LOBUF_4__inst (.MasterClock(MasterClock),.q(LOB_4),.qL(LOBL_4),.d(DL_4),.en(PWR0));//[PRAM.NET:00102] LOBUF_4_(LOB_4,LOBL_4) = LD1A(DL_4,PWR0);
LD1A LOBUF_5__inst (.MasterClock(MasterClock),.q(LOB_5),.qL(LOBL_5),.d(DL_5),.en(PWR0));//[PRAM.NET:00103] LOBUF_5_(LOB_5,LOBL_5) = LD1A(DL_5,PWR0);
LD1A LOBUF_6__inst (.MasterClock(MasterClock),.q(LOB_6),.qL(LOBL_6),.d(DL_6),.en(PWR0));//[PRAM.NET:00104] LOBUF_6_(LOB_6,LOBL_6) = LD1A(DL_6,PWR0);
LD1A LOBUF_7__inst (.MasterClock(MasterClock),.q(LOB_7),.qL(LOBL_7),.d(DL_7),.en(PWR0));//[PRAM.NET:00105] LOBUF_7_(LOB_7,LOBL_7) = LD1A(DL_7,PWR0);




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
endmodule                                                                       //[PRAM.NET:00110] END MODULE;
