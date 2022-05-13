/* transparent latch - active high? */

module LD1A
(
    input MasterClock,
    input d,
    input en,
    output reg q,
    output reg qL
);

`ifdef USE_MCLOCK_TIME_LATCH

always @(posedge MasterClock)
begin
    if (en)
    begin
        q<=d;
        qL<=~d;
    end
end

`else

always @(en or d)
begin
    if (en)
    begin
        q=d;
        qL=~d;
    end
end

`endif

endmodule