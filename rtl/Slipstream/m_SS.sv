/* PORTED BY HAND AT PRESENT */

module m_SS
(
    input   MasterClock,

    input   inXAD_0,
    input   inXAD_1,
    input   inXAD_2,
    input   inXAD_3,
    input   inXAD_4,
    input   inXAD_5,
    input   inXAD_6,
    input   inXAD_7,
    input   inXA_8,
    input   inXA_9,
    input   inXA_10,
    input   inXA_11,
    input   inXA_12,
    input   inXA_13,
    input   inXA_14,
    input   inXA_15,
    input   inXD_8,
    input   inXD_9,
    input   inXD_10,
    input   inXD_11,
    input   inXD_12,
    input   inXD_13,
    input   inXD_14,
    input   inXD_15,
    input   inXVSYNCL,
    input   inXHSYNCL,
    input   inXJOYL_0,
    input   inXJOYL_1,
    input   inXJOYL_2,
    input   inXDSP_IO,
    input   XAS_16,
    input   XAS_17,
    input   XAS_18,
    input   XAS_19,
    input   XRESET,
    input   XIOM,
    input   XALE,
    input   XINTA,
    input   XHLDA,
    input   XXTAL,
    input   XAI_0,
    input   XAI_1,
    input   XAI_2,
    input   XLPL,
    input   XTESTPIN,
    input   XRDL,
    input   XWRL,

    output  outXAD_0,
    output  outXAD_1,
    output  outXAD_2,
    output  outXAD_3,
    output  outXAD_4,
    output  outXAD_5,
    output  outXAD_6,
    output  outXAD_7,
    output  outXA_8,
    output  outXA_9,
    output  outXA_10,
    output  outXA_11,
    output  outXA_12,
    output  outXA_13,
    output  outXA_14,
    output  outXA_15,
    output  outXD_8,
    output  outXD_9,
    output  outXD_10,
    output  outXD_11,
    output  outXD_12,
    output  outXD_13,
    output  outXD_14,
    output  outXD_15,
    output  outXVSYNCL,
    output  outXHSYNCL,
    output  outXJOYL_0,
    output  outXJOYL_1,
    output  outXJOYL_2,
    output  outXDSP_IO,
    output  enXAD_0,
    output  enXAD_1,
    output  enXAD_2,
    output  enXAD_3,
    output  enXAD_4,
    output  enXAD_5,
    output  enXAD_6,
    output  enXAD_7,
    output  enXA_8,
    output  enXA_9,
    output  enXA_10,
    output  enXA_11,
    output  enXA_12,
    output  enXA_13,
    output  enXA_14,
    output  enXA_15,
    output  enXD_8,
    output  enXD_9,
    output  enXD_10,
    output  enXD_11,
    output  enXD_12,
    output  enXD_13,
    output  enXD_14,
    output  enXD_15,
    output  enXVSYNCL,
    output  enXHSYNCL,
    output  enXJOYL_0,
    output  enXJOYL_1,
    output  enXJOYL_2,
    output  enXDSP_IO,
    output  XINTR,
    output  XA_0,
    output  XA_1,
    output  XA_2,
    output  XA_3,
    output  XA_4,
    output  XA_5,
    output  XA_6,
    output  XA_7,
    output  XA_16,
    output  XA_17,
    output  XPCLK,
    output  XHOLD,
    output  XSCEL_0,
    output  XSCEL_1,
    output  XWEL,
    output  XCSL_0,
    output  XCSL_1,
    output  XR_0,
    output  XR_1,
    output  XR_2,
    output  XR_3,
    output  XG_0,
    output  XG_1,
    output  XG_2,
    output  XG_3,
    output  XB_0,
    output  XB_1,
    output  XB_2,
    output  XB_3,
    output  XCHROMA,
    output  XLEFTL,
    output  XLEFTH,
    output  XRIGHTL,
    output  XRIGHTH,
    output  XINC,
    output  XAISEL,
    output  XOEL,
    output  XCASL,
    output  XXTALO,
    output  XGPIOL_0,
    output  XGPIOL_1

	 ,output CCLK

    ,output DQCLK
    ,output [13:0] LEFTDAC
    ,output [13:0] RIGHTDAC

    ,input FCLK
    ,output reg [19:0] SLIPADDRESS
	 
	 ,output BLANKING
);

// COMBINED FROM OUTS
reg [19:0] A;
reg [15:0] D;
reg [15:0] PALD;
reg [15:0] DD;
reg [15:0] PD;

// For Joining bidirectional buses
wire [19:0] AVIDo;
wire [19:0] AVIDe;
wire [15:0] DVIDo;
wire [15:0] DVIDe;
wire [15:0] PALDVIDo;
wire [15:0] PALDVIDe;

wire [19:0] ABLITo;
wire [19:0] ABLITe;
wire [15:0] DBLITo;
wire [15:0] DBLITe;

wire [19:0] ADSPo;
wire [19:0] ADSPe;
wire [15:0] DDSPo;
wire [15:0] DDSPe;
wire [15:0] DDDSPo;
wire [15:0] DDDSPe;
wire [15:0] PDDSPo;
wire [15:0] PDDSPe;

wire [15:0] PDRAMo;
wire [15:0] PDRAMe;
wire [15:0] DDRAMo;
wire [15:0] DDRAMe;
wire [15:0] PALDRAMo;
wire [15:0] PALDRAMe;
wire [15:0] DDROMo;
wire [15:0] DDROMe;

// Internal signals
wire [15:0] X;
wire [15:0] AZ;
wire [35:0] MZR;
wire [36:0] MZ;
wire [7:0] PC;
wire [7:0] DA;
wire [7:0] PA;
wire [7:0] VADL;
wire [7:0] VAD;
wire [17:0] VAL;
wire [15:8] VDL;
wire [17:0] VA;
wire [15:8] VD;

wire [2:0] AIL;
wire [19:16] ASL;

wire [3:0] R;
wire [3:0] G;
wire [3:0] B;

wire [1:0] GPIOL;

wire [3:0] RL;
wire [3:0] GL;
wire [3:0] BL;
wire [2:0] JOYL;

wire [46:0] TESTI;

wire [15:0] ALUA;
wire [15:0] ALUB;
wire [3:0] ALUS;
wire [3:0] S;

wire [1:0] SCEL;
wire [1:0] CSL;
wire [1:0] CS;
wire [1:0] SCE;

// Internal individual

wire /*CCLK, */ICCLK;

wire TESTPIN,TESTPINL,TESTWR,TESTWRL;
wire SCANEN,SCANENL,TRIDIS,TRIDISL,RAMDIS,RAMDISL,ALUTST,ALUTSTL,DATDIS,DATDISL;
wire DDIST,DDIS;
wire SCANSCK,SCANSI,SCANTWE,SCANTOCK,SCANTCS;
wire PRAMSO,DRAMSO,DROMSO,VRAMSO;
wire PALCS, PCS;
wire RESETL,RESETI;
wire HOLD,HOLDL;
wire ALUM,ALUCINL;
wire ALUX,ALUY;
wire M,CINL;
wire COUTL,ALUAEB;

wire VRD,VWR,VLOCK,HLOCK,PALL,PSRAML,IOML,ALEL;
wire INTAL,BMREQ,DMREQ,HLDAL,XTALL,LP;
wire BHOLDL,BWORD,DWORD,FASTL,BRD,DRD,BWR,DWR;
wire ADEN,AEN,DEN,VRDL,VWRL,INTL,VSYNC,HSYNC;
wire TESTENL,PCLKL,WE,DWE,CHROMAL,OE,CAS;
wire IORDL,IOWRL,BCSL,DCSL,WAITL,RDL,WRL;
wire POE,PWE,AISEL,INCL,DSP_EN,/*DQCLK,*/DSPBRQL;
wire DSPBAKL,LEFTL,LEFTH,RIGHTL,RIGHTH,DSP_IN,DSP_OUT;
wire PRAMEN,PRAMWR,DRAMEN,DRAMWR,ROMEN;

wire TCX,TCY,INT,TESTPINPO,XTALLI,WEL,CASL;
wire OEL,CHROMA,INC;

// Video

