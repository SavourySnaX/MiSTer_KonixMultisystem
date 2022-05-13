                                                                                //[ALU.NET:00001] COMPILE;
                                                                                //[ALU.NET:00002] DIRECTORY MASTER;


module m_ALU                                                                    //[ALU.NET:00005] MODULE ALU;
(                                                                               //[ALU.NET:00005] MODULE ALU;

    input    MasterClock,
    input    DDB_0,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_1,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_2,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_3,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_4,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_5,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_6,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_7,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_8,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_9,                                                             //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_10,                                                            //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_11,                                                            //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_12,                                                            //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_13,                                                            //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_14,                                                            //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    DDB_15,                                                            //[ALU.NET:00007] INPUTS	DDB_0,DDB_1,DDB_2,DDB_3,DDB_4,DDB_5,DDB_6,DDB_7,DDB_8,DDB_9,DDB_10,DDB_11,DDB_12,DDB_13,DDB_14,DDB_15,
    input    XWRL,                                                              //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    XRDL,                                                              //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    ZWRL,                                                              //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    ZRDL,                                                              //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    RESWRL,                                                            //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    CARRYWRL,                                                          //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    MZ0RDL,                                                            //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    MZ1RDL,                                                            //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    MZ2RDL,                                                            //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    MZ0WRL,                                                            //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    MZ1WRL,                                                            //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
    input    MZ2WRL,                                                            //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    MODWRL,                                                            //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    MODRDL,                                                            //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    MULTL,                                                             //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    MACL,                                                              //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    WITHCYL,                                                           //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    SUB,                                                               //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    PDK_11,                                                            //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    PDK_12,                                                            //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    PDK_14,                                                            //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    PDKL_11,                                                           //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
    input    PDKL_12,                                                           //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    PDKL_13,                                                           //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    PDKL_14,                                                           //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    CCFL,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    CLK,                                                               //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    RESETL,                                                            //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_0,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_1,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_2,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_3,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_4,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_5,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_6,                                                              //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
    input    MZ_7,                                                              //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_8,                                                              //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_9,                                                              //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_10,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_11,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_12,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_13,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_14,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_15,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_16,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_17,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_18,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_19,                                                             //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
    input    MZ_20,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_21,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_22,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_23,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_24,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_25,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_26,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_27,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_28,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_29,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_30,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_31,                                                             //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
    input    MZ_32,                                                             //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    MZ_33,                                                             //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    MZ_34,                                                             //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    MZ_35,                                                             //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    MZ_36,                                                             //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_0,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_1,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_2,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_3,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_4,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_5,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_6,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_7,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_8,                                                              //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
    input    AZ_9,                                                              //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    AZ_10,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    AZ_11,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    AZ_12,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    AZ_13,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    AZ_14,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    AZ_15,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    COUTL,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    input    DQCLK,                                                             //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
                                                                                //[ALU.NET:00008]    XWRL,XRDL,ZWRL,ZRDL,RESWRL,CARRYWRL,MZ0RDL,MZ1RDL,MZ2RDL,MZ0WRL,MZ1WRL,
                                                                                //[ALU.NET:00009]    MZ2WRL,MODWRL,MODRDL,MULTL,MACL,WITHCYL,SUB,PDK_11,PDK_12,PDK_14,PDKL_11,
                                                                                //[ALU.NET:00010]    PDKL_12,PDKL_13,PDKL_14,CCFL,CLK,RESETL,MZ_0,MZ_1,MZ_2,MZ_3,MZ_4,MZ_5,MZ_6,
                                                                                //[ALU.NET:00011]    MZ_7,MZ_8,MZ_9,MZ_10,MZ_11,MZ_12,MZ_13,MZ_14,MZ_15,MZ_16,MZ_17,MZ_18,MZ_19,
                                                                                //[ALU.NET:00012]    MZ_20,MZ_21,MZ_22,MZ_23,MZ_24,MZ_25,MZ_26,MZ_27,MZ_28,MZ_29,MZ_30,MZ_31,
                                                                                //[ALU.NET:00013]    MZ_32,MZ_33,MZ_34,MZ_35,MZ_36,AZ_0,AZ_1,AZ_2,AZ_3,AZ_4,AZ_5,AZ_6,AZ_7,AZ_8,
                                                                                //[ALU.NET:00014]    AZ_9,AZ_10,AZ_11,AZ_12,AZ_13,AZ_14,AZ_15,COUTL,DQCLK;
    output    outD_0, enD_0,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_1, enD_1,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_2, enD_2,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_3, enD_3,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_4, enD_4,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_5, enD_5,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_6, enD_6,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_7, enD_7,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_8, enD_8,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_9, enD_9,                                                    //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_10, enD_10,                                                  //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_11, enD_11,                                                  //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_12, enD_12,                                                  //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_13, enD_13,                                                  //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_14, enD_14,                                                  //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    outD_15, enD_15,                                                  //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
    output    CARRY,                                                            //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_0,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_1,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_2,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_3,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_4,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_5,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_6,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_7,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_8,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_9,                                                              //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_10,                                                             //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_11,                                                             //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_12,                                                             //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_13,                                                             //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_14,                                                             //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    X_15,                                                             //[ALU.NET:00016]    CARRY,X_0,X_1,X_2,X_3,X_4,X_5,X_6,X_7,X_8,X_9,X_10,X_11,X_12,X_13,X_14,X_15,
    output    ACC_0,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_1,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_2,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_3,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_4,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_5,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_6,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_7,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_8,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_9,                                                            //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_10,                                                           //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_11,                                                           //[ALU.NET:00017]    ACC_0,ACC_1,ACC_2,ACC_3,ACC_4,ACC_5,ACC_6,ACC_7,ACC_8,ACC_9,ACC_10,ACC_11,
    output    ACC_12,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_13,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_14,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_15,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_16,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_17,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_18,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_19,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_20,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_21,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_22,                                                           //[ALU.NET:00018]    ACC_12,ACC_13,ACC_14,ACC_15,ACC_16,ACC_17,ACC_18,ACC_19,ACC_20,ACC_21,ACC_22,
    output    ACC_23,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_24,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_25,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_26,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_27,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_28,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_29,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_30,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_31,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_32,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_33,                                                           //[ALU.NET:00019]    ACC_23,ACC_24,ACC_25,ACC_26,ACC_27,ACC_28,ACC_29,ACC_30,ACC_31,ACC_32,ACC_33,
    output    ACC_34,                                                           //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    ACC_35,                                                           //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    MOD_5,                                                            //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    MOD_6,                                                            //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    CINL,                                                             //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    M_3,                                                              //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    S_0,                                                              //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    S_1,                                                              //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    S_2,                                                              //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
    output    S_3                                                               //[ALU.NET:00020]    ACC_34,ACC_35,MOD_5,MOD_6,CINL,M_3,S_0,S_1,S_2,S_3;
);                                                                              //[ALU.NET:00005] MODULE ALU;
                                                                                //[ALU.NET:00021] LEVEL FUNCTION;
