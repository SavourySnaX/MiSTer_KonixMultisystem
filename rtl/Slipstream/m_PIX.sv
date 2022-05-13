                                                                                //[PIX.NET:00001] COMPILE;
                                                                                //[PIX.NET:00002] DIRECTORY MASTER;
/********************************************************
*	pix-hdl						*
*	4/11/88						*
********************************************************/

/*
This module is the pixel generator in the SLIPSTREAM chip on the ACW
*/





module m_PIX                                                                    //[PIX.NET:00016] MODULE PIX;
(                                                                               //[PIX.NET:00016] MODULE PIX;

    input    MasterClock,
    input    inD_0,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_1,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_2,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_3,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_4,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_5,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_6,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inD_7,                                                             //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_0,                                                           //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_1,                                                           //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_2,                                                           //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_3,                                                           //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_4,                                                           //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_5,                                                           //[PIX.NET:00018] INPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    input    inP7L_6,                                                           //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_7,                                                           //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_8,                                                           //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_9,                                                           //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_10,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_11,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_12,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_13,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_14,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    inP7L_15,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    RESETL_0,                                                          //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
    input    CLK,                                                               //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_0,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_1,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_2,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_3,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_4,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_5,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_6,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    WD_7,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    MODE,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    BORDL,                                                             //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    BORDH,                                                             //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    TRANS,                                                             //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    MASK,                                                              //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
    input    INDEX,                                                             //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    BORDER,                                                            //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    BLANKING,                                                          //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    HC_0,                                                              //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    HC_1,                                                              //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_0,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_1,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_2,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_3,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_4,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_5,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_6,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_7,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    A_8,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    RDL,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    WRL,                                                               //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
    input    WE,                                                                //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    PALCS,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    PIXLD_0,                                                           //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    PIXLD_1,                                                           //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    PIXAD_0,                                                           //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    PIXAD_1,                                                           //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    TMODE,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    IDL_0,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    IDL_1,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    IDL_2,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    IDL_3,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    IDL_4,                                                             //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
    input    IDL_5,                                                             //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_6,                                                             //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_7,                                                             //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_8,                                                             //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_9,                                                             //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_10,                                                            //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_11,                                                            //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_12,                                                            //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_13,                                                            //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_14,                                                            //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    input    IDL_15,                                                            //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
                                                                                //[PIX.NET:00019]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RESETL_0,
                                                                                //[PIX.NET:00020]    CLK,WD_0,WD_1,WD_2,WD_3,WD_4,WD_5,WD_6,WD_7,MODE,BORDL,BORDH,TRANS,MASK,
                                                                                //[PIX.NET:00021]    INDEX,BORDER,BLANKING,HC_0,HC_1,A_0,A_1,A_2,A_3,A_4,A_5,A_6,A_7,A_8,RDL,WRL,
                                                                                //[PIX.NET:00022]    WE,PALCS,PIXLD_0,PIXLD_1,PIXAD_0,PIXAD_1,TMODE,IDL_0,IDL_1,IDL_2,IDL_3,IDL_4,
                                                                                //[PIX.NET:00023]    IDL_5,IDL_6,IDL_7,IDL_8,IDL_9,IDL_10,IDL_11,IDL_12,IDL_13,IDL_14,IDL_15;
    output    outD_0, enD_0,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_1, enD_1,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_2, enD_2,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_3, enD_3,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_4, enD_4,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_5, enD_5,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_6, enD_6,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outD_7, enD_7,                                                    //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_0, enP7L_0,                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_1, enP7L_1,                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_2, enP7L_2,                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_3, enP7L_3,                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_4, enP7L_4,                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_5, enP7L_5,                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
    output    outP7L_6, enP7L_6,                                                //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_7, enP7L_7,                                                //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_8, enP7L_8,                                                //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_9, enP7L_9,                                                //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_10, enP7L_10,                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_11, enP7L_11,                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_12, enP7L_12,                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_13, enP7L_13,                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_14, enP7L_14,                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    outP7L_15, enP7L_15,                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    RL_0,                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    RL_1,                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
    output    RL_2,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    RL_3,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    GL_0,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    GL_1,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    GL_2,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    GL_3,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    BL_0,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    BL_1,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    BL_2,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    BL_3,                                                             //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    INC_2,                                                            //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    MODE_0,                                                           //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    MODE_1,                                                           //[PIX.NET:00026]    RL_2,RL_3,GL_0,GL_1,GL_2,GL_3,BL_0,BL_1,BL_2,BL_3,INC_2,MODE_0,MODE_1,
    output    GENLOCK,                                                          //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    LORES,                                                            //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    NOWRAP,                                                           //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_0,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_1,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_2,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_3,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_4,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_5,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_6,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PA_7,                                                             //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    POE,                                                              //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PWE,                                                              //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
    output    PCS                                                               //[PIX.NET:00027]    GENLOCK,LORES,NOWRAP,PA_0,PA_1,PA_2,PA_3,PA_4,PA_5,PA_6,PA_7,POE,PWE,PCS;
);                                                                              //[PIX.NET:00016] MODULE PIX;
                                                                                //[PIX.NET:00028] LEVEL FUNCTION;
