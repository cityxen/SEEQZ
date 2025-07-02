

seeqz_driver_list_read_dir:
    lda #dirname_end-dirname // set length of dirname
    ldx #<dirname // lo byte of dirname
    ldy #>dirname // hi byte of dirname
    jsr KERNAL_SETNAM
    lda #$02 // filenumber
    ldx drive_number // default to device number 8
    ldy #$00 // secondary address
    jsr KERNAL_SETLFS
    jsr KERNAL_OPEN
    bcs error
    ldx #$02 // set filenumber
    jsr KERNAL_CHKIN
    ldy #$04 // skip 4 bytes on first dir line
    bne skip2
next:
    ldy #$02 // skip 2 bytes on all other lines
skip2:
    jsr getbyte
    dey
    bne skip2
    jsr getbyte // get low byte of basic line number
    tay
    jsr getbyte // get high byte of basic line number
    pha
    tya
    tax
    pla
    jsr $bdcd // print basic line number
    lda #$20 // print space
char:
    jsr KERNAL_CHROUT
    jsr getbyte
    bne char
    lda #$0d // carriage return character
    jsr KERNAL_CHROUT
    jsr KERNAL_STOP // run/stop pressed?
    bne next
error:
    // check for error here
exit:
    lda #$02 // filenumber 2
    jsr KERNAL_CLOSE
    jsr KERNAL_CLRCHN
    lda #$0d
    jsr KERNAL_CHROUT
    jsr show_drive_status
    rts

getbyte:
    jsr KERNAL_READST    
    bne end
    jmp KERNAL_CHRIN
end:
    pla
    pla
    jmp exit

dirname:
.text "$:DRV.*"
dirname_end:
.byte 0

//filename:
//.text "0123456789012345"
//.byte 0


show_drive_status:

    lda #$00
    sta SPRITE_ENABLE

        lda #$00      //; no filename
        ldx #$00
        ldy #$00
        jsr $ffbd     //; call setnam

        lda #$0f      //; file number 15
        ldx $ba       //; last used device number
        bne sdsskip
        ldx #$08      //; default to device 8
sdsskip:
        ldy #$0f      //; secondary address 15 (error channel)
        jsr $ffba     //; call setlfs

        jsr $ffc0     //; call open
        bcs sdserror     //; if carry set, the file could not be opened

        ldx #$0f      //; filenumber 15
        jsr $ffc6     //; call chkin (file 15 now used as input)

sdsloop:
        jsr $ffb7     //; call readst (read status byte)
        bne sdseof      //; either eof or read error
        jsr $ffcf     //; call chrin (get a byte from file)
        jsr $ffd2     //; call chrout (print byte to screen)
        jmp sdsloop     //; next byte

sdseof:
sdsclose:
        lda #$0f      //; filenumber 15
        jsr $ffc3     //; call close

        jsr $ffcc     //; call clrchn

        rts
sdserror:
        //; akkumulator contains basic error code

        //; most likely error:
        //; a = $05 (device not present)

        //... error handling for open errors ...
        jmp sdsclose    //; even if open failed, the file has to be closed

