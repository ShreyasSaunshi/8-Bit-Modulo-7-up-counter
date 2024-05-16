package mod7Counter_pkg;
class modcounter;
bit clk;
bit reset;
bit [7:0] out;
function new(bit clk1, bit reset1);
clk = clk1;
reset = reset1;
endfunction

function void performCount(reset );
if (reset)
out = 8'b0;
else begin
if (out<8'b00000110)
out = out + 1;
else
out = 8'b00000000;
end
endfunction
endclass
endpackage