wire RES;                                                                       //[PIX.NET:00031] RES_(RES) = N1A(RESETL_0);
wire RESL;                                                                      //[PIX.NET:00032] RESL_(RESL) = N1C(RES);
wire PIX0B_0;                                                                   //[PIX.NET:00036] PIX0_0_(PIX0B_0,PIX0_0) = FD2A(IDL_0,PIXLD_0,RESL);
wire PIX0_0;                                                                    //[PIX.NET:00036] PIX0_0_(PIX0B_0,PIX0_0) = FD2A(IDL_0,PIXLD_0,RESL);
wire PIX0B_1;                                                                   //[PIX.NET:00037] PIX0_1_(PIX0B_1,PIX0_1) = FD2A(IDL_1,PIXLD_0,RESL);
wire PIX0_1;                                                                    //[PIX.NET:00037] PIX0_1_(PIX0B_1,PIX0_1) = FD2A(IDL_1,PIXLD_0,RESL);
wire PIX0B_2;                                                                   //[PIX.NET:00038] PIX0_2_(PIX0B_2,PIX0_2) = FD2A(IDL_2,PIXLD_0,RESL);
wire PIX0_2;                                                                    //[PIX.NET:00038] PIX0_2_(PIX0B_2,PIX0_2) = FD2A(IDL_2,PIXLD_0,RESL);
wire PIX0B_3;                                                                   //[PIX.NET:00039] PIX0_3_(PIX0B_3,PIX0_3) = FD2A(IDL_3,PIXLD_0,RESL);
wire PIX0_3;                                                                    //[PIX.NET:00039] PIX0_3_(PIX0B_3,PIX0_3) = FD2A(IDL_3,PIXLD_0,RESL);
wire PIX0B_4;                                                                   //[PIX.NET:00040] PIX0_4_(PIX0B_4,PIX0_4) = FD2A(IDL_4,PIXLD_0,RESL);
wire PIX0_4;                                                                    //[PIX.NET:00040] PIX0_4_(PIX0B_4,PIX0_4) = FD2A(IDL_4,PIXLD_0,RESL);
wire PIX0B_5;                                                                   //[PIX.NET:00041] PIX0_5_(PIX0B_5,PIX0_5) = FD2A(IDL_5,PIXLD_0,RESL);
wire PIX0_5;                                                                    //[PIX.NET:00041] PIX0_5_(PIX0B_5,PIX0_5) = FD2A(IDL_5,PIXLD_0,RESL);
wire PIX0B_6;                                                                   //[PIX.NET:00042] PIX0_6_(PIX0B_6,PIX0_6) = FD2A(IDL_6,PIXLD_0,RESL);
wire PIX0_6;                                                                    //[PIX.NET:00042] PIX0_6_(PIX0B_6,PIX0_6) = FD2A(IDL_6,PIXLD_0,RESL);
wire PIX0B_7;                                                                   //[PIX.NET:00043] PIX0_7_(PIX0B_7,PIX0_7) = FD2A(IDL_7,PIXLD_0,RESL);
wire PIX0_7;                                                                    //[PIX.NET:00043] PIX0_7_(PIX0B_7,PIX0_7) = FD2A(IDL_7,PIXLD_0,RESL);
wire PIX1B_0;                                                                   //[PIX.NET:00044] PIX1_0_(PIX1B_0,PIX1_0) = FD2A(IDL_8,PIXLD_0,RESL);
wire PIX1_0;                                                                    //[PIX.NET:00044] PIX1_0_(PIX1B_0,PIX1_0) = FD2A(IDL_8,PIXLD_0,RESL);
wire PIX1B_1;                                                                   //[PIX.NET:00045] PIX1_1_(PIX1B_1,PIX1_1) = FD2A(IDL_9,PIXLD_0,RESL);
wire PIX1_1;                                                                    //[PIX.NET:00045] PIX1_1_(PIX1B_1,PIX1_1) = FD2A(IDL_9,PIXLD_0,RESL);
wire PIX1B_2;                                                                   //[PIX.NET:00046] PIX1_2_(PIX1B_2,PIX1_2) = FD2A(IDL_10,PIXLD_0,RESL);
wire PIX1_2;                                                                    //[PIX.NET:00046] PIX1_2_(PIX1B_2,PIX1_2) = FD2A(IDL_10,PIXLD_0,RESL);
wire PIX1B_3;                                                                   //[PIX.NET:00047] PIX1_3_(PIX1B_3,PIX1_3) = FD2A(IDL_11,PIXLD_0,RESL);
wire PIX1_3;                                                                    //[PIX.NET:00047] PIX1_3_(PIX1B_3,PIX1_3) = FD2A(IDL_11,PIXLD_0,RESL);
wire PIX1B_4;                                                                   //[PIX.NET:00048] PIX1_4_(PIX1B_4,PIX1_4) = FD2A(IDL_12,PIXLD_0,RESL);
wire PIX1_4;                                                                    //[PIX.NET:00048] PIX1_4_(PIX1B_4,PIX1_4) = FD2A(IDL_12,PIXLD_0,RESL);
wire PIX1B_5;                                                                   //[PIX.NET:00049] PIX1_5_(PIX1B_5,PIX1_5) = FD2A(IDL_13,PIXLD_0,RESL);
wire PIX1_5;                                                                    //[PIX.NET:00049] PIX1_5_(PIX1B_5,PIX1_5) = FD2A(IDL_13,PIXLD_0,RESL);
wire PIX1B_6;                                                                   //[PIX.NET:00050] PIX1_6_(PIX1B_6,PIX1_6) = FD2A(IDL_14,PIXLD_0,RESL);
wire PIX1_6;                                                                    //[PIX.NET:00050] PIX1_6_(PIX1B_6,PIX1_6) = FD2A(IDL_14,PIXLD_0,RESL);
wire PIX1B_7;                                                                   //[PIX.NET:00051] PIX1_7_(PIX1B_7,PIX1_7) = FD2A(IDL_15,PIXLD_0,RESL);
wire PIX1_7;                                                                    //[PIX.NET:00051] PIX1_7_(PIX1B_7,PIX1_7) = FD2A(IDL_15,PIXLD_0,RESL);
wire PIX2B_0;                                                                   //[PIX.NET:00052] PIX2_0_(PIX2B_0,PIX2_0) = FD2A(IDL_0,PIXLD_1,RESL);
wire PIX2_0;                                                                    //[PIX.NET:00052] PIX2_0_(PIX2B_0,PIX2_0) = FD2A(IDL_0,PIXLD_1,RESL);
wire PIX2B_1;                                                                   //[PIX.NET:00053] PIX2_1_(PIX2B_1,PIX2_1) = FD2A(IDL_1,PIXLD_1,RESL);
wire PIX2_1;                                                                    //[PIX.NET:00053] PIX2_1_(PIX2B_1,PIX2_1) = FD2A(IDL_1,PIXLD_1,RESL);
wire PIX2B_2;                                                                   //[PIX.NET:00054] PIX2_2_(PIX2B_2,PIX2_2) = FD2A(IDL_2,PIXLD_1,RESL);
wire PIX2_2;                                                                    //[PIX.NET:00054] PIX2_2_(PIX2B_2,PIX2_2) = FD2A(IDL_2,PIXLD_1,RESL);
wire PIX2B_3;                                                                   //[PIX.NET:00055] PIX2_3_(PIX2B_3,PIX2_3) = FD2A(IDL_3,PIXLD_1,RESL);
wire PIX2_3;                                                                    //[PIX.NET:00055] PIX2_3_(PIX2B_3,PIX2_3) = FD2A(IDL_3,PIXLD_1,RESL);
wire PIX2B_4;                                                                   //[PIX.NET:00056] PIX2_4_(PIX2B_4,PIX2_4) = FD2A(IDL_4,PIXLD_1,RESL);
wire PIX2_4;                                                                    //[PIX.NET:00056] PIX2_4_(PIX2B_4,PIX2_4) = FD2A(IDL_4,PIXLD_1,RESL);
wire PIX2B_5;                                                                   //[PIX.NET:00057] PIX2_5_(PIX2B_5,PIX2_5) = FD2A(IDL_5,PIXLD_1,RESL);
wire PIX2_5;                                                                    //[PIX.NET:00057] PIX2_5_(PIX2B_5,PIX2_5) = FD2A(IDL_5,PIXLD_1,RESL);
wire PIX2B_6;                                                                   //[PIX.NET:00058] PIX2_6_(PIX2B_6,PIX2_6) = FD2A(IDL_6,PIXLD_1,RESL);
wire PIX2_6;                                                                    //[PIX.NET:00058] PIX2_6_(PIX2B_6,PIX2_6) = FD2A(IDL_6,PIXLD_1,RESL);
wire PIX2B_7;                                                                   //[PIX.NET:00059] PIX2_7_(PIX2B_7,PIX2_7) = FD2A(IDL_7,PIXLD_1,RESL);
wire PIX2_7;                                                                    //[PIX.NET:00059] PIX2_7_(PIX2B_7,PIX2_7) = FD2A(IDL_7,PIXLD_1,RESL);
wire PIX3B_0;                                                                   //[PIX.NET:00060] PIX3_0_(PIX3B_0,PIX3_0) = FD2A(IDL_8,PIXLD_1,RESL);
wire PIX3_0;                                                                    //[PIX.NET:00060] PIX3_0_(PIX3B_0,PIX3_0) = FD2A(IDL_8,PIXLD_1,RESL);
wire PIX3B_1;                                                                   //[PIX.NET:00061] PIX3_1_(PIX3B_1,PIX3_1) = FD2A(IDL_9,PIXLD_1,RESL);
wire PIX3_1;                                                                    //[PIX.NET:00061] PIX3_1_(PIX3B_1,PIX3_1) = FD2A(IDL_9,PIXLD_1,RESL);
wire PIX3B_2;                                                                   //[PIX.NET:00062] PIX3_2_(PIX3B_2,PIX3_2) = FD2A(IDL_10,PIXLD_1,RESL);
wire PIX3_2;                                                                    //[PIX.NET:00062] PIX3_2_(PIX3B_2,PIX3_2) = FD2A(IDL_10,PIXLD_1,RESL);
wire PIX3B_3;                                                                   //[PIX.NET:00063] PIX3_3_(PIX3B_3,PIX3_3) = FD2A(IDL_11,PIXLD_1,RESL);
wire PIX3_3;                                                                    //[PIX.NET:00063] PIX3_3_(PIX3B_3,PIX3_3) = FD2A(IDL_11,PIXLD_1,RESL);
wire PIX3B_4;                                                                   //[PIX.NET:00064] PIX3_4_(PIX3B_4,PIX3_4) = FD2A(IDL_12,PIXLD_1,RESL);
wire PIX3_4;                                                                    //[PIX.NET:00064] PIX3_4_(PIX3B_4,PIX3_4) = FD2A(IDL_12,PIXLD_1,RESL);
wire PIX3B_5;                                                                   //[PIX.NET:00065] PIX3_5_(PIX3B_5,PIX3_5) = FD2A(IDL_13,PIXLD_1,RESL);
wire PIX3_5;                                                                    //[PIX.NET:00065] PIX3_5_(PIX3B_5,PIX3_5) = FD2A(IDL_13,PIXLD_1,RESL);
wire PIX3B_6;                                                                   //[PIX.NET:00066] PIX3_6_(PIX3B_6,PIX3_6) = FD2A(IDL_14,PIXLD_1,RESL);
wire PIX3_6;                                                                    //[PIX.NET:00066] PIX3_6_(PIX3B_6,PIX3_6) = FD2A(IDL_14,PIXLD_1,RESL);
wire PIX3B_7;                                                                   //[PIX.NET:00067] PIX3_7_(PIX3B_7,PIX3_7) = FD2A(IDL_15,PIXLD_1,RESL);
wire PIX3_7;                                                                    //[PIX.NET:00067] PIX3_7_(PIX3B_7,PIX3_7) = FD2A(IDL_15,PIXLD_1,RESL);
wire P0_0;                                                                      //[PIX.NET:00071] P0_0_(P0_0) = MUX4(PIXAD_0,PIXAD_1,PIX0_0,PIX1_0,PIX2_0,PIX3_0);
wire P0_1;                                                                      //[PIX.NET:00072] P0_1_(P0_1) = MUX4(PIXAD_0,PIXAD_1,PIX0_1,PIX1_1,PIX2_1,PIX3_1);
wire P0_2;                                                                      //[PIX.NET:00073] P0_2_(P0_2) = MUX4(PIXAD_0,PIXAD_1,PIX0_2,PIX1_2,PIX2_2,PIX3_2);
wire P0_3;                                                                      //[PIX.NET:00074] P0_3_(P0_3) = MUX4(PIXAD_0,PIXAD_1,PIX0_3,PIX1_3,PIX2_3,PIX3_3);
wire P0_4;                                                                      //[PIX.NET:00075] P0_4_(P0_4) = MUX4(PIXAD_0,PIXAD_1,PIX0_4,PIX1_4,PIX2_4,PIX3_4);
wire P0_5;                                                                      //[PIX.NET:00076] P0_5_(P0_5) = MUX4(PIXAD_0,PIXAD_1,PIX0_5,PIX1_5,PIX2_5,PIX3_5);
wire P0_6;                                                                      //[PIX.NET:00077] P0_6_(P0_6) = MUX4(PIXAD_0,PIXAD_1,PIX0_6,PIX1_6,PIX2_6,PIX3_6);
wire P0_7;                                                                      //[PIX.NET:00078] P0_7_(P0_7) = MUX4(PIXAD_0,PIXAD_1,PIX0_7,PIX1_7,PIX2_7,PIX3_7);
wire LORESL;                                                                    //[PIX.NET:00082] LORESL_(LORESL) = N1A(LORES);
wire LONIB;                                                                     //[PIX.NET:00083] LONIB_(LONIB) = AO2A(LORES,HC_1,LORESL,HC_0);
wire HINIB;                                                                     //[PIX.NET:00084] HINIB_(HINIB) = N1A(LONIB);
wire P1L_0;                                                                     //[PIX.NET:00085] P1L_0_(P1L_0) = AO2A(LONIB,P0_0,HINIB,P0_4);
wire P1L_1;                                                                     //[PIX.NET:00086] P1L_1_(P1L_1) = AO2A(LONIB,P0_1,HINIB,P0_5);
wire P1L_2;                                                                     //[PIX.NET:00087] P1L_2_(P1L_2) = AO2A(LONIB,P0_2,HINIB,P0_6);
wire P1L_3;                                                                     //[PIX.NET:00088] P1L_3_(P1L_3) = AO2A(LONIB,P0_3,HINIB,P0_7);
wire P1_0;                                                                      //[PIX.NET:00089] P1_0_(P1_0) = N1A(P1L_0);
wire P1_1;                                                                      //[PIX.NET:00090] P1_1_(P1_1) = N1A(P1L_1);
wire P1_2;                                                                      //[PIX.NET:00091] P1_2_(P1_2) = N1A(P1L_2);
wire P1_3;                                                                      //[PIX.NET:00092] P1_3_(P1_3) = N1A(P1L_3);
wire VARRES;                                                                    //[PIX.NET:00099] BYTE_(BYTE) = AO2B(VARRES,P0_7,VARRESL,MEDRESL);
wire VARRESL;                                                                   //[PIX.NET:00099] BYTE_(BYTE) = AO2B(VARRES,P0_7,VARRESL,MEDRESL);
wire MEDRESL;                                                                   //[PIX.NET:00099] BYTE_(BYTE) = AO2B(VARRES,P0_7,VARRESL,MEDRESL);
wire BYTE;                                                                      //[PIX.NET:00099] BYTE_(BYTE) = AO2B(VARRES,P0_7,VARRESL,MEDRESL);
wire NIBBLE;                                                                    //[PIX.NET:00100] NIBBLE_(NIBBLE) = N1A(BYTE);
wire P2L_0;                                                                     //[PIX.NET:00102] P2L_0_(P2L_0) = AO2A(BYTE,P0_0,NIBBLE,P1_0);
wire P2L_1;                                                                     //[PIX.NET:00103] P2L_1_(P2L_1) = AO2A(BYTE,P0_1,NIBBLE,P1_1);
wire P2L_2;                                                                     //[PIX.NET:00104] P2L_2_(P2L_2) = AO2A(BYTE,P0_2,NIBBLE,P1_2);
wire P2L_3;                                                                     //[PIX.NET:00105] P2L_3_(P2L_3) = AO2A(BYTE,P0_3,NIBBLE,P1_3);
wire P2L_4;                                                                     //[PIX.NET:00106] P2L_4_(P2L_4) = AO2A(BYTE,P0_4,NIBBLE,RES);
wire P2L_5;                                                                     //[PIX.NET:00107] P2L_5_(P2L_5) = AO2A(BYTE,P0_5,NIBBLE,RES);
wire P2L_6;                                                                     //[PIX.NET:00108] P2L_6_(P2L_6) = AO2A(BYTE,P0_6,NIBBLE,RES);
wire P2L_7;                                                                     //[PIX.NET:00109] P2L_7_(P2L_7) = AO2A(BYTE,P0_7,NIBBLE,RES);
wire BC_0;                                                                      //[PIX.NET:00113] BC_0_(BC_0,BCB_0) = LD1A(WD_0,BORDL);
wire BCB_0;                                                                     //[PIX.NET:00113] BC_0_(BC_0,BCB_0) = LD1A(WD_0,BORDL);
wire BC_1;                                                                      //[PIX.NET:00114] BC_1_(BC_1,BCB_1) = LD1A(WD_1,BORDL);
wire BCB_1;                                                                     //[PIX.NET:00114] BC_1_(BC_1,BCB_1) = LD1A(WD_1,BORDL);
wire BC_2;                                                                      //[PIX.NET:00115] BC_2_(BC_2,BCB_2) = LD1A(WD_2,BORDL);
wire BCB_2;                                                                     //[PIX.NET:00115] BC_2_(BC_2,BCB_2) = LD1A(WD_2,BORDL);
wire BC_3;                                                                      //[PIX.NET:00116] BC_3_(BC_3,BCB_3) = LD1A(WD_3,BORDL);
wire BCB_3;                                                                     //[PIX.NET:00116] BC_3_(BC_3,BCB_3) = LD1A(WD_3,BORDL);
wire BC_4;                                                                      //[PIX.NET:00117] BC_4_(BC_4,BCB_4) = LD1A(WD_4,BORDL);
wire BCB_4;                                                                     //[PIX.NET:00117] BC_4_(BC_4,BCB_4) = LD1A(WD_4,BORDL);
wire BC_5;                                                                      //[PIX.NET:00118] BC_5_(BC_5,BCB_5) = LD1A(WD_5,BORDL);
wire BCB_5;                                                                     //[PIX.NET:00118] BC_5_(BC_5,BCB_5) = LD1A(WD_5,BORDL);
wire BC_6;                                                                      //[PIX.NET:00119] BC_6_(BC_6,BCB_6) = LD1A(WD_6,BORDL);
wire BCB_6;                                                                     //[PIX.NET:00119] BC_6_(BC_6,BCB_6) = LD1A(WD_6,BORDL);
wire BC_7;                                                                      //[PIX.NET:00120] BC_7_(BC_7,BCB_7) = LD1A(WD_7,BORDL);
wire BCB_7;                                                                     //[PIX.NET:00120] BC_7_(BC_7,BCB_7) = LD1A(WD_7,BORDL);
wire BC_8;                                                                      //[PIX.NET:00121] BC_8_(BC_8,BCB_8) = LD1A(WD_0,BORDH);
wire BCB_8;                                                                     //[PIX.NET:00121] BC_8_(BC_8,BCB_8) = LD1A(WD_0,BORDH);
wire BC_9;                                                                      //[PIX.NET:00122] BC_9_(BC_9,BCB_9) = LD1A(WD_1,BORDH);
wire BCB_9;                                                                     //[PIX.NET:00122] BC_9_(BC_9,BCB_9) = LD1A(WD_1,BORDH);
wire BC_10;                                                                     //[PIX.NET:00123] BC_10_(BC_10,BCB_10) = LD1A(WD_2,BORDH);
wire BCB_10;                                                                    //[PIX.NET:00123] BC_10_(BC_10,BCB_10) = LD1A(WD_2,BORDH);
wire BC_11;                                                                     //[PIX.NET:00124] BC_11_(BC_11,BCB_11) = LD1A(WD_3,BORDH);
wire BCB_11;                                                                    //[PIX.NET:00124] BC_11_(BC_11,BCB_11) = LD1A(WD_3,BORDH);
wire BC_12;                                                                     //[PIX.NET:00125] BC_12_(BC_12,BCB_12) = LD1A(WD_4,BORDH);
wire BCB_12;                                                                    //[PIX.NET:00125] BC_12_(BC_12,BCB_12) = LD1A(WD_4,BORDH);
wire BC_13;                                                                     //[PIX.NET:00126] BC_13_(BC_13,BCB_13) = LD1A(WD_5,BORDH);
wire BCB_13;                                                                    //[PIX.NET:00126] BC_13_(BC_13,BCB_13) = LD1A(WD_5,BORDH);
wire BC_14;                                                                     //[PIX.NET:00127] BC_14_(BC_14,BCB_14) = LD1A(WD_6,BORDH);
wire BCB_14;                                                                    //[PIX.NET:00127] BC_14_(BC_14,BCB_14) = LD1A(WD_6,BORDH);
wire BC_15;                                                                     //[PIX.NET:00128] BC_15_(BC_15,BCB_15) = LD1A(WD_7,BORDH);
wire BCB_15;                                                                    //[PIX.NET:00128] BC_15_(BC_15,BCB_15) = LD1A(WD_7,BORDH);
wire HOLD4;                                                                     //[PIX.NET:00132] HOLD4_(HOLD4,HOLD4L) = LD1A(WD_0,TRANS);
wire HOLD4L;                                                                    //[PIX.NET:00132] HOLD4_(HOLD4,HOLD4L) = LD1A(WD_0,TRANS);
wire ZERO4;                                                                     //[PIX.NET:00136] ZERO4_(ZERO4) = AND4A(P2L_0,P2L_1,P2L_2,P2L_3);
wire ZERO8;                                                                     //[PIX.NET:00137] ZERO8_(ZERO8) = MACAND8(P2L_0,P2L_1,P2L_2,P2L_3,P2L_4,P2L_5,P2L_6,P2L_7);
wire HOLD8;                                                                     //[PIX.NET:00141] PREV8L_(PREV8L) = ND2A(HOLD8,ZERO8);
wire PREV8L;                                                                    //[PIX.NET:00141] PREV8L_(PREV8L) = ND2A(HOLD8,ZERO8);
wire PREV8;                                                                     //[PIX.NET:00142] PREV8_(PREV8) = N1A(PREV8L);
wire PREV4L;                                                                    //[PIX.NET:00143] PREV4L_(PREV4L) = AO2A(HOLD8,ZERO8,HOLD4,ZERO4);
wire PREV4;                                                                     //[PIX.NET:00144] PREV4_(PREV4) = N1A(PREV4L);
wire P5L_0;                                                                     //[PIX.NET:00146] P4L_0_(P4_0) = AO2A(PREV4,P5L_0,PREV4L,P2L_0);
wire P4_0;                                                                      //[PIX.NET:00146] P4L_0_(P4_0) = AO2A(PREV4,P5L_0,PREV4L,P2L_0);
wire P5L_1;                                                                     //[PIX.NET:00147] P4L_1_(P4_1) = AO2A(PREV4,P5L_1,PREV4L,P2L_1);
wire P4_1;                                                                      //[PIX.NET:00147] P4L_1_(P4_1) = AO2A(PREV4,P5L_1,PREV4L,P2L_1);
wire P5L_2;                                                                     //[PIX.NET:00148] P4L_2_(P4_2) = AO2A(PREV4,P5L_2,PREV4L,P2L_2);
wire P4_2;                                                                      //[PIX.NET:00148] P4L_2_(P4_2) = AO2A(PREV4,P5L_2,PREV4L,P2L_2);
wire P5L_3;                                                                     //[PIX.NET:00149] P4L_3_(P4_3) = AO2A(PREV4,P5L_3,PREV4L,P2L_3);
wire P4_3;                                                                      //[PIX.NET:00149] P4L_3_(P4_3) = AO2A(PREV4,P5L_3,PREV4L,P2L_3);
wire P5L_4;                                                                     //[PIX.NET:00150] P4L_4_(P4_4) = AO2A(PREV8,P5L_4,PREV8L,P2L_4);
wire P4_4;                                                                      //[PIX.NET:00150] P4L_4_(P4_4) = AO2A(PREV8,P5L_4,PREV8L,P2L_4);
wire P5L_5;                                                                     //[PIX.NET:00151] P4L_5_(P4_5) = AO2A(PREV8,P5L_5,PREV8L,P2L_5);
wire P4_5;                                                                      //[PIX.NET:00151] P4L_5_(P4_5) = AO2A(PREV8,P5L_5,PREV8L,P2L_5);
wire P5L_6;                                                                     //[PIX.NET:00152] P4L_6_(P4_6) = AO2A(PREV8,P5L_6,PREV8L,P2L_6);
wire P4_6;                                                                      //[PIX.NET:00152] P4L_6_(P4_6) = AO2A(PREV8,P5L_6,PREV8L,P2L_6);
wire P5L_7;                                                                     //[PIX.NET:00153] P4L_7_(P4_7) = AO2A(PREV8,P5L_7,PREV8L,P2L_7);
wire P4_7;                                                                      //[PIX.NET:00153] P4L_7_(P4_7) = AO2A(PREV8,P5L_7,PREV8L,P2L_7);
wire P5_0;                                                                      //[PIX.NET:00157] P5_0_(P5_0,P5L_0) = FD2A(P4_0,CLK,RESL);
wire P5_1;                                                                      //[PIX.NET:00158] P5_1_(P5_1,P5L_1) = FD2A(P4_1,CLK,RESL);
wire P5_2;                                                                      //[PIX.NET:00159] P5_2_(P5_2,P5L_2) = FD2A(P4_2,CLK,RESL);
wire P5_3;                                                                      //[PIX.NET:00160] P5_3_(P5_3,P5L_3) = FD2A(P4_3,CLK,RESL);
wire P5_4;                                                                      //[PIX.NET:00161] P5_4_(P5_4,P5L_4) = FD2A(P4_4,CLK,RESL);
wire P5_5;                                                                      //[PIX.NET:00162] P5_5_(P5_5,P5L_5) = FD2A(P4_5,CLK,RESL);
wire P5_6;                                                                      //[PIX.NET:00163] P5_6_(P5_6,P5L_6) = FD2A(P4_6,CLK,RESL);
wire P5_7;                                                                      //[PIX.NET:00164] P5_7_(P5_7,P5L_7) = FD2A(P4_7,CLK,RESL);
wire M_0;                                                                       //[PIX.NET:00168] M_0_(M_0,MB_0) = LD1A(WD_0,MASK);
wire MB_0;                                                                      //[PIX.NET:00168] M_0_(M_0,MB_0) = LD1A(WD_0,MASK);
wire M_1;                                                                       //[PIX.NET:00169] M_1_(M_1,MB_1) = LD1A(WD_1,MASK);
wire MB_1;                                                                      //[PIX.NET:00169] M_1_(M_1,MB_1) = LD1A(WD_1,MASK);
wire M_2;                                                                       //[PIX.NET:00170] M_2_(M_2,MB_2) = LD1A(WD_2,MASK);
wire MB_2;                                                                      //[PIX.NET:00170] M_2_(M_2,MB_2) = LD1A(WD_2,MASK);
wire M_3;                                                                       //[PIX.NET:00171] M_3_(M_3,MB_3) = LD1A(WD_3,MASK);
wire MB_3;                                                                      //[PIX.NET:00171] M_3_(M_3,MB_3) = LD1A(WD_3,MASK);
wire M_4;                                                                       //[PIX.NET:00172] M_4_(M_4,MB_4) = LD1A(WD_4,MASK);
wire MB_4;                                                                      //[PIX.NET:00172] M_4_(M_4,MB_4) = LD1A(WD_4,MASK);
wire M_5;                                                                       //[PIX.NET:00173] M_5_(M_5,MB_5) = LD1A(WD_5,MASK);
wire MB_5;                                                                      //[PIX.NET:00173] M_5_(M_5,MB_5) = LD1A(WD_5,MASK);
wire M_6;                                                                       //[PIX.NET:00174] M_6_(M_6,MB_6) = LD1A(WD_6,MASK);
wire MB_6;                                                                      //[PIX.NET:00174] M_6_(M_6,MB_6) = LD1A(WD_6,MASK);
wire M_7;                                                                       //[PIX.NET:00175] M_7_(M_7,MB_7) = LD1A(WD_7,MASK);
wire MB_7;                                                                      //[PIX.NET:00175] M_7_(M_7,MB_7) = LD1A(WD_7,MASK);
wire I_0;                                                                       //[PIX.NET:00179] I_0_(I_0,IB_0) = LD1A(WD_0,INDEX);
wire IB_0;                                                                      //[PIX.NET:00179] I_0_(I_0,IB_0) = LD1A(WD_0,INDEX);
wire I_1;                                                                       //[PIX.NET:00180] I_1_(I_1,IB_1) = LD1A(WD_1,INDEX);
wire IB_1;                                                                      //[PIX.NET:00180] I_1_(I_1,IB_1) = LD1A(WD_1,INDEX);
wire I_2;                                                                       //[PIX.NET:00181] I_2_(I_2,IB_2) = LD1A(WD_2,INDEX);
wire IB_2;                                                                      //[PIX.NET:00181] I_2_(I_2,IB_2) = LD1A(WD_2,INDEX);
wire I_3;                                                                       //[PIX.NET:00182] I_3_(I_3,IB_3) = LD1A(WD_3,INDEX);
wire IB_3;                                                                      //[PIX.NET:00182] I_3_(I_3,IB_3) = LD1A(WD_3,INDEX);
wire I_4;                                                                       //[PIX.NET:00183] I_4_(I_4,IB_4) = LD1A(WD_4,INDEX);
wire IB_4;                                                                      //[PIX.NET:00183] I_4_(I_4,IB_4) = LD1A(WD_4,INDEX);
wire I_5;                                                                       //[PIX.NET:00184] I_5_(I_5,IB_5) = LD1A(WD_5,INDEX);
wire IB_5;                                                                      //[PIX.NET:00184] I_5_(I_5,IB_5) = LD1A(WD_5,INDEX);
wire I_6;                                                                       //[PIX.NET:00185] I_6_(I_6,IB_6) = LD1A(WD_6,INDEX);
wire IB_6;                                                                      //[PIX.NET:00185] I_6_(I_6,IB_6) = LD1A(WD_6,INDEX);
wire I_7;                                                                       //[PIX.NET:00186] I_7_(I_7,IB_7) = LD1A(WD_7,INDEX);
wire IB_7;                                                                      //[PIX.NET:00186] I_7_(I_7,IB_7) = LD1A(WD_7,INDEX);
wire P6_0;                                                                      //[PIX.NET:00190] P6_0_(P6_0) = AO2A(M_0,IB_0,MB_0,P5L_0);
wire P6_1;                                                                      //[PIX.NET:00191] P6_1_(P6_1) = AO2A(M_1,IB_1,MB_1,P5L_1);
wire P6_2;                                                                      //[PIX.NET:00192] P6_2_(P6_2) = AO2A(M_2,IB_2,MB_2,P5L_2);
wire P6_3;                                                                      //[PIX.NET:00193] P6_3_(P6_3) = AO2A(M_3,IB_3,MB_3,P5L_3);
wire P6_4;                                                                      //[PIX.NET:00194] P6_4_(P6_4) = AO2A(M_4,IB_4,MB_4,P5L_4);
wire P6_5;                                                                      //[PIX.NET:00195] P6_5_(P6_5) = AO2A(M_5,IB_5,MB_5,P5L_5);
wire P6_6;                                                                      //[PIX.NET:00196] P6_6_(P6_6) = AO2A(M_6,IB_6,MB_6,P5L_6);
wire P6_7;                                                                      //[PIX.NET:00197] P6_7_(P6_7) = AO2A(M_7,IB_7,MB_7,P5L_7);
wire EVEN;                                                                      //[PIX.NET:00202] PED_0_(PED_0,PEDL_0) = LD1A(D_0,EVEN);
wire PED_0;                                                                     //[PIX.NET:00202] PED_0_(PED_0,PEDL_0) = LD1A(D_0,EVEN);
wire PEDL_0;                                                                    //[PIX.NET:00202] PED_0_(PED_0,PEDL_0) = LD1A(D_0,EVEN);
wire PED_1;                                                                     //[PIX.NET:00203] PED_1_(PED_1,PEDL_1) = LD1A(D_1,EVEN);
wire PEDL_1;                                                                    //[PIX.NET:00203] PED_1_(PED_1,PEDL_1) = LD1A(D_1,EVEN);
wire PED_2;                                                                     //[PIX.NET:00204] PED_2_(PED_2,PEDL_2) = LD1A(D_2,EVEN);
wire PEDL_2;                                                                    //[PIX.NET:00204] PED_2_(PED_2,PEDL_2) = LD1A(D_2,EVEN);
wire PED_3;                                                                     //[PIX.NET:00205] PED_3_(PED_3,PEDL_3) = LD1A(D_3,EVEN);
wire PEDL_3;                                                                    //[PIX.NET:00205] PED_3_(PED_3,PEDL_3) = LD1A(D_3,EVEN);
wire PED_4;                                                                     //[PIX.NET:00206] PED_4_(PED_4,PEDL_4) = LD1A(D_4,EVEN);
wire PEDL_4;                                                                    //[PIX.NET:00206] PED_4_(PED_4,PEDL_4) = LD1A(D_4,EVEN);
wire PED_5;                                                                     //[PIX.NET:00207] PED_5_(PED_5,PEDL_5) = LD1A(D_5,EVEN);
wire PEDL_5;                                                                    //[PIX.NET:00207] PED_5_(PED_5,PEDL_5) = LD1A(D_5,EVEN);
wire PED_6;                                                                     //[PIX.NET:00208] PED_6_(PED_6,PEDL_6) = LD1A(D_6,EVEN);
wire PEDL_6;                                                                    //[PIX.NET:00208] PED_6_(PED_6,PEDL_6) = LD1A(D_6,EVEN);
wire PED_7;                                                                     //[PIX.NET:00209] PED_7_(PED_7,PEDL_7) = LD1A(D_7,EVEN);
wire PEDL_7;                                                                    //[PIX.NET:00209] PED_7_(PED_7,PEDL_7) = LD1A(D_7,EVEN);
wire AL_0;                                                                      //[PIX.NET:00210] EVEN_(EVEN) = AND3A(PALCS,WE,AL_0);
wire PALCSL;                                                                    //[PIX.NET:00212] PALCSL_(PALCSL) = N1C(PALCS);
wire PWR;                                                                       //[PIX.NET:00222] PWR_(PWR) = NR2C(PALCSL,WRL);
wire PERD;                                                                      //[PIX.NET:00240] PERD_(PERD) = NR3C(PALCSL,RDL,A_0);
wire PORD;                                                                      //[PIX.NET:00241] PORD_(PORD) = NR3C(PALCSL,RDL,AL_0);
wire P7_0;                                                                      //[PIX.NET:00260] PX7_0_(P7_0) = N1A(P7L_0);
wire P7_1;                                                                      //[PIX.NET:00261] PX7_1_(P7_1) = N1A(P7L_1);
wire P7_2;                                                                      //[PIX.NET:00262] PX7_2_(P7_2) = N1A(P7L_2);
wire P7_3;                                                                      //[PIX.NET:00263] PX7_3_(P7_3) = N1A(P7L_3);
wire P7_4;                                                                      //[PIX.NET:00264] PX7_4_(P7_4) = N1A(P7L_4);
wire P7_5;                                                                      //[PIX.NET:00265] PX7_5_(P7_5) = N1A(P7L_5);
wire P7_6;                                                                      //[PIX.NET:00266] PX7_6_(P7_6) = N1A(P7L_6);
wire P7_7;                                                                      //[PIX.NET:00267] PX7_7_(P7_7) = N1A(P7L_7);
wire P7_8;                                                                      //[PIX.NET:00268] PX7_8_(P7_8) = N1A(P7L_8);
wire P7_9;                                                                      //[PIX.NET:00269] PX7_9_(P7_9) = N1A(P7L_9);
wire P7_10;                                                                     //[PIX.NET:00270] PX7_10_(P7_10) = N1A(P7L_10);
wire P7_11;                                                                     //[PIX.NET:00271] PX7_11_(P7_11) = N1A(P7L_11);
wire P7_12;                                                                     //[PIX.NET:00272] PX7_12_(P7_12) = N1A(P7L_12);
wire P7_13;                                                                     //[PIX.NET:00273] PX7_13_(P7_13) = N1A(P7L_13);
wire P7_14;                                                                     //[PIX.NET:00274] PX7_14_(P7_14) = N1A(P7L_14);
wire P7_15;                                                                     //[PIX.NET:00275] PX7_15_(P7_15) = N1A(P7L_15);
wire TMODEL;                                                                    //[PIX.NET:00280] TMODEL_(TMODEL) = N1A(TMODE);
wire DATA;                                                                      //[PIX.NET:00281] DATA_(DATA) = NR2C(BLANKING,TMODE);
wire ADDR;                                                                      //[PIX.NET:00282] ADDR_(ADDR) = NR2C(BLANKING,TMODEL);
wire P8L_0;                                                                     //[PIX.NET:00283] P8L_0_(P8L_0) = AO2A(DATA,P7_0,ADDR,P6_0);
wire P8L_1;                                                                     //[PIX.NET:00284] P8L_1_(P8L_1) = AO2A(DATA,P7_1,ADDR,P6_1);
wire P8L_2;                                                                     //[PIX.NET:00285] P8L_2_(P8L_2) = AO2A(DATA,P7_2,ADDR,P6_2);
wire P8L_3;                                                                     //[PIX.NET:00286] P8L_3_(P8L_3) = AO2A(DATA,P7_3,ADDR,P6_3);
wire P8L_4;                                                                     //[PIX.NET:00287] P8L_4_(P8L_4) = AO2A(DATA,P7_4,ADDR,P6_4);
wire P8L_5;                                                                     //[PIX.NET:00288] P8L_5_(P8L_5) = AO2A(DATA,P7_5,ADDR,P6_5);
wire P8L_6;                                                                     //[PIX.NET:00289] P8L_6_(P8L_6) = AO2A(DATA,P7_6,ADDR,P6_6);
wire P8L_7;                                                                     //[PIX.NET:00290] P8L_7_(P8L_7) = AO2A(DATA,P7_7,ADDR,P6_7);
wire P8L_8;                                                                     //[PIX.NET:00291] P8L_8_(P8L_8) = AO2A(DATA,P7_8,ADDR,P6_0);
wire P8L_9;                                                                     //[PIX.NET:00292] P8L_9_(P8L_9) = AO2A(DATA,P7_9,ADDR,P6_1);
wire P8L_10;                                                                    //[PIX.NET:00293] P8L_10_(P8L_10) = AO2A(DATA,P7_10,ADDR,P6_2);
wire P8L_11;                                                                    //[PIX.NET:00294] P8L_11_(P8L_11) = AO2A(DATA,P7_11,ADDR,P6_3);
wire P8L_12;                                                                    //[PIX.NET:00295] P8L_12_(P8L_12) = AO2A(DATA,P7_12,ADDR,P6_4);
wire P8L_13;                                                                    //[PIX.NET:00296] P8L_13_(P8L_13) = AO2A(DATA,P7_13,ADDR,P6_5);
wire P8L_14;                                                                    //[PIX.NET:00297] P8L_14_(P8L_14) = AO2A(DATA,P7_14,ADDR,P6_6);
wire P8L_15;                                                                    //[PIX.NET:00298] P8L_15_(P8L_15) = AO2A(DATA,P7_15,ADDR,P6_7);
wire BORDERD;                                                                   //[PIX.NET:00303] BORDERD_(BORDERD,BORDERDL) = FD2A(BORDER,CLK,RESL);
wire BORDERDL;                                                                  //[PIX.NET:00303] BORDERD_(BORDERD,BORDERDL) = FD2A(BORDER,CLK,RESL);
wire BLANKINGL;                                                                 //[PIX.NET:00304] BLANKINGL_(BLANKINGL) = N1A(BLANKING);
wire PIXEL;                                                                     //[PIX.NET:00305] PIXEL_(PIXEL) = ND2C(BORDERD,BLANKINGL);
wire PIXELL;                                                                    //[PIX.NET:00306] PIXELL_(PIXELL) = N1C(PIXEL);
wire P9_0;                                                                      //[PIX.NET:00307] P9_0_(P9_0) = AO2A(PIXELL,BCB_0,PIXEL,P8L_0);
wire P9_1;                                                                      //[PIX.NET:00308] P9_1_(P9_1) = AO2A(PIXELL,BCB_1,PIXEL,P8L_1);
wire P9_2;                                                                      //[PIX.NET:00309] P9_2_(P9_2) = AO2A(PIXELL,BCB_2,PIXEL,P8L_2);
wire P9_3;                                                                      //[PIX.NET:00310] P9_3_(P9_3) = AO2A(PIXELL,BCB_3,PIXEL,P8L_3);
wire P9_4;                                                                      //[PIX.NET:00311] P9_4_(P9_4) = AO2A(PIXELL,BCB_4,PIXEL,P8L_4);
wire P9_5;                                                                      //[PIX.NET:00312] P9_5_(P9_5) = AO2A(PIXELL,BCB_5,PIXEL,P8L_5);
wire P9_6;                                                                      //[PIX.NET:00313] P9_6_(P9_6) = AO2A(PIXELL,BCB_6,PIXEL,P8L_6);
wire P9_7;                                                                      //[PIX.NET:00314] P9_7_(P9_7) = AO2A(PIXELL,BCB_7,PIXEL,P8L_7);
wire P9_8;                                                                      //[PIX.NET:00315] P9_8_(P9_8) = AO2A(PIXELL,BCB_8,PIXEL,P8L_8);
wire P9_9;                                                                      //[PIX.NET:00316] P9_9_(P9_9) = AO2A(PIXELL,BCB_9,PIXEL,P8L_9);
wire P9_10;                                                                     //[PIX.NET:00317] P9_10_(P9_10) = AO2A(PIXELL,BCB_10,PIXEL,P8L_10);
wire P9_11;                                                                     //[PIX.NET:00318] P9_11_(P9_11) = AO2A(PIXELL,BCB_11,PIXEL,P8L_11);
wire P9_12;                                                                     //[PIX.NET:00319] P9_12_(P9_12) = AO2A(PIXELL,BCB_12,PIXEL,P8L_12);
wire P9_13;                                                                     //[PIX.NET:00320] P9_13_(P9_13) = AO2A(PIXELL,BCB_13,PIXEL,P8L_13);
wire P9_14;                                                                     //[PIX.NET:00321] P9_14_(P9_14) = AO2A(PIXELL,BCB_14,PIXEL,P8L_14);
wire P9_15;                                                                     //[PIX.NET:00322] P9_15_(P9_15) = AO2A(PIXELL,BCB_15,PIXEL,P8L_15);
wire R_0;                                                                       //[PIX.NET:00326] RL_0_(R_0,RL_0) = FD2A(P9_8,CLK,RESL);
wire R_1;                                                                       //[PIX.NET:00327] RL_1_(R_1,RL_1) = FD2A(P9_9,CLK,RESL);
wire R_2;                                                                       //[PIX.NET:00328] RL_2_(R_2,RL_2) = FD2A(P9_10,CLK,RESL);
wire R_3;                                                                       //[PIX.NET:00329] RL_3_(R_3,RL_3) = FD2A(P9_11,CLK,RESL);
wire G_0;                                                                       //[PIX.NET:00330] GL_0_(G_0,GL_0) = FD2A(P9_4,CLK,RESL);
wire G_1;                                                                       //[PIX.NET:00331] GL_1_(G_1,GL_1) = FD2A(P9_5,CLK,RESL);
wire G_2;                                                                       //[PIX.NET:00332] GL_2_(G_2,GL_2) = FD2A(P9_6,CLK,RESL);
wire G_3;                                                                       //[PIX.NET:00333] GL_3_(G_3,GL_3) = FD2A(P9_7,CLK,RESL);
wire B_0;                                                                       //[PIX.NET:00334] BL_0_(B_0,BL_0) = FD2A(P9_0,CLK,RESL);
wire B_1;                                                                       //[PIX.NET:00335] BL_1_(B_1,BL_1) = FD2A(P9_1,CLK,RESL);
wire B_2;                                                                       //[PIX.NET:00336] BL_2_(B_2,BL_2) = FD2A(P9_2,CLK,RESL);
wire B_3;                                                                       //[PIX.NET:00337] BL_3_(B_3,BL_3) = FD2A(P9_3,CLK,RESL);
wire MODEL_0;                                                                   //[PIX.NET:00341] MODE_0_(MODE_0,MODEL_0) = LD1A(WD_0,MODE);
wire MODEL_1;                                                                   //[PIX.NET:00342] MODE_1_(MODE_1,MODEL_1) = LD1A(WD_1,MODE);
wire GENLOCKL;                                                                  //[PIX.NET:00343] GENLOCK_(GENLOCK,GENLOCKL) = LD1A(WD_2,MODE);
wire INCEN;                                                                     //[PIX.NET:00344] INCEN_(INCEN,INCENL) = LD1A(WD_3,MODE);
wire INCENL;                                                                    //[PIX.NET:00344] INCEN_(INCEN,INCENL) = LD1A(WD_3,MODE);
wire BINC;                                                                      //[PIX.NET:00345] BINC_(BINC,BINCL) = LD1A(WD_4,MODE);
wire BINCL;                                                                     //[PIX.NET:00345] BINC_(BINC,BINCL) = LD1A(WD_4,MODE);
wire HOLD8L;                                                                    //[PIX.NET:00346] HOLD8_(HOLD8,HOLD8L) = LD1A(WD_5,MODE);
wire WRAP;                                                                      //[PIX.NET:00348] WRAP_(NOWRAP,WRAP) = LD1A(WD_7,MODE);
wire MEDRES;                                                                    //[PIX.NET:00351] MEDRES_(MEDRES) = NR2A(MODEL_0,MODE_1);
wire INCBITL;                                                                   //[PIX.NET:00357] INCBITL_(INCBITL) = AO2A(MEDRES,P0_7,MEDRESL,P1_3);
wire BORDERL;                                                                   //[PIX.NET:00358] BORDERL_(BORDERL) = N1A(BORDER);
wire INCD;                                                                      //[PIX.NET:00359] INCD_(INCD) = AO2A(BORDER,BINCL,BORDERL,INCBITL);
wire INC_0;                                                                     //[PIX.NET:00360] INC_0_(INC_0) = OR2A(INCD,INCENL);
wire INC_1;                                                                     //[PIX.NET:00364] INC_1_(INC_1,INCL_1) = FD2A(INC_0,CLK,RESL);
wire INCL_1;                                                                    //[PIX.NET:00364] INC_1_(INC_1,INCL_1) = FD2A(INC_0,CLK,RESL);
wire INCL_2;                                                                    //[PIX.NET:00365] INC_2_(INC_2,INCL_2) = FD2A(INC_1,CLK,RESL);
wire drv0_outD_0;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_0;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_0;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_0;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_1;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_1;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_1;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_1;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_2;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_2;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_2;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_2;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_3;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_3;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_3;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_3;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_4;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_4;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_4;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_4;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_5;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_5;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_5;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_5;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_6;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_6;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_6;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_6;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outD_7;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enD_7;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_outD_7;                                                               //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv1_enD_7;                                                                //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_0;                                                             //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enP7L_0;                                                              //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_1;                                                             //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enP7L_1;                                                              //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_2;                                                             //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enP7L_2;                                                              //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_3;                                                             //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enP7L_3;                                                              //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_4;                                                             //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enP7L_4;                                                              //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_5;                                                             //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_enP7L_5;                                                              //[PIX.NET:00024] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,P7L_0,P7L_1,P7L_2,P7L_3,P7L_4,P7L_5,
wire drv0_outP7L_6;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_6;                                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_7;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_7;                                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_8;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_8;                                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_9;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_9;                                                              //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_10;                                                            //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_10;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_11;                                                            //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_11;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_12;                                                            //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_12;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_13;                                                            //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_13;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_14;                                                            //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_14;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_outP7L_15;                                                            //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,
wire drv0_enP7L_15;                                                             //[PIX.NET:00025]    P7L_6,P7L_7,P7L_8,P7L_9,P7L_10,P7L_11,P7L_12,P7L_13,P7L_14,P7L_15,RL_0,RL_1,

