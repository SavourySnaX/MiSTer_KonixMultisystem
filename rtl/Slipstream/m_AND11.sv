module m_AND11                                                                  //[LEGO.NET:00116] MODULE AND11;
(                                                                               //[LEGO.NET:00116] MODULE AND11;

    input    MasterClock,
    input    A_1,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_2,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_3,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_4,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_5,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_6,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_7,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_8,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_9,                                                               //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_10,                                                              //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    input    A_11,                                                              //[LEGO.NET:00118] INPUTS	A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,A_9,A_10,A_11;
    output    B                                                                 //[LEGO.NET:00119] OUTPUTS	B;
);                                                                              //[LEGO.NET:00116] MODULE AND11;
                                                                                //[LEGO.NET:00120] LEVEL FUNCTION;
wire ANDD_1;                                                                    //[LEGO.NET:00122] ANDD1_(ANDD_1) = ND4A(A_1,A_2,A_3,A_4);
wire ANDD_2;                                                                    //[LEGO.NET:00123] ANDD2_(ANDD_2) = ND4A(A_5,A_6,A_7,A_8);
wire ANDD_3;                                                                    //[LEGO.NET:00124] ANDD3_(ANDD_3) = ND3A(A_9,A_10,A_11);
assign ANDD_1 = ~(A_1 & A_2 & A_3 & A_4);                                       //[LEGO.NET:00122] ANDD1_(ANDD_1) = ND4A(A_1,A_2,A_3,A_4);
assign ANDD_2 = ~(A_5 & A_6 & A_7 & A_8);                                       //[LEGO.NET:00123] ANDD2_(ANDD_2) = ND4A(A_5,A_6,A_7,A_8);
assign ANDD_3 = ~(A_9 & A_10 & A_11);                                           //[LEGO.NET:00124] ANDD3_(ANDD_3) = ND3A(A_9,A_10,A_11);
assign B = ~(ANDD_1 | ANDD_2 | ANDD_3);                                         //[LEGO.NET:00125] B_(B) = NR3A(ANDD_1,ANDD_2,ANDD_3);
endmodule                                                                       //[LEGO.NET:00126] END MODULE;