wire XWR;                                                                       //[ALU.NET:00026] XREG_0_(XU_0,XL_0) = LD1A(DDB_0,XWR);
wire XU_0;                                                                      //[ALU.NET:00026] XREG_0_(XU_0,XL_0) = LD1A(DDB_0,XWR);
wire XL_0;                                                                      //[ALU.NET:00026] XREG_0_(XU_0,XL_0) = LD1A(DDB_0,XWR);
wire XU_1;                                                                      //[ALU.NET:00027] XREG_1_(XU_1,XL_1) = LD1A(DDB_1,XWR);
wire XL_1;                                                                      //[ALU.NET:00027] XREG_1_(XU_1,XL_1) = LD1A(DDB_1,XWR);
wire XU_2;                                                                      //[ALU.NET:00028] XREG_2_(XU_2,XL_2) = LD1A(DDB_2,XWR);
wire XL_2;                                                                      //[ALU.NET:00028] XREG_2_(XU_2,XL_2) = LD1A(DDB_2,XWR);
wire XU_3;                                                                      //[ALU.NET:00029] XREG_3_(XU_3,XL_3) = LD1A(DDB_3,XWR);
wire XL_3;                                                                      //[ALU.NET:00029] XREG_3_(XU_3,XL_3) = LD1A(DDB_3,XWR);
wire XU_4;                                                                      //[ALU.NET:00030] XREG_4_(XU_4,XL_4) = LD1A(DDB_4,XWR);
wire XL_4;                                                                      //[ALU.NET:00030] XREG_4_(XU_4,XL_4) = LD1A(DDB_4,XWR);
wire XU_5;                                                                      //[ALU.NET:00031] XREG_5_(XU_5,XL_5) = LD1A(DDB_5,XWR);
wire XL_5;                                                                      //[ALU.NET:00031] XREG_5_(XU_5,XL_5) = LD1A(DDB_5,XWR);
wire XU_6;                                                                      //[ALU.NET:00032] XREG_6_(XU_6,XL_6) = LD1A(DDB_6,XWR);
wire XL_6;                                                                      //[ALU.NET:00032] XREG_6_(XU_6,XL_6) = LD1A(DDB_6,XWR);
wire XU_7;                                                                      //[ALU.NET:00033] XREG_7_(XU_7,XL_7) = LD1A(DDB_7,XWR);
wire XL_7;                                                                      //[ALU.NET:00033] XREG_7_(XU_7,XL_7) = LD1A(DDB_7,XWR);
wire XU_8;                                                                      //[ALU.NET:00034] XREG_8_(XU_8,XL_8) = LD1A(DDB_8,XWR);
wire XL_8;                                                                      //[ALU.NET:00034] XREG_8_(XU_8,XL_8) = LD1A(DDB_8,XWR);
wire XU_9;                                                                      //[ALU.NET:00035] XREG_9_(XU_9,XL_9) = LD1A(DDB_9,XWR);
wire XL_9;                                                                      //[ALU.NET:00035] XREG_9_(XU_9,XL_9) = LD1A(DDB_9,XWR);
wire XU_10;                                                                     //[ALU.NET:00036] XREG_10_(XU_10,XL_10) = LD1A(DDB_10,XWR);
wire XL_10;                                                                     //[ALU.NET:00036] XREG_10_(XU_10,XL_10) = LD1A(DDB_10,XWR);
wire XU_11;                                                                     //[ALU.NET:00037] XREG_11_(XU_11,XL_11) = LD1A(DDB_11,XWR);
wire XL_11;                                                                     //[ALU.NET:00037] XREG_11_(XU_11,XL_11) = LD1A(DDB_11,XWR);
wire XU_12;                                                                     //[ALU.NET:00038] XREG_12_(XU_12,XL_12) = LD1A(DDB_12,XWR);
wire XL_12;                                                                     //[ALU.NET:00038] XREG_12_(XU_12,XL_12) = LD1A(DDB_12,XWR);
wire XU_13;                                                                     //[ALU.NET:00039] XREG_13_(XU_13,XL_13) = LD1A(DDB_13,XWR);
wire XL_13;                                                                     //[ALU.NET:00039] XREG_13_(XU_13,XL_13) = LD1A(DDB_13,XWR);
wire XU_14;                                                                     //[ALU.NET:00040] XREG_14_(XU_14,XL_14) = LD1A(DDB_14,XWR);
wire XL_14;                                                                     //[ALU.NET:00040] XREG_14_(XU_14,XL_14) = LD1A(DDB_14,XWR);
wire XU_15;                                                                     //[ALU.NET:00041] XREG_15_(XU_15,XL_15) = LD1A(DDB_15,XWR);
wire XL_15;                                                                     //[ALU.NET:00041] XREG_15_(XU_15,XL_15) = LD1A(DDB_15,XWR);
wire XRD;                                                                       //[ALU.NET:00058] XREGRD_0_(D_0) = BTS4B(XU_0,XRD);
wire AZD_0;                                                                     //[ALU.NET:00077] AZREG_0_(AZRL_0,AZR_0) = LD1A(AZD_0,RESWR);
wire RESWR;                                                                     //[ALU.NET:00077] AZREG_0_(AZRL_0,AZR_0) = LD1A(AZD_0,RESWR);
wire AZRL_0;                                                                    //[ALU.NET:00077] AZREG_0_(AZRL_0,AZR_0) = LD1A(AZD_0,RESWR);
wire AZR_0;                                                                     //[ALU.NET:00077] AZREG_0_(AZRL_0,AZR_0) = LD1A(AZD_0,RESWR);
wire AZD_1;                                                                     //[ALU.NET:00078] AZREG_1_(AZRL_1,AZR_1) = LD1A(AZD_1,RESWR);
wire AZRL_1;                                                                    //[ALU.NET:00078] AZREG_1_(AZRL_1,AZR_1) = LD1A(AZD_1,RESWR);
wire AZR_1;                                                                     //[ALU.NET:00078] AZREG_1_(AZRL_1,AZR_1) = LD1A(AZD_1,RESWR);
wire AZD_2;                                                                     //[ALU.NET:00079] AZREG_2_(AZRL_2,AZR_2) = LD1A(AZD_2,RESWR);
wire AZRL_2;                                                                    //[ALU.NET:00079] AZREG_2_(AZRL_2,AZR_2) = LD1A(AZD_2,RESWR);
wire AZR_2;                                                                     //[ALU.NET:00079] AZREG_2_(AZRL_2,AZR_2) = LD1A(AZD_2,RESWR);
wire AZD_3;                                                                     //[ALU.NET:00080] AZREG_3_(AZRL_3,AZR_3) = LD1A(AZD_3,RESWR);
wire AZRL_3;                                                                    //[ALU.NET:00080] AZREG_3_(AZRL_3,AZR_3) = LD1A(AZD_3,RESWR);
wire AZR_3;                                                                     //[ALU.NET:00080] AZREG_3_(AZRL_3,AZR_3) = LD1A(AZD_3,RESWR);
wire AZD_4;                                                                     //[ALU.NET:00081] AZREG_4_(AZRL_4,AZR_4) = LD1A(AZD_4,RESWR);
wire AZRL_4;                                                                    //[ALU.NET:00081] AZREG_4_(AZRL_4,AZR_4) = LD1A(AZD_4,RESWR);
wire AZR_4;                                                                     //[ALU.NET:00081] AZREG_4_(AZRL_4,AZR_4) = LD1A(AZD_4,RESWR);
wire AZD_5;                                                                     //[ALU.NET:00082] AZREG_5_(AZRL_5,AZR_5) = LD1A(AZD_5,RESWR);
wire AZRL_5;                                                                    //[ALU.NET:00082] AZREG_5_(AZRL_5,AZR_5) = LD1A(AZD_5,RESWR);
wire AZR_5;                                                                     //[ALU.NET:00082] AZREG_5_(AZRL_5,AZR_5) = LD1A(AZD_5,RESWR);
wire AZD_6;                                                                     //[ALU.NET:00083] AZREG_6_(AZRL_6,AZR_6) = LD1A(AZD_6,RESWR);
wire AZRL_6;                                                                    //[ALU.NET:00083] AZREG_6_(AZRL_6,AZR_6) = LD1A(AZD_6,RESWR);
wire AZR_6;                                                                     //[ALU.NET:00083] AZREG_6_(AZRL_6,AZR_6) = LD1A(AZD_6,RESWR);
wire AZD_7;                                                                     //[ALU.NET:00084] AZREG_7_(AZRL_7,AZR_7) = LD1A(AZD_7,RESWR);
wire AZRL_7;                                                                    //[ALU.NET:00084] AZREG_7_(AZRL_7,AZR_7) = LD1A(AZD_7,RESWR);
wire AZR_7;                                                                     //[ALU.NET:00084] AZREG_7_(AZRL_7,AZR_7) = LD1A(AZD_7,RESWR);
wire AZD_8;                                                                     //[ALU.NET:00085] AZREG_8_(AZRL_8,AZR_8) = LD1A(AZD_8,RESWR);
wire AZRL_8;                                                                    //[ALU.NET:00085] AZREG_8_(AZRL_8,AZR_8) = LD1A(AZD_8,RESWR);
wire AZR_8;                                                                     //[ALU.NET:00085] AZREG_8_(AZRL_8,AZR_8) = LD1A(AZD_8,RESWR);
wire AZD_9;                                                                     //[ALU.NET:00086] AZREG_9_(AZRL_9,AZR_9) = LD1A(AZD_9,RESWR);
wire AZRL_9;                                                                    //[ALU.NET:00086] AZREG_9_(AZRL_9,AZR_9) = LD1A(AZD_9,RESWR);
wire AZR_9;                                                                     //[ALU.NET:00086] AZREG_9_(AZRL_9,AZR_9) = LD1A(AZD_9,RESWR);
wire AZD_10;                                                                    //[ALU.NET:00087] AZREG_10_(AZRL_10,AZR_10) = LD1A(AZD_10,RESWR);
wire AZRL_10;                                                                   //[ALU.NET:00087] AZREG_10_(AZRL_10,AZR_10) = LD1A(AZD_10,RESWR);
wire AZR_10;                                                                    //[ALU.NET:00087] AZREG_10_(AZRL_10,AZR_10) = LD1A(AZD_10,RESWR);
wire AZD_11;                                                                    //[ALU.NET:00088] AZREG_11_(AZRL_11,AZR_11) = LD1A(AZD_11,RESWR);
wire AZRL_11;                                                                   //[ALU.NET:00088] AZREG_11_(AZRL_11,AZR_11) = LD1A(AZD_11,RESWR);
wire AZR_11;                                                                    //[ALU.NET:00088] AZREG_11_(AZRL_11,AZR_11) = LD1A(AZD_11,RESWR);
wire AZD_12;                                                                    //[ALU.NET:00089] AZREG_12_(AZRL_12,AZR_12) = LD1A(AZD_12,RESWR);
wire AZRL_12;                                                                   //[ALU.NET:00089] AZREG_12_(AZRL_12,AZR_12) = LD1A(AZD_12,RESWR);
wire AZR_12;                                                                    //[ALU.NET:00089] AZREG_12_(AZRL_12,AZR_12) = LD1A(AZD_12,RESWR);
wire AZD_13;                                                                    //[ALU.NET:00090] AZREG_13_(AZRL_13,AZR_13) = LD1A(AZD_13,RESWR);
wire AZRL_13;                                                                   //[ALU.NET:00090] AZREG_13_(AZRL_13,AZR_13) = LD1A(AZD_13,RESWR);
wire AZR_13;                                                                    //[ALU.NET:00090] AZREG_13_(AZRL_13,AZR_13) = LD1A(AZD_13,RESWR);
wire AZD_14;                                                                    //[ALU.NET:00091] AZREG_14_(AZRL_14,AZR_14) = LD1A(AZD_14,RESWR);
wire AZRL_14;                                                                   //[ALU.NET:00091] AZREG_14_(AZRL_14,AZR_14) = LD1A(AZD_14,RESWR);
wire AZR_14;                                                                    //[ALU.NET:00091] AZREG_14_(AZRL_14,AZR_14) = LD1A(AZD_14,RESWR);
wire AZD_15;                                                                    //[ALU.NET:00092] AZREG_15_(AZRL_15,AZR_15) = LD1A(AZD_15,RESWR);
wire AZRL_15;                                                                   //[ALU.NET:00092] AZREG_15_(AZRL_15,AZR_15) = LD1A(AZD_15,RESWR);
wire AZR_15;                                                                    //[ALU.NET:00092] AZREG_15_(AZRL_15,AZR_15) = LD1A(AZD_15,RESWR);
wire ZRD;                                                                       //[ALU.NET:00093] ZREGRD_0_(D_0) = BTS5B(AZRL_0,ZRD);
wire LOADZ;                                                                     //[ALU.NET:00128] ZREG_0_(ZREG_0) = AO2A(DDB_0,LOADZ,MZ_0,ARITHZ);
wire ARITHZ;                                                                    //[ALU.NET:00128] ZREG_0_(ZREG_0) = AO2A(DDB_0,LOADZ,MZ_0,ARITHZ);
wire ZREG_0;                                                                    //[ALU.NET:00128] ZREG_0_(ZREG_0) = AO2A(DDB_0,LOADZ,MZ_0,ARITHZ);
wire ZREG_1;                                                                    //[ALU.NET:00129] ZREG_1_(ZREG_1) = AO2A(DDB_1,LOADZ,MZ_1,ARITHZ);
wire ZREG_2;                                                                    //[ALU.NET:00130] ZREG_2_(ZREG_2) = AO2A(DDB_2,LOADZ,MZ_2,ARITHZ);
wire ZREG_3;                                                                    //[ALU.NET:00131] ZREG_3_(ZREG_3) = AO2A(DDB_3,LOADZ,MZ_3,ARITHZ);
wire ZREG_4;                                                                    //[ALU.NET:00132] ZREG_4_(ZREG_4) = AO2A(DDB_4,LOADZ,MZ_4,ARITHZ);
wire ZREG_5;                                                                    //[ALU.NET:00133] ZREG_5_(ZREG_5) = AO2A(DDB_5,LOADZ,MZ_5,ARITHZ);
wire ZREG_6;                                                                    //[ALU.NET:00134] ZREG_6_(ZREG_6) = AO2A(DDB_6,LOADZ,MZ_6,ARITHZ);
wire ZREG_7;                                                                    //[ALU.NET:00135] ZREG_7_(ZREG_7) = AO2A(DDB_7,LOADZ,MZ_7,ARITHZ);
wire ZREG_8;                                                                    //[ALU.NET:00136] ZREG_8_(ZREG_8) = AO2A(DDB_8,LOADZ,MZ_8,ARITHZ);
wire ZREG_9;                                                                    //[ALU.NET:00137] ZREG_9_(ZREG_9) = AO2A(DDB_9,LOADZ,MZ_9,ARITHZ);
wire ZREG_10;                                                                   //[ALU.NET:00138] ZREG_10_(ZREG_10) = AO2A(DDB_10,LOADZ,MZ_10,ARITHZ);
wire ZREG_11;                                                                   //[ALU.NET:00139] ZREG_11_(ZREG_11) = AO2A(DDB_11,LOADZ,MZ_11,ARITHZ);
wire ZREG_12;                                                                   //[ALU.NET:00140] ZREG_12_(ZREG_12) = AO2A(DDB_12,LOADZ,MZ_12,ARITHZ);
wire ZREG_13;                                                                   //[ALU.NET:00141] ZREG_13_(ZREG_13) = AO2A(DDB_13,LOADZ,MZ_13,ARITHZ);
wire ZREG_14;                                                                   //[ALU.NET:00142] ZREG_14_(ZREG_14) = AO2A(DDB_14,LOADZ,MZ_14,ARITHZ);
wire ZREG_15;                                                                   //[ALU.NET:00143] ZREG_15_(ZREG_15) = AO2A(DDB_15,LOADZ,MZ_15,ARITHZ);
wire ZREG_16;                                                                   //[ALU.NET:00144] ZREG_16_(ZREG_16) = AO2A(DDB_0,LOADZ,MZ_16,ARITHZ);
wire ZREG_17;                                                                   //[ALU.NET:00145] ZREG_17_(ZREG_17) = AO2A(DDB_1,LOADZ,MZ_17,ARITHZ);
wire ZREG_18;                                                                   //[ALU.NET:00146] ZREG_18_(ZREG_18) = AO2A(DDB_2,LOADZ,MZ_18,ARITHZ);
wire ZREG_19;                                                                   //[ALU.NET:00147] ZREG_19_(ZREG_19) = AO2A(DDB_3,LOADZ,MZ_19,ARITHZ);
wire ZREG_20;                                                                   //[ALU.NET:00148] ZREG_20_(ZREG_20) = AO2A(DDB_4,LOADZ,MZ_20,ARITHZ);
wire ZREG_21;                                                                   //[ALU.NET:00149] ZREG_21_(ZREG_21) = AO2A(DDB_5,LOADZ,MZ_21,ARITHZ);
wire ZREG_22;                                                                   //[ALU.NET:00150] ZREG_22_(ZREG_22) = AO2A(DDB_6,LOADZ,MZ_22,ARITHZ);
wire ZREG_23;                                                                   //[ALU.NET:00151] ZREG_23_(ZREG_23) = AO2A(DDB_7,LOADZ,MZ_23,ARITHZ);
wire ZREG_24;                                                                   //[ALU.NET:00152] ZREG_24_(ZREG_24) = AO2A(DDB_8,LOADZ,MZ_24,ARITHZ);
wire ZREG_25;                                                                   //[ALU.NET:00153] ZREG_25_(ZREG_25) = AO2A(DDB_9,LOADZ,MZ_25,ARITHZ);
wire ZREG_26;                                                                   //[ALU.NET:00154] ZREG_26_(ZREG_26) = AO2A(DDB_10,LOADZ,MZ_26,ARITHZ);
wire ZREG_27;                                                                   //[ALU.NET:00155] ZREG_27_(ZREG_27) = AO2A(DDB_11,LOADZ,MZ_27,ARITHZ);
wire ZREG_28;                                                                   //[ALU.NET:00156] ZREG_28_(ZREG_28) = AO2A(DDB_12,LOADZ,MZ_28,ARITHZ);
wire ZREG_29;                                                                   //[ALU.NET:00157] ZREG_29_(ZREG_29) = AO2A(DDB_13,LOADZ,MZ_29,ARITHZ);
wire ZREG_30;                                                                   //[ALU.NET:00158] ZREG_30_(ZREG_30) = AO2A(DDB_14,LOADZ,MZ_30,ARITHZ);
wire ZREG_31;                                                                   //[ALU.NET:00159] ZREG_31_(ZREG_31) = AO2A(DDB_15,LOADZ,MZ_31,ARITHZ);
wire ZREG_32;                                                                   //[ALU.NET:00160] ZREG_32_(ZREG_32) = AO2A(DDB_0,LOADZ,MZ_32,ARITHZ);
wire ZREG_33;                                                                   //[ALU.NET:00161] ZREG_33_(ZREG_33) = AO2A(DDB_1,LOADZ,MZ_33,ARITHZ);
wire ZREG_34;                                                                   //[ALU.NET:00162] ZREG_34_(ZREG_34) = AO2A(DDB_2,LOADZ,MZ_34,ARITHZ);
wire ZREG_35;                                                                   //[ALU.NET:00163] ZREG_35_(ZREG_35) = AO2A(DDB_3,LOADZ,MZ_35,ARITHZ);
wire MZLOWR;                                                                    //[ALU.NET:00168] MZR_0_(MZRL_0,MZR_0) = FD1A(ZREG_0,MZLOWR);
wire MZRL_0;                                                                    //[ALU.NET:00168] MZR_0_(MZRL_0,MZR_0) = FD1A(ZREG_0,MZLOWR);
wire MZR_0;                                                                     //[ALU.NET:00168] MZR_0_(MZRL_0,MZR_0) = FD1A(ZREG_0,MZLOWR);
wire MZRL_1;                                                                    //[ALU.NET:00169] MZR_1_(MZRL_1,MZR_1) = FD1A(ZREG_1,MZLOWR);
wire MZR_1;                                                                     //[ALU.NET:00169] MZR_1_(MZRL_1,MZR_1) = FD1A(ZREG_1,MZLOWR);
wire MZRL_2;                                                                    //[ALU.NET:00170] MZR_2_(MZRL_2,MZR_2) = FD1A(ZREG_2,MZLOWR);
wire MZR_2;                                                                     //[ALU.NET:00170] MZR_2_(MZRL_2,MZR_2) = FD1A(ZREG_2,MZLOWR);
wire MZRL_3;                                                                    //[ALU.NET:00171] MZR_3_(MZRL_3,MZR_3) = FD1A(ZREG_3,MZLOWR);
wire MZR_3;                                                                     //[ALU.NET:00171] MZR_3_(MZRL_3,MZR_3) = FD1A(ZREG_3,MZLOWR);
wire MZRL_4;                                                                    //[ALU.NET:00172] MZR_4_(MZRL_4,MZR_4) = FD1A(ZREG_4,MZLOWR);
wire MZR_4;                                                                     //[ALU.NET:00172] MZR_4_(MZRL_4,MZR_4) = FD1A(ZREG_4,MZLOWR);
wire MZRL_5;                                                                    //[ALU.NET:00173] MZR_5_(MZRL_5,MZR_5) = FD1A(ZREG_5,MZLOWR);
wire MZR_5;                                                                     //[ALU.NET:00173] MZR_5_(MZRL_5,MZR_5) = FD1A(ZREG_5,MZLOWR);
wire MZRL_6;                                                                    //[ALU.NET:00174] MZR_6_(MZRL_6,MZR_6) = FD1A(ZREG_6,MZLOWR);
wire MZR_6;                                                                     //[ALU.NET:00174] MZR_6_(MZRL_6,MZR_6) = FD1A(ZREG_6,MZLOWR);
wire MZRL_7;                                                                    //[ALU.NET:00175] MZR_7_(MZRL_7,MZR_7) = FD1A(ZREG_7,MZLOWR);
wire MZR_7;                                                                     //[ALU.NET:00175] MZR_7_(MZRL_7,MZR_7) = FD1A(ZREG_7,MZLOWR);
wire MZRL_8;                                                                    //[ALU.NET:00176] MZR_8_(MZRL_8,MZR_8) = FD1A(ZREG_8,MZLOWR);
wire MZR_8;                                                                     //[ALU.NET:00176] MZR_8_(MZRL_8,MZR_8) = FD1A(ZREG_8,MZLOWR);
wire MZRL_9;                                                                    //[ALU.NET:00177] MZR_9_(MZRL_9,MZR_9) = FD1A(ZREG_9,MZLOWR);
wire MZR_9;                                                                     //[ALU.NET:00177] MZR_9_(MZRL_9,MZR_9) = FD1A(ZREG_9,MZLOWR);
wire MZRL_10;                                                                   //[ALU.NET:00178] MZR_10_(MZRL_10,MZR_10) = FD1A(ZREG_10,MZLOWR);
wire MZR_10;                                                                    //[ALU.NET:00178] MZR_10_(MZRL_10,MZR_10) = FD1A(ZREG_10,MZLOWR);
wire MZRL_11;                                                                   //[ALU.NET:00179] MZR_11_(MZRL_11,MZR_11) = FD1A(ZREG_11,MZLOWR);
wire MZR_11;                                                                    //[ALU.NET:00179] MZR_11_(MZRL_11,MZR_11) = FD1A(ZREG_11,MZLOWR);
wire MZRL_12;                                                                   //[ALU.NET:00180] MZR_12_(MZRL_12,MZR_12) = FD1A(ZREG_12,MZLOWR);
wire MZR_12;                                                                    //[ALU.NET:00180] MZR_12_(MZRL_12,MZR_12) = FD1A(ZREG_12,MZLOWR);
wire MZRL_13;                                                                   //[ALU.NET:00181] MZR_13_(MZRL_13,MZR_13) = FD1A(ZREG_13,MZLOWR);
wire MZR_13;                                                                    //[ALU.NET:00181] MZR_13_(MZRL_13,MZR_13) = FD1A(ZREG_13,MZLOWR);
wire MZRL_14;                                                                   //[ALU.NET:00182] MZR_14_(MZRL_14,MZR_14) = FD1A(ZREG_14,MZLOWR);
wire MZR_14;                                                                    //[ALU.NET:00182] MZR_14_(MZRL_14,MZR_14) = FD1A(ZREG_14,MZLOWR);
wire MZRL_15;                                                                   //[ALU.NET:00183] MZR_15_(MZRL_15,MZR_15) = FD1A(ZREG_15,MZLOWR);
wire MZR_15;                                                                    //[ALU.NET:00183] MZR_15_(MZRL_15,MZR_15) = FD1A(ZREG_15,MZLOWR);
wire MZ0RD;                                                                     //[ALU.NET:00184] MZ0REGRD_0_(D_0) = BTS5B(MZRL_0,MZ0RD);
wire MZMIDWR;                                                                   //[ALU.NET:00201] MZR_16_(MZRL_16,MZR_16) = FD1A(ZREG_16,MZMIDWR);
wire MZRL_16;                                                                   //[ALU.NET:00201] MZR_16_(MZRL_16,MZR_16) = FD1A(ZREG_16,MZMIDWR);
wire MZR_16;                                                                    //[ALU.NET:00201] MZR_16_(MZRL_16,MZR_16) = FD1A(ZREG_16,MZMIDWR);
wire MZRL_17;                                                                   //[ALU.NET:00202] MZR_17_(MZRL_17,MZR_17) = FD1A(ZREG_17,MZMIDWR);
wire MZR_17;                                                                    //[ALU.NET:00202] MZR_17_(MZRL_17,MZR_17) = FD1A(ZREG_17,MZMIDWR);
wire MZRL_18;                                                                   //[ALU.NET:00203] MZR_18_(MZRL_18,MZR_18) = FD1A(ZREG_18,MZMIDWR);
wire MZR_18;                                                                    //[ALU.NET:00203] MZR_18_(MZRL_18,MZR_18) = FD1A(ZREG_18,MZMIDWR);
wire MZRL_19;                                                                   //[ALU.NET:00204] MZR_19_(MZRL_19,MZR_19) = FD1A(ZREG_19,MZMIDWR);
wire MZR_19;                                                                    //[ALU.NET:00204] MZR_19_(MZRL_19,MZR_19) = FD1A(ZREG_19,MZMIDWR);
wire MZRL_20;                                                                   //[ALU.NET:00205] MZR_20_(MZRL_20,MZR_20) = FD1A(ZREG_20,MZMIDWR);
wire MZR_20;                                                                    //[ALU.NET:00205] MZR_20_(MZRL_20,MZR_20) = FD1A(ZREG_20,MZMIDWR);
wire MZRL_21;                                                                   //[ALU.NET:00206] MZR_21_(MZRL_21,MZR_21) = FD1A(ZREG_21,MZMIDWR);
wire MZR_21;                                                                    //[ALU.NET:00206] MZR_21_(MZRL_21,MZR_21) = FD1A(ZREG_21,MZMIDWR);
wire MZRL_22;                                                                   //[ALU.NET:00207] MZR_22_(MZRL_22,MZR_22) = FD1A(ZREG_22,MZMIDWR);
wire MZR_22;                                                                    //[ALU.NET:00207] MZR_22_(MZRL_22,MZR_22) = FD1A(ZREG_22,MZMIDWR);
wire MZRL_23;                                                                   //[ALU.NET:00208] MZR_23_(MZRL_23,MZR_23) = FD1A(ZREG_23,MZMIDWR);
wire MZR_23;                                                                    //[ALU.NET:00208] MZR_23_(MZRL_23,MZR_23) = FD1A(ZREG_23,MZMIDWR);
wire MZRL_24;                                                                   //[ALU.NET:00209] MZR_24_(MZRL_24,MZR_24) = FD1A(ZREG_24,MZMIDWR);
wire MZR_24;                                                                    //[ALU.NET:00209] MZR_24_(MZRL_24,MZR_24) = FD1A(ZREG_24,MZMIDWR);
wire MZRL_25;                                                                   //[ALU.NET:00210] MZR_25_(MZRL_25,MZR_25) = FD1A(ZREG_25,MZMIDWR);
wire MZR_25;                                                                    //[ALU.NET:00210] MZR_25_(MZRL_25,MZR_25) = FD1A(ZREG_25,MZMIDWR);
wire MZRL_26;                                                                   //[ALU.NET:00211] MZR_26_(MZRL_26,MZR_26) = FD1A(ZREG_26,MZMIDWR);
wire MZR_26;                                                                    //[ALU.NET:00211] MZR_26_(MZRL_26,MZR_26) = FD1A(ZREG_26,MZMIDWR);
wire MZRL_27;                                                                   //[ALU.NET:00212] MZR_27_(MZRL_27,MZR_27) = FD1A(ZREG_27,MZMIDWR);
wire MZR_27;                                                                    //[ALU.NET:00212] MZR_27_(MZRL_27,MZR_27) = FD1A(ZREG_27,MZMIDWR);
wire MZRL_28;                                                                   //[ALU.NET:00213] MZR_28_(MZRL_28,MZR_28) = FD1A(ZREG_28,MZMIDWR);
wire MZR_28;                                                                    //[ALU.NET:00213] MZR_28_(MZRL_28,MZR_28) = FD1A(ZREG_28,MZMIDWR);
wire MZRL_29;                                                                   //[ALU.NET:00214] MZR_29_(MZRL_29,MZR_29) = FD1A(ZREG_29,MZMIDWR);
wire MZR_29;                                                                    //[ALU.NET:00214] MZR_29_(MZRL_29,MZR_29) = FD1A(ZREG_29,MZMIDWR);
wire MZRL_30;                                                                   //[ALU.NET:00215] MZR_30_(MZRL_30,MZR_30) = FD1A(ZREG_30,MZMIDWR);
wire MZR_30;                                                                    //[ALU.NET:00215] MZR_30_(MZRL_30,MZR_30) = FD1A(ZREG_30,MZMIDWR);
wire MZRL_31;                                                                   //[ALU.NET:00216] MZR_31_(MZRL_31,MZR_31) = FD1A(ZREG_31,MZMIDWR);
wire MZR_31;                                                                    //[ALU.NET:00216] MZR_31_(MZRL_31,MZR_31) = FD1A(ZREG_31,MZMIDWR);
wire MZ1RD;                                                                     //[ALU.NET:00217] MZ1REGRD_0_(D_0) = BTS5B(MZRL_16,MZ1RD);
wire MZHIWR;                                                                    //[ALU.NET:00234] MZR_32_(MZRL_32,MZR_32) = FD1A(ZREG_32,MZHIWR);
wire MZRL_32;                                                                   //[ALU.NET:00234] MZR_32_(MZRL_32,MZR_32) = FD1A(ZREG_32,MZHIWR);
wire MZR_32;                                                                    //[ALU.NET:00234] MZR_32_(MZRL_32,MZR_32) = FD1A(ZREG_32,MZHIWR);
wire MZRL_33;                                                                   //[ALU.NET:00235] MZR_33_(MZRL_33,MZR_33) = FD1A(ZREG_33,MZHIWR);
wire MZR_33;                                                                    //[ALU.NET:00235] MZR_33_(MZRL_33,MZR_33) = FD1A(ZREG_33,MZHIWR);
wire MZRL_34;                                                                   //[ALU.NET:00236] MZR_34_(MZRL_34,MZR_34) = FD1A(ZREG_34,MZHIWR);
wire MZR_34;                                                                    //[ALU.NET:00236] MZR_34_(MZRL_34,MZR_34) = FD1A(ZREG_34,MZHIWR);
wire MZRL_35;                                                                   //[ALU.NET:00237] MZR_35_(MZRL_35,MZR_35) = FD1A(ZREG_35,MZHIWR);
wire MZR_35;                                                                    //[ALU.NET:00237] MZR_35_(MZRL_35,MZR_35) = FD1A(ZREG_35,MZHIWR);
wire MZ2RD;                                                                     //[ALU.NET:00238] MZ2REGRD_0_(D_0) = BTS5B(MZRL_32,MZ2RD);
wire CARRYL;                                                                    //[ALU.NET:00242] MZ2REGRD_4_(D_4) = BTS5B(CARRYL,MZ2RD);
wire MZLOWRL;                                                                   //[ALU.NET:00292] MZLOWRL_(MZLOWRL) = AND3A(MULTL,MACL,MZ0WRL);
wire MZMIDWRL;                                                                  //[ALU.NET:00295] MZMIDWRL_(MZMIDWRL) = AND3A(MULTL,MACL,MZ1WRL);
wire MZHIWRL;                                                                   //[ALU.NET:00298] MZHIWRL_(MZHIWRL) = AND3A(MULTL,MACL,MZ2WRL);
wire COUT;                                                                      //[ALU.NET:00301] COUT_(COUT) = N1A(COUTL);
wire M_1;                                                                       //[ALU.NET:00305] M_1_(M_1) = ND3A(PDK_12,PDKL_13,PDKL_14);
wire MOD_4;                                                                     //[ALU.NET:00306] M_2_(M_2) = ND2A(PDK_14,MOD_4);
wire M_2;                                                                       //[ALU.NET:00306] M_2_(M_2) = ND2A(PDK_14,MOD_4);
wire S3_1;                                                                      //[ALU.NET:00309] S3_1_(S3_1) = ND3A(PDKL_11,PDKL_12,PDKL_14);
wire S3_2;                                                                      //[ALU.NET:00310] S3_2_(S3_2) = ND3A(PDK_12,PDKL_13,PDKL_14);
wire MOD_3;                                                                     //[ALU.NET:00311] S3_3_(S3_3) = ND2A(PDK_14,MOD_3);
wire S3_3;                                                                      //[ALU.NET:00311] S3_3_(S3_3) = ND2A(PDK_14,MOD_3);
wire S2_1;                                                                      //[ALU.NET:00314] S2_1_(S2_1) = ND3A(PDK_11,PDKL_12,PDKL_14);
wire S2_2;                                                                      //[ALU.NET:00315] S2_2_(S2_2) = ND3A(PDK_11,PDKL_13,PDKL_14);
wire MOD_2;                                                                     //[ALU.NET:00316] S2_3_(S2_3) = ND2A(PDK_14,MOD_2);
wire S2_3;                                                                      //[ALU.NET:00316] S2_3_(S2_3) = ND2A(PDK_14,MOD_2);
wire MOD_1;                                                                     //[ALU.NET:00319] S1_1_(S1_1) = ND2A(PDK_14,MOD_1);
wire S1_1;                                                                      //[ALU.NET:00319] S1_1_(S1_1) = ND2A(PDK_14,MOD_1);
wire S0_1;                                                                      //[ALU.NET:00322] S0_1_(S0_1) = ND3A(PDKL_11,PDKL_13,PDKL_14);
wire S0_2;                                                                      //[ALU.NET:00323] S0_2_(S0_2) = ND3A(PDKL_11,PDKL_12,PDKL_14);
wire MOD_0;                                                                     //[ALU.NET:00324] S0_3_(S0_3) = ND2A(PDK_14,MOD_0);
wire S0_3;                                                                      //[ALU.NET:00324] S0_3_(S0_3) = ND2A(PDK_14,MOD_0);
wire CMUX;                                                                      //[ALU.NET:00330] CARRYFLAG_(CARRY,CARRYL) = FD2A(CMUX,CYLDL,RESETL);
wire CYLDL;                                                                     //[ALU.NET:00330] CARRYFLAG_(CARRY,CARRYL) = FD2A(CMUX,CYLDL,RESETL);
wire CIN1;                                                                      //[ALU.NET:00337] CIN1_(CIN1) = NR2A(WITHCYL,CARRYL);
wire ZWR;                                                                       //[ALU.NET:00348] ZWR_(ZWR) = NR2A(ZWRL,DQCLK);
wire RESREGWRL;                                                                 //[ALU.NET:00349] RESREGWRL_(RESREGWRL) = AND2A(RESWRL,ZWRL);
wire MODRD;                                                                     //[ALU.NET:00354] MODRD_(MODRD) = N1B(MODRDL);
wire MODWR;                                                                     //[ALU.NET:00355] MODWR_(MODWR) = NR2B(MODWRL,DQCLK);
wire MODL_0;                                                                    //[ALU.NET:00358] MODE_0_(MOD_0,MODL_0) = LD1A(DDB_0,MODWR);
wire MODL_1;                                                                    //[ALU.NET:00359] MODE_1_(MOD_1,MODL_1) = LD1A(DDB_1,MODWR);
wire MODL_2;                                                                    //[ALU.NET:00360] MODE_2_(MOD_2,MODL_2) = LD1A(DDB_2,MODWR);
wire MODL_3;                                                                    //[ALU.NET:00361] MODE_3_(MOD_3,MODL_3) = LD1A(DDB_3,MODWR);
wire MODL_4;                                                                    //[ALU.NET:00362] MODE_4_(MOD_4,MODL_4) = LD1A(DDB_4,MODWR);
wire MODU_5;                                                                    //[ALU.NET:00363] MODEU_5_(MODU_5,MODL_5) = LD1A(DDB_5,MODWR);
wire MODL_5;                                                                    //[ALU.NET:00363] MODEU_5_(MODU_5,MODL_5) = LD1A(DDB_5,MODWR);
wire MODU_6;                                                                    //[ALU.NET:00364] MODEU_6_(MODU_6,MODL_6) = LD1A(DDB_6,MODWR);
wire MODL_6;                                                                    //[ALU.NET:00364] MODEU_6_(MODU_6,MODL_6) = LD1A(DDB_6,MODWR);
wire drv0_outD_0;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_0;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_0;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_0;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_0;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_0;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_0;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_0;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_0;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_0;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_outD_0;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_enD_0;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_1;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_1;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_1;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_1;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_1;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_1;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_1;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_1;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_1;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_1;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_outD_1;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_enD_1;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_2;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_2;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_2;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_2;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_2;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_2;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_2;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_2;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_2;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_2;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_outD_2;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_enD_2;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_3;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_3;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_3;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_3;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_3;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_3;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_3;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_3;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_3;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_3;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_outD_3;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_enD_3;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_4;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_4;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_4;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_4;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_4;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_4;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_4;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_4;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_4;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_4;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_outD_4;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv5_enD_4;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_5;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_5;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_5;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_5;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_5;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_5;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_5;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_5;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_5;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_5;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_6;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_6;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_6;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_6;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_6;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_6;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_6;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_6;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_outD_6;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv4_enD_6;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_7;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_7;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_7;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_7;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_7;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_7;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_7;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_7;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_8;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_8;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_8;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_8;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_8;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_8;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_8;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_8;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_9;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_9;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_9;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_9;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_9;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_9;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_9;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_9;                                                                //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_10;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_10;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_10;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_10;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_10;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_10;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_10;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_10;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_11;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_11;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_11;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_11;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_11;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_11;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_11;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_11;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_12;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_12;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_12;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_12;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_12;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_12;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_12;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_12;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_13;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_13;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_13;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_13;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_13;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_13;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_13;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_13;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_14;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_14;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_14;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_14;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_14;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_14;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_14;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_14;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_outD_15;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv0_enD_15;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_outD_15;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv1_enD_15;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_outD_15;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv2_enD_15;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_outD_15;                                                              //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,
wire drv3_enD_15;                                                               //[ALU.NET:00015] OUTPUTS	D_0,D_1,D_2,D_3,D_4,D_5,D_6,D_7,D_8,D_9,D_10,D_11,D_12,D_13,D_14,D_15,

