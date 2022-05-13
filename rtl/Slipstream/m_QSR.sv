module m_QSR                                                                    //[CLOCK.NET:00124] MODULE QSR;
(                                                                               //[CLOCK.NET:00124] MODULE QSR;

    input    MasterClock,
    input    S,                                                                 //[CLOCK.NET:00126] INPUTS	S,R;
    input    R,                                                                 //[CLOCK.NET:00126] INPUTS	S,R;
    output    Q,                                                                //[CLOCK.NET:00127] OUTPUTS	Q,QL;
    output    QL                                                                //[CLOCK.NET:00127] OUTPUTS	Q,QL;
);                                                                              //[CLOCK.NET:00124] MODULE QSR;
                                                                                //[CLOCK.NET:00128] LEVEL FUNCTION;
assign Q = ~(S & QL);                                                           //[CLOCK.NET:00130] Q_(Q) = ND2B(S,QL);
assign QL = ~(R & Q);                                                           //[CLOCK.NET:00131] QL_(QL) = ND2B(R,Q);
endmodule                                                                       //[CLOCK.NET:00132] END MODULE;
