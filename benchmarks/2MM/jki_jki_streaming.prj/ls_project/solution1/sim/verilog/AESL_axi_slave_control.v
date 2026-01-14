// ==============================================================
// Vitis HLS - High-Level Synthesis from C, C++ and OpenCL v2021.1 (64-bit)
// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps

module AESL_axi_slave_control (
    clk,
    reset,
    TRAN_s_axi_control_AWADDR,
    TRAN_s_axi_control_AWVALID,
    TRAN_s_axi_control_AWREADY,
    TRAN_s_axi_control_WVALID,
    TRAN_s_axi_control_WREADY,
    TRAN_s_axi_control_WDATA,
    TRAN_s_axi_control_WSTRB,
    TRAN_s_axi_control_ARADDR,
    TRAN_s_axi_control_ARVALID,
    TRAN_s_axi_control_ARREADY,
    TRAN_s_axi_control_RVALID,
    TRAN_s_axi_control_RREADY,
    TRAN_s_axi_control_RDATA,
    TRAN_s_axi_control_RRESP,
    TRAN_s_axi_control_BVALID,
    TRAN_s_axi_control_BREADY,
    TRAN_s_axi_control_BRESP,
    TRAN_control_write_data_finish,
    TRAN_control_start_in,
    TRAN_control_idle_out,
    TRAN_control_ready_out,
    TRAN_control_ready_in,
    TRAN_control_done_out,
    TRAN_control_write_start_in   ,
    TRAN_control_write_start_finish,
    TRAN_control_interrupt,
    TRAN_control_transaction_done_in
    );

//------------------------Parameter----------------------
`define TV_IN_v53 "../tv/cdatafile/c.two_mm_stream_jki_jki.autotvin_v53.dat"
`define TV_IN_v54 "../tv/cdatafile/c.two_mm_stream_jki_jki.autotvin_v54.dat"
`define TV_IN_v55 "../tv/cdatafile/c.two_mm_stream_jki_jki.autotvin_v55.dat"
`define TV_IN_v56 "../tv/cdatafile/c.two_mm_stream_jki_jki.autotvin_v56.dat"
parameter ADDR_WIDTH = 6;
parameter DATA_WIDTH = 32;
parameter v53_DEPTH = 1;
reg [31 : 0] v53_OPERATE_DEPTH = 0;
parameter v53_c_bitwidth = 64;
parameter v54_DEPTH = 1;
reg [31 : 0] v54_OPERATE_DEPTH = 0;
parameter v54_c_bitwidth = 64;
parameter v55_DEPTH = 1;
reg [31 : 0] v55_OPERATE_DEPTH = 0;
parameter v55_c_bitwidth = 64;
parameter v56_DEPTH = 1;
reg [31 : 0] v56_OPERATE_DEPTH = 0;
parameter v56_c_bitwidth = 64;
parameter START_ADDR = 0;
parameter two_mm_stream_jki_jki_continue_addr = 0;
parameter two_mm_stream_jki_jki_auto_start_addr = 0;
parameter v53_data_in_addr = 16;
parameter v54_data_in_addr = 28;
parameter v55_data_in_addr = 40;
parameter v56_data_in_addr = 52;
parameter STATUS_ADDR = 0;

