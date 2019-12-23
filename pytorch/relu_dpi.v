// this file will be eventually generated by AWIG feature

module __Relu_dpi;

    export "DPI-C" function dpi_read_reg;
    export "DPI-C" function dpi_write_reg;
    export "DPI-C" function dpi_read_mem;
    export "DPI-C" function dpi_write_mem;

    function int dpi_read_reg_raddr;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.raddr;
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_reg_raddr;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.raddr;
            data[sel*32 +: 32] = value;
            __Relu.dut.raddr = data[0 +: 10];
        end
    endfunction

    function int dpi_read_reg_waddr;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.waddr;
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_reg_waddr;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.waddr;
            data[sel*32 +: 32] = value;
            __Relu.dut.waddr = data[0 +: 10];
        end
    endfunction

    function int dpi_read_reg_launch;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 1] = __Relu.dut.launch;
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_reg_launch;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 1] = __Relu.dut.launch;
            data[sel*32 +: 32] = value;
            __Relu.dut.launch = data[0 +: 1];
        end
    endfunction

    function int dpi_read_reg_finish;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 1] = __Relu.dut.finish;
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_reg_finish;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 1] = __Relu.dut.finish;
            data[sel*32 +: 32] = value;
            __Relu.dut.finish = data[0 +: 1];
        end
    endfunction

    function int dpi_read_reg_length;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.length;
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_reg_length;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.length;
            data[sel*32 +: 32] = value;
            __Relu.dut.length = data[0 +: 10];
        end
    endfunction

    function int dpi_read_reg_cycle;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.counter;
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_reg_cycle;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 10] = __Relu.dut.counter;
            data[sel*32 +: 32] = value;
            __Relu.dut.counter = data[0 +: 10];
        end
    endfunction

    function int dpi_read_mem_rmem;
        input int addr;
        input int sel;
        reg [32-1:0] data;
        begin
        data[0 +: 8] = __Relu.dut.rmem[addr];
        return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_mem_rmem;
        input int addr;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
        data[0 +: 8] = __Relu.dut.rmem[addr];
        data[sel*32 +: 32] = value;
        __Relu.dut.rmem[addr] = data[0 +: 8];
        end
    endfunction

    function int dpi_read_mem_wmem;
        input int addr;
        input int sel;
        reg [32-1:0] data;
        begin
            data[0 +: 8] = __Relu.dut.wmem[addr];
            return data[sel*32 +: 32];
        end
    endfunction

    function void dpi_write_mem_wmem;
        input int addr;
        input int sel;
        input int value;
        reg [32-1:0] data;
        begin
            data[0 +: 8] = __Relu.dut.wmem[addr];
            data[sel*32 +: 32] = value;
            __Relu.dut.wmem[addr] = data[0 +: 8];
        end
    endfunction

    function int dpi_read_reg;
        input int hid;
        input int sel;
        begin
            if (hid == 0) begin
                return dpi_read_reg_raddr(sel);
            end
            else if (hid == 1) begin
                return dpi_read_reg_waddr(sel);
            end
            else if (hid == 2) begin
                return dpi_read_reg_launch(sel);
            end
            else if (hid == 3) begin
                return dpi_read_reg_finish(sel);
            end
            else if (hid == 4) begin
                return dpi_read_reg_length(sel);
            end
            else if (hid == 5) begin
                return dpi_read_reg_cycle(sel);
            end
            else begin
                $error("[dpi-read-reg] invalid hid");
            end
        end
    endfunction

    function void dpi_write_reg;
        input int hid;
        input int sel;
        input int value;
        begin
            if (hid == 0) begin
                dpi_write_reg_raddr(sel, value);
            end
            else if (hid == 1) begin
                dpi_write_reg_waddr(sel, value);
            end
            else if (hid == 2) begin
                dpi_write_reg_launch(sel, value);
            end
            else if (hid == 3) begin
                dpi_write_reg_finish(sel, value);
            end
            else if (hid == 4) begin
                dpi_write_reg_length(sel, value);
            end
            else if (hid == 5) begin
                dpi_write_reg_cycle(sel, value);
            end
            else begin
                $error("[dpi-write-reg] invalid hid");
            end
        end
    endfunction

    function int dpi_read_mem;
        input int hid;
        input int addr;
        input int sel;
        begin
            if (hid == 0) begin
                return dpi_read_mem_rmem(addr, sel);
            end
            else if (hid == 1) begin
                return dpi_read_mem_wmem(addr, sel);
            end
            else begin
                $error("[dpi-read-mem] invalid hid");
            end
        end
    endfunction

    function void dpi_write_mem;
        input int hid;
        input int addr;
        input int sel;
        input int value;
        begin
            if (hid == 0) begin
                dpi_write_mem_rmem(addr, sel, value);
            end
            else if (hid == 1) begin
                dpi_write_mem_wmem(addr, sel, value);
            end
            else begin
                $error("[dpi-write-mem] invalid hid");
            end
        end
  endfunction

endmodule