assign RES = ~RESETL_0;                                                         //[PIX.NET:00031] RES_(RES) = N1A(RESETL_0);
assign RESL = ~RES;                                                             //[PIX.NET:00032] RESL_(RESL) = N1C(RES);

/* latch the 16 bit pixel data */

FD2A PIX0_0__inst (.MasterClock(MasterClock),.q(PIX0B_0),.qL(PIX0_0),.d(IDL_0),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00036] PIX0_0_(PIX0B_0,PIX0_0) = FD2A(IDL_0,PIXLD_0,RESL);
FD2A PIX0_1__inst (.MasterClock(MasterClock),.q(PIX0B_1),.qL(PIX0_1),.d(IDL_1),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00037] PIX0_1_(PIX0B_1,PIX0_1) = FD2A(IDL_1,PIXLD_0,RESL);
FD2A PIX0_2__inst (.MasterClock(MasterClock),.q(PIX0B_2),.qL(PIX0_2),.d(IDL_2),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00038] PIX0_2_(PIX0B_2,PIX0_2) = FD2A(IDL_2,PIXLD_0,RESL);
FD2A PIX0_3__inst (.MasterClock(MasterClock),.q(PIX0B_3),.qL(PIX0_3),.d(IDL_3),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00039] PIX0_3_(PIX0B_3,PIX0_3) = FD2A(IDL_3,PIXLD_0,RESL);
FD2A PIX0_4__inst (.MasterClock(MasterClock),.q(PIX0B_4),.qL(PIX0_4),.d(IDL_4),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00040] PIX0_4_(PIX0B_4,PIX0_4) = FD2A(IDL_4,PIXLD_0,RESL);
FD2A PIX0_5__inst (.MasterClock(MasterClock),.q(PIX0B_5),.qL(PIX0_5),.d(IDL_5),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00041] PIX0_5_(PIX0B_5,PIX0_5) = FD2A(IDL_5,PIXLD_0,RESL);
FD2A PIX0_6__inst (.MasterClock(MasterClock),.q(PIX0B_6),.qL(PIX0_6),.d(IDL_6),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00042] PIX0_6_(PIX0B_6,PIX0_6) = FD2A(IDL_6,PIXLD_0,RESL);
FD2A PIX0_7__inst (.MasterClock(MasterClock),.q(PIX0B_7),.qL(PIX0_7),.d(IDL_7),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00043] PIX0_7_(PIX0B_7,PIX0_7) = FD2A(IDL_7,PIXLD_0,RESL);
FD2A PIX1_0__inst (.MasterClock(MasterClock),.q(PIX1B_0),.qL(PIX1_0),.d(IDL_8),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00044] PIX1_0_(PIX1B_0,PIX1_0) = FD2A(IDL_8,PIXLD_0,RESL);
FD2A PIX1_1__inst (.MasterClock(MasterClock),.q(PIX1B_1),.qL(PIX1_1),.d(IDL_9),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00045] PIX1_1_(PIX1B_1,PIX1_1) = FD2A(IDL_9,PIXLD_0,RESL);
FD2A PIX1_2__inst (.MasterClock(MasterClock),.q(PIX1B_2),.qL(PIX1_2),.d(IDL_10),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00046] PIX1_2_(PIX1B_2,PIX1_2) = FD2A(IDL_10,PIXLD_0,RESL);
FD2A PIX1_3__inst (.MasterClock(MasterClock),.q(PIX1B_3),.qL(PIX1_3),.d(IDL_11),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00047] PIX1_3_(PIX1B_3,PIX1_3) = FD2A(IDL_11,PIXLD_0,RESL);
FD2A PIX1_4__inst (.MasterClock(MasterClock),.q(PIX1B_4),.qL(PIX1_4),.d(IDL_12),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00048] PIX1_4_(PIX1B_4,PIX1_4) = FD2A(IDL_12,PIXLD_0,RESL);
FD2A PIX1_5__inst (.MasterClock(MasterClock),.q(PIX1B_5),.qL(PIX1_5),.d(IDL_13),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00049] PIX1_5_(PIX1B_5,PIX1_5) = FD2A(IDL_13,PIXLD_0,RESL);
FD2A PIX1_6__inst (.MasterClock(MasterClock),.q(PIX1B_6),.qL(PIX1_6),.d(IDL_14),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00050] PIX1_6_(PIX1B_6,PIX1_6) = FD2A(IDL_14,PIXLD_0,RESL);
FD2A PIX1_7__inst (.MasterClock(MasterClock),.q(PIX1B_7),.qL(PIX1_7),.d(IDL_15),.clk(PIXLD_0),.rL(RESL));//[PIX.NET:00051] PIX1_7_(PIX1B_7,PIX1_7) = FD2A(IDL_15,PIXLD_0,RESL);
FD2A PIX2_0__inst (.MasterClock(MasterClock),.q(PIX2B_0),.qL(PIX2_0),.d(IDL_0),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00052] PIX2_0_(PIX2B_0,PIX2_0) = FD2A(IDL_0,PIXLD_1,RESL);
FD2A PIX2_1__inst (.MasterClock(MasterClock),.q(PIX2B_1),.qL(PIX2_1),.d(IDL_1),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00053] PIX2_1_(PIX2B_1,PIX2_1) = FD2A(IDL_1,PIXLD_1,RESL);
FD2A PIX2_2__inst (.MasterClock(MasterClock),.q(PIX2B_2),.qL(PIX2_2),.d(IDL_2),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00054] PIX2_2_(PIX2B_2,PIX2_2) = FD2A(IDL_2,PIXLD_1,RESL);
FD2A PIX2_3__inst (.MasterClock(MasterClock),.q(PIX2B_3),.qL(PIX2_3),.d(IDL_3),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00055] PIX2_3_(PIX2B_3,PIX2_3) = FD2A(IDL_3,PIXLD_1,RESL);
FD2A PIX2_4__inst (.MasterClock(MasterClock),.q(PIX2B_4),.qL(PIX2_4),.d(IDL_4),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00056] PIX2_4_(PIX2B_4,PIX2_4) = FD2A(IDL_4,PIXLD_1,RESL);
FD2A PIX2_5__inst (.MasterClock(MasterClock),.q(PIX2B_5),.qL(PIX2_5),.d(IDL_5),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00057] PIX2_5_(PIX2B_5,PIX2_5) = FD2A(IDL_5,PIXLD_1,RESL);
FD2A PIX2_6__inst (.MasterClock(MasterClock),.q(PIX2B_6),.qL(PIX2_6),.d(IDL_6),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00058] PIX2_6_(PIX2B_6,PIX2_6) = FD2A(IDL_6,PIXLD_1,RESL);
FD2A PIX2_7__inst (.MasterClock(MasterClock),.q(PIX2B_7),.qL(PIX2_7),.d(IDL_7),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00059] PIX2_7_(PIX2B_7,PIX2_7) = FD2A(IDL_7,PIXLD_1,RESL);
FD2A PIX3_0__inst (.MasterClock(MasterClock),.q(PIX3B_0),.qL(PIX3_0),.d(IDL_8),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00060] PIX3_0_(PIX3B_0,PIX3_0) = FD2A(IDL_8,PIXLD_1,RESL);
FD2A PIX3_1__inst (.MasterClock(MasterClock),.q(PIX3B_1),.qL(PIX3_1),.d(IDL_9),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00061] PIX3_1_(PIX3B_1,PIX3_1) = FD2A(IDL_9,PIXLD_1,RESL);
FD2A PIX3_2__inst (.MasterClock(MasterClock),.q(PIX3B_2),.qL(PIX3_2),.d(IDL_10),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00062] PIX3_2_(PIX3B_2,PIX3_2) = FD2A(IDL_10,PIXLD_1,RESL);
FD2A PIX3_3__inst (.MasterClock(MasterClock),.q(PIX3B_3),.qL(PIX3_3),.d(IDL_11),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00063] PIX3_3_(PIX3B_3,PIX3_3) = FD2A(IDL_11,PIXLD_1,RESL);
FD2A PIX3_4__inst (.MasterClock(MasterClock),.q(PIX3B_4),.qL(PIX3_4),.d(IDL_12),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00064] PIX3_4_(PIX3B_4,PIX3_4) = FD2A(IDL_12,PIXLD_1,RESL);
FD2A PIX3_5__inst (.MasterClock(MasterClock),.q(PIX3B_5),.qL(PIX3_5),.d(IDL_13),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00065] PIX3_5_(PIX3B_5,PIX3_5) = FD2A(IDL_13,PIXLD_1,RESL);
FD2A PIX3_6__inst (.MasterClock(MasterClock),.q(PIX3B_6),.qL(PIX3_6),.d(IDL_14),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00066] PIX3_6_(PIX3B_6,PIX3_6) = FD2A(IDL_14,PIXLD_1,RESL);
FD2A PIX3_7__inst (.MasterClock(MasterClock),.q(PIX3B_7),.qL(PIX3_7),.d(IDL_15),.clk(PIXLD_1),.rL(RESL));//[PIX.NET:00067] PIX3_7_(PIX3B_7,PIX3_7) = FD2A(IDL_15,PIXLD_1,RESL);

