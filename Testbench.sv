module testbench;
import mod7Counter_pkg::*;
bit clk,reset;
bit [7:0]Q; //Expected output
bit [7:0]q; //Got Output
modcounter counter=new(clk,reset);
Modulo7Counter8Bit dut(.clk(clk),.reset(reset),.Q(Q));
initial begin
clk=1'b0;
reset=1'b1;
#8 reset=1'b0;
end
always@(posedge clk,posedge reset)begin
counter.performCount(reset);
q=counter.out;
$display("The Expected and the got outputs are %b and %b",q,Q);
end
always #5 clk=~clk;
endmodule