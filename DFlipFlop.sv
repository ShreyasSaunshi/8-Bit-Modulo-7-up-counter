module DFlipFlop(D, reset, clk, Q, Qb);
input D, reset, clk;
output Q, Qb;
reg Q, Qb;
always @(posedge clk,posedge reset) //asynchronous reset and posedge clk
begin
if (reset)begin
Q = 0;
Qb=1;
end
else
Q = D;
Qb= ~Q;
end
endmodule