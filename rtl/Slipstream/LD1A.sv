/* transparent latch - active high? */

module LD1A
(
    input MasterClock,
    input d,
    input en,
    output q,
    output qL
);

reg data;

assign q=data;
assign qL=~data;

always @(posedge MasterClock)
begin
    if (en)
        data<=d;
end

endmodule