/* X register */

LD1A XREG_0__inst (.MasterClock(MasterClock),.q(XU_0),.qL(XL_0),.d(DDB_0),.en(XWR));//[ALU.NET:00026] XREG_0_(XU_0,XL_0) = LD1A(DDB_0,XWR);
LD1A XREG_1__inst (.MasterClock(MasterClock),.q(XU_1),.qL(XL_1),.d(DDB_1),.en(XWR));//[ALU.NET:00027] XREG_1_(XU_1,XL_1) = LD1A(DDB_1,XWR);
LD1A XREG_2__inst (.MasterClock(MasterClock),.q(XU_2),.qL(XL_2),.d(DDB_2),.en(XWR));//[ALU.NET:00028] XREG_2_(XU_2,XL_2) = LD1A(DDB_2,XWR);
LD1A XREG_3__inst (.MasterClock(MasterClock),.q(XU_3),.qL(XL_3),.d(DDB_3),.en(XWR));//[ALU.NET:00029] XREG_3_(XU_3,XL_3) = LD1A(DDB_3,XWR);
LD1A XREG_4__inst (.MasterClock(MasterClock),.q(XU_4),.qL(XL_4),.d(DDB_4),.en(XWR));//[ALU.NET:00030] XREG_4_(XU_4,XL_4) = LD1A(DDB_4,XWR);
LD1A XREG_5__inst (.MasterClock(MasterClock),.q(XU_5),.qL(XL_5),.d(DDB_5),.en(XWR));//[ALU.NET:00031] XREG_5_(XU_5,XL_5) = LD1A(DDB_5,XWR);
LD1A XREG_6__inst (.MasterClock(MasterClock),.q(XU_6),.qL(XL_6),.d(DDB_6),.en(XWR));//[ALU.NET:00032] XREG_6_(XU_6,XL_6) = LD1A(DDB_6,XWR);
LD1A XREG_7__inst (.MasterClock(MasterClock),.q(XU_7),.qL(XL_7),.d(DDB_7),.en(XWR));//[ALU.NET:00033] XREG_7_(XU_7,XL_7) = LD1A(DDB_7,XWR);
LD1A XREG_8__inst (.MasterClock(MasterClock),.q(XU_8),.qL(XL_8),.d(DDB_8),.en(XWR));//[ALU.NET:00034] XREG_8_(XU_8,XL_8) = LD1A(DDB_8,XWR);
LD1A XREG_9__inst (.MasterClock(MasterClock),.q(XU_9),.qL(XL_9),.d(DDB_9),.en(XWR));//[ALU.NET:00035] XREG_9_(XU_9,XL_9) = LD1A(DDB_9,XWR);
LD1A XREG_10__inst (.MasterClock(MasterClock),.q(XU_10),.qL(XL_10),.d(DDB_10),.en(XWR));//[ALU.NET:00036] XREG_10_(XU_10,XL_10) = LD1A(DDB_10,XWR);
LD1A XREG_11__inst (.MasterClock(MasterClock),.q(XU_11),.qL(XL_11),.d(DDB_11),.en(XWR));//[ALU.NET:00037] XREG_11_(XU_11,XL_11) = LD1A(DDB_11,XWR);
LD1A XREG_12__inst (.MasterClock(MasterClock),.q(XU_12),.qL(XL_12),.d(DDB_12),.en(XWR));//[ALU.NET:00038] XREG_12_(XU_12,XL_12) = LD1A(DDB_12,XWR);
LD1A XREG_13__inst (.MasterClock(MasterClock),.q(XU_13),.qL(XL_13),.d(DDB_13),.en(XWR));//[ALU.NET:00039] XREG_13_(XU_13,XL_13) = LD1A(DDB_13,XWR);
LD1A XREG_14__inst (.MasterClock(MasterClock),.q(XU_14),.qL(XL_14),.d(DDB_14),.en(XWR));//[ALU.NET:00040] XREG_14_(XU_14,XL_14) = LD1A(DDB_14,XWR);
LD1A XREG_15__inst (.MasterClock(MasterClock),.q(XU_15),.qL(XL_15),.d(DDB_15),.en(XWR));//[ALU.NET:00041] XREG_15_(XU_15,XL_15) = LD1A(DDB_15,XWR);
assign X_0 = ~XL_0;                                                             //[ALU.NET:00042] XB_0_(X_0) = N1D(XL_0);
assign X_1 = ~XL_1;                                                             //[ALU.NET:00043] XB_1_(X_1) = N1D(XL_1);
assign X_2 = ~XL_2;                                                             //[ALU.NET:00044] XB_2_(X_2) = N1D(XL_2);
assign X_3 = ~XL_3;                                                             //[ALU.NET:00045] XB_3_(X_3) = N1D(XL_3);
assign X_4 = ~XL_4;                                                             //[ALU.NET:00046] XB_4_(X_4) = N1D(XL_4);
assign X_5 = ~XL_5;                                                             //[ALU.NET:00047] XB_5_(X_5) = N1D(XL_5);
assign X_6 = ~XL_6;                                                             //[ALU.NET:00048] XB_6_(X_6) = N1D(XL_6);
assign X_7 = ~XL_7;                                                             //[ALU.NET:00049] XB_7_(X_7) = N1D(XL_7);
assign X_8 = ~XL_8;                                                             //[ALU.NET:00050] XB_8_(X_8) = N1D(XL_8);
assign X_9 = ~XL_9;                                                             //[ALU.NET:00051] XB_9_(X_9) = N1D(XL_9);
assign X_10 = ~XL_10;                                                           //[ALU.NET:00052] XB_10_(X_10) = N1D(XL_10);
assign X_11 = ~XL_11;                                                           //[ALU.NET:00053] XB_11_(X_11) = N1D(XL_11);
assign X_12 = ~XL_12;                                                           //[ALU.NET:00054] XB_12_(X_12) = N1D(XL_12);
assign X_13 = ~XL_13;                                                           //[ALU.NET:00055] XB_13_(X_13) = N1D(XL_13);
assign X_14 = ~XL_14;                                                           //[ALU.NET:00056] XB_14_(X_14) = N1D(XL_14);
assign X_15 = ~XL_15;                                                           //[ALU.NET:00057] XB_15_(X_15) = N1D(XL_15);
assign drv0_outD_0 = XU_0; assign drv0_enD_0 = XRD;                             //[ALU.NET:00058] XREGRD_0_(D_0) = BTS4B(XU_0,XRD);
assign drv0_outD_1 = X_1; assign drv0_enD_1 = XRD;                              //[ALU.NET:00059] XREGRD_1_(D_1) = BTS4B(X_1,XRD);
assign drv0_outD_2 = X_2; assign drv0_enD_2 = XRD;                              //[ALU.NET:00060] XREGRD_2_(D_2) = BTS4B(X_2,XRD);
assign drv0_outD_3 = X_3; assign drv0_enD_3 = XRD;                              //[ALU.NET:00061] XREGRD_3_(D_3) = BTS4B(X_3,XRD);
assign drv0_outD_4 = X_4; assign drv0_enD_4 = XRD;                              //[ALU.NET:00062] XREGRD_4_(D_4) = BTS4B(X_4,XRD);
assign drv0_outD_5 = X_5; assign drv0_enD_5 = XRD;                              //[ALU.NET:00063] XREGRD_5_(D_5) = BTS4B(X_5,XRD);
assign drv0_outD_6 = X_6; assign drv0_enD_6 = XRD;                              //[ALU.NET:00064] XREGRD_6_(D_6) = BTS4B(X_6,XRD);
assign drv0_outD_7 = X_7; assign drv0_enD_7 = XRD;                              //[ALU.NET:00065] XREGRD_7_(D_7) = BTS4B(X_7,XRD);
assign drv0_outD_8 = X_8; assign drv0_enD_8 = XRD;                              //[ALU.NET:00066] XREGRD_8_(D_8) = BTS4B(X_8,XRD);
assign drv0_outD_9 = X_9; assign drv0_enD_9 = XRD;                              //[ALU.NET:00067] XREGRD_9_(D_9) = BTS4B(X_9,XRD);
assign drv0_outD_10 = X_10; assign drv0_enD_10 = XRD;                           //[ALU.NET:00068] XREGRD_10_(D_10) = BTS4B(X_10,XRD);
assign drv0_outD_11 = X_11; assign drv0_enD_11 = XRD;                           //[ALU.NET:00069] XREGRD_11_(D_11) = BTS4B(X_11,XRD);
assign drv0_outD_12 = X_12; assign drv0_enD_12 = XRD;                           //[ALU.NET:00070] XREGRD_12_(D_12) = BTS4B(X_12,XRD);
assign drv0_outD_13 = X_13; assign drv0_enD_13 = XRD;                           //[ALU.NET:00071] XREGRD_13_(D_13) = BTS4B(X_13,XRD);
assign drv0_outD_14 = X_14; assign drv0_enD_14 = XRD;                           //[ALU.NET:00072] XREGRD_14_(D_14) = BTS4B(X_14,XRD);
assign drv0_outD_15 = X_15; assign drv0_enD_15 = XRD;                           //[ALU.NET:00073] XREGRD_15_(D_15) = BTS4B(X_15,XRD);