m_VID VID_(
    .MasterClock(MasterClock),
    .inA_0(A[0]),.inA_1(A[1]),.inA_2(A[2]),.inA_3(A[3]),.inA_4(A[4]),.inA_5(A[5]),.inA_6(A[6]),.inA_7(A[7]),
    .inA_8(A[8]),.inA_9(A[9]),.inA_10(A[10]),.inA_11(A[11]),.inA_12(A[12]),.inA_13(A[13]),.inA_14(A[14]),.inA_15(A[15]),
    .inA_16(A[16]),.inA_17(A[17]),.inA_18(A[18]),.inA_19(A[19]),
    .inD_0(D[0]),.inD_1(D[1]),.inD_2(D[2]),.inD_3(D[3]),.inD_4(D[4]),.inD_5(D[5]),.inD_6(D[6]),.inD_7(D[7]),
    .inD_8(D[8]),.inD_9(D[9]),.inD_10(D[10]),.inD_11(D[11]),.inD_12(D[12]),.inD_13(D[13]),.inD_14(D[14]),.inD_15(D[15]),
    .inPD_0(PALD[0]),.inPD_1(PALD[1]),.inPD_2(PALD[2]),.inPD_3(PALD[3]),.inPD_4(PALD[4]),.inPD_5(PALD[5]),.inPD_6(PALD[6]),.inPD_7(PALD[7]),
    .inPD_8(PALD[8]),.inPD_9(PALD[9]),.inPD_10(PALD[10]),.inPD_11(PALD[11]),.inPD_12(PALD[12]),.inPD_13(PALD[13]),.inPD_14(PALD[14]),.inPD_15(PALD[15]),
    .VADL_0(VADL[0]),.VADL_1(VADL[1]),.VADL_2(VADL[2]),.VADL_3(VADL[3]),.VADL_4(VADL[4]),.VADL_5(VADL[5]),.VADL_6(VADL[6]),.VADL_7(VADL[7]),
    .VAL_8(VAL[8]),.VAL_9(VAL[9]),.VAL_10(VAL[10]),.VAL_11(VAL[11]),.VAL_12(VAL[12]),.VAL_13(VAL[13]),.VAL_14(VAL[14]),.VAL_15(VAL[15]),
    .VDL_8(VDL[8]),.VDL_9(VDL[9]),.VDL_10(VDL[10]),.VDL_11(VDL[11]),.VDL_12(VDL[12]),.VDL_13(VDL[13]),.VDL_14(VDL[14]),.VDL_15(VDL[15]),
    .VRD(VRD),.VWR(VWR),.VLOCK(VLOCK),.HLOCK(HLOCK),.PALL(PALL),.PSRAML(PSRAML),
    .ASL_16(ASL[16]),.ASL_17(ASL[17]),.ASL_18(ASL[18]),.ASL_19(ASL[19]),
    .RESETL_0(RESETL),.IOML(IOML),.ALEL(ALEL),.INTAL(INTAL),.BMREQ(BMREQ),.DMREQ(DMREQ),
    .HLDAL(HLDAL),.XTALL(XTALL),.AIL_0(AIL[0]),.AIL_1(AIL[1]),.AIL_2(AIL[2]),.LP(LP),
    .BHOLDL(BHOLDL),.BWORD(BWORD),.DWORD(DWORD),.FASTL(FASTL),.BRD(BRD),.DRD(DRD),.BWR(BWR),.DWR(DWR),.CCLK(CCLK),
    .outA_0(AVIDo[0]),.outA_1(AVIDo[1]),.outA_2(AVIDo[2]),.outA_3(AVIDo[3]),.outA_4(AVIDo[4]),.outA_5(AVIDo[5]),.outA_6(AVIDo[6]),.outA_7(AVIDo[7]),
    .outA_8(AVIDo[8]),.outA_9(AVIDo[9]),.outA_10(AVIDo[10]),.outA_11(AVIDo[11]),.outA_12(AVIDo[12]),.outA_13(AVIDo[13]),.outA_14(AVIDo[14]),.outA_15(AVIDo[15]),
    .outA_16(AVIDo[16]),.outA_17(AVIDo[17]),.outA_18(AVIDo[18]),.outA_19(AVIDo[19]),
    .enA_0(AVIDe[0]),.enA_1(AVIDe[1]),.enA_2(AVIDe[2]),.enA_3(AVIDe[3]),.enA_4(AVIDe[4]),.enA_5(AVIDe[5]),.enA_6(AVIDe[6]),.enA_7(AVIDe[7]),
    .enA_8(AVIDe[8]),.enA_9(AVIDe[9]),.enA_10(AVIDe[10]),.enA_11(AVIDe[11]),.enA_12(AVIDe[12]),.enA_13(AVIDe[13]),.enA_14(AVIDe[14]),.enA_15(AVIDe[15]),
    .enA_16(AVIDe[16]),.enA_17(AVIDe[17]),.enA_18(AVIDe[18]),.enA_19(AVIDe[19]),
    .outD_0(DVIDo[0]),.outD_1(DVIDo[1]),.outD_2(DVIDo[2]),.outD_3(DVIDo[3]),.outD_4(DVIDo[4]),.outD_5(DVIDo[5]),.outD_6(DVIDo[6]),.outD_7(DVIDo[7]),
    .outD_8(DVIDo[8]),.outD_9(DVIDo[9]),.outD_10(DVIDo[10]),.outD_11(DVIDo[11]),.outD_12(DVIDo[12]),.outD_13(DVIDo[13]),.outD_14(DVIDo[14]),.outD_15(DVIDo[15]),
    .enD_0(DVIDe[0]),.enD_1(DVIDe[1]),.enD_2(DVIDe[2]),.enD_3(DVIDe[3]),.enD_4(DVIDe[4]),.enD_5(DVIDe[5]),.enD_6(DVIDe[6]),.enD_7(DVIDe[7]),
    .enD_8(DVIDe[8]),.enD_9(DVIDe[9]),.enD_10(DVIDe[10]),.enD_11(DVIDe[11]),.enD_12(DVIDe[12]),.enD_13(DVIDe[13]),.enD_14(DVIDe[14]),.enD_15(DVIDe[15]),
    .outPD_0(PALDVIDo[0]),.outPD_1(PALDVIDo[1]),.outPD_2(PALDVIDo[2]),.outPD_3(PALDVIDo[3]),.outPD_4(PALDVIDo[4]),.outPD_5(PALDVIDo[5]),.outPD_6(PALDVIDo[6]),.outPD_7(PALDVIDo[7]),
    .outPD_8(PALDVIDo[8]),.outPD_9(PALDVIDo[9]),.outPD_10(PALDVIDo[10]),.outPD_11(PALDVIDo[11]),.outPD_12(PALDVIDo[12]),.outPD_13(PALDVIDo[13]),.outPD_14(PALDVIDo[14]),.outPD_15(PALDVIDo[15]),
    .enPD_0(PALDVIDe[0]),.enPD_1(PALDVIDe[1]),.enPD_2(PALDVIDe[2]),.enPD_3(PALDVIDe[3]),.enPD_4(PALDVIDe[4]),.enPD_5(PALDVIDe[5]),.enPD_6(PALDVIDe[6]),.enPD_7(PALDVIDe[7]),
    .enPD_8(PALDVIDe[8]),.enPD_9(PALDVIDe[9]),.enPD_10(PALDVIDe[10]),.enPD_11(PALDVIDe[11]),.enPD_12(PALDVIDe[12]),.enPD_13(PALDVIDe[13]),.enPD_14(PALDVIDe[14]),.enPD_15(PALDVIDe[15]),
    .VAD_0(VAD[0]),.VAD_1(VAD[1]),.VAD_2(VAD[2]),.VAD_3(VAD[3]),.VAD_4(VAD[4]),.VAD_5(VAD[5]),.VAD_6(VAD[6]),.VAD_7(VAD[7]),
    .ADEN(ADEN),
    .VAL_0(VAL[0]),.VAL_1(VAL[1]),.VAL_2(VAL[2]),.VAL_3(VAL[3]),.VAL_4(VAL[4]),.VAL_5(VAL[5]),.VAL_6(VAL[6]),.VAL_7(VAL[7]),
    .VA_8(VA[8]),.VA_9(VA[9]),.VA_10(VA[10]),.VA_11(VA[11]),.VA_12(VA[12]),.VA_13(VA[13]),.VA_14(VA[14]),.VA_15(VA[15]),
    .AEN(AEN),
    .VAL_16(VAL[16]),.VAL_17(VAL[17]),
    .DEN(DEN),
    .VD_8(VD[8]),.VD_9(VD[9]),.VD_10(VD[10]),.VD_11(VD[11]),.VD_12(VD[12]),.VD_13(VD[13]),.VD_14(VD[14]),.VD_15(VD[15]),
    .VRDL(VRDL),.VWRL(VWRL),.INTL(INTL),.VSYNC(VSYNC),.HSYNC(HSYNC),.TESTENL(TESTENL),.PCLKL(PCLKL),.HOLDL(HOLDL),
    .SCE_0(SCE[0]),.SCE_1(SCE[1]),
    .WE(WE),.DWE(DWE),
    .CS_0(CS[0]),.CS_1(CS[1]),
    .RL_0(RL[0]),.RL_1(RL[1]),.RL_2(RL[2]),.RL_3(RL[3]),
    .GL_0(GL[0]),.GL_1(GL[1]),.GL_2(GL[2]),.GL_3(GL[3]),
    .BL_0(BL[0]),.BL_1(BL[1]),.BL_2(BL[2]),.BL_3(BL[3]),
    .CHROMAL(CHROMAL),.JOYL_0(JOYL[0]),.JOYL_1(JOYL[1]),.JOYL_2(JOYL[2]),
    .OE(OE),.CAS(CAS),.IORDL(IORDL),.IOWRL(IOWRL),.BCSL(BCSL),.DCSL(DCSL),.ICCLK(ICCLK),.WAITL(WAITL),.RDL(RDL),.WRL(WRL),
    .PA_0(PA[0]),.PA_1(PA[1]),.PA_2(PA[2]),.PA_3(PA[3]),.PA_4(PA[4]),.PA_5(PA[5]),.PA_6(PA[6]),.PA_7(PA[7]),
    .POE(POE),.PWE(PWE),.PCS(PCS),.MO(AISEL),.INCL(INCL),.DOEN(DSP_EN),.GPIOL_0(GPIOL[0]),.GPIOL_1(GPIOL[1]),.DQCLK(DQCLK)
	 ,.BLANKING(BLANKING)
);

// Blitter

m_BLIT BLIT_(
    .MasterClock(MasterClock),
    .inA_0(A[0]),.inA_1(A[1]),.inA_2(A[2]),.inA_3(A[3]),.inA_4(A[4]),.inA_5(A[5]),.inA_6(A[6]),.inA_7(A[7]),
    .inA_8(A[8]),.inA_9(A[9]),.inA_10(A[10]),.inA_11(A[11]),.inA_12(A[12]),.inA_13(A[13]),.inA_14(A[14]),.inA_15(A[15]),
    .inA_16(A[16]),.inA_17(A[17]),.inA_18(A[18]),.inA_19(A[19]),
    .inD_0(D[0]),.inD_1(D[1]),.inD_2(D[2]),.inD_3(D[3]),.inD_4(D[4]),.inD_5(D[5]),.inD_6(D[6]),.inD_7(D[7]),
    .inD_8(D[8]),.inD_9(D[9]),.inD_10(D[10]),.inD_11(D[11]),.inD_12(D[12]),.inD_13(D[13]),.inD_14(D[14]),.inD_15(D[15]),
    .RESETL(RESETL),.HLDAL(HLDAL),.DSPBRQL(DSPBRQL),.INTL(INTL),.IORDL(IORDL),.IOWRL(IOWRL),.BCSL(BCSL),.CCLK(CCLK),.WAITL(WAITL),
    .outA_0(ABLITo[0]),.outA_1(ABLITo[1]),.outA_2(ABLITo[2]),.outA_3(ABLITo[3]),.outA_4(ABLITo[4]),.outA_5(ABLITo[5]),.outA_6(ABLITo[6]),.outA_7(ABLITo[7]),
    .outA_8(ABLITo[8]),.outA_9(ABLITo[9]),.outA_10(ABLITo[10]),.outA_11(ABLITo[11]),.outA_12(ABLITo[12]),.outA_13(ABLITo[13]),.outA_14(ABLITo[14]),.outA_15(ABLITo[15]),
    .outA_16(ABLITo[16]),.outA_17(ABLITo[17]),.outA_18(ABLITo[18]),.outA_19(ABLITo[19]),
    .enA_0(ABLITe[0]),.enA_1(ABLITe[1]),.enA_2(ABLITe[2]),.enA_3(ABLITe[3]),.enA_4(ABLITe[4]),.enA_5(ABLITe[5]),.enA_6(ABLITe[6]),.enA_7(ABLITe[7]),
    .enA_8(ABLITe[8]),.enA_9(ABLITe[9]),.enA_10(ABLITe[10]),.enA_11(ABLITe[11]),.enA_12(ABLITe[12]),.enA_13(ABLITe[13]),.enA_14(ABLITe[14]),.enA_15(ABLITe[15]),
    .enA_16(ABLITe[16]),.enA_17(ABLITe[17]),.enA_18(ABLITe[18]),.enA_19(ABLITe[19]),
    .outD_0(DBLITo[0]),.outD_1(DBLITo[1]),.outD_2(DBLITo[2]),.outD_3(DBLITo[3]),.outD_4(DBLITo[4]),.outD_5(DBLITo[5]),.outD_6(DBLITo[6]),.outD_7(DBLITo[7]),
    .outD_8(DBLITo[8]),.outD_9(DBLITo[9]),.outD_10(DBLITo[10]),.outD_11(DBLITo[11]),.outD_12(DBLITo[12]),.outD_13(DBLITo[13]),.outD_14(DBLITo[14]),.outD_15(DBLITo[15]),
    .enD_0(DBLITe[0]),.enD_1(DBLITe[1]),.enD_2(DBLITe[2]),.enD_3(DBLITe[3]),.enD_4(DBLITe[4]),.enD_5(DBLITe[5]),.enD_6(DBLITe[6]),.enD_7(DBLITe[7]),
    .enD_8(DBLITe[8]),.enD_9(DBLITe[9]),.enD_10(DBLITe[10]),.enD_11(DBLITe[11]),.enD_12(DBLITe[12]),.enD_13(DBLITe[13]),.enD_14(DBLITe[14]),.enD_15(DBLITe[15]),
    .BMREQ(BMREQ),.BRD(BRD),.BWR(BWR),.BWORD(BWORD),.DSPBAKL(DSPBAKL),.BHOLDL(BHOLDL),.TESTWRL(TESTWRL)
);

