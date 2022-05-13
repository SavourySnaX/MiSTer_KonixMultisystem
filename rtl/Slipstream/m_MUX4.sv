module m_MUX4                                                                   //[LEGO.NET:00222] MODULE MUX4;
(                                                                               //[LEGO.NET:00222] MODULE MUX4;

    input    MasterClock,
    input    A,                                                                 //[LEGO.NET:00224] INPUTS	A,B,D_0,D_1,D_2,D_3;
    input    B,                                                                 //[LEGO.NET:00224] INPUTS	A,B,D_0,D_1,D_2,D_3;
    input    D_0,                                                               //[LEGO.NET:00224] INPUTS	A,B,D_0,D_1,D_2,D_3;
    input    D_1,                                                               //[LEGO.NET:00224] INPUTS	A,B,D_0,D_1,D_2,D_3;
    input    D_2,                                                               //[LEGO.NET:00224] INPUTS	A,B,D_0,D_1,D_2,D_3;
    input    D_3,                                                               //[LEGO.NET:00224] INPUTS	A,B,D_0,D_1,D_2,D_3;
    output    Q                                                                 //[LEGO.NET:00225] OUTPUTS	Q;
);                                                                              //[LEGO.NET:00222] MODULE MUX4;
                                                                                //[LEGO.NET:00226] LEVEL FUNCTION;
wire AL;                                                                        //[LEGO.NET:00229] AL_(AL) = N1A(A);
wire IDL_0;                                                                     //[LEGO.NET:00230] IDL_0_(IDL_0) = AO2A(A,D_1,AL,D_0);
wire IDL_1;                                                                     //[LEGO.NET:00231] IDL_1_(IDL_1) = AO2A(A,D_3,AL,D_2);
wire BL;                                                                        //[LEGO.NET:00232] BL_(BL) = N1A(B);

assign AL = ~A;                                                                 //[LEGO.NET:00229] AL_(AL) = N1A(A);
assign IDL_0 = ~((A & D_1)|(AL & D_0));                                         //[LEGO.NET:00230] IDL_0_(IDL_0) = AO2A(A,D_1,AL,D_0);
assign IDL_1 = ~((A & D_3)|(AL & D_2));                                         //[LEGO.NET:00231] IDL_1_(IDL_1) = AO2A(A,D_3,AL,D_2);
assign BL = ~B;                                                                 //[LEGO.NET:00232] BL_(BL) = N1A(B);
assign Q = ~((B & IDL_1)|(BL & IDL_0));                                         //[LEGO.NET:00233] Q_(Q) = AO2A(B,IDL_1,BL,IDL_0);

endmodule                                                                       //[LEGO.NET:00235] END MODULE;
