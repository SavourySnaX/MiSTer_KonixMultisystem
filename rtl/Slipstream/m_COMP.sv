                                                                                //[COMP.NET:00001] COMPILE;
                                                                                //[COMP.NET:00002] DIRECTORY MASTER;
/****************************************************************************
comp
15/10/88

Blitter data comparator

****************************************************************************/


module m_COMP                                                                   //[COMP.NET:00012] MODULE COMP;
(                                                                               //[COMP.NET:00012] MODULE COMP;

    input    MasterClock,
    input    DSTCMP,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    ID_0,                                                              //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    ID_1,                                                              //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    ID_2,                                                              //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    ID_3,                                                              //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    LDCMPL,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    LDMODL,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    SRCD_0,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    SRCD_1,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    SRCD_2,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    SRCD_3,                                                            //[COMP.NET:00014] INPUTS	DSTCMP,ID_0,ID_1,ID_2,ID_3,LDCMPL,LDMODL,SRCD_0,SRCD_1,SRCD_2,SRCD_3,
    input    SRCD_4,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    SRCD_5,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    SRCD_6,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    SRCD_7,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_0,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_1,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_2,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_3,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_4,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_5,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_6,                                                            //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
    input    DSTD_7,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_0,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_1,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_2,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_3,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_4,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_5,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_6,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    PATD_7,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    ICNT_0,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    ICNT_1,                                                            //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
    input    ICNT_2,                                                            //[COMP.NET:00017]    ICNT_2,DAM1L,RES_0,SRCCMP;
    input    DAM1L,                                                             //[COMP.NET:00017]    ICNT_2,DAM1L,RES_0,SRCCMP;
    input    RES_0,                                                             //[COMP.NET:00017]    ICNT_2,DAM1L,RES_0,SRCCMP;
    input    SRCCMP,                                                            //[COMP.NET:00017]    ICNT_2,DAM1L,RES_0,SRCCMP;
                                                                                //[COMP.NET:00015]    SRCD_4,SRCD_5,SRCD_6,SRCD_7,DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,
                                                                                //[COMP.NET:00016]    DSTD_7,PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7,ICNT_0,ICNT_1,
                                                                                //[COMP.NET:00017]    ICNT_2,DAM1L,RES_0,SRCCMP;
    output    INHIB                                                             //[COMP.NET:00018] OUTPUTS	INHIB;
);                                                                              //[COMP.NET:00012] MODULE COMP;
                                                                                //[COMP.NET:00019] LEVEL FUNCTION;