// DSP

m_DSP DSP_(
    .MasterClock(MasterClock),
    .inA_0(A[0]),.inA_1(A[1]),.inA_2(A[2]),.inA_3(A[3]),.inA_4(A[4]),.inA_5(A[5]),.inA_6(A[6]),.inA_7(A[7]),
    .inA_8(A[8]),.inA_9(A[9]),.inA_10(A[10]),.inA_11(A[11]),.inA_12(A[12]),.inA_13(A[13]),.inA_14(A[14]),.inA_15(A[15]),
    .inA_16(A[16]),.inA_17(A[17]),.inA_18(A[18]),.inA_19(A[19]),
    .inD_0(D[0]),.inD_1(D[1]),.inD_2(D[2]),.inD_3(D[3]),.inD_4(D[4]),.inD_5(D[5]),.inD_6(D[6]),.inD_7(D[7]),
    .inD_8(D[8]),.inD_9(D[9]),.inD_10(D[10]),.inD_11(D[11]),.inD_12(D[12]),.inD_13(D[13]),.inD_14(D[14]),.inD_15(D[15]),
    .inDD_0(DD[0]),.inDD_1(DD[1]),.inDD_2(DD[2]),.inDD_3(DD[3]),.inDD_4(DD[4]),.inDD_5(DD[5]),.inDD_6(DD[6]),.inDD_7(DD[7]),
    .inDD_8(DD[8]),.inDD_9(DD[9]),.inDD_10(DD[10]),.inDD_11(DD[11]),.inDD_12(DD[12]),.inDD_13(DD[13]),.inDD_14(DD[14]),.inDD_15(DD[15]),
    .inPD_0(PD[0]),.inPD_1(PD[1]),.inPD_2(PD[2]),.inPD_3(PD[3]),.inPD_4(PD[4]),.inPD_5(PD[5]),.inPD_6(PD[6]),.inPD_7(PD[7]),
    .inPD_8(PD[8]),.inPD_9(PD[9]),.inPD_10(PD[10]),.inPD_11(PD[11]),.inPD_12(PD[12]),.inPD_13(PD[13]),.inPD_14(PD[14]),.inPD_15(PD[15]),
    .RESETL(RESETL),.DSPBAKL(DSPBAKL),.DCSL(DCSL),.CCLK(CCLK),.WAITL(WAITL),.IOML(IOML),.RDL(RDL),.DWE(DWE),
    .AZ_0(AZ[0]),.AZ_1(AZ[1]),.AZ_2(AZ[2]),.AZ_3(AZ[3]),.AZ_4(AZ[4]),.AZ_5(AZ[5]),.AZ_6(AZ[6]),.AZ_7(AZ[7]),
    .AZ_8(AZ[8]),.AZ_9(AZ[9]),.AZ_10(AZ[10]),.AZ_11(AZ[11]),.AZ_12(AZ[12]),.AZ_13(AZ[13]),.AZ_14(AZ[14]),.AZ_15(AZ[15]),
    .COUTL(COUTL),
    .MZ_0(MZ[0]),.MZ_1(MZ[1]),.MZ_2(MZ[2]),.MZ_3(MZ[3]),.MZ_4(MZ[4]),.MZ_5(MZ[5]),.MZ_6(MZ[6]),.MZ_7(MZ[7]),
    .MZ_8(MZ[8]),.MZ_9(MZ[9]),.MZ_10(MZ[10]),.MZ_11(MZ[11]),.MZ_12(MZ[12]),.MZ_13(MZ[13]),.MZ_14(MZ[14]),.MZ_15(MZ[15]),
    .MZ_16(MZ[16]),.MZ_17(MZ[17]),.MZ_18(MZ[18]),.MZ_19(MZ[19]),.MZ_20(MZ[20]),.MZ_21(MZ[21]),.MZ_22(MZ[22]),.MZ_23(MZ[23]),
    .MZ_24(MZ[24]),.MZ_25(MZ[25]),.MZ_26(MZ[26]),.MZ_27(MZ[27]),.MZ_28(MZ[28]),.MZ_29(MZ[29]),.MZ_30(MZ[30]),.MZ_31(MZ[31]),
    .MZ_32(MZ[32]),.MZ_33(MZ[33]),.MZ_34(MZ[34]),.MZ_35(MZ[35]),.MZ_36(MZ[36]),
    .INPUT(DSP_IN),.DQCLK(DQCLK),
    .outA_0(ADSPo[0]),.outA_1(ADSPo[1]),.outA_2(ADSPo[2]),.outA_3(ADSPo[3]),.outA_4(ADSPo[4]),.outA_5(ADSPo[5]),.outA_6(ADSPo[6]),.outA_7(ADSPo[7]),
    .outA_8(ADSPo[8]),.outA_9(ADSPo[9]),.outA_10(ADSPo[10]),.outA_11(ADSPo[11]),.outA_12(ADSPo[12]),.outA_13(ADSPo[13]),.outA_14(ADSPo[14]),.outA_15(ADSPo[15]),
    .outA_16(ADSPo[16]),.outA_17(ADSPo[17]),.outA_18(ADSPo[18]),.outA_19(ADSPo[19]),
    .enA_0(ADSPe[0]),.enA_1(ADSPe[1]),.enA_2(ADSPe[2]),.enA_3(ADSPe[3]),.enA_4(ADSPe[4]),.enA_5(ADSPe[5]),.enA_6(ADSPe[6]),.enA_7(ADSPe[7]),
    .enA_8(ADSPe[8]),.enA_9(ADSPe[9]),.enA_10(ADSPe[10]),.enA_11(ADSPe[11]),.enA_12(ADSPe[12]),.enA_13(ADSPe[13]),.enA_14(ADSPe[14]),.enA_15(ADSPe[15]),
    .enA_16(ADSPe[16]),.enA_17(ADSPe[17]),.enA_18(ADSPe[18]),.enA_19(ADSPe[19]),
    .outD_0(DDSPo[0]),.outD_1(DDSPo[1]),.outD_2(DDSPo[2]),.outD_3(DDSPo[3]),.outD_4(DDSPo[4]),.outD_5(DDSPo[5]),.outD_6(DDSPo[6]),.outD_7(DDSPo[7]),
    .outD_8(DDSPo[8]),.outD_9(DDSPo[9]),.outD_10(DDSPo[10]),.outD_11(DDSPo[11]),.outD_12(DDSPo[12]),.outD_13(DDSPo[13]),.outD_14(DDSPo[14]),.outD_15(DDSPo[15]),
    .enD_0(DDSPe[0]),.enD_1(DDSPe[1]),.enD_2(DDSPe[2]),.enD_3(DDSPe[3]),.enD_4(DDSPe[4]),.enD_5(DDSPe[5]),.enD_6(DDSPe[6]),.enD_7(DDSPe[7]),
    .enD_8(DDSPe[8]),.enD_9(DDSPe[9]),.enD_10(DDSPe[10]),.enD_11(DDSPe[11]),.enD_12(DDSPe[12]),.enD_13(DDSPe[13]),.enD_14(DDSPe[14]),.enD_15(DDSPe[15]),
    .outDD_0(DDDSPo[0]),.outDD_1(DDDSPo[1]),.outDD_2(DDDSPo[2]),.outDD_3(DDDSPo[3]),.outDD_4(DDDSPo[4]),.outDD_5(DDDSPo[5]),.outDD_6(DDDSPo[6]),.outDD_7(DDDSPo[7]),
    .outDD_8(DDDSPo[8]),.outDD_9(DDDSPo[9]),.outDD_10(DDDSPo[10]),.outDD_11(DDDSPo[11]),.outDD_12(DDDSPo[12]),.outDD_13(DDDSPo[13]),.outDD_14(DDDSPo[14]),.outDD_15(DDDSPo[15]),
    .enDD_0(DDDSPe[0]),.enDD_1(DDDSPe[1]),.enDD_2(DDDSPe[2]),.enDD_3(DDDSPe[3]),.enDD_4(DDDSPe[4]),.enDD_5(DDDSPe[5]),.enDD_6(DDDSPe[6]),.enDD_7(DDDSPe[7]),
    .enDD_8(DDDSPe[8]),.enDD_9(DDDSPe[9]),.enDD_10(DDDSPe[10]),.enDD_11(DDDSPe[11]),.enDD_12(DDDSPe[12]),.enDD_13(DDDSPe[13]),.enDD_14(DDDSPe[14]),.enDD_15(DDDSPe[15]),
    .outPD_0(PDDSPo[0]),.outPD_1(PDDSPo[1]),.outPD_2(PDDSPo[2]),.outPD_3(PDDSPo[3]),.outPD_4(PDDSPo[4]),.outPD_5(PDDSPo[5]),.outPD_6(PDDSPo[6]),.outPD_7(PDDSPo[7]),
    .outPD_8(PDDSPo[8]),.outPD_9(PDDSPo[9]),.outPD_10(PDDSPo[10]),.outPD_11(PDDSPo[11]),.outPD_12(PDDSPo[12]),.outPD_13(PDDSPo[13]),.outPD_14(PDDSPo[14]),.outPD_15(PDDSPo[15]),
    .enPD_0(PDDSPe[0]),.enPD_1(PDDSPe[1]),.enPD_2(PDDSPe[2]),.enPD_3(PDDSPe[3]),.enPD_4(PDDSPe[4]),.enPD_5(PDDSPe[5]),.enPD_6(PDDSPe[6]),.enPD_7(PDDSPe[7]),
    .enPD_8(PDDSPe[8]),.enPD_9(PDDSPe[9]),.enPD_10(PDDSPe[10]),.enPD_11(PDDSPe[11]),.enPD_12(PDDSPe[12]),.enPD_13(PDDSPe[13]),.enPD_14(PDDSPe[14]),.enPD_15(PDDSPe[15]),
    .DSPBRQL(DSPBRQL),.LEFTL(LEFTL),.LEFTH(LEFTH),.RIGHTL(RIGHTL),.RIGHTH(RIGHTH),.MREQ(DMREQ),.RD(DRD),.WR(DWR),.WORD(DWORD),
    .PC_0(PC[0]),.PC_1(PC[1]),.PC_2(PC[2]),.PC_3(PC[3]),.PC_4(PC[4]),.PC_5(PC[5]),.PC_6(PC[6]),.PC_7(PC[7]),
    .DA_0(DA[0]),.DA_1(DA[1]),.DA_2(DA[2]),.DA_3(DA[3]),.DA_4(DA[4]),.DA_5(DA[5]),.DA_6(DA[6]),.DA_7(DA[7]),
    .PRAMEN(PRAMEN),.PRAMWR(PRAMWR),.DRAMEN(DRAMEN),.DRAMWR(DRAMWR),.ROMEN(ROMEN),
    .X_0(X[0]),.X_1(X[1]),.X_2(X[2]),.X_3(X[3]),.X_4(X[4]),.X_5(X[5]),.X_6(X[6]),.X_7(X[7]),
    .X_8(X[8]),.X_9(X[9]),.X_10(X[10]),.X_11(X[11]),.X_12(X[12]),.X_13(X[13]),.X_14(X[14]),.X_15(X[15]),
    .ACC_0(MZR[0]),.ACC_1(MZR[1]),.ACC_2(MZR[2]),.ACC_3(MZR[3]),.ACC_4(MZR[4]),.ACC_5(MZR[5]),.ACC_6(MZR[6]),.ACC_7(MZR[7]),
    .ACC_8(MZR[8]),.ACC_9(MZR[9]),.ACC_10(MZR[10]),.ACC_11(MZR[11]),.ACC_12(MZR[12]),.ACC_13(MZR[13]),.ACC_14(MZR[14]),.ACC_15(MZR[15]),
    .ACC_16(MZR[16]),.ACC_17(MZR[17]),.ACC_18(MZR[18]),.ACC_19(MZR[19]),.ACC_20(MZR[20]),.ACC_21(MZR[21]),.ACC_22(MZR[22]),.ACC_23(MZR[23]),
    .ACC_24(MZR[24]),.ACC_25(MZR[25]),.ACC_26(MZR[26]),.ACC_27(MZR[27]),.ACC_28(MZR[28]),.ACC_29(MZR[29]),.ACC_30(MZR[30]),.ACC_31(MZR[31]),
    .ACC_32(MZR[32]),.ACC_33(MZR[33]),.ACC_34(MZR[34]),.ACC_35(MZR[35]),
    .TCX(TCX),.TCY(TCY),.CINL(CINL),
    .M(M),.S_0(S[0]),.S_1(S[1]),.S_2(S[2]),.S_3(S[3]),.OUTPUT(DSP_OUT)


    , .LEFTDAC(LEFTDAC),.RIGHTDAC(RIGHTDAC)
);

