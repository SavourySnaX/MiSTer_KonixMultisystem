
module bus_interface
  (
    input               CLKx4,

    input               CLK,
    input               RESET,

    input               READY,
    input               INTR,
    input               NMI,
    input               HOLD,

    input   [7:0]       inAD,

    output reg [7:0]    outAD,
    output reg [7:0]    enAD,
    
    output reg [19:8]   A,

    output reg          ALE,
    output reg          INTA_n,
    output reg          RD_n,
    output reg          WR_n,
    output reg          IOM,
    output reg          DTR,
    output reg          DEN_n,
    output reg          HOLDA,


    input       [15:0]   IND, //offset for read/write
    input       [2:0]    indirectSeg,
    output reg  [15:0]   OPRr, //word read from bus
    input       [15:0]   OPRw, //word written to bus
    output reg  [15:0]   REGISTER_IP /*verilator public*/,
    output reg  [15:0]   REGISTER_CS /* verilator public */,
    output reg  [15:0]   REGISTER_DS /* verilator public */,
    output reg  [15:0]   REGISTER_SS /* verilator public */,
    output reg  [15:0]   REGISTER_ES /* verilator public */,
    input       [15:0]   UpdateReg,


    input advanceTop,   // strobes
    input flush,
    input suspend,
    input correct,
    input indirect,
    input irq,
    input latchPC,
    input latchCS,
    input latchDS,
    input latchSS,
    input latchES,

    input ind_ioMreq,       // indirect io/data request  (io assumes 0000 as SEG)
    input ind_readWrite,    // indirect bus read/write request
    input ind_byteWord,     // indirect bus byte/word request

    output [7:0] prefetchTop,
    output [19:0] prefetchTopLinearAddress,
    output prefetchEmpty, 
    output prefetchFull /*verilator public */,
    output indirectBusOpInProgress /* verilator public */,
    output reg irqPending /* verilator public */,
    output suspending   /* verilator public */
  );

reg [2:0] clockstate /*verilator public*/;       // TODO allow half/quarter states

wire [19:0] addressSeg;
wire [19:0] address;
wire [15:0] indSeg;
wire indSegES,indSegCS,indSegSS,indSegDS,indSegZero;

reg [7:0]  data;

//wire fallingEdgeClk;

reg [7:0] prefetchQueue [3:0];
reg [19:0] prefetchQueueLinearAddress [3:0];

reg [2:0] prefetchReadAddr /* verilator public */, prefetchWriteAddr /* verilator public */;

reg waitForPosTransition;

reg clkEdgeSample;
reg readTopStrobe;
reg flushStrobe;
reg suspendStrobe;
reg correctStrobe;
reg indirectStrobe;
reg latchPCStrobe;
reg latchCSStrobe;
reg latchDSStrobe;
reg latchSSStrobe;
reg latchESStrobe;

reg tick;
reg holdPrefetch,requestFlush,requestPrefetchHold;

reg [1:0] indirectBytes;        // 00 nothing 10 lowbyte 11 lowbyte and highbyte 01 highbyte
reg indirectBusCycle /* verilator public */;

///reg [15:0]

assign prefetchEmpty = (prefetchReadAddr==prefetchWriteAddr) | HOLDA;
assign prefetchFull = (prefetchReadAddr[1:0]==prefetchWriteAddr[1:0]) && (prefetchReadAddr[2]!=prefetchWriteAddr[2]);

assign prefetchTop = prefetchQueue[prefetchReadAddr[1:0]];
assign prefetchTopLinearAddress = prefetchQueueLinearAddress[prefetchReadAddr[1:0]];

assign indSegES=(~indirectSeg[2]) & (~indirectSeg[1]) & (~indirectSeg[0]);
assign indSegCS=(~indirectSeg[2]) & (~indirectSeg[1]) & ( indirectSeg[0]);
assign indSegSS=(~indirectSeg[2]) & ( indirectSeg[1]) & (~indirectSeg[0]);
assign indSegDS=(~indirectSeg[2]) & ( indirectSeg[1]) & ( indirectSeg[0]);
assign indSegZero=indirectSeg[2];

