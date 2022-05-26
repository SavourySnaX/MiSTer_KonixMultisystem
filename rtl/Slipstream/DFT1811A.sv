
module DFT1811A
(
    input         clk,
    input [3:0]   S,
    input [15:0]  A,
    input [15:0]  B,
    input         CIL,
    input         M,
    output        X,
    output        Y,
    output        CO,
    output [15:0] Z,
    output        AEB
);

reg [16:0] t /* verilator public */;

wire [16:0] Ax /* verilator public */;
wire [16:0] Bx /* verilator public */;
wire [16:0] CI /* verilator public */;

wire c0,c1,c2,c3;

    _74181 G0 (.A(A[3:0]),.B(B[3:0]),.S(S),.Ci(CIL),.M(M),.F(t[3:0]),.Co(c0));
    _74181 G1 (.A(A[7:4]),.B(B[7:4]),.S(S),.Ci(c0),.M(M),.F(t[7:4]),.Co(c1));
    _74181 G2 (.A(A[11:8]),.B(B[11:8]),.S(S),.Ci(c1),.M(M),.F(t[11:8]),.Co(c2));
    _74181 G3 (.A(A[15:12]),.B(B[15:12]),.S(S),.Ci(c2),.M(M),.F(t[15:12]),.Co(CO));

    assign Z = t;

assign X=0; // Never used
assign Y=0; // Never used
assign AEB=A==B;

endmodule