/* AZ register */

LD1A AZREG_0__inst (.MasterClock(MasterClock),.q(AZRL_0),.qL(AZR_0),.d(AZD_0),.en(RESWR));//[ALU.NET:00077] AZREG_0_(AZRL_0,AZR_0) = LD1A(AZD_0,RESWR);
LD1A AZREG_1__inst (.MasterClock(MasterClock),.q(AZRL_1),.qL(AZR_1),.d(AZD_1),.en(RESWR));//[ALU.NET:00078] AZREG_1_(AZRL_1,AZR_1) = LD1A(AZD_1,RESWR);
LD1A AZREG_2__inst (.MasterClock(MasterClock),.q(AZRL_2),.qL(AZR_2),.d(AZD_2),.en(RESWR));//[ALU.NET:00079] AZREG_2_(AZRL_2,AZR_2) = LD1A(AZD_2,RESWR);
LD1A AZREG_3__inst (.MasterClock(MasterClock),.q(AZRL_3),.qL(AZR_3),.d(AZD_3),.en(RESWR));//[ALU.NET:00080] AZREG_3_(AZRL_3,AZR_3) = LD1A(AZD_3,RESWR);
LD1A AZREG_4__inst (.MasterClock(MasterClock),.q(AZRL_4),.qL(AZR_4),.d(AZD_4),.en(RESWR));//[ALU.NET:00081] AZREG_4_(AZRL_4,AZR_4) = LD1A(AZD_4,RESWR);
LD1A AZREG_5__inst (.MasterClock(MasterClock),.q(AZRL_5),.qL(AZR_5),.d(AZD_5),.en(RESWR));//[ALU.NET:00082] AZREG_5_(AZRL_5,AZR_5) = LD1A(AZD_5,RESWR);
LD1A AZREG_6__inst (.MasterClock(MasterClock),.q(AZRL_6),.qL(AZR_6),.d(AZD_6),.en(RESWR));//[ALU.NET:00083] AZREG_6_(AZRL_6,AZR_6) = LD1A(AZD_6,RESWR);
LD1A AZREG_7__inst (.MasterClock(MasterClock),.q(AZRL_7),.qL(AZR_7),.d(AZD_7),.en(RESWR));//[ALU.NET:00084] AZREG_7_(AZRL_7,AZR_7) = LD1A(AZD_7,RESWR);
LD1A AZREG_8__inst (.MasterClock(MasterClock),.q(AZRL_8),.qL(AZR_8),.d(AZD_8),.en(RESWR));//[ALU.NET:00085] AZREG_8_(AZRL_8,AZR_8) = LD1A(AZD_8,RESWR);
LD1A AZREG_9__inst (.MasterClock(MasterClock),.q(AZRL_9),.qL(AZR_9),.d(AZD_9),.en(RESWR));//[ALU.NET:00086] AZREG_9_(AZRL_9,AZR_9) = LD1A(AZD_9,RESWR);
LD1A AZREG_10__inst (.MasterClock(MasterClock),.q(AZRL_10),.qL(AZR_10),.d(AZD_10),.en(RESWR));//[ALU.NET:00087] AZREG_10_(AZRL_10,AZR_10) = LD1A(AZD_10,RESWR);
LD1A AZREG_11__inst (.MasterClock(MasterClock),.q(AZRL_11),.qL(AZR_11),.d(AZD_11),.en(RESWR));//[ALU.NET:00088] AZREG_11_(AZRL_11,AZR_11) = LD1A(AZD_11,RESWR);
LD1A AZREG_12__inst (.MasterClock(MasterClock),.q(AZRL_12),.qL(AZR_12),.d(AZD_12),.en(RESWR));//[ALU.NET:00089] AZREG_12_(AZRL_12,AZR_12) = LD1A(AZD_12,RESWR);
LD1A AZREG_13__inst (.MasterClock(MasterClock),.q(AZRL_13),.qL(AZR_13),.d(AZD_13),.en(RESWR));//[ALU.NET:00090] AZREG_13_(AZRL_13,AZR_13) = LD1A(AZD_13,RESWR);
LD1A AZREG_14__inst (.MasterClock(MasterClock),.q(AZRL_14),.qL(AZR_14),.d(AZD_14),.en(RESWR));//[ALU.NET:00091] AZREG_14_(AZRL_14,AZR_14) = LD1A(AZD_14,RESWR);
LD1A AZREG_15__inst (.MasterClock(MasterClock),.q(AZRL_15),.qL(AZR_15),.d(AZD_15),.en(RESWR));//[ALU.NET:00092] AZREG_15_(AZRL_15,AZR_15) = LD1A(AZD_15,RESWR);
assign drv1_outD_0 = ~AZRL_0; assign drv1_enD_0 = ZRD;                          //[ALU.NET:00093] ZREGRD_0_(D_0) = BTS5B(AZRL_0,ZRD);
assign drv1_outD_1 = ~AZRL_1; assign drv1_enD_1 = ZRD;                          //[ALU.NET:00094] ZREGRD_1_(D_1) = BTS5B(AZRL_1,ZRD);
assign drv1_outD_2 = ~AZRL_2; assign drv1_enD_2 = ZRD;                          //[ALU.NET:00095] ZREGRD_2_(D_2) = BTS5B(AZRL_2,ZRD);
assign drv1_outD_3 = ~AZRL_3; assign drv1_enD_3 = ZRD;                          //[ALU.NET:00096] ZREGRD_3_(D_3) = BTS5B(AZRL_3,ZRD);
assign drv1_outD_4 = ~AZRL_4; assign drv1_enD_4 = ZRD;                          //[ALU.NET:00097] ZREGRD_4_(D_4) = BTS5B(AZRL_4,ZRD);
assign drv1_outD_5 = ~AZRL_5; assign drv1_enD_5 = ZRD;                          //[ALU.NET:00098] ZREGRD_5_(D_5) = BTS5B(AZRL_5,ZRD);
assign drv1_outD_6 = ~AZRL_6; assign drv1_enD_6 = ZRD;                          //[ALU.NET:00099] ZREGRD_6_(D_6) = BTS5B(AZRL_6,ZRD);
assign drv1_outD_7 = ~AZRL_7; assign drv1_enD_7 = ZRD;                          //[ALU.NET:00100] ZREGRD_7_(D_7) = BTS5B(AZRL_7,ZRD);
assign drv1_outD_8 = ~AZRL_8; assign drv1_enD_8 = ZRD;                          //[ALU.NET:00101] ZREGRD_8_(D_8) = BTS5B(AZRL_8,ZRD);
assign drv1_outD_9 = ~AZRL_9; assign drv1_enD_9 = ZRD;                          //[ALU.NET:00102] ZREGRD_9_(D_9) = BTS5B(AZRL_9,ZRD);
assign drv1_outD_10 = ~AZRL_10; assign drv1_enD_10 = ZRD;                       //[ALU.NET:00103] ZREGRD_10_(D_10) = BTS5B(AZRL_10,ZRD);
assign drv1_outD_11 = ~AZRL_11; assign drv1_enD_11 = ZRD;                       //[ALU.NET:00104] ZREGRD_11_(D_11) = BTS5B(AZRL_11,ZRD);
assign drv1_outD_12 = ~AZRL_12; assign drv1_enD_12 = ZRD;                       //[ALU.NET:00105] ZREGRD_12_(D_12) = BTS5B(AZRL_12,ZRD);
assign drv1_outD_13 = ~AZRL_13; assign drv1_enD_13 = ZRD;                       //[ALU.NET:00106] ZREGRD_13_(D_13) = BTS5B(AZRL_13,ZRD);
assign drv1_outD_14 = ~AZRL_14; assign drv1_enD_14 = ZRD;                       //[ALU.NET:00107] ZREGRD_14_(D_14) = BTS5B(AZRL_14,ZRD);
assign drv1_outD_15 = ~AZRL_15; assign drv1_enD_15 = ZRD;                       //[ALU.NET:00108] ZREGRD_15_(D_15) = BTS5B(AZRL_15,ZRD);
/* Input MUX for AZ register */
assign AZD_0 = ~((AZ_0 & ZWRL)|(DDB_0 & RESWRL));                               //[ALU.NET:00110] AZD_0_(AZD_0) = AO2A(AZ_0,ZWRL,DDB_0,RESWRL);
assign AZD_1 = ~((AZ_1 & ZWRL)|(DDB_1 & RESWRL));                               //[ALU.NET:00111] AZD_1_(AZD_1) = AO2A(AZ_1,ZWRL,DDB_1,RESWRL);
assign AZD_2 = ~((AZ_2 & ZWRL)|(DDB_2 & RESWRL));                               //[ALU.NET:00112] AZD_2_(AZD_2) = AO2A(AZ_2,ZWRL,DDB_2,RESWRL);
assign AZD_3 = ~((AZ_3 & ZWRL)|(DDB_3 & RESWRL));                               //[ALU.NET:00113] AZD_3_(AZD_3) = AO2A(AZ_3,ZWRL,DDB_3,RESWRL);
assign AZD_4 = ~((AZ_4 & ZWRL)|(DDB_4 & RESWRL));                               //[ALU.NET:00114] AZD_4_(AZD_4) = AO2A(AZ_4,ZWRL,DDB_4,RESWRL);
assign AZD_5 = ~((AZ_5 & ZWRL)|(DDB_5 & RESWRL));                               //[ALU.NET:00115] AZD_5_(AZD_5) = AO2A(AZ_5,ZWRL,DDB_5,RESWRL);
assign AZD_6 = ~((AZ_6 & ZWRL)|(DDB_6 & RESWRL));                               //[ALU.NET:00116] AZD_6_(AZD_6) = AO2A(AZ_6,ZWRL,DDB_6,RESWRL);
assign AZD_7 = ~((AZ_7 & ZWRL)|(DDB_7 & RESWRL));                               //[ALU.NET:00117] AZD_7_(AZD_7) = AO2A(AZ_7,ZWRL,DDB_7,RESWRL);
assign AZD_8 = ~((AZ_8 & ZWRL)|(DDB_8 & RESWRL));                               //[ALU.NET:00118] AZD_8_(AZD_8) = AO2A(AZ_8,ZWRL,DDB_8,RESWRL);
assign AZD_9 = ~((AZ_9 & ZWRL)|(DDB_9 & RESWRL));                               //[ALU.NET:00119] AZD_9_(AZD_9) = AO2A(AZ_9,ZWRL,DDB_9,RESWRL);
assign AZD_10 = ~((AZ_10 & ZWRL)|(DDB_10 & RESWRL));                            //[ALU.NET:00120] AZD_10_(AZD_10) = AO2A(AZ_10,ZWRL,DDB_10,RESWRL);
assign AZD_11 = ~((AZ_11 & ZWRL)|(DDB_11 & RESWRL));                            //[ALU.NET:00121] AZD_11_(AZD_11) = AO2A(AZ_11,ZWRL,DDB_11,RESWRL);
assign AZD_12 = ~((AZ_12 & ZWRL)|(DDB_12 & RESWRL));                            //[ALU.NET:00122] AZD_12_(AZD_12) = AO2A(AZ_12,ZWRL,DDB_12,RESWRL);
assign AZD_13 = ~((AZ_13 & ZWRL)|(DDB_13 & RESWRL));                            //[ALU.NET:00123] AZD_13_(AZD_13) = AO2A(AZ_13,ZWRL,DDB_13,RESWRL);
assign AZD_14 = ~((AZ_14 & ZWRL)|(DDB_14 & RESWRL));                            //[ALU.NET:00124] AZD_14_(AZD_14) = AO2A(AZ_14,ZWRL,DDB_14,RESWRL);
assign AZD_15 = ~((AZ_15 & ZWRL)|(DDB_15 & RESWRL));                            //[ALU.NET:00125] AZD_15_(AZD_15) = AO2A(AZ_15,ZWRL,DDB_15,RESWRL);
/* Input MUX for multiplier result register */

