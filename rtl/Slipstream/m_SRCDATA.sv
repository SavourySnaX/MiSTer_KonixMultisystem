                                                                                //[SRCDATA.NET:00001] COMPILE;
                                                                                //[SRCDATA.NET:00002] DIRECTORY MASTER;
/****************************************************************************
srcdata.hdl
10/10/88

Source Data Register

This register holds the data read during the source data read cycle of the 
inner loop.  Provision is made to swap the low and high nybbles of the
low byte in hires mode if necessary.

When the source data register is loaded with pattern data it is necessary to
load the high byte of the register from the low byte of the data bus.  This
is given by the signal srcltoh.

****************************************************************************/


module m_SRCDATA                                                                //[SRCDATA.NET:00020] MODULE SRCDATA;
(                                                                               //[SRCDATA.NET:00020] MODULE SRCDATA;

    input    MasterClock,
    input    ID_0,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_1,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_2,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_3,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_4,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_5,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_6,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_7,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_8,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_9,                                                              //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_10,                                                             //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_11,                                                             //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_12,                                                             //[SRCDATA.NET:00022] INPUTS	ID_0,ID_1,ID_2,ID_3,ID_4,ID_5,ID_6,ID_7,ID_8,ID_9,ID_10,ID_11,ID_12,
    input    ID_13,                                                             //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
    input    ID_14,                                                             //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
    input    ID_15,                                                             //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
    input    LDSRCL,                                                            //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
    input    SRCLTOH,                                                           //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
    input    SSWAP,                                                             //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
                                                                                //[SRCDATA.NET:00023]    ID_13,ID_14,ID_15,LDSRCL,SRCLTOH,SSWAP;
    output    SRCD_0,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_1,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_2,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_3,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_4,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_5,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_6,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_7,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_8,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_9,                                                           //[SRCDATA.NET:00024] OUTPUTS	SRCD_0,SRCD_1,SRCD_2,SRCD_3,SRCD_4,SRCD_5,SRCD_6,SRCD_7,SRCD_8,SRCD_9,
    output    SRCD_10,                                                          //[SRCDATA.NET:00025]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    output    SRCD_11,                                                          //[SRCDATA.NET:00025]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    output    SRCD_12,                                                          //[SRCDATA.NET:00025]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    output    SRCD_13,                                                          //[SRCDATA.NET:00025]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    output    SRCD_14,                                                          //[SRCDATA.NET:00025]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
    output    SRCD_15                                                           //[SRCDATA.NET:00025]    SRCD_10,SRCD_11,SRCD_12,SRCD_13,SRCD_14,SRCD_15;
);                                                                              //[SRCDATA.NET:00020] MODULE SRCDATA;
                                                                                //[SRCDATA.NET:00026] LEVEL FUNCTION;