/* Clock buffer */

assign CCLK = ~ICCLK;    //CCLK_ (CCLK) = B1I (ICCLK);

/* Test and Control Logic
   ----------------------
The following logic is provided at the top level to control testing of the
mega cells, and to allow the LSI parametric test modes to be performed.
This requires that the functions of the pads be changed in test mode, but
a restriction is observed that no "real" signal may be dalyed by more than
one gate, so that the test logic does not degrade system performance too
much.
*/

/* The test control register - this has the following bits:
        0       enable scan test
        1       disable all tri-states
        2       disable RAM cells
        3       test ALU
        4       disable data bus tri-states if AI_2 is 0
*/

/* Writes are only permitted to it when TESTPIN is inactive */

assign TESTPIN = ~TESTPINL;                         //TPININV_ (TESTPIN) = N1A (TESTPINL);
assign TESTWR = ~(TESTWRL | TESTPIN);               //TESTWR_ (TESTWR) = NR2A (TESTWRL, TESTPIN);

LD1A SCANEN_ (.MasterClock(MasterClock), .q(SCANEN),.qL(SCANENL),.d(D[0]),.en(TESTWR));    //SCANEN_(SCANEN, SCANENL) = LD1A (D_0, TESTWR);
LD1A TRIDIS_ (.MasterClock(MasterClock), .q(TRIDIS),.qL(TRIDISL),.d(D[1]),.en(TESTWR));    //TRIDIS_(TRIDIS, TRIDISL) = LD1A (D_1, TESTWR);
LD1A RAMDIS_ (.MasterClock(MasterClock), .q(RAMDIS),.qL(RAMDISL),.d(D[2]),.en(TESTWR));    //RAMDIS_(RAMDIS, RAMDISL) = LD1A (D_2, TESTWR);
LD1A ALUTST_ (.MasterClock(MasterClock), .q(ALUTST),.qL(ALUTSTL),.d(D[3]),.en(TESTWR));    //ALUTST_(ALUTST, ALUTSTL) = LD1A (D_3, TESTWR);
LD1A DATDIS_ (.MasterClock(MasterClock), .q(DATDIS),.qL(DATDISL),.d(D[4]),.en(TESTWR));    //DATDIS_(DATDIS, DATDISL) = LD1A (D_4, TESTWR);

/* Generate a special disable signal for the data bus which is active
on the condition TRIDIS + (DATDIS . AIL_2) */

assign DDIST = ~(DATDIS & AIL[2]);          //DDIST_(DDIST) = ND2A (DATDIS, AIL_2);
assign DDIS  = ~(DDIST & TRIDISL);          //DDIS_(DDIS) = ND2A (DDIST, TRIDISL);

/* Scan test - the inputs are common to all the scan devices, and the outputs 
appear on separate pins.

        XAS_16  SCK
        XAD_0   SI
        XAS_17  TWE
        XAS_18  TOCK
        XAD_1   TCS

        XA_0    DSP Program RAM SO
        XA_1    DSP Data RAM SO
        XA_2    DSP Data ROM SO
        XA_3    Palette RAM SO
*/

assign SCANSCK = ~ASL[16];          //SCANSCK_(SCANSCK) = N1A(ASL_16);
assign SCANSI = ~VADL[0];           //SCANSI_(SCANSI) = N1A(VADL_0);
assign SCANTWE = ~ASL[16];          //SCANTWE_(SCANTWE) = N1A(ASL_17);
assign SCANTOCK = ~ASL[18];         //SCANTOCK_(SCANTOCK) = N1A(ASL_18);
assign SCANTCS = ~VADL[1];          //SCANTCS_(SCANTCS) = N1A(VADL_1);

/* Multiplex the shift outs with the actual address lines */
 
m_TMUX2 A0TMUX_(.OUT(VA[0]),.IN1(VAL[0]),.IN2(PRAMSO),.SEL(SCANEN));              //A0TMUX_(VA_0) = TMUX2 (VAL_0, PRAMSO, SCANEN);
m_TMUX2 A1TMUX_(.OUT(VA[1]),.IN1(VAL[1]),.IN2(DRAMSO),.SEL(SCANEN));              //A1TMUX_(VA_1) = TMUX2 (VAL_1, DRAMSO, SCANEN);
m_TMUX2 A2TMUX_(.OUT(VA[2]),.IN1(VAL[2]),.IN2(DROMSO),.SEL(SCANEN));              //A2TMUX_(VA_2) = TMUX2 (VAL_2, DROMSO, SCANEN);
m_TMUX2 A3TMUX_(.OUT(VA[3]),.IN1(VAL[3]),.IN2(VRAMSO),.SEL(SCANEN));              //A3TMUX_(VA_3) = TMUX2 (VAL_3, VRAMSO, SCANEN);
 
/* The vid module provides its own chip select, gate this with ramdis */

assign PALCS = PCS & RAMDISL;                   //PALCSPALCS_(PALCS) = AND2A (PCS, RAMDISL);

/* When the test pin is asserted reset is disabled (to prevent clearing of 
the test control register */

assign RESETL = ~(RESETI & TESTPINL);           //RESET_ (RESETL) = ND2C (RESETI, TESTPINL);

/* The parametric input test, controlled by TESTPIN, is viewed on the
HOLD output. */

assign HOLD = ~(TESTPINL ? HOLDL : TESTI[46]);  //HOLDTMUX_(HOLD) = MX21LB (TESTI_46, HOLDL, TESTPINL);

/* The ALU is tested by connecting it up to pins directly.

        A0-15   AD0-7 and A8-15
        B0-15   D8-15, AS16-19 and RD,WR,HSYNC and VSYNC
        S0-3    JOY0-2 and IOM
        CIN     ALE
        M       INTA

        F0-15   R0-3, G0-3, B0-3 and A4-7
        X       SCEL0
        Y       SCEL1
        CON     CSL0
        AEB     CSL1
*/
 
