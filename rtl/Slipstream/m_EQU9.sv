module m_EQU9                                                                   //[VCNT.NET:00192] MODULE EQU9;
(                                                                               //[VCNT.NET:00192] MODULE EQU9;

    input    MasterClock,
    input    A_0,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_1,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_2,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_3,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_4,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_5,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_6,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_7,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    A_8,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_0,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_1,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_2,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_3,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_4,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_5,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_6,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_7,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    B_8,                                                               //[VCNT.NET:00194] INPUTS	A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,B_0,B_1,B_2,B_3,B_4,B_5,B_6,B_7,B_8,
    input    EN,                                                                //[VCNT.NET:00195]    EN;
                                                                                //[VCNT.NET:00195]    EN;
    output    EQ                                                                //[VCNT.NET:00196] OUTPUTS	EQ;
);                                                                              //[VCNT.NET:00192] MODULE EQU9;
                                                                                //[VCNT.NET:00197] LEVEL FUNCTION;
wire EQ_0;                                                                      //[VCNT.NET:00200] EQ_0_(EQ_0) = ENA(A_0,B_0);
wire EQ_1;                                                                      //[VCNT.NET:00201] EQ_1_(EQ_1) = ENA(A_1,B_1);
wire EQ_2;                                                                      //[VCNT.NET:00202] EQ_2_(EQ_2) = ENA(A_2,B_2);
wire EQ_3;                                                                      //[VCNT.NET:00203] EQ_3_(EQ_3) = ENA(A_3,B_3);
wire EQ_4;                                                                      //[VCNT.NET:00204] EQ_4_(EQ_4) = ENA(A_4,B_4);
wire EQ_5;                                                                      //[VCNT.NET:00205] EQ_5_(EQ_5) = ENA(A_5,B_5);
wire EQ_6;                                                                      //[VCNT.NET:00206] EQ_6_(EQ_6) = ENA(A_6,B_6);
wire EQ_7;                                                                      //[VCNT.NET:00207] EQ_7_(EQ_7) = ENA(A_7,B_7);
wire EQ_8;                                                                      //[VCNT.NET:00208] EQ_8_(EQ_8) = ENA(A_8,B_8);

assign EQ_0 = ~(A_0 ^ B_0);                                                     //[VCNT.NET:00200] EQ_0_(EQ_0) = ENA(A_0,B_0);
assign EQ_1 = ~(A_1 ^ B_1);                                                     //[VCNT.NET:00201] EQ_1_(EQ_1) = ENA(A_1,B_1);
assign EQ_2 = ~(A_2 ^ B_2);                                                     //[VCNT.NET:00202] EQ_2_(EQ_2) = ENA(A_2,B_2);
assign EQ_3 = ~(A_3 ^ B_3);                                                     //[VCNT.NET:00203] EQ_3_(EQ_3) = ENA(A_3,B_3);
assign EQ_4 = ~(A_4 ^ B_4);                                                     //[VCNT.NET:00204] EQ_4_(EQ_4) = ENA(A_4,B_4);
assign EQ_5 = ~(A_5 ^ B_5);                                                     //[VCNT.NET:00205] EQ_5_(EQ_5) = ENA(A_5,B_5);
assign EQ_6 = ~(A_6 ^ B_6);                                                     //[VCNT.NET:00206] EQ_6_(EQ_6) = ENA(A_6,B_6);
assign EQ_7 = ~(A_7 ^ B_7);                                                     //[VCNT.NET:00207] EQ_7_(EQ_7) = ENA(A_7,B_7);
assign EQ_8 = ~(A_8 ^ B_8);                                                     //[VCNT.NET:00208] EQ_8_(EQ_8) = ENA(A_8,B_8);
m_AND10 EQ_ (.MasterClock(MasterClock),.A_1(EQ_0),.A_2(EQ_1),.A_3(EQ_2),.A_4(EQ_3),.A_5(EQ_4),.A_6(EQ_5),.A_7(EQ_6),.A_8(EQ_7),.A_9(EQ_8),.A_10(EN),.B(EQ));//[VCNT.NET:00209] EQ_(EQ) = AND10(EQ_0,EQ_1,EQ_2,EQ_3,EQ_4,EQ_5,EQ_6,EQ_7,EQ_8,EN);

endmodule                                                                       //[VCNT.NET:00211] END MODULE;