assign indSeg= ((16'h0000) & {16{indSegZero}}) |
               ((REGISTER_ES) & {16{indSegES}}) |
               ((REGISTER_CS) & {16{indSegCS}}) |
               ((REGISTER_SS) & {16{indSegSS}}) |
               ((REGISTER_DS) & {16{indSegDS}});

assign addressSeg= (({4'b0000,REGISTER_CS}<<4) & {20{~indirectBusCycle}}) |
                   (({4'b0000,indSeg}<<4) & {20{indirectBusCycle}})
                   ;

assign address=
                ((addressSeg+{4'h0,REGISTER_IP}) & {20{~indirectBusCycle}}) |
                ((addressSeg+({4'h0,IND})) & {20{indirectBytes[1] & indirectBusCycle }}) |
                ((addressSeg+({4'h0,IND+16'h0001})) & {20{indirectBytes[0] & (~indirectBytes[1]) & indirectBusCycle}})
                ;
assign indirectBusOpInProgress=indirect | (indirectBytes!=0) | indirectBusCycle;

assign suspending = suspend | requestPrefetchHold | requestFlush;

wire [2:0] qSize /* verilator public */;
assign qSize = prefetchWriteAddr>prefetchReadAddr ? (prefetchWriteAddr - prefetchReadAddr) : ({1'b1,prefetchWriteAddr} - prefetchReadAddr);

always @(posedge CLKx4)
begin
    clkEdgeSample <=CLK;
    readTopStrobe <= advanceTop;
    flushStrobe <= flush;
    suspendStrobe <= suspend;
    correctStrobe <= correct;
    indirectStrobe <= indirect;
    latchPCStrobe <= latchPC;
    latchCSStrobe <= latchCS;
    latchDSStrobe <= latchDS;
    latchSSStrobe <= latchSS;
    latchESStrobe <= latchES;

    if (indirectStrobe==0 && indirect==1)
        indirectBytes<=(ind_byteWord==0) ? 2'b10 : 2'b11;

    if (readTopStrobe==0 && advanceTop==1)
        prefetchReadAddr<=prefetchReadAddr+1;

    if (latchPCStrobe==0 && latchPC==1)
        REGISTER_IP<=UpdateReg;
    if (latchESStrobe==0 && latchES==1)
        REGISTER_ES<=UpdateReg;
    if (latchCSStrobe==0 && latchCS==1)
        REGISTER_CS<=UpdateReg;
    if (latchSSStrobe==0 && latchSS==1)
        REGISTER_SS<=UpdateReg;
    if (latchDSStrobe==0 && latchDS==1)
        REGISTER_DS<=UpdateReg;

    if (suspendStrobe==0 && suspend==1)
        requestPrefetchHold<=1;
    
    if (correctStrobe==0 && correct==1)
    begin
        // Q should be stopped, so adjust PC back by number of bytes in Q
        REGISTER_IP<=REGISTER_IP - {13'h000,qSize};
    end

    // Sync with execstate?
    if (flushStrobe==0 && flush==1)
        requestFlush<=1;

    if (RESET == 1)
    begin
        data<=0;
        prefetchWriteAddr<=3'b000;
        prefetchReadAddr<=3'b000;
        clockstate<=3'b000;
        RD_n<=1;
        WR_n<=1;
        HOLDA<=0;
        IOM<=1;
        ALE<=0;
        waitForPosTransition<=1;
        holdPrefetch<=0;
        requestFlush<=0;
        indirectBytes<=0;
        indirectBusCycle<=0;
        irqPending<=0;
        /// TODOs
        INTA_n<=1;
        DTR<=0;
        DEN_n<=1;
        OPRr<=16'hFFFF;
    end
    else if ((waitForPosTransition==1) && (clkEdgeSample==1'b0 && CLK==1'b1))
        waitForPosTransition<=0;
    else
    begin
        if (clkEdgeSample==1'b1 && CLK==1'b0)
            tick<=1;
        else if (clkEdgeSample==1'b0 && CLK==1'b1)
        begin
            tick<=1;
            irqPending<=INTR;
        end
        else
            tick<=0;

        if (tick)
        begin   

            if (HOLDA)
                HOLDA<=HOLD;
            else
            begin
                case (clockstate)

                    3'b000 : 
                        begin
                            // T1
                            if (indirectBusCycle | (~prefetchFull))
                            begin
                                ALE<=1;
                                enAD<=8'b11111111;
                                outAD<=address[7:0];
                                A<=address[19:8];
                            end
                        end
                    3'b001:  
                        begin
                            ALE<=0;
                        end
                    3'b010: 
                        begin
                            if (indirectBusCycle)
                            begin
                                if (indirectBytes[1])
                                    data<=OPRw[7:0];
                                else
                                    data<=OPRw[15:8];

                                if (irq)
                                    INTA_n<=0;
                            end
                        end
                    3'b011:  
                        begin
                            if ((~indirectBusCycle) & (~prefetchFull) )
                            begin
                                IOM<=1;     // Memory request
                                RD_n<=0;    // Read
                                WR_n<=1;
                            end
                            if (indirectBusCycle)
                            begin
                                IOM<=ind_ioMreq;
                                RD_n<=ind_readWrite;
                                WR_n<=~ind_readWrite;
                            end
                            outAD<=data;
                            A[19:16]<=4'h2;  // cycle kind  (Code, Status are TODO)
                        end
                    3'b100:  
                        begin
                        end 
                    3'b101:  
                        begin
                    
                            if ((~indirectBusCycle) & (prefetchFull==0) & (holdPrefetch==0))
                            begin
                                prefetchQueue[prefetchWriteAddr[1:0]]<=inAD;
                                prefetchQueueLinearAddress[prefetchWriteAddr[1:0]]<=address;    // just for debugging purposes
                                prefetchWriteAddr<=prefetchWriteAddr+1;
                                REGISTER_IP<=REGISTER_IP+1;
                           end

                        end 
                    3'b110:  
                        begin
                        
                            if (indirectBusCycle)
                            begin
                                if (indirectBytes[1])
                                begin
                                    OPRr[7:0]<=inAD;
                                    indirectBytes[1]<=0;
                                end
                                else
                                begin
                                    OPRr[15:8]<=inAD;
                                    indirectBytes[0]<=0;
                                end
                                if (irq)
                                    INTA_n<=1;
                            end
                            RD_n<=1;
                            WR_n<=1;

                        end
                    3'b111:  
                        begin
                        
                            // rdy next bus cycle
                            indirectBusCycle<=(indirectBytes!=0);

                            if (requestPrefetchHold)
                            begin
                                holdPrefetch<=1;
                                requestPrefetchHold<=0;
                            end
                            
                            if (requestFlush)
                            begin
                                holdPrefetch<=0;
                                prefetchReadAddr<=prefetchWriteAddr;
                                requestFlush<=0;
                            end

                            if (HOLD==1)
                            begin
                                HOLDA<=1;
                                enAD<=8'b00000000;
                            end
                        end
                endcase

                if ((clockstate!=3'b111) | (~prefetchFull) | (indirectBytes!=0))    // Hold Internal Clock State at last state when no work to do
                    clockstate <= clockstate+1;
            end
        end
    end
end

endmodule