m_TMUX1 ALUA0_(.OUT(ALUA[0]),.IN1(X[0]),.IN2(VADL[0]),.SEL(ALUTST));        //ALUA0_(ALUA0) = TMUX1 (X_0, VADL_0, ALUTST);
m_TMUX1 ALUA1_(.OUT(ALUA[1]),.IN1(X[1]),.IN2(VADL[1]),.SEL(ALUTST));        //ALUA1_(ALUA1) = TMUX1 (X_1, VADL_1, ALUTST);
m_TMUX1 ALUA2_(.OUT(ALUA[2]),.IN1(X[2]),.IN2(VADL[2]),.SEL(ALUTST));        //ALUA2_(ALUA2) = TMUX1 (X_2, VADL_2, ALUTST);
m_TMUX1 ALUA3_(.OUT(ALUA[3]),.IN1(X[3]),.IN2(VADL[3]),.SEL(ALUTST));        //ALUA3_(ALUA3) = TMUX1 (X_3, VADL_3, ALUTST);
m_TMUX1 ALUA4_(.OUT(ALUA[4]),.IN1(X[4]),.IN2(VADL[4]),.SEL(ALUTST));        //ALUA4_(ALUA4) = TMUX1 (X_4, VADL_4, ALUTST);
m_TMUX1 ALUA5_(.OUT(ALUA[5]),.IN1(X[5]),.IN2(VADL[5]),.SEL(ALUTST));        //ALUA5_(ALUA5) = TMUX1 (X_5, VADL_5, ALUTST);
m_TMUX1 ALUA6_(.OUT(ALUA[6]),.IN1(X[6]),.IN2(VADL[6]),.SEL(ALUTST));        //ALUA6_(ALUA6) = TMUX1 (X_6, VADL_6, ALUTST);
m_TMUX1 ALUA7_(.OUT(ALUA[7]),.IN1(X[7]),.IN2(VADL[7]),.SEL(ALUTST));        //ALUA7_(ALUA7) = TMUX1 (X_7, VADL_7, ALUTST);
m_TMUX1 ALUA8_(.OUT(ALUA[8]),.IN1(X[8]),.IN2(VAL[8]),.SEL(ALUTST));         //ALUA8_(ALUA8) = TMUX1 (X_8, VAL_8, ALUTST);
m_TMUX1 ALUA9_(.OUT(ALUA[9]),.IN1(X[9]),.IN2(VAL[9]),.SEL(ALUTST));         //ALUA9_(ALUA9) = TMUX1 (X_9, VAL_9, ALUTST);
m_TMUX1 ALUA10_(.OUT(ALUA[10]),.IN1(X[10]),.IN2(VAL[10]),.SEL(ALUTST));     //ALUA10_(ALUA10) = TMUX1 (X_10, VAL_10, ALUTST);
m_TMUX1 ALUA11_(.OUT(ALUA[11]),.IN1(X[11]),.IN2(VAL[11]),.SEL(ALUTST));     //ALUA11_(ALUA11) = TMUX1 (X_11, VAL_11, ALUTST);
m_TMUX1 ALUA12_(.OUT(ALUA[12]),.IN1(X[12]),.IN2(VAL[12]),.SEL(ALUTST));     //ALUA12_(ALUA12) = TMUX1 (X_12, VAL_12, ALUTST);
m_TMUX1 ALUA13_(.OUT(ALUA[13]),.IN1(X[13]),.IN2(VAL[13]),.SEL(ALUTST));     //ALUA13_(ALUA13) = TMUX1 (X_13, VAL_13, ALUTST);
m_TMUX1 ALUA14_(.OUT(ALUA[14]),.IN1(X[14]),.IN2(VAL[14]),.SEL(ALUTST));     //ALUA14_(ALUA14) = TMUX1 (X_14, VAL_14, ALUTST);
m_TMUX1 ALUA15_(.OUT(ALUA[15]),.IN1(X[15]),.IN2(VAL[15]),.SEL(ALUTST));     //ALUA15_(ALUA15) = TMUX1 (X_15, VAL_15, ALUTST);
m_TMUX1 ALUB0_(.OUT(ALUB[0]),.IN1(DD[0]),.IN2(VDL[8]),.SEL(ALUTST));        //ALUB0_(ALUB0) = TMUX1 (DD_0, VDL_8, ALUTST);
m_TMUX1 ALUB1_(.OUT(ALUB[1]),.IN1(DD[1]),.IN2(VDL[9]),.SEL(ALUTST));        //ALUB1_(ALUB1) = TMUX1 (DD_1, VDL_9, ALUTST);
m_TMUX1 ALUB2_(.OUT(ALUB[2]),.IN1(DD[2]),.IN2(VDL[10]),.SEL(ALUTST));       //ALUB2_(ALUB2) = TMUX1 (DD_2, VDL_10, ALUTST);
m_TMUX1 ALUB3_(.OUT(ALUB[3]),.IN1(DD[3]),.IN2(VDL[11]),.SEL(ALUTST));       //ALUB3_(ALUB3) = TMUX1 (DD_3, VDL_11, ALUTST);
m_TMUX1 ALUB4_(.OUT(ALUB[4]),.IN1(DD[4]),.IN2(VDL[12]),.SEL(ALUTST));       //ALUB4_(ALUB4) = TMUX1 (DD_4, VDL_12, ALUTST);
m_TMUX1 ALUB5_(.OUT(ALUB[5]),.IN1(DD[5]),.IN2(VDL[13]),.SEL(ALUTST));       //ALUB5_(ALUB5) = TMUX1 (DD_5, VDL_13, ALUTST);
m_TMUX1 ALUB6_(.OUT(ALUB[6]),.IN1(DD[6]),.IN2(VDL[14]),.SEL(ALUTST));       //ALUB6_(ALUB6) = TMUX1 (DD_6, VDL_14, ALUTST);
m_TMUX1 ALUB7_(.OUT(ALUB[7]),.IN1(DD[7]),.IN2(VDL[15]),.SEL(ALUTST));       //ALUB7_(ALUB7) = TMUX1 (DD_7, VDL_15, ALUTST);
m_TMUX1 ALUB8_(.OUT(ALUB[8]),.IN1(DD[8]),.IN2(ASL[16]),.SEL(ALUTST));       //ALUB8_(ALUB8) = TMUX1 (DD_8, ASL_16, ALUTST);
m_TMUX1 ALUB9_(.OUT(ALUB[9]),.IN1(DD[9]),.IN2(ASL[17]),.SEL(ALUTST));       //ALUB9_(ALUB9) = TMUX1 (DD_9, ASL_17, ALUTST);
m_TMUX1 ALUB10_(.OUT(ALUB[10]),.IN1(DD[10]),.IN2(ASL[18]),.SEL(ALUTST));    //ALUB10_(ALUB10) = TMUX1 (DD_10, ASL_18, ALUTST);
m_TMUX1 ALUB11_(.OUT(ALUB[11]),.IN1(DD[11]),.IN2(ASL[19]),.SEL(ALUTST));    //ALUB11_(ALUB11) = TMUX1 (DD_11, ASL_19, ALUTST);
m_TMUX1 ALUB12_(.OUT(ALUB[12]),.IN1(DD[12]),.IN2(VRD),.SEL(ALUTST));        //ALUB12_(ALUB12) = TMUX1 (DD_12, VRD, ALUTST);
m_TMUX1 ALUB13_(.OUT(ALUB[13]),.IN1(DD[13]),.IN2(VWR),.SEL(ALUTST));        //ALUB13_(ALUB13) = TMUX1 (DD_13, VWR, ALUTST);
m_TMUX1 ALUB14_(.OUT(ALUB[14]),.IN1(DD[14]),.IN2(HLOCK),.SEL(ALUTST));      //ALUB14_(ALUB14) = TMUX1 (DD_14, HLOCK, ALUTST);
m_TMUX1 ALUB15_(.OUT(ALUB[15]),.IN1(DD[15]),.IN2(VLOCK),.SEL(ALUTST));      //ALUB15_(ALUB15) = TMUX1 (DD_15, VLOCK, ALUTST);
m_TMUX1 ALUS0_(.OUT(ALUS[0]),.IN1(S[0]),.IN2(PALL),.SEL(ALUTST));           //ALUS0_(ALUS0) = TMUX1 (S_0, PALL, ALUTST);
m_TMUX1 ALUS1_(.OUT(ALUS[1]),.IN1(S[1]),.IN2(PSRAML),.SEL(ALUTST));         //ALUS1_(ALUS1) = TMUX1 (S_1, PSRAML, ALUTST);
m_TMUX1 ALUS2_(.OUT(ALUS[2]),.IN1(S[2]),.IN2(FASTL),.SEL(ALUTST));          //ALUS2_(ALUS2) = TMUX1 (S_2, FASTL, ALUTST);
m_TMUX1 ALUS3_(.OUT(ALUS[3]),.IN1(S[3]),.IN2(IOML),.SEL(ALUTST));           //ALUS3_(ALUS3) = TMUX1 (S_3, IOML, ALUTST);
m_TMUX1 ALUACINL_(.OUT(ALUCINL),.IN1(CINL),.IN2(ALEL),.SEL(ALUTST));        //ALUCINL_(ALUCINL) = TMUX1 (CINL,ALEL, ALUTST);
m_TMUX1 ALUAM_(.OUT(ALUM),.IN1(M),.IN2(INTAL),.SEL(ALUTST));                //ALUM_(ALUM) = TMUX1 (M,INTAL, ALUTST);

m_TMUX2 ALUF0_(.OUT(R[0]),.IN1(RL[0]),.IN2(AZ[0]),.SEL(ALUTST));            //ALUF0_(R_0) = TMUX2 (RL_0, AZ_0, ALUTST);
m_TMUX2 ALUF1_(.OUT(R[1]),.IN1(RL[1]),.IN2(AZ[1]),.SEL(ALUTST));            //ALUF1_(R_1) = TMUX2 (RL_1, AZ_1, ALUTST);
m_TMUX2 ALUF2_(.OUT(R[2]),.IN1(RL[2]),.IN2(AZ[2]),.SEL(ALUTST));            //ALUF2_(R_2) = TMUX2 (RL_2, AZ_2, ALUTST);
m_TMUX2 ALUF3_(.OUT(R[3]),.IN1(RL[3]),.IN2(AZ[3]),.SEL(ALUTST));            //ALUF3_(R_3) = TMUX2 (RL_3, AZ_3, ALUTST);
m_TMUX2 ALUF4_(.OUT(G[0]),.IN1(GL[0]),.IN2(AZ[4]),.SEL(ALUTST));            //ALUF4_(G_0) = TMUX2 (GL_0, AZ_4, ALUTST);
m_TMUX2 ALUF5_(.OUT(G[1]),.IN1(GL[1]),.IN2(AZ[5]),.SEL(ALUTST));            //ALUF5_(G_1) = TMUX2 (GL_1, AZ_5, ALUTST);
m_TMUX2 ALUF6_(.OUT(G[2]),.IN1(GL[2]),.IN2(AZ[6]),.SEL(ALUTST));            //ALUF6_(G_2) = TMUX2 (GL_2, AZ_6, ALUTST);
m_TMUX2 ALUF7_(.OUT(G[3]),.IN1(GL[3]),.IN2(AZ[7]),.SEL(ALUTST));            //ALUF7_(G_3) = TMUX2 (GL_3, AZ_7, ALUTST);
m_TMUX2 ALUF8_(.OUT(B[0]),.IN1(BL[0]),.IN2(AZ[8]),.SEL(ALUTST));            //ALUF8_(B_0) = TMUX2 (BL_0, AZ_8, ALUTST);
m_TMUX2 ALUF9_(.OUT(B[1]),.IN1(BL[1]),.IN2(AZ[9]),.SEL(ALUTST));            //ALUF9_(B_1) = TMUX2 (BL_1, AZ_9, ALUTST);
m_TMUX2 ALUF10_(.OUT(B[2]),.IN1(BL[2]),.IN2(AZ[10]),.SEL(ALUTST));          //ALUF10_(B_2) = TMUX2 (BL_2, AZ_10, ALUTST);
m_TMUX2 ALUF11_(.OUT(B[3]),.IN1(BL[3]),.IN2(AZ[11]),.SEL(ALUTST));          //ALUF11_(B_3) = TMUX2 (BL_3, AZ_11, ALUTST);
m_TMUX2 ALUF12_(.OUT(VA[4]),.IN1(VAL[4]),.IN2(AZ[12]),.SEL(ALUTST));        //ALUF12_(VA_4) = TMUX2 (VAL_4, AZ_12, ALUTST);
m_TMUX2 ALUF13_(.OUT(VA[5]),.IN1(VAL[5]),.IN2(AZ[13]),.SEL(ALUTST));        //ALUF13_(VA_5) = TMUX2 (VAL_5, AZ_13, ALUTST);
m_TMUX2 ALUF14_(.OUT(VA[6]),.IN1(VAL[6]),.IN2(AZ[14]),.SEL(ALUTST));        //ALUF14_(VA_6) = TMUX2 (VAL_6, AZ_14, ALUTST);
m_TMUX2 ALUF15_(.OUT(VA[7]),.IN1(VAL[7]),.IN2(AZ[15]),.SEL(ALUTST));        //ALUF15_(VA_7) = TMUX2 (VAL_7, AZ_15, ALUTST);
m_TMUX2 ALUX0_(.OUT(SCEL[0]),.IN1(SCE[0]),.IN2(ALUX),.SEL(ALUTST));         //ALUX_(SCEL_0) = TMUX2 (SCE_0, ALUX, ALUTST);
m_TMUX2 ALUY0_(.OUT(SCEL[1]),.IN1(SCE[1]),.IN2(ALUY),.SEL(ALUTST));         //ALUY_(SCEL_1) = TMUX2 (SCE_1, ALUY, ALUTST);
m_TMUX2 ALUCOUTL0_(.OUT(CSL[0]),.IN1(CS[0]),.IN2(COUTL),.SEL(ALUTST));      //ALUCOUTL_(CSL_0) = TMUX2 (CS_0, COUTL, ALUTST);
m_TMUX2 ALUAEB_(.OUT(CSL[1]),.IN1(CS[1]),.IN2(ALUAEB),.SEL(ALUTST));        //ALUAEB_(CSL_1) = TMUX2 (CS_1, ALUAEB, ALUTST);

