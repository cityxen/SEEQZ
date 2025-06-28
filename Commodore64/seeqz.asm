/////////////////////////////////////////////////////////////////////////
// SEEQZ
// All Encompassing Retro Computer Sequencer Software
// 2025 DEADLINE / CITYXEN
// This program requires the CityXen Commodore 64 Programmign Library
// https://github.com/cityxen/Commodore64_Programming

#import "Constants.asm"
#import "Macros.asm"
#import "DrawPetMateScreen.asm"

*=$3000 "customfont"
#import "seeqz-charset.asm"

*=$2000 "Cursor Sprite"
#import "seeqz-sprite-cursor.asm"

.disk [filename="seeqz.d64", name="THE DISK", id="2021!" ] {
        [name="----------------", type="rel"                            ],
        [name="seeqz", type="prg",  segments="StartUp,Default,Code,SEEQZ_DRIVER,SEEQZ_DRIVER_DEFAULT" ],
        [name="----------------", type="rel"                            ],
}

.segment StartUp[]
CityXenUpstart(start)

#import "sys.il.asm"
#import "timers.il.asm"
#import "print/u_calculate_color_pos.asm"
#import "print/u_calculate_screen_pos.asm"
#import "seeqz-vars.asm"
#import "seeqz-drawtracks.asm"
#import "seeqz-screen.asm"

#import "seeqz-drivers.asm"
.segment Code[]

*=$c000 "Program"

.const SRSQ=SCREEN_RAM+324

start:
    lda VIC_MEM_POINTERS // point to the new characters
    ora #$0c
    sta VIC_MEM_POINTERS
    InitTimers(5,10,15,20,60)
    lda #$93
    jsr KERNAL_CHROUT
    lda #$00
    sta BORDER_COLOR
    sta BACKGROUND_COLOR
	DrawPetMateScreen(screen)
	jsr refresh_pattern

loop1:

	lda irq_timer1_tr
	beq !ml+
	jsr reset_timer1
	inc SRSQ
!ml:

	lda irq_timer2_tr
	beq !ml+
	jsr reset_timer2
	inc SRSQ+1
!ml:

	lda irq_timer3_tr
	beq !ml+
	jsr reset_timer3
	inc SRSQ+2
!ml:

	lda irq_timer4_tr
	beq !ml+
	jsr reset_timer4
	inc SRSQ+3
!ml:

	lda irq_timer5_tr
	beq !ml+
	jsr reset_timer5
	inc SRSQ+4
!ml:



    jmp loop1

