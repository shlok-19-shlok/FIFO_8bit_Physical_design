module fifo #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH = 16,
    parameter ADDR_WIDTH = 4
)(
    input clk,
    input rst,

    input wr_en,
    input rd_en,

    input [DATA_WIDTH-1:0] din,

    output reg [DATA_WIDTH-1:0] dout,
    output full,
    output empty
);

reg [DATA_WIDTH-1:0] mem [0:DEPTH-1];

reg [ADDR_WIDTH:0] wr_ptr;
reg [ADDR_WIDTH:0] rd_ptr;

wire [ADDR_WIDTH-1:0] wr_addr = wr_ptr[ADDR_WIDTH-1:0];
wire [ADDR_WIDTH-1:0] rd_addr = rd_ptr[ADDR_WIDTH-1:0];

assign empty = (wr_ptr == rd_ptr);

assign full =
        (wr_ptr[ADDR_WIDTH] != rd_ptr[ADDR_WIDTH]) &&
        (wr_ptr[ADDR_WIDTH-1:0] == rd_ptr[ADDR_WIDTH-1:0]);

always @(posedge clk) begin

    if(rst) begin

        wr_ptr <= 0;
        rd_ptr <= 0;
        dout <= 0;

    end

    else begin

        if(wr_en && !full) begin
            mem[wr_addr] <= din;
            wr_ptr <= wr_ptr + 1;
        end

        if(rd_en && !empty) begin
            dout <= mem[rd_addr];
            rd_ptr <= rd_ptr + 1;
        end

    end

end

endmodule