wire RESL_0;                                                                    //[COMP.NET:00022] RESL_0_(RESL_0) = N1A(RES_0);
wire CMPEQ;                                                                     //[COMP.NET:00026] LFUCL0_(CMPEQ,CMPEQL) = LD2A(ID_0,LDCMPL);
wire CMPEQL;                                                                    //[COMP.NET:00026] LFUCL0_(CMPEQ,CMPEQL) = LD2A(ID_0,LDCMPL);
wire CMPNE;                                                                     //[COMP.NET:00027] LFUCL1_(CMPNE,CMPNEL) = LD2A(ID_1,LDCMPL);
wire CMPNEL;                                                                    //[COMP.NET:00027] LFUCL1_(CMPNE,CMPNEL) = LD2A(ID_1,LDCMPL);
wire CMPGT;                                                                     //[COMP.NET:00028] LFUCL2_(CMPGT,CMPGTL) = LD2A(ID_2,LDCMPL);
wire CMPGTL;                                                                    //[COMP.NET:00028] LFUCL2_(CMPGT,CMPGTL) = LD2A(ID_2,LDCMPL);
wire CMPPLN;                                                                    //[COMP.NET:00029] LFUCL4_(CMPPLN,CMPPLNL) = LD2A(ID_3,LDCMPL);
wire CMPPLNL;                                                                   //[COMP.NET:00029] LFUCL4_(CMPPLN,CMPPLNL) = LD2A(ID_3,LDCMPL);
wire CMPBIT;                                                                    //[COMP.NET:00030] LFUCL5_(CMPBIT,CMPBITL) = LD2A(ID_2,LDMODL);
wire CMPBITL;                                                                   //[COMP.NET:00030] LFUCL5_(CMPBIT,CMPBITL) = LD2A(ID_2,LDMODL);
wire SDL_0;                                                                     //[COMP.NET:00035] SRCSEL_0_(SDL_0) = MX21LB(PATD_0,SRCD_0,SRCCMP);
wire SDL_1;                                                                     //[COMP.NET:00036] SRCSEL_1_(SDL_1) = MX21LB(PATD_1,SRCD_1,SRCCMP);
wire SDL_2;                                                                     //[COMP.NET:00037] SRCSEL_2_(SDL_2) = MX21LB(PATD_2,SRCD_2,SRCCMP);
wire SDL_3;                                                                     //[COMP.NET:00038] SRCSEL_3_(SDL_3) = MX21LB(PATD_3,SRCD_3,SRCCMP);
wire SDL_4;                                                                     //[COMP.NET:00039] SRCSEL_4_(SDL_4) = MX21LB(PATD_4,SRCD_4,SRCCMP);
wire SDL_5;                                                                     //[COMP.NET:00040] SRCSEL_5_(SDL_5) = MX21LB(PATD_5,SRCD_5,SRCCMP);
wire SDL_6;                                                                     //[COMP.NET:00041] SRCSEL_6_(SDL_6) = MX21LB(PATD_6,SRCD_6,SRCCMP);
wire SDL_7;                                                                     //[COMP.NET:00042] SRCSEL_7_(SDL_7) = MX21LB(PATD_7,SRCD_7,SRCCMP);
wire DDL_0;                                                                     //[COMP.NET:00043] DSTSEL_0_(DDL_0) = MX21LB(PATD_0,DSTD_0,DSTCMP);
wire DDL_1;                                                                     //[COMP.NET:00044] DSTSEL_1_(DDL_1) = MX21LB(PATD_1,DSTD_1,DSTCMP);
wire DDL_2;                                                                     //[COMP.NET:00045] DSTSEL_2_(DDL_2) = MX21LB(PATD_2,DSTD_2,DSTCMP);
wire DDL_3;                                                                     //[COMP.NET:00046] DSTSEL_3_(DDL_3) = MX21LB(PATD_3,DSTD_3,DSTCMP);
wire DDL_4;                                                                     //[COMP.NET:00047] DSTSEL_4_(DDL_4) = MX21LB(PATD_4,DSTD_4,DSTCMP);
wire DDL_5;                                                                     //[COMP.NET:00048] DSTSEL_5_(DDL_5) = MX21LB(PATD_5,DSTD_5,DSTCMP);
wire DDL_6;                                                                     //[COMP.NET:00049] DSTSEL_6_(DDL_6) = MX21LB(PATD_6,DSTD_6,DSTCMP);
wire DDL_7;                                                                     //[COMP.NET:00050] DSTSEL_7_(DDL_7) = MX21LB(PATD_7,DSTD_7,DSTCMP);
wire SD_0;                                                                      //[COMP.NET:00051] SDINV_0_(SD_0) = N1A(SDL_0);
wire SD_1;                                                                      //[COMP.NET:00052] SDINV_1_(SD_1) = N1A(SDL_1);
wire SD_2;                                                                      //[COMP.NET:00053] SDINV_2_(SD_2) = N1A(SDL_2);
wire SD_3;                                                                      //[COMP.NET:00054] SDINV_3_(SD_3) = N1A(SDL_3);
wire SD_4;                                                                      //[COMP.NET:00055] SDINV_4_(SD_4) = N1A(SDL_4);
wire SD_5;                                                                      //[COMP.NET:00056] SDINV_5_(SD_5) = N1A(SDL_5);
wire SD_6;                                                                      //[COMP.NET:00057] SDINV_6_(SD_6) = N1A(SDL_6);
wire SD_7;                                                                      //[COMP.NET:00058] SDINV_7_(SD_7) = N1A(SDL_7);
wire DD_0;                                                                      //[COMP.NET:00059] DDINV_0_(DD_0) = N1A(DDL_0);
wire DD_1;                                                                      //[COMP.NET:00060] DDINV_1_(DD_1) = N1A(DDL_1);
wire DD_2;                                                                      //[COMP.NET:00061] DDINV_2_(DD_2) = N1A(DDL_2);
wire DD_3;                                                                      //[COMP.NET:00062] DDINV_3_(DD_3) = N1A(DDL_3);
wire DD_4;                                                                      //[COMP.NET:00063] DDINV_4_(DD_4) = N1A(DDL_4);
wire DD_5;                                                                      //[COMP.NET:00064] DDINV_5_(DD_5) = N1A(DDL_5);
wire DD_6;                                                                      //[COMP.NET:00065] DDINV_6_(DD_6) = N1A(DDL_6);
wire DD_7;                                                                      //[COMP.NET:00066] DDINV_7_(DD_7) = N1A(DDL_7);
wire SEQ_0;                                                                     //[COMP.NET:00074] NEQ_0_(SEQ_0) = AO2B(SD_0,DD_0,SDL_0,DDL_0);
wire SEQ_1;                                                                     //[COMP.NET:00075] NEQ_1_(SEQ_1) = AO2B(SD_1,DD_1,SDL_1,DDL_1);
wire SEQ_2;                                                                     //[COMP.NET:00076] NEQ_2_(SEQ_2) = AO2B(SD_2,DD_2,SDL_2,DDL_2);
wire SEQ_3;                                                                     //[COMP.NET:00077] NEQ_3_(SEQ_3) = AO2B(SD_3,DD_3,SDL_3,DDL_3);
wire SEQ_4;                                                                     //[COMP.NET:00078] NEQ_4_(SEQ_4) = AO2B(SD_4,DD_4,SDL_4,DDL_4);
wire SEQ_5;                                                                     //[COMP.NET:00079] NEQ_5_(SEQ_5) = AO2B(SD_5,DD_5,SDL_5,DDL_5);
wire SEQ_6;                                                                     //[COMP.NET:00080] NEQ_6_(SEQ_6) = AO2B(SD_6,DD_6,SDL_6,DDL_6);
wire SEQ_7;                                                                     //[COMP.NET:00081] NEQ_7_(SEQ_7) = AO2B(SD_7,DD_7,SDL_7,DDL_7);
wire LEQ;                                                                       //[COMP.NET:00082] LEQGEN_(LEQ) = NR4A(SEQ_0,SEQ_1,SEQ_2,SEQ_3);
wire HEQ;                                                                       //[COMP.NET:00083] HEQGEN_(HEQ) = NR4B(SEQ_4,SEQ_5,SEQ_6,SEQ_7);
wire EQT_0;                                                                     //[COMP.NET:00084] EQT0G_(EQT_0) = ND3B(RES_0,LEQ,HEQ);
wire EQT_1;                                                                     //[COMP.NET:00085] EQT1G_(EQT_1) = ND3B(RESL_0,DAM1L,LEQ);
wire DAM1;                                                                      //[COMP.NET:00086] EQT2G_(EQT_2) = ND3B(RESL_0,DAM1,HEQ);
wire EQT_2;                                                                     //[COMP.NET:00086] EQT2G_(EQT_2) = ND3B(RESL_0,DAM1,HEQ);
wire BEQ;                                                                       //[COMP.NET:00087] EQGEN_(BEQ) = ND3B(EQT_0,EQT_1,EQT_2);
wire BEQL;                                                                      //[COMP.NET:00088] BEQINV_(BEQL) = N1B(BEQ);
wire ICNTL_0;                                                                   //[COMP.NET:00094] ICNTINV_0_(ICNTL_0) = N1A(ICNT_0);
wire ICNTL_1;                                                                   //[COMP.NET:00095] ICNTINV_1_(ICNTL_1) = N1A(ICNT_1);
wire ICNTL_2;                                                                   //[COMP.NET:00096] ICNTINV_2_(ICNTL_2) = N1A(ICNT_2);
wire TRM3;                                                                      //[COMP.NET:00097] TRM3_(TRM3) = N1A(SEQ_7);
wire BITG_0;                                                                    //[COMP.NET:00098] BITG0_(BITG_0) = ND4A(ICNTL_2,ICNTL_1,ICNTL_0,SDL_0);
wire BITG_1;                                                                    //[COMP.NET:00099] BITG1_(BITG_1) = ND4A(ICNT_2,ICNT_1,ICNT_0,SDL_1);
wire BITG_2;                                                                    //[COMP.NET:00100] BITG2_(BITG_2) = ND4A(ICNT_2,ICNT_1,ICNTL_0,SDL_2);
wire BITG_3;                                                                    //[COMP.NET:00101] BITG3_(BITG_3) = ND4A(ICNT_2,ICNTL_1,ICNT_0,SDL_3);
wire BITG_4;                                                                    //[COMP.NET:00102] BITG4_(BITG_4) = ND4A(ICNT_2,ICNTL_1,ICNTL_0,SDL_4);
wire BITG_5;                                                                    //[COMP.NET:00103] BITG5_(BITG_5) = ND4A(ICNTL_2,ICNT_1,ICNT_0,SDL_5);
wire BITG_6;                                                                    //[COMP.NET:00104] BITG6_(BITG_6) = ND4A(ICNTL_2,ICNT_1,ICNTL_0,SDL_6);
wire BITG_7;                                                                    //[COMP.NET:00105] BITG7_(BITG_7) = ND4A(ICNTL_2,ICNTL_1,ICNT_0,SDL_7);
wire BIT;                                                                       //[COMP.NET:00106] BITGEN_(BIT) = ND8A(BITG_0,BITG_1,BITG_2,BITG_3,BITG_4,BITG_5,BITG_6,BITG_7);
wire TRM1;                                                                      //[COMP.NET:00111] TRMINV1_(TRM1,TRM2) = MACINV2(SEQ_3,SEQ_6);
wire TRM2;                                                                      //[COMP.NET:00111] TRMINV1_(TRM1,TRM2) = MACINV2(SEQ_3,SEQ_6);
wire PRTRM_0;                                                                   //[COMP.NET:00113] PRTRM0G_(PRTRM_0) = ND2A(TRM1,DAM1L);
wire PRTRM_1;                                                                   //[COMP.NET:00114] PRTRM1G_(PRTRM_1) = ND2A(TRM3,DAM1);
wire PRTRM_2;                                                                   //[COMP.NET:00115] PRTRM2G_(PRTRM_2) = ND2A(PRTRM_0,PRTRM_1);
wire PRTRM_3;                                                                   //[COMP.NET:00116] PRTRM3G_(PRTRM_3) = ND2A(RESL_0,PRTRM_2);
wire PRTRM_4;                                                                   //[COMP.NET:00117] PRTRM4G_(PRTRM_4) = ND3A(RES_0,TRM2,TRM3);
wire PREQ;                                                                      //[COMP.NET:00118] PREQ_(PREQ) = ND2A(PRTRM_3,PRTRM_4);
wire PRNE;                                                                      //[COMP.NET:00119] PRNE_(PRNE) = N1A(PREQ);
wire PRGTT_0;                                                                   //[COMP.NET:00131] PRGT0_(PRGTT_0) = ND3A(DAM1,DD_7,SDL_7);
wire PRGTT_1;                                                                   //[COMP.NET:00132] PRGT1_(PRGTT_1) = ND3A(DAM1L,DD_3,SDL_3);
wire PRGTT_2;                                                                   //[COMP.NET:00133] PRGT2_(PRGTT_2) = ND2A(PRGTT_0,PRGTT_1);
wire PRGTT_3;                                                                   //[COMP.NET:00134] PRGT3_(PRGTT_3) = ND2A(RESL_0,PRGTT_2);
wire PRGTT_4;                                                                   //[COMP.NET:00136] PRGT4_(PRGTT_4) = ND2A(DD_7,SDL_7);
wire PRGTT_5;                                                                   //[COMP.NET:00137] PRGT5_(PRGTT_5) = ND3A(DD_6,SDL_7,SDL_6);
wire PRGTT_6;                                                                   //[COMP.NET:00138] PRGT6_(PRGTT_6) = ND3A(DD_6,DD_7,SDL_6);
wire PRGTT_7;                                                                   //[COMP.NET:00139] PRGT7_(PRGTT_7) = ND3A(PRGTT_4,PRGTT_5,PRGTT_6);
wire PRGTT_8;                                                                   //[COMP.NET:00140] PRGT8_(PRGTT_8) = ND2A(RES_0,PRGTT_7);
wire PRGT;                                                                      //[COMP.NET:00142] PRGT_(PRGT) = ND2A(PRGTT_3,PRGTT_8);
wire INHT_0;                                                                    //[COMP.NET:00146] INHT0G_(INHT_0) = ND3A(CMPPLN,CMPGT,PRGT);
wire INHT_1;                                                                    //[COMP.NET:00147] INHT1G_(INHT_1) = ND3A(CMPPLN,CMPEQ,PREQ);
wire INHT_2;                                                                    //[COMP.NET:00148] INHT2G_(INHT_2) = ND3A(CMPPLN,CMPNE,PRNE);
wire INHT_3;                                                                    //[COMP.NET:00149] INHT3G_(INHT_3) = ND3A(CMPPLNL,CMPEQ,BEQ);
wire INHT_4;                                                                    //[COMP.NET:00150] INHT4G_(INHT_4) = ND3B(CMPPLNL,CMPNE,BEQL);
wire INHT_5;                                                                    //[COMP.NET:00151] INHT5G_(INHT_5) = ND2A(CMPBIT,BIT);