/* Mega Cell Blocks
   ---------------- */

/* DSP Program RAM, 256x16 */

MBRA14AA PROGRAM_(.WR(PRAMWR),.CS1(RAMDISL),.CS2(PRAMEN),.DI(PD),.A(PC[7:0]),.SO(PRAMSO),.DO(PDRAMo[15:0]),.DE(PDRAMe[15:0]));
                    //PROGRAM_(PRAMSO, PD_0, PD_1, PD_2, PD_3, PD_4, PD_5, PD_6, PD_7, PD_8, PD_9, 
                    //        PD_10, PD_11, PD_12, PD_13, PD_14, PD_15) 
                    //  = MBRA14AA (PRAMWR, NC/1/, RAMDISL, NC/1/, NC/1/, PRAMEN, 
                    //        SCANSCK, SCANSI, SCANEN, SCANTWE, SCANTOCK, SCANTCS,
                    //        PD_0, PD_1, PD_2, PD_3, PD_4, PD_5, 
                    //        PD_6, PD_7, PD_8, PD_9, PD_10, PD_11, PD_12, PD_13, PD_14, PD_15, 
                    //        PC_0, PC_1, PC_2, PC_3, PC_4, PC_5, PC_6, PC_7);

/* DSP Data RAM, 128x16 */

MBRA30AA DATARAM_(.WR(DRAMWR),.CS1(RAMDISL),.CS2(DRAMEN),.DI(DD),.A(DA[6:0]),.SO(DRAMSO),.DO(DDRAMo[15:0]),.DE(DDRAMe[15:0]));
                    //DATARAM_(DRAMSO, DD_0, DD_1, DD_2, DD_3, DD_4, DD_5, DD_6, DD_7, DD_8, DD_9, 
                    //        DD_10, DD_11, DD_12, DD_13, DD_14, DD_15) 
                    //  = MBRA30AA (DRAMWR, NC/1/, RAMDISL, NC/1/, NC/1/, DRAMEN, 
                    //        SCANSCK, SCANSI, SCANEN, SCANTWE, SCANTOCK, SCANTCS,
                    //        DD_0, DD_1, DD_2, DD_3, DD_4, DD_5, 
                    //        DD_6, DD_7, DD_8, DD_9, DD_10, DD_11, DD_12, DD_13, DD_14, DD_15, 
                    //        DA_0, DA_1, DA_2, DA_3, DA_4, DA_5, DA_6);

/* DSP Data ROM, 256x16 used, 256x24 actual */

TBR006AA DATAROM_(.OE(ROMEN),.A(DA[7:0]),.SO(DROMSO),.DO(DDROMo[15:0]),.DE(DDROMe[15:0]));
                    //DATAROM_(DROMSO, DUMMY_23, DUMMY_22, DUMMY_21, DUMMY_20, DUMMY_19, DUMMY_18, 
                    //        DUMMY_17, DUMMY_16, DD_15, DD_14, DD_13, DD_12, DD_11, DD_10, DD_9, 
                    //        DD_8, DD_7, DD_6, DD_5, DD_4, DD_3, DD_2, DD_1, DD_0)
                    //  = TBR006AA (SCANSCK, NC/1/, SCANTOCK, NC/1/, SCANEN, SCANSI, ROMEN,
                    //        DA_7, DA_6, DA_5, DA_4, DA_3, DA_2, DA_1, DA_0);

/* DSP Multiplier-accumulator, 16x16 with 36-bit addend */

DMB2212A MULTIPLIER_(.X(X),.Y(DD),.R(MZR),.TCX(TCX),.TCY(TCY),.Z(MZ));
                    //MULTIPLIER_(MZ_36, MZ_35, MZ_34, MZ_33, MZ_32, MZ_31, MZ_30, MZ_29, MZ_28, 
                    //        MZ_27, MZ_26, MZ_25, MZ_24, MZ_23, MZ_22, MZ_21, MZ_20, MZ_19, MZ_18, 
                    //        MZ_17, MZ_16, MZ_15, MZ_14, MZ_13, MZ_12, MZ_11, MZ_10, MZ_9, MZ_8, 
                    //        MZ_7, MZ_6, MZ_5, MZ_4, MZ_3, MZ_2, MZ_1, MZ_0)
                    // = DMB2212A (X_15, X_14, X_13, X_12, X_11, X_10, X_9, X_8, X_7, X_6, X_5, X_4, 
                    //        X_3, X_2, X_1, X_0, DD_15, DD_14, DD_13, DD_12, DD_11, DD_10, DD_9, 
                    //        DD_8, DD_7, DD_6, DD_5, DD_4, DD_3, DD_2, DD_1, DD_0, MZR_35, MZR_34, 
                    //        MZR_33, MZR_32, MZR_31, MZR_30, MZR_29, MZR_28, MZR_27, MZR_26, 
                    //        MZR_25, MZR_24, MZR_23, MZR_22, MZR_21, MZR_20, MZR_19, MZR_18, 
                    //        MZR_17, MZR_16, MZR_15, MZR_14, MZR_13, MZR_12, MZR_11, MZR_10, 
                    //        MZR_9, MZR_8, MZR_7, MZR_6, MZR_5, MZR_4, MZR_3, MZR_2, MZR_1, 
                    //        MZR_0, TCX, TCY);

/* DSP ALU, 16 bit, 74181 type */

DFT1811A ALU_(.S(ALUS),.A(ALUA),.B(ALUB),.CI(ALUCINL),.M(ALUM),.X(ALUX),.Y(ALUY),.CO(COUTL),.Z(AZ),.AEB(ALUAEB));
                    //ALU_(ALUX, ALUY, COUTL, AZ_15, AZ_14, AZ_13, AZ_12, AZ_11, AZ_10, AZ_9, AZ_8,
                    //        AZ_7, AZ_6, AZ_5, AZ_4, AZ_3, AZ_2, AZ_1, AZ_0, ALUAEB)
                    // = DFT1811A (ALUS3, ALUS2, ALUS1, ALUS0, ALUA15, ALUA14, ALUA13, 
                    //        ALUA12, ALUA11, ALUA10, ALUA9, ALUA8, ALUA7, ALUA6, ALUA5, 
                    //        ALUA4, ALUA3, ALUA2, ALUA1, ALUA0, ALUB15, ALUB14, ALUB13, 
                    //        ALUB12, ALUB11, ALUB10, ALUB9, ALUB8, ALUB7, ALUB6, ALUB5, 
                    //        ALUB4, ALUB3, ALUB2, ALUB1, ALUB0, ALUCINL, ALUM);

/* Video Palette RAM, 256x16 */

MBRA14AA PALRAM_(.WR(PWE),.CS1(PALCS),.CS2(POE),.DI(PALD),.A(PA[7:0]),.SO(VRAMSO),.DO(PALDRAMo[15:0]),.DE(PALDRAMe[15:0]));
                    //PALRAM_(VRAMSO, PALD_0, PALD_1, PALD_2, PALD_3, PALD_4, PALD_5, PALD_6, 
                    //        PALD_7, PALD_8, PALD_9, PALD_10, PALD_11, PALD_12, PALD_13, PALD_14, 
                    //        PALD_15) 
                    //  = MBRA14AA (PWE, NC/1/, PALCS, NC/1/, NC/1/, POE, 
                    //        SCANSCK, SCANSI, SCANEN, SCANTWE, SCANTOCK, SCANTCS,
                    //        PALD_0, PALD_1, PALD_2, PALD_3, PALD_4, PALD_5, PALD_6, PALD_7,
                    //        PALD_8, PALD_9, PALD_10, PALD_11, PALD_12, PALD_13, PALD_14, PALD_15, 
                    //        PA_0, PA_1, PA_2, PA_3, PA_4, PA_5, PA_6, PA_7);

/* The Input and Output Pads
   ------------------------- */
/* WARNING - Everything is 4mA drive, check for actual requirements */

/* Processor multiplexed address and data bus */

BD4TNR AD_0(.MasterClock(MasterClock), .O(outXAD_0),.E(enXAD_0),.ZI(VADL[0]),.PO(TESTI[26]),.I(inXAD_0),.A(VAD[0]),.EN(DDIS),.TN(ADEN),.PI(TESTI[25]));     //AD_0_(XAD_0, VADL_0, TESTI_26) = &BD4TNR (XAD_0, VAD_0, DDIS, ADEN, TESTI_25);
BD4TNR AD_1(.MasterClock(MasterClock), .O(outXAD_1),.E(enXAD_1),.ZI(VADL[1]),.PO(TESTI[24]),.I(inXAD_1),.A(VAD[1]),.EN(DDIS),.TN(ADEN),.PI(TESTI[23]));     //AD_1_(XAD_1, VADL_1, TESTI_24) = &BD4TNR (XAD_1, VAD_1, DDIS, ADEN, TESTI_23);
BD4TNR AD_2(.MasterClock(MasterClock), .O(outXAD_2),.E(enXAD_2),.ZI(VADL[2]),.PO(TESTI[23]),.I(inXAD_2),.A(VAD[2]),.EN(DDIS),.TN(ADEN),.PI(TESTI[22]));     //AD_2_(XAD_2, VADL_2, TESTI_23) = &BD4TNR (XAD_2, VAD_2, DDIS, ADEN, TESTI_22);
BD4TNR AD_3(.MasterClock(MasterClock), .O(outXAD_3),.E(enXAD_3),.ZI(VADL[3]),.PO(TESTI[22]),.I(inXAD_3),.A(VAD[3]),.EN(DDIS),.TN(ADEN),.PI(TESTI[21]));     //AD_3_(XAD_3, VADL_3, TESTI_22) = &BD4TNR (XAD_3, VAD_3, DDIS, ADEN, TESTI_21);
BD4TNR AD_4(.MasterClock(MasterClock), .O(outXAD_4),.E(enXAD_4),.ZI(VADL[4]),.PO(TESTI[20]),.I(inXAD_4),.A(VAD[4]),.EN(DDIS),.TN(ADEN),.PI(TESTI[19]));     //AD_4_(XAD_4, VADL_4, TESTI_20) = &BD4TNR (XAD_4, VAD_4, DDIS, ADEN, TESTI_19);
BD4TNR AD_5(.MasterClock(MasterClock), .O(outXAD_5),.E(enXAD_5),.ZI(VADL[5]),.PO(TESTI[18]),.I(inXAD_5),.A(VAD[5]),.EN(DDIS),.TN(ADEN),.PI(TESTI[17]));     //AD_5_(XAD_5, VADL_5, TESTI_18) = &BD4TNR (XAD_5, VAD_5, DDIS, ADEN, TESTI_17);
BD4TNR AD_6(.MasterClock(MasterClock), .O(outXAD_6),.E(enXAD_6),.ZI(VADL[6]),.PO(TESTI[16]),.I(inXAD_6),.A(VAD[6]),.EN(DDIS),.TN(ADEN),.PI(TESTI[15]));     //AD_6_(XAD_6, VADL_6, TESTI_16) = &BD4TNR (XAD_6, VAD_6, DDIS, ADEN, TESTI_15);
BD4TNR AD_7(.MasterClock(MasterClock), .O(outXAD_7),.E(enXAD_7),.ZI(VADL[7]),.PO(TESTI[15]),.I(inXAD_7),.A(VAD[7]),.EN(DDIS),.TN(ADEN),.PI(TESTI[14]));     //AD_7_(XAD_7, VADL_7, TESTI_15) = &BD4TNR (XAD_7, VAD_7, DDIS, ADEN, TESTI_14);

