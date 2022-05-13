module m_XNOR                                                                   //[LEGO.NET:00088] MODULE XNOR;
(                                                                               //[LEGO.NET:00088] MODULE XNOR;

    input    MasterClock,
    input    A,                                                                 //[LEGO.NET:00090] INPUTS	A,B;
    input    B,                                                                 //[LEGO.NET:00090] INPUTS	A,B;
    output    C                                                                 //[LEGO.NET:00091] OUTPUTS	C;
);                                                                              //[LEGO.NET:00088] MODULE XNOR;
                                                                                //[LEGO.NET:00092] LEVEL FUNCTION;
wire AL;                                                                        //[LEGO.NET:00095] AL_(AL,BL) = MACINV2(A,B);
wire BL;                                                                        //[LEGO.NET:00095] AL_(AL,BL) = MACINV2(A,B);

m_MACINV2 AL_ (.MasterClock(MasterClock),.I1(A),.I2(B),.Q1(AL),.Q2(BL));        //[LEGO.NET:00095] AL_(AL,BL) = MACINV2(A,B);
assign C = ~((A & BL)|(AL & B));                                                //[LEGO.NET:00096] C_(C) = AO2A(A,BL,AL,B);

endmodule                                                                       //[LEGO.NET:00098] END MODULE;