assign RESL_0 = ~RES_0;                                                         //[COMP.NET:00022] RESL_0_(RESL_0) = N1A(RES_0);

/* The comparator control register */

LD2A LFUCL0__inst (.MasterClock(MasterClock),.q(CMPEQ),.qL(CMPEQL),.d(ID_0),.en(LDCMPL));//[COMP.NET:00026] LFUCL0_(CMPEQ,CMPEQL) = LD2A(ID_0,LDCMPL);
LD2A LFUCL1__inst (.MasterClock(MasterClock),.q(CMPNE),.qL(CMPNEL),.d(ID_1),.en(LDCMPL));//[COMP.NET:00027] LFUCL1_(CMPNE,CMPNEL) = LD2A(ID_1,LDCMPL);
LD2A LFUCL2__inst (.MasterClock(MasterClock),.q(CMPGT),.qL(CMPGTL),.d(ID_2),.en(LDCMPL));//[COMP.NET:00028] LFUCL2_(CMPGT,CMPGTL) = LD2A(ID_2,LDCMPL);
LD2A LFUCL4__inst (.MasterClock(MasterClock),.q(CMPPLN),.qL(CMPPLNL),.d(ID_3),.en(LDCMPL));//[COMP.NET:00029] LFUCL4_(CMPPLN,CMPPLNL) = LD2A(ID_3,LDCMPL);
LD2A LFUCL5__inst (.MasterClock(MasterClock),.q(CMPBIT),.qL(CMPBITL),.d(ID_2),.en(LDMODL));//[COMP.NET:00030] LFUCL5_(CMPBIT,CMPBITL) = LD2A(ID_2,LDMODL);

