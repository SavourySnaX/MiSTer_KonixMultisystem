/*****************************************************************************
QMACROS.NET

13/9/88

Macros for Qudos cells not represented in LSI Logic Library

*****************************************************************************/

                                                                                //[QMACROS.NET:00010] COMPILE;
                                                                                //[QMACROS.NET:00011] DIRECTORY MASTER;

/* twin inverter */

module m_MACINV2                                                                //[QMACROS.NET:00015] MODULE MACINV2;
(                                                                               //[QMACROS.NET:00015] MODULE MACINV2;

    input    MasterClock,
    input    I1,                                                                //[QMACROS.NET:00017] INPUTS	I1,I2;
    input    I2,                                                                //[QMACROS.NET:00017] INPUTS	I1,I2;
    output    Q1,                                                               //[QMACROS.NET:00018] OUTPUTS	Q1,Q2;
    output    Q2                                                                //[QMACROS.NET:00018] OUTPUTS	Q1,Q2;
);                                                                              //[QMACROS.NET:00015] MODULE MACINV2;

                                                                                //[QMACROS.NET:00020] LEVEL FUNCTION;
assign Q1 = ~I1;                                                                //[QMACROS.NET:00022] ONE_(Q1)=N1A(I1);
assign Q2 = ~I2;                                                                //[QMACROS.NET:00023] TWO_(Q2)=N1A(I2);
endmodule                                                                       //[QMACROS.NET:00024] END MODULE;