assign ZREG_0 = ~((DDB_0 & LOADZ)|(MZ_0 & ARITHZ));                             //[ALU.NET:00128] ZREG_0_(ZREG_0) = AO2A(DDB_0,LOADZ,MZ_0,ARITHZ);
assign ZREG_1 = ~((DDB_1 & LOADZ)|(MZ_1 & ARITHZ));                             //[ALU.NET:00129] ZREG_1_(ZREG_1) = AO2A(DDB_1,LOADZ,MZ_1,ARITHZ);
assign ZREG_2 = ~((DDB_2 & LOADZ)|(MZ_2 & ARITHZ));                             //[ALU.NET:00130] ZREG_2_(ZREG_2) = AO2A(DDB_2,LOADZ,MZ_2,ARITHZ);
assign ZREG_3 = ~((DDB_3 & LOADZ)|(MZ_3 & ARITHZ));                             //[ALU.NET:00131] ZREG_3_(ZREG_3) = AO2A(DDB_3,LOADZ,MZ_3,ARITHZ);
assign ZREG_4 = ~((DDB_4 & LOADZ)|(MZ_4 & ARITHZ));                             //[ALU.NET:00132] ZREG_4_(ZREG_4) = AO2A(DDB_4,LOADZ,MZ_4,ARITHZ);
assign ZREG_5 = ~((DDB_5 & LOADZ)|(MZ_5 & ARITHZ));                             //[ALU.NET:00133] ZREG_5_(ZREG_5) = AO2A(DDB_5,LOADZ,MZ_5,ARITHZ);
assign ZREG_6 = ~((DDB_6 & LOADZ)|(MZ_6 & ARITHZ));                             //[ALU.NET:00134] ZREG_6_(ZREG_6) = AO2A(DDB_6,LOADZ,MZ_6,ARITHZ);
assign ZREG_7 = ~((DDB_7 & LOADZ)|(MZ_7 & ARITHZ));                             //[ALU.NET:00135] ZREG_7_(ZREG_7) = AO2A(DDB_7,LOADZ,MZ_7,ARITHZ);
assign ZREG_8 = ~((DDB_8 & LOADZ)|(MZ_8 & ARITHZ));                             //[ALU.NET:00136] ZREG_8_(ZREG_8) = AO2A(DDB_8,LOADZ,MZ_8,ARITHZ);
assign ZREG_9 = ~((DDB_9 & LOADZ)|(MZ_9 & ARITHZ));                             //[ALU.NET:00137] ZREG_9_(ZREG_9) = AO2A(DDB_9,LOADZ,MZ_9,ARITHZ);
assign ZREG_10 = ~((DDB_10 & LOADZ)|(MZ_10 & ARITHZ));                          //[ALU.NET:00138] ZREG_10_(ZREG_10) = AO2A(DDB_10,LOADZ,MZ_10,ARITHZ);
assign ZREG_11 = ~((DDB_11 & LOADZ)|(MZ_11 & ARITHZ));                          //[ALU.NET:00139] ZREG_11_(ZREG_11) = AO2A(DDB_11,LOADZ,MZ_11,ARITHZ);
assign ZREG_12 = ~((DDB_12 & LOADZ)|(MZ_12 & ARITHZ));                          //[ALU.NET:00140] ZREG_12_(ZREG_12) = AO2A(DDB_12,LOADZ,MZ_12,ARITHZ);
assign ZREG_13 = ~((DDB_13 & LOADZ)|(MZ_13 & ARITHZ));                          //[ALU.NET:00141] ZREG_13_(ZREG_13) = AO2A(DDB_13,LOADZ,MZ_13,ARITHZ);
assign ZREG_14 = ~((DDB_14 & LOADZ)|(MZ_14 & ARITHZ));                          //[ALU.NET:00142] ZREG_14_(ZREG_14) = AO2A(DDB_14,LOADZ,MZ_14,ARITHZ);
assign ZREG_15 = ~((DDB_15 & LOADZ)|(MZ_15 & ARITHZ));                          //[ALU.NET:00143] ZREG_15_(ZREG_15) = AO2A(DDB_15,LOADZ,MZ_15,ARITHZ);
assign ZREG_16 = ~((DDB_0 & LOADZ)|(MZ_16 & ARITHZ));                           //[ALU.NET:00144] ZREG_16_(ZREG_16) = AO2A(DDB_0,LOADZ,MZ_16,ARITHZ);
assign ZREG_17 = ~((DDB_1 & LOADZ)|(MZ_17 & ARITHZ));                           //[ALU.NET:00145] ZREG_17_(ZREG_17) = AO2A(DDB_1,LOADZ,MZ_17,ARITHZ);
assign ZREG_18 = ~((DDB_2 & LOADZ)|(MZ_18 & ARITHZ));                           //[ALU.NET:00146] ZREG_18_(ZREG_18) = AO2A(DDB_2,LOADZ,MZ_18,ARITHZ);
assign ZREG_19 = ~((DDB_3 & LOADZ)|(MZ_19 & ARITHZ));                           //[ALU.NET:00147] ZREG_19_(ZREG_19) = AO2A(DDB_3,LOADZ,MZ_19,ARITHZ);
assign ZREG_20 = ~((DDB_4 & LOADZ)|(MZ_20 & ARITHZ));                           //[ALU.NET:00148] ZREG_20_(ZREG_20) = AO2A(DDB_4,LOADZ,MZ_20,ARITHZ);
assign ZREG_21 = ~((DDB_5 & LOADZ)|(MZ_21 & ARITHZ));                           //[ALU.NET:00149] ZREG_21_(ZREG_21) = AO2A(DDB_5,LOADZ,MZ_21,ARITHZ);
assign ZREG_22 = ~((DDB_6 & LOADZ)|(MZ_22 & ARITHZ));                           //[ALU.NET:00150] ZREG_22_(ZREG_22) = AO2A(DDB_6,LOADZ,MZ_22,ARITHZ);
assign ZREG_23 = ~((DDB_7 & LOADZ)|(MZ_23 & ARITHZ));                           //[ALU.NET:00151] ZREG_23_(ZREG_23) = AO2A(DDB_7,LOADZ,MZ_23,ARITHZ);
assign ZREG_24 = ~((DDB_8 & LOADZ)|(MZ_24 & ARITHZ));                           //[ALU.NET:00152] ZREG_24_(ZREG_24) = AO2A(DDB_8,LOADZ,MZ_24,ARITHZ);
assign ZREG_25 = ~((DDB_9 & LOADZ)|(MZ_25 & ARITHZ));                           //[ALU.NET:00153] ZREG_25_(ZREG_25) = AO2A(DDB_9,LOADZ,MZ_25,ARITHZ);
assign ZREG_26 = ~((DDB_10 & LOADZ)|(MZ_26 & ARITHZ));                          //[ALU.NET:00154] ZREG_26_(ZREG_26) = AO2A(DDB_10,LOADZ,MZ_26,ARITHZ);
assign ZREG_27 = ~((DDB_11 & LOADZ)|(MZ_27 & ARITHZ));                          //[ALU.NET:00155] ZREG_27_(ZREG_27) = AO2A(DDB_11,LOADZ,MZ_27,ARITHZ);
assign ZREG_28 = ~((DDB_12 & LOADZ)|(MZ_28 & ARITHZ));                          //[ALU.NET:00156] ZREG_28_(ZREG_28) = AO2A(DDB_12,LOADZ,MZ_28,ARITHZ);
assign ZREG_29 = ~((DDB_13 & LOADZ)|(MZ_29 & ARITHZ));                          //[ALU.NET:00157] ZREG_29_(ZREG_29) = AO2A(DDB_13,LOADZ,MZ_29,ARITHZ);
assign ZREG_30 = ~((DDB_14 & LOADZ)|(MZ_30 & ARITHZ));                          //[ALU.NET:00158] ZREG_30_(ZREG_30) = AO2A(DDB_14,LOADZ,MZ_30,ARITHZ);
assign ZREG_31 = ~((DDB_15 & LOADZ)|(MZ_31 & ARITHZ));                          //[ALU.NET:00159] ZREG_31_(ZREG_31) = AO2A(DDB_15,LOADZ,MZ_31,ARITHZ);
assign ZREG_32 = ~((DDB_0 & LOADZ)|(MZ_32 & ARITHZ));                           //[ALU.NET:00160] ZREG_32_(ZREG_32) = AO2A(DDB_0,LOADZ,MZ_32,ARITHZ);
assign ZREG_33 = ~((DDB_1 & LOADZ)|(MZ_33 & ARITHZ));                           //[ALU.NET:00161] ZREG_33_(ZREG_33) = AO2A(DDB_1,LOADZ,MZ_33,ARITHZ);
assign ZREG_34 = ~((DDB_2 & LOADZ)|(MZ_34 & ARITHZ));                           //[ALU.NET:00162] ZREG_34_(ZREG_34) = AO2A(DDB_2,LOADZ,MZ_34,ARITHZ);
assign ZREG_35 = ~((DDB_3 & LOADZ)|(MZ_35 & ARITHZ));                           //[ALU.NET:00163] ZREG_35_(ZREG_35) = AO2A(DDB_3,LOADZ,MZ_35,ARITHZ);