/* Select between source/pattern and destination/pattern data according to
the srccmp and dstcmp control bits */

assign SDL_0 = ~(SRCCMP ? SRCD_0 : PATD_0);                                     //[COMP.NET:00035] SRCSEL_0_(SDL_0) = MX21LB(PATD_0,SRCD_0,SRCCMP);
assign SDL_1 = ~(SRCCMP ? SRCD_1 : PATD_1);                                     //[COMP.NET:00036] SRCSEL_1_(SDL_1) = MX21LB(PATD_1,SRCD_1,SRCCMP);
assign SDL_2 = ~(SRCCMP ? SRCD_2 : PATD_2);                                     //[COMP.NET:00037] SRCSEL_2_(SDL_2) = MX21LB(PATD_2,SRCD_2,SRCCMP);
assign SDL_3 = ~(SRCCMP ? SRCD_3 : PATD_3);                                     //[COMP.NET:00038] SRCSEL_3_(SDL_3) = MX21LB(PATD_3,SRCD_3,SRCCMP);
assign SDL_4 = ~(SRCCMP ? SRCD_4 : PATD_4);                                     //[COMP.NET:00039] SRCSEL_4_(SDL_4) = MX21LB(PATD_4,SRCD_4,SRCCMP);
assign SDL_5 = ~(SRCCMP ? SRCD_5 : PATD_5);                                     //[COMP.NET:00040] SRCSEL_5_(SDL_5) = MX21LB(PATD_5,SRCD_5,SRCCMP);
assign SDL_6 = ~(SRCCMP ? SRCD_6 : PATD_6);                                     //[COMP.NET:00041] SRCSEL_6_(SDL_6) = MX21LB(PATD_6,SRCD_6,SRCCMP);
assign SDL_7 = ~(SRCCMP ? SRCD_7 : PATD_7);                                     //[COMP.NET:00042] SRCSEL_7_(SDL_7) = MX21LB(PATD_7,SRCD_7,SRCCMP);
assign DDL_0 = ~(DSTCMP ? DSTD_0 : PATD_0);                                     //[COMP.NET:00043] DSTSEL_0_(DDL_0) = MX21LB(PATD_0,DSTD_0,DSTCMP);
assign DDL_1 = ~(DSTCMP ? DSTD_1 : PATD_1);                                     //[COMP.NET:00044] DSTSEL_1_(DDL_1) = MX21LB(PATD_1,DSTD_1,DSTCMP);
assign DDL_2 = ~(DSTCMP ? DSTD_2 : PATD_2);                                     //[COMP.NET:00045] DSTSEL_2_(DDL_2) = MX21LB(PATD_2,DSTD_2,DSTCMP);
assign DDL_3 = ~(DSTCMP ? DSTD_3 : PATD_3);                                     //[COMP.NET:00046] DSTSEL_3_(DDL_3) = MX21LB(PATD_3,DSTD_3,DSTCMP);
assign DDL_4 = ~(DSTCMP ? DSTD_4 : PATD_4);                                     //[COMP.NET:00047] DSTSEL_4_(DDL_4) = MX21LB(PATD_4,DSTD_4,DSTCMP);
assign DDL_5 = ~(DSTCMP ? DSTD_5 : PATD_5);                                     //[COMP.NET:00048] DSTSEL_5_(DDL_5) = MX21LB(PATD_5,DSTD_5,DSTCMP);
assign DDL_6 = ~(DSTCMP ? DSTD_6 : PATD_6);                                     //[COMP.NET:00049] DSTSEL_6_(DDL_6) = MX21LB(PATD_6,DSTD_6,DSTCMP);
assign DDL_7 = ~(DSTCMP ? DSTD_7 : PATD_7);                                     //[COMP.NET:00050] DSTSEL_7_(DDL_7) = MX21LB(PATD_7,DSTD_7,DSTCMP);
assign SD_0 = ~SDL_0;                                                           //[COMP.NET:00051] SDINV_0_(SD_0) = N1A(SDL_0);
assign SD_1 = ~SDL_1;                                                           //[COMP.NET:00052] SDINV_1_(SD_1) = N1A(SDL_1);
assign SD_2 = ~SDL_2;                                                           //[COMP.NET:00053] SDINV_2_(SD_2) = N1A(SDL_2);
assign SD_3 = ~SDL_3;                                                           //[COMP.NET:00054] SDINV_3_(SD_3) = N1A(SDL_3);
assign SD_4 = ~SDL_4;                                                           //[COMP.NET:00055] SDINV_4_(SD_4) = N1A(SDL_4);
assign SD_5 = ~SDL_5;                                                           //[COMP.NET:00056] SDINV_5_(SD_5) = N1A(SDL_5);
assign SD_6 = ~SDL_6;                                                           //[COMP.NET:00057] SDINV_6_(SD_6) = N1A(SDL_6);
assign SD_7 = ~SDL_7;                                                           //[COMP.NET:00058] SDINV_7_(SD_7) = N1A(SDL_7);
assign DD_0 = ~DDL_0;                                                           //[COMP.NET:00059] DDINV_0_(DD_0) = N1A(DDL_0);
assign DD_1 = ~DDL_1;                                                           //[COMP.NET:00060] DDINV_1_(DD_1) = N1A(DDL_1);
assign DD_2 = ~DDL_2;                                                           //[COMP.NET:00061] DDINV_2_(DD_2) = N1A(DDL_2);
assign DD_3 = ~DDL_3;                                                           //[COMP.NET:00062] DDINV_3_(DD_3) = N1A(DDL_3);
assign DD_4 = ~DDL_4;                                                           //[COMP.NET:00063] DDINV_4_(DD_4) = N1A(DDL_4);
assign DD_5 = ~DDL_5;                                                           //[COMP.NET:00064] DDINV_5_(DD_5) = N1A(DDL_5);
assign DD_6 = ~DDL_6;                                                           //[COMP.NET:00065] DDINV_6_(DD_6) = N1A(DDL_6);
assign DD_7 = ~DDL_7;                                                           //[COMP.NET:00066] DDINV_7_(DD_7) = N1A(DDL_7);

