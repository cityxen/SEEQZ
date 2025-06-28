

////////////////////////////////////////////////////
// Refresh Pattern
refresh_pattern:
    jsr calculate_pattern_block
    jsr seeqz_set_bit
    jsr calculate_pattern_block
rp_v1:
    lda pattern_cursor
    clv
    sec
    sbc #$06
    bcs rp_v1_2
    ldy #11
    jsr clear_pattern_line
    jmp rp_v2
rp_v1_2:
    ldx #00
    ldy #11
    jsr print_hex_calc
    lda pattern_cursor
    clv
    sec
    sbc #$06
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #11
    jsr draw_seeqz_bitz
    ldx #36
    ldy #11
    jsr drawcommand
    
rp_v2:
    lda pattern_cursor
    clv
    sec
    sbc #$05
    bcs rp_v2_2
    ldy #12
    jsr clear_pattern_line
    jmp rp_v3
rp_v2_2:
    ldx #00
    ldy #12
    jsr print_hex_calc
    lda pattern_cursor
    clv
    sec
    sbc #$05
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #12
    jsr draw_seeqz_bitz
    ldx #36
    ldy #12
    jsr drawcommand

rp_v3:
    lda pattern_cursor
    clv
    sec
    sbc #$04
    bcs rp_v3_2
    ldy #13
    jsr clear_pattern_line
    jmp rp_v4
rp_v3_2:
    ldx #00
    ldy #13
    jsr print_hex_calc
    lda pattern_cursor
    clv
    sec
    sbc #$04
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #13
    jsr draw_seeqz_bitz
    ldx #36
    ldy #13
    jsr drawcommand

rp_v4:
    lda pattern_cursor
    clv
    sec
    sbc #$03
    bcs rp_v4_2
    ldy #14
    jsr clear_pattern_line
    jmp rp_v5
rp_v4_2:
    ldx #00
    ldy #14
    jsr print_hex_calc
    lda pattern_cursor
    clv
    sec
    sbc #$03
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #14
    jsr draw_seeqz_bitz
    ldx #36
    ldy #14
    jsr drawcommand

rp_v5:
    lda pattern_cursor
    clv
    sec
    sbc #$02
    bcs rp_v5_2
    ldy #15
    jsr clear_pattern_line
    jmp rp_v6
rp_v5_2:
    ldx #00
    ldy #15
    jsr print_hex_calc
    lda pattern_cursor
    clv
    sec
    sbc #$02
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #15
    jsr draw_seeqz_bitz
    ldx #36
    ldy #15
    jsr drawcommand

rp_v6:
    lda pattern_cursor
    clv
    sec
    sbc #$01
    bcs rp_v6_2
    ldx #$00
    ldy #16
    jsr clear_pattern_line
    jmp rp_v7
rp_v6_2:
    ldx #00
    ldy #16
    jsr print_hex_calc
    lda pattern_cursor
    clv
    sec
    sbc #$01
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #16
    jsr draw_seeqz_bitz
    ldx #36
    ldy #16
    jsr drawcommand

rp_v7:
    lda pattern_cursor
    ldx #00
    ldy #17
    jsr print_hex_calc
    lda pattern_cursor
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #17
    jsr draw_seeqz_bitz
    lda pattern_cursor
    jsr set_pattern_block_zptrs
    ldx #36
    ldy #17
    jsr drawcommand
rp_v8:
    lda pattern_cursor
    clc
    adc #$01
    bcc rp_v8_2
    ldy #18
    jsr clear_pattern_line
    jmp rp_v9
rp_v8_2:
    ldx #00
    ldy #18
    jsr print_hex_calc
    lda pattern_cursor
    clc
    adc #$01
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #18
    jsr draw_seeqz_bitz
    ldx #36
    ldy #18
    jsr drawcommand

rp_v9:
    lda pattern_cursor
    clc
    adc #$02
    bcc rp_v9_2
    ldy #19
    jsr clear_pattern_line
    jmp rp_v10
rp_v9_2:
    ldx #00
    ldy #19
    jsr print_hex_calc
    lda pattern_cursor
    clc
    adc #$02
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #19
    jsr draw_seeqz_bitz
    ldx #36
    ldy #19
    jsr drawcommand

rp_v10:
    lda pattern_cursor
    clc
    adc #$03
    bcc rp_v10_2
    ldy #20
    jsr clear_pattern_line
    jmp rp_v11
rp_v10_2:
    ldx #00
    ldy #20
    jsr print_hex_calc
    lda pattern_cursor
    clc
    adc #$03
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #20
    jsr draw_seeqz_bitz
    ldx #36
    ldy #20
    jsr drawcommand

rp_v11:
    lda pattern_cursor
    clc
    adc #$04
    bcc rp_v11_2
    ldy #21
    jsr clear_pattern_line
    jmp rp_v12
