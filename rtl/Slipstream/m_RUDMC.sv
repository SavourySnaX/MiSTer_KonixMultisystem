module m_RUDMC                                                                  //[INTRUDE.NET:00174] MODULE RUDMC;
(                                                                               //[INTRUDE.NET:00174] MODULE RUDMC;

    input    MasterClock,
    input    WR,                                                                //[INTRUDE.NET:00176] INPUTS	WR,CLK,RESETL,RD,TRUDY;
    input    CLK,                                                               //[INTRUDE.NET:00176] INPUTS	WR,CLK,RESETL,RD,TRUDY;
    input    RESETL,                                                            //[INTRUDE.NET:00176] INPUTS	WR,CLK,RESETL,RD,TRUDY;
    input    RD,                                                                //[INTRUDE.NET:00176] INPUTS	WR,CLK,RESETL,RD,TRUDY;
    input    TRUDY,                                                             //[INTRUDE.NET:00176] INPUTS	WR,CLK,RESETL,RD,TRUDY;
    output    I_0,                                                              //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    I_1,                                                              //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    I_2,                                                              //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    I_3,                                                              //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    IL_0,                                                             //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    IL_1,                                                             //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    IL_2,                                                             //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
    output    IL_3                                                              //[INTRUDE.NET:00177] OUTPUTS	I_0,I_1,I_2,I_3,IL_0,IL_1,IL_2,IL_3;
);                                                                              //[INTRUDE.NET:00174] MODULE RUDMC;
                                                                                //[INTRUDE.NET:00178] LEVEL FUNCTION;
wire X_0;                                                                       //[INTRUDE.NET:00181] I_0_(I_0,IL_0) = FD2A(X_0,CLK,RESETL);
wire X_1;                                                                       //[INTRUDE.NET:00182] I_1_(I_1,IL_1) = FD2A(X_1,CLK,RESETL);
wire X_2;                                                                       //[INTRUDE.NET:00183] I_2_(I_2,IL_2) = FD2A(X_2,CLK,RESETL);
wire X_3;                                                                       //[INTRUDE.NET:00184] I_3_(I_3,IL_3) = FD2A(X_3,CLK,RESETL);
wire TER_1;                                                                     //[INTRUDE.NET:00186] TER_1_(TER_1) = ND4A(IL_3,IL_1,IL_0,RD);
wire TER_2;                                                                     //[INTRUDE.NET:00187] TER_2_(TER_2) = ND4A(IL_3,I_2,IL_0,RD);
wire TER_3;                                                                     //[INTRUDE.NET:00188] TER_3_(TER_3) = ND3A(IL_3,I_0,RD);
wire TER_4;                                                                     //[INTRUDE.NET:00189] TER_4_(TER_4) = ND3A(IL_2,IL_0,WR);
wire TER_5;                                                                     //[INTRUDE.NET:00190] TER_5_(TER_5) = ND3A(I_3,I_0,WR);
wire RDL;                                                                       //[INTRUDE.NET:00192] TER_6_(TER_6) = ND4A(IL_3,IL_1,I_0,RDL);
wire TER_6;                                                                     //[INTRUDE.NET:00192] TER_6_(TER_6) = ND4A(IL_3,IL_1,I_0,RDL);
wire TRUDYL;                                                                    //[INTRUDE.NET:00193] TER_7_(TER_7) = ND4A(IL_3,IL_2,I_1,TRUDYL);
wire TER_7;                                                                     //[INTRUDE.NET:00193] TER_7_(TER_7) = ND4A(IL_3,IL_2,I_1,TRUDYL);
wire TER_8;                                                                     //[INTRUDE.NET:00194] TER_8_(TER_8) = ND3A(I_2,I_1,IL_0);
wire TER_9;                                                                     //[INTRUDE.NET:00195] TER_9_(TER_9) = ND5A(IL_3,I_2,I_1,I_0,RD);
wire WRL;                                                                       //[INTRUDE.NET:00196] TER_10_(TER_10) = ND5A(I_3,IL_2,IL_1,I_0,WRL);
wire TER_10;                                                                    //[INTRUDE.NET:00196] TER_10_(TER_10) = ND5A(I_3,IL_2,IL_1,I_0,WRL);
wire TER_17;                                                                    //[INTRUDE.NET:00197] TER_17_(TER_17) = ND3A(I_3,I_1,IL_0);
wire TER_11;                                                                    //[INTRUDE.NET:00199] TER_11_(TER_11) = ND5A(IL_3,IL_2,I_1,IL_0,TRUDY);
wire TER_12;                                                                    //[INTRUDE.NET:00200] TER_12_(TER_12) = ND3A(IL_3,I_2,IL_1);
wire TER_13;                                                                    //[INTRUDE.NET:00201] TER_13_(TER_13) = ND5A(I_3,IL_2,I_1,I_0,WRL);
wire TER_14;                                                                    //[INTRUDE.NET:00202] TER_14_(TER_14) = ND3A(I_3,I_2,TRUDYL);
wire TER_15;                                                                    //[INTRUDE.NET:00204] TER_15_(TER_15) = ND4A(IL_2,IL_1,IL_0,WR);
wire TER_16;                                                                    //[INTRUDE.NET:00205] TER_16_(TER_16) = ND2A(I_3,IL_2);

