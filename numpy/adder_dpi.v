// this file will be eventually generated by AWIG feature

module __adder_dpi;

    export "DPI-C" function dpi_read_reg;
    export "DPI-C" function dpi_write_reg;

    function byte dpi_read_r0;
        input int sel;
        reg [32-1:0] data;
        begin
            data = __adder.dut.r0;
            return data[sel*8 +: 8];
        end
    endfunction

    function void dpi_write_r0;
        input int sel;
        input byte value;
        reg [32-1:0] data;
        begin
            data = __adder.dut.r0;
            data[sel*8 +: 8] = value;
            __adder.dut.r0 = data;
        end
    endfunction

    function byte dpi_read_reg;
        input int hid;
        input int sel;
        begin
            if (hid == 0) begin
                return dpi_read_r0(sel);
            end
            else begin
                $error("[dpi-read-reg] invalid hid");
            end
        end
    endfunction

    function void dpi_write_reg;
        input int hid;
        input int sel;
        input byte value;
        begin
            if (hid == 0) begin
                dpi_write_r0(sel, value);
            end
            else begin
                $error("[dpi-write-reg] invalid hid");
            end
        end
    endfunction

endmodule
