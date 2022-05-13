module m_ADDNC4                                                                 //[COUNTERS.NET:00153] MODULE ADDNC4;
(                                                                               //[COUNTERS.NET:00153] MODULE ADDNC4;

    input    MasterClock,
    input    X_0,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    X_1,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    X_2,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    X_3,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_0,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_1,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_2,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    Y_3,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    input    CIN,                                                               //[COUNTERS.NET:00155] INPUTS	X_0,X_1,X_2,X_3,Y_0,Y_1,Y_2,Y_3,CIN;
    output    Z_0,                                                              //[COUNTERS.NET:00156] OUTPUTS	Z_0,Z_1,Z_2,Z_3;
    output    Z_1,                                                              //[COUNTERS.NET:00156] OUTPUTS	Z_0,Z_1,Z_2,Z_3;
    output    Z_2,                                                              //[COUNTERS.NET:00156] OUTPUTS	Z_0,Z_1,Z_2,Z_3;
    output    Z_3                                                               //[COUNTERS.NET:00156] OUTPUTS	Z_0,Z_1,Z_2,Z_3;
);                                                                              //[COUNTERS.NET:00153] MODULE ADDNC4;
                                                                                //[COUNTERS.NET:00157] LEVEL FUNCTION;
wire NO_0;                                                                      //[COUNTERS.NET:00160] NO_0_(NO_0) = NR2A(X_0,Y_0);
wire NO_1;                                                                      //[COUNTERS.NET:00161] NO_1_(NO_1) = NR2A(X_1,Y_1);
wire NO_2;                                                                      //[COUNTERS.NET:00162] NO_2_(NO_2) = NR2A(X_2,Y_2);
wire NO_3;                                                                      //[COUNTERS.NET:00163] NO_3_(NO_3) = NR2A(X_3,Y_3);
wire NAN_0;                                                                     //[COUNTERS.NET:00164] NAN_0_(NAN_0) = ND2A(X_0,Y_0);
wire NAN_1;                                                                     //[COUNTERS.NET:00165] NAN_1_(NAN_1) = ND2A(X_1,Y_1);
wire NAN_2;                                                                     //[COUNTERS.NET:00166] NAN_2_(NAN_2) = ND2A(X_2,Y_2);
wire NAN_3;                                                                     //[COUNTERS.NET:00167] NAN_3_(NAN_3) = ND2A(X_3,Y_3);
wire NANL_0;                                                                    //[COUNTERS.NET:00168] NANL_0_(NANL_0) = N1A(NAN_0);
wire NANL_1;                                                                    //[COUNTERS.NET:00169] NANL_1_(NANL_1) = N1A(NAN_1);
wire NANL_2;                                                                    //[COUNTERS.NET:00170] NANL_2_(NANL_2) = N1A(NAN_2);
wire NANL_3;                                                                    //[COUNTERS.NET:00171] NANL_3_(NANL_3) = N1A(NAN_3);
wire NOL_0;                                                                     //[COUNTERS.NET:00172] NOL_0_(NOL_0) = N1A(NO_0);
wire NOL_1;                                                                     //[COUNTERS.NET:00173] NOL_1_(NOL_1) = N1A(NO_1);
wire NOL_2;                                                                     //[COUNTERS.NET:00174] NOL_2_(NOL_2) = N1A(NO_2);
wire NOL_3;                                                                     //[COUNTERS.NET:00175] NOL_3_(NOL_3) = N1A(NO_3);
wire Z1;                                                                        //[COUNTERS.NET:00177] Z1_(Z1) = NR2A(NO_0,NANL_0);
wire Z2_0;                                                                      //[COUNTERS.NET:00180] Z2_0_(Z2_0) = NR2A(CIN,NANL_0);
wire Z2_1;                                                                      //[COUNTERS.NET:00181] Z2_1_(Z2_1) = NR2A(NO_1,NANL_1);
wire Z2_2;                                                                      //[COUNTERS.NET:00182] Z2_2_(Z2_2) = NR2A(Z2_0,NO_0);
wire Z3_0;                                                                      //[COUNTERS.NET:00185] Z3_0_(Z3_0) = NR3A(CIN,NANL_0,NANL_1);
wire Z3_1;                                                                      //[COUNTERS.NET:00186] Z3_1_(Z3_1) = NR2A(NOL_0,NANL_1);
wire Z3_2;                                                                      //[COUNTERS.NET:00187] Z3_2_(Z3_2) = NR2A(NO_2,NANL_2);
wire Z3_3;                                                                      //[COUNTERS.NET:00188] Z3_3_(Z3_3) = NR3A(Z3_0,Z3_1,NO_1);
wire Z4_0;                                                                      //[COUNTERS.NET:00191] Z4_0_(Z4_0) = NR4A(CIN,NANL_0,NANL_1,NANL_2);
wire Z4_1;                                                                      //[COUNTERS.NET:00192] Z4_1_(Z4_1) = NR3A(NANL_1,NANL_2,NOL_0);
wire Z4_2;                                                                      //[COUNTERS.NET:00193] Z4_2_(Z4_2) = NR2A(NANL_2,NOL_1);
wire Z4_3;                                                                      //[COUNTERS.NET:00194] Z4_3_(Z4_3) = NR2A(NO_3,NANL_3);
wire Z4_4;                                                                      //[COUNTERS.NET:00195] Z4_4_(Z4_4) = NR4A(Z4_0,Z4_1,Z4_2,NO_2);