FD2A I_0__inst (.MasterClock(MasterClock),.q(I_0),.qL(IL_0),.d(X_0),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00181] I_0_(I_0,IL_0) = FD2A(X_0,CLK,RESETL);
FD2A I_1__inst (.MasterClock(MasterClock),.q(I_1),.qL(IL_1),.d(X_1),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00182] I_1_(I_1,IL_1) = FD2A(X_1,CLK,RESETL);
FD2A I_2__inst (.MasterClock(MasterClock),.q(I_2),.qL(IL_2),.d(X_2),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00183] I_2_(I_2,IL_2) = FD2A(X_2,CLK,RESETL);
FD2A I_3__inst (.MasterClock(MasterClock),.q(I_3),.qL(IL_3),.d(X_3),.clk(CLK),.rL(RESETL));//[INTRUDE.NET:00184] I_3_(I_3,IL_3) = FD2A(X_3,CLK,RESETL);

assign TER_1 = ~(IL_3 & IL_1 & IL_0 & RD);                                      //[INTRUDE.NET:00186] TER_1_(TER_1) = ND4A(IL_3,IL_1,IL_0,RD);
assign TER_2 = ~(IL_3 & I_2 & IL_0 & RD);                                       //[INTRUDE.NET:00187] TER_2_(TER_2) = ND4A(IL_3,I_2,IL_0,RD);
assign TER_3 = ~(IL_3 & I_0 & RD);                                              //[INTRUDE.NET:00188] TER_3_(TER_3) = ND3A(IL_3,I_0,RD);
assign TER_4 = ~(IL_2 & IL_0 & WR);                                             //[INTRUDE.NET:00189] TER_4_(TER_4) = ND3A(IL_2,IL_0,WR);
assign TER_5 = ~(I_3 & I_0 & WR);                                               //[INTRUDE.NET:00190] TER_5_(TER_5) = ND3A(I_3,I_0,WR);

assign TER_6 = ~(IL_3 & IL_1 & I_0 & RDL);                                      //[INTRUDE.NET:00192] TER_6_(TER_6) = ND4A(IL_3,IL_1,I_0,RDL);
assign TER_7 = ~(IL_3 & IL_2 & I_1 & TRUDYL);                                   //[INTRUDE.NET:00193] TER_7_(TER_7) = ND4A(IL_3,IL_2,I_1,TRUDYL);
assign TER_8 = ~(I_2 & I_1 & IL_0);                                             //[INTRUDE.NET:00194] TER_8_(TER_8) = ND3A(I_2,I_1,IL_0);
assign TER_9 = ~(IL_3 & I_2 & I_1 & I_0 & RD);                                  //[INTRUDE.NET:00195] TER_9_(TER_9) = ND5A(IL_3,I_2,I_1,I_0,RD);
assign TER_10 = ~(I_3 & IL_2 & IL_1 & I_0 & WRL);                               //[INTRUDE.NET:00196] TER_10_(TER_10) = ND5A(I_3,IL_2,IL_1,I_0,WRL);
assign TER_17 = ~(I_3 & I_1 & IL_0);                                            //[INTRUDE.NET:00197] TER_17_(TER_17) = ND3A(I_3,I_1,IL_0);

assign TER_11 = ~(IL_3 & IL_2 & I_1 & IL_0 & TRUDY);                            //[INTRUDE.NET:00199] TER_11_(TER_11) = ND5A(IL_3,IL_2,I_1,IL_0,TRUDY);
assign TER_12 = ~(IL_3 & I_2 & IL_1);                                           //[INTRUDE.NET:00200] TER_12_(TER_12) = ND3A(IL_3,I_2,IL_1);
assign TER_13 = ~(I_3 & IL_2 & I_1 & I_0 & WRL);                                //[INTRUDE.NET:00201] TER_13_(TER_13) = ND5A(I_3,IL_2,I_1,I_0,WRL);
assign TER_14 = ~(I_3 & I_2 & TRUDYL);                                          //[INTRUDE.NET:00202] TER_14_(TER_14) = ND3A(I_3,I_2,TRUDYL);

assign TER_15 = ~(IL_2 & IL_1 & IL_0 & WR);                                     //[INTRUDE.NET:00204] TER_15_(TER_15) = ND4A(IL_2,IL_1,IL_0,WR);
assign TER_16 = ~(I_3 & IL_2);                                                  //[INTRUDE.NET:00205] TER_16_(TER_16) = ND2A(I_3,IL_2);


assign X_0 = ~(TER_1 & TER_2 & TER_3 & TER_4 & TER_5);                          //[INTRUDE.NET:00208] X_0_(X_0) = ND5A(TER_1,TER_2,TER_3,TER_4,TER_5);
assign X_1 = ~(TER_6 & TER_7 & TER_8 & TER_9 & TER_10 & TER_17);                //[INTRUDE.NET:00209] X_1_(X_1) = ND6A(TER_6,TER_7,TER_8,TER_9,TER_10,TER_17);
assign X_2 = ~(TER_11 & TER_12 & TER_13 & TER_14 & TER_8 & TER_9);              //[INTRUDE.NET:00210] X_2_(X_2) = ND6A(TER_11,TER_12,TER_13,TER_14,TER_8,TER_9);
assign X_3 = ~(TER_14 & TER_15 & TER_16);                                       //[INTRUDE.NET:00211] X_3_(X_3) = ND3A(TER_14,TER_15,TER_16);


assign RDL = ~RD;                                                               //[INTRUDE.NET:00214] RDL_(RDL) = N1A(RD);
assign WRL = ~WR;                                                               //[INTRUDE.NET:00215] WRL_(WRL) = N1A(WR);
assign TRUDYL = ~TRUDY;                                                         //[INTRUDE.NET:00216] TRUDYL_(TRUDYL) = N1A(TRUDY);

endmodule                                                                       //[INTRUDE.NET:00218] END MODULE;