assign ARITHZ = ~(MULTL & MACL);                                                //[ALU.NET:00165] ARITHZ_(ARITHZ) = ND2C(MULTL,MACL);
assign LOADZ = ~ARITHZ;                                                         //[ALU.NET:00166] LOADZ_(LOADZ) = B1A(ARITHZ);

FD1A MZR_0__inst (.MasterClock(MasterClock),.q(MZRL_0),.qL(MZR_0),.d(ZREG_0),.clk(MZLOWR));//[ALU.NET:00168] MZR_0_(MZRL_0,MZR_0) = FD1A(ZREG_0,MZLOWR);
FD1A MZR_1__inst (.MasterClock(MasterClock),.q(MZRL_1),.qL(MZR_1),.d(ZREG_1),.clk(MZLOWR));//[ALU.NET:00169] MZR_1_(MZRL_1,MZR_1) = FD1A(ZREG_1,MZLOWR);
FD1A MZR_2__inst (.MasterClock(MasterClock),.q(MZRL_2),.qL(MZR_2),.d(ZREG_2),.clk(MZLOWR));//[ALU.NET:00170] MZR_2_(MZRL_2,MZR_2) = FD1A(ZREG_2,MZLOWR);
FD1A MZR_3__inst (.MasterClock(MasterClock),.q(MZRL_3),.qL(MZR_3),.d(ZREG_3),.clk(MZLOWR));//[ALU.NET:00171] MZR_3_(MZRL_3,MZR_3) = FD1A(ZREG_3,MZLOWR);
FD1A MZR_4__inst (.MasterClock(MasterClock),.q(MZRL_4),.qL(MZR_4),.d(ZREG_4),.clk(MZLOWR));//[ALU.NET:00172] MZR_4_(MZRL_4,MZR_4) = FD1A(ZREG_4,MZLOWR);
FD1A MZR_5__inst (.MasterClock(MasterClock),.q(MZRL_5),.qL(MZR_5),.d(ZREG_5),.clk(MZLOWR));//[ALU.NET:00173] MZR_5_(MZRL_5,MZR_5) = FD1A(ZREG_5,MZLOWR);
FD1A MZR_6__inst (.MasterClock(MasterClock),.q(MZRL_6),.qL(MZR_6),.d(ZREG_6),.clk(MZLOWR));//[ALU.NET:00174] MZR_6_(MZRL_6,MZR_6) = FD1A(ZREG_6,MZLOWR);
FD1A MZR_7__inst (.MasterClock(MasterClock),.q(MZRL_7),.qL(MZR_7),.d(ZREG_7),.clk(MZLOWR));//[ALU.NET:00175] MZR_7_(MZRL_7,MZR_7) = FD1A(ZREG_7,MZLOWR);
FD1A MZR_8__inst (.MasterClock(MasterClock),.q(MZRL_8),.qL(MZR_8),.d(ZREG_8),.clk(MZLOWR));//[ALU.NET:00176] MZR_8_(MZRL_8,MZR_8) = FD1A(ZREG_8,MZLOWR);
FD1A MZR_9__inst (.MasterClock(MasterClock),.q(MZRL_9),.qL(MZR_9),.d(ZREG_9),.clk(MZLOWR));//[ALU.NET:00177] MZR_9_(MZRL_9,MZR_9) = FD1A(ZREG_9,MZLOWR);
FD1A MZR_10__inst (.MasterClock(MasterClock),.q(MZRL_10),.qL(MZR_10),.d(ZREG_10),.clk(MZLOWR));//[ALU.NET:00178] MZR_10_(MZRL_10,MZR_10) = FD1A(ZREG_10,MZLOWR);
FD1A MZR_11__inst (.MasterClock(MasterClock),.q(MZRL_11),.qL(MZR_11),.d(ZREG_11),.clk(MZLOWR));//[ALU.NET:00179] MZR_11_(MZRL_11,MZR_11) = FD1A(ZREG_11,MZLOWR);
FD1A MZR_12__inst (.MasterClock(MasterClock),.q(MZRL_12),.qL(MZR_12),.d(ZREG_12),.clk(MZLOWR));//[ALU.NET:00180] MZR_12_(MZRL_12,MZR_12) = FD1A(ZREG_12,MZLOWR);
FD1A MZR_13__inst (.MasterClock(MasterClock),.q(MZRL_13),.qL(MZR_13),.d(ZREG_13),.clk(MZLOWR));//[ALU.NET:00181] MZR_13_(MZRL_13,MZR_13) = FD1A(ZREG_13,MZLOWR);
FD1A MZR_14__inst (.MasterClock(MasterClock),.q(MZRL_14),.qL(MZR_14),.d(ZREG_14),.clk(MZLOWR));//[ALU.NET:00182] MZR_14_(MZRL_14,MZR_14) = FD1A(ZREG_14,MZLOWR);
FD1A MZR_15__inst (.MasterClock(MasterClock),.q(MZRL_15),.qL(MZR_15),.d(ZREG_15),.clk(MZLOWR));//[ALU.NET:00183] MZR_15_(MZRL_15,MZR_15) = FD1A(ZREG_15,MZLOWR);
assign drv2_outD_0 = ~MZRL_0; assign drv2_enD_0 = MZ0RD;                        //[ALU.NET:00184] MZ0REGRD_0_(D_0) = BTS5B(MZRL_0,MZ0RD);
assign drv2_outD_1 = ~MZRL_1; assign drv2_enD_1 = MZ0RD;                        //[ALU.NET:00185] MZ0REGRD_1_(D_1) = BTS5B(MZRL_1,MZ0RD);
assign drv2_outD_2 = ~MZRL_2; assign drv2_enD_2 = MZ0RD;                        //[ALU.NET:00186] MZ0REGRD_2_(D_2) = BTS5B(MZRL_2,MZ0RD);
assign drv2_outD_3 = ~MZRL_3; assign drv2_enD_3 = MZ0RD;                        //[ALU.NET:00187] MZ0REGRD_3_(D_3) = BTS5B(MZRL_3,MZ0RD);
assign drv2_outD_4 = ~MZRL_4; assign drv2_enD_4 = MZ0RD;                        //[ALU.NET:00188] MZ0REGRD_4_(D_4) = BTS5B(MZRL_4,MZ0RD);
assign drv2_outD_5 = ~MZRL_5; assign drv2_enD_5 = MZ0RD;                        //[ALU.NET:00189] MZ0REGRD_5_(D_5) = BTS5B(MZRL_5,MZ0RD);
assign drv2_outD_6 = ~MZRL_6; assign drv2_enD_6 = MZ0RD;                        //[ALU.NET:00190] MZ0REGRD_6_(D_6) = BTS5B(MZRL_6,MZ0RD);
assign drv2_outD_7 = ~MZRL_7; assign drv2_enD_7 = MZ0RD;                        //[ALU.NET:00191] MZ0REGRD_7_(D_7) = BTS5B(MZRL_7,MZ0RD);
assign drv2_outD_8 = ~MZRL_8; assign drv2_enD_8 = MZ0RD;                        //[ALU.NET:00192] MZ0REGRD_8_(D_8) = BTS5B(MZRL_8,MZ0RD);
assign drv2_outD_9 = ~MZRL_9; assign drv2_enD_9 = MZ0RD;                        //[ALU.NET:00193] MZ0REGRD_9_(D_9) = BTS5B(MZRL_9,MZ0RD);
assign drv2_outD_10 = ~MZRL_10; assign drv2_enD_10 = MZ0RD;                     //[ALU.NET:00194] MZ0REGRD_10_(D_10) = BTS5B(MZRL_10,MZ0RD);
assign drv2_outD_11 = ~MZRL_11; assign drv2_enD_11 = MZ0RD;                     //[ALU.NET:00195] MZ0REGRD_11_(D_11) = BTS5B(MZRL_11,MZ0RD);
assign drv2_outD_12 = ~MZRL_12; assign drv2_enD_12 = MZ0RD;                     //[ALU.NET:00196] MZ0REGRD_12_(D_12) = BTS5B(MZRL_12,MZ0RD);
assign drv2_outD_13 = ~MZRL_13; assign drv2_enD_13 = MZ0RD;                     //[ALU.NET:00197] MZ0REGRD_13_(D_13) = BTS5B(MZRL_13,MZ0RD);
assign drv2_outD_14 = ~MZRL_14; assign drv2_enD_14 = MZ0RD;                     //[ALU.NET:00198] MZ0REGRD_14_(D_14) = BTS5B(MZRL_14,MZ0RD);
assign drv2_outD_15 = ~MZRL_15; assign drv2_enD_15 = MZ0RD;                     //[ALU.NET:00199] MZ0REGRD_15_(D_15) = BTS5B(MZRL_15,MZ0RD);

FD1A MZR_16__inst (.MasterClock(MasterClock),.q(MZRL_16),.qL(MZR_16),.d(ZREG_16),.clk(MZMIDWR));//[ALU.NET:00201] MZR_16_(MZRL_16,MZR_16) = FD1A(ZREG_16,MZMIDWR);
FD1A MZR_17__inst (.MasterClock(MasterClock),.q(MZRL_17),.qL(MZR_17),.d(ZREG_17),.clk(MZMIDWR));//[ALU.NET:00202] MZR_17_(MZRL_17,MZR_17) = FD1A(ZREG_17,MZMIDWR);
FD1A MZR_18__inst (.MasterClock(MasterClock),.q(MZRL_18),.qL(MZR_18),.d(ZREG_18),.clk(MZMIDWR));//[ALU.NET:00203] MZR_18_(MZRL_18,MZR_18) = FD1A(ZREG_18,MZMIDWR);
FD1A MZR_19__inst (.MasterClock(MasterClock),.q(MZRL_19),.qL(MZR_19),.d(ZREG_19),.clk(MZMIDWR));//[ALU.NET:00204] MZR_19_(MZRL_19,MZR_19) = FD1A(ZREG_19,MZMIDWR);
FD1A MZR_20__inst (.MasterClock(MasterClock),.q(MZRL_20),.qL(MZR_20),.d(ZREG_20),.clk(MZMIDWR));//[ALU.NET:00205] MZR_20_(MZRL_20,MZR_20) = FD1A(ZREG_20,MZMIDWR);
FD1A MZR_21__inst (.MasterClock(MasterClock),.q(MZRL_21),.qL(MZR_21),.d(ZREG_21),.clk(MZMIDWR));//[ALU.NET:00206] MZR_21_(MZRL_21,MZR_21) = FD1A(ZREG_21,MZMIDWR);
FD1A MZR_22__inst (.MasterClock(MasterClock),.q(MZRL_22),.qL(MZR_22),.d(ZREG_22),.clk(MZMIDWR));//[ALU.NET:00207] MZR_22_(MZRL_22,MZR_22) = FD1A(ZREG_22,MZMIDWR);
FD1A MZR_23__inst (.MasterClock(MasterClock),.q(MZRL_23),.qL(MZR_23),.d(ZREG_23),.clk(MZMIDWR));//[ALU.NET:00208] MZR_23_(MZRL_23,MZR_23) = FD1A(ZREG_23,MZMIDWR);
FD1A MZR_24__inst (.MasterClock(MasterClock),.q(MZRL_24),.qL(MZR_24),.d(ZREG_24),.clk(MZMIDWR));//[ALU.NET:00209] MZR_24_(MZRL_24,MZR_24) = FD1A(ZREG_24,MZMIDWR);
FD1A MZR_25__inst (.MasterClock(MasterClock),.q(MZRL_25),.qL(MZR_25),.d(ZREG_25),.clk(MZMIDWR));//[ALU.NET:00210] MZR_25_(MZRL_25,MZR_25) = FD1A(ZREG_25,MZMIDWR);
FD1A MZR_26__inst (.MasterClock(MasterClock),.q(MZRL_26),.qL(MZR_26),.d(ZREG_26),.clk(MZMIDWR));//[ALU.NET:00211] MZR_26_(MZRL_26,MZR_26) = FD1A(ZREG_26,MZMIDWR);
FD1A MZR_27__inst (.MasterClock(MasterClock),.q(MZRL_27),.qL(MZR_27),.d(ZREG_27),.clk(MZMIDWR));//[ALU.NET:00212] MZR_27_(MZRL_27,MZR_27) = FD1A(ZREG_27,MZMIDWR);
FD1A MZR_28__inst (.MasterClock(MasterClock),.q(MZRL_28),.qL(MZR_28),.d(ZREG_28),.clk(MZMIDWR));//[ALU.NET:00213] MZR_28_(MZRL_28,MZR_28) = FD1A(ZREG_28,MZMIDWR);
FD1A MZR_29__inst (.MasterClock(MasterClock),.q(MZRL_29),.qL(MZR_29),.d(ZREG_29),.clk(MZMIDWR));//[ALU.NET:00214] MZR_29_(MZRL_29,MZR_29) = FD1A(ZREG_29,MZMIDWR);
FD1A MZR_30__inst (.MasterClock(MasterClock),.q(MZRL_30),.qL(MZR_30),.d(ZREG_30),.clk(MZMIDWR));//[ALU.NET:00215] MZR_30_(MZRL_30,MZR_30) = FD1A(ZREG_30,MZMIDWR);
FD1A MZR_31__inst (.MasterClock(MasterClock),.q(MZRL_31),.qL(MZR_31),.d(ZREG_31),.clk(MZMIDWR));//[ALU.NET:00216] MZR_31_(MZRL_31,MZR_31) = FD1A(ZREG_31,MZMIDWR);
assign drv3_outD_0 = ~MZRL_16; assign drv3_enD_0 = MZ1RD;                       //[ALU.NET:00217] MZ1REGRD_0_(D_0) = BTS5B(MZRL_16,MZ1RD);
assign drv3_outD_1 = ~MZRL_17; assign drv3_enD_1 = MZ1RD;                       //[ALU.NET:00218] MZ1REGRD_1_(D_1) = BTS5B(MZRL_17,MZ1RD);
assign drv3_outD_2 = ~MZRL_18; assign drv3_enD_2 = MZ1RD;                       //[ALU.NET:00219] MZ1REGRD_2_(D_2) = BTS5B(MZRL_18,MZ1RD);
assign drv3_outD_3 = ~MZRL_19; assign drv3_enD_3 = MZ1RD;                       //[ALU.NET:00220] MZ1REGRD_3_(D_3) = BTS5B(MZRL_19,MZ1RD);
assign drv3_outD_4 = ~MZRL_20; assign drv3_enD_4 = MZ1RD;                       //[ALU.NET:00221] MZ1REGRD_4_(D_4) = BTS5B(MZRL_20,MZ1RD);
assign drv3_outD_5 = ~MZRL_21; assign drv3_enD_5 = MZ1RD;                       //[ALU.NET:00222] MZ1REGRD_5_(D_5) = BTS5B(MZRL_21,MZ1RD);
assign drv3_outD_6 = ~MZRL_22; assign drv3_enD_6 = MZ1RD;                       //[ALU.NET:00223] MZ1REGRD_6_(D_6) = BTS5B(MZRL_22,MZ1RD);
assign drv3_outD_7 = ~MZRL_23; assign drv3_enD_7 = MZ1RD;                       //[ALU.NET:00224] MZ1REGRD_7_(D_7) = BTS5B(MZRL_23,MZ1RD);
assign drv3_outD_8 = ~MZRL_24; assign drv3_enD_8 = MZ1RD;                       //[ALU.NET:00225] MZ1REGRD_8_(D_8) = BTS5B(MZRL_24,MZ1RD);
assign drv3_outD_9 = ~MZRL_25; assign drv3_enD_9 = MZ1RD;                       //[ALU.NET:00226] MZ1REGRD_9_(D_9) = BTS5B(MZRL_25,MZ1RD);
assign drv3_outD_10 = ~MZRL_26; assign drv3_enD_10 = MZ1RD;                     //[ALU.NET:00227] MZ1REGRD_10_(D_10) = BTS5B(MZRL_26,MZ1RD);
assign drv3_outD_11 = ~MZRL_27; assign drv3_enD_11 = MZ1RD;                     //[ALU.NET:00228] MZ1REGRD_11_(D_11) = BTS5B(MZRL_27,MZ1RD);
assign drv3_outD_12 = ~MZRL_28; assign drv3_enD_12 = MZ1RD;                     //[ALU.NET:00229] MZ1REGRD_12_(D_12) = BTS5B(MZRL_28,MZ1RD);
assign drv3_outD_13 = ~MZRL_29; assign drv3_enD_13 = MZ1RD;                     //[ALU.NET:00230] MZ1REGRD_13_(D_13) = BTS5B(MZRL_29,MZ1RD);
assign drv3_outD_14 = ~MZRL_30; assign drv3_enD_14 = MZ1RD;                     //[ALU.NET:00231] MZ1REGRD_14_(D_14) = BTS5B(MZRL_30,MZ1RD);
assign drv3_outD_15 = ~MZRL_31; assign drv3_enD_15 = MZ1RD;                     //[ALU.NET:00232] MZ1REGRD_15_(D_15) = BTS5B(MZRL_31,MZ1RD);

