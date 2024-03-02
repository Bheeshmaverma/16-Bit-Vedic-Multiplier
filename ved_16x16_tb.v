`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Designer Name: Bheeshma Verma
// Create Date: 02.03.2024 17:20:47
// Module Name: ved_16x16_tb
// Project Name: Designing of test bench for 16x16 Vedic Multiplier using Verilog
// Target Devices: Artix-7 Nexys 4 DDR FPGA Board
//////////////////////////////////////////////////////////////////////////////////


module ved_16x16_tb();
  
  reg [15:0] a,b;
  wire [31:0] result;
  
  ved_16x16 dut(a,b,result);
  
  initial begin
    a = 16'h0000;
    b = 16'h0000;
  end
  
  initial begin
    $display("Display: a = %d, b = %d, result = %d", a,b,result);
    $monitor($time, "a = %d, b = %d, result = %d", a,b,result);
    
    a = 5; b = 6;
    #5 a = 6; b = 7;
    #5 a = 9; b = 7;
    #5 a = 15; b = 15;
    #5 a = 30; b = 30;
    #5 a = 25; b = 25;
    #5 a = 255; b = 250;
    #5 a = 255; b = 254;
    #5 a = 255; b = 255;
    #5 a = 500; b = 500;
    #5 a = 1000; b = 1000;
    #5 a = 65535; b = 65535;
    #10 $finish;
  end
  
endmodule