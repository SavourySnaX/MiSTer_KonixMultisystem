module m_JK                                                                     //[LEGO.NET:00131] MODULE JK;
(                                                                               //[LEGO.NET:00131] MODULE JK;

    input    MasterClock,
    input    J,                                                                 //[LEGO.NET:00133] INPUTS	J,K,R,CLK;
    input    K,                                                                 //[LEGO.NET:00133] INPUTS	J,K,R,CLK;
    input    R,                                                                 //[LEGO.NET:00133] INPUTS	J,K,R,CLK;
    input    CLK,                                                               //[LEGO.NET:00133] INPUTS	J,K,R,CLK;
    output    Q,                                                                //[LEGO.NET:00134] OUTPUTS	Q,QB;
    output    QB                                                                //[LEGO.NET:00134] OUTPUTS	Q,QB;
);                                                                              //[LEGO.NET:00131] MODULE JK;
                                                                                //[LEGO.NET:00135] LEVEL FUNCTION;
wire KL;                                                                        //[LEGO.NET:00137] KL_(KL) = NR2A(K,R);
assign KL = ~(K | R);                                                           //[LEGO.NET:00137] KL_(KL) = NR2A(K,R);
m_MACJKBART Q_ (.MasterClock(MasterClock),.J(J),.KL(KL),.CLK(CLK),.Q(Q),.QL(QB));//[LEGO.NET:00138] Q_(Q,QB) = MACJKBART(J,KL,CLK);
endmodule                                                                       //[LEGO.NET:00139] END MODULE;
