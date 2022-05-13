                                                                                //[PC.NET:00001] COMPILE;
                                                                                //[PC.NET:00002] DIRECTORY MASTER;

module m_PC                                                                     //[PC.NET:00004] MODULE PC;
(                                                                               //[PC.NET:00004] MODULE PC;

    input    MasterClock,
    input    DDB_0,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_1,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_2,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_3,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_4,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_5,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_6,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    DDB_7,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    RUN,                                                               //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    RESETL,                                                            //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    XCK,                                                               //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    PCRDL,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    PCWRL,                                                             //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    HA_1,                                                              //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    HA_2,                                                              //[PC.NET:00006] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,RUN,RESETL,XCK,PCRDL,PCWRL,HA_1,HA_2,
    input    HA_3,                                                              //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    input    HA_4,                                                              //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    input    HA_5,                                                              //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    input    HA_6,                                                              //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    input    HA_7,                                                              //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    input    HA_8,                                                              //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    input    HPCWRL,                                                            //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
                                                                                //[PC.NET:00007]    HA_3,HA_4,HA_5,HA_6,HA_7,HA_8,HPCWRL;
    output    outD_0, enD_0,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_1, enD_1,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_2, enD_2,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_3, enD_3,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_4, enD_4,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_5, enD_5,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_6, enD_6,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    outD_7, enD_7,                                                    //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_0,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_1,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_2,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_3,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_4,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_5,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_6,                                                             //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
    output    PC_7                                                              //[PC.NET:00009]    PC_7;
);                                                                              //[PC.NET:00004] MODULE PC;
                                                                                //[PC.NET:00010] LEVEL FUNCTION;
wire RUNL;                                                                      //[PC.NET:00013] MUX_0_(MUX_0) = MUX(HA_1,RUNL,DDB_0,RUN);
wire MUX_0;                                                                     //[PC.NET:00013] MUX_0_(MUX_0) = MUX(HA_1,RUNL,DDB_0,RUN);
wire MUX_1;                                                                     //[PC.NET:00014] MUX_1_(MUX_1) = MUX(HA_2,RUNL,DDB_1,RUN);
wire MUX_2;                                                                     //[PC.NET:00015] MUX_2_(MUX_2) = MUX(HA_3,RUNL,DDB_2,RUN);
wire MUX_3;                                                                     //[PC.NET:00016] MUX_3_(MUX_3) = MUX(HA_4,RUNL,DDB_3,RUN);
wire MUX_4;                                                                     //[PC.NET:00017] MUX_4_(MUX_4) = MUX(HA_5,RUNL,DDB_4,RUN);
wire MUX_5;                                                                     //[PC.NET:00018] MUX_5_(MUX_5) = MUX(HA_6,RUNL,DDB_5,RUN);
wire MUX_6;                                                                     //[PC.NET:00019] MUX_6_(MUX_6) = MUX(HA_7,RUNL,DDB_6,RUN);
wire MUX_7;                                                                     //[PC.NET:00020] MUX_7_(MUX_7) = MUX(HA_8,RUNL,DDB_7,RUN);
wire WRCNTL;                                                                    //[PC.NET:00023]    WRCNTL,RUN,XCK,RESETL);
wire PCL_0;                                                                     //[PC.NET:00021] PCOUNTER_(PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,
wire PCL_1;                                                                     //[PC.NET:00021] PCOUNTER_(PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,
wire PCL_2;                                                                     //[PC.NET:00021] PCOUNTER_(PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,
wire PCL_3;                                                                     //[PC.NET:00021] PCOUNTER_(PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,
wire PCL_4;                                                                     //[PC.NET:00021] PCOUNTER_(PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,
wire PCL_5;                                                                     //[PC.NET:00022]    PCL_5,PCL_6,PCL_7) = CTR8(MUX_0,MUX_1,MUX_2,MUX_3,MUX_4,MUX_5,MUX_6,MUX_7,
wire PCL_6;                                                                     //[PC.NET:00022]    PCL_5,PCL_6,PCL_7) = CTR8(MUX_0,MUX_1,MUX_2,MUX_3,MUX_4,MUX_5,MUX_6,MUX_7,
wire PCL_7;                                                                     //[PC.NET:00022]    PCL_5,PCL_6,PCL_7) = CTR8(MUX_0,MUX_1,MUX_2,MUX_3,MUX_4,MUX_5,MUX_6,MUX_7,
wire PCRD;                                                                      //[PC.NET:00024] PCRD_0_(D_0) = BTS5B(PCL_0,PCRD);
wire drv0_outD_0;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_0;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_1;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_1;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_2;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_2;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_3;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_3;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_4;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_4;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_5;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_5;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_6;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_6;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_outD_7;                                                               //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,
wire drv0_enD_7;                                                                //[PC.NET:00008] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,

