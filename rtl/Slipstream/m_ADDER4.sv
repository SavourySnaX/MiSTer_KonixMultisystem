module m_ADDER4                                                                 //[COUNTERS.NET:00099] MODULE ADDER4;
(                                                                               //[COUNTERS.NET:00099] MODULE ADDER4;

    input    MasterClock,
    input    X_0,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    X_1,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    X_2,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    X_3,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_0,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_1,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_2,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_3,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    CIN,                                                               //[COUNTERS.NET:00101] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    output    Z_0,                                                              //[COUNTERS.NET:00102] OUTPUTS	Z_0,Z_1,Z_2,Z_3,COUT;
    output    Z_1,                                                              //[COUNTERS.NET:00102] OUTPUTS	Z_0,Z_1,Z_2,Z_3,COUT;
    output    Z_2,                                                              //[COUNTERS.NET:00102] OUTPUTS	Z_0,Z_1,Z_2,Z_3,COUT;
    output    Z_3,                                                              //[COUNTERS.NET:00102] OUTPUTS	Z_0,Z_1,Z_2,Z_3,COUT;
    output    COUT                                                              //[COUNTERS.NET:00102] OUTPUTS	Z_0,Z_1,Z_2,Z_3,COUT;
);                                                                              //[COUNTERS.NET:00099] MODULE ADDER4;
                                                                                //[COUNTERS.NET:00103] LEVEL FUNCTION;
wire NO_0;                                                                      //[COUNTERS.NET:00106] NO_0_(NO_0) = NR2A(X_0,Y_0);
wire NO_1;                                                                      //[COUNTERS.NET:00107] NO_1_(NO_1) = NR2A(X_1,Y_1);
wire NO_2;                                                                      //[COUNTERS.NET:00108] NO_2_(NO_2) = NR2A(X_2,Y_2);
wire NO_3;                                                                      //[COUNTERS.NET:00109] NO_3_(NO_3) = NR2A(X_3,Y_3);
wire NAN_0;                                                                     //[COUNTERS.NET:00110] NAN_0_(NAN_0) = ND2A(X_0,Y_0);
wire NAN_1;                                                                     //[COUNTERS.NET:00111] NAN_1_(NAN_1) = ND2A(X_1,Y_1);
wire NAN_2;                                                                     //[COUNTERS.NET:00112] NAN_2_(NAN_2) = ND2A(X_2,Y_2);
wire NAN_3;                                                                     //[COUNTERS.NET:00113] NAN_3_(NAN_3) = ND2A(X_3,Y_3);
wire NANL_0;                                                                    //[COUNTERS.NET:00114] NANL_0_(NANL_0) = N1B(NAN_0);
wire NANL_1;                                                                    //[COUNTERS.NET:00115] NANL_1_(NANL_1) = N1B(NAN_1);
wire NANL_2;                                                                    //[COUNTERS.NET:00116] NANL_2_(NANL_2) = N1B(NAN_2);
wire NANL_3;                                                                    //[COUNTERS.NET:00117] NANL_3_(NANL_3) = N1B(NAN_3);
wire NOL_0;                                                                     //[COUNTERS.NET:00118] NOL_0_(NOL_0) = N1A(NO_0);
wire NOL_1;                                                                     //[COUNTERS.NET:00119] NOL_1_(NOL_1) = N1A(NO_1);
wire NOL_2;                                                                     //[COUNTERS.NET:00120] NOL_2_(NOL_2) = N1A(NO_2);
wire NOL_3;                                                                     //[COUNTERS.NET:00121] NOL_3_(NOL_3) = N1A(NO_3);
wire Z1;                                                                        //[COUNTERS.NET:00123] Z1_(Z1) = NR2A(NO_0,NANL_0);
wire Z2_0;                                                                      //[COUNTERS.NET:00126] Z2_0_(Z2_0) = NR2A(CIN,NANL_0);
wire Z2_1;                                                                      //[COUNTERS.NET:00127] Z2_1_(Z2_1) = NR2A(NO_1,NANL_1);
wire Z2_2;                                                                      //[COUNTERS.NET:00128] Z2_2_(Z2_2) = NR2A(Z2_0,NO_0);
wire Z3_0;                                                                      //[COUNTERS.NET:00131] Z3_0_(Z3_0) = NR3A(CIN,NANL_0,NANL_1);
wire Z3_1;                                                                      //[COUNTERS.NET:00132] Z3_1_(Z3_1) = NR2A(NOL_0,NANL_1);
wire Z3_2;                                                                      //[COUNTERS.NET:00133] Z3_2_(Z3_2) = NR2A(NO_2,NANL_2);
wire Z3_3;                                                                      //[COUNTERS.NET:00134] Z3_3_(Z3_3) = NR3A(Z3_0,Z3_1,NO_1);
wire Z4_0;                                                                      //[COUNTERS.NET:00137] Z4_0_(Z4_0) = NR4A(CIN,NANL_0,NANL_1,NANL_2);
wire Z4_1;                                                                      //[COUNTERS.NET:00138] Z4_1_(Z4_1) = NR3A(NANL_1,NANL_2,NOL_0);
wire Z4_2;                                                                      //[COUNTERS.NET:00139] Z4_2_(Z4_2) = NR2A(NANL_2,NOL_1);
wire Z4_3;                                                                      //[COUNTERS.NET:00140] Z4_3_(Z4_3) = NR2A(NO_3,NANL_3);
wire Z4_4;                                                                      //[COUNTERS.NET:00141] Z4_4_(Z4_4) = NR4A(Z4_0,Z4_1,Z4_2,NO_2);
wire Z5_0;                                                                      //[COUNTERS.NET:00144] Z5_0_(Z5_0) = NR5A(CIN,NANL_0,NANL_1,NANL_2,NANL_3);
wire Z5_1;                                                                      //[COUNTERS.NET:00145] Z5_1_(Z5_1) = NR4A(NANL_1,NANL_2,NANL_3,NOL_0);
wire Z5_2;                                                                      //[COUNTERS.NET:00146] Z5_2_(Z5_2) = NR3A(NANL_2,NANL_3,NOL_1);
wire Z5_3;                                                                      //[COUNTERS.NET:00147] Z5_3_(Z5_3) = NR2A(NANL_3,NOL_2);

