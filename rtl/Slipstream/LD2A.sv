/* transparent latch - active low? */

module LD2A
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
    if (~en)
        data<=d;
end

endmodule
