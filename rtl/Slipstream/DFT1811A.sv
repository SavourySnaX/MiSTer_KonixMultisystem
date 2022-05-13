
module DFT1811A
(
    input [3:0] S,
    input [15:0] A,
    input [15:0] B,
    input        CI,
    input        M,
    output       X,
    output       Y,
    output       CO,
    output [15:0] Z,
    output        AEB
);

// From LSA2001 ALU operation
// making this non-sequential for now

wire [16:0] AL,BL,Ai,Bi,tZ;
wire [3:0] SL;
wire [16:0] Option00, Option01, Option02, Option03, Option04, Option05, Option06, Option07, Option08, Option09, Option10, Option11, Option12, Option13, Option14, Option15;
wire [16:0] logicResult,noCarryResult,withCarryResult;
wire [16:0] M1,One,Zero;
wire [16:0] useM,useML,useCI,useCIL;

assign Ai={1'b0,A};
assign Bi={1'b0,B};
assign AL=~Ai;
assign BL=~Bi;
assign SL=~S;

assign useM = {17{M}};
assign useML= {17{~M}};
assign useCI = {17{CI}};
assign useCIL= {17{~CI}};

assign Option00={17{SL[3] & SL[2] & SL[1] & SL[0]}};
assign Option01={17{SL[3] & SL[2] & SL[1] &  S[0]}};
assign Option02={17{SL[3] & SL[2] &  S[1] & SL[0]}};
assign Option03={17{SL[3] & SL[2] &  S[1] &  S[0]}};
assign Option04={17{SL[3] &  S[2] & SL[1] & SL[0]}};
assign Option05={17{SL[3] &  S[2] & SL[1] &  S[0]}};
assign Option06={17{SL[3] &  S[2] &  S[1] & SL[0]}};
assign Option07={17{SL[3] &  S[2] &  S[1] &  S[0]}};
assign Option08={17{ S[3] & SL[2] & SL[1] & SL[0]}};
assign Option09={17{ S[3] & SL[2] & SL[1] &  S[0]}};
assign Option10={17{ S[3] & SL[2] &  S[1] & SL[0]}};
assign Option11={17{ S[3] & SL[2] &  S[1] &  S[0]}};
assign Option12={17{ S[3] &  S[2] & SL[1] & SL[0]}};
assign Option13={17{ S[3] &  S[2] & SL[1] &  S[0]}};
assign Option14={17{ S[3] &  S[2] &  S[1] & SL[0]}};
assign Option15={17{ S[3] &  S[2] &  S[1] &  S[0]}};

assign M1 = {17{1'b1}};
assign One = 1;
assign Zero = 0;

assign logicResult = ( (AL)         &   Option00) |
                     (~(Ai | Bi)      &   Option01) |
                     ( (AL & Bi)     &   Option02) |
                     ( (Zero)       &   Option03) |
                     (~(Ai & Bi)      &   Option04) |
                     ( (BL)         &   Option05) |
                     ( (Ai ^ Bi)      &   Option06) |
                     ( (Ai & BL)     &   Option07) |
                     ( (AL | Bi)     &   Option08) |
                     (~(Ai ^ Bi)      &   Option09) |
                     ( (Bi)          &   Option10) |
                     ( (Ai & Bi)      &   Option11) |
                     ( (One)        &   Option12) |
                     ( (Ai | BL)     &   Option13) |
                     ( (Ai | Bi)      &   Option14) |
                     ( (Ai)          &   Option15);

assign noCarryResult = ( (Ai)                    &   Option00) |
                       ( (Ai | Bi)                &   Option01) |
                       ( (Ai | BL)               &   Option02) |
                       ( (M1)                   &   Option03) |
                       ( (Ai + (Ai & BL))         &   Option04) |
                       ( ((Ai | Bi) + (Ai & BL))   &   Option05) |
                       ( ((Ai - Bi) - One)        &   Option06) |
                       ( ((Ai & BL) - One)       &   Option07) |
                       ( (Ai + (Ai & Bi))          &   Option08) |
                       ( (Ai + Bi)                &   Option09) |
                       ( ((Ai | BL) + (Ai & Bi))   &   Option10) |
                       ( ((Ai & Bi) - One)        &   Option11) |
                       ( (Ai + Ai)                &   Option12) |
                       ( ((Ai | Bi) + Ai)          &   Option13) |
                       ( ((Ai | BL) + Ai)         &   Option14) |
                       ( (Ai - One)              &   Option15);

assign withCarryResult = ( (Ai + One)                        &   Option00) |
                         ( ((Ai | Bi) + One)                 &   Option01) |
                         ( ((Ai | BL) + One)                 &   Option02) |
                         ( (Zero)                            &   Option03) |
                         ( ((Ai + (Ai & BL)) + One)          &   Option04) |
                         ( (((Ai | Bi) + (Ai & BL)) + One)   &   Option05) |
                         ( ((Ai - Bi))                       &   Option06) |
                         ( ((Ai & BL))                       &   Option07) |
                         ( ((Ai + (Ai & Bi)) + One)          &   Option08) |
                         ( ((Ai + Bi) + One)                 &   Option09) |
                         ( (((Ai | BL) + (Ai & Bi)) + One)   &   Option10) |
                         ( ((Ai & Bi))                       &   Option11) |
                         ( ((Ai + Ai) + One)                 &   Option12) |
                         ( (((Ai | Bi) + Ai) + One)          &   Option13) |
                         ( (((Ai | BL) + Ai) + One)          &   Option14) |
                         ( (Ai)                              &   Option15);



assign X=0; // Never used
assign Y=0; // Never used
assign tZ=(logicResult & useM) | (noCarryResult & ((useML) & (useCI))) | (withCarryResult & (useML & useCIL));
assign CO=~tZ[16];
assign Z=tZ[15:0];
assign AEB=A==B;


endmodule