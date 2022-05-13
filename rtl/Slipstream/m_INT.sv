                                                                                //[INT.NET:00001] COMPILE;
                                                                                //[INT.NET:00002] DIRECTORY MASTER;
/********************************************************
*	int-hdl						*
*	25/10/88					*
********************************************************/

/*
This module is the interupt manager in the SLIPSTREAM chip on the ACW
*/



module m_INT                                                                    //[INT.NET:00014] MODULE INT;
(                                                                               //[INT.NET:00014] MODULE INT;

    input    MasterClock,
    input    inD_0,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_1,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_2,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_3,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_4,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_5,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_6,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    inD_7,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    RESETL_0,                                                          //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    CLK,                                                               //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    VINT,                                                              //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    AIL_0,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    AIL_1,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    AIL_2,                                                             //[INT.NET:00016] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,RESETL_0,CLK,VINT,AIL_0,AIL_1,AIL_2,
    input    INTAL,                                                             //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    input    ACK,                                                               //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    input    WD_0,                                                              //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    input    WD_1,                                                              //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    input    WD_2,                                                              //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    input    WD_3,                                                              //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    input    DIS,                                                               //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
                                                                                //[INT.NET:00017]    INTAL,ACK,WD_0,WD_1,WD_2,WD_3,DIS;
    output    outD_0, enD_0,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_1, enD_1,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_2, enD_2,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_3, enD_3,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_4, enD_4,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_5, enD_5,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_6, enD_6,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    outD_7, enD_7,                                                    //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
    output    INTL                                                              //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
);                                                                              //[INT.NET:00014] MODULE INT;
                                                                                //[INT.NET:00019] LEVEL FUNCTION;
