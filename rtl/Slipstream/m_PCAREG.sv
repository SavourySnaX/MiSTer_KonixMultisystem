                                                                                //[PCAREG.NET:00001] COMPILE;
                                                                                //[PCAREG.NET:00002] DIRECTORY MASTER;
/****************************************************************************
pcareg
22/9/88

Blitter program address register

The register is loaded in byte chunks by pcwrL[0-2], or as a whole by
updpcL.  The selection between input data and adder output is given by 
run.

****************************************************************************/


module m_PCAREG                                                                 //[PCAREG.NET:00016] MODULE PCAREG;
(                                                                               //[PCAREG.NET:00016] MODULE PCAREG;

    input    MasterClock,
    input    ADDQ_0,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_1,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_2,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_3,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_4,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_5,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_6,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_7,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_8,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_9,                                                            //[PCAREG.NET:00018] INPUTS	ADDQ_0,ADDQ_1,ADDQ_2,ADDQ_3,ADDQ_4,ADDQ_5,ADDQ_6,ADDQ_7,ADDQ_8,ADDQ_9,
    input    ADDQ_10,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_11,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_12,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_13,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_14,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_15,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_16,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_17,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_18,                                                           //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
    input    ADDQ_19,                                                           //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_0,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_1,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_2,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_3,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_4,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_5,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_6,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    ID_7,                                                              //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    PCWRL_0,                                                           //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    PCWRL_1,                                                           //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    PCWRL_2,                                                           //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    RUN,                                                               //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
    input    UPDPCL,                                                            //[PCAREG.NET:00021]    UPDPCL;
                                                                                //[PCAREG.NET:00019]    ADDQ_10,ADDQ_11,ADDQ_12,ADDQ_13,ADDQ_14,ADDQ_15,ADDQ_16,ADDQ_17,ADDQ_18,
                                                                                //[PCAREG.NET:00020]    ADDQ_19,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,PCWRL_0,PCWRL_1,PCWRL_2,RUN,
                                                                                //[PCAREG.NET:00021]    UPDPCL;
    output    PCL_0,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_1,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_2,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_3,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_4,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_5,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_6,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_7,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_8,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_9,                                                            //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_10,                                                           //[PCAREG.NET:00022] OUTPUTS	PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,PCL_5,PCL_6,PCL_7,PCL_8,PCL_9,PCL_10,
    output    PCL_11,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_12,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_13,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_14,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_15,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_16,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_17,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_18,                                                           //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
    output    PCL_19                                                            //[PCAREG.NET:00023]    PCL_11,PCL_12,PCL_13,PCL_14,PCL_15,PCL_16,PCL_17,PCL_18,PCL_19;
);                                                                              //[PCAREG.NET:00016] MODULE PCAREG;
                                                                                //[PCAREG.NET:00024] LEVEL FUNCTION;
