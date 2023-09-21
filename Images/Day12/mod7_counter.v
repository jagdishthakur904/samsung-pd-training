module mod7_counter (
    input wire clk,
    input wire rst_n,
    output reg [2:0] count
);

    always @(posedge clk or negedge rst_n) begin
        if (~rst_n) begin
            count <= 3'b000;
        end else begin
            if (count == 3'b110)
                count <= 3'b000;
            else
                count <= count + 1;
        end
    end

endmodule