/* Generate the pixel equal inhibit term
   This corresponds to the whole byte in lores, or one nybble of it in
   hires or lores.  The selection is made on the res[0] flag and the nybble bit
   of the destination address.  If cmppln is clear then an inhibit may
   be generated on byte not equal or byte equal. */

assign SEQ_0 = ~((SD_0 & DD_0)|(SDL_0 & DDL_0));                                //[COMP.NET:00074] NEQ_0_(SEQ_0) = AO2B(SD_0,DD_0,SDL_0,DDL_0);
assign SEQ_1 = ~((SD_1 & DD_1)|(SDL_1 & DDL_1));                                //[COMP.NET:00075] NEQ_1_(SEQ_1) = AO2B(SD_1,DD_1,SDL_1,DDL_1);
assign SEQ_2 = ~((SD_2 & DD_2)|(SDL_2 & DDL_2));                                //[COMP.NET:00076] NEQ_2_(SEQ_2) = AO2B(SD_2,DD_2,SDL_2,DDL_2);
assign SEQ_3 = ~((SD_3 & DD_3)|(SDL_3 & DDL_3));                                //[COMP.NET:00077] NEQ_3_(SEQ_3) = AO2B(SD_3,DD_3,SDL_3,DDL_3);
assign SEQ_4 = ~((SD_4 & DD_4)|(SDL_4 & DDL_4));                                //[COMP.NET:00078] NEQ_4_(SEQ_4) = AO2B(SD_4,DD_4,SDL_4,DDL_4);
assign SEQ_5 = ~((SD_5 & DD_5)|(SDL_5 & DDL_5));                                //[COMP.NET:00079] NEQ_5_(SEQ_5) = AO2B(SD_5,DD_5,SDL_5,DDL_5);
assign SEQ_6 = ~((SD_6 & DD_6)|(SDL_6 & DDL_6));                                //[COMP.NET:00080] NEQ_6_(SEQ_6) = AO2B(SD_6,DD_6,SDL_6,DDL_6);
assign SEQ_7 = ~((SD_7 & DD_7)|(SDL_7 & DDL_7));                                //[COMP.NET:00081] NEQ_7_(SEQ_7) = AO2B(SD_7,DD_7,SDL_7,DDL_7);
assign LEQ = ~(SEQ_0 | SEQ_1 | SEQ_2 | SEQ_3);                                  //[COMP.NET:00082] LEQGEN_(LEQ) = NR4A(SEQ_0,SEQ_1,SEQ_2,SEQ_3);
assign HEQ = ~(SEQ_4 | SEQ_5 | SEQ_6 | SEQ_7);                                  //[COMP.NET:00083] HEQGEN_(HEQ) = NR4B(SEQ_4,SEQ_5,SEQ_6,SEQ_7);
assign EQT_0 = ~(RES_0 & LEQ & HEQ);                                            //[COMP.NET:00084] EQT0G_(EQT_0) = ND3B(RES_0,LEQ,HEQ);
assign EQT_1 = ~(RESL_0 & DAM1L & LEQ);                                         //[COMP.NET:00085] EQT1G_(EQT_1) = ND3B(RESL_0,DAM1L,LEQ);
assign EQT_2 = ~(RESL_0 & DAM1 & HEQ);                                          //[COMP.NET:00086] EQT2G_(EQT_2) = ND3B(RESL_0,DAM1,HEQ);
assign BEQ = ~(EQT_0 & EQT_1 & EQT_2);                                          //[COMP.NET:00087] EQGEN_(BEQ) = ND3B(EQT_0,EQT_1,EQT_2);
assign BEQL = ~BEQ;                                                             //[COMP.NET:00088] BEQINV_(BEQL) = N1B(BEQ);

