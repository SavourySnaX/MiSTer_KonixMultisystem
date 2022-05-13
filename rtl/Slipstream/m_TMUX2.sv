module m_TMUX2                                                                  //[MACROS.NET:00233] MODULE TMUX2;
(                                                                               //[MACROS.NET:00233] MODULE TMUX2;

    input    IN1,                                                               //[MACROS.NET:00235] INPUTS	IN1,IN2,SEL;
    input    IN2,                                                               //[MACROS.NET:00235] INPUTS	IN1,IN2,SEL;
    input    SEL,                                                               //[MACROS.NET:00235] INPUTS	IN1,IN2,SEL;
    output    OUT                                                               //[MACROS.NET:00236] OUTPUTS	OUT;
);                                                                              //[MACROS.NET:00233] MODULE TMUX2;
                                                                                //[MACROS.NET:00237] LEVEL FUNCTION;
wire IN2L;                                                                      //[MACROS.NET:00240] IN2L_(IN2L) = N1A (IN2);

assign IN2L = ~IN2;                                                             //[MACROS.NET:00240] IN2L_(IN2L) = N1A (IN2);
assign OUT = ~(SEL ? IN2L : IN1);                                               //[MACROS.NET:00241] SEL_(OUT) = MX21LB (IN1,IN2L,SEL);

endmodule                                                                       //[MACROS.NET:00243] END MODULE;
