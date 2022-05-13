
module FA4C
(
    input CI,
    input A_3,
    input A_2,
    input A_1,
    input A_0,
    input B_3,
    input B_2,
    input B_1,
    input B_0,

    output CO,
    output SUM_3,
    output SUM_2,
    output SUM_1,
    output SUM_0
);

wire [4:0] A,B,SUM;

assign A = {1'b0,A_3,A_2,A_1,A_0};
assign B = {1'b0,B_3,B_2,B_1,B_0};

assign SUM = A + B + {4'b0000,CI};

assign CO = SUM[4];
assign SUM_3=SUM[3];
assign SUM_2=SUM[2];
assign SUM_1=SUM[1];
assign SUM_0=SUM[0];

endmodule