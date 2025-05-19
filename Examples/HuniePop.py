from ReadWriteMemory import ReadWriteMemory

process = ReadWriteMemory().get_process_by_name("HuniePop.exe")
process.open()

baseaddress = 0x100000 + 0x961080 # prefered imagebase + base offset

money = process.get_pointer(baseaddress, offsets=[0x34, 0x8BC, 0x80, 0x6C, 0x14, 0x14, 0x68]) # offsets=offsets you get from the .bro file

while True:
    moneyVal = process.read(money)
    print(moneyVal)