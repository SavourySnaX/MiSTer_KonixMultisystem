                                                                                //[PATDATA.NET:00001] COMPILE;
                                                                                //[PATDATA.NET:00002] DIRECTORY MASTER;
/****************************************************************************
patdata
10/10/88

Pattern data register

****************************************************************************/


module m_PATDATA                                                                //[PATDATA.NET:00012] MODULE PATDATA;
(                                                                               //[PATDATA.NET:00012] MODULE PATDATA;

    input    MasterClock,
    input    LDPATL,                                                            //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_0,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_1,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_2,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_3,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_4,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_5,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_6,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_7,                                                              //[PATDATA.NET:00014] INPUTS	LDPATL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    output    PATD_0,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_1,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_2,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_3,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_4,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_5,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_6,                                                           //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
    output    PATD_7                                                            //[PATDATA.NET:00015] OUTPUTS	PATD_0,PATD_1,PATD_2,PATD_3,PATD_4,PATD_5,PATD_6,PATD_7;
);                                                                              //[PATDATA.NET:00012] MODULE PATDATA;
                                                                                //[PATDATA.NET:00016] LEVEL FUNCTION;
wire PATDL_0;                                                                   //[PATDATA.NET:00019] DSTDL_0_(PATD_0,PATDL_0) = LD2A(ID_0,LDPATL);
wire PATDL_1;                                                                   //[PATDATA.NET:00020] DSTDL_1_(PATD_1,PATDL_1) = LD2A(ID_1,LDPATL);
wire PATDL_2;                                                                   //[PATDATA.NET:00021] DSTDL_2_(PATD_2,PATDL_2) = LD2A(ID_2,LDPATL);
wire PATDL_3;                                                                   //[PATDATA.NET:00022] DSTDL_3_(PATD_3,PATDL_3) = LD2A(ID_3,LDPATL);
wire PATDL_4;                                                                   //[PATDATA.NET:00023] DSTDL_4_(PATD_4,PATDL_4) = LD2A(ID_4,LDPATL);
wire PATDL_5;                                                                   //[PATDATA.NET:00024] DSTDL_5_(PATD_5,PATDL_5) = LD2A(ID_5,LDPATL);
wire PATDL_6;                                                                   //[PATDATA.NET:00025] DSTDL_6_(PATD_6,PATDL_6) = LD2A(ID_6,LDPATL);
wire PATDL_7;                                                                   //[PATDATA.NET:00026] DSTDL_7_(PATD_7,PATDL_7) = LD2A(ID_7,LDPATL);

LD2A DSTDL_0__inst (.MasterClock(MasterClock),.q(PATD_0),.qL(PATDL_0),.d(ID_0),.en(LDPATL));//[PATDATA.NET:00019] DSTDL_0_(PATD_0,PATDL_0) = LD2A(ID_0,LDPATL);
LD2A DSTDL_1__inst (.MasterClock(MasterClock),.q(PATD_1),.qL(PATDL_1),.d(ID_1),.en(LDPATL));//[PATDATA.NET:00020] DSTDL_1_(PATD_1,PATDL_1) = LD2A(ID_1,LDPATL);
LD2A DSTDL_2__inst (.MasterClock(MasterClock),.q(PATD_2),.qL(PATDL_2),.d(ID_2),.en(LDPATL));//[PATDATA.NET:00021] DSTDL_2_(PATD_2,PATDL_2) = LD2A(ID_2,LDPATL);
LD2A DSTDL_3__inst (.MasterClock(MasterClock),.q(PATD_3),.qL(PATDL_3),.d(ID_3),.en(LDPATL));//[PATDATA.NET:00022] DSTDL_3_(PATD_3,PATDL_3) = LD2A(ID_3,LDPATL);
LD2A DSTDL_4__inst (.MasterClock(MasterClock),.q(PATD_4),.qL(PATDL_4),.d(ID_4),.en(LDPATL));//[PATDATA.NET:00023] DSTDL_4_(PATD_4,PATDL_4) = LD2A(ID_4,LDPATL);
LD2A DSTDL_5__inst (.MasterClock(MasterClock),.q(PATD_5),.qL(PATDL_5),.d(ID_5),.en(LDPATL));//[PATDATA.NET:00024] DSTDL_5_(PATD_5,PATDL_5) = LD2A(ID_5,LDPATL);
LD2A DSTDL_6__inst (.MasterClock(MasterClock),.q(PATD_6),.qL(PATDL_6),.d(ID_6),.en(LDPATL));//[PATDATA.NET:00025] DSTDL_6_(PATD_6,PATDL_6) = LD2A(ID_6,LDPATL);
LD2A DSTDL_7__inst (.MasterClock(MasterClock),.q(PATD_7),.qL(PATDL_7),.d(ID_7),.en(LDPATL));//[PATDATA.NET:00026] DSTDL_7_(PATD_7,PATDL_7) = LD2A(ID_7,LDPATL);

endmodule                                                                       //[PATDATA.NET:00028] END MODULE;