rp_v11_2:
    ldx #00
    ldy #21
    jsr print_hex_calc
    lda pattern_cursor
    clc
    adc #$04
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #21
    jsr draw_seeqz_bitz
    ldx #36
    ldy #21
    jsr drawcommand

rp_v12:
    lda pattern_cursor
    clc
    adc #$05
    bcc rp_v12_2
    ldy #22
    jsr clear_pattern_line
    jmp rp_v13
rp_v12_2:
    ldx #00
    ldy #22
    jsr print_hex_calc
    lda pattern_cursor
    clc
    adc #$05
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #22
    jsr draw_seeqz_bitz
    ldx #36
    ldy #22
    jsr drawcommand

rp_v13:
    lda pattern_cursor
    clc
    adc #$06
    bcc rp_v13_2
    ldy #23
    jsr clear_pattern_line
    jmp rp_v14
rp_v13_2:
    ldx #00
    ldy #23
    jsr print_hex_calc
    lda pattern_cursor
    clc
    adc #$06
    jsr set_pattern_block_zptrs
    ldx #03
    ldy #23
    jsr draw_seeqz_bitz
    ldx #36
    ldy #23
    jsr drawcommand
rp_v14:
    rts

////////////////////////////////////////////////////
// Refresh Track Blocks
refresh_track_blocks:
    lda #$20 // Clear Track Blocks Area
    ldx #$00
rtb_loop1:
    sta SCREEN_RAM+3*40,x
    sta SCREEN_RAM+4*40,x
    sta SCREEN_RAM+5*40,x
    inx
    cpx #$07
    bne rtb_loop1
    // Done clearing track blocks area
// track -1
    ldx track_block_cursor
    dex
    cpx #$ff
    beq rtb_skip_top
    lda #58 // put :
    sta SCREEN_RAM+3+3*40
    txa
    ldx #01
    ldy #03
    jsr print_hex_calc // print track -1
    ldx track_block_cursor
    dex
    lda track_block,x
    ldx #04
    ldy #03
    jsr print_hex_calc // print pattern of track -1
rtb_skip_top:
// track 0
    lda #58 // put :
    sta SCREEN_RAM+3+4*40
    lda track_block_cursor
    ldx #01
    ldy #04
    jsr print_hex_calc // print track
    ldx track_block_cursor
    lda track_block,x
    sta zp_temp
    ldx #04
    ldy #04
    jsr print_hex_calc // print pattern in track area
    lda zp_temp
    ldx #16
    ldy #03
    jsr print_hex_calc // print pattern in pattern area
// track +1
    ldx track_block_cursor
    cpx track_block_length
    beq rtb_skip_bot
    lda #58 // put :
    sta SCREEN_RAM+3+5*40
    ldx track_block_cursor
    inx
    txa
    ldx #01
    ldy #05
    jsr print_hex_calc // print track +1
    ldx track_block_cursor
    inx
    lda track_block,x
    ldx #04
    ldy #05
    jsr print_hex_calc // print pattern of track +1
rtb_skip_bot:
    clc
    ldx #$00 // reverse the track cursor location
rtb_rev:
    lda SCREEN_RAM+4*40,x
    adc #$80
    sta SCREEN_RAM+4*40,x
    lda #$01 // and color
    sta COLOR_RAM+4*40,x // it white
    inx
    cpx #$07 // only do 7 characters
    bne rtb_rev
    rts


////////////////////////////////////////////////////
// Draw GPIO routine
draw_seeqz_bitz:
    stx zp_temp
    sty zp_temp2
    jsr calculate_screen_pos // zp_ptr_screen // screen location
    ldx zp_temp
    ldy zp_temp2
    jsr calculate_color_pos // zp_ptr_color // screen location
    //////////////////////////////////////////////////
    // BLOCK 1 (First 8 bits)
    ldx #$00; lda (zp_block1,x) // get first block of gpio data
    jsr draw_seeqz_bitz_block
    //////////////////////////////////////////////////
    // BLOCK 2 (Next 8 bits)
    ldx #$00; lda (zp_block2,x) // get next block of gpio data
    jsr draw_seeqz_bitz_block 
    //////////////////////////////////////////////////
    // BLOCK 3 (Next 8 bits)
    ldx #$00; lda (zp_block3,x) // get next block of gpio data
    jsr draw_seeqz_bitz_block
    //////////////////////////////////////////////////
    // BLOCK 4 (Next 8 bits)
    ldx #$00; lda (zp_block4,x) // get next block of gpio data
    jsr draw_seeqz_bitz_block
    rts

draw_seeqz_bitz_block:
    sta zp_temp
    ldy #$08
