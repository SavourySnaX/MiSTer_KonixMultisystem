module m_ADDER9                                                                 //[COUNTERS.NET:00215] MODULE ADDER9;
(                                                                               //[COUNTERS.NET:00215] MODULE ADDER9;

    input    MasterClock,
    input    X_0,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_1,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_2,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_3,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_4,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_5,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_6,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_7,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    X_8,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_0,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_1,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_2,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_3,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_4,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_5,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_6,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_7,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    input    Y_8,                                                               //[COUNTERS.NET:00217] INPUTS	X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,Y_0,Y_1,Y_2,Y_3,Y_4,Y_5,Y_6,Y_7,Y_8;
    output    Z_0,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_1,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_2,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_3,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_4,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_5,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_6,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_7,                                                              //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
    output    Z_8                                                               //[COUNTERS.NET:00218] OUTPUTS	Z_0,Z_1,Z_2,Z_3,Z_4,Z_5,Z_6,Z_7,Z_8;
);                                                                              //[COUNTERS.NET:00215] MODULE ADDER9;
                                                                                //[COUNTERS.NET:00219] LEVEL FUNCTION;
wire CY_0;                                                                      //[COUNTERS.NET:00222] Z0_(Z_0,CY_0) = ADDER1(X_0,Y_0);
wire CY_1;                                                                      //[COUNTERS.NET:00223] Z1_(Z_1,Z_2,Z_3,Z_4,CY_1) = ADDER4(X_1,X_2,X_3,X_4,Y_1,Y_2,Y_3,Y_4,CY_0);

m_ADDER1 Z0_ (.MasterClock(MasterClock),.X(X_0),.Y(Y_0),.Z(Z_0),.COUT(CY_0));   //[COUNTERS.NET:00222] Z0_(Z_0,CY_0) = ADDER1(X_0,Y_0);
m_ADDER4 Z1_ (.MasterClock(MasterClock),.X_0(X_1),.X_1(X_2),.X_2(X_3),.X_3(X_4),.Y_0(Y_1),.Y_1(Y_2),.Y_2(Y_3),.Y_3(Y_4),.CIN(CY_0),.Z_0(Z_1),.Z_1(Z_2),.Z_2(Z_3),.Z_3(Z_4),.COUT(CY_1));//[COUNTERS.NET:00223] Z1_(Z_1,Z_2,Z_3,Z_4,CY_1) = ADDER4(X_1,X_2,X_3,X_4,Y_1,Y_2,Y_3,Y_4,CY_0);
m_ADDNC4 Z2_ (.MasterClock(MasterClock),.X_0(X_5),.X_1(X_6),.X_2(X_7),.X_3(X_8),.Y_0(Y_5),.Y_1(Y_6),.Y_2(Y_7),.Y_3(Y_8),.CIN(CY_1),.Z_0(Z_5),.Z_1(Z_6),.Z_2(Z_7),.Z_3(Z_8));//[COUNTERS.NET:00224] Z2_(Z_5,Z_6,Z_7,Z_8) = ADDNC4(X_5,X_6,X_7,X_8,Y_5,Y_6,Y_7,Y_8,CY_1);

endmodule                                                                       //[COUNTERS.NET:00226] END MODULE;