/* select one of four bytes */

m_MUX4 P0_0_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_0),.D_1(PIX1_0),.D_2(PIX2_0),.D_3(PIX3_0),.Q(P0_0));//[PIX.NET:00071] P0_0_(P0_0) = MUX4(PIXAD_0,PIXAD_1,PIX0_0,PIX1_0,PIX2_0,PIX3_0);
m_MUX4 P0_1_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_1),.D_1(PIX1_1),.D_2(PIX2_1),.D_3(PIX3_1),.Q(P0_1));//[PIX.NET:00072] P0_1_(P0_1) = MUX4(PIXAD_0,PIXAD_1,PIX0_1,PIX1_1,PIX2_1,PIX3_1);
m_MUX4 P0_2_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_2),.D_1(PIX1_2),.D_2(PIX2_2),.D_3(PIX3_2),.Q(P0_2));//[PIX.NET:00073] P0_2_(P0_2) = MUX4(PIXAD_0,PIXAD_1,PIX0_2,PIX1_2,PIX2_2,PIX3_2);
m_MUX4 P0_3_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_3),.D_1(PIX1_3),.D_2(PIX2_3),.D_3(PIX3_3),.Q(P0_3));//[PIX.NET:00074] P0_3_(P0_3) = MUX4(PIXAD_0,PIXAD_1,PIX0_3,PIX1_3,PIX2_3,PIX3_3);
m_MUX4 P0_4_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_4),.D_1(PIX1_4),.D_2(PIX2_4),.D_3(PIX3_4),.Q(P0_4));//[PIX.NET:00075] P0_4_(P0_4) = MUX4(PIXAD_0,PIXAD_1,PIX0_4,PIX1_4,PIX2_4,PIX3_4);
m_MUX4 P0_5_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_5),.D_1(PIX1_5),.D_2(PIX2_5),.D_3(PIX3_5),.Q(P0_5));//[PIX.NET:00076] P0_5_(P0_5) = MUX4(PIXAD_0,PIXAD_1,PIX0_5,PIX1_5,PIX2_5,PIX3_5);
m_MUX4 P0_6_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_6),.D_1(PIX1_6),.D_2(PIX2_6),.D_3(PIX3_6),.Q(P0_6));//[PIX.NET:00077] P0_6_(P0_6) = MUX4(PIXAD_0,PIXAD_1,PIX0_6,PIX1_6,PIX2_6,PIX3_6);
m_MUX4 P0_7_ (.MasterClock(MasterClock),.A(PIXAD_0),.B(PIXAD_1),.D_0(PIX0_7),.D_1(PIX1_7),.D_2(PIX2_7),.D_3(PIX3_7),.Q(P0_7));//[PIX.NET:00078] P0_7_(P0_7) = MUX4(PIXAD_0,PIXAD_1,PIX0_7,PIX1_7,PIX2_7,PIX3_7);

