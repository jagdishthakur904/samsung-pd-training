module tb_mod7_counter;

    reg clk;
    reg rst_n;
    wire [2:0] count;

    // Instantiate the modulo-7 counter
    mod7_counter uut (
        .clk(clk),
        .rst_n(rst_n),
        .count(count)
    );

    // Clock generation
    initial begin
        // VCD file setup
        $dumpfile("mod7_counter.vcd");
        $dumpvars(0, tb_mod7_counter);

        clk = 0;
        forever #1 clk = ~clk;
    end

    // Stimulus generation
    initial begin
        // Initialize reset
        rst_n = 0;

        // Apply reset
        #2 rst_n = 1;

        // Allow some time for the counter to stabilize
        #20;

        // Check counter values
        $display("Counter = %b", count);

        // Toggle reset
      //  rst_n = 0;
       // #10 rst_n = 1;

        // Allow some time for the counter to stabilize
        #10;

        // Check counter values again
        $display("Counter = %b", count);

        // Finish simulation
        $finish;
    end

endmodule