FD1A MZR_32__inst (.MasterClock(MasterClock),.q(MZRL_32),.qL(MZR_32),.d(ZREG_32),.clk(MZHIWR));//[ALU.NET:00234] MZR_32_(MZRL_32,MZR_32) = FD1A(ZREG_32,MZHIWR);
FD1A MZR_33__inst (.MasterClock(MasterClock),.q(MZRL_33),.qL(MZR_33),.d(ZREG_33),.clk(MZHIWR));//[ALU.NET:00235] MZR_33_(MZRL_33,MZR_33) = FD1A(ZREG_33,MZHIWR);
FD1A MZR_34__inst (.MasterClock(MasterClock),.q(MZRL_34),.qL(MZR_34),.d(ZREG_34),.clk(MZHIWR));//[ALU.NET:00236] MZR_34_(MZRL_34,MZR_34) = FD1A(ZREG_34,MZHIWR);
FD1A MZR_35__inst (.MasterClock(MasterClock),.q(MZRL_35),.qL(MZR_35),.d(ZREG_35),.clk(MZHIWR));//[ALU.NET:00237] MZR_35_(MZRL_35,MZR_35) = FD1A(ZREG_35,MZHIWR);
assign drv4_outD_0 = ~MZRL_32; assign drv4_enD_0 = MZ2RD;                       //[ALU.NET:00238] MZ2REGRD_0_(D_0) = BTS5B(MZRL_32,MZ2RD);
assign drv4_outD_1 = ~MZRL_33; assign drv4_enD_1 = MZ2RD;                       //[ALU.NET:00239] MZ2REGRD_1_(D_1) = BTS5B(MZRL_33,MZ2RD);
assign drv4_outD_2 = ~MZRL_34; assign drv4_enD_2 = MZ2RD;                       //[ALU.NET:00240] MZ2REGRD_2_(D_2) = BTS5B(MZRL_34,MZ2RD);
assign drv4_outD_3 = ~MZRL_35; assign drv4_enD_3 = MZ2RD;                       //[ALU.NET:00241] MZ2REGRD_3_(D_3) = BTS5B(MZRL_35,MZ2RD);
assign drv4_outD_4 = ~CARRYL; assign drv4_enD_4 = MZ2RD;                        //[ALU.NET:00242] MZ2REGRD_4_(D_4) = BTS5B(CARRYL,MZ2RD);

assign MZ0RD = ~MZ0RDL;                                                         //[ALU.NET:00244] MZ0RD_(MZ0RD) = N1C(MZ0RDL);
assign MZ1RD = ~MZ1RDL;                                                         //[ALU.NET:00245] MZ1RD_(MZ1RD) = N1C(MZ1RDL);
assign MZ2RD = ~MZ2RDL;                                                         //[ALU.NET:00246] MZ2RD_(MZ2RD) = N1B(MZ2RDL);

/* Multiply WITHOUT accumulate is simply achieved by setting the wrap-
   around value to ZERO */

assign ACC_0 = ~(MZRL_0 | MACL);                                                //[ALU.NET:00251] ACC_0_(ACC_0) = NR2A(MZRL_0,MACL);
assign ACC_1 = ~(MZRL_1 | MACL);                                                //[ALU.NET:00252] ACC_1_(ACC_1) = NR2A(MZRL_1,MACL);
assign ACC_2 = ~(MZRL_2 | MACL);                                                //[ALU.NET:00253] ACC_2_(ACC_2) = NR2A(MZRL_2,MACL);
assign ACC_3 = ~(MZRL_3 | MACL);                                                //[ALU.NET:00254] ACC_3_(ACC_3) = NR2A(MZRL_3,MACL);
assign ACC_4 = ~(MZRL_4 | MACL);                                                //[ALU.NET:00255] ACC_4_(ACC_4) = NR2A(MZRL_4,MACL);
assign ACC_5 = ~(MZRL_5 | MACL);                                                //[ALU.NET:00256] ACC_5_(ACC_5) = NR2A(MZRL_5,MACL);
assign ACC_6 = ~(MZRL_6 | MACL);                                                //[ALU.NET:00257] ACC_6_(ACC_6) = NR2A(MZRL_6,MACL);
assign ACC_7 = ~(MZRL_7 | MACL);                                                //[ALU.NET:00258] ACC_7_(ACC_7) = NR2A(MZRL_7,MACL);
assign ACC_8 = ~(MZRL_8 | MACL);                                                //[ALU.NET:00259] ACC_8_(ACC_8) = NR2A(MZRL_8,MACL);
assign ACC_9 = ~(MZRL_9 | MACL);                                                //[ALU.NET:00260] ACC_9_(ACC_9) = NR2A(MZRL_9,MACL);
assign ACC_10 = ~(MZRL_10 | MACL);                                              //[ALU.NET:00261] ACC_10_(ACC_10) = NR2A(MZRL_10,MACL);
assign ACC_11 = ~(MZRL_11 | MACL);                                              //[ALU.NET:00262] ACC_11_(ACC_11) = NR2A(MZRL_11,MACL);
assign ACC_12 = ~(MZRL_12 | MACL);                                              //[ALU.NET:00263] ACC_12_(ACC_12) = NR2A(MZRL_12,MACL);
assign ACC_13 = ~(MZRL_13 | MACL);                                              //[ALU.NET:00264] ACC_13_(ACC_13) = NR2A(MZRL_13,MACL);
assign ACC_14 = ~(MZRL_14 | MACL);                                              //[ALU.NET:00265] ACC_14_(ACC_14) = NR2A(MZRL_14,MACL);
assign ACC_15 = ~(MZRL_15 | MACL);                                              //[ALU.NET:00266] ACC_15_(ACC_15) = NR2A(MZRL_15,MACL);
assign ACC_16 = ~(MZRL_16 | MACL);                                              //[ALU.NET:00267] ACC_16_(ACC_16) = NR2A(MZRL_16,MACL);
assign ACC_17 = ~(MZRL_17 | MACL);                                              //[ALU.NET:00268] ACC_17_(ACC_17) = NR2A(MZRL_17,MACL);
assign ACC_18 = ~(MZRL_18 | MACL);                                              //[ALU.NET:00269] ACC_18_(ACC_18) = NR2A(MZRL_18,MACL);
assign ACC_19 = ~(MZRL_19 | MACL);                                              //[ALU.NET:00270] ACC_19_(ACC_19) = NR2A(MZRL_19,MACL);
assign ACC_20 = ~(MZRL_20 | MACL);                                              //[ALU.NET:00271] ACC_20_(ACC_20) = NR2A(MZRL_20,MACL);
assign ACC_21 = ~(MZRL_21 | MACL);                                              //[ALU.NET:00272] ACC_21_(ACC_21) = NR2A(MZRL_21,MACL);
assign ACC_22 = ~(MZRL_22 | MACL);                                              //[ALU.NET:00273] ACC_22_(ACC_22) = NR2A(MZRL_22,MACL);
assign ACC_23 = ~(MZRL_23 | MACL);                                              //[ALU.NET:00274] ACC_23_(ACC_23) = NR2A(MZRL_23,MACL);
assign ACC_24 = ~(MZRL_24 | MACL);                                              //[ALU.NET:00275] ACC_24_(ACC_24) = NR2A(MZRL_24,MACL);
assign ACC_25 = ~(MZRL_25 | MACL);                                              //[ALU.NET:00276] ACC_25_(ACC_25) = NR2A(MZRL_25,MACL);
assign ACC_26 = ~(MZRL_26 | MACL);                                              //[ALU.NET:00277] ACC_26_(ACC_26) = NR2A(MZRL_26,MACL);
assign ACC_27 = ~(MZRL_27 | MACL);                                              //[ALU.NET:00278] ACC_27_(ACC_27) = NR2A(MZRL_27,MACL);
assign ACC_28 = ~(MZRL_28 | MACL);                                              //[ALU.NET:00279] ACC_28_(ACC_28) = NR2A(MZRL_28,MACL);
assign ACC_29 = ~(MZRL_29 | MACL);                                              //[ALU.NET:00280] ACC_29_(ACC_29) = NR2A(MZRL_29,MACL);
assign ACC_30 = ~(MZRL_30 | MACL);                                              //[ALU.NET:00281] ACC_30_(ACC_30) = NR2A(MZRL_30,MACL);
assign ACC_31 = ~(MZRL_31 | MACL);                                              //[ALU.NET:00282] ACC_31_(ACC_31) = NR2A(MZRL_31,MACL);
assign ACC_32 = ~(MZRL_32 | MACL);                                              //[ALU.NET:00283] ACC_32_(ACC_32) = NR2A(MZRL_32,MACL);
assign ACC_33 = ~(MZRL_33 | MACL);                                              //[ALU.NET:00284] ACC_33_(ACC_33) = NR2A(MZRL_33,MACL);
assign ACC_34 = ~(MZRL_34 | MACL);                                              //[ALU.NET:00285] ACC_34_(ACC_34) = NR2A(MZRL_34,MACL);
assign ACC_35 = ~(MZRL_35 | MACL);                                              //[ALU.NET:00286] ACC_35_(ACC_35) = NR2A(MZRL_35,MACL);

/* Generate load signals for multiplier output latch. Source is either
	a MULT or MAC opcode (subject to condition code and RUN) or is
	the load signal as before. */

assign MZLOWRL = MULTL & MACL & MZ0WRL;                                         //[ALU.NET:00292] MZLOWRL_(MZLOWRL) = AND3A(MULTL,MACL,MZ0WRL);
assign MZLOWR = MZLOWRL | DQCLK;                                                //[ALU.NET:00293] MZLOWR_(MZLOWR) = OR2B(MZLOWRL,DQCLK);

assign MZMIDWRL = MULTL & MACL & MZ1WRL;                                        //[ALU.NET:00295] MZMIDWRL_(MZMIDWRL) = AND3A(MULTL,MACL,MZ1WRL);
assign MZMIDWR = MZMIDWRL | DQCLK;                                              //[ALU.NET:00296] MZMIDWR_(MZMIDWR) = OR2B(MZMIDWRL,DQCLK);

assign MZHIWRL = MULTL & MACL & MZ2WRL;                                         //[ALU.NET:00298] MZHIWRL_(MZHIWRL) = AND3A(MULTL,MACL,MZ2WRL);
assign MZHIWR = MZHIWRL | DQCLK;                                                //[ALU.NET:00299] MZHIWR_(MZHIWR) = OR2B(MZHIWRL,DQCLK);

assign COUT = ~COUTL;                                                           //[ALU.NET:00301] COUT_(COUT) = N1A(COUTL);
/* Generate the codes for the GFT1811A alu model to work with my
	opcodes. */

assign M_1 = ~(PDK_12 & PDKL_13 & PDKL_14);                                     //[ALU.NET:00305] M_1_(M_1) = ND3A(PDK_12,PDKL_13,PDKL_14);
assign M_2 = ~(PDK_14 & MOD_4);                                                 //[ALU.NET:00306] M_2_(M_2) = ND2A(PDK_14,MOD_4);
assign M_3 = ~(M_1 & M_2);                                                      //[ALU.NET:00307] M_3_(M_3) = ND2A(M_1,M_2);

assign S3_1 = ~(PDKL_11 & PDKL_12 & PDKL_14);                                   //[ALU.NET:00309] S3_1_(S3_1) = ND3A(PDKL_11,PDKL_12,PDKL_14);
assign S3_2 = ~(PDK_12 & PDKL_13 & PDKL_14);                                    //[ALU.NET:00310] S3_2_(S3_2) = ND3A(PDK_12,PDKL_13,PDKL_14);
assign S3_3 = ~(PDK_14 & MOD_3);                                                //[ALU.NET:00311] S3_3_(S3_3) = ND2A(PDK_14,MOD_3);
assign S_3 = ~(S3_1 & S3_2 & S3_3);                                             //[ALU.NET:00312] S_3_(S_3) = ND3A(S3_1,S3_2,S3_3);