/* select low or high nibble */

assign LORESL = ~LORES;                                                         //[PIX.NET:00082] LORESL_(LORESL) = N1A(LORES);
assign LONIB = ~((LORES & HC_1)|(LORESL & HC_0));                               //[PIX.NET:00083] LONIB_(LONIB) = AO2A(LORES,HC_1,LORESL,HC_0);
assign HINIB = ~LONIB;                                                          //[PIX.NET:00084] HINIB_(HINIB) = N1A(LONIB);
assign P1L_0 = ~((LONIB & P0_0)|(HINIB & P0_4));                                //[PIX.NET:00085] P1L_0_(P1L_0) = AO2A(LONIB,P0_0,HINIB,P0_4);
assign P1L_1 = ~((LONIB & P0_1)|(HINIB & P0_5));                                //[PIX.NET:00086] P1L_1_(P1L_1) = AO2A(LONIB,P0_1,HINIB,P0_5);
assign P1L_2 = ~((LONIB & P0_2)|(HINIB & P0_6));                                //[PIX.NET:00087] P1L_2_(P1L_2) = AO2A(LONIB,P0_2,HINIB,P0_6);
assign P1L_3 = ~((LONIB & P0_3)|(HINIB & P0_7));                                //[PIX.NET:00088] P1L_3_(P1L_3) = AO2A(LONIB,P0_3,HINIB,P0_7);
assign P1_0 = ~P1L_0;                                                           //[PIX.NET:00089] P1_0_(P1_0) = N1A(P1L_0);
assign P1_1 = ~P1L_1;                                                           //[PIX.NET:00090] P1_1_(P1_1) = N1A(P1L_1);
assign P1_2 = ~P1L_2;                                                           //[PIX.NET:00091] P1_2_(P1_2) = N1A(P1L_2);
assign P1_3 = ~P1L_3;                                                           //[PIX.NET:00092] P1_3_(P1_3) = N1A(P1L_3);

/* select byte or nibble */
/* If variable resolution mode the select signal is taken from
bit 7 of the pixel */
/* NB where nibbles are used the top four bits become zero */

assign BYTE = ~((VARRES & P0_7)|(VARRESL & MEDRESL));                           //[PIX.NET:00099] BYTE_(BYTE) = AO2B(VARRES,P0_7,VARRESL,MEDRESL);
assign NIBBLE = ~BYTE;                                                          //[PIX.NET:00100] NIBBLE_(NIBBLE) = N1A(BYTE);

assign P2L_0 = ~((BYTE & P0_0)|(NIBBLE & P1_0));                                //[PIX.NET:00102] P2L_0_(P2L_0) = AO2A(BYTE,P0_0,NIBBLE,P1_0);
assign P2L_1 = ~((BYTE & P0_1)|(NIBBLE & P1_1));                                //[PIX.NET:00103] P2L_1_(P2L_1) = AO2A(BYTE,P0_1,NIBBLE,P1_1);
assign P2L_2 = ~((BYTE & P0_2)|(NIBBLE & P1_2));                                //[PIX.NET:00104] P2L_2_(P2L_2) = AO2A(BYTE,P0_2,NIBBLE,P1_2);
assign P2L_3 = ~((BYTE & P0_3)|(NIBBLE & P1_3));                                //[PIX.NET:00105] P2L_3_(P2L_3) = AO2A(BYTE,P0_3,NIBBLE,P1_3);
assign P2L_4 = ~((BYTE & P0_4)|(NIBBLE & RES));                                 //[PIX.NET:00106] P2L_4_(P2L_4) = AO2A(BYTE,P0_4,NIBBLE,RES);
assign P2L_5 = ~((BYTE & P0_5)|(NIBBLE & RES));                                 //[PIX.NET:00107] P2L_5_(P2L_5) = AO2A(BYTE,P0_5,NIBBLE,RES);
assign P2L_6 = ~((BYTE & P0_6)|(NIBBLE & RES));                                 //[PIX.NET:00108] P2L_6_(P2L_6) = AO2A(BYTE,P0_6,NIBBLE,RES);
assign P2L_7 = ~((BYTE & P0_7)|(NIBBLE & RES));                                 //[PIX.NET:00109] P2L_7_(P2L_7) = AO2A(BYTE,P0_7,NIBBLE,RES);

/* latch the border colour */

LD1A BC_0__inst (.MasterClock(MasterClock),.q(BC_0),.qL(BCB_0),.d(WD_0),.en(BORDL));//[PIX.NET:00113] BC_0_(BC_0,BCB_0) = LD1A(WD_0,BORDL);
LD1A BC_1__inst (.MasterClock(MasterClock),.q(BC_1),.qL(BCB_1),.d(WD_1),.en(BORDL));//[PIX.NET:00114] BC_1_(BC_1,BCB_1) = LD1A(WD_1,BORDL);
LD1A BC_2__inst (.MasterClock(MasterClock),.q(BC_2),.qL(BCB_2),.d(WD_2),.en(BORDL));//[PIX.NET:00115] BC_2_(BC_2,BCB_2) = LD1A(WD_2,BORDL);
LD1A BC_3__inst (.MasterClock(MasterClock),.q(BC_3),.qL(BCB_3),.d(WD_3),.en(BORDL));//[PIX.NET:00116] BC_3_(BC_3,BCB_3) = LD1A(WD_3,BORDL);
LD1A BC_4__inst (.MasterClock(MasterClock),.q(BC_4),.qL(BCB_4),.d(WD_4),.en(BORDL));//[PIX.NET:00117] BC_4_(BC_4,BCB_4) = LD1A(WD_4,BORDL);
LD1A BC_5__inst (.MasterClock(MasterClock),.q(BC_5),.qL(BCB_5),.d(WD_5),.en(BORDL));//[PIX.NET:00118] BC_5_(BC_5,BCB_5) = LD1A(WD_5,BORDL);
LD1A BC_6__inst (.MasterClock(MasterClock),.q(BC_6),.qL(BCB_6),.d(WD_6),.en(BORDL));//[PIX.NET:00119] BC_6_(BC_6,BCB_6) = LD1A(WD_6,BORDL);
LD1A BC_7__inst (.MasterClock(MasterClock),.q(BC_7),.qL(BCB_7),.d(WD_7),.en(BORDL));//[PIX.NET:00120] BC_7_(BC_7,BCB_7) = LD1A(WD_7,BORDL);
LD1A BC_8__inst (.MasterClock(MasterClock),.q(BC_8),.qL(BCB_8),.d(WD_0),.en(BORDH));//[PIX.NET:00121] BC_8_(BC_8,BCB_8) = LD1A(WD_0,BORDH);
LD1A BC_9__inst (.MasterClock(MasterClock),.q(BC_9),.qL(BCB_9),.d(WD_1),.en(BORDH));//[PIX.NET:00122] BC_9_(BC_9,BCB_9) = LD1A(WD_1,BORDH);
LD1A BC_10__inst (.MasterClock(MasterClock),.q(BC_10),.qL(BCB_10),.d(WD_2),.en(BORDH));//[PIX.NET:00123] BC_10_(BC_10,BCB_10) = LD1A(WD_2,BORDH);
LD1A BC_11__inst (.MasterClock(MasterClock),.q(BC_11),.qL(BCB_11),.d(WD_3),.en(BORDH));//[PIX.NET:00124] BC_11_(BC_11,BCB_11) = LD1A(WD_3,BORDH);
LD1A BC_12__inst (.MasterClock(MasterClock),.q(BC_12),.qL(BCB_12),.d(WD_4),.en(BORDH));//[PIX.NET:00125] BC_12_(BC_12,BCB_12) = LD1A(WD_4,BORDH);
LD1A BC_13__inst (.MasterClock(MasterClock),.q(BC_13),.qL(BCB_13),.d(WD_5),.en(BORDH));//[PIX.NET:00126] BC_13_(BC_13,BCB_13) = LD1A(WD_5,BORDH);
LD1A BC_14__inst (.MasterClock(MasterClock),.q(BC_14),.qL(BCB_14),.d(WD_6),.en(BORDH));//[PIX.NET:00127] BC_14_(BC_14,BCB_14) = LD1A(WD_6,BORDH);
LD1A BC_15__inst (.MasterClock(MasterClock),.q(BC_15),.qL(BCB_15),.d(WD_7),.en(BORDH));//[PIX.NET:00128] BC_15_(BC_15,BCB_15) = LD1A(WD_7,BORDH);

