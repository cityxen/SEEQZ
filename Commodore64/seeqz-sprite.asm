

seeqz_sprite_init:

    lda #224
    sta SPRITE_0_POINTER

    lda #$01
    sta SPRITE_0_COLOR

    lda #$ff
    sta SPRITE_ENABLE

    lda #$a0
    sta SPRITE_0_X
    sta SPRITE_0_Y

    rts
