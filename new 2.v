
module tb;
  reg clock=0;
  reg reset;
  wire out;
  counter dut(clock,reset,out);
  
  initial
  forever
    clock=~clock;
  initial
    begin
      reset=0;
    end
  initial
    begin
    $monitor("values of out=%od",out)
    #100;
  $finish;
    end
endmodule