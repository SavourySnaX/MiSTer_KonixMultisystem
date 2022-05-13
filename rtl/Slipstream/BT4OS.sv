
module BT4OS
(
    input   EN,
    input   TN,
    output  Z
);

assign Z = (TN & ~(EN)) ? 1'b0 : 1'b1;    // technically 1 should float i think.. revisit when i have a cpu to care about

endmodule