assign NO_0 = ~(X_0 | Y_0);                                                     //[COUNTERS.NET:00160] NO_0_(NO_0) = NR2A(X_0,Y_0);
assign NO_1 = ~(X_1 | Y_1);                                                     //[COUNTERS.NET:00161] NO_1_(NO_1) = NR2A(X_1,Y_1);
assign NO_2 = ~(X_2 | Y_2);                                                     //[COUNTERS.NET:00162] NO_2_(NO_2) = NR2A(X_2,Y_2);
assign NO_3 = ~(X_3 | Y_3);                                                     //[COUNTERS.NET:00163] NO_3_(NO_3) = NR2A(X_3,Y_3);
assign NAN_0 = ~(X_0 & Y_0);                                                    //[COUNTERS.NET:00164] NAN_0_(NAN_0) = ND2A(X_0,Y_0);
assign NAN_1 = ~(X_1 & Y_1);                                                    //[COUNTERS.NET:00165] NAN_1_(NAN_1) = ND2A(X_1,Y_1);
assign NAN_2 = ~(X_2 & Y_2);                                                    //[COUNTERS.NET:00166] NAN_2_(NAN_2) = ND2A(X_2,Y_2);
assign NAN_3 = ~(X_3 & Y_3);                                                    //[COUNTERS.NET:00167] NAN_3_(NAN_3) = ND2A(X_3,Y_3);
assign NANL_0 = ~NAN_0;                                                         //[COUNTERS.NET:00168] NANL_0_(NANL_0) = N1A(NAN_0);
assign NANL_1 = ~NAN_1;                                                         //[COUNTERS.NET:00169] NANL_1_(NANL_1) = N1A(NAN_1);
assign NANL_2 = ~NAN_2;                                                         //[COUNTERS.NET:00170] NANL_2_(NANL_2) = N1A(NAN_2);
assign NANL_3 = ~NAN_3;                                                         //[COUNTERS.NET:00171] NANL_3_(NANL_3) = N1A(NAN_3);
assign NOL_0 = ~NO_0;                                                           //[COUNTERS.NET:00172] NOL_0_(NOL_0) = N1A(NO_0);
assign NOL_1 = ~NO_1;                                                           //[COUNTERS.NET:00173] NOL_1_(NOL_1) = N1A(NO_1);
assign NOL_2 = ~NO_2;                                                           //[COUNTERS.NET:00174] NOL_2_(NOL_2) = N1A(NO_2);
assign NOL_3 = ~NO_3;                                                           //[COUNTERS.NET:00175] NOL_3_(NOL_3) = N1A(NO_3);

assign Z1 = ~(NO_0 | NANL_0);                                                   //[COUNTERS.NET:00177] Z1_(Z1) = NR2A(NO_0,NANL_0);
assign Z_0 = CIN ^ Z1;                                                          //[COUNTERS.NET:00178] Z_0_(Z_0) = EOA(CIN,Z1);

assign Z2_0 = ~(CIN | NANL_0);                                                  //[COUNTERS.NET:00180] Z2_0_(Z2_0) = NR2A(CIN,NANL_0);
assign Z2_1 = ~(NO_1 | NANL_1);                                                 //[COUNTERS.NET:00181] Z2_1_(Z2_1) = NR2A(NO_1,NANL_1);
assign Z2_2 = ~(Z2_0 | NO_0);                                                   //[COUNTERS.NET:00182] Z2_2_(Z2_2) = NR2A(Z2_0,NO_0);
assign Z_1 = Z2_1 ^ Z2_2;                                                       //[COUNTERS.NET:00183] Z_1_(Z_1) = EOA(Z2_1,Z2_2);

assign Z3_0 = ~(CIN | NANL_0 | NANL_1);                                         //[COUNTERS.NET:00185] Z3_0_(Z3_0) = NR3A(CIN,NANL_0,NANL_1);
assign Z3_1 = ~(NOL_0 | NANL_1);                                                //[COUNTERS.NET:00186] Z3_1_(Z3_1) = NR2A(NOL_0,NANL_1);
assign Z3_2 = ~(NO_2 | NANL_2);                                                 //[COUNTERS.NET:00187] Z3_2_(Z3_2) = NR2A(NO_2,NANL_2);
assign Z3_3 = ~(Z3_0 | Z3_1 | NO_1);                                            //[COUNTERS.NET:00188] Z3_3_(Z3_3) = NR3A(Z3_0,Z3_1,NO_1);
assign Z_2 = Z3_2 ^ Z3_3;                                                       //[COUNTERS.NET:00189] Z_2_(Z_2) = EOA(Z3_2,Z3_3);

assign Z4_0 = ~(CIN | NANL_0 | NANL_1 | NANL_2);                                //[COUNTERS.NET:00191] Z4_0_(Z4_0) = NR4A(CIN,NANL_0,NANL_1,NANL_2);
assign Z4_1 = ~(NANL_1 | NANL_2 | NOL_0);                                       //[COUNTERS.NET:00192] Z4_1_(Z4_1) = NR3A(NANL_1,NANL_2,NOL_0);
assign Z4_2 = ~(NANL_2 | NOL_1);                                                //[COUNTERS.NET:00193] Z4_2_(Z4_2) = NR2A(NANL_2,NOL_1);
assign Z4_3 = ~(NO_3 | NANL_3);                                                 //[COUNTERS.NET:00194] Z4_3_(Z4_3) = NR2A(NO_3,NANL_3);
assign Z4_4 = ~(Z4_0 | Z4_1 | Z4_2 | NO_2);                                     //[COUNTERS.NET:00195] Z4_4_(Z4_4) = NR4A(Z4_0,Z4_1,Z4_2,NO_2);
assign Z_3 = Z4_3 ^ Z4_4;                                                       //[COUNTERS.NET:00196] Z_3_(Z_3) = EOA(Z4_3,Z4_4);

endmodule                                                                       //[COUNTERS.NET:00198] END MODULE;