wire SRCLTOHL;                                                                  //[SRCDATA.NET:00031] SRCLTOHL_(SRCLTOHL) = N1B(SRCLTOH);
wire SDI_8;                                                                     //[SRCDATA.NET:00032] SDI_8_(SDI_8) = AO2A(SRCLTOH,ID_0,SRCLTOHL,ID_8);
wire SDI_9;                                                                     //[SRCDATA.NET:00033] SDI_9_(SDI_9) = AO2A(SRCLTOH,ID_1,SRCLTOHL,ID_9);
wire SDI_10;                                                                    //[SRCDATA.NET:00034] SDI_10_(SDI_10) = AO2A(SRCLTOH,ID_2,SRCLTOHL,ID_10);
wire SDI_11;                                                                    //[SRCDATA.NET:00035] SDI_11_(SDI_11) = AO2A(SRCLTOH,ID_3,SRCLTOHL,ID_11);
wire SDI_12;                                                                    //[SRCDATA.NET:00036] SDI_12_(SDI_12) = AO2A(SRCLTOH,ID_4,SRCLTOHL,ID_12);
wire SDI_13;                                                                    //[SRCDATA.NET:00037] SDI_13_(SDI_13) = AO2A(SRCLTOH,ID_5,SRCLTOHL,ID_13);
wire SDI_14;                                                                    //[SRCDATA.NET:00038] SDI_14_(SDI_14) = AO2A(SRCLTOH,ID_6,SRCLTOHL,ID_14);
wire SDI_15;                                                                    //[SRCDATA.NET:00039] SDI_15_(SDI_15) = AO2A(SRCLTOH,ID_7,SRCLTOHL,ID_15);
wire SDINT_0;                                                                   //[SRCDATA.NET:00043] SRCDL_0_(SDINT_0,SDINTL_0) = LD2A(ID_0,LDSRCL);
wire SDINTL_0;                                                                  //[SRCDATA.NET:00043] SRCDL_0_(SDINT_0,SDINTL_0) = LD2A(ID_0,LDSRCL);
wire SDINT_1;                                                                   //[SRCDATA.NET:00044] SRCDL_1_(SDINT_1,SDINTL_1) = LD2A(ID_1,LDSRCL);
wire SDINTL_1;                                                                  //[SRCDATA.NET:00044] SRCDL_1_(SDINT_1,SDINTL_1) = LD2A(ID_1,LDSRCL);
wire SDINT_2;                                                                   //[SRCDATA.NET:00045] SRCDL_2_(SDINT_2,SDINTL_2) = LD2A(ID_2,LDSRCL);
wire SDINTL_2;                                                                  //[SRCDATA.NET:00045] SRCDL_2_(SDINT_2,SDINTL_2) = LD2A(ID_2,LDSRCL);
wire SDINT_3;                                                                   //[SRCDATA.NET:00046] SRCDL_3_(SDINT_3,SDINTL_3) = LD2A(ID_3,LDSRCL);
wire SDINTL_3;                                                                  //[SRCDATA.NET:00046] SRCDL_3_(SDINT_3,SDINTL_3) = LD2A(ID_3,LDSRCL);
wire SDINT_4;                                                                   //[SRCDATA.NET:00047] SRCDL_4_(SDINT_4,SDINTL_4) = LD2A(ID_4,LDSRCL);
wire SDINTL_4;                                                                  //[SRCDATA.NET:00047] SRCDL_4_(SDINT_4,SDINTL_4) = LD2A(ID_4,LDSRCL);
wire SDINT_5;                                                                   //[SRCDATA.NET:00048] SRCDL_5_(SDINT_5,SDINTL_5) = LD2A(ID_5,LDSRCL);
wire SDINTL_5;                                                                  //[SRCDATA.NET:00048] SRCDL_5_(SDINT_5,SDINTL_5) = LD2A(ID_5,LDSRCL);
wire SDINT_6;                                                                   //[SRCDATA.NET:00049] SRCDL_6_(SDINT_6,SDINTL_6) = LD2A(ID_6,LDSRCL);
wire SDINTL_6;                                                                  //[SRCDATA.NET:00049] SRCDL_6_(SDINT_6,SDINTL_6) = LD2A(ID_6,LDSRCL);
wire SDINT_7;                                                                   //[SRCDATA.NET:00050] SRCDL_7_(SDINT_7,SDINTL_7) = LD2A(ID_7,LDSRCL);
wire SDINTL_7;                                                                  //[SRCDATA.NET:00050] SRCDL_7_(SDINT_7,SDINTL_7) = LD2A(ID_7,LDSRCL);
wire SRCDL_8;                                                                   //[SRCDATA.NET:00051] SRCDL_8_(SRCDL_8,SRCD_8) = LD2A(SDI_8,LDSRCL);
wire SRCDL_9;                                                                   //[SRCDATA.NET:00052] SRCDL_9_(SRCDL_9,SRCD_9) = LD2A(SDI_9,LDSRCL);
wire SRCDL_10;                                                                  //[SRCDATA.NET:00053] SRCDL_10_(SRCDL_10,SRCD_10) = LD2A(SDI_10,LDSRCL);
wire SRCDL_11;                                                                  //[SRCDATA.NET:00054] SRCDL_11_(SRCDL_11,SRCD_11) = LD2A(SDI_11,LDSRCL);
wire SRCDL_12;                                                                  //[SRCDATA.NET:00055] SRCDL_12_(SRCDL_12,SRCD_12) = LD2A(SDI_12,LDSRCL);
wire SRCDL_13;                                                                  //[SRCDATA.NET:00056] SRCDL_13_(SRCDL_13,SRCD_13) = LD2A(SDI_13,LDSRCL);
wire SRCDL_14;                                                                  //[SRCDATA.NET:00057] SRCDL_14_(SRCDL_14,SRCD_14) = LD2A(SDI_14,LDSRCL);
wire SRCDL_15;                                                                  //[SRCDATA.NET:00058] SRCDL_15_(SRCDL_15,SRCD_15) = LD2A(SDI_15,LDSRCL);
wire SSWAPL;                                                                    //[SRCDATA.NET:00062] SSWPINV_(SSWAPL) = N1C(SSWAP);

/* Multiplex the low and high bytes of the data bus */