wire DIS_0;                                                                     //[INT.NET:00024] DIS_0_(DIS_0,DISL_0) = LD1A(WD_0,DIS);
wire DISL_0;                                                                    //[INT.NET:00024] DIS_0_(DIS_0,DISL_0) = LD1A(WD_0,DIS);
wire DIS_1;                                                                     //[INT.NET:00025] DIS_1_(DIS_1,DISL_1) = LD1A(WD_1,DIS);
wire DISL_1;                                                                    //[INT.NET:00025] DIS_1_(DIS_1,DISL_1) = LD1A(WD_1,DIS);
wire DIS_2;                                                                     //[INT.NET:00026] DIS_2_(DIS_2,DISL_2) = LD1A(WD_2,DIS);
wire DISL_2;                                                                    //[INT.NET:00026] DIS_2_(DIS_2,DISL_2) = LD1A(WD_2,DIS);
wire DIS_3;                                                                     //[INT.NET:00027] DIS_3_(DIS_3,DISL_3) = LD1A(WD_3,DIS);
wire DISL_3;                                                                    //[INT.NET:00027] DIS_3_(DIS_3,DISL_3) = LD1A(WD_3,DIS);
wire RESL;                                                                      //[INT.NET:00032] AI1_0_(AI1L_0,AI1_0) = FD2A(AIL_0,CLK,RESL);
wire AI1L_0;                                                                    //[INT.NET:00032] AI1_0_(AI1L_0,AI1_0) = FD2A(AIL_0,CLK,RESL);
wire AI1_0;                                                                     //[INT.NET:00032] AI1_0_(AI1L_0,AI1_0) = FD2A(AIL_0,CLK,RESL);
wire AI1L_1;                                                                    //[INT.NET:00033] AI1_1_(AI1L_1,AI1_1) = FD2A(AIL_1,CLK,RESL);
wire AI1_1;                                                                     //[INT.NET:00033] AI1_1_(AI1L_1,AI1_1) = FD2A(AIL_1,CLK,RESL);
wire AI1L_2;                                                                    //[INT.NET:00034] AI1_2_(AI1L_2,AI1_2) = FD2A(AIL_2,CLK,RESL);
wire AI1_2;                                                                     //[INT.NET:00034] AI1_2_(AI1L_2,AI1_2) = FD2A(AIL_2,CLK,RESL);
wire AI2_0;                                                                     //[INT.NET:00035] AI2_0_(AI2_0,AI2L_0) = FD2A(AI1_0,CLK,RESL);
wire AI2L_0;                                                                    //[INT.NET:00035] AI2_0_(AI2_0,AI2L_0) = FD2A(AI1_0,CLK,RESL);
wire AI2_1;                                                                     //[INT.NET:00036] AI2_1_(AI2_1,AI2L_1) = FD2A(AI1_1,CLK,RESL);
wire AI2L_1;                                                                    //[INT.NET:00036] AI2_1_(AI2_1,AI2L_1) = FD2A(AI1_1,CLK,RESL);
wire AI2_2;                                                                     //[INT.NET:00037] AI2_2_(AI2_2,AI2L_2) = FD2A(AI1_2,CLK,RESL);
wire AI2L_2;                                                                    //[INT.NET:00037] AI2_2_(AI2_2,AI2L_2) = FD2A(AI1_2,CLK,RESL);
wire AID_0;                                                                     //[INT.NET:00041] AID_0_(AID_0) = NR3A(DIS_1,AI1_0,AI2L_0);
wire AID_1;                                                                     //[INT.NET:00042] AID_1_(AID_1) = NR3A(DIS_2,AI1_1,AI2L_1);
wire AID_2;                                                                     //[INT.NET:00043] AID_2_(AID_2) = NR3A(DIS_3,AI1_2,AI2L_2);
wire RES;                                                                       //[INT.NET:00047] RES_(RES) = N1A(RESETL_0);
wire J;                                                                         //[INT.NET:00050] J_(J) = AND2A(VINT,DISL_0);
wire ACK_0;                                                                     //[INT.NET:00051] I_0_(I_0,IL_0) = JK(J,ACK_0,RES,CLK);
wire I_0;                                                                       //[INT.NET:00051] I_0_(I_0,IL_0) = JK(J,ACK_0,RES,CLK);
wire IL_0;                                                                      //[INT.NET:00051] I_0_(I_0,IL_0) = JK(J,ACK_0,RES,CLK);
wire ACK_1;                                                                     //[INT.NET:00052] I_1_(I_1,IL_1) = JK(AID_0,ACK_1,RES,CLK);
wire I_1;                                                                       //[INT.NET:00052] I_1_(I_1,IL_1) = JK(AID_0,ACK_1,RES,CLK);
wire IL_1;                                                                      //[INT.NET:00052] I_1_(I_1,IL_1) = JK(AID_0,ACK_1,RES,CLK);
wire ACK_2;                                                                     //[INT.NET:00053] I_2_(I_2,IL_2) = JK(AID_1,ACK_2,RES,CLK);
wire I_2;                                                                       //[INT.NET:00053] I_2_(I_2,IL_2) = JK(AID_1,ACK_2,RES,CLK);
wire IL_2;                                                                      //[INT.NET:00053] I_2_(I_2,IL_2) = JK(AID_1,ACK_2,RES,CLK);
wire ACK_3;                                                                     //[INT.NET:00054] I_3_(I_3,IL_3) = JK(AID_2,ACK_3,RES,CLK);
wire I_3;                                                                       //[INT.NET:00054] I_3_(I_3,IL_3) = JK(AID_2,ACK_3,RES,CLK);
wire IL_3;                                                                      //[INT.NET:00054] I_3_(I_3,IL_3) = JK(AID_2,ACK_3,RES,CLK);
wire INTA;                                                                      //[INT.NET:00059] INTA_(INTA) = N1A(INTAL);
wire INTA1L;                                                                    //[INT.NET:00060] INTA1L_(INTA1L) = N1A(INTA);
wire I1_0;                                                                      //[INT.NET:00061] I1_0_(I1_0,I1L_0) = LD1A(I_0,INTA1L);
wire I1L_0;                                                                     //[INT.NET:00061] I1_0_(I1_0,I1L_0) = LD1A(I_0,INTA1L);
wire I1_1;                                                                      //[INT.NET:00062] I1_1_(I1_1,I1L_1) = LD1A(I_1,INTA1L);
wire I1L_1;                                                                     //[INT.NET:00062] I1_1_(I1_1,I1L_1) = LD1A(I_1,INTA1L);
wire I1_2;                                                                      //[INT.NET:00063] I1_2_(I1_2,I1L_2) = LD1A(I_2,INTA1L);
wire I1L_2;                                                                     //[INT.NET:00063] I1_2_(I1_2,I1L_2) = LD1A(I_2,INTA1L);
wire I1_3;                                                                      //[INT.NET:00064] I1_3_(I1_3,I1L_3) = LD1A(I_3,INTA1L);
wire I1L_3;                                                                     //[INT.NET:00064] I1_3_(I1_3,I1L_3) = LD1A(I_3,INTA1L);
wire I2_0;                                                                      //[INT.NET:00070] I2_0_(I2_0,I2L_0) = LD1A(I1_0,INTA);
wire I2L_0;                                                                     //[INT.NET:00070] I2_0_(I2_0,I2L_0) = LD1A(I1_0,INTA);
wire I2_1;                                                                      //[INT.NET:00071] I2_1_(I2_1,I2L_1) = LD1A(I1_1,INTA);
wire I2L_1;                                                                     //[INT.NET:00071] I2_1_(I2_1,I2L_1) = LD1A(I1_1,INTA);
wire I2_2;                                                                      //[INT.NET:00072] I2_2_(I2_2,I2L_2) = LD1A(I1_2,INTA);
wire I2L_2;                                                                     //[INT.NET:00072] I2_2_(I2_2,I2L_2) = LD1A(I1_2,INTA);
wire I2_3;                                                                      //[INT.NET:00073] I2_3_(I2_3,I2L_3) = LD1A(I1_3,INTA);
wire I2L_3;                                                                     //[INT.NET:00073] I2_3_(I2_3,I2L_3) = LD1A(I1_3,INTA);
wire IP_0;                                                                      //[INT.NET:00078] IP_0_(IP_0) = B3A(I2_0);
wire IP_1;                                                                      //[INT.NET:00079] IP_1_(IP_1) = NR2A(I2L_1,I2_0);
wire MASK_1;                                                                    //[INT.NET:00080] MASK_1_(MASK_1) = OR2A(I2_0,I2_1);
wire IP_2;                                                                      //[INT.NET:00081] IP_2_(IP_2) = NR2A(I2L_2,MASK_1);
wire MASK_2;                                                                    //[INT.NET:00082] IP_3_(IP_3) = NR2A(I2L_3,MASK_2);
wire IP_3;                                                                      //[INT.NET:00082] IP_3_(IP_3) = NR2A(I2L_3,MASK_2);
wire VL_0;                                                                      //[INT.NET:00087] VL_0_(VL_0) = NR2A(IP_0,IP_2);
wire VL_1;                                                                      //[INT.NET:00088] VL_1_(VL_1) = NR2A(IP_1,IP_2);
wire VL_2;                                                                      //[INT.NET:00089] VL_2_(VL_2) = N1A(IP_3);
wire drv0_outD_0;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_0;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_1;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_1;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_2;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_2;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_3;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_3;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_4;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_4;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_5;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_5;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_6;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_6;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_outD_7;                                                               //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;
wire drv0_enD_7;                                                                //[INT.NET:00018] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,INTL;

