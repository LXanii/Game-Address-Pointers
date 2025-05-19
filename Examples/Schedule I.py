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