assign SRCLTOHL = ~SRCLTOH;                                                     //[SRCDATA.NET:00031] SRCLTOHL_(SRCLTOHL) = N1B(SRCLTOH);
assign SDI_8 = ~((SRCLTOH & ID_0)|(SRCLTOHL & ID_8));                           //[SRCDATA.NET:00032] SDI_8_(SDI_8) = AO2A(SRCLTOH,ID_0,SRCLTOHL,ID_8);
assign SDI_9 = ~((SRCLTOH & ID_1)|(SRCLTOHL & ID_9));                           //[SRCDATA.NET:00033] SDI_9_(SDI_9) = AO2A(SRCLTOH,ID_1,SRCLTOHL,ID_9);
assign SDI_10 = ~((SRCLTOH & ID_2)|(SRCLTOHL & ID_10));                         //[SRCDATA.NET:00034] SDI_10_(SDI_10) = AO2A(SRCLTOH,ID_2,SRCLTOHL,ID_10);
assign SDI_11 = ~((SRCLTOH & ID_3)|(SRCLTOHL & ID_11));                         //[SRCDATA.NET:00035] SDI_11_(SDI_11) = AO2A(SRCLTOH,ID_3,SRCLTOHL,ID_11);
assign SDI_12 = ~((SRCLTOH & ID_4)|(SRCLTOHL & ID_12));                         //[SRCDATA.NET:00036] SDI_12_(SDI_12) = AO2A(SRCLTOH,ID_4,SRCLTOHL,ID_12);
assign SDI_13 = ~((SRCLTOH & ID_5)|(SRCLTOHL & ID_13));                         //[SRCDATA.NET:00037] SDI_13_(SDI_13) = AO2A(SRCLTOH,ID_5,SRCLTOHL,ID_13);
assign SDI_14 = ~((SRCLTOH & ID_6)|(SRCLTOHL & ID_14));                         //[SRCDATA.NET:00038] SDI_14_(SDI_14) = AO2A(SRCLTOH,ID_6,SRCLTOHL,ID_14);
assign SDI_15 = ~((SRCLTOH & ID_7)|(SRCLTOHL & ID_15));                         //[SRCDATA.NET:00039] SDI_15_(SDI_15) = AO2A(SRCLTOH,ID_7,SRCLTOHL,ID_15);

/* The source data latch */

LD2A SRCDL_0__inst (.MasterClock(MasterClock),.q(SDINT_0),.qL(SDINTL_0),.d(ID_0),.en(LDSRCL));//[SRCDATA.NET:00043] SRCDL_0_(SDINT_0,SDINTL_0) = LD2A(ID_0,LDSRCL);
LD2A SRCDL_1__inst (.MasterClock(MasterClock),.q(SDINT_1),.qL(SDINTL_1),.d(ID_1),.en(LDSRCL));//[SRCDATA.NET:00044] SRCDL_1_(SDINT_1,SDINTL_1) = LD2A(ID_1,LDSRCL);
LD2A SRCDL_2__inst (.MasterClock(MasterClock),.q(SDINT_2),.qL(SDINTL_2),.d(ID_2),.en(LDSRCL));//[SRCDATA.NET:00045] SRCDL_2_(SDINT_2,SDINTL_2) = LD2A(ID_2,LDSRCL);
LD2A SRCDL_3__inst (.MasterClock(MasterClock),.q(SDINT_3),.qL(SDINTL_3),.d(ID_3),.en(LDSRCL));//[SRCDATA.NET:00046] SRCDL_3_(SDINT_3,SDINTL_3) = LD2A(ID_3,LDSRCL);
LD2A SRCDL_4__inst (.MasterClock(MasterClock),.q(SDINT_4),.qL(SDINTL_4),.d(ID_4),.en(LDSRCL));//[SRCDATA.NET:00047] SRCDL_4_(SDINT_4,SDINTL_4) = LD2A(ID_4,LDSRCL);
LD2A SRCDL_5__inst (.MasterClock(MasterClock),.q(SDINT_5),.qL(SDINTL_5),.d(ID_5),.en(LDSRCL));//[SRCDATA.NET:00048] SRCDL_5_(SDINT_5,SDINTL_5) = LD2A(ID_5,LDSRCL);
LD2A SRCDL_6__inst (.MasterClock(MasterClock),.q(SDINT_6),.qL(SDINTL_6),.d(ID_6),.en(LDSRCL));//[SRCDATA.NET:00049] SRCDL_6_(SDINT_6,SDINTL_6) = LD2A(ID_6,LDSRCL);
LD2A SRCDL_7__inst (.MasterClock(MasterClock),.q(SDINT_7),.qL(SDINTL_7),.d(ID_7),.en(LDSRCL));//[SRCDATA.NET:00050] SRCDL_7_(SDINT_7,SDINTL_7) = LD2A(ID_7,LDSRCL);
LD2A SRCDL_8__inst (.MasterClock(MasterClock),.q(SRCDL_8),.qL(SRCD_8),.d(SDI_8),.en(LDSRCL));//[SRCDATA.NET:00051] SRCDL_8_(SRCDL_8,SRCD_8) = LD2A(SDI_8,LDSRCL);
LD2A SRCDL_9__inst (.MasterClock(MasterClock),.q(SRCDL_9),.qL(SRCD_9),.d(SDI_9),.en(LDSRCL));//[SRCDATA.NET:00052] SRCDL_9_(SRCDL_9,SRCD_9) = LD2A(SDI_9,LDSRCL);
LD2A SRCDL_10__inst (.MasterClock(MasterClock),.q(SRCDL_10),.qL(SRCD_10),.d(SDI_10),.en(LDSRCL));//[SRCDATA.NET:00053] SRCDL_10_(SRCDL_10,SRCD_10) = LD2A(SDI_10,LDSRCL);
LD2A SRCDL_11__inst (.MasterClock(MasterClock),.q(SRCDL_11),.qL(SRCD_11),.d(SDI_11),.en(LDSRCL));//[SRCDATA.NET:00054] SRCDL_11_(SRCDL_11,SRCD_11) = LD2A(SDI_11,LDSRCL);
LD2A SRCDL_12__inst (.MasterClock(MasterClock),.q(SRCDL_12),.qL(SRCD_12),.d(SDI_12),.en(LDSRCL));//[SRCDATA.NET:00055] SRCDL_12_(SRCDL_12,SRCD_12) = LD2A(SDI_12,LDSRCL);
LD2A SRCDL_13__inst (.MasterClock(MasterClock),.q(SRCDL_13),.qL(SRCD_13),.d(SDI_13),.en(LDSRCL));//[SRCDATA.NET:00056] SRCDL_13_(SRCDL_13,SRCD_13) = LD2A(SDI_13,LDSRCL);
LD2A SRCDL_14__inst (.MasterClock(MasterClock),.q(SRCDL_14),.qL(SRCD_14),.d(SDI_14),.en(LDSRCL));//[SRCDATA.NET:00057] SRCDL_14_(SRCDL_14,SRCD_14) = LD2A(SDI_14,LDSRCL);
LD2A SRCDL_15__inst (.MasterClock(MasterClock),.q(SRCDL_15),.qL(SRCD_15),.d(SDI_15),.en(LDSRCL));//[SRCDATA.NET:00058] SRCDL_15_(SRCDL_15,SRCD_15) = LD2A(SDI_15,LDSRCL);