wire PCLDL_0;                                                                   //[PCAREG.NET:00029] PCLD_0_(PCLDL_0) = AND2A(PCWRL_0,UPDPCL);
wire PCLDL_1;                                                                   //[PCAREG.NET:00030] PCLD_1_(PCLDL_1) = AND2A(PCWRL_1,UPDPCL);
wire PCLDL_2;                                                                   //[PCAREG.NET:00031] PCLD_2_(PCLDL_2) = AND2A(PCWRL_2,UPDPCL);
wire RUNL;                                                                      //[PCAREG.NET:00035] RUNL_(RUNL) = N1C(RUN);
wire PCI_0;                                                                     //[PCAREG.NET:00036] PMUX_0_(PCI_0) = AO2A(RUN,ADDQ_0,RUNL,ID_0);
wire PCI_1;                                                                     //[PCAREG.NET:00037] PMUX_1_(PCI_1) = AO2A(RUN,ADDQ_1,RUNL,ID_1);
wire PCI_2;                                                                     //[PCAREG.NET:00038] PMUX_2_(PCI_2) = AO2A(RUN,ADDQ_2,RUNL,ID_2);
wire PCI_3;                                                                     //[PCAREG.NET:00039] PMUX_3_(PCI_3) = AO2A(RUN,ADDQ_3,RUNL,ID_3);
wire PCI_4;                                                                     //[PCAREG.NET:00040] PMUX_4_(PCI_4) = AO2A(RUN,ADDQ_4,RUNL,ID_4);
wire PCI_5;                                                                     //[PCAREG.NET:00041] PMUX_5_(PCI_5) = AO2A(RUN,ADDQ_5,RUNL,ID_5);
wire PCI_6;                                                                     //[PCAREG.NET:00042] PMUX_6_(PCI_6) = AO2A(RUN,ADDQ_6,RUNL,ID_6);
wire PCI_7;                                                                     //[PCAREG.NET:00043] PMUX_7_(PCI_7) = AO2A(RUN,ADDQ_7,RUNL,ID_7);
wire PCI_8;                                                                     //[PCAREG.NET:00044] PMUX_8_(PCI_8) = AO2A(RUN,ADDQ_8,RUNL,ID_0);
wire PCI_9;                                                                     //[PCAREG.NET:00045] PMUX_9_(PCI_9) = AO2A(RUN,ADDQ_9,RUNL,ID_1);
wire PCI_10;                                                                    //[PCAREG.NET:00046] PMUX_10_(PCI_10) = AO2A(RUN,ADDQ_10,RUNL,ID_2);
wire PCI_11;                                                                    //[PCAREG.NET:00047] PMUX_11_(PCI_11) = AO2A(RUN,ADDQ_11,RUNL,ID_3);
wire PCI_12;                                                                    //[PCAREG.NET:00048] PMUX_12_(PCI_12) = AO2A(RUN,ADDQ_12,RUNL,ID_4);
wire PCI_13;                                                                    //[PCAREG.NET:00049] PMUX_13_(PCI_13) = AO2A(RUN,ADDQ_13,RUNL,ID_5);
wire PCI_14;                                                                    //[PCAREG.NET:00050] PMUX_14_(PCI_14) = AO2A(RUN,ADDQ_14,RUNL,ID_6);
wire PCI_15;                                                                    //[PCAREG.NET:00051] PMUX_15_(PCI_15) = AO2A(RUN,ADDQ_15,RUNL,ID_7);
wire PCI_16;                                                                    //[PCAREG.NET:00052] PMUX_16_(PCI_16) = AO2A(RUN,ADDQ_16,RUNL,ID_0);
wire PCI_17;                                                                    //[PCAREG.NET:00053] PMUX_17_(PCI_17) = AO2A(RUN,ADDQ_17,RUNL,ID_1);
wire PCI_18;                                                                    //[PCAREG.NET:00054] PMUX_18_(PCI_18) = AO2A(RUN,ADDQ_18,RUNL,ID_2);
wire PCI_19;                                                                    //[PCAREG.NET:00055] PMUX_19_(PCI_19) = AO2A(RUN,ADDQ_19,RUNL,ID_3);
wire PC_0;                                                                      //[PCAREG.NET:00059] PCLATCH_0_(PCL_0,PC_0) = FD1A(PCI_0,PCLDL_0);
wire PC_1;                                                                      //[PCAREG.NET:00060] PCLATCH_1_(PCL_1,PC_1) = FD1A(PCI_1,PCLDL_0);
wire PC_2;                                                                      //[PCAREG.NET:00061] PCLATCH_2_(PCL_2,PC_2) = FD1A(PCI_2,PCLDL_0);
wire PC_3;                                                                      //[PCAREG.NET:00062] PCLATCH_3_(PCL_3,PC_3) = FD1A(PCI_3,PCLDL_0);
wire PC_4;                                                                      //[PCAREG.NET:00063] PCLATCH_4_(PCL_4,PC_4) = FD1A(PCI_4,PCLDL_0);
wire PC_5;                                                                      //[PCAREG.NET:00064] PCLATCH_5_(PCL_5,PC_5) = FD1A(PCI_5,PCLDL_0);
wire PC_6;                                                                      //[PCAREG.NET:00065] PCLATCH_6_(PCL_6,PC_6) = FD1A(PCI_6,PCLDL_0);
wire PC_7;                                                                      //[PCAREG.NET:00066] PCLATCH_7_(PCL_7,PC_7) = FD1A(PCI_7,PCLDL_0);
wire PC_8;                                                                      //[PCAREG.NET:00067] PCLATCH_8_(PCL_8,PC_8) = FD1A(PCI_8,PCLDL_1);
wire PC_9;                                                                      //[PCAREG.NET:00068] PCLATCH_9_(PCL_9,PC_9) = FD1A(PCI_9,PCLDL_1);
wire PC_10;                                                                     //[PCAREG.NET:00069] PCLATCH_10_(PCL_10,PC_10) = FD1A(PCI_10,PCLDL_1);
wire PC_11;                                                                     //[PCAREG.NET:00070] PCLATCH_11_(PCL_11,PC_11) = FD1A(PCI_11,PCLDL_1);
wire PC_12;                                                                     //[PCAREG.NET:00071] PCLATCH_12_(PCL_12,PC_12) = FD1A(PCI_12,PCLDL_1);
wire PC_13;                                                                     //[PCAREG.NET:00072] PCLATCH_13_(PCL_13,PC_13) = FD1A(PCI_13,PCLDL_1);
wire PC_14;                                                                     //[PCAREG.NET:00073] PCLATCH_14_(PCL_14,PC_14) = FD1A(PCI_14,PCLDL_1);
wire PC_15;                                                                     //[PCAREG.NET:00074] PCLATCH_15_(PCL_15,PC_15) = FD1A(PCI_15,PCLDL_1);
wire PC_16;                                                                     //[PCAREG.NET:00075] PCLATCH_16_(PCL_16,PC_16) = FD1A(PCI_16,PCLDL_2);
wire PC_17;                                                                     //[PCAREG.NET:00076] PCLATCH_17_(PCL_17,PC_17) = FD1A(PCI_17,PCLDL_2);
wire PC_18;                                                                     //[PCAREG.NET:00077] PCLATCH_18_(PCL_18,PC_18) = FD1A(PCI_18,PCLDL_2);
wire PC_19;                                                                     //[PCAREG.NET:00078] PCLATCH_19_(PCL_19,PC_19) = FD1A(PCI_19,PCLDL_2);

