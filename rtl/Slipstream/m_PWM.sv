                                                                                //[PWM.NET:00001] COMPILE;
                                                                                //[PWM.NET:00002] DIRECTORY MASTER;

module m_PWM                                                                    //[PWM.NET:00004] MODULE PWM;
(                                                                               //[PWM.NET:00004] MODULE PWM;

    input    MasterClock,
    input    DACWRL,                                                            //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    XCK,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_2,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_3,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_4,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_5,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_6,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_7,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_8,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_9,                                                               //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_10,                                                              //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_11,                                                              //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_12,                                                              //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_13,                                                              //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_14,                                                              //[PWM.NET:00006] INPUTS	DACWRL,XCK,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,
    input    D_15,                                                              //[PWM.NET:00007]    D_15;
                                                                                //[PWM.NET:00007]    D_15;
    output    PW_1,                                                             //[PWM.NET:00008] OUTPUTS	PW_1,PW_2;
    output    PW_2                                                              //[PWM.NET:00008] OUTPUTS	PW_1,PW_2;
    ,output    [13:0] DAC
);                                                                              //[PWM.NET:00004] MODULE PWM;
                                                                                //[PWM.NET:00009] LEVEL FUNCTION;
wire DL_15;                                                                     //[PWM.NET:00016] PWMCTR2_(PW_2) = PWCTR(D_9,D_10,D_11,D_12,D_13,D_14,DL_15,DACWRL,XCK);

/* Note that dac[15] is inverted before going to the counter ....
   effectively makes the DAC respond to 2's complement numbers	*/

m_PWCTR PWMCTR1_ (.MasterClock(MasterClock),.D_0(D_2),.D_1(D_3),.D_2(D_4),.D_3(D_5),.D_4(D_6),.D_5(D_7),.D_6(D_8),.LDL(DACWRL),.XCK(XCK),.PW(PW_1));//[PWM.NET:00015] PWMCTR1_(PW_1) = PWCTR(D_2,D_3,D_4,D_5,D_6,D_7,D_8,DACWRL,XCK);
m_PWCTR PWMCTR2_ (.MasterClock(MasterClock),.D_0(D_9),.D_1(D_10),.D_2(D_11),.D_3(D_12),.D_4(D_13),.D_5(D_14),.D_6(DL_15),.LDL(DACWRL),.XCK(XCK),.PW(PW_2));//[PWM.NET:00016] PWMCTR2_(PW_2) = PWCTR(D_9,D_10,D_11,D_12,D_13,D_14,DL_15,DACWRL,XCK);
assign DL_15 = ~D_15;                                                           //[PWM.NET:00017] DL_15_(DL_15) = N1A(D_15);

reg [13:0] iDAC;

always @(posedge MasterClock)
begin
    if (~DACWRL)
    begin
        iDAC[13] <= DL_15;
        iDAC[12] <= D_14;
        iDAC[11] <= D_13;
        iDAC[10] <= D_12;
        iDAC[9] <= D_11;
        iDAC[8] <= D_10;
        iDAC[7] <= D_9;
        iDAC[6] <= D_8;
        iDAC[5] <= D_7;
        iDAC[4] <= D_6;
        iDAC[3] <= D_5;
        iDAC[2] <= D_4;
        iDAC[1] <= D_3;
        iDAC[0] <= D_2;
    end
end

assign DAC = iDAC;

endmodule                                                                       //[PWM.NET:00018] END MODULE;