/* latch the nibble hold mode */

LD1A HOLD4__inst (.MasterClock(MasterClock),.q(HOLD4),.qL(HOLD4L),.d(WD_0),.en(TRANS));//[PIX.NET:00132] HOLD4_(HOLD4,HOLD4L) = LD1A(WD_0,TRANS);

/* compare colour with zero */

assign ZERO4 = P2L_0 & P2L_1 & P2L_2 & P2L_3;                                   //[PIX.NET:00136] ZERO4_(ZERO4) = AND4A(P2L_0,P2L_1,P2L_2,P2L_3);
m_MACAND8 ZERO8_ (.MasterClock(MasterClock),.A(P2L_0),.B(P2L_1),.C(P2L_2),.D(P2L_3),.E(P2L_4),.F(P2L_5),.G(P2L_6),.H(P2L_7),.Q(ZERO8));//[PIX.NET:00137] ZERO8_(ZERO8) = MACAND8(P2L_0,P2L_1,P2L_2,P2L_3,P2L_4,P2L_5,P2L_6,P2L_7);

/* use previous byte or nibble if zero and mode demands */

assign PREV8L = ~(HOLD8 & ZERO8);                                               //[PIX.NET:00141] PREV8L_(PREV8L) = ND2A(HOLD8,ZERO8);
assign PREV8 = ~PREV8L;                                                         //[PIX.NET:00142] PREV8_(PREV8) = N1A(PREV8L);
assign PREV4L = ~((HOLD8 & ZERO8)|(HOLD4 & ZERO4));                             //[PIX.NET:00143] PREV4L_(PREV4L) = AO2A(HOLD8,ZERO8,HOLD4,ZERO4);
assign PREV4 = ~PREV4L;                                                         //[PIX.NET:00144] PREV4_(PREV4) = N1A(PREV4L);

assign P4_0 = ~((PREV4 & P5L_0)|(PREV4L & P2L_0));                              //[PIX.NET:00146] P4L_0_(P4_0) = AO2A(PREV4,P5L_0,PREV4L,P2L_0);
assign P4_1 = ~((PREV4 & P5L_1)|(PREV4L & P2L_1));                              //[PIX.NET:00147] P4L_1_(P4_1) = AO2A(PREV4,P5L_1,PREV4L,P2L_1);
assign P4_2 = ~((PREV4 & P5L_2)|(PREV4L & P2L_2));                              //[PIX.NET:00148] P4L_2_(P4_2) = AO2A(PREV4,P5L_2,PREV4L,P2L_2);
assign P4_3 = ~((PREV4 & P5L_3)|(PREV4L & P2L_3));                              //[PIX.NET:00149] P4L_3_(P4_3) = AO2A(PREV4,P5L_3,PREV4L,P2L_3);
assign P4_4 = ~((PREV8 & P5L_4)|(PREV8L & P2L_4));                              //[PIX.NET:00150] P4L_4_(P4_4) = AO2A(PREV8,P5L_4,PREV8L,P2L_4);
assign P4_5 = ~((PREV8 & P5L_5)|(PREV8L & P2L_5));                              //[PIX.NET:00151] P4L_5_(P4_5) = AO2A(PREV8,P5L_5,PREV8L,P2L_5);
assign P4_6 = ~((PREV8 & P5L_6)|(PREV8L & P2L_6));                              //[PIX.NET:00152] P4L_6_(P4_6) = AO2A(PREV8,P5L_6,PREV8L,P2L_6);
assign P4_7 = ~((PREV8 & P5L_7)|(PREV8L & P2L_7));                              //[PIX.NET:00153] P4L_7_(P4_7) = AO2A(PREV8,P5L_7,PREV8L,P2L_7);

/* latch the pixel to store previous pixel and re-sync pixels */

FD2A P5_0__inst (.MasterClock(MasterClock),.q(P5_0),.qL(P5L_0),.d(P4_0),.clk(CLK),.rL(RESL));//[PIX.NET:00157] P5_0_(P5_0,P5L_0) = FD2A(P4_0,CLK,RESL);
FD2A P5_1__inst (.MasterClock(MasterClock),.q(P5_1),.qL(P5L_1),.d(P4_1),.clk(CLK),.rL(RESL));//[PIX.NET:00158] P5_1_(P5_1,P5L_1) = FD2A(P4_1,CLK,RESL);
FD2A P5_2__inst (.MasterClock(MasterClock),.q(P5_2),.qL(P5L_2),.d(P4_2),.clk(CLK),.rL(RESL));//[PIX.NET:00159] P5_2_(P5_2,P5L_2) = FD2A(P4_2,CLK,RESL);
FD2A P5_3__inst (.MasterClock(MasterClock),.q(P5_3),.qL(P5L_3),.d(P4_3),.clk(CLK),.rL(RESL));//[PIX.NET:00160] P5_3_(P5_3,P5L_3) = FD2A(P4_3,CLK,RESL);
FD2A P5_4__inst (.MasterClock(MasterClock),.q(P5_4),.qL(P5L_4),.d(P4_4),.clk(CLK),.rL(RESL));//[PIX.NET:00161] P5_4_(P5_4,P5L_4) = FD2A(P4_4,CLK,RESL);
FD2A P5_5__inst (.MasterClock(MasterClock),.q(P5_5),.qL(P5L_5),.d(P4_5),.clk(CLK),.rL(RESL));//[PIX.NET:00162] P5_5_(P5_5,P5L_5) = FD2A(P4_5,CLK,RESL);
FD2A P5_6__inst (.MasterClock(MasterClock),.q(P5_6),.qL(P5L_6),.d(P4_6),.clk(CLK),.rL(RESL));//[PIX.NET:00163] P5_6_(P5_6,P5L_6) = FD2A(P4_6,CLK,RESL);
FD2A P5_7__inst (.MasterClock(MasterClock),.q(P5_7),.qL(P5L_7),.d(P4_7),.clk(CLK),.rL(RESL));//[PIX.NET:00164] P5_7_(P5_7,P5L_7) = FD2A(P4_7,CLK,RESL);

/* latch the colour mask */

LD1A M_0__inst (.MasterClock(MasterClock),.q(M_0),.qL(MB_0),.d(WD_0),.en(MASK));//[PIX.NET:00168] M_0_(M_0,MB_0) = LD1A(WD_0,MASK);
LD1A M_1__inst (.MasterClock(MasterClock),.q(M_1),.qL(MB_1),.d(WD_1),.en(MASK));//[PIX.NET:00169] M_1_(M_1,MB_1) = LD1A(WD_1,MASK);
LD1A M_2__inst (.MasterClock(MasterClock),.q(M_2),.qL(MB_2),.d(WD_2),.en(MASK));//[PIX.NET:00170] M_2_(M_2,MB_2) = LD1A(WD_2,MASK);
LD1A M_3__inst (.MasterClock(MasterClock),.q(M_3),.qL(MB_3),.d(WD_3),.en(MASK));//[PIX.NET:00171] M_3_(M_3,MB_3) = LD1A(WD_3,MASK);
LD1A M_4__inst (.MasterClock(MasterClock),.q(M_4),.qL(MB_4),.d(WD_4),.en(MASK));//[PIX.NET:00172] M_4_(M_4,MB_4) = LD1A(WD_4,MASK);
LD1A M_5__inst (.MasterClock(MasterClock),.q(M_5),.qL(MB_5),.d(WD_5),.en(MASK));//[PIX.NET:00173] M_5_(M_5,MB_5) = LD1A(WD_5,MASK);
LD1A M_6__inst (.MasterClock(MasterClock),.q(M_6),.qL(MB_6),.d(WD_6),.en(MASK));//[PIX.NET:00174] M_6_(M_6,MB_6) = LD1A(WD_6,MASK);
LD1A M_7__inst (.MasterClock(MasterClock),.q(M_7),.qL(MB_7),.d(WD_7),.en(MASK));//[PIX.NET:00175] M_7_(M_7,MB_7) = LD1A(WD_7,MASK);

/* latch the colour index */

LD1A I_0__inst (.MasterClock(MasterClock),.q(I_0),.qL(IB_0),.d(WD_0),.en(INDEX));//[PIX.NET:00179] I_0_(I_0,IB_0) = LD1A(WD_0,INDEX);
LD1A I_1__inst (.MasterClock(MasterClock),.q(I_1),.qL(IB_1),.d(WD_1),.en(INDEX));//[PIX.NET:00180] I_1_(I_1,IB_1) = LD1A(WD_1,INDEX);
LD1A I_2__inst (.MasterClock(MasterClock),.q(I_2),.qL(IB_2),.d(WD_2),.en(INDEX));//[PIX.NET:00181] I_2_(I_2,IB_2) = LD1A(WD_2,INDEX);
LD1A I_3__inst (.MasterClock(MasterClock),.q(I_3),.qL(IB_3),.d(WD_3),.en(INDEX));//[PIX.NET:00182] I_3_(I_3,IB_3) = LD1A(WD_3,INDEX);
LD1A I_4__inst (.MasterClock(MasterClock),.q(I_4),.qL(IB_4),.d(WD_4),.en(INDEX));//[PIX.NET:00183] I_4_(I_4,IB_4) = LD1A(WD_4,INDEX);
LD1A I_5__inst (.MasterClock(MasterClock),.q(I_5),.qL(IB_5),.d(WD_5),.en(INDEX));//[PIX.NET:00184] I_5_(I_5,IB_5) = LD1A(WD_5,INDEX);
LD1A I_6__inst (.MasterClock(MasterClock),.q(I_6),.qL(IB_6),.d(WD_6),.en(INDEX));//[PIX.NET:00185] I_6_(I_6,IB_6) = LD1A(WD_6,INDEX);
LD1A I_7__inst (.MasterClock(MasterClock),.q(I_7),.qL(IB_7),.d(WD_7),.en(INDEX));//[PIX.NET:00186] I_7_(I_7,IB_7) = LD1A(WD_7,INDEX);

/* select either the index or the pixel */

assign P6_0 = ~((M_0 & IB_0)|(MB_0 & P5L_0));                                   //[PIX.NET:00190] P6_0_(P6_0) = AO2A(M_0,IB_0,MB_0,P5L_0);
assign P6_1 = ~((M_1 & IB_1)|(MB_1 & P5L_1));                                   //[PIX.NET:00191] P6_1_(P6_1) = AO2A(M_1,IB_1,MB_1,P5L_1);
assign P6_2 = ~((M_2 & IB_2)|(MB_2 & P5L_2));                                   //[PIX.NET:00192] P6_2_(P6_2) = AO2A(M_2,IB_2,MB_2,P5L_2);
assign P6_3 = ~((M_3 & IB_3)|(MB_3 & P5L_3));                                   //[PIX.NET:00193] P6_3_(P6_3) = AO2A(M_3,IB_3,MB_3,P5L_3);
assign P6_4 = ~((M_4 & IB_4)|(MB_4 & P5L_4));                                   //[PIX.NET:00194] P6_4_(P6_4) = AO2A(M_4,IB_4,MB_4,P5L_4);
assign P6_5 = ~((M_5 & IB_5)|(MB_5 & P5L_5));                                   //[PIX.NET:00195] P6_5_(P6_5) = AO2A(M_5,IB_5,MB_5,P5L_5);
assign P6_6 = ~((M_6 & IB_6)|(MB_6 & P5L_6));                                   //[PIX.NET:00196] P6_6_(P6_6) = AO2A(M_6,IB_6,MB_6,P5L_6);
assign P6_7 = ~((M_7 & IB_7)|(MB_7 & P5L_7));                                   //[PIX.NET:00197] P6_7_(P6_7) = AO2A(M_7,IB_7,MB_7,P5L_7);

/* look up the physical colour in the palette */
/* latch even palette data..so it can be written during odd writes */

LD1A PED_0__inst (.MasterClock(MasterClock),.q(PED_0),.qL(PEDL_0),.d(inD_0),.en(EVEN));//[PIX.NET:00202] PED_0_(PED_0,PEDL_0) = LD1A(D_0,EVEN);
LD1A PED_1__inst (.MasterClock(MasterClock),.q(PED_1),.qL(PEDL_1),.d(inD_1),.en(EVEN));//[PIX.NET:00203] PED_1_(PED_1,PEDL_1) = LD1A(D_1,EVEN);
LD1A PED_2__inst (.MasterClock(MasterClock),.q(PED_2),.qL(PEDL_2),.d(inD_2),.en(EVEN));//[PIX.NET:00204] PED_2_(PED_2,PEDL_2) = LD1A(D_2,EVEN);
LD1A PED_3__inst (.MasterClock(MasterClock),.q(PED_3),.qL(PEDL_3),.d(inD_3),.en(EVEN));//[PIX.NET:00205] PED_3_(PED_3,PEDL_3) = LD1A(D_3,EVEN);
LD1A PED_4__inst (.MasterClock(MasterClock),.q(PED_4),.qL(PEDL_4),.d(inD_4),.en(EVEN));//[PIX.NET:00206] PED_4_(PED_4,PEDL_4) = LD1A(D_4,EVEN);
LD1A PED_5__inst (.MasterClock(MasterClock),.q(PED_5),.qL(PEDL_5),.d(inD_5),.en(EVEN));//[PIX.NET:00207] PED_5_(PED_5,PEDL_5) = LD1A(D_5,EVEN);
LD1A PED_6__inst (.MasterClock(MasterClock),.q(PED_6),.qL(PEDL_6),.d(inD_6),.en(EVEN));//[PIX.NET:00208] PED_6_(PED_6,PEDL_6) = LD1A(D_6,EVEN);
LD1A PED_7__inst (.MasterClock(MasterClock),.q(PED_7),.qL(PEDL_7),.d(inD_7),.en(EVEN));//[PIX.NET:00209] PED_7_(PED_7,PEDL_7) = LD1A(D_7,EVEN);
assign EVEN = PALCS & WE & AL_0;                                                //[PIX.NET:00210] EVEN_(EVEN) = AND3A(PALCS,WE,AL_0);

