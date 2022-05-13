
// Shifter 
// 000 ROL
// 001 ROR
// 010 RCL
// 011 RCR
// 100 SHL/SAL
// 101 SHR
// ----(SAL undocumented) SHL mirror
// 111 SAR

module shifter
  (
      input CLKx4,
      input [15:0] A,
      input [2:0] Operation,
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

wire [15:0] result16;
wire [7:0] result8;

wire o,c;

wire [2:0] OperationL;
wire [15:0] OperationRol;
wire [15:0] OperationRor;
wire [15:0] OperationRcl;
wire [15:0] OperationRcr;
wire [15:0] OperationShl;
wire [15:0] OperationShr;
wire [15:0] OperationSar;

assign OperationL = ~Operation;

assign OperationRol     = {16{OperationL[2] & OperationL[1] & OperationL[0] }};
assign OperationRor     = {16{OperationL[2] & OperationL[1] & Operation [0] }};
assign OperationRcl     = {16{OperationL[2] & Operation [1] & OperationL[0] }};
assign OperationRcr     = {16{OperationL[2] & Operation [1] & Operation [0] }};
assign OperationShl     = {16{Operation [2] & /*OperationL[1] &*/ OperationL[0] }}; //4 & 6 are aliased
assign OperationShr     = {16{Operation [2] & OperationL[1] & Operation [0] }};
assign OperationSar     = {16{Operation [2] & Operation [1] & Operation [0] }};

assign result8  = 
                  ({A[ 6:0],A[7]} & OperationRol[7:0]) |      // ROL
                  ({A[0],A[ 7:1]} & OperationRor[7:0]) |      // ROR
                  ({A[ 6:0],carryIn} & OperationRcl[7:0]) |   // RCL
                  ({carryIn,A[ 7:1]} & OperationRcr[7:0]) |   // RCR
                  ({A[ 6:0],1'b0} & OperationShl[7:0]) |      // SHL/SAL
                  ({1'b0,A[ 7:1]} & OperationShr[7:0]) |      // SHR
                  ({A[7],A[ 7:1]} & OperationSar[7:0]);       // SAR
assign result16 = 
                  ({A[14:0],A[15]} & OperationRol[15:0]) |    // ROL
                  ({A[0],A[15:1]} & OperationRor[15:0]) |     // ROR
                  ({A[14:0],carryIn} & OperationRcl[15:0]) |  // RCL
                  ({carryIn,A[15:1]} & OperationRcr[15:0]) |  // RCR
                  ({A[14:0],1'b0} & OperationShl[15:0]) |     // SHL
                  ({1'b0,A[15:1]} & OperationShr[15:0]) |     // SHR
                  ({A[15],A[15:1]} & OperationSar[15:0]);     // SAR

assign o = 
            ((byteWord ? (S[15] ^ c) : (S[7] ^ c)) & (OperationRol[0] | OperationRcl[0])) |             //ROL/RCL
            ((byteWord ? (S[15] ^ S[14]) : (S[7] ^ S[6])) & (OperationRor[0] | OperationRcr[0])) |      //ROR/RCR
            ((byteWord ? (A[15]!=A[14]) : (A[7]!=A[6])) & OperationShl[0]) |                            //SHL/SAL
            ((byteWord ? A[15] : A[7]) & OperationShr[0]) |                                             //SHR
            (0 & OperationSar[0]);                                                                      //SAR

assign c = 
            ((byteWord ? A[15] : A[7]) & (OperationShl[0] | OperationRol[0] | OperationRcl[0])) |                          //SHL/SAL/ROL/RCL
            ((byteWord ? A[ 0] : A[0]) & (OperationShr[0] | OperationSar[0] | OperationRor[0] | OperationRcr[0]));         //SHR/SAR/ROR/RCR

always @(posedge CLKx4)
begin

  S <= byteWord ? result16 : {8'h00,result8};

  F_Overflow <= o;
  F_Neg <= byteWord ? S[15] : S[7];
  F_Zero <= byteWord ? (S[15:0] == 0) : (S[7:0] == 0);
  F_Aux <= S[4];
  F_Parity <= ~(S[0] ^ S[1] ^ S[2] ^ S[3] ^ S[4] ^ S[5] ^ S[6] ^ S[7]);
  F_Carry <= c;

end

endmodule

