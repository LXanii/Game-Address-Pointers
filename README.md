# Address Pointers

Address Pointers for multiple games. Useful with Python, and c++ if you know how to use.

# How to Use

As an example, this one is for programs pointing to DLLs (EX: javaw.exe->OpenAL64.dll) | This example is using Cash from [Schedule I](https://github.com/LXanii/Game-Address-Pointers/blob/main/Pointers/Schedule%20I/0.3.5f3.bro)

```python

from pymem import Pymem
import pymem.process, os

def resolve_pointer_chain(pm, base, offsets):
    addr = pm.read_longlong(base)
    for offset in offsets[:-1]:
        addr = pm.read_longlong(addr + offset)
    return addr + offsets[-1]

pm = Pymem("Schedule I.exe") # program name here

DLLModule = pymem.process.module_from_name(pm.process_handle, "GameAssembly.dll") # dll from the program here
DLLBase = DLLModule.lpBaseOfDll

pointerBase = DLLBase + 0x03B00F88 # Prefered imagebase OR using DLLBase in this code + Base offset
pointerOffset = [0x90, 0x88, 0xD0, 0x478, 0x10, 0x48, 0x38] # Offsets here
cashAddr = resolve_pointer_chain(pm, pointerBase, pointerOffset)

try:
    os.system('cls' if os.name == 'nt' else 'clear')
    cashVal = pm.read_float(cashAddr)
    print(f"Cash: {cashVal}")
except Exception as e:
    print("Memory read failed:", e)
```

For programs not pointing to DLLs | This example prints out your money in HuniePop

```python

from ReadWriteMemory import ReadWriteMemory

process = ReadWriteMemory().get_process_by_name("HuniePop.exe")
process.open()

baseaddress = 0x100000 + 0x961080 # prefered imagebase + base offset

money = process.get_pointer(baseaddress, offsets=[0x34, 0x8BC, 0x80, 0x6C, 0x14, 0x14, 0x68]) # offsets=offsets you get from the .bro file

while True:
    moneyVal = process.read(money)
    print(moneyVal)
```