assign NO_0 = ~(X_0 | Y_0);                                                     //[COUNTERS.NET:00106] NO_0_(NO_0) = NR2A(X_0,Y_0);
assign NO_1 = ~(X_1 | Y_1);                                                     //[COUNTERS.NET:00107] NO_1_(NO_1) = NR2A(X_1,Y_1);
assign NO_2 = ~(X_2 | Y_2);                                                     //[COUNTERS.NET:00108] NO_2_(NO_2) = NR2A(X_2,Y_2);
assign NO_3 = ~(X_3 | Y_3);                                                     //[COUNTERS.NET:00109] NO_3_(NO_3) = NR2A(X_3,Y_3);
assign NAN_0 = ~(X_0 & Y_0);                                                    //[COUNTERS.NET:00110] NAN_0_(NAN_0) = ND2A(X_0,Y_0);
assign NAN_1 = ~(X_1 & Y_1);                                                    //[COUNTERS.NET:00111] NAN_1_(NAN_1) = ND2A(X_1,Y_1);
assign NAN_2 = ~(X_2 & Y_2);                                                    //[COUNTERS.NET:00112] NAN_2_(NAN_2) = ND2A(X_2,Y_2);
assign NAN_3 = ~(X_3 & Y_3);                                                    //[COUNTERS.NET:00113] NAN_3_(NAN_3) = ND2A(X_3,Y_3);
assign NANL_0 = ~NAN_0;                                                         //[COUNTERS.NET:00114] NANL_0_(NANL_0) = N1B(NAN_0);
assign NANL_1 = ~NAN_1;                                                         //[COUNTERS.NET:00115] NANL_1_(NANL_1) = N1B(NAN_1);
assign NANL_2 = ~NAN_2;                                                         //[COUNTERS.NET:00116] NANL_2_(NANL_2) = N1B(NAN_2);
assign NANL_3 = ~NAN_3;                                                         //[COUNTERS.NET:00117] NANL_3_(NANL_3) = N1B(NAN_3);
assign NOL_0 = ~NO_0;                                                           //[COUNTERS.NET:00118] NOL_0_(NOL_0) = N1A(NO_0);
assign NOL_1 = ~NO_1;                                                           //[COUNTERS.NET:00119] NOL_1_(NOL_1) = N1A(NO_1);
assign NOL_2 = ~NO_2;                                                           //[COUNTERS.NET:00120] NOL_2_(NOL_2) = N1A(NO_2);
assign NOL_3 = ~NO_3;                                                           //[COUNTERS.NET:00121] NOL_3_(NOL_3) = N1A(NO_3);

