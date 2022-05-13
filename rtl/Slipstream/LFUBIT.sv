
module LFUBIT
(
    input SRCD,
    input DSTD,
    input LFUC_0,
    input LFUC_1,
    input LFUC_2,
    input LFUC_3,
    output DOUT
);

wire SRCDL,DSTDL;
wire TRM_0,TRM_1,TRM_2,TRM_3;

assign SRCDL = ~SRCD;
assign DSTDL = ~DSTD;
assign TRM_0 = ~(SRCDL & DSTDL & LFUC_0);
assign TRM_1 = ~(SRCDL & DSTD  & LFUC_1);
assign TRM_2 = ~(SRCD  & DSTDL & LFUC_2);
assign TRM_3 = ~(SRCD  & DSTD  & LFUC_3);
assign DOUT = ~(TRM_0 & TRM_1 & TRM_2 & TRM_3);

endmodule