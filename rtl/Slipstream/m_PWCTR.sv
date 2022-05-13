module m_PWCTR                                                                  //[PWM.NET:00020] MODULE PWCTR;
(                                                                               //[PWM.NET:00020] MODULE PWCTR;

    input    MasterClock,
    input    D_0,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    D_1,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    D_2,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    D_3,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    D_4,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    D_5,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    D_6,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    LDL,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    input    XCK,                                                               //[PWM.NET:00022] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,LDL,XCK;
    output    PW                                                                //[PWM.NET:00023] OUTPUTS	PW;
);                                                                              //[PWM.NET:00020] MODULE PWCTR;
                                                                                //[PWM.NET:00024] LEVEL FUNCTION;
wire ENAB;                                                                      //[PWM.NET:00027]    LDL,ENAB,XCK);
wire QL_0;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire QL_1;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire QL_2;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire QL_3;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire QL_4;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire QL_5;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire QL_6;                                                                      //[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
wire LD;                                                                        //[PWM.NET:00028] PWG_(PWGL) = NR2A(LD,ENAB);/* with glitches */
wire PWGL;                                                                      //[PWM.NET:00028] PWG_(PWGL) = NR2A(LD,ENAB);/* with glitches */
wire PWL;                                                                       //[PWM.NET:00031] PW_(PWL,PW) = FD1A(PWGL,XCK); /* without glitches */
m_CTR7 PWCTR_ (.MasterClock(MasterClock),.D_0(D_0),.D_1(D_1),.D_2(D_2),.D_3(D_3),.D_4(D_4),.D_5(D_5),.D_6(D_6),.LDL(LDL),.ENAB(ENAB),.XCK(XCK),.QL_0(QL_0),.QL_1(QL_1),.QL_2(QL_2),.QL_3(QL_3),.QL_4(QL_4),.QL_5(QL_5),.QL_6(QL_6));//[PWM.NET:00026] PWCTR_(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6) = CTR7(D_0,D_1,D_2,D_3,D_4,D_5,D_6,
                                                                                //[PWM.NET:00027]    LDL,ENAB,XCK);
assign PWGL = ~(LD | ENAB);                                                     //[PWM.NET:00028] PWG_(PWGL) = NR2A(LD,ENAB);/* with glitches */

assign LD = ~LDL;                                                               //[PWM.NET:00030] LD_(LD) = N1A(LDL);
FD1A PW__inst (.MasterClock(MasterClock),.q(PWL),.qL(PW),.d(PWGL),.clk(XCK));   //[PWM.NET:00031] PW_(PWL,PW) = FD1A(PWGL,XCK); /* without glitches */

m_MACNAND7 ENAB_ (.MasterClock(MasterClock),.A(QL_0),.B(QL_1),.C(QL_2),.D(QL_3),.E(QL_4),.F(QL_5),.G(QL_6),.Q(ENAB));//[PWM.NET:00033] ENAB_(ENAB) = MACNAND7(QL_0,QL_1,QL_2,QL_3,QL_4,QL_5,QL_6);

endmodule                                                                       //[PWM.NET:00035] END MODULE;
