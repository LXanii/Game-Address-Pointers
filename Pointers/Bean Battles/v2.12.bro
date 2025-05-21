// Preferred ImageBases

"BeanBattles.exe" = 0x7FF6AC730000
"UnityPlayer.dll" = 0x7FFCABEE0000

// Pointers

datatype name; "Program.exe"+Base Offset, Offsets=[offset1, offset2, offset3, offset4, offset5, offset6];

uint8_t gun1Ammo; "UnityPlayer.dll"+0x01513F18, Offsets=[0x40, 0xA8, 0x28, 0x10, 0x28, 0x60, 0xD0]
uint8_t playerHealth; "UnityPlayer.dll"+0x015143C0, Offsets=[0x0, 0x68, 0x60, 0x98, 0x28, 0x58, 0xE0]