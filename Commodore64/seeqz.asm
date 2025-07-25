/////////////////////////////////////////////////////////////////////////
// SEEQZ
// All Encompassing Retro Computer Sequencer Software
// 2025 DEADLINE / CITYXEN
// This program requires the CityXen Commodore 64 Programmign Library
// https://github.com/cityxen/Commodore64_Programming

#import "Constants.asm"
#import "Macros.asm"
#import "DrawPetMateScreen.asm"

*=$3000 "Character Font"
#import "seeqz-charset.asm"

*=$3800 "Sprite Cursor"
#import "seeqz-sprite-cursor.asm"

.disk [filename="seeqz.d64", name="THE DISK", id="2021!" ] {
        [name="----------------", type="rel"                            ],
        [name="SEEQZ", type="prg",  segments="StartUp,Default,Code,SEEQZ_DRIVER,SEEQZ_DRIVER_DEFAULT" ],
        [name="----------------", type="rel"                            ],
		[name="DRV.TEST1", type="prg"                            ],
		[name="DRV.TEST2", type="prg"                            ],
}

.segment StartUp[]
CityXenUpstart(start)

#import "sys.il.asm"
#import "timers.il.asm"
#import "print.il.asm"
#import "input.il.asm"
#import "print/u_calculate_color_pos.asm"
#import "print/u_calculate_screen_pos.asm"
#import "seeqz-vars.asm"
#import "seeqz-sprite.asm"
#import "seeqz-drawscreen.asm"
#import "seeqz-drawtracks.asm"
#import "seeqz-screen.asm"
#import "seeqz-util.asm"
#import "seeqz-config.asm"

#import "seeqz-drivers.asm"
.segment Code[]

*=$3b00 "Program"

// .const SRSQ=SCREEN_RAM+324

start:
	jsr seeqz_drawscreen
	jsr seeqz_sprite_init

    lda VIC_MEM_POINTERS // point to the new characters
    ora #$0c
    sta VIC_MEM_POINTERS

    InitTimers(5,10,15,20,60)
	
	jsr refresh_pattern

main_loop:
#import "seeqz-keys.asm"
    jmp main_loop
