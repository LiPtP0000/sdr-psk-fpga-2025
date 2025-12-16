module Sync_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 16  // Adjust depth as needed, e.g., 16 or 32
) (
    input s_axis_aclk,    // clk_32M768
    input s_axis_aresetn, // Async reset, low active

    // AXI Stream Slave (Write)
    input  [DATA_WIDTH-1:0] s_axis_tdata,
    input                   s_axis_tvalid,
    output                  s_axis_tready,
    input                   s_axis_tlast,
    input                   s_axis_tuser,

    // AXI Stream Master (Read)
    output [DATA_WIDTH-1:0] m_axis_tdata,
    output                  m_axis_tvalid,
    input                   m_axis_tready,
    output                  m_axis_tlast,
    output                  m_axis_tuser
);

    // 内部存储器
    reg [DATA_WIDTH+2-1:0] mem[0:DEPTH-1];  // +2 是为了存 last 和 user
    reg [$clog2(DEPTH)-1:0] w_ptr, r_ptr;
    reg  [$clog2(DEPTH):0] count;

    wire                   full = (count == DEPTH);
    wire                   empty = (count == 0);

    // Handshake Logic
    assign s_axis_tready = !full;
    assign m_axis_tvalid = !empty;

    wire write_en = s_axis_tvalid && s_axis_tready;
    wire read_en = m_axis_tvalid && m_axis_tready;

    // Write Domain
    always @(posedge s_axis_aclk or negedge s_axis_aresetn) begin
        if (!s_axis_aresetn) begin
            w_ptr <= 0;
        end else if (write_en) begin
            mem[w_ptr] <= {s_axis_tuser, s_axis_tlast, s_axis_tdata};
            w_ptr <= w_ptr + 1'b1;  // 自然溢出回绕
        end else;
    end

    // 读逻辑（简单的 FWFT - First Word Fall Through 模式，或者是标准模式）
    // 为了简化时序，这里用最标准的 Output Register 方式可能需要改动，
    // 但对于 32MHz 低速，直接组合逻辑出数据通常没问题。
    wire [DATA_WIDTH+2-1:0] read_out = mem[r_ptr];
    assign {m_axis_tuser, m_axis_tlast, m_axis_tdata} = read_out;

    always @(posedge s_axis_aclk or negedge s_axis_aresetn) begin
        if (!s_axis_aresetn) begin
            r_ptr <= 0;
            count <= 0;
        end else begin
            case ({
                write_en, read_en
            })
                2'b10: count <= count + 1;
                2'b01: count <= count - 1;
                2'b11: count <= count;  // 同时读写，计数不变
            endcase

            if (read_en) begin
                r_ptr <= r_ptr + 1'b1;
            end
        end
    end

endmodule
