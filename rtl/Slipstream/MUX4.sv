/* MUX4 is a one of four data selector */

module MUX4
(
    input A,
    input B,
    input D_0,
    input D_1,
    input D_2,
    input D_3,
    output Q
);

wire AL,IDL_0,IDL_1,BL;

assign AL = ~A;
assign IDL_0 = ~((A & D_1)|(AL & D_0));
assign IDL_1 = ~((A & D_3)|(AL & D_2));
assign BL = ~B;
assign Q = ~((B & IDL_1)|(BL & IDL_0));

endmodule