/* latch the disable bits */

LD1A DIS_0__inst (.MasterClock(MasterClock),.q(DIS_0),.qL(DISL_0),.d(WD_0),.en(DIS));//[INT.NET:00024] DIS_0_(DIS_0,DISL_0) = LD1A(WD_0,DIS);
LD1A DIS_1__inst (.MasterClock(MasterClock),.q(DIS_1),.qL(DISL_1),.d(WD_1),.en(DIS));//[INT.NET:00025] DIS_1_(DIS_1,DISL_1) = LD1A(WD_1,DIS);
LD1A DIS_2__inst (.MasterClock(MasterClock),.q(DIS_2),.qL(DISL_2),.d(WD_2),.en(DIS));//[INT.NET:00026] DIS_2_(DIS_2,DISL_2) = LD1A(WD_2,DIS);
LD1A DIS_3__inst (.MasterClock(MasterClock),.q(DIS_3),.qL(DISL_3),.d(WD_3),.en(DIS));//[INT.NET:00027] DIS_3_(DIS_3,DISL_3) = LD1A(WD_3,DIS);


/* sample the analogue inputs */

FD2A AI1_0__inst (.MasterClock(MasterClock),.q(AI1L_0),.qL(AI1_0),.d(AIL_0),.clk(CLK),.rL(RESL));//[INT.NET:00032] AI1_0_(AI1L_0,AI1_0) = FD2A(AIL_0,CLK,RESL);
FD2A AI1_1__inst (.MasterClock(MasterClock),.q(AI1L_1),.qL(AI1_1),.d(AIL_1),.clk(CLK),.rL(RESL));//[INT.NET:00033] AI1_1_(AI1L_1,AI1_1) = FD2A(AIL_1,CLK,RESL);
FD2A AI1_2__inst (.MasterClock(MasterClock),.q(AI1L_2),.qL(AI1_2),.d(AIL_2),.clk(CLK),.rL(RESL));//[INT.NET:00034] AI1_2_(AI1L_2,AI1_2) = FD2A(AIL_2,CLK,RESL);
FD2A AI2_0__inst (.MasterClock(MasterClock),.q(AI2_0),.qL(AI2L_0),.d(AI1_0),.clk(CLK),.rL(RESL));//[INT.NET:00035] AI2_0_(AI2_0,AI2L_0) = FD2A(AI1_0,CLK,RESL);
FD2A AI2_1__inst (.MasterClock(MasterClock),.q(AI2_1),.qL(AI2L_1),.d(AI1_1),.clk(CLK),.rL(RESL));//[INT.NET:00036] AI2_1_(AI2_1,AI2L_1) = FD2A(AI1_1,CLK,RESL);
FD2A AI2_2__inst (.MasterClock(MasterClock),.q(AI2_2),.qL(AI2L_2),.d(AI1_2),.clk(CLK),.rL(RESL));//[INT.NET:00037] AI2_2_(AI2_2,AI2L_2) = FD2A(AI1_2,CLK,RESL);

