jsr get_key

// KeySub(key,subroutine)
// KeySubWait(key,subroutine)  // waits for key after
// KeySubJMP(key,subroutine,loc) // jmp loc after

// KEY_D        // Drive #
// KEY_F        // Filename
// KEY_DOLLAR   // Disk Catalog
// KEY_S        // Save File 
// KEY_L        // Load File
// KEY_E        // Erase File
// KEY_N        // NEW Memory

// KEY_H        // Parameter Channels
// KEY_O        // Parameter Low Status


// KEY_1        // VICREL
// KEY_2        // 8 Channel Relay TTL Board
// KEY_3        // Dorktronic GPIO (I2C)
// KEY_4        // Kito Electronics 1
// KEY_5        // Future
// KEY_6        // Future
// KEY_7        // Future
// KEY_8        // Future
// KEY_9        // Future
// KEY_0        // Future
// KEY_A        // Future
// KEY_B        // Future
// KEY_C        // Future
// KEY_G        // Future

// KEY_Q        // Quit Configuration Mode
KeySubJMP(KEY_Q,no_subroutine,seeqz_config_exit)