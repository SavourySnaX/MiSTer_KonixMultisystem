                                                                                //[STEPREG.NET:00001] COMPILE;
                                                                                //[STEPREG.NET:00002] DIRECTORY MASTER;
/****************************************************************************
stepreg
10/10/88

Address update step value register

****************************************************************************/


module m_STEPREG                                                                //[STEPREG.NET:00012] MODULE STEPREG;
(                                                                               //[STEPREG.NET:00012] MODULE STEPREG;

    input    MasterClock,
    input    ID_0,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_1,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_2,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_3,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_4,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_5,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_6,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    ID_7,                                                              //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    LDMODL,                                                            //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    input    LDSTPL,                                                            //[STEPREG.NET:00014] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,LDMODL,LDSTPL;
    output    STEP_0,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_1,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_2,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_3,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_4,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_5,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_6,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEP_7,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    STEPM1,                                                           //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
    output    YFRAC                                                             //[STEPREG.NET:00015] OUTPUTS	STEP_0,STEP_1,STEP_2,STEP_3,STEP_4,STEP_5,STEP_6,STEP_7,STEPM1,YFRAC;
);                                                                              //[STEPREG.NET:00012] MODULE STEPREG;
                                                                                //[STEPREG.NET:00016] LEVEL FUNCTION;
wire STEPL_0;                                                                   //[STEPREG.NET:00019] STPDL_0_(STEP_0,STEPL_0) = LD2A(ID_0,LDSTPL);
wire STEPL_1;                                                                   //[STEPREG.NET:00020] STPDL_1_(STEP_1,STEPL_1) = LD2A(ID_1,LDSTPL);
wire STEPL_2;                                                                   //[STEPREG.NET:00021] STPDL_2_(STEP_2,STEPL_2) = LD2A(ID_2,LDSTPL);
wire STEPL_3;                                                                   //[STEPREG.NET:00022] STPDL_3_(STEP_3,STEPL_3) = LD2A(ID_3,LDSTPL);
wire STEPL_4;                                                                   //[STEPREG.NET:00023] STPDL_4_(STEP_4,STEPL_4) = LD2A(ID_4,LDSTPL);
wire STEPL_5;                                                                   //[STEPREG.NET:00024] STPDL_5_(STEP_5,STEPL_5) = LD2A(ID_5,LDSTPL);
wire STEPL_6;                                                                   //[STEPREG.NET:00025] STPDL_6_(STEP_6,STEPL_6) = LD2A(ID_6,LDSTPL);
wire STEPL_7;                                                                   //[STEPREG.NET:00026] STPDL_7_(STEP_7,STEPL_7) = LD2A(ID_7,LDSTPL);
wire STEPM1L;                                                                   //[STEPREG.NET:00027] STPM1L_(STEPM1,STEPM1L) = LD2A(ID_0,LDMODL);
wire YFRACL;                                                                    //[STEPREG.NET:00029] YFRL_(YFRAC,YFRACL) = LD2A(ID_4,LDMODL);

LD2A STPDL_0__inst (.MasterClock(MasterClock),.q(STEP_0),.qL(STEPL_0),.d(ID_0),.en(LDSTPL));//[STEPREG.NET:00019] STPDL_0_(STEP_0,STEPL_0) = LD2A(ID_0,LDSTPL);
LD2A STPDL_1__inst (.MasterClock(MasterClock),.q(STEP_1),.qL(STEPL_1),.d(ID_1),.en(LDSTPL));//[STEPREG.NET:00020] STPDL_1_(STEP_1,STEPL_1) = LD2A(ID_1,LDSTPL);
LD2A STPDL_2__inst (.MasterClock(MasterClock),.q(STEP_2),.qL(STEPL_2),.d(ID_2),.en(LDSTPL));//[STEPREG.NET:00021] STPDL_2_(STEP_2,STEPL_2) = LD2A(ID_2,LDSTPL);
LD2A STPDL_3__inst (.MasterClock(MasterClock),.q(STEP_3),.qL(STEPL_3),.d(ID_3),.en(LDSTPL));//[STEPREG.NET:00022] STPDL_3_(STEP_3,STEPL_3) = LD2A(ID_3,LDSTPL);
LD2A STPDL_4__inst (.MasterClock(MasterClock),.q(STEP_4),.qL(STEPL_4),.d(ID_4),.en(LDSTPL));//[STEPREG.NET:00023] STPDL_4_(STEP_4,STEPL_4) = LD2A(ID_4,LDSTPL);
LD2A STPDL_5__inst (.MasterClock(MasterClock),.q(STEP_5),.qL(STEPL_5),.d(ID_5),.en(LDSTPL));//[STEPREG.NET:00024] STPDL_5_(STEP_5,STEPL_5) = LD2A(ID_5,LDSTPL);
LD2A STPDL_6__inst (.MasterClock(MasterClock),.q(STEP_6),.qL(STEPL_6),.d(ID_6),.en(LDSTPL));//[STEPREG.NET:00025] STPDL_6_(STEP_6,STEPL_6) = LD2A(ID_6,LDSTPL);
LD2A STPDL_7__inst (.MasterClock(MasterClock),.q(STEP_7),.qL(STEPL_7),.d(ID_7),.en(LDSTPL));//[STEPREG.NET:00026] STPDL_7_(STEP_7,STEPL_7) = LD2A(ID_7,LDSTPL);
LD2A STPM1L__inst (.MasterClock(MasterClock),.q(STEPM1),.qL(STEPM1L),.d(ID_0),.en(LDMODL));//[STEPREG.NET:00027] STPM1L_(STEPM1,STEPM1L) = LD2A(ID_0,LDMODL);

LD2A YFRL__inst (.MasterClock(MasterClock),.q(YFRAC),.qL(YFRACL),.d(ID_4),.en(LDMODL));//[STEPREG.NET:00029] YFRL_(YFRAC,YFRACL) = LD2A(ID_4,LDMODL);

endmodule                                                                       //[STEPREG.NET:00031] END MODULE;
