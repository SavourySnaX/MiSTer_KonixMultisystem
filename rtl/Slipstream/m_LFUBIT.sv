module m_LFUBIT                                                                 //[LFU.NET:00098] MODULE LFUBIT;
(                                                                               //[LFU.NET:00098] MODULE LFUBIT;

    input    MasterClock,
    input    SRCD,                                                              //[LFU.NET:00100] INPUTS	SRCD,DSTD,LFUC_0,LFUC_1,LFUC_2,LFUC_3;
    input    DSTD,                                                              //[LFU.NET:00100] INPUTS	SRCD,DSTD,LFUC_0,LFUC_1,LFUC_2,LFUC_3;
    input    LFUC_0,                                                            //[LFU.NET:00100] INPUTS	SRCD,DSTD,LFUC_0,LFUC_1,LFUC_2,LFUC_3;
    input    LFUC_1,                                                            //[LFU.NET:00100] INPUTS	SRCD,DSTD,LFUC_0,LFUC_1,LFUC_2,LFUC_3;
    input    LFUC_2,                                                            //[LFU.NET:00100] INPUTS	SRCD,DSTD,LFUC_0,LFUC_1,LFUC_2,LFUC_3;
    input    LFUC_3,                                                            //[LFU.NET:00100] INPUTS	SRCD,DSTD,LFUC_0,LFUC_1,LFUC_2,LFUC_3;
    output    DOUT                                                              //[LFU.NET:00101] OUTPUTS	DOUT;
);                                                                              //[LFU.NET:00098] MODULE LFUBIT;
                                                                                //[LFU.NET:00102] LEVEL FUNCTION;
wire SRCDL;                                                                     //[LFU.NET:00105] DINV_(SRCDL,DSTDL) = MACINV2(SRCD,DSTD);
wire DSTDL;                                                                     //[LFU.NET:00105] DINV_(SRCDL,DSTDL) = MACINV2(SRCD,DSTD);
wire TRM_0;                                                                     //[LFU.NET:00106] LFTRM0_(TRM_0) = ND3A(SRCDL,DSTDL,LFUC_0);
wire TRM_1;                                                                     //[LFU.NET:00107] LFTRM1_(TRM_1) = ND3A(SRCDL,DSTD,LFUC_1);
wire TRM_2;                                                                     //[LFU.NET:00108] LFTRM2_(TRM_2) = ND3A(SRCD,DSTDL,LFUC_2);
wire TRM_3;                                                                     //[LFU.NET:00109] LFTRM3_(TRM_3) = ND3A(SRCD,DSTD,LFUC_3);

m_MACINV2 DINV_ (.MasterClock(MasterClock),.I1(SRCD),.I2(DSTD),.Q1(SRCDL),.Q2(DSTDL));//[LFU.NET:00105] DINV_(SRCDL,DSTDL) = MACINV2(SRCD,DSTD);
assign TRM_0 = ~(SRCDL & DSTDL & LFUC_0);                                       //[LFU.NET:00106] LFTRM0_(TRM_0) = ND3A(SRCDL,DSTDL,LFUC_0);
assign TRM_1 = ~(SRCDL & DSTD & LFUC_1);                                        //[LFU.NET:00107] LFTRM1_(TRM_1) = ND3A(SRCDL,DSTD,LFUC_1);
assign TRM_2 = ~(SRCD & DSTDL & LFUC_2);                                        //[LFU.NET:00108] LFTRM2_(TRM_2) = ND3A(SRCD,DSTDL,LFUC_2);
assign TRM_3 = ~(SRCD & DSTD & LFUC_3);                                         //[LFU.NET:00109] LFTRM3_(TRM_3) = ND3A(SRCD,DSTD,LFUC_3);
assign DOUT = ~(TRM_0 & TRM_1 & TRM_2 & TRM_3);                                 //[LFU.NET:00110] LFGEN_(DOUT) = ND4A(TRM_0,TRM_1,TRM_2,TRM_3);

endmodule                                                                       //[LFU.NET:00112] END MODULE;