/* The load enables for the latches */

assign PCLDL_0 = PCWRL_0 & UPDPCL;                                              //[PCAREG.NET:00029] PCLD_0_(PCLDL_0) = AND2A(PCWRL_0,UPDPCL);
assign PCLDL_1 = PCWRL_1 & UPDPCL;                                              //[PCAREG.NET:00030] PCLD_1_(PCLDL_1) = AND2A(PCWRL_1,UPDPCL);
assign PCLDL_2 = PCWRL_2 & UPDPCL;                                              //[PCAREG.NET:00031] PCLD_2_(PCLDL_2) = AND2A(PCWRL_2,UPDPCL);

/* Multiplex between the adder output and the data bus */

assign RUNL = ~RUN;                                                             //[PCAREG.NET:00035] RUNL_(RUNL) = N1C(RUN);
assign PCI_0 = ~((RUN & ADDQ_0)|(RUNL & ID_0));                                 //[PCAREG.NET:00036] PMUX_0_(PCI_0) = AO2A(RUN,ADDQ_0,RUNL,ID_0);
assign PCI_1 = ~((RUN & ADDQ_1)|(RUNL & ID_1));                                 //[PCAREG.NET:00037] PMUX_1_(PCI_1) = AO2A(RUN,ADDQ_1,RUNL,ID_1);
assign PCI_2 = ~((RUN & ADDQ_2)|(RUNL & ID_2));                                 //[PCAREG.NET:00038] PMUX_2_(PCI_2) = AO2A(RUN,ADDQ_2,RUNL,ID_2);
assign PCI_3 = ~((RUN & ADDQ_3)|(RUNL & ID_3));                                 //[PCAREG.NET:00039] PMUX_3_(PCI_3) = AO2A(RUN,ADDQ_3,RUNL,ID_3);
assign PCI_4 = ~((RUN & ADDQ_4)|(RUNL & ID_4));                                 //[PCAREG.NET:00040] PMUX_4_(PCI_4) = AO2A(RUN,ADDQ_4,RUNL,ID_4);
assign PCI_5 = ~((RUN & ADDQ_5)|(RUNL & ID_5));                                 //[PCAREG.NET:00041] PMUX_5_(PCI_5) = AO2A(RUN,ADDQ_5,RUNL,ID_5);
assign PCI_6 = ~((RUN & ADDQ_6)|(RUNL & ID_6));                                 //[PCAREG.NET:00042] PMUX_6_(PCI_6) = AO2A(RUN,ADDQ_6,RUNL,ID_6);
assign PCI_7 = ~((RUN & ADDQ_7)|(RUNL & ID_7));                                 //[PCAREG.NET:00043] PMUX_7_(PCI_7) = AO2A(RUN,ADDQ_7,RUNL,ID_7);
assign PCI_8 = ~((RUN & ADDQ_8)|(RUNL & ID_0));                                 //[PCAREG.NET:00044] PMUX_8_(PCI_8) = AO2A(RUN,ADDQ_8,RUNL,ID_0);
assign PCI_9 = ~((RUN & ADDQ_9)|(RUNL & ID_1));                                 //[PCAREG.NET:00045] PMUX_9_(PCI_9) = AO2A(RUN,ADDQ_9,RUNL,ID_1);
assign PCI_10 = ~((RUN & ADDQ_10)|(RUNL & ID_2));                               //[PCAREG.NET:00046] PMUX_10_(PCI_10) = AO2A(RUN,ADDQ_10,RUNL,ID_2);
assign PCI_11 = ~((RUN & ADDQ_11)|(RUNL & ID_3));                               //[PCAREG.NET:00047] PMUX_11_(PCI_11) = AO2A(RUN,ADDQ_11,RUNL,ID_3);
assign PCI_12 = ~((RUN & ADDQ_12)|(RUNL & ID_4));                               //[PCAREG.NET:00048] PMUX_12_(PCI_12) = AO2A(RUN,ADDQ_12,RUNL,ID_4);
assign PCI_13 = ~((RUN & ADDQ_13)|(RUNL & ID_5));                               //[PCAREG.NET:00049] PMUX_13_(PCI_13) = AO2A(RUN,ADDQ_13,RUNL,ID_5);
assign PCI_14 = ~((RUN & ADDQ_14)|(RUNL & ID_6));                               //[PCAREG.NET:00050] PMUX_14_(PCI_14) = AO2A(RUN,ADDQ_14,RUNL,ID_6);
assign PCI_15 = ~((RUN & ADDQ_15)|(RUNL & ID_7));                               //[PCAREG.NET:00051] PMUX_15_(PCI_15) = AO2A(RUN,ADDQ_15,RUNL,ID_7);
assign PCI_16 = ~((RUN & ADDQ_16)|(RUNL & ID_0));                               //[PCAREG.NET:00052] PMUX_16_(PCI_16) = AO2A(RUN,ADDQ_16,RUNL,ID_0);
assign PCI_17 = ~((RUN & ADDQ_17)|(RUNL & ID_1));                               //[PCAREG.NET:00053] PMUX_17_(PCI_17) = AO2A(RUN,ADDQ_17,RUNL,ID_1);
assign PCI_18 = ~((RUN & ADDQ_18)|(RUNL & ID_2));                               //[PCAREG.NET:00054] PMUX_18_(PCI_18) = AO2A(RUN,ADDQ_18,RUNL,ID_2);
assign PCI_19 = ~((RUN & ADDQ_19)|(RUNL & ID_3));                               //[PCAREG.NET:00055] PMUX_19_(PCI_19) = AO2A(RUN,ADDQ_19,RUNL,ID_3);

