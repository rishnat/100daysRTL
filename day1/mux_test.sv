// A simple TB for mux

module mux_tb ();

  reg [7:0] a_i;
  reg [7:0] b_i;
  reg       sel_i;
  wire [7:0] y_o;

  mux_8bit DAY1 (.*);

  integer i;
  initial begin
    
    for (i = 0; i < 10; i++) begin
      a_i   = $urandom_range (0, 8'hFF);
      b_i   = $urandom_range (0, 8'hFF);
      sel_i = $random%2;
      #5;
    end
    #10;
    $finish;
  end

  initial begin
    $dumpfile("mux.vcd");
    $dumpvars(0, mux_tb);
  end

endmodule