m_MUX MUX_0_ (.MasterClock(MasterClock),.A(HA_1),.B(RUNL),.C(DDB_0),.D(RUN),.Z(MUX_0));//[PC.NET:00013] MUX_0_(MUX_0) = MUX(HA_1,RUNL,DDB_0,RUN);
m_MUX MUX_1_ (.MasterClock(MasterClock),.A(HA_2),.B(RUNL),.C(DDB_1),.D(RUN),.Z(MUX_1));//[PC.NET:00014] MUX_1_(MUX_1) = MUX(HA_2,RUNL,DDB_1,RUN);
m_MUX MUX_2_ (.MasterClock(MasterClock),.A(HA_3),.B(RUNL),.C(DDB_2),.D(RUN),.Z(MUX_2));//[PC.NET:00015] MUX_2_(MUX_2) = MUX(HA_3,RUNL,DDB_2,RUN);
m_MUX MUX_3_ (.MasterClock(MasterClock),.A(HA_4),.B(RUNL),.C(DDB_3),.D(RUN),.Z(MUX_3));//[PC.NET:00016] MUX_3_(MUX_3) = MUX(HA_4,RUNL,DDB_3,RUN);
m_MUX MUX_4_ (.MasterClock(MasterClock),.A(HA_5),.B(RUNL),.C(DDB_4),.D(RUN),.Z(MUX_4));//[PC.NET:00017] MUX_4_(MUX_4) = MUX(HA_5,RUNL,DDB_4,RUN);
m_MUX MUX_5_ (.MasterClock(MasterClock),.A(HA_6),.B(RUNL),.C(DDB_5),.D(RUN),.Z(MUX_5));//[PC.NET:00018] MUX_5_(MUX_5) = MUX(HA_6,RUNL,DDB_5,RUN);
m_MUX MUX_6_ (.MasterClock(MasterClock),.A(HA_7),.B(RUNL),.C(DDB_6),.D(RUN),.Z(MUX_6));//[PC.NET:00019] MUX_6_(MUX_6) = MUX(HA_7,RUNL,DDB_6,RUN);
m_MUX MUX_7_ (.MasterClock(MasterClock),.A(HA_8),.B(RUNL),.C(DDB_7),.D(RUN),.Z(MUX_7));//[PC.NET:00020] MUX_7_(MUX_7) = MUX(HA_8,RUNL,DDB_7,RUN);
m_CTR8 PCOUNTER_ (.MasterClock(MasterClock),.D_0(MUX_0),.D_1(MUX_1),.D_2(MUX_2),.D_3(MUX_3),.D_4(MUX_4),.D_5(MUX_5),.D_6(MUX_6),.D_7(MUX_7),.LDL(WRCNTL),.ENAB(RUN),.CK(XCK),.RESETL(RESETL),.Q_0(PC_0),.Q_1(PC_1),.Q_2(PC_2),.Q_3(PC_3),.Q_4(PC_4),.Q_5(PC_5),.Q_6(PC_6),.Q_7(PC_7),.QL_0(PCL_0),.QL_1(PCL_1),.QL_2(PCL_2),.QL_3(PCL_3),.QL_4(PCL_4),.QL_5(PCL_5),.QL_6(PCL_6),.QL_7(PCL_7));//[PC.NET:00021] PCOUNTER_(PC_0,PC_1,PC_2,PC_3,PC_4,PC_5,PC_6,PC_7,PCL_0,PCL_1,PCL_2,PCL_3,PCL_4,
                                                                                //[PC.NET:00022]    PCL_5,PCL_6,PCL_7) = CTR8(MUX_0,MUX_1,MUX_2,MUX_3,MUX_4,MUX_5,MUX_6,MUX_7,
                                                                                //[PC.NET:00023]    WRCNTL,RUN,XCK,RESETL);
assign drv0_outD_0 = ~PCL_0; assign drv0_enD_0 = PCRD;                          //[PC.NET:00024] PCRD_0_(D_0) = BTS5B(PCL_0,PCRD);
assign drv0_outD_1 = ~PCL_1; assign drv0_enD_1 = PCRD;                          //[PC.NET:00025] PCRD_1_(D_1) = BTS5B(PCL_1,PCRD);
assign drv0_outD_2 = ~PCL_2; assign drv0_enD_2 = PCRD;                          //[PC.NET:00026] PCRD_2_(D_2) = BTS5B(PCL_2,PCRD);
assign drv0_outD_3 = ~PCL_3; assign drv0_enD_3 = PCRD;                          //[PC.NET:00027] PCRD_3_(D_3) = BTS5B(PCL_3,PCRD);
assign drv0_outD_4 = ~PCL_4; assign drv0_enD_4 = PCRD;                          //[PC.NET:00028] PCRD_4_(D_4) = BTS5B(PCL_4,PCRD);
assign drv0_outD_5 = ~PCL_5; assign drv0_enD_5 = PCRD;                          //[PC.NET:00029] PCRD_5_(D_5) = BTS5B(PCL_5,PCRD);
assign drv0_outD_6 = ~PCL_6; assign drv0_enD_6 = PCRD;                          //[PC.NET:00030] PCRD_6_(D_6) = BTS5B(PCL_6,PCRD);
assign drv0_outD_7 = ~PCL_7; assign drv0_enD_7 = PCRD;                          //[PC.NET:00031] PCRD_7_(D_7) = BTS5B(PCL_7,PCRD);
assign PCRD = ~PCRDL;                                                           //[PC.NET:00032] PCRD_(PCRD) = N1B(PCRDL);
assign RUNL = ~RUN;                                                             //[PC.NET:00033] RUNL_(RUNL) = N1B(RUN);
assign WRCNTL = PCWRL & HPCWRL;                                                 //[PC.NET:00034] WRCNTL_(WRCNTL) = AND2A(PCWRL,HPCWRL);
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
endmodule                                                                       //[PC.NET:00035] END MODULE;
