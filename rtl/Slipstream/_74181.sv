
module _74181(
	     input [3:0] A, B,
	     input [3:0] S,
	     input Ci,
	     input M,
	     output [3:0] F,
	     output Co
	     );

	wire [3:0] p;
	wire [3:0] g;
	wire [3:0] C;
	wire [3:0] sigma;

	wire CpA,CpB,CpC,CpD,Cp,Cg,Ml;

	assign Ml = ~M;

	assign p[0] = ~((A[0]) | (B[0] & S[0]) | (S[1] & (~B[0])));
	assign p[1] = ~((A[1]) | (B[1] & S[0]) | (S[1] & (~B[1])));
	assign p[2] = ~((A[2]) | (B[2] & S[0]) | (S[1] & (~B[2])));
	assign p[3] = ~((A[3]) | (B[3] & S[0]) | (S[1] & (~B[3])));

	assign g[0] = ~(((~B[0]) & S[2] & A[0]) | (A[0] & B[0] & S[3]));
	assign g[1] = ~(((~B[1]) & S[2] & A[1]) | (A[1] & B[1] & S[3]));
	assign g[2] = ~(((~B[2]) & S[2] & A[2]) | (A[2] & B[2] & S[3]));
	assign g[3] = ~(((~B[3]) & S[2] & A[3]) | (A[3] & B[3] & S[3]));

	assign C[0] = ~(Ml & Ci);
	assign C[1] = ~((Ml & p[0]) | (Ml & g[0] & Ci));
	assign C[2] = ~((Ml & p[1]) | (Ml & p[0] & g[1]) | (Ml & g[0] & g[1] & Ci));
	assign C[3] = ~((Ml & p[2]) | (Ml & p[1] & g[2]) | (Ml & p[0] & g[1] & g[2]) | (Ml & g[0] & g[1] & g[2] & Ci));

	assign sigma[0] = p[0] ^ g[0];
	assign sigma[1] = p[1] ^ g[1];
	assign sigma[2] = p[2] ^ g[2];
	assign sigma[3] = p[3] ^ g[3];

	assign F[0] = sigma[0] ^ C[0];
	assign F[1] = sigma[1] ^ C[1];
	assign F[2] = sigma[2] ^ C[2];
	assign F[3] = sigma[3] ^ C[3];

	assign Cg = ~(Ci & g[0] & g[1] & g[2] & g[3]);
	assign CpA = (p[0] & g[1] & g[2] & g[3]);
	assign CpB = (p[1] & g[2] & g[3]);
	assign CpC = (p[2] & g[3]);
	assign CpD = p[3];

	assign Cp = ~(CpA | CpB | CpC | CpD);

	assign Co = (~Cg) | (~Cp);

endmodule