/* The address register */

FD1A PCLATCH_0__inst (.MasterClock(MasterClock),.q(PCL_0),.qL(PC_0),.d(PCI_0),.clk(PCLDL_0));//[PCAREG.NET:00059] PCLATCH_0_(PCL_0,PC_0) = FD1A(PCI_0,PCLDL_0);
FD1A PCLATCH_1__inst (.MasterClock(MasterClock),.q(PCL_1),.qL(PC_1),.d(PCI_1),.clk(PCLDL_0));//[PCAREG.NET:00060] PCLATCH_1_(PCL_1,PC_1) = FD1A(PCI_1,PCLDL_0);
FD1A PCLATCH_2__inst (.MasterClock(MasterClock),.q(PCL_2),.qL(PC_2),.d(PCI_2),.clk(PCLDL_0));//[PCAREG.NET:00061] PCLATCH_2_(PCL_2,PC_2) = FD1A(PCI_2,PCLDL_0);
FD1A PCLATCH_3__inst (.MasterClock(MasterClock),.q(PCL_3),.qL(PC_3),.d(PCI_3),.clk(PCLDL_0));//[PCAREG.NET:00062] PCLATCH_3_(PCL_3,PC_3) = FD1A(PCI_3,PCLDL_0);
FD1A PCLATCH_4__inst (.MasterClock(MasterClock),.q(PCL_4),.qL(PC_4),.d(PCI_4),.clk(PCLDL_0));//[PCAREG.NET:00063] PCLATCH_4_(PCL_4,PC_4) = FD1A(PCI_4,PCLDL_0);
FD1A PCLATCH_5__inst (.MasterClock(MasterClock),.q(PCL_5),.qL(PC_5),.d(PCI_5),.clk(PCLDL_0));//[PCAREG.NET:00064] PCLATCH_5_(PCL_5,PC_5) = FD1A(PCI_5,PCLDL_0);
FD1A PCLATCH_6__inst (.MasterClock(MasterClock),.q(PCL_6),.qL(PC_6),.d(PCI_6),.clk(PCLDL_0));//[PCAREG.NET:00065] PCLATCH_6_(PCL_6,PC_6) = FD1A(PCI_6,PCLDL_0);
FD1A PCLATCH_7__inst (.MasterClock(MasterClock),.q(PCL_7),.qL(PC_7),.d(PCI_7),.clk(PCLDL_0));//[PCAREG.NET:00066] PCLATCH_7_(PCL_7,PC_7) = FD1A(PCI_7,PCLDL_0);
FD1A PCLATCH_8__inst (.MasterClock(MasterClock),.q(PCL_8),.qL(PC_8),.d(PCI_8),.clk(PCLDL_1));//[PCAREG.NET:00067] PCLATCH_8_(PCL_8,PC_8) = FD1A(PCI_8,PCLDL_1);
FD1A PCLATCH_9__inst (.MasterClock(MasterClock),.q(PCL_9),.qL(PC_9),.d(PCI_9),.clk(PCLDL_1));//[PCAREG.NET:00068] PCLATCH_9_(PCL_9,PC_9) = FD1A(PCI_9,PCLDL_1);
FD1A PCLATCH_10__inst (.MasterClock(MasterClock),.q(PCL_10),.qL(PC_10),.d(PCI_10),.clk(PCLDL_1));//[PCAREG.NET:00069] PCLATCH_10_(PCL_10,PC_10) = FD1A(PCI_10,PCLDL_1);
FD1A PCLATCH_11__inst (.MasterClock(MasterClock),.q(PCL_11),.qL(PC_11),.d(PCI_11),.clk(PCLDL_1));//[PCAREG.NET:00070] PCLATCH_11_(PCL_11,PC_11) = FD1A(PCI_11,PCLDL_1);
FD1A PCLATCH_12__inst (.MasterClock(MasterClock),.q(PCL_12),.qL(PC_12),.d(PCI_12),.clk(PCLDL_1));//[PCAREG.NET:00071] PCLATCH_12_(PCL_12,PC_12) = FD1A(PCI_12,PCLDL_1);
FD1A PCLATCH_13__inst (.MasterClock(MasterClock),.q(PCL_13),.qL(PC_13),.d(PCI_13),.clk(PCLDL_1));//[PCAREG.NET:00072] PCLATCH_13_(PCL_13,PC_13) = FD1A(PCI_13,PCLDL_1);
FD1A PCLATCH_14__inst (.MasterClock(MasterClock),.q(PCL_14),.qL(PC_14),.d(PCI_14),.clk(PCLDL_1));//[PCAREG.NET:00073] PCLATCH_14_(PCL_14,PC_14) = FD1A(PCI_14,PCLDL_1);
FD1A PCLATCH_15__inst (.MasterClock(MasterClock),.q(PCL_15),.qL(PC_15),.d(PCI_15),.clk(PCLDL_1));//[PCAREG.NET:00074] PCLATCH_15_(PCL_15,PC_15) = FD1A(PCI_15,PCLDL_1);
FD1A PCLATCH_16__inst (.MasterClock(MasterClock),.q(PCL_16),.qL(PC_16),.d(PCI_16),.clk(PCLDL_2));//[PCAREG.NET:00075] PCLATCH_16_(PCL_16,PC_16) = FD1A(PCI_16,PCLDL_2);
FD1A PCLATCH_17__inst (.MasterClock(MasterClock),.q(PCL_17),.qL(PC_17),.d(PCI_17),.clk(PCLDL_2));//[PCAREG.NET:00076] PCLATCH_17_(PCL_17,PC_17) = FD1A(PCI_17,PCLDL_2);
FD1A PCLATCH_18__inst (.MasterClock(MasterClock),.q(PCL_18),.qL(PC_18),.d(PCI_18),.clk(PCLDL_2));//[PCAREG.NET:00077] PCLATCH_18_(PCL_18,PC_18) = FD1A(PCI_18,PCLDL_2);
FD1A PCLATCH_19__inst (.MasterClock(MasterClock),.q(PCL_19),.qL(PC_19),.d(PCI_19),.clk(PCLDL_2));//[PCAREG.NET:00078] PCLATCH_19_(PCL_19,PC_19) = FD1A(PCI_19,PCLDL_2);

endmodule                                                                       //[PCAREG.NET:00080] END MODULE;
