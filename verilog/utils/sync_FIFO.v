`timescale 1ns / 1ps

module Sync_FIFO #(
    parameter DATA_WIDTH = 8,
    parameter DEPTH      = 16
) (
    input s_axis_aclk,
    input s_axis_aclken,  // Added clock enable (1.024MHz)
    input s_axis_aresetn,

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

    // Internal Memory
    reg [DATA_WIDTH+2-1:0] mem[0:DEPTH-1];
    reg [$clog2(DEPTH)-1:0] w_ptr, r_ptr;
    reg  [$clog2(DEPTH):0] count;

    // Handshake Logic
    // Note: full and empty should be combinational based on current registers
    wire                   full = (count == DEPTH);
    wire                   empty = (count == 0);

    // I/O Ready/Valid signals
    assign s_axis_tready = !full;
    assign m_axis_tvalid = !empty;

    // Transaction happens only when s_axis_aclken is HIGH and handshake is successful
    wire write_en = s_axis_tvalid && s_axis_tready && s_axis_aclken;
    wire read_en = m_axis_tvalid && m_axis_tready && s_axis_aclken;

    // Write Domain
    always @(posedge s_axis_aclk or negedge s_axis_aresetn) begin
        if (!s_axis_aresetn) begin
            w_ptr <= 0;
        end else if (s_axis_aclken) begin  // All state changes protected by s_axis_aclken
            if (write_en) begin
                w_ptr <= w_ptr + 1'b1;
            end
        end
    end

    always @(posedge s_axis_aclk) begin
        if (s_axis_aclken) begin
            if (write_en) begin
                mem[w_ptr] <= {s_axis_tuser, s_axis_tlast, s_axis_tdata};
            end
        end
    end

    // Read Logic (FWFT Mode)
    // Combinational output is fine for 32MHz, it will update when r_ptr updates
    wire [DATA_WIDTH+2-1:0] read_out = mem[r_ptr];
    assign {m_axis_tuser, m_axis_tlast, m_axis_tdata} = read_out;

    // Pointer and Count Management
    always @(posedge s_axis_aclk or negedge s_axis_aresetn) begin
        if (!s_axis_aresetn) begin
            r_ptr <= 0;
            count <= 0;
        end else if (s_axis_aclken) begin  // Only update when s_axis_aclken is high
            case ({
                write_en, read_en
            })
                2'b10:   count <= count + 1;
                2'b01:   count <= count - 1;
                2'b11:   count <= count;  // Simultaneous read and write
                default: ;
            endcase

            if (read_en) begin
                r_ptr <= r_ptr + 1'b1;
            end
        end
    end

endmodule