/* Generate bit selection term
   This allows an inhibit to be generated based on one bit of the source
   data register, selected by the inner counter value. */

assign ICNTL_0 = ~ICNT_0;                                                       //[COMP.NET:00094] ICNTINV_0_(ICNTL_0) = N1A(ICNT_0);
assign ICNTL_1 = ~ICNT_1;                                                       //[COMP.NET:00095] ICNTINV_1_(ICNTL_1) = N1A(ICNT_1);
assign ICNTL_2 = ~ICNT_2;                                                       //[COMP.NET:00096] ICNTINV_2_(ICNTL_2) = N1A(ICNT_2);
assign TRM3 = ~SEQ_7;                                                           //[COMP.NET:00097] TRM3_(TRM3) = N1A(SEQ_7);
assign BITG_0 = ~(ICNTL_2 & ICNTL_1 & ICNTL_0 & SDL_0);                         //[COMP.NET:00098] BITG0_(BITG_0) = ND4A(ICNTL_2,ICNTL_1,ICNTL_0,SDL_0);
assign BITG_1 = ~(ICNT_2 & ICNT_1 & ICNT_0 & SDL_1);                            //[COMP.NET:00099] BITG1_(BITG_1) = ND4A(ICNT_2,ICNT_1,ICNT_0,SDL_1);
assign BITG_2 = ~(ICNT_2 & ICNT_1 & ICNTL_0 & SDL_2);                           //[COMP.NET:00100] BITG2_(BITG_2) = ND4A(ICNT_2,ICNT_1,ICNTL_0,SDL_2);
assign BITG_3 = ~(ICNT_2 & ICNTL_1 & ICNT_0 & SDL_3);                           //[COMP.NET:00101] BITG3_(BITG_3) = ND4A(ICNT_2,ICNTL_1,ICNT_0,SDL_3);
assign BITG_4 = ~(ICNT_2 & ICNTL_1 & ICNTL_0 & SDL_4);                          //[COMP.NET:00102] BITG4_(BITG_4) = ND4A(ICNT_2,ICNTL_1,ICNTL_0,SDL_4);
assign BITG_5 = ~(ICNTL_2 & ICNT_1 & ICNT_0 & SDL_5);                           //[COMP.NET:00103] BITG5_(BITG_5) = ND4A(ICNTL_2,ICNT_1,ICNT_0,SDL_5);
assign BITG_6 = ~(ICNTL_2 & ICNT_1 & ICNTL_0 & SDL_6);                          //[COMP.NET:00104] BITG6_(BITG_6) = ND4A(ICNTL_2,ICNT_1,ICNTL_0,SDL_6);
assign BITG_7 = ~(ICNTL_2 & ICNTL_1 & ICNT_0 & SDL_7);                          //[COMP.NET:00105] BITG7_(BITG_7) = ND4A(ICNTL_2,ICNTL_1,ICNT_0,SDL_7);
assign BIT = ~(BITG_0 & BITG_1 & BITG_2 & BITG_3 & BITG_4 & BITG_5 & BITG_6 & BITG_7);//[COMP.NET:00106] BITGEN_(BIT) = ND8A(BITG_0,BITG_1,BITG_2,BITG_3,BITG_4,BITG_5,BITG_6,BITG_7);

