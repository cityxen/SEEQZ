////////////////////////////////////////////////////
// Set the SEEQZ bit according to pattern cursor

.const SEEQZ_USER_PORT = 0
.const SEEQZ_CART_PORT = 1
.const SEEQZ_TAPE_PORT = 2
.const SEEQZ_CIEC_PORT = 3
.const SEEQZ_MEATLOAF  = 4
.segment SEEQZ_DRIVER_DEFAULT[]
*=$4100 "SEEQZ DRIVER";
seeqz_drvr_name: // 16 byte zero terminated string
.text "driverdefault-001" // driver default will be the 8 channel relay board
     //01234567890123456
.byte 0
seeqz_drvr_num_bits: // number of bits
.byte 8
seeqz_drvr_invert: // yes / no (invert bits going out)
.byte 1
seeqz_drvr_port:
.byte SEEQZ_USER_PORT
seeqz_drvr_draw_bits_routine: // 256 bytes reserved for specialized driver output to user port
.fill 256,0
.byte 0
.segment SEEQZ_DRIVER[]
*=$4300 "SEEQZ DRIVER";
seeqz_set_bit:
    rts
.file [name="driverdefault-001.prg", segments="SEEQZ_DRIVER_DEFAULT"]


