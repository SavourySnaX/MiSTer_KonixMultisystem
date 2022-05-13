module m_MUX2                                                                   //[MACROS.NET:00027] MODULE MUX2;
(                                                                               //[MACROS.NET:00027] MODULE MUX2;

    input    MasterClock,
    input    IN1,                                                               //[MACROS.NET:00029] INPUTS	IN1,SEL1,IN2,SEL2;
    input    SEL1,                                                              //[MACROS.NET:00029] INPUTS	IN1,SEL1,IN2,SEL2;
    input    IN2,                                                               //[MACROS.NET:00029] INPUTS	IN1,SEL1,IN2,SEL2;
    input    SEL2,                                                              //[MACROS.NET:00029] INPUTS	IN1,SEL1,IN2,SEL2;
    output    OUT                                                               //[MACROS.NET:00030] OUTPUTS	OUT;
);                                                                              //[MACROS.NET:00027] MODULE MUX2;
                                                                                //[MACROS.NET:00031] LEVEL FUNCTION;
wire I1;                                                                        //[MACROS.NET:00034] I1_(I1) = ND2A(IN1,SEL1);
wire I2;                                                                        //[MACROS.NET:00035] I2_(I2) = ND2A(IN2,SEL2);

assign I1 = ~(IN1 & SEL1);                                                      //[MACROS.NET:00034] I1_(I1) = ND2A(IN1,SEL1);
assign I2 = ~(IN2 & SEL2);                                                      //[MACROS.NET:00035] I2_(I2) = ND2A(IN2,SEL2);
assign OUT = ~(I1 & I2);                                                        //[MACROS.NET:00036] OUT_(OUT) = ND2A(I1,I2);

endmodule                                                                       //[MACROS.NET:00038] END MODULE;