assign Z1 = ~(NO_0 | NANL_0);                                                   //[COUNTERS.NET:00123] Z1_(Z1) = NR2A(NO_0,NANL_0);
assign Z_0 = CIN ^ Z1;                                                          //[COUNTERS.NET:00124] Z_0_(Z_0) = EOA(CIN,Z1);

assign Z2_0 = ~(CIN | NANL_0);                                                  //[COUNTERS.NET:00126] Z2_0_(Z2_0) = NR2A(CIN,NANL_0);
assign Z2_1 = ~(NO_1 | NANL_1);                                                 //[COUNTERS.NET:00127] Z2_1_(Z2_1) = NR2A(NO_1,NANL_1);
assign Z2_2 = ~(Z2_0 | NO_0);                                                   //[COUNTERS.NET:00128] Z2_2_(Z2_2) = NR2A(Z2_0,NO_0);
assign Z_1 = Z2_1 ^ Z2_2;                                                       //[COUNTERS.NET:00129] Z_1_(Z_1) = EOA(Z2_1,Z2_2);

assign Z3_0 = ~(CIN | NANL_0 | NANL_1);                                         //[COUNTERS.NET:00131] Z3_0_(Z3_0) = NR3A(CIN,NANL_0,NANL_1);
assign Z3_1 = ~(NOL_0 | NANL_1);                                                //[COUNTERS.NET:00132] Z3_1_(Z3_1) = NR2A(NOL_0,NANL_1);
assign Z3_2 = ~(NO_2 | NANL_2);                                                 //[COUNTERS.NET:00133] Z3_2_(Z3_2) = NR2A(NO_2,NANL_2);
assign Z3_3 = ~(Z3_0 | Z3_1 | NO_1);                                            //[COUNTERS.NET:00134] Z3_3_(Z3_3) = NR3A(Z3_0,Z3_1,NO_1);
assign Z_2 = Z3_2 ^ Z3_3;                                                       //[COUNTERS.NET:00135] Z_2_(Z_2) = EOA(Z3_2,Z3_3);

assign Z4_0 = ~(CIN | NANL_0 | NANL_1 | NANL_2);                                //[COUNTERS.NET:00137] Z4_0_(Z4_0) = NR4A(CIN,NANL_0,NANL_1,NANL_2);
assign Z4_1 = ~(NANL_1 | NANL_2 | NOL_0);                                       //[COUNTERS.NET:00138] Z4_1_(Z4_1) = NR3A(NANL_1,NANL_2,NOL_0);
assign Z4_2 = ~(NANL_2 | NOL_1);                                                //[COUNTERS.NET:00139] Z4_2_(Z4_2) = NR2A(NANL_2,NOL_1);
assign Z4_3 = ~(NO_3 | NANL_3);                                                 //[COUNTERS.NET:00140] Z4_3_(Z4_3) = NR2A(NO_3,NANL_3);
assign Z4_4 = ~(Z4_0 | Z4_1 | Z4_2 | NO_2);                                     //[COUNTERS.NET:00141] Z4_4_(Z4_4) = NR4A(Z4_0,Z4_1,Z4_2,NO_2);
assign Z_3 = Z4_3 ^ Z4_4;                                                       //[COUNTERS.NET:00142] Z_3_(Z_3) = EOA(Z4_3,Z4_4);

assign Z5_0 = ~(CIN | NANL_0 | NANL_1 | NANL_2 | NANL_3);                       //[COUNTERS.NET:00144] Z5_0_(Z5_0) = NR5A(CIN,NANL_0,NANL_1,NANL_2,NANL_3);
assign Z5_1 = ~(NANL_1 | NANL_2 | NANL_3 | NOL_0);                              //[COUNTERS.NET:00145] Z5_1_(Z5_1) = NR4A(NANL_1,NANL_2,NANL_3,NOL_0);
assign Z5_2 = ~(NANL_2 | NANL_3 | NOL_1);                                       //[COUNTERS.NET:00146] Z5_2_(Z5_2) = NR3A(NANL_2,NANL_3,NOL_1);
assign Z5_3 = ~(NANL_3 | NOL_2);                                                //[COUNTERS.NET:00147] Z5_3_(Z5_3) = NR2A(NANL_3,NOL_2);
assign COUT = ~(Z5_0 | Z5_1 | Z5_2 | Z5_3 | NO_3);                              //[COUNTERS.NET:00148] COUT_(COUT) = NR5A(Z5_0,Z5_1,Z5_2,Z5_3,NO_3);

endmodule                                                                       //[COUNTERS.NET:00150] END MODULE;
