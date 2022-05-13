module FA8
(
    input CI,
    input A_7,
    input A_6,
    input A_5,
    input A_4,
    input A_3,
    input A_2,
    input A_1,
    input A_0,
    input B_7,
    input B_6,
    input B_5,
    input B_4,
    input B_3,
    input B_2,
    input B_1,
    input B_0,

    output CO,
    output SUM_7,
    output SUM_6,
    output SUM_5,
    output SUM_4,
    output SUM_3,
    output SUM_2,
    output SUM_1,
    output SUM_0
);

wire [8:0] A,B,SUM;

assign A = {1'b0,A_7,A_6,A_5,A_4,A_3,A_2,A_1,A_0};
assign B = {1'b0,B_7,B_6,B_5,B_4,B_3,B_2,B_1,B_0};

assign SUM = A + B + {8'b0000000,CI};

assign CO = SUM[8];
assign SUM_7=SUM[7];
assign SUM_6=SUM[6];
assign SUM_5=SUM[5];
assign SUM_4=SUM[4];
assign SUM_3=SUM[3];
assign SUM_2=SUM[2];
assign SUM_1=SUM[1];
assign SUM_0=SUM[0];

endmodule