/* Processor address bus */

BD4TNR A_8 (.MasterClock(MasterClock), .O(outXA_8 ),.E(enXA_8 ),.ZI(VAL[8 ]),.PO(TESTI[13]),.I(inXA_8 ),.A(VA[8 ]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[12]));     //A_8_(XA_8, VAL_8, TESTI_13) = &BD4TNR (XA_8, VA_8, TRIDIS, AEN, TESTI_12);
BD4TNR A_9 (.MasterClock(MasterClock), .O(outXA_9 ),.E(enXA_9 ),.ZI(VAL[9 ]),.PO(TESTI[12]),.I(inXA_9 ),.A(VA[9 ]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[11]));     //A_9_(XA_9, VAL_9, TESTI_12) = &BD4TNR (XA_9, VA_9, TRIDIS, AEN, TESTI_11);
BD4TNR A_10(.MasterClock(MasterClock), .O(outXA_10),.E(enXA_10),.ZI(VAL[10]),.PO(TESTI[11]),.I(inXA_10),.A(VA[10]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[10]));     //A_10_(XA_10, VAL_10, TESTI_11) = &BD4TNR (XA_10, VA_10, TRIDIS, AEN, TESTI_10);
BD4TNR A_11(.MasterClock(MasterClock), .O(outXA_11),.E(enXA_11),.ZI(VAL[11]),.PO(TESTI[9] ),.I(inXA_11),.A(VA[11]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[8] ));     //A_11_(XA_11, VAL_11, TESTI_9) = &BD4TNR (XA_11, VA_11, TRIDIS, AEN, TESTI_8);
BD4TNR A_12(.MasterClock(MasterClock), .O(outXA_12),.E(enXA_12),.ZI(VAL[12]),.PO(TESTI[7] ),.I(inXA_12),.A(VA[12]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[6] ));     //A_12_(XA_12, VAL_12, TESTI_7) = &BD4TNR (XA_12, VA_12, TRIDIS, AEN, TESTI_6);
BD4TNR A_13(.MasterClock(MasterClock), .O(outXA_13),.E(enXA_13),.ZI(VAL[13]),.PO(TESTI[5] ),.I(inXA_13),.A(VA[13]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[4] ));     //A_13_(XA_13, VAL_13, TESTI_5) = &BD4TNR (XA_13, VA_13, TRIDIS, AEN, TESTI_4);
BD4TNR A_14(.MasterClock(MasterClock), .O(outXA_14),.E(enXA_14),.ZI(VAL[14]),.PO(TESTI[3] ),.I(inXA_14),.A(VA[14]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[2] ));     //A_14_(XA_14, VAL_14, TESTI_3) = &BD4TNR (XA_14, VA_14, TRIDIS, AEN, TESTI_2);
BD4TNR A_15(.MasterClock(MasterClock), .O(outXA_15),.E(enXA_15),.ZI(VAL[15]),.PO(TESTI[2] ),.I(inXA_15),.A(VA[15]),.EN(TRIDIS),.TN(AEN),.PI(TESTI[1] ));     //A_15_(XA_15, VAL_15, TESTI_2) = &BD4TNR (XA_15, VA_15, TRIDIS, AEN, TESTI_1);

/* High byte of the data bus */                   

BD4TNR D_8 (.MasterClock(MasterClock), .O(outXD_8 ),.E(enXD_8 ),.ZI(VDL[8 ]),.PO(TESTI[36]),.I(inXD_8 ),.A(VD[8 ]),.EN(DDIS),.TN(DEN),.PI(TESTI[35]));     //D_8_(XD_8, VDL_8, TESTI_36) = &BD4TNR (XD_8, VD_8, DDIS, DEN, TESTI_35);
BD4TNR D_9 (.MasterClock(MasterClock), .O(outXD_9 ),.E(enXD_9 ),.ZI(VDL[9 ]),.PO(TESTI[35]),.I(inXD_9 ),.A(VD[9 ]),.EN(DDIS),.TN(DEN),.PI(TESTI[34]));     //D_9_(XD_9, VDL_9, TESTI_35) = &BD4TNR (XD_9, VD_9, DDIS, DEN, TESTI_34);
BD4TNR D_10(.MasterClock(MasterClock), .O(outXD_10),.E(enXD_10),.ZI(VDL[10]),.PO(TESTI[34]),.I(inXD_10),.A(VD[10]),.EN(DDIS),.TN(DEN),.PI(TESTI[33]));     //D_10_(XD_10, VDL_10, TESTI_34) = &BD4TNR (XD_10, VD_10, DDIS, DEN, TESTI_33);
BD4TNR D_11(.MasterClock(MasterClock), .O(outXD_11),.E(enXD_11),.ZI(VDL[11]),.PO(TESTI[33]),.I(inXD_11),.A(VD[11]),.EN(DDIS),.TN(DEN),.PI(TESTI[32]));     //D_11_(XD_11, VDL_11, TESTI_33) = &BD4TNR (XD_11, VD_11, DDIS, DEN, TESTI_32);
BD4TNR D_12(.MasterClock(MasterClock), .O(outXD_12),.E(enXD_12),.ZI(VDL[12]),.PO(TESTI[32]),.I(inXD_12),.A(VD[12]),.EN(DDIS),.TN(DEN),.PI(TESTI[31]));     //D_12_(XD_12, VDL_12, TESTI_32) = &BD4TNR (XD_12, VD_12, DDIS, DEN, TESTI_31);
BD4TNR D_13(.MasterClock(MasterClock), .O(outXD_13),.E(enXD_13),.ZI(VDL[13]),.PO(TESTI[31]),.I(inXD_13),.A(VD[13]),.EN(DDIS),.TN(DEN),.PI(TESTI[30]));     //D_13_(XD_13, VDL_13, TESTI_31) = &BD4TNR (XD_13, VD_13, DDIS, DEN, TESTI_30);
BD4TNR D_14(.MasterClock(MasterClock), .O(outXD_14),.E(enXD_14),.ZI(VDL[14]),.PO(TESTI[30]),.I(inXD_14),.A(VD[14]),.EN(DDIS),.TN(DEN),.PI(TESTI[29]));     //D_14_(XD_14, VDL_14, TESTI_30) = &BD4TNR (XD_14, VD_14, DDIS, DEN, TESTI_29);
BD4TNR D_15(.MasterClock(MasterClock), .O(outXD_15),.E(enXD_15),.ZI(VDL[15]),.PO(TESTI[29]),.I(inXD_15),.A(VD[15]),.EN(DDIS),.TN(DEN),.PI(TESTI[28]));     //D_15_(XD_15, VDL_15, TESTI_29) = &BD4TNR (XD_15, VD_15, DDIS, DEN, TESTI_28);

/* Processor control signals */
 
TLCHN RDL_(.MasterClock(MasterClock), .O(VRD),.PO(TESTI[14]),.I(XRDL),.PI(TESTI[13]));                 //RDL_(VRD, TESTI_14) = &TLCHN (XRDL, TESTI_13);
TLCHN WRL_(.MasterClock(MasterClock), .O(VWR),.PO(TESTI[19]),.I(XWRL),.PI(TESTI[18]));                 //WRL_(VWR, TESTI_19) = &TLCHN (XWRL, TESTI_18);
 
assign INT = ~INTL;                                                         //INT_(INT) = N1A (INTL);
BT4OS INTR_ (.Z(XINTR),.EN(INT),.TN(TRIDISL));                              //INTR_(XINTR) = &BT4OS (INT, TRIDISL);
TLCHN IOM_ (.MasterClock(MasterClock), .O(IOML) ,.PO(TESTI[21]),.I(XIOM) ,.PI(TESTI[20]));             //IOM_(IOML, TESTI_21) = &TLCHN (XIOM, TESTI_20);
TLCHN ALE_ (.MasterClock(MasterClock), .O(ALEL) ,.PO(TESTI[25]),.I(XALE) ,.PI(TESTI[24]));             //ALE_(ALEL, TESTI_25) = &TLCHN (XALE, TESTI_24);
TLCHN INTA_(.MasterClock(MasterClock), .O(INTAL),.PO(TESTI[27]),.I(XINTA),.PI(TESTI[26]));             //INTA_(INTAL, TESTI_27) = &TLCHN (XINTA, TESTI_26);
TLCHN HLDA_(.MasterClock(MasterClock), .O(HLDAL),.PO(TESTI[17]),.I(XHLDA),.PI(TESTI[16]));             //HLDA_(HLDAL, TESTI_17) = &TLCHN (XHLDA, TESTI_16);
 
/* Processor multiplexed address and status bus */

TLCHN AS_16_ (.MasterClock(MasterClock), .O(ASL[16]) ,.PO(TESTI[4] ),.I(XAS_16) ,.PI(TESTI[3]));       //AS_16_(ASL_16, TESTI_4) = &TLCHN (XAS_16, TESTI_3);
TLCHN AS_17_ (.MasterClock(MasterClock), .O(ASL[17]) ,.PO(TESTI[6] ),.I(XAS_17) ,.PI(TESTI[5]));       //AS_17_(ASL_17, TESTI_6) = &TLCHN (XAS_17, TESTI_5);
TLCHN AS_18_ (.MasterClock(MasterClock), .O(ASL[18]) ,.PO(TESTI[8] ),.I(XAS_18) ,.PI(TESTI[7]));       //AS_18_(ASL_18, TESTI_8) = &TLCHN (XAS_18, TESTI_7);
TLCHN AS_19_ (.MasterClock(MasterClock), .O(ASL[19]) ,.PO(TESTI[10]),.I(XAS_19) ,.PI(TESTI[9]));       //AS_19_(ASL_19, TESTI_10) = &TLCHN (XAS_19, TESTI_9);