/* generate a pulse off the leading edge (negative going at pin) */

assign AID_0 = ~(DIS_1 | AI1_0 | AI2L_0);                                       //[INT.NET:00041] AID_0_(AID_0) = NR3A(DIS_1,AI1_0,AI2L_0);
assign AID_1 = ~(DIS_2 | AI1_1 | AI2L_1);                                       //[INT.NET:00042] AID_1_(AID_1) = NR3A(DIS_2,AI1_1,AI2L_1);
assign AID_2 = ~(DIS_3 | AI1_2 | AI2L_2);                                       //[INT.NET:00043] AID_2_(AID_2) = NR3A(DIS_3,AI1_2,AI2L_2);

/* latch the interupts */

assign RES = ~RESETL_0;                                                         //[INT.NET:00047] RES_(RES) = N1A(RESETL_0);
assign RESL = ~RES;                                                             //[INT.NET:00048] RESL_(RESL) = N1A(RES);

assign J = VINT & DISL_0;                                                       //[INT.NET:00050] J_(J) = AND2A(VINT,DISL_0);
m_JK I_0_ (.MasterClock(MasterClock),.J(J),.K(ACK_0),.R(RES),.CLK(CLK),.Q(I_0),.QB(IL_0));//[INT.NET:00051] I_0_(I_0,IL_0) = JK(J,ACK_0,RES,CLK);
m_JK I_1_ (.MasterClock(MasterClock),.J(AID_0),.K(ACK_1),.R(RES),.CLK(CLK),.Q(I_1),.QB(IL_1));//[INT.NET:00052] I_1_(I_1,IL_1) = JK(AID_0,ACK_1,RES,CLK);
m_JK I_2_ (.MasterClock(MasterClock),.J(AID_1),.K(ACK_2),.R(RES),.CLK(CLK),.Q(I_2),.QB(IL_2));//[INT.NET:00053] I_2_(I_2,IL_2) = JK(AID_1,ACK_2,RES,CLK);
m_JK I_3_ (.MasterClock(MasterClock),.J(AID_2),.K(ACK_3),.R(RES),.CLK(CLK),.Q(I_3),.QB(IL_3));//[INT.NET:00054] I_3_(I_3,IL_3) = JK(AID_2,ACK_3,RES,CLK);

/* latch this using INTAL so that the interupt vector does
not change during the acknowledge cycle */

assign INTA = ~INTAL;                                                           //[INT.NET:00059] INTA_(INTA) = N1A(INTAL);
assign INTA1L = ~INTA;                                                          //[INT.NET:00060] INTA1L_(INTA1L) = N1A(INTA);
LD1A I1_0__inst (.MasterClock(MasterClock),.q(I1_0),.qL(I1L_0),.d(I_0),.en(INTA1L));//[INT.NET:00061] I1_0_(I1_0,I1L_0) = LD1A(I_0,INTA1L);
LD1A I1_1__inst (.MasterClock(MasterClock),.q(I1_1),.qL(I1L_1),.d(I_1),.en(INTA1L));//[INT.NET:00062] I1_1_(I1_1,I1L_1) = LD1A(I_1,INTA1L);
LD1A I1_2__inst (.MasterClock(MasterClock),.q(I1_2),.qL(I1L_2),.d(I_2),.en(INTA1L));//[INT.NET:00063] I1_2_(I1_2,I1L_2) = LD1A(I_2,INTA1L);
LD1A I1_3__inst (.MasterClock(MasterClock),.q(I1_3),.qL(I1L_3),.d(I_3),.en(INTA1L));//[INT.NET:00064] I1_3_(I1_3,I1L_3) = LD1A(I_3,INTA1L);

/* latch this with INTA so that the appropriate interupt is cleared
by the OUT (ACK),AL instruction nb. the INTA cannot be used to clear
the interupt because there are two INTA pulses per acknowledge */

LD1A I2_0__inst (.MasterClock(MasterClock),.q(I2_0),.qL(I2L_0),.d(I1_0),.en(INTA));//[INT.NET:00070] I2_0_(I2_0,I2L_0) = LD1A(I1_0,INTA);
LD1A I2_1__inst (.MasterClock(MasterClock),.q(I2_1),.qL(I2L_1),.d(I1_1),.en(INTA));//[INT.NET:00071] I2_1_(I2_1,I2L_1) = LD1A(I1_1,INTA);
LD1A I2_2__inst (.MasterClock(MasterClock),.q(I2_2),.qL(I2L_2),.d(I1_2),.en(INTA));//[INT.NET:00072] I2_2_(I2_2,I2L_2) = LD1A(I1_2,INTA);
LD1A I2_3__inst (.MasterClock(MasterClock),.q(I2_3),.qL(I2L_3),.d(I1_3),.en(INTA));//[INT.NET:00073] I2_3_(I2_3,I2L_3) = LD1A(I1_3,INTA);

/* Now prioritize the interupts..interupt with a lower index disable
those with a higher */

