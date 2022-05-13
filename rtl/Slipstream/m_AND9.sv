module m_AND9                                                                   //[LEGO.NET:00144] MODULE AND9;
(                                                                               //[LEGO.NET:00144] MODULE AND9;

    input    MasterClock,
    input    A_1,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_2,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_3,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_4,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_5,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_6,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_7,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_8,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    input    A_9,                                                               //[LEGO.NET:00146] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9;
    output    B                                                                 //[LEGO.NET:00147] OUTPUTS	B;
);                                                                              //[LEGO.NET:00144] MODULE AND9;
                                                                                //[LEGO.NET:00148] LEVEL FUNCTION;
wire ANDD_1;                                                                    //[LEGO.NET:00150] ANDD1_(ANDD_1) = ND4A(A_1,A_2,A_3,A_4);
wire ANDD_2;                                                                    //[LEGO.NET:00151] ANDD2_(ANDD_2) = ND5A(A_5,A_6,A_7,A_8,A_9);
assign ANDD_1 = ~(A_1 & A_2 & A_3 & A_4);                                       //[LEGO.NET:00150] ANDD1_(ANDD_1) = ND4A(A_1,A_2,A_3,A_4);
assign ANDD_2 = ~(A_5 & A_6 & A_7 & A_8 & A_9);                                 //[LEGO.NET:00151] ANDD2_(ANDD_2) = ND5A(A_5,A_6,A_7,A_8,A_9);
assign B = ~(ANDD_1 | ANDD_2);                                                  //[LEGO.NET:00152] B_(B) = NR2A(ANDD_1,ANDD_2);
endmodule                                                                       //[LEGO.NET:00153] END MODULE;
