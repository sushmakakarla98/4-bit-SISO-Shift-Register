module tb();
      
reg clk, Din;
wire Output,o0,o1,o2;
siso siso1(clk, Din, Output,o0,o1,o2);

initial begin
clk = 1'b0;
 repeat(20)#5 clk = ~clk;
end

initial begin
Din=1'b0;
#10 Din=1'b1;
#10 Din=1'b0;
#10 Din=1'b1;
#10 Din=1'b0;
end
endmodule