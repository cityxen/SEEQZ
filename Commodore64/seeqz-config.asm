
seeqz_config:

    lda #$93
    jsr $ffd2
    Print(seeqz_config_text)

seeqz_config_loop:

#import "seeqz-config-keys.asm"

    jmp seeqz_config_loop

seeqz_config_exit:
    jsr seeqz_drawscreen
    rts

seeqz_config_text:
.text "SEEQZ CONFIG"
.byte 0