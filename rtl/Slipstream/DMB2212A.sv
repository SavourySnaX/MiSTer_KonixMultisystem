
module DMB2212A
(
    input   [15:0]  X,
    input   [15:0]  Y,
    input   [35:0]  R,
    input           TCX,
    input           TCY,
    output  [36:0]  Z
);

wire [36:0] Xi, Yi, Xni, Yni, Xti, Yti, Ri, TX, TY;

assign Xni = {{21{1'b0}},X};     // zero extend
assign Yni = {{21{1'b0}},Y};
assign Xti = {{21{X[15]}},X};    // twos complement extend
assign Yti = {{21{Y[15]}},Y};

assign TX = {37{TCX}};
assign TY = {37{TCY}};

assign Xi = (Xti & TX) | (Xni & (~TX));
assign Yi = (Yti & TY) | (Yni & (~TY));
assign Ri = {1'b0,R};

assign Z = Ri+(Xi*Yi);

endmodule