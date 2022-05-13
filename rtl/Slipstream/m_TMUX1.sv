module m_TMUX1                                                                  //[MACROS.NET:00217] MODULE TMUX1;
(                                                                               //[MACROS.NET:00217] MODULE TMUX1;

    input    IN1,                                                               //[MACROS.NET:00219] INPUTS	IN1,IN2,SEL;
    input    IN2,                                                               //[MACROS.NET:00219] INPUTS	IN1,IN2,SEL;
    input    SEL,                                                               //[MACROS.NET:00219] INPUTS	IN1,IN2,SEL;
    output    OUT                                                               //[MACROS.NET:00220] OUTPUTS	OUT;
);                                                                              //[MACROS.NET:00217] MODULE TMUX1;
                                                                                //[MACROS.NET:00221] LEVEL FUNCTION;
wire IN2L;                                                                      //[MACROS.NET:00224] IN2L_(IN2L) = N1A (IN2);
wire OUTL;                                                                      //[MACROS.NET:00225] SEL_(OUTL) = MX21LA (IN1,IN2L,SEL);

assign IN2L = ~IN2;                                                             //[MACROS.NET:00224] IN2L_(IN2L) = N1A (IN2);
assign OUTL = ~(SEL ? IN2L : IN1);                                              //[MACROS.NET:00225] SEL_(OUTL) = MX21LA (IN1,IN2L,SEL);
assign OUT = ~OUTL;                                                             //[MACROS.NET:00226] OUT_(OUT) = N1B (OUTL);

endmodule                                                                       //[MACROS.NET:00228] END MODULE;
