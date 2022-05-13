                                                                                //[DSTDATA.NET:00001] COMPILE;
                                                                                //[DSTDATA.NET:00002] DIRECTORY MASTER;
/****************************************************************************
dstdata
10/10/88

Destination Data Register

****************************************************************************/


module m_DSTDATA                                                                //[DSTDATA.NET:00012] MODULE DSTDATA;
(                                                                               //[DSTDATA.NET:00012] MODULE DSTDATA;

    input    MasterClock,
    input    LDDSTL,                                                            //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_0,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_1,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_2,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_3,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_4,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_5,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_6,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    input    ID_7,                                                              //[DSTDATA.NET:00014] INPUTS	LDDSTL,ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7;
    output    DSTD_0,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_1,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_2,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_3,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_4,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_5,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_6,                                                           //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
    output    DSTD_7                                                            //[DSTDATA.NET:00015] OUTPUTS	DSTD_0,DSTD_1,DSTD_2,DSTD_3,DSTD_4,DSTD_5,DSTD_6,DSTD_7;
);                                                                              //[DSTDATA.NET:00012] MODULE DSTDATA;
                                                                                //[DSTDATA.NET:00016] LEVEL FUNCTION;
wire DSTDL_0;                                                                   //[DSTDATA.NET:00019] DSTDL_0_(DSTD_0,DSTDL_0) = LD2A(ID_0,LDDSTL);
wire DSTDL_1;                                                                   //[DSTDATA.NET:00020] DSTDL_1_(DSTD_1,DSTDL_1) = LD2A(ID_1,LDDSTL);
wire DSTDL_2;                                                                   //[DSTDATA.NET:00021] DSTDL_2_(DSTD_2,DSTDL_2) = LD2A(ID_2,LDDSTL);
wire DSTDL_3;                                                                   //[DSTDATA.NET:00022] DSTDL_3_(DSTD_3,DSTDL_3) = LD2A(ID_3,LDDSTL);
wire DSTDL_4;                                                                   //[DSTDATA.NET:00023] DSTDL_4_(DSTD_4,DSTDL_4) = LD2A(ID_4,LDDSTL);
wire DSTDL_5;                                                                   //[DSTDATA.NET:00024] DSTDL_5_(DSTD_5,DSTDL_5) = LD2A(ID_5,LDDSTL);
wire DSTDL_6;                                                                   //[DSTDATA.NET:00025] DSTDL_6_(DSTD_6,DSTDL_6) = LD2A(ID_6,LDDSTL);
wire DSTDL_7;                                                                   //[DSTDATA.NET:00026] DSTDL_7_(DSTD_7,DSTDL_7) = LD2A(ID_7,LDDSTL);

LD2A DSTDL_0__inst (.MasterClock(MasterClock),.q(DSTD_0),.qL(DSTDL_0),.d(ID_0),.en(LDDSTL));//[DSTDATA.NET:00019] DSTDL_0_(DSTD_0,DSTDL_0) = LD2A(ID_0,LDDSTL);
LD2A DSTDL_1__inst (.MasterClock(MasterClock),.q(DSTD_1),.qL(DSTDL_1),.d(ID_1),.en(LDDSTL));//[DSTDATA.NET:00020] DSTDL_1_(DSTD_1,DSTDL_1) = LD2A(ID_1,LDDSTL);
LD2A DSTDL_2__inst (.MasterClock(MasterClock),.q(DSTD_2),.qL(DSTDL_2),.d(ID_2),.en(LDDSTL));//[DSTDATA.NET:00021] DSTDL_2_(DSTD_2,DSTDL_2) = LD2A(ID_2,LDDSTL);
LD2A DSTDL_3__inst (.MasterClock(MasterClock),.q(DSTD_3),.qL(DSTDL_3),.d(ID_3),.en(LDDSTL));//[DSTDATA.NET:00022] DSTDL_3_(DSTD_3,DSTDL_3) = LD2A(ID_3,LDDSTL);
LD2A DSTDL_4__inst (.MasterClock(MasterClock),.q(DSTD_4),.qL(DSTDL_4),.d(ID_4),.en(LDDSTL));//[DSTDATA.NET:00023] DSTDL_4_(DSTD_4,DSTDL_4) = LD2A(ID_4,LDDSTL);
LD2A DSTDL_5__inst (.MasterClock(MasterClock),.q(DSTD_5),.qL(DSTDL_5),.d(ID_5),.en(LDDSTL));//[DSTDATA.NET:00024] DSTDL_5_(DSTD_5,DSTDL_5) = LD2A(ID_5,LDDSTL);
LD2A DSTDL_6__inst (.MasterClock(MasterClock),.q(DSTD_6),.qL(DSTDL_6),.d(ID_6),.en(LDDSTL));//[DSTDATA.NET:00025] DSTDL_6_(DSTD_6,DSTDL_6) = LD2A(ID_6,LDDSTL);
LD2A DSTDL_7__inst (.MasterClock(MasterClock),.q(DSTD_7),.qL(DSTDL_7),.d(ID_7),.en(LDDSTL));//[DSTDATA.NET:00026] DSTDL_7_(DSTD_7,DSTDL_7) = LD2A(ID_7,LDDSTL);

endmodule                                                                       //[DSTDATA.NET:00028] END MODULE;