/* Plane number comparison
   Priority Equal and Not Equal */

m_MACINV2 TRMINV1_ (.MasterClock(MasterClock),.I1(SEQ_3),.I2(SEQ_6),.Q1(TRM1),.Q2(TRM2));//[COMP.NET:00111] TRMINV1_(TRM1,TRM2) = MACINV2(SEQ_3,SEQ_6);
assign DAM1 = ~DAM1L;                                                           //[COMP.NET:00112] DAM1_(DAM1) = N1A(DAM1L);
assign PRTRM_0 = ~(TRM1 & DAM1L);                                               //[COMP.NET:00113] PRTRM0G_(PRTRM_0) = ND2A(TRM1,DAM1L);
assign PRTRM_1 = ~(TRM3 & DAM1);                                                //[COMP.NET:00114] PRTRM1G_(PRTRM_1) = ND2A(TRM3,DAM1);
assign PRTRM_2 = ~(PRTRM_0 & PRTRM_1);                                          //[COMP.NET:00115] PRTRM2G_(PRTRM_2) = ND2A(PRTRM_0,PRTRM_1);
assign PRTRM_3 = ~(RESL_0 & PRTRM_2);                                           //[COMP.NET:00116] PRTRM3G_(PRTRM_3) = ND2A(RESL_0,PRTRM_2);
assign PRTRM_4 = ~(RES_0 & TRM2 & TRM3);                                        //[COMP.NET:00117] PRTRM4G_(PRTRM_4) = ND3A(RES_0,TRM2,TRM3);
assign PREQ = ~(PRTRM_3 & PRTRM_4);                                             //[COMP.NET:00118] PREQ_(PREQ) = ND2A(PRTRM_3,PRTRM_4);
assign PRNE = ~PREQ;                                                            //[COMP.NET:00119] PRNE_(PRNE) = N1A(PREQ);

