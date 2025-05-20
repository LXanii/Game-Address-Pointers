// Preferred ImageBases

"HuniePop.exe" = 0x130000

// Pointers

datatype name; "Program.exe"+Base Offset, Offsets=[offset6, offset5, offset4, offset3, offset2, offset1];

int32_t cashBalance; "HuniePop.exe"+0x961080, Offsets=[0x34, 0x8BC, 0x80, 0x6C, 0x14, 0x14, 0x68];
int32_t cashDisplay; "HuniePop.exe"+0x95D15C, Offsets=[0x18, 0x40, 0x50, 0x8C, 0x8, 0x70, 0x94];
int32_t hunieBalance; "HuniePop.exe"+??????, Offsets=;
int32_t hunieDisplay; "HuniePop.exe"+??????, Offsets=;

int32_t currentAffection; "HuniePop.exe"+0x2620FC, Offsets=[0x40, 0x10, 0x10, 0x18, 0x5C, 0x48, 0xA0];
int32_t currentAffectionDisplay; "HuniePop.exe"+??????, Offsets=;
int32_t targetAffection; "HuniePop.exe"+??????, Offsets=;
int32_t targetAffectionDisplay; "HuniePop.exe"+??????, Offsets=;