assign PALCSL = ~PALCS;                                                         //[PIX.NET:00212] PALCSL_(PALCSL) = N1C(PALCS);
assign PA_0 = ~((PALCSL & P6_0)|(PALCS & A_1));                                 //[PIX.NET:00213] PA_0_(PA_0) = AO2A(PALCSL,P6_0,PALCS,A_1);
assign PA_1 = ~((PALCSL & P6_1)|(PALCS & A_2));                                 //[PIX.NET:00214] PA_1_(PA_1) = AO2A(PALCSL,P6_1,PALCS,A_2);
assign PA_2 = ~((PALCSL & P6_2)|(PALCS & A_3));                                 //[PIX.NET:00215] PA_2_(PA_2) = AO2A(PALCSL,P6_2,PALCS,A_3);
assign PA_3 = ~((PALCSL & P6_3)|(PALCS & A_4));                                 //[PIX.NET:00216] PA_3_(PA_3) = AO2A(PALCSL,P6_3,PALCS,A_4);
assign PA_4 = ~((PALCSL & P6_4)|(PALCS & A_5));                                 //[PIX.NET:00217] PA_4_(PA_4) = AO2A(PALCSL,P6_4,PALCS,A_5);
assign PA_5 = ~((PALCSL & P6_5)|(PALCS & A_6));                                 //[PIX.NET:00218] PA_5_(PA_5) = AO2A(PALCSL,P6_5,PALCS,A_6);
assign PA_6 = ~((PALCSL & P6_6)|(PALCS & A_7));                                 //[PIX.NET:00219] PA_6_(PA_6) = AO2A(PALCSL,P6_6,PALCS,A_7);
assign PA_7 = ~((PALCSL & P6_7)|(PALCS & A_8));                                 //[PIX.NET:00220] PA_7_(PA_7) = AO2A(PALCSL,P6_7,PALCS,A_8);
assign PCS = RESL;                                                              //[PIX.NET:00221] PCS_(PCS) = B3A(RESL);
assign PWR = ~(PALCSL | WRL);                                                   //[PIX.NET:00222] PWR_(PWR) = NR2C(PALCSL,WRL);
assign drv0_outP7L_0 = ~PED_0; assign drv0_enP7L_0 = PWR;                       //[PIX.NET:00223] P7_0_(P7L_0) = BTS5A(PED_0,PWR);
assign drv0_outP7L_1 = ~PED_1; assign drv0_enP7L_1 = PWR;                       //[PIX.NET:00224] P7_1_(P7L_1) = BTS5A(PED_1,PWR);
assign drv0_outP7L_2 = ~PED_2; assign drv0_enP7L_2 = PWR;                       //[PIX.NET:00225] P7_2_(P7L_2) = BTS5A(PED_2,PWR);
assign drv0_outP7L_3 = ~PED_3; assign drv0_enP7L_3 = PWR;                       //[PIX.NET:00226] P7_3_(P7L_3) = BTS5A(PED_3,PWR);
assign drv0_outP7L_4 = ~PED_4; assign drv0_enP7L_4 = PWR;                       //[PIX.NET:00227] P7_4_(P7L_4) = BTS5A(PED_4,PWR);
assign drv0_outP7L_5 = ~PED_5; assign drv0_enP7L_5 = PWR;                       //[PIX.NET:00228] P7_5_(P7L_5) = BTS5A(PED_5,PWR);
assign drv0_outP7L_6 = ~PED_6; assign drv0_enP7L_6 = PWR;                       //[PIX.NET:00229] P7_6_(P7L_6) = BTS5A(PED_6,PWR);
assign drv0_outP7L_7 = ~PED_7; assign drv0_enP7L_7 = PWR;                       //[PIX.NET:00230] P7_7_(P7L_7) = BTS5A(PED_7,PWR);
assign drv0_outP7L_8 = ~inD_0; assign drv0_enP7L_8 = PWR;                       //[PIX.NET:00231] P7_8_(P7L_8) = BTS5A(D_0,PWR);
assign drv0_outP7L_9 = ~inD_1; assign drv0_enP7L_9 = PWR;                       //[PIX.NET:00232] P7_9_(P7L_9) = BTS5A(D_1,PWR);
assign drv0_outP7L_10 = ~inD_2; assign drv0_enP7L_10 = PWR;                     //[PIX.NET:00233] P7_10_(P7L_10) = BTS5A(D_2,PWR);
assign drv0_outP7L_11 = ~inD_3; assign drv0_enP7L_11 = PWR;                     //[PIX.NET:00234] P7_11_(P7L_11) = BTS5A(D_3,PWR);
assign drv0_outP7L_12 = ~inD_4; assign drv0_enP7L_12 = PWR;                     //[PIX.NET:00235] P7_12_(P7L_12) = BTS5A(D_4,PWR);
assign drv0_outP7L_13 = ~inD_5; assign drv0_enP7L_13 = PWR;                     //[PIX.NET:00236] P7_13_(P7L_13) = BTS5A(D_5,PWR);
assign drv0_outP7L_14 = ~inD_6; assign drv0_enP7L_14 = PWR;                     //[PIX.NET:00237] P7_14_(P7L_14) = BTS5A(D_6,PWR);
assign drv0_outP7L_15 = ~inD_7; assign drv0_enP7L_15 = PWR;                     //[PIX.NET:00238] P7_15_(P7L_15) = BTS5A(D_7,PWR);
assign AL_0 = ~A_0;                                                             //[PIX.NET:00239] AL_0_(AL_0) = N1A(A_0);
assign PERD = ~(PALCSL | RDL | A_0);                                            //[PIX.NET:00240] PERD_(PERD) = NR3C(PALCSL,RDL,A_0);
assign PORD = ~(PALCSL | RDL | AL_0);                                           //[PIX.NET:00241] PORD_(PORD) = NR3C(PALCSL,RDL,AL_0);
assign drv0_outD_0 = ~inP7L_0; assign drv0_enD_0 = PERD;                        //[PIX.NET:00242] DE_0_(D_0) = BTS5A(P7L_0,PERD);
assign drv0_outD_1 = ~inP7L_1; assign drv0_enD_1 = PERD;                        //[PIX.NET:00243] DE_1_(D_1) = BTS5A(P7L_1,PERD);
assign drv0_outD_2 = ~inP7L_2; assign drv0_enD_2 = PERD;                        //[PIX.NET:00244] DE_2_(D_2) = BTS5A(P7L_2,PERD);
assign drv0_outD_3 = ~inP7L_3; assign drv0_enD_3 = PERD;                        //[PIX.NET:00245] DE_3_(D_3) = BTS5A(P7L_3,PERD);
assign drv0_outD_4 = ~inP7L_4; assign drv0_enD_4 = PERD;                        //[PIX.NET:00246] DE_4_(D_4) = BTS5A(P7L_4,PERD);
assign drv0_outD_5 = ~inP7L_5; assign drv0_enD_5 = PERD;                        //[PIX.NET:00247] DE_5_(D_5) = BTS5A(P7L_5,PERD);
assign drv0_outD_6 = ~inP7L_6; assign drv0_enD_6 = PERD;                        //[PIX.NET:00248] DE_6_(D_6) = BTS5A(P7L_6,PERD);
assign drv0_outD_7 = ~inP7L_7; assign drv0_enD_7 = PERD;                        //[PIX.NET:00249] DE_7_(D_7) = BTS5A(P7L_7,PERD);
assign drv1_outD_0 = ~inP7L_8; assign drv1_enD_0 = PORD;                        //[PIX.NET:00250] DO_0_(D_0) = BTS5A(P7L_8,PORD);
assign drv1_outD_1 = ~inP7L_9; assign drv1_enD_1 = PORD;                        //[PIX.NET:00251] DO_1_(D_1) = BTS5A(P7L_9,PORD);
assign drv1_outD_2 = ~inP7L_10; assign drv1_enD_2 = PORD;                       //[PIX.NET:00252] DO_2_(D_2) = BTS5A(P7L_10,PORD);
assign drv1_outD_3 = ~inP7L_11; assign drv1_enD_3 = PORD;                       //[PIX.NET:00253] DO_3_(D_3) = BTS5A(P7L_11,PORD);
assign drv1_outD_4 = ~inP7L_12; assign drv1_enD_4 = PORD;                       //[PIX.NET:00254] DO_4_(D_4) = BTS5A(P7L_12,PORD);
assign drv1_outD_5 = ~inP7L_13; assign drv1_enD_5 = PORD;                       //[PIX.NET:00255] DO_5_(D_5) = BTS5A(P7L_13,PORD);
assign drv1_outD_6 = ~inP7L_14; assign drv1_enD_6 = PORD;                       //[PIX.NET:00256] DO_6_(D_6) = BTS5A(P7L_14,PORD);
assign drv1_outD_7 = ~inP7L_15; assign drv1_enD_7 = PORD;                       //[PIX.NET:00257] DO_7_(D_7) = BTS5A(P7L_15,PORD);
assign POE = PALCSL | WRL;                                                      //[PIX.NET:00258] POE_(POE) = OR2A(PALCSL,WRL);
assign PWE = PALCS & WE & A_0;                                                  //[PIX.NET:00259] PWE_(PWE) = AND3A(PALCS,WE,A_0);
assign P7_0 = ~inP7L_0;                                                         //[PIX.NET:00260] PX7_0_(P7_0) = N1A(P7L_0);
assign P7_1 = ~inP7L_1;                                                         //[PIX.NET:00261] PX7_1_(P7_1) = N1A(P7L_1);
assign P7_2 = ~inP7L_2;                                                         //[PIX.NET:00262] PX7_2_(P7_2) = N1A(P7L_2);
assign P7_3 = ~inP7L_3;                                                         //[PIX.NET:00263] PX7_3_(P7_3) = N1A(P7L_3);
assign P7_4 = ~inP7L_4;                                                         //[PIX.NET:00264] PX7_4_(P7_4) = N1A(P7L_4);
assign P7_5 = ~inP7L_5;                                                         //[PIX.NET:00265] PX7_5_(P7_5) = N1A(P7L_5);
assign P7_6 = ~inP7L_6;                                                         //[PIX.NET:00266] PX7_6_(P7_6) = N1A(P7L_6);
assign P7_7 = ~inP7L_7;                                                         //[PIX.NET:00267] PX7_7_(P7_7) = N1A(P7L_7);
assign P7_8 = ~inP7L_8;                                                         //[PIX.NET:00268] PX7_8_(P7_8) = N1A(P7L_8);
assign P7_9 = ~inP7L_9;                                                         //[PIX.NET:00269] PX7_9_(P7_9) = N1A(P7L_9);
assign P7_10 = ~inP7L_10;                                                       //[PIX.NET:00270] PX7_10_(P7_10) = N1A(P7L_10);
assign P7_11 = ~inP7L_11;                                                       //[PIX.NET:00271] PX7_11_(P7_11) = N1A(P7L_11);
assign P7_12 = ~inP7L_12;                                                       //[PIX.NET:00272] PX7_12_(P7_12) = N1A(P7L_12);
assign P7_13 = ~inP7L_13;                                                       //[PIX.NET:00273] PX7_13_(P7_13) = N1A(P7L_13);
assign P7_14 = ~inP7L_14;                                                       //[PIX.NET:00274] PX7_14_(P7_14) = N1A(P7L_14);
assign P7_15 = ~inP7L_15;                                                       //[PIX.NET:00275] PX7_15_(P7_15) = N1A(P7L_15);

/* blanking and test mode */
/* test mode generates a physical colour directly from the logical */

assign TMODEL = ~TMODE;                                                         //[PIX.NET:00280] TMODEL_(TMODEL) = N1A(TMODE);
assign DATA = ~(BLANKING | TMODE);                                              //[PIX.NET:00281] DATA_(DATA) = NR2C(BLANKING,TMODE);
assign ADDR = ~(BLANKING | TMODEL);                                             //[PIX.NET:00282] ADDR_(ADDR) = NR2C(BLANKING,TMODEL);
assign P8L_0 = ~((DATA & P7_0)|(ADDR & P6_0));                                  //[PIX.NET:00283] P8L_0_(P8L_0) = AO2A(DATA,P7_0,ADDR,P6_0);
assign P8L_1 = ~((DATA & P7_1)|(ADDR & P6_1));                                  //[PIX.NET:00284] P8L_1_(P8L_1) = AO2A(DATA,P7_1,ADDR,P6_1);
assign P8L_2 = ~((DATA & P7_2)|(ADDR & P6_2));                                  //[PIX.NET:00285] P8L_2_(P8L_2) = AO2A(DATA,P7_2,ADDR,P6_2);
assign P8L_3 = ~((DATA & P7_3)|(ADDR & P6_3));                                  //[PIX.NET:00286] P8L_3_(P8L_3) = AO2A(DATA,P7_3,ADDR,P6_3);
assign P8L_4 = ~((DATA & P7_4)|(ADDR & P6_4));                                  //[PIX.NET:00287] P8L_4_(P8L_4) = AO2A(DATA,P7_4,ADDR,P6_4);
assign P8L_5 = ~((DATA & P7_5)|(ADDR & P6_5));                                  //[PIX.NET:00288] P8L_5_(P8L_5) = AO2A(DATA,P7_5,ADDR,P6_5);
assign P8L_6 = ~((DATA & P7_6)|(ADDR & P6_6));                                  //[PIX.NET:00289] P8L_6_(P8L_6) = AO2A(DATA,P7_6,ADDR,P6_6);
assign P8L_7 = ~((DATA & P7_7)|(ADDR & P6_7));                                  //[PIX.NET:00290] P8L_7_(P8L_7) = AO2A(DATA,P7_7,ADDR,P6_7);
assign P8L_8 = ~((DATA & P7_8)|(ADDR & P6_0));                                  //[PIX.NET:00291] P8L_8_(P8L_8) = AO2A(DATA,P7_8,ADDR,P6_0);
assign P8L_9 = ~((DATA & P7_9)|(ADDR & P6_1));                                  //[PIX.NET:00292] P8L_9_(P8L_9) = AO2A(DATA,P7_9,ADDR,P6_1);
assign P8L_10 = ~((DATA & P7_10)|(ADDR & P6_2));                                //[PIX.NET:00293] P8L_10_(P8L_10) = AO2A(DATA,P7_10,ADDR,P6_2);
assign P8L_11 = ~((DATA & P7_11)|(ADDR & P6_3));                                //[PIX.NET:00294] P8L_11_(P8L_11) = AO2A(DATA,P7_11,ADDR,P6_3);
assign P8L_12 = ~((DATA & P7_12)|(ADDR & P6_4));                                //[PIX.NET:00295] P8L_12_(P8L_12) = AO2A(DATA,P7_12,ADDR,P6_4);
assign P8L_13 = ~((DATA & P7_13)|(ADDR & P6_5));                                //[PIX.NET:00296] P8L_13_(P8L_13) = AO2A(DATA,P7_13,ADDR,P6_5);
assign P8L_14 = ~((DATA & P7_14)|(ADDR & P6_6));                                //[PIX.NET:00297] P8L_14_(P8L_14) = AO2A(DATA,P7_14,ADDR,P6_6);
assign P8L_15 = ~((DATA & P7_15)|(ADDR & P6_7));                                //[PIX.NET:00298] P8L_15_(P8L_15) = AO2A(DATA,P7_15,ADDR,P6_7);

