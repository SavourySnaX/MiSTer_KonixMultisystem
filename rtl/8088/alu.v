
// myOps
// 0000 PassA   S=(A)
// 0001 NotA    S=(~A)
// 0010 IncA    S=(A++)
// 0011 DecA    S=(A--)
// 0100 IncA*2  S=(A+2)
// 0101 DecA*2  S=(A-2)
// 0110 NegA    S=(0-A)

// (ALU)
// 1000 Add     S=(A + B)
// 1001 Or      S=(A | B)
// 1010 Adc     S=(A + B + carryIn)
// 1011 Sbb     S=(A - B - carryIn)
// 1100 And     S=(A & B)
// 1101 Sub     S=(A - B)
// 1110 Xor     S=(A ^ B)
// 1111 Cmp     S=(A - B)

module alu
  (
      input CLKx4,
      input [15:0] A,
      input [15:0] B,
      input [3:0] Operation,
      input byteWord,
      input carryIn,
      output reg [15:0] S,

      output reg F_Overflow,
      output reg F_Neg,
      output reg F_Zero,
      output reg F_Aux,
      output reg F_Parity,
      output reg F_Carry
  );

//Generate adder (allows us to extract multiple carries)

reg carry0,carry4,carry7,carry8,carry15,carry16;
wire [15:0] Ai,Bi,resultAdder;

wire [3:0] OperationL;
wire [15:0] OperationPassA;
wire [15:0] OperationNotA;
wire [15:0] OperationIncA;
wire [15:0] OperationDecA;
wire [15:0] OperationIncA2;
wire [15:0] OperationDecA2;
wire [15:0] OperationNeg;
wire [15:0] OperationAdd;
wire [15:0] OperationOr;
wire [15:0] OperationAdc;
wire [15:0] OperationSbb;
wire [15:0] OperationAnd;
wire [15:0] OperationSub;
wire [15:0] OperationXor;
wire [15:0] OperationCmp;

wire op2Inv,opHasCarry;
wire clearOC;

assign OperationL = ~Operation;
assign OperationPassA   = {16{OperationL[3] & OperationL[2] & OperationL[1] & OperationL[0] }};
assign OperationNotA    = {16{OperationL[3] & OperationL[2] & OperationL[1] & Operation [0] }};
assign OperationIncA    = {16{OperationL[3] & OperationL[2] & Operation [1] & OperationL[0] }};
assign OperationDecA    = {16{OperationL[3] & OperationL[2] & Operation [1] & Operation [0] }};
assign OperationIncA2   = {16{OperationL[3] & Operation [2] & OperationL[1] & OperationL[0] }};
assign OperationDecA2   = {16{OperationL[3] & Operation [2] & OperationL[1] & Operation [0] }};
assign OperationNeg     = {16{OperationL[3] & Operation [2] & Operation [1] & OperationL[0] }};

assign OperationAdd     = {16{Operation [3] & OperationL[2] & OperationL[1] & OperationL[0] }};
assign OperationOr      = {16{Operation [3] & OperationL[2] & OperationL[1] & Operation [0] }};
assign OperationAdc     = {16{Operation [3] & OperationL[2] & Operation [1] & OperationL[0] }};
assign OperationSbb     = {16{Operation [3] & OperationL[2] & Operation [1] & Operation [0] }};
assign OperationAnd     = {16{Operation [3] & Operation [2] & OperationL[1] & OperationL[0] }};
assign OperationSub     = {16{Operation [3] & Operation [2] & OperationL[1] & Operation [0] }};
assign OperationXor     = {16{Operation [3] & Operation [2] & Operation [1] & OperationL[0] }};
assign OperationCmp     = {16{Operation [3] & Operation [2] & Operation [1] & Operation [0] }};

assign Ai = 
            ( ( A)  & OperationPassA )  |
            ( ( A)  & (OperationIncA | OperationDecA | OperationIncA2 | OperationDecA2) )  |
            ( ( 0)  & (OperationNeg | OperationNotA) ) |
            ( ( A)  & (OperationAdd | OperationOr | OperationAdc | OperationSbb | OperationAnd | OperationSub | OperationXor | OperationCmp) );

assign Bi = 
            ( ( 0)  & OperationPassA )  |
            ( ( 1)  & OperationIncA )  |
            ( (~1)  & OperationDecA )  |
            ( ( 2)  & OperationIncA2 )  |
            ( (~2)  & OperationDecA2 )  |
            ( (~A)  & (OperationNeg | OperationNotA)) |
            ( ( B)  & (OperationAdd | OperationOr | OperationAdc | OperationAnd | OperationXor)) |
            ( (~B)  & (OperationSbb | OperationSub | OperationCmp) );

assign op2Inv = (OperationDecA[0] | OperationDecA2[0] | OperationSbb[0] | OperationSub[0] | OperationCmp[0] | OperationNeg[0] );
assign opHasCarry = OperationAdc[0] | OperationSbb[0];
assign clearOC = OperationAnd[0] | OperationOr[0] | OperationXor[0];

always @(posedge CLKx4)
begin

  carry0 <= opHasCarry ? (op2Inv ? ~carryIn : carryIn ) : (op2Inv ? 1 : 0);

  carry4 <= ({1'b0,Ai[3:0]} + {1'b0,Bi[3:0]} + {4'h0,carry0})>>4;
  carry7 <= ({1'b0,Ai[6:0]} + {1'b0,Bi[6:0]} + {6'h0,carry0})>>7;
  carry8 <= ({1'b0,Ai[7:0]} + {1'b0,Bi[7:0]} + {7'h0,carry0})>>8;
  carry15 <= ({1'b0,Ai[14:0]} + {1'b0,Bi[14:0]} + {14'h0,carry0})>>15;
  carry16 <= ({1'b0,Ai[15:0]} + {1'b0,Bi[15:0]} + {15'h0,carry0})>>16;

  S <= ((Ai[15:0] + Bi[15:0] + {15'h0,carry0}) & {16{~clearOC}})                |
      ((Ai | Bi)   & {16{ clearOC}} & OperationOr)  |
      ((Ai & Bi)   & {16{ clearOC}} & OperationAnd) |
      ((Ai ^ Bi)   & {16{ clearOC}} & OperationXor);

  F_Overflow <= clearOC ? 0 : byteWord ? carry16 ^ carry15 : carry8 ^ carry7;
  F_Neg <= byteWord ? S[15] : S[7];
  F_Zero <= byteWord ? (S[15:0] == 0) : (S[7:0] == 0);
  F_Aux <= carry4 ^ op2Inv;
  F_Parity <= ~(S[0] ^ S[1] ^ S[2] ^ S[3] ^ S[4] ^ S[5] ^ S[6] ^ S[7]);
  F_Carry <= clearOC ? 0 : byteWord ? carry16 ^ op2Inv : carry8 ^ op2Inv;

end

endmodule
