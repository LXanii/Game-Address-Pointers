// Preferred ImageBases

"Schedule I.exe" = 0x7FF70A860000 
"GameAssembly.dll" = 0x7FFABAF00000 

// Pointers

datatype name; "Program.exe"+Base Offset, Offsets=[offset6, offset5, offset4, offset3, offset2, offset1];

float cashBalance; "GameAssembly.dll"+0x03B00F88, Offsets=[0x90, 0x88, 0xD0, 0x478, 0x10, 0x48, 0x38];
float cardBalance; "GameAssembly.dll"+0x03AF6180, Offsets=[0x90, 0x50, 0x240, 0x20, 0xB8, 0x10, 0x128];