assign IP_0 = I2_0;                                                             //[INT.NET:00078] IP_0_(IP_0) = B3A(I2_0);
assign IP_1 = ~(I2L_1 | I2_0);                                                  //[INT.NET:00079] IP_1_(IP_1) = NR2A(I2L_1,I2_0);
assign MASK_1 = I2_0 | I2_1;                                                    //[INT.NET:00080] MASK_1_(MASK_1) = OR2A(I2_0,I2_1);
assign IP_2 = ~(I2L_2 | MASK_1);                                                //[INT.NET:00081] IP_2_(IP_2) = NR2A(I2L_2,MASK_1);
assign IP_3 = ~(I2L_3 | MASK_2);                                                //[INT.NET:00082] IP_3_(IP_3) = NR2A(I2L_3,MASK_2);
assign MASK_2 = MASK_1 | I2_2;                                                  //[INT.NET:00083] MASK_2_(MASK_2) = OR2A(MASK_1,I2_2);

/* produce a vector from this */

assign VL_0 = ~(IP_0 | IP_2);                                                   //[INT.NET:00087] VL_0_(VL_0) = NR2A(IP_0,IP_2);
assign VL_1 = ~(IP_1 | IP_2);                                                   //[INT.NET:00088] VL_1_(VL_1) = NR2A(IP_1,IP_2);
assign VL_2 = ~IP_3;                                                            //[INT.NET:00089] VL_2_(VL_2) = N1A(IP_3);

/* the interupt signal */

assign INTL = ~(I_0 | I_1 | I_2 | I_3);                                         //[INT.NET:00093] INTL_(INTL) = NR4A(I_0,I_1,I_2,I_3);

/* enable onto bus during INTA */

assign drv0_outD_0 = ~VL_0; assign drv0_enD_0 = ~INTAL;                         //[INT.NET:00097] D_0_(D_0) = MACZINVB1(VL_0,INTAL);
assign drv0_outD_1 = ~VL_1; assign drv0_enD_1 = ~INTAL;                         //[INT.NET:00098] D_1_(D_1) = MACZINVB1(VL_1,INTAL);
assign drv0_outD_2 = ~VL_2; assign drv0_enD_2 = ~INTAL;                         //[INT.NET:00099] D_2_(D_2) = MACZINVB1(VL_2,INTAL);
assign drv0_outD_3 = ~RESETL_0; assign drv0_enD_3 = ~INTAL;                     //[INT.NET:00100] D_3_(D_3) = MACZINVB1(RESETL_0,INTAL);
assign drv0_outD_4 = ~RESETL_0; assign drv0_enD_4 = ~INTAL;                     //[INT.NET:00101] D_4_(D_4) = MACZINVB1(RESETL_0,INTAL);
assign drv0_outD_5 = ~RES; assign drv0_enD_5 = ~INTAL;                          //[INT.NET:00102] D_5_(D_5) = MACZINVB1(RES,INTAL);
assign drv0_outD_6 = ~RESETL_0; assign drv0_enD_6 = ~INTAL;                     //[INT.NET:00103] D_6_(D_6) = MACZINVB1(RESETL_0,INTAL);
assign drv0_outD_7 = ~RESETL_0; assign drv0_enD_7 = ~INTAL;                     //[INT.NET:00104] D_7_(D_7) = MACZINVB1(RESETL_0,INTAL);

/* clear the appropriate interupt */

assign ACK_0 = ACK & IP_0;                                                      //[INT.NET:00108] ACK_0_(ACK_0) = AND2A(ACK,IP_0);
assign ACK_1 = ACK & IP_1;                                                      //[INT.NET:00109] ACK_1_(ACK_1) = AND2A(ACK,IP_1);
assign ACK_2 = ACK & IP_2;                                                      //[INT.NET:00110] ACK_2_(ACK_2) = AND2A(ACK,IP_2);
assign ACK_3 = ACK & IP_3;                                                      //[INT.NET:00111] ACK_3_(ACK_3) = AND2A(ACK,IP_3);


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
endmodule                                                                       //[INT.NET:00114] END MODULE;