assign S2_1 = ~(PDK_11 & PDKL_12 & PDKL_14);                                    //[ALU.NET:00314] S2_1_(S2_1) = ND3A(PDK_11,PDKL_12,PDKL_14);
assign S2_2 = ~(PDK_11 & PDKL_13 & PDKL_14);                                    //[ALU.NET:00315] S2_2_(S2_2) = ND3A(PDK_11,PDKL_13,PDKL_14);
assign S2_3 = ~(PDK_14 & MOD_2);                                                //[ALU.NET:00316] S2_3_(S2_3) = ND2A(PDK_14,MOD_2);
assign S_2 = ~(S2_1 & S2_2 & S2_3);                                             //[ALU.NET:00317] S_2_(S_2) = ND3A(S2_1,S2_2,S2_3);

assign S1_1 = ~(PDK_14 & MOD_1);                                                //[ALU.NET:00319] S1_1_(S1_1) = ND2A(PDK_14,MOD_1);
assign S_1 = ~(S2_1 & S3_2 & S1_1);                                             //[ALU.NET:00320] S_1_(S_1) = ND3A(S2_1,S3_2,S1_1);

assign S0_1 = ~(PDKL_11 & PDKL_13 & PDKL_14);                                   //[ALU.NET:00322] S0_1_(S0_1) = ND3A(PDKL_11,PDKL_13,PDKL_14);
assign S0_2 = ~(PDKL_11 & PDKL_12 & PDKL_14);                                   //[ALU.NET:00323] S0_2_(S0_2) = ND3A(PDKL_11,PDKL_12,PDKL_14);
assign S0_3 = ~(PDK_14 & MOD_0);                                                //[ALU.NET:00324] S0_3_(S0_3) = ND2A(PDK_14,MOD_0);
assign S_0 = ~(S0_1 & S0_2 & S0_3);                                             //[ALU.NET:00325] S_0_(S_0) = ND3A(S0_1,S0_2,S0_3);


/* The Carry flag is here! */

FD2A CARRYFLAG__inst (.MasterClock(MasterClock),.q(CARRY),.qL(CARRYL),.d(CMUX),.clk(CYLDL),.rL(RESETL));//[ALU.NET:00330] CARRYFLAG_(CARRY,CARRYL) = FD2A(CMUX,CYLDL,RESETL);

/* Carry input is as follows .. 
	For SUB instructions cinL = 0
	For ADC, SBC, GAI instructions, cinL = carryL
	For all other instructions cinL = 1		*/

assign CIN1 = ~(WITHCYL | CARRYL);                                              //[ALU.NET:00337] CIN1_(CIN1) = NR2A(WITHCYL,CARRYL);
assign CINL = ~(CIN1 | SUB);                                                    //[ALU.NET:00338] CINL_(CINL) = NR2A(CIN1,SUB);
m_CYMUX CMUX_ (.MasterClock(MasterClock),.A(COUT),.B(MZ_36),.C(CARRYL),.SELL_0(RESWRL),.SELL_1(CCFL),.Z(CMUX));//[ALU.NET:00339] CMUX_(CMUX) = CYMUX(COUT,MZ_36,CARRYL,RESWRL,CCFL);


/* Write enable signals are combined with CLK locally, to ensure smallest
	skew between data generation and write pulse */

assign XRD = ~XRDL;                                                             //[ALU.NET:00345] XRD_(XRD) = N1C(XRDL);
assign ZRD = ~ZRDL;                                                             //[ALU.NET:00346] ZRD_(ZRD) = N1C(ZRDL);
assign XWR = ~(XWRL | DQCLK);                                                   //[ALU.NET:00347] XWR_(XWR) = NR2C(XWRL,DQCLK);
assign ZWR = ~(ZWRL | DQCLK);                                                   //[ALU.NET:00348] ZWR_(ZWR) = NR2A(ZWRL,DQCLK);
assign RESREGWRL = RESWRL & ZWRL;                                               //[ALU.NET:00349] RESREGWRL_(RESREGWRL) = AND2A(RESWRL,ZWRL);
assign RESWR = ~(RESREGWRL | DQCLK);                                            //[ALU.NET:00350] RESWR_(RESWR) = NR2C(RESREGWRL,DQCLK);
assign CYLDL = CARRYWRL | DQCLK;                                                //[ALU.NET:00351] CYLDL_(CYLDL) = OR2A(CARRYWRL,DQCLK);	
/* load carry latch

						at the same time as result */
assign MODRD = ~MODRDL;                                                         //[ALU.NET:00354] MODRD_(MODRD) = N1B(MODRDL);
assign MODWR = ~(MODWRL | DQCLK);                                               //[ALU.NET:00355] MODWR_(MODWR) = NR2B(MODWRL,DQCLK);
/* Mode register */

LD1A MODE_0__inst (.MasterClock(MasterClock),.q(MOD_0),.qL(MODL_0),.d(DDB_0),.en(MODWR));//[ALU.NET:00358] MODE_0_(MOD_0,MODL_0) = LD1A(DDB_0,MODWR);
LD1A MODE_1__inst (.MasterClock(MasterClock),.q(MOD_1),.qL(MODL_1),.d(DDB_1),.en(MODWR));//[ALU.NET:00359] MODE_1_(MOD_1,MODL_1) = LD1A(DDB_1,MODWR);
LD1A MODE_2__inst (.MasterClock(MasterClock),.q(MOD_2),.qL(MODL_2),.d(DDB_2),.en(MODWR));//[ALU.NET:00360] MODE_2_(MOD_2,MODL_2) = LD1A(DDB_2,MODWR);
LD1A MODE_3__inst (.MasterClock(MasterClock),.q(MOD_3),.qL(MODL_3),.d(DDB_3),.en(MODWR));//[ALU.NET:00361] MODE_3_(MOD_3,MODL_3) = LD1A(DDB_3,MODWR);
LD1A MODE_4__inst (.MasterClock(MasterClock),.q(MOD_4),.qL(MODL_4),.d(DDB_4),.en(MODWR));//[ALU.NET:00362] MODE_4_(MOD_4,MODL_4) = LD1A(DDB_4,MODWR);
LD1A MODEU_5__inst (.MasterClock(MasterClock),.q(MODU_5),.qL(MODL_5),.d(DDB_5),.en(MODWR));//[ALU.NET:00363] MODEU_5_(MODU_5,MODL_5) = LD1A(DDB_5,MODWR);
LD1A MODEU_6__inst (.MasterClock(MasterClock),.q(MODU_6),.qL(MODL_6),.d(DDB_6),.en(MODWR));//[ALU.NET:00364] MODEU_6_(MODU_6,MODL_6) = LD1A(DDB_6,MODWR);
/* Reinforce mode bits */
assign MOD_5 = ~MODL_5;                                                         //[ALU.NET:00366] MODE_5_(MOD_5) = B1A(MODL_5);
assign MOD_6 = ~MODL_6;                                                         //[ALU.NET:00367] MODE_6_(MOD_6) = B1A(MODL_6);
assign drv5_outD_0 = MOD_0; assign drv5_enD_0 = MODRD;                          //[ALU.NET:00368] MODERD_0_(D_0) = BTS4B(MOD_0,MODRD);
assign drv5_outD_1 = MOD_1; assign drv5_enD_1 = MODRD;                          //[ALU.NET:00369] MODERD_1_(D_1) = BTS4B(MOD_1,MODRD);
assign drv5_outD_2 = MOD_2; assign drv5_enD_2 = MODRD;                          //[ALU.NET:00370] MODERD_2_(D_2) = BTS4B(MOD_2,MODRD);
assign drv5_outD_3 = MOD_3; assign drv5_enD_3 = MODRD;                          //[ALU.NET:00371] MODERD_3_(D_3) = BTS4B(MOD_3,MODRD);
assign drv5_outD_4 = MOD_4; assign drv5_enD_4 = MODRD;                          //[ALU.NET:00372] MODERD_4_(D_4) = BTS4B(MOD_4,MODRD);
assign drv4_outD_5 = MOD_5; assign drv4_enD_5 = MODRD;                          //[ALU.NET:00373] MODERD_5_(D_5) = BTS4B(MOD_5,MODRD);
assign drv4_outD_6 = MOD_6; assign drv4_enD_6 = MODRD;                          //[ALU.NET:00374] MODERD_6_(D_6) = BTS4B(MOD_6,MODRD);
assign outD_0 = (drv0_outD_0 & drv0_enD_0) | (drv1_outD_0 & drv1_enD_0) | (drv2_outD_0 & drv2_enD_0) | (drv3_outD_0 & drv3_enD_0) | (drv4_outD_0 & drv4_enD_0) | (drv5_outD_0 & drv5_enD_0);
assign enD_0 = drv0_enD_0 | drv1_enD_0 | drv2_enD_0 | drv3_enD_0 | drv4_enD_0 | drv5_enD_0;
assign outD_1 = (drv0_outD_1 & drv0_enD_1) | (drv1_outD_1 & drv1_enD_1) | (drv2_outD_1 & drv2_enD_1) | (drv3_outD_1 & drv3_enD_1) | (drv4_outD_1 & drv4_enD_1) | (drv5_outD_1 & drv5_enD_1);
assign enD_1 = drv0_enD_1 | drv1_enD_1 | drv2_enD_1 | drv3_enD_1 | drv4_enD_1 | drv5_enD_1;
assign outD_2 = (drv0_outD_2 & drv0_enD_2) | (drv1_outD_2 & drv1_enD_2) | (drv2_outD_2 & drv2_enD_2) | (drv3_outD_2 & drv3_enD_2) | (drv4_outD_2 & drv4_enD_2) | (drv5_outD_2 & drv5_enD_2);
assign enD_2 = drv0_enD_2 | drv1_enD_2 | drv2_enD_2 | drv3_enD_2 | drv4_enD_2 | drv5_enD_2;
assign outD_3 = (drv0_outD_3 & drv0_enD_3) | (drv1_outD_3 & drv1_enD_3) | (drv2_outD_3 & drv2_enD_3) | (drv3_outD_3 & drv3_enD_3) | (drv4_outD_3 & drv4_enD_3) | (drv5_outD_3 & drv5_enD_3);
assign enD_3 = drv0_enD_3 | drv1_enD_3 | drv2_enD_3 | drv3_enD_3 | drv4_enD_3 | drv5_enD_3;
assign outD_4 = (drv0_outD_4 & drv0_enD_4) | (drv1_outD_4 & drv1_enD_4) | (drv2_outD_4 & drv2_enD_4) | (drv3_outD_4 & drv3_enD_4) | (drv4_outD_4 & drv4_enD_4) | (drv5_outD_4 & drv5_enD_4);
assign enD_4 = drv0_enD_4 | drv1_enD_4 | drv2_enD_4 | drv3_enD_4 | drv4_enD_4 | drv5_enD_4;
assign outD_5 = (drv0_outD_5 & drv0_enD_5) | (drv1_outD_5 & drv1_enD_5) | (drv2_outD_5 & drv2_enD_5) | (drv3_outD_5 & drv3_enD_5) | (drv4_outD_5 & drv4_enD_5);
assign enD_5 = drv0_enD_5 | drv1_enD_5 | drv2_enD_5 | drv3_enD_5 | drv4_enD_5;
assign outD_6 = (drv0_outD_6 & drv0_enD_6) | (drv1_outD_6 & drv1_enD_6) | (drv2_outD_6 & drv2_enD_6) | (drv3_outD_6 & drv3_enD_6) | (drv4_outD_6 & drv4_enD_6);
assign enD_6 = drv0_enD_6 | drv1_enD_6 | drv2_enD_6 | drv3_enD_6 | drv4_enD_6;
assign outD_7 = (drv0_outD_7 & drv0_enD_7) | (drv1_outD_7 & drv1_enD_7) | (drv2_outD_7 & drv2_enD_7) | (drv3_outD_7 & drv3_enD_7);
assign enD_7 = drv0_enD_7 | drv1_enD_7 | drv2_enD_7 | drv3_enD_7;
assign outD_8 = (drv0_outD_8 & drv0_enD_8) | (drv1_outD_8 & drv1_enD_8) | (drv2_outD_8 & drv2_enD_8) | (drv3_outD_8 & drv3_enD_8);
assign enD_8 = drv0_enD_8 | drv1_enD_8 | drv2_enD_8 | drv3_enD_8;
assign outD_9 = (drv0_outD_9 & drv0_enD_9) | (drv1_outD_9 & drv1_enD_9) | (drv2_outD_9 & drv2_enD_9) | (drv3_outD_9 & drv3_enD_9);
assign enD_9 = drv0_enD_9 | drv1_enD_9 | drv2_enD_9 | drv3_enD_9;
assign outD_10 = (drv0_outD_10 & drv0_enD_10) | (drv1_outD_10 & drv1_enD_10) | (drv2_outD_10 & drv2_enD_10) | (drv3_outD_10 & drv3_enD_10);
assign enD_10 = drv0_enD_10 | drv1_enD_10 | drv2_enD_10 | drv3_enD_10;
assign outD_11 = (drv0_outD_11 & drv0_enD_11) | (drv1_outD_11 & drv1_enD_11) | (drv2_outD_11 & drv2_enD_11) | (drv3_outD_11 & drv3_enD_11);
assign enD_11 = drv0_enD_11 | drv1_enD_11 | drv2_enD_11 | drv3_enD_11;
assign outD_12 = (drv0_outD_12 & drv0_enD_12) | (drv1_outD_12 & drv1_enD_12) | (drv2_outD_12 & drv2_enD_12) | (drv3_outD_12 & drv3_enD_12);
assign enD_12 = drv0_enD_12 | drv1_enD_12 | drv2_enD_12 | drv3_enD_12;
assign outD_13 = (drv0_outD_13 & drv0_enD_13) | (drv1_outD_13 & drv1_enD_13) | (drv2_outD_13 & drv2_enD_13) | (drv3_outD_13 & drv3_enD_13);
assign enD_13 = drv0_enD_13 | drv1_enD_13 | drv2_enD_13 | drv3_enD_13;
assign outD_14 = (drv0_outD_14 & drv0_enD_14) | (drv1_outD_14 & drv1_enD_14) | (drv2_outD_14 & drv2_enD_14) | (drv3_outD_14 & drv3_enD_14);
assign enD_14 = drv0_enD_14 | drv1_enD_14 | drv2_enD_14 | drv3_enD_14;
assign outD_15 = (drv0_outD_15 & drv0_enD_15) | (drv1_outD_15 & drv1_enD_15) | (drv2_outD_15 & drv2_enD_15) | (drv3_outD_15 & drv3_enD_15);
assign enD_15 = drv0_enD_15 | drv1_enD_15 | drv2_enD_15 | drv3_enD_15;
endmodule                                                                       //[ALU.NET:00375] END MODULE;
