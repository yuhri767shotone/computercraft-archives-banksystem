-- THIS IS A ARCHIVED VERSION
-- To create an installer disk, use this command

-- credits to owner Marum

--original method:
-- pastebin run rBEZzcMv --

local diskdrive = peripheral.find("drive")
while (not diskdrive.isDiskPresent()) do
    term.clear()
    term.setCursorPos(1,1)
    print("Please insert a disk into the disk drive to create an installer disk...")
    os.pullEvent("disk")
end
fs.delete("disk/startup.lua")
shell.run("wget https://raw.githubusercontent.com/yuhri767shotone/computercraft-archives-banksystem/refs/heads/main/85bi01ih startup.lua") -- archived. NOT ORGINAL. Last archive was on 9/6/2025
diskdrive.setDiskLabel("Mermegold Installer Disk")
print("Installer disk created")
sleep(2)
os.reboot()
