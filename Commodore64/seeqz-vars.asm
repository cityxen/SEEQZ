

seeqz_driver:
.byte 0

drive_number:
.byte 8

seeqz_driver_msg_1:
.byte KEY_GREEN
.text "WHICH DRIVER?"
.byte 13
.byte 0

// zero page vars
.const zp_block1             = $03
.const zp_block1_lo          = $03
.const zp_block1_hi          = $04

.const zp_block2             = $92
.const zp_block2_lo          = $92
.const zp_block2_hi          = $93

.const zp_block3             = $a6
.const zp_block3_lo          = $a6
.const zp_block3_hi          = $a7

.const zp_block4             = $a8
.const zp_block4_lo          = $a8
.const zp_block4_hi          = $a9

.const zp_block_cmd          = $94
.const zp_block_cmd_lo       = $94
.const zp_block_cmd_hi       = $95

.const seeqz_bit_off       = 94
.const seeqz_bit_off_color = DARK_GREY
.const seeqz_bit_on        = 90
.const seeqz_bit_on_color  = RED

// sprite cursor var
.var   sprite_cursor       = $2c01

// disk vars
.var filename                = $4b8  // 16 bytes
.var filename_color          = $d8b8
.var filename_buffer         = $3fe0
.var filename_buffer_end     = $3fd2
.var filename_cursor         = $3fd3
.var filename_length         = $3fd4
.var drive                   = $3fd5
.var filename_save           = $3ff0 // - $3fff

// playback data
.var playback_pos_track      = $2c02
.var playback_pos_pattern    = $2c03
.var playback_pos_pattern_c  = $2c04
.var playback_speed          = $2c05
.var playback_playing        = $2c06
.var playback_speed_counter  = $2c07
.var playback_speed_counter2 = $2c08
.const playback_default_speed= $1f

// track data
.const tracker_data_start    = $4000
.const tracker_data_start_hi = $40
.const tracker_data_start_lo = $00
.const tracker_data_end      = $9fff
.const tracker_data_end_hi   = $9f
.const tracker_data_end_lo   = $ff

// track block (256 bytes)
.var track_block             = $4000 // - $40ff
.var track_block_length      = $2c09 // track block total length
.var track_block_cursor      = $2c0a // current track block cursor position
.const track_block_cursor_init = 0

// pattern (256 bytes x 2) + 1 byte for length
.const current_speed         = $2c0b
.const pattern_cursor        = $2c0c
.const pattern_cursor_init   = 0
.const pattern_length        = $4100 // for each pattern (up to pattern_max), a byte will indicate what the length of the pattern will be
.const pattern_block_start   = $4200
.const pattern_block_start_lo= $00
.const pattern_block_start_hi= $42
.const pattern_min           = $00
.const pattern_max           = $11