!dgpb:
    lda zp_temp
    clc
    asl
    sta zp_temp
    bcs !dgpb+
    lda #seeqz_bit_off
    ldx #$00
    sta (zp_ptr_screen,x)
    lda #seeqz_bit_off_color
    ldx #$00
    sta (zp_ptr_color,x)
    jmp !dgpb++
!dgpb:
    lda #seeqz_bit_on
    ldx #$00
    sta (zp_ptr_screen,x)
    lda #seeqz_bit_on_color
    ldx #$00
    sta (zp_ptr_color,x)
!dgpb:
    jsr increment_screen_pos
    jsr increment_color_pos
    dey
    bne !dgpb---
    rts

    
///////////////////////////////////////////////////
// Calculate pattern block
calculate_pattern_block:
    lda pattern_cursor
    sta playback_pos_pattern_c

    // sta zp_pointer_lo
    sta zp_block1_lo
    sta zp_block2_lo
    sta zp_block3_lo
    sta zp_block4_lo
    sta zp_block_cmd_lo

    lda #> pattern_block_start

    clc
    sta zp_block1_hi
    adc #$01
    sta zp_block2_hi
    adc #$01
    sta zp_block3_hi
    adc #$01
    sta zp_block4_hi
    adc #$01
    sta zp_block_cmd_hi 

    ldx track_block_cursor
    stx playback_pos_track
    lda track_block,x
    sta playback_pos_pattern
    tax
    cpx #$00
    beq cpb_2
cpb_1:
    lda zp_block1_hi
    adc #$04
    sta zp_block1_hi
    adc #$01
    sta zp_block2_hi
    adc #$01
    sta zp_block3_hi
    adc #$01
    sta zp_block4_hi    
    adc #$01
    sta zp_block_cmd_hi
    dex
    cpx #$00
    beq cpb_2
    jmp cpb_1
cpb_2:

    lda zp_block1_hi
    ldx #05
    ldy #10
    jsr print_hex_calc
    lda zp_block1_lo
    ldx #07
    ldy #10
    jsr print_hex_calc // draw memory locations

    lda zp_block2_hi
    ldx #13
    ldy #10
    jsr print_hex_calc
    lda zp_block2_lo
    ldx #15
    ldy #10
    jsr print_hex_calc // draw memory locations

    lda zp_block3_hi
    ldx #21
    ldy #10
    jsr print_hex_calc
    lda zp_block3_lo
    ldx #23
    ldy #10
    jsr print_hex_calc // draw memory location
    
    lda zp_block4_hi
    ldx #29
    ldy #10
    jsr print_hex_calc
    lda zp_block4_lo
    ldx #31
    ldy #10
    jsr print_hex_calc // draw memory locations

    lda zp_block_cmd_hi
    ldx #35
    ldy #10
    jsr print_hex_calc
    lda zp_block_cmd_lo
    ldx #37
    ldy #10
    jsr print_hex_calc // draw memory locations    

    rts



////////////////////////////////////////////////////
// Clear Pattern Line Macro line stored in y
clear_pattern_line:
    ldx #$00
    jsr calculate_screen_pos
    lda #$20
    ldx #$00
    ldy #$00
!cpl_loop:
    sta (zp_ptr_screen_lo,x)
    inc zp_ptr_screen_lo
    bne !cpl_loop+
    inc zp_ptr_screen_hi
!cpl_loop:
    iny
    cpy #$28
    bne !cpl_loop--
    rts

print_hex_calc:
    rts


set_pattern_block_zptrs:
    sta zp_block1_lo
    sta zp_block2_lo
    sta zp_block3_lo
    sta zp_block4_lo
    sta zp_block_cmd_lo
    rts

inc_pattern_block_zptrs:
    inc zp_block1_lo
    inc zp_block2_lo
    inc zp_block3_lo
    inc zp_block4_lo
    inc zp_block_cmd_lo
    rts
    
dec_pattern_block_zptrs:
    inc zp_block1_lo
    inc zp_block2_lo
    inc zp_block3_lo
    inc zp_block4_lo
    inc zp_block_cmd_lo
    rts    

////////////////////////////////////////////////////
// Draw Command Macro

drawcommand: // x=xpos, y=ypos
    jsr calculate_screen_pos    
    ldx #$00
    lda (zp_block_cmd,x)
    and #%11000000
    lsr
    lsr
    lsr
    lsr
    lsr
    lsr
    tax
    lda command,x
    ldx #$00
    sta (zp_ptr_screen,x)
    ldx #$00
    inc zp_ptr_screen_lo
    lda (zp_block_cmd,x)
    and #%00111111
    jsr print_hex_calc
    rts

command: // none
.text "-"
command_speed:
.text "s"
command_stop:
.byte $4e
command_future:
.text "f"