/* Video synchronisation signals */

BD4TNOD XVSYNC_(.MasterClock(MasterClock), .O(outXVSYNCL),.E(enXVSYNCL),.ZI(VLOCK),.PO(TESTI[45]),.I(inXVSYNCL),.EN(TRIDIS),.TN(VSYNC),.PI(TESTI[44]));     //XVSYNC_(XVSYNCL, VLOCK, TESTI_45) = &BD4TNOD (XVSYNCL, TRIDIS, VSYNC, TESTI_44);
BD4TNOD XHSYNC_(.MasterClock(MasterClock), .O(outXHSYNCL),.E(enXHSYNCL),.ZI(HLOCK),.PO(TESTI[46]),.I(inXHSYNCL),.EN(TRIDIS),.TN(HSYNC),.PI(TESTI[45]));     //XHSYNC_(XHSYNCL, HLOCK, TESTI_46) = &BD4TNOD (XHSYNCL, TRIDIS, HSYNC, TESTI_45);

/* System IO */

BD4TNR JOYL_0_(.MasterClock(MasterClock), .O(outXJOYL_0 ),.E(enXJOYL_0 ),.ZI(PALL  ),.PO(TESTI[37]),.I(inXJOYL_0 ),.A(JOYL[0]),.EN(TRIDIS),.TN(TESTENL),.PI(TESTI[36]));     //JOYL_0_(XJOYL_0, PALL, TESTI_37) = &BD4TNR (XJOYL_0, JOYL_0, TRIDIS, TESTENL, TESTI_36);
BD4TNR JOYL_1_(.MasterClock(MasterClock), .O(outXJOYL_1 ),.E(enXJOYL_1 ),.ZI(PSRAML),.PO(TESTI[38]),.I(inXJOYL_1 ),.A(JOYL[1]),.EN(TRIDIS),.TN(TESTENL),.PI(TESTI[37]));     //JOYL_1_(XJOYL_1, PSRAML, TESTI_38) = &BD4TNR (XJOYL_1, JOYL_1, TRIDIS, TESTENL, TESTI_37);
BD4TNR JOYL_2_(.MasterClock(MasterClock), .O(outXJOYL_2 ),.E(enXJOYL_2 ),.ZI(FASTL ),.PO(TESTI[39]),.I(inXJOYL_2 ),.A(JOYL[2]),.EN(TRIDIS),.TN(TESTENL),.PI(TESTI[38]));     //JOYL_2_(XJOYL_2, FASTL, TESTI_39) = &BD4TNR (XJOYL_2, JOYL_2, TRIDIS, TESTENL, TESTI_38);

/* Test input for parametric input pin test */

IBUFND TESTPIN_(.Z(TESTPINL),.PO(TESTPINPO),.A(XTESTPIN),.PI(1));               // TESTPIN_(TESTPINL, TESTPINPO) = &IBUFND (XTESTPIN, NC/1/);

/* System reset */

SCHMITC RESETPIN_(.MasterClock(MasterClock), .Z(RESETI),.PO(TESTI[28]),.A(XRESET),.PI(TESTI[27]));          //RESETPIN_(RESETI, TESTI_28) = &SCHMITC (XRESET, TESTI_27);

/* Crystal oscillator and buffer */

assign XXTALO = ~XXTAL;             // XTALPAD_(XXTALO, XTALLI, TESTI_1) = OSC10SCN (XXTAL, NC/1/);
assign XTALLI = XXTAL;              // XTALPAD_(XXTALO, XTALLI, TESTI_1) = OSC10SCN (XXTAL, NC/1/);
assign TESTI[1] = 1;                // XTALPAD_(XXTALO, XTALLI, TESTI_1) = OSC10SCN (XXTAL, NC/1/);
assign XTALL = XTALLI;              // XTALBUF_(XTALL) = B1I (XTALLI);

/* Analogue ramp inputs */

SCHMITCN AI_0_(.MasterClock(MasterClock), .Z(AIL[0]),.PO(TESTI[41]),.A(XAI_0),.PI(TESTI[40]));          //AI_0_(AIL_0, TESTI_41) = &SCHMITCN (XAI_0, TESTI_40);
SCHMITCN AI_1_(.MasterClock(MasterClock), .Z(AIL[1]),.PO(TESTI[42]),.A(XAI_1),.PI(TESTI[41]));          //AI_1_(AIL_1, TESTI_42) = &SCHMITCN (XAI_1, TESTI_41);
SCHMITCN AI_2_(.MasterClock(MasterClock), .Z(AIL[2]),.PO(TESTI[43]),.A(XAI_2),.PI(TESTI[42]));          //AI_2_(AIL_2, TESTI_43) = &SCHMITCN (XAI_2, TESTI_42);

/* Analogue input multiplexer select */

assign XAISEL = AISEL;                                                     //AISEL_(XAISEL) = &B4R (AISEL);

/* Light-pen input */

IBUFN LP_(.Z(LP),.PO(TESTI[44]),.A(XLPL),.PI(TESTI[43]));        //LP_(LP, TESTI_44) = &IBUFN (XLPL, TESTI_43);

/* Address bus outputs */

assign VA[16] = ~VAL[16];              // AL_16_(VA_16) = N1A (VAL_16);
assign VA[17] = ~VAL[17];              // AL_17_(VA_17) = N1A (VAL_17);
assign XA_0 = VA[0];                   // A_0_(XA_0) = &B4 (VA_0);
assign XA_1 = VA[1];                   // A_1_(XA_1) = &B4 (VA_1);
assign XA_2 = VA[2];                   // A_2_(XA_2) = &B4 (VA_2);
assign XA_3 = VA[3];                   // A_3_(XA_3) = &B4 (VA_3);
assign XA_4 = VA[4];                   // A_4_(XA_4) = &B4 (VA_4);
assign XA_5 = VA[5];                   // A_5_(XA_5) = &B4 (VA_5);
assign XA_6 = VA[6];                   // A_6_(XA_6) = &B4 (VA_6);
assign XA_7 = VA[7];                   // A_7_(XA_7) = &B4 (VA_7);
assign XA_16 = VA[16];                 // A_16_(XA_16) = &B4 (VA_16);
assign XA_17 = VA[17];                 // A_17_(XA_17) = &B4R (VA_17);

/* Processor control signals */

assign XPCLK = PCLKL;                   // PCLK_(XPCLK) = &B4 (PCLKL);
assign XHOLD = HOLD;                    // HOLD_(XHOLD) = &B4R (HOLD);

/* Memory control signals */

assign XSCEL_0 = SCEL[0];               // SCEL_0_(XSCEL_0) = &B4 (SCEL_0);
assign XSCEL_1 = SCEL[1];               // SCEL_1_(XSCEL_1) = &B4 (SCEL_1);
assign WEL = ~WE;                       // WE_(WEL) = N1B (WE);
assign XWEL = WEL;                      // WEL_(XWEL) = &B4 (WEL);
assign XCSL_0 = CSL[0];                 // CSL_0_(XCSL_0) = &B4 (CSL_0);
assign XCSL_1 = CSL[1];                 // CSL_1_(XCSL_1) = &B4 (CSL_1);
assign OEL = ~OE;                       // OE_(OEL) = N1B (OE);
assign XOEL = OEL;                      // OEL_(XOEL) = &B4 (OEL);
assign CASL = ~CAS;                     // CAS_(CASL) = N1B (CAS);
assign XCASL = CASL;                    // CASL_(XCASL) = &B4 (CASL);

/* Video outputs */

assign XR_0 = R[0];                     // R_0_(XR_0) = &B8R (R_0);
assign XR_1 = R[1];                     // R_1_(XR_1) = &B8R (R_1);
assign XR_2 = R[2];                     // R_2_(XR_2) = &B8R (R_2);
assign XR_3 = R[3];                     // R_3_(XR_3) = &B8R (R_3);
assign XG_0 = G[0];                     // G_0_(XG_0) = &B8R (G_0);
assign XG_1 = G[1];                     // G_1_(XG_1) = &B8R (G_1);
assign XG_2 = G[2];                     // G_2_(XG_2) = &B8R (G_2);
assign XG_3 = G[3];                     // G_3_(XG_3) = &B8R (G_3);
assign XB_0 = B[0];                     // B_0_(XB_0) = &B8R (B_0);
assign XB_1 = B[1];                     // B_1_(XB_1) = &B8R (B_1);
assign XB_2 = B[2];                     // B_2_(XB_2) = &B8R (B_2);
assign XB_3 = B[3];                     // B_3_(XB_3) = &B8R (B_3);
assign CHROMA = ~CHROMAL;               // CHROMAL_(CHROMA) = N1A (CHROMAL);
assign XCHROMA = CHROMA;                // CHROMA_(XCHROMA) = &B4R (CHROMA);
assign INC = ~INCL;                     // INCL_(INC) = N1A (INCL);
assign XINC = INC;                      // INC_(XINC) = &B4R (INC);

/* Audio outputs */

assign XLEFTL = LEFTL;                  // LEFTL_(XLEFTL) = &B8R (LEFTL);
assign XLEFTH = LEFTH;                  // LEFTH_(XLEFTH) = &B8R (LEFTH);
assign XRIGHTL = RIGHTL;                // RIGHTL_(XRIGHTL) = &B8R (RIGHTL);
assign XRIGHTH = RIGHTH;                // RIGHTH_(XRIGHTH) = &B8R (RIGHTH);

/* DSP Input / Output */

BD4TR DSP_IO_(.MasterClock(MasterClock), .O(outXDSP_IO),.E(enXDSP_IO),.ZI(DSP_IN),.PO(TESTI[40]),.I(inXDSP_IO),.A(DSP_OUT),.EN(TRIDIS),.TN(DSP_EN),.PI(TESTI[39]));     //DSP_IO_(XDSP_IO, DSP_IN, TESTI_40) = &BD4TR (XDSP_IO, DSP_OUT, TRIDIS, DSP_EN, TESTI_39);

/* General purpose input/output enables */

assign XGPIOL_0 = GPIOL[0];             // GPIOL_0_(XGPIOL_0) = &B4R(GPIOL_0);
assign XGPIOL_1 = GPIOL[1];             // GPIOL_1_(XGPIOL_1) = &B4R(GPIOL_1);


// COMBINING SIGNALS
always @(posedge MasterClock)
begin
    A <= (AVIDo & AVIDe) | (ABLITo & ABLITe) | (ADSPo & ADSPe);
    SLIPADDRESS <= A;

    D <= (DVIDo & DVIDe) | (DBLITo & DBLITe) | (DDSPo & DDSPe);
    PALD <= (PALDVIDo & PALDVIDe) | (PALDRAMo & PALDRAMe);
    DD <= (DDDSPo & DDDSPe) | (DDRAMo & DDRAMe) | (DDROMo & DDROMe);
    PD <= (PDDSPo & PDDSPe) | (PDRAMo & PDRAMe);
end

endmodule
