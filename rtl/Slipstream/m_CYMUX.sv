module m_CYMUX                                                                  //[ALU.NET:00377] MODULE CYMUX;
(                                                                               //[ALU.NET:00377] MODULE CYMUX;

    input    MasterClock,
    input    A,                                                                 //[ALU.NET:00379] INPUTS	A,B,C,SELL_0,SELL_1;
    input    B,                                                                 //[ALU.NET:00379] INPUTS	A,B,C,SELL_0,SELL_1;
    input    C,                                                                 //[ALU.NET:00379] INPUTS	A,B,C,SELL_0,SELL_1;
    input    SELL_0,                                                            //[ALU.NET:00379] INPUTS	A,B,C,SELL_0,SELL_1;
    input    SELL_1,                                                            //[ALU.NET:00379] INPUTS	A,B,C,SELL_0,SELL_1;
    output    Z                                                                 //[ALU.NET:00380] OUTPUTS	Z;
);                                                                              //[ALU.NET:00377] MODULE CYMUX;
                                                                                //[ALU.NET:00381] LEVEL FUNCTION;
wire D;                                                                         //[ALU.NET:00384] D_(D) = NR2A(A,SELL_0);
wire G;                                                                         //[ALU.NET:00385] E_(E) = NR2A(B,G);
wire E;                                                                         //[ALU.NET:00385] E_(E) = NR2A(B,G);
wire F;                                                                         //[ALU.NET:00386] F_(F) = NR2A(C,SELL_1);

assign D = ~(A | SELL_0);                                                       //[ALU.NET:00384] D_(D) = NR2A(A,SELL_0);
assign E = ~(B | G);                                                            //[ALU.NET:00385] E_(E) = NR2A(B,G);
assign F = ~(C | SELL_1);                                                       //[ALU.NET:00386] F_(F) = NR2A(C,SELL_1);
assign G = ~(SELL_0 & SELL_1);                                                  //[ALU.NET:00387] G_(G) = ND2A(SELL_0,SELL_1);
assign Z = ~(D | E | F);                                                        //[ALU.NET:00388] Z_(Z) = NR3A(D,E,F);
endmodule                                                                       //[ALU.NET:00389] END MODULE;
