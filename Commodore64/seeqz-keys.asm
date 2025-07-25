jsr get_key

// KeySub(key,subroutine)
// KeySubWait(key,subroutine)  // waits for key after
// KeySubJMP(key,subroutine,loc) // jmp loc after

// KEY_F1           // TRACK UP
// KEY_F2           // REMOVE TRACK
// KEY_F3           // TRACK DOWN
// KEY_F4           // ADD TRACK

// KEY_SEMICOLON    // PATTERN UP
// KEY_COLON        // PATTERN DOWN

// KEY_HOME         // TOP OF PATTERN
// KEY_CLEAR        // BOTTOM OF PATTERN
// KEY_CURSORUP     // MOVE UP IN PATTERN
// KEY_CURSORDOWN   // MOVE DOWN IN PATTERN
// KEY_F5           // NEXT PATTERN
// KEY_F7           // PREVIOUS PATTERN

// KEY_P            // Play
// KEY_J            // Joystick Control Mode

// KEY_CURSORLEFT   // Move cursor left
// KEY_CURSORRIGHT  // Move cursor right
// KEY_SPACE        // Toggle BIT
// KEY_MINUS        // All BITs (This ROW) OFF
// KEY_PLUS         // All BITs (This ROW) ON
// KEY_C            // Command Toggle
// KEY_EQUAL        // Command Value +
// KEY_ASTERISK     // Command Value -

// KEY_F8           // SEEQZ Config
KeySub(KEY_F8,seeqz_config)