/* Priority Greater Than
   This is active when the priority of the destination pixel is a higher
   value than the priority of the source pixel.  This is given by:
   prgt = 	/res[0].( dam1.dd[7]./sd[7]
		       + /dam1.dd[3]./sd[3])
               + res[0].( dd[7]./sd[7]
		       + dd[6]./sd[7]./sd[6]
		       + dd[6].dd[7]./sd[6]
 */

assign PRGTT_0 = ~(DAM1 & DD_7 & SDL_7);                                        //[COMP.NET:00131] PRGT0_(PRGTT_0) = ND3A(DAM1,DD_7,SDL_7);
assign PRGTT_1 = ~(DAM1L & DD_3 & SDL_3);                                       //[COMP.NET:00132] PRGT1_(PRGTT_1) = ND3A(DAM1L,DD_3,SDL_3);
assign PRGTT_2 = ~(PRGTT_0 & PRGTT_1);                                          //[COMP.NET:00133] PRGT2_(PRGTT_2) = ND2A(PRGTT_0,PRGTT_1);
assign PRGTT_3 = ~(RESL_0 & PRGTT_2);                                           //[COMP.NET:00134] PRGT3_(PRGTT_3) = ND2A(RESL_0,PRGTT_2);

assign PRGTT_4 = ~(DD_7 & SDL_7);                                               //[COMP.NET:00136] PRGT4_(PRGTT_4) = ND2A(DD_7,SDL_7);
assign PRGTT_5 = ~(DD_6 & SDL_7 & SDL_6);                                       //[COMP.NET:00137] PRGT5_(PRGTT_5) = ND3A(DD_6,SDL_7,SDL_6);
assign PRGTT_6 = ~(DD_6 & DD_7 & SDL_6);                                        //[COMP.NET:00138] PRGT6_(PRGTT_6) = ND3A(DD_6,DD_7,SDL_6);
assign PRGTT_7 = ~(PRGTT_4 & PRGTT_5 & PRGTT_6);                                //[COMP.NET:00139] PRGT7_(PRGTT_7) = ND3A(PRGTT_4,PRGTT_5,PRGTT_6);
assign PRGTT_8 = ~(RES_0 & PRGTT_7);                                            //[COMP.NET:00140] PRGT8_(PRGTT_8) = ND2A(RES_0,PRGTT_7);

assign PRGT = ~(PRGTT_3 & PRGTT_8);                                             //[COMP.NET:00142] PRGT_(PRGT) = ND2A(PRGTT_3,PRGTT_8);

/* From these,  generate the inhibit signal */

assign INHT_0 = ~(CMPPLN & CMPGT & PRGT);                                       //[COMP.NET:00146] INHT0G_(INHT_0) = ND3A(CMPPLN,CMPGT,PRGT);
assign INHT_1 = ~(CMPPLN & CMPEQ & PREQ);                                       //[COMP.NET:00147] INHT1G_(INHT_1) = ND3A(CMPPLN,CMPEQ,PREQ);
assign INHT_2 = ~(CMPPLN & CMPNE & PRNE);                                       //[COMP.NET:00148] INHT2G_(INHT_2) = ND3A(CMPPLN,CMPNE,PRNE);
assign INHT_3 = ~(CMPPLNL & CMPEQ & BEQ);                                       //[COMP.NET:00149] INHT3G_(INHT_3) = ND3A(CMPPLNL,CMPEQ,BEQ);
assign INHT_4 = ~(CMPPLNL & CMPNE & BEQL);                                      //[COMP.NET:00150] INHT4G_(INHT_4) = ND3B(CMPPLNL,CMPNE,BEQL);
assign INHT_5 = ~(CMPBIT & BIT);                                                //[COMP.NET:00151] INHT5G_(INHT_5) = ND2A(CMPBIT,BIT);
assign INHIB = ~(INHT_0 & INHT_1 & INHT_2 & INHT_3 & INHT_4 & INHT_5);          //[COMP.NET:00152] INHGEN_(INHIB) = ND6B(INHT_0,INHT_1,INHT_2,INHT_3,INHT_4,INHT_5);

endmodule                                                                       //[COMP.NET:00154] END MODULE;
