module m_SR                                                                     //[LEGO.NET:00237] MODULE SR;
(                                                                               //[LEGO.NET:00237] MODULE SR;

    input    MasterClock,
    input    S,                                                                 //[LEGO.NET:00239] INPUTS	S,R;
    input    R,                                                                 //[LEGO.NET:00239] INPUTS	S,R;
    output    reg Q,                                                                //[LEGO.NET:00240] OUTPUTS	Q,QL;
    output    reg QL                                                                //[LEGO.NET:00240] OUTPUTS	Q,QL;
);                                                                              //[LEGO.NET:00237] MODULE SR;
                                                                                //[LEGO.NET:00241] LEVEL FUNCTION;
always @(posedge MasterClock)
begin
	Q <= ~(S & QL);                                                           //[LEGO.NET:00243] Q_(Q) = ND2A(S,QL);
	QL <= ~(R & Q);                                                           //[LEGO.NET:00244] QL_(QL) = ND2A(R,Q);
end
endmodule                                                                       //[LEGO.NET:00245] END MODULE;