/* select pixels or border */
/* the border signal is delayed first */

FD2A BORDERD__inst (.MasterClock(MasterClock),.q(BORDERD),.qL(BORDERDL),.d(BORDER),.clk(CLK),.rL(RESL));//[PIX.NET:00303] BORDERD_(BORDERD,BORDERDL) = FD2A(BORDER,CLK,RESL);
assign BLANKINGL = ~BLANKING;                                                   //[PIX.NET:00304] BLANKINGL_(BLANKINGL) = N1A(BLANKING);
assign PIXEL = ~(BORDERD & BLANKINGL);                                          //[PIX.NET:00305] PIXEL_(PIXEL) = ND2C(BORDERD,BLANKINGL);
assign PIXELL = ~PIXEL;                                                         //[PIX.NET:00306] PIXELL_(PIXELL) = N1C(PIXEL);
assign P9_0 = ~((PIXELL & BCB_0)|(PIXEL & P8L_0));                              //[PIX.NET:00307] P9_0_(P9_0) = AO2A(PIXELL,BCB_0,PIXEL,P8L_0);
assign P9_1 = ~((PIXELL & BCB_1)|(PIXEL & P8L_1));                              //[PIX.NET:00308] P9_1_(P9_1) = AO2A(PIXELL,BCB_1,PIXEL,P8L_1);
assign P9_2 = ~((PIXELL & BCB_2)|(PIXEL & P8L_2));                              //[PIX.NET:00309] P9_2_(P9_2) = AO2A(PIXELL,BCB_2,PIXEL,P8L_2);
assign P9_3 = ~((PIXELL & BCB_3)|(PIXEL & P8L_3));                              //[PIX.NET:00310] P9_3_(P9_3) = AO2A(PIXELL,BCB_3,PIXEL,P8L_3);
assign P9_4 = ~((PIXELL & BCB_4)|(PIXEL & P8L_4));                              //[PIX.NET:00311] P9_4_(P9_4) = AO2A(PIXELL,BCB_4,PIXEL,P8L_4);
assign P9_5 = ~((PIXELL & BCB_5)|(PIXEL & P8L_5));                              //[PIX.NET:00312] P9_5_(P9_5) = AO2A(PIXELL,BCB_5,PIXEL,P8L_5);
assign P9_6 = ~((PIXELL & BCB_6)|(PIXEL & P8L_6));                              //[PIX.NET:00313] P9_6_(P9_6) = AO2A(PIXELL,BCB_6,PIXEL,P8L_6);
assign P9_7 = ~((PIXELL & BCB_7)|(PIXEL & P8L_7));                              //[PIX.NET:00314] P9_7_(P9_7) = AO2A(PIXELL,BCB_7,PIXEL,P8L_7);
assign P9_8 = ~((PIXELL & BCB_8)|(PIXEL & P8L_8));                              //[PIX.NET:00315] P9_8_(P9_8) = AO2A(PIXELL,BCB_8,PIXEL,P8L_8);
assign P9_9 = ~((PIXELL & BCB_9)|(PIXEL & P8L_9));                              //[PIX.NET:00316] P9_9_(P9_9) = AO2A(PIXELL,BCB_9,PIXEL,P8L_9);
assign P9_10 = ~((PIXELL & BCB_10)|(PIXEL & P8L_10));                           //[PIX.NET:00317] P9_10_(P9_10) = AO2A(PIXELL,BCB_10,PIXEL,P8L_10);
assign P9_11 = ~((PIXELL & BCB_11)|(PIXEL & P8L_11));                           //[PIX.NET:00318] P9_11_(P9_11) = AO2A(PIXELL,BCB_11,PIXEL,P8L_11);
assign P9_12 = ~((PIXELL & BCB_12)|(PIXEL & P8L_12));                           //[PIX.NET:00319] P9_12_(P9_12) = AO2A(PIXELL,BCB_12,PIXEL,P8L_12);
assign P9_13 = ~((PIXELL & BCB_13)|(PIXEL & P8L_13));                           //[PIX.NET:00320] P9_13_(P9_13) = AO2A(PIXELL,BCB_13,PIXEL,P8L_13);
assign P9_14 = ~((PIXELL & BCB_14)|(PIXEL & P8L_14));                           //[PIX.NET:00321] P9_14_(P9_14) = AO2A(PIXELL,BCB_14,PIXEL,P8L_14);
assign P9_15 = ~((PIXELL & BCB_15)|(PIXEL & P8L_15));                           //[PIX.NET:00322] P9_15_(P9_15) = AO2A(PIXELL,BCB_15,PIXEL,P8L_15);

/* output latch */

FD2A RL_0__inst (.MasterClock(MasterClock),.q(R_0),.qL(RL_0),.d(P9_8),.clk(CLK),.rL(RESL));//[PIX.NET:00326] RL_0_(R_0,RL_0) = FD2A(P9_8,CLK,RESL);
FD2A RL_1__inst (.MasterClock(MasterClock),.q(R_1),.qL(RL_1),.d(P9_9),.clk(CLK),.rL(RESL));//[PIX.NET:00327] RL_1_(R_1,RL_1) = FD2A(P9_9,CLK,RESL);
FD2A RL_2__inst (.MasterClock(MasterClock),.q(R_2),.qL(RL_2),.d(P9_10),.clk(CLK),.rL(RESL));//[PIX.NET:00328] RL_2_(R_2,RL_2) = FD2A(P9_10,CLK,RESL);
FD2A RL_3__inst (.MasterClock(MasterClock),.q(R_3),.qL(RL_3),.d(P9_11),.clk(CLK),.rL(RESL));//[PIX.NET:00329] RL_3_(R_3,RL_3) = FD2A(P9_11,CLK,RESL);
FD2A GL_0__inst (.MasterClock(MasterClock),.q(G_0),.qL(GL_0),.d(P9_4),.clk(CLK),.rL(RESL));//[PIX.NET:00330] GL_0_(G_0,GL_0) = FD2A(P9_4,CLK,RESL);
FD2A GL_1__inst (.MasterClock(MasterClock),.q(G_1),.qL(GL_1),.d(P9_5),.clk(CLK),.rL(RESL));//[PIX.NET:00331] GL_1_(G_1,GL_1) = FD2A(P9_5,CLK,RESL);
FD2A GL_2__inst (.MasterClock(MasterClock),.q(G_2),.qL(GL_2),.d(P9_6),.clk(CLK),.rL(RESL));//[PIX.NET:00332] GL_2_(G_2,GL_2) = FD2A(P9_6,CLK,RESL);
FD2A GL_3__inst (.MasterClock(MasterClock),.q(G_3),.qL(GL_3),.d(P9_7),.clk(CLK),.rL(RESL));//[PIX.NET:00333] GL_3_(G_3,GL_3) = FD2A(P9_7,CLK,RESL);
FD2A BL_0__inst (.MasterClock(MasterClock),.q(B_0),.qL(BL_0),.d(P9_0),.clk(CLK),.rL(RESL));//[PIX.NET:00334] BL_0_(B_0,BL_0) = FD2A(P9_0,CLK,RESL);
FD2A BL_1__inst (.MasterClock(MasterClock),.q(B_1),.qL(BL_1),.d(P9_1),.clk(CLK),.rL(RESL));//[PIX.NET:00335] BL_1_(B_1,BL_1) = FD2A(P9_1,CLK,RESL);
FD2A BL_2__inst (.MasterClock(MasterClock),.q(B_2),.qL(BL_2),.d(P9_2),.clk(CLK),.rL(RESL));//[PIX.NET:00336] BL_2_(B_2,BL_2) = FD2A(P9_2,CLK,RESL);
FD2A BL_3__inst (.MasterClock(MasterClock),.q(B_3),.qL(BL_3),.d(P9_3),.clk(CLK),.rL(RESL));//[PIX.NET:00337] BL_3_(B_3,BL_3) = FD2A(P9_3,CLK,RESL);

/* latch the mode */

LD1A MODE_0__inst (.MasterClock(MasterClock),.q(MODE_0),.qL(MODEL_0),.d(WD_0),.en(MODE));//[PIX.NET:00341] MODE_0_(MODE_0,MODEL_0) = LD1A(WD_0,MODE);
LD1A MODE_1__inst (.MasterClock(MasterClock),.q(MODE_1),.qL(MODEL_1),.d(WD_1),.en(MODE));//[PIX.NET:00342] MODE_1_(MODE_1,MODEL_1) = LD1A(WD_1,MODE);
LD1A GENLOCK__inst (.MasterClock(MasterClock),.q(GENLOCK),.qL(GENLOCKL),.d(WD_2),.en(MODE));//[PIX.NET:00343] GENLOCK_(GENLOCK,GENLOCKL) = LD1A(WD_2,MODE);
LD1A INCEN__inst (.MasterClock(MasterClock),.q(INCEN),.qL(INCENL),.d(WD_3),.en(MODE));//[PIX.NET:00344] INCEN_(INCEN,INCENL) = LD1A(WD_3,MODE);
LD1A BINC__inst (.MasterClock(MasterClock),.q(BINC),.qL(BINCL),.d(WD_4),.en(MODE));//[PIX.NET:00345] BINC_(BINC,BINCL) = LD1A(WD_4,MODE);
LD1A HOLD8__inst (.MasterClock(MasterClock),.q(HOLD8),.qL(HOLD8L),.d(WD_5),.en(MODE));//[PIX.NET:00346] HOLD8_(HOLD8,HOLD8L) = LD1A(WD_5,MODE);
LD1A VARRES__inst (.MasterClock(MasterClock),.q(VARRES),.qL(VARRESL),.d(WD_6),.en(MODE));//[PIX.NET:00347] VARRES_(VARRES,VARRESL) = LD1A(WD_6,MODE);
LD1A WRAP__inst (.MasterClock(MasterClock),.q(NOWRAP),.qL(WRAP),.d(WD_7),.en(MODE));//[PIX.NET:00348] WRAP_(NOWRAP,WRAP) = LD1A(WD_7,MODE);

assign LORES = ~(MODE_0 | MODE_1);                                              //[PIX.NET:00350] LORES_(LORES) = NR2A(MODE_0,MODE_1);
assign MEDRES = ~(MODEL_0 | MODE_1);                                            //[PIX.NET:00351] MEDRES_(MEDRES) = NR2A(MODEL_0,MODE_1);
assign MEDRESL = ~MEDRES;                                                       //[PIX.NET:00352] MEDRESL_(MEDRESL) = N1A(MEDRES);

/* incrust logic */
/* In medium res use bit 7 of each byte, in low and high use bits 3 and 7 */

assign INCBITL = ~((MEDRES & P0_7)|(MEDRESL & P1_3));                           //[PIX.NET:00357] INCBITL_(INCBITL) = AO2A(MEDRES,P0_7,MEDRESL,P1_3);
assign BORDERL = ~BORDER;                                                       //[PIX.NET:00358] BORDERL_(BORDERL) = N1A(BORDER);
assign INCD = ~((BORDER & BINCL)|(BORDERL & INCBITL));                          //[PIX.NET:00359] INCD_(INCD) = AO2A(BORDER,BINCL,BORDERL,INCBITL);
assign INC_0 = INCD | INCENL;                                                   //[PIX.NET:00360] INC_0_(INC_0) = OR2A(INCD,INCENL);

/* delay by two clock ticks to match the pixel */

FD2A INC_1__inst (.MasterClock(MasterClock),.q(INC_1),.qL(INCL_1),.d(INC_0),.clk(CLK),.rL(RESL));//[PIX.NET:00364] INC_1_(INC_1,INCL_1) = FD2A(INC_0,CLK,RESL);
FD2A INC_2__inst (.MasterClock(MasterClock),.q(INC_2),.qL(INCL_2),.d(INC_1),.clk(CLK),.rL(RESL));//[PIX.NET:00365] INC_2_(INC_2,INCL_2) = FD2A(INC_1,CLK,RESL);


assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7;
assign outP7L_0 = (drv0_outP7L_0 & drv0_enP7L_0);
assign enP7L_0 = drv0_enP7L_0;
assign outP7L_1 = (drv0_outP7L_1 & drv0_enP7L_1);
assign enP7L_1 = drv0_enP7L_1;
assign outP7L_2 = (drv0_outP7L_2 & drv0_enP7L_2);
assign enP7L_2 = drv0_enP7L_2;
assign outP7L_3 = (drv0_outP7L_3 & drv0_enP7L_3);
assign enP7L_3 = drv0_enP7L_3;
assign outP7L_4 = (drv0_outP7L_4 & drv0_enP7L_4);
assign enP7L_4 = drv0_enP7L_4;
assign outP7L_5 = (drv0_outP7L_5 & drv0_enP7L_5);
assign enP7L_5 = drv0_enP7L_5;
assign outP7L_6 = (drv0_outP7L_6 & drv0_enP7L_6);
assign enP7L_6 = drv0_enP7L_6;
assign outP7L_7 = (drv0_outP7L_7 & drv0_enP7L_7);
assign enP7L_7 = drv0_enP7L_7;
assign outP7L_8 = (drv0_outP7L_8 & drv0_enP7L_8);
assign enP7L_8 = drv0_enP7L_8;
assign outP7L_9 = (drv0_outP7L_9 & drv0_enP7L_9);
assign enP7L_9 = drv0_enP7L_9;
assign outP7L_10 = (drv0_outP7L_10 & drv0_enP7L_10);
assign enP7L_10 = drv0_enP7L_10;
assign outP7L_11 = (drv0_outP7L_11 & drv0_enP7L_11);
assign enP7L_11 = drv0_enP7L_11;
assign outP7L_12 = (drv0_outP7L_12 & drv0_enP7L_12);
assign enP7L_12 = drv0_enP7L_12;
assign outP7L_13 = (drv0_outP7L_13 & drv0_enP7L_13);
assign enP7L_13 = drv0_enP7L_13;
assign outP7L_14 = (drv0_outP7L_14 & drv0_enP7L_14);
assign enP7L_14 = drv0_enP7L_14;
assign outP7L_15 = (drv0_outP7L_15 & drv0_enP7L_15);
assign enP7L_15 = drv0_enP7L_15;
endmodule                                                                       //[PIX.NET:00368] END MODULE;