output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_AWADDR;
output  TRAN_s_axi_control_AWVALID;
input  TRAN_s_axi_control_AWREADY;
output  TRAN_s_axi_control_WVALID;
input  TRAN_s_axi_control_WREADY;
output [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_WDATA;
output [DATA_WIDTH/8 - 1 : 0] TRAN_s_axi_control_WSTRB;
output [ADDR_WIDTH - 1 : 0] TRAN_s_axi_control_ARADDR;
output  TRAN_s_axi_control_ARVALID;
input  TRAN_s_axi_control_ARREADY;
input  TRAN_s_axi_control_RVALID;
output  TRAN_s_axi_control_RREADY;
input [DATA_WIDTH - 1 : 0] TRAN_s_axi_control_RDATA;
input [2 - 1 : 0] TRAN_s_axi_control_RRESP;
input  TRAN_s_axi_control_BVALID;
output  TRAN_s_axi_control_BREADY;
input [2 - 1 : 0] TRAN_s_axi_control_BRESP;
output TRAN_control_write_data_finish;
input     clk;
input     reset;
input     TRAN_control_start_in;
output    TRAN_control_done_out;
output    TRAN_control_ready_out;
input     TRAN_control_ready_in;
output    TRAN_control_idle_out;
input  TRAN_control_write_start_in   ;
output TRAN_control_write_start_finish;
input     TRAN_control_interrupt;
input     TRAN_control_transaction_done_in;

reg [ADDR_WIDTH - 1 : 0] AWADDR_reg = 0;
reg  AWVALID_reg = 0;
reg  WVALID_reg = 0;
reg [DATA_WIDTH - 1 : 0] WDATA_reg = 0;
reg [DATA_WIDTH/8 - 1 : 0] WSTRB_reg = 0;
reg [ADDR_WIDTH - 1 : 0] ARADDR_reg = 0;
reg  ARVALID_reg = 0;
reg  RREADY_reg = 0;
reg [DATA_WIDTH - 1 : 0] RDATA_reg = 0;
reg  BREADY_reg = 0;
reg [v53_c_bitwidth - 1 : 0] mem_v53 [v53_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_v53 [ (v53_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * v53_DEPTH -1 : 0] = '{default : 'hz};
reg v53_write_data_finish;
reg [v54_c_bitwidth - 1 : 0] mem_v54 [v54_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_v54 [ (v54_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * v54_DEPTH -1 : 0] = '{default : 'hz};
reg v54_write_data_finish;
reg [v55_c_bitwidth - 1 : 0] mem_v55 [v55_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_v55 [ (v55_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * v55_DEPTH -1 : 0] = '{default : 'hz};
reg v55_write_data_finish;
reg [v56_c_bitwidth - 1 : 0] mem_v56 [v56_DEPTH - 1 : 0] = '{default : 'h0};
reg [DATA_WIDTH-1 : 0] image_mem_v56 [ (v56_c_bitwidth+DATA_WIDTH-1)/DATA_WIDTH * v56_DEPTH -1 : 0] = '{default : 'hz};
reg v56_write_data_finish;
reg AESL_ready_out_index_reg = 0;
reg AESL_write_start_finish = 0;
reg AESL_ready_reg;
reg ready_initial;
reg AESL_done_index_reg = 0;
reg AESL_idle_index_reg = 0;
reg AESL_auto_restart_index_reg;
reg process_0_finish = 0;
reg process_1_finish = 0;
reg process_2_finish = 0;
reg process_3_finish = 0;
reg process_4_finish = 0;
reg process_5_finish = 0;
//write v53 reg
reg [31 : 0] write_v53_count = 0;
reg write_v53_run_flag = 0;
reg write_one_v53_data_done = 0;
//write v54 reg
reg [31 : 0] write_v54_count = 0;
reg write_v54_run_flag = 0;
reg write_one_v54_data_done = 0;
//write v55 reg
reg [31 : 0] write_v55_count = 0;
reg write_v55_run_flag = 0;
reg write_one_v55_data_done = 0;
//write v56 reg
reg [31 : 0] write_v56_count = 0;
reg write_v56_run_flag = 0;
reg write_one_v56_data_done = 0;
reg [31 : 0] write_start_count = 0;
reg write_start_run_flag = 0;

//===================process control=================
reg [31 : 0] ongoing_process_number = 0;
//process number depends on how much processes needed.
reg process_busy = 0;

//=================== signal connection ==============
assign TRAN_s_axi_control_AWADDR = AWADDR_reg;
assign TRAN_s_axi_control_AWVALID = AWVALID_reg;
assign TRAN_s_axi_control_WVALID = WVALID_reg;
assign TRAN_s_axi_control_WDATA = WDATA_reg;
assign TRAN_s_axi_control_WSTRB = WSTRB_reg;
assign TRAN_s_axi_control_ARADDR = ARADDR_reg;
assign TRAN_s_axi_control_ARVALID = ARVALID_reg;
assign TRAN_s_axi_control_RREADY = RREADY_reg;
assign TRAN_s_axi_control_BREADY = BREADY_reg;
assign TRAN_control_write_start_finish = AESL_write_start_finish;
assign TRAN_control_done_out = AESL_done_index_reg;
assign TRAN_control_ready_out = AESL_ready_out_index_reg;
assign TRAN_control_idle_out = AESL_idle_index_reg;
assign TRAN_control_write_data_finish = 1 & v53_write_data_finish & v54_write_data_finish & v55_write_data_finish & v56_write_data_finish;
always @(TRAN_control_ready_in or ready_initial) 
begin
    AESL_ready_reg <= TRAN_control_ready_in | ready_initial;
end

always @(reset or process_0_finish or process_1_finish or process_2_finish or process_3_finish or process_4_finish or process_5_finish ) begin
    if (reset == 0) begin
        ongoing_process_number <= 0;
    end
    else if (ongoing_process_number == 0 && process_0_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 1 && process_1_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 2 && process_2_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 3 && process_3_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 4 && process_4_finish == 1) begin
            ongoing_process_number <= ongoing_process_number + 1;
    end
    else if (ongoing_process_number == 5 && process_5_finish == 1) begin
            ongoing_process_number <= 0;
    end
end

task count_c_data_four_byte_num_by_bitwidth;
input  integer bitwidth;
output integer num;
integer factor;
integer i;
begin
    factor = 32;
    for (i = 1; i <= 32; i = i + 1) begin
        if (bitwidth <= factor && bitwidth > factor - 32) begin
            num = i;
        end
        factor = factor + 32;
    end
end    
endtask

task count_seperate_factor_by_bitwidth;
input  integer bitwidth;
output integer factor;
begin
    if (bitwidth <= 8) begin
        factor=4;
    end
    if (bitwidth <= 16 & bitwidth > 8 ) begin
        factor=2;
    end
    if (bitwidth <= 32 & bitwidth > 16 ) begin
        factor=1;
    end
    if (bitwidth <= 1024 & bitwidth > 32 ) begin
        factor=1;
    end
end    
endtask

task count_operate_depth_by_bitwidth_and_depth;
input  integer bitwidth;
input  integer depth;
output integer operate_depth;
integer factor;
integer remain;
begin
    count_seperate_factor_by_bitwidth (bitwidth , factor);
    operate_depth = depth / factor;
    remain = depth % factor;
    if (remain > 0) begin
        operate_depth = operate_depth + 1;
    end
end    
endtask

task write; /*{{{*/
    input  reg [ADDR_WIDTH - 1:0] waddr;   // write address
    input  reg [DATA_WIDTH - 1:0] wdata;   // write data
    output reg wresp;
    reg aw_flag;
    reg w_flag;
    reg [DATA_WIDTH/8 - 1:0] wstrb_reg;
    integer i;
begin 
    wresp = 0;
    aw_flag = 0;
    w_flag = 0;
//=======================one single write operate======================
    AWADDR_reg <= waddr;
    AWVALID_reg <= 1;
    WDATA_reg <= wdata;
    WVALID_reg <= 1;
    for (i = 0; i < DATA_WIDTH/8; i = i + 1) begin
        wstrb_reg [i] = 1;
    end    
    WSTRB_reg <= wstrb_reg;
    while (!(aw_flag && w_flag)) begin
        @(posedge clk);
        if (aw_flag != 1)
            aw_flag = TRAN_s_axi_control_AWREADY & AWVALID_reg;
        if (w_flag != 1)
            w_flag = TRAN_s_axi_control_WREADY & WVALID_reg;
        AWVALID_reg <= !aw_flag;
        WVALID_reg <= !w_flag;
    end

    BREADY_reg <= 1;
    while (TRAN_s_axi_control_BVALID != 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    BREADY_reg <= 0;
    if (TRAN_s_axi_control_BRESP === 2'b00) begin
        wresp = 1;
        //input success. in fact BRESP is always 2'b00
    end   
//=======================one single write operate======================

end
endtask/*}}}*/

task read (/*{{{*/
    input  [ADDR_WIDTH - 1:0] raddr ,   // write address
    output [DATA_WIDTH - 1:0] RDATA_result ,
    output rresp
);
begin 
    rresp = 0;
//=======================one single read operate======================
    ARADDR_reg <= raddr;
    ARVALID_reg <= 1;
    while (TRAN_s_axi_control_ARREADY !== 1) begin
        @(posedge clk);
    end
    @(posedge clk);
    ARVALID_reg <= 0;
    RREADY_reg <= 1;
    while (TRAN_s_axi_control_RVALID !== 1) begin
        //wait for response 
        @(posedge clk);
    end
    @(posedge clk);
    RDATA_result  <= TRAN_s_axi_control_RDATA;
    RREADY_reg <= 0;
    if (TRAN_s_axi_control_RRESP === 2'b00 ) begin
        rresp <= 1;
        //output success. in fact RRESP is always 2'b00
    end  
    @(posedge clk);

//=======================one single read operate end======================

end
endtask/*}}}*/

initial begin : ready_initial_process
    ready_initial = 0;
    wait(reset === 1);
    @(posedge clk);
    ready_initial = 1;
    @(posedge clk);
    ready_initial = 0;
end

initial begin : update_status
    integer process_num ;
    integer read_status_resp;
    integer write_continue_tmp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 0;
    write_continue_tmp = 0;
    while (1) begin
        process_0_finish = 0;
        AESL_done_index_reg         <= 0;
        AESL_ready_out_index_reg        <= 0;
        if (ongoing_process_number === process_num && process_busy === 0) begin
            process_busy = 1;
            read (STATUS_ADDR, RDATA_reg, read_status_resp);
                AESL_ready_out_index_reg    <= RDATA_reg[1 : 1];
                AESL_idle_index_reg         <= RDATA_reg[2 : 2];
                if (RDATA_reg[1 : 1] == 1) begin
                    @(posedge clk);
                    AESL_ready_out_index_reg    <= 0;
                    write_continue_tmp=0;
                    write_continue_tmp[4 : 4] = 1;
                    write (STATUS_ADDR, write_continue_tmp, read_status_resp);
                    AESL_done_index_reg         <= 1;
                    @(posedge clk);
                    AESL_done_index_reg         <= 0;
                end 
            process_0_finish = 1;
            process_busy = 0;
        end 
        @(posedge clk);
    end
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        v53_write_data_finish <= 0;
        write_v53_run_flag <= 0; 
        write_v53_count = 0;
        count_operate_depth_by_bitwidth_and_depth (v53_c_bitwidth, v53_DEPTH, v53_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            v53_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_v53_run_flag <= 1; 
            write_v53_count = 0;
        end
        if (write_one_v53_data_done === 1) begin
            write_v53_count = write_v53_count + 1;
            if (write_v53_count == v53_OPERATE_DEPTH) begin
                write_v53_run_flag <= 0; 
                v53_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_v53
    integer write_v53_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] v53_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = v53_c_bitwidth;
    process_num = 1;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_1_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_v53_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write v53 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (v53_c_bitwidth < 32) begin
                        v53_data_tmp_reg = mem_v53[write_v53_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < v53_c_bitwidth) begin
                                v53_data_tmp_reg[j] = mem_v53[write_v53_count][i*32 + j];
                            end
                            else begin
                                v53_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_v53[write_v53_count * four_byte_num  + i]!==v53_data_tmp_reg) begin
                    write (v53_data_in_addr + write_v53_count * four_byte_num * 4 + i * 4, v53_data_tmp_reg, write_v53_resp);
                    image_mem_v53[write_v53_count * four_byte_num + i]=v53_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_v53_data_done <= 1;
                @(posedge clk);
                write_one_v53_data_done <= 0;
            end   
            process_1_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        v54_write_data_finish <= 0;
        write_v54_run_flag <= 0; 
        write_v54_count = 0;
        count_operate_depth_by_bitwidth_and_depth (v54_c_bitwidth, v54_DEPTH, v54_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            v54_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_v54_run_flag <= 1; 
            write_v54_count = 0;
        end
        if (write_one_v54_data_done === 1) begin
            write_v54_count = write_v54_count + 1;
            if (write_v54_count == v54_OPERATE_DEPTH) begin
                write_v54_run_flag <= 0; 
                v54_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_v54
    integer write_v54_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] v54_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = v54_c_bitwidth;
    process_num = 2;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_2_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_v54_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write v54 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (v54_c_bitwidth < 32) begin
                        v54_data_tmp_reg = mem_v54[write_v54_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < v54_c_bitwidth) begin
                                v54_data_tmp_reg[j] = mem_v54[write_v54_count][i*32 + j];
                            end
                            else begin
                                v54_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_v54[write_v54_count * four_byte_num  + i]!==v54_data_tmp_reg) begin
                    write (v54_data_in_addr + write_v54_count * four_byte_num * 4 + i * 4, v54_data_tmp_reg, write_v54_resp);
                    image_mem_v54[write_v54_count * four_byte_num + i]=v54_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_v54_data_done <= 1;
                @(posedge clk);
                write_one_v54_data_done <= 0;
            end   
            process_2_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        v55_write_data_finish <= 0;
        write_v55_run_flag <= 0; 
        write_v55_count = 0;
        count_operate_depth_by_bitwidth_and_depth (v55_c_bitwidth, v55_DEPTH, v55_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            v55_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_v55_run_flag <= 1; 
            write_v55_count = 0;
        end
        if (write_one_v55_data_done === 1) begin
            write_v55_count = write_v55_count + 1;
            if (write_v55_count == v55_OPERATE_DEPTH) begin
                write_v55_run_flag <= 0; 
                v55_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_v55
    integer write_v55_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] v55_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = v55_c_bitwidth;
    process_num = 3;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_3_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_v55_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write v55 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (v55_c_bitwidth < 32) begin
                        v55_data_tmp_reg = mem_v55[write_v55_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < v55_c_bitwidth) begin
                                v55_data_tmp_reg[j] = mem_v55[write_v55_count][i*32 + j];
                            end
                            else begin
                                v55_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_v55[write_v55_count * four_byte_num  + i]!==v55_data_tmp_reg) begin
                    write (v55_data_in_addr + write_v55_count * four_byte_num * 4 + i * 4, v55_data_tmp_reg, write_v55_resp);
                    image_mem_v55[write_v55_count * four_byte_num + i]=v55_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_v55_data_done <= 1;
                @(posedge clk);
                write_one_v55_data_done <= 0;
            end   
            process_3_finish <= 1;
        end
        @(posedge clk);
    end    
end
always @(reset or posedge clk) begin
    if (reset == 0) begin
        v56_write_data_finish <= 0;
        write_v56_run_flag <= 0; 
        write_v56_count = 0;
        count_operate_depth_by_bitwidth_and_depth (v56_c_bitwidth, v56_DEPTH, v56_OPERATE_DEPTH);
    end
    else begin
        if (TRAN_control_start_in === 1) begin
            v56_write_data_finish <= 0;
        end
        if (AESL_ready_reg === 1) begin
            write_v56_run_flag <= 1; 
            write_v56_count = 0;
        end
        if (write_one_v56_data_done === 1) begin
            write_v56_count = write_v56_count + 1;
            if (write_v56_count == v56_OPERATE_DEPTH) begin
                write_v56_run_flag <= 0; 
                v56_write_data_finish <= 1;
            end
        end
    end
end

initial begin : write_v56
    integer write_v56_resp;
    integer process_num ;
    integer get_ack;
    integer four_byte_num;
    integer c_bitwidth;
    integer i;
    integer j;
    reg [31 : 0] v56_data_tmp_reg;
    wait(reset === 1);
    @(posedge clk);
    c_bitwidth = v56_c_bitwidth;
    process_num = 4;
    count_c_data_four_byte_num_by_bitwidth (c_bitwidth , four_byte_num) ;
    while (1) begin
        process_4_finish <= 0;

        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            get_ack = 1;
            if (write_v56_run_flag === 1 && get_ack === 1) begin
                process_busy = 1;
                //write v56 data 
                for (i = 0 ; i < four_byte_num ; i = i+1) begin
                    if (v56_c_bitwidth < 32) begin
                        v56_data_tmp_reg = mem_v56[write_v56_count];
                    end
                    else begin
                        for (j=0 ; j<32 ; j = j + 1) begin
                            if (i*32 + j < v56_c_bitwidth) begin
                                v56_data_tmp_reg[j] = mem_v56[write_v56_count][i*32 + j];
                            end
                            else begin
                                v56_data_tmp_reg[j] = 0;
                            end
                        end
                    end
                    if(image_mem_v56[write_v56_count * four_byte_num  + i]!==v56_data_tmp_reg) begin
                    write (v56_data_in_addr + write_v56_count * four_byte_num * 4 + i * 4, v56_data_tmp_reg, write_v56_resp);
                    image_mem_v56[write_v56_count * four_byte_num + i]=v56_data_tmp_reg;
                    end
                end
                process_busy = 0;
                write_one_v56_data_done <= 1;
                @(posedge clk);
                write_one_v56_data_done <= 0;
            end   
            process_4_finish <= 1;
        end
        @(posedge clk);
    end    
end

always @(reset or posedge clk) begin
    if (reset == 0) begin
        write_start_run_flag <= 0; 
        write_start_count <= 0;
    end
    else begin
        if (write_start_count >= 1) begin
            write_start_run_flag <= 0; 
        end
        else if (TRAN_control_write_start_in === 1) begin
            write_start_run_flag <= 1; 
        end
        if (AESL_write_start_finish === 1) begin
            write_start_count <= write_start_count + 1;
            write_start_run_flag <= 0; 
        end
    end
end

initial begin : write_start
    reg [DATA_WIDTH - 1 : 0] write_start_tmp;
    integer process_num;
    integer write_start_resp;
    wait(reset === 1);
    @(posedge clk);
    process_num = 5;
    while (1) begin
        process_5_finish = 0;
        if (ongoing_process_number === process_num && process_busy === 0 ) begin
            if (write_start_run_flag === 1) begin
                process_busy = 1;
                write_start_tmp=0;
                write_start_tmp[0 : 0] = 1;
                write (START_ADDR, write_start_tmp, write_start_resp);
                process_busy = 0;
                AESL_write_start_finish <= 1;
                @(posedge clk);
                AESL_write_start_finish <= 0;
            end
            process_5_finish <= 1;
        end 
        @(posedge clk);
    end
end

//------------------------Task and function-------------- 
task read_token; 
    input integer fp; 
    output reg [151 : 0] token;
    integer ret;
    begin
        token = "";
        ret = 0;
        ret = $fscanf(fp,"%s",token);
    end 
endtask 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_v53_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [v53_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (v53_c_bitwidth , factor);
  fp = $fopen(`TV_IN_v53 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_v53); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < v53_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_v53 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_v53 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_v53 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_v53 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_v53 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_v54_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [v54_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (v54_c_bitwidth , factor);
  fp = $fopen(`TV_IN_v54 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_v54); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < v54_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_v54 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_v54 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_v54 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_v54 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_v54 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_v55_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [v55_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (v55_c_bitwidth , factor);
  fp = $fopen(`TV_IN_v55 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_v55); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < v55_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_v55 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_v55 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_v55 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_v55 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_v55 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
//------------------------Read file------------------------ 
 
// Read data from file 
initial begin : read_v56_file_process 
  integer fp; 
  integer ret; 
  integer factor; 
  reg [151 : 0] token; 
  reg [151 : 0] token_tmp; 
  //reg [v56_c_bitwidth - 1 : 0] token_tmp; 
  reg [DATA_WIDTH - 1 : 0] tmp_cache_mem; 
  reg [ 8*5 : 1] str;
  integer transaction_idx; 
  integer i; 
  transaction_idx = 0; 
  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
  count_seperate_factor_by_bitwidth (v56_c_bitwidth , factor);
  fp = $fopen(`TV_IN_v56 ,"r"); 
  if(fp == 0) begin                               // Failed to open file 
      $display("Failed to open file \"%s\"!", `TV_IN_v56); 
      $finish; 
  end 
  read_token(fp, token); 
  if (token != "[[[runtime]]]") begin             // Illegal format 
      $display("ERROR: Simulation using HLS TB failed.");
      $finish; 
  end 
  read_token(fp, token); 
  while (token != "[[[/runtime]]]") begin 
      if (token != "[[transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token);                        // skip transaction number 
      @(posedge clk);
      # 0.2;
      while(AESL_ready_reg !== 1) begin
          @(posedge clk); 
          # 0.2;
      end
      for(i = 0; i < v56_DEPTH; i = i + 1) begin 
          read_token(fp, token); 
          ret = $sscanf(token, "0x%x", token_tmp); 
          if (factor == 4) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [7 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [15 : 8] = token_tmp;
              end
              if (i%factor == 2) begin
                  tmp_cache_mem [23 : 16] = token_tmp;
              end
              if (i%factor == 3) begin
                  tmp_cache_mem [31 : 24] = token_tmp;
                  mem_v56 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1 : 0] = 0;
              end
          end
          if (factor == 2) begin
              if (i%factor == 0) begin
                  tmp_cache_mem [15 : 0] = token_tmp;
              end
              if (i%factor == 1) begin
                  tmp_cache_mem [31 : 16] = token_tmp;
                  mem_v56 [i/factor] = tmp_cache_mem;
                  tmp_cache_mem [DATA_WIDTH - 1: 0] = 0;
              end
          end
          if (factor == 1) begin
              mem_v56 [i] = token_tmp;
          end
      end 
      if (factor == 4) begin
          if (i%factor != 0) begin
              mem_v56 [i/factor] = tmp_cache_mem;
          end
      end
      if (factor == 2) begin
          if (i%factor != 0) begin
              mem_v56 [i/factor] = tmp_cache_mem;
          end
      end 
      read_token(fp, token); 
      if(token != "[[/transaction]]") begin 
          $display("ERROR: Simulation using HLS TB failed.");
          $finish; 
      end 
      read_token(fp, token); 
      transaction_idx = transaction_idx + 1; 
  end 
  $fclose(fp); 
end 
 
endmodule