/* The 4-bit pixel nybble swapper */

assign SSWAPL = ~SSWAP;                                                         //[SRCDATA.NET:00062] SSWPINV_(SSWAPL) = N1C(SSWAP);
assign SRCD_0 = ~((SSWAP & SDINTL_4)|(SSWAPL & SDINTL_0));                      //[SRCDATA.NET:00063] SRCMUX_0_(SRCD_0) = AO2B(SSWAP,SDINTL_4,SSWAPL,SDINTL_0);
assign SRCD_1 = ~((SSWAP & SDINTL_5)|(SSWAPL & SDINTL_1));                      //[SRCDATA.NET:00064] SRCMUX_1_(SRCD_1) = AO2B(SSWAP,SDINTL_5,SSWAPL,SDINTL_1);
assign SRCD_2 = ~((SSWAP & SDINTL_6)|(SSWAPL & SDINTL_2));                      //[SRCDATA.NET:00065] SRCMUX_2_(SRCD_2) = AO2B(SSWAP,SDINTL_6,SSWAPL,SDINTL_2);
assign SRCD_3 = ~((SSWAP & SDINTL_7)|(SSWAPL & SDINTL_3));                      //[SRCDATA.NET:00066] SRCMUX_3_(SRCD_3) = AO2B(SSWAP,SDINTL_7,SSWAPL,SDINTL_3);
assign SRCD_4 = ~((SSWAP & SDINTL_0)|(SSWAPL & SDINTL_4));                      //[SRCDATA.NET:00067] SRCMUX_4_(SRCD_4) = AO2B(SSWAP,SDINTL_0,SSWAPL,SDINTL_4);
assign SRCD_5 = ~((SSWAP & SDINTL_1)|(SSWAPL & SDINTL_5));                      //[SRCDATA.NET:00068] SRCMUX_5_(SRCD_5) = AO2B(SSWAP,SDINTL_1,SSWAPL,SDINTL_5);
assign SRCD_6 = ~((SSWAP & SDINTL_2)|(SSWAPL & SDINTL_6));                      //[SRCDATA.NET:00069] SRCMUX_6_(SRCD_6) = AO2B(SSWAP,SDINTL_2,SSWAPL,SDINTL_6);
assign SRCD_7 = ~((SSWAP & SDINTL_3)|(SSWAPL & SDINTL_7));                      //[SRCDATA.NET:00070] SRCMUX_7_(SRCD_7) = AO2B(SSWAP,SDINTL_3,SSWAPL,SDINTL_7);

endmodule                                                                       //[SRCDATA.NET:00072] END MODULE;
