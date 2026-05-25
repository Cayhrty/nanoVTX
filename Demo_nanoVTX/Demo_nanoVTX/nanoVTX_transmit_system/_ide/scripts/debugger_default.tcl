# Usage with Vitis IDE:
# In Vitis IDE create a Single Application Debug launch configuration,
# change the debug type to 'Attach to running target' and provide this 
# tcl script in 'Execute Script' option.
# Path of this script: C:\Users\31162\Desktop\Projects\VitisWorkspace\nanoVTX_transmit_system\_ide\scripts\debugger_default.tcl
# 
# 
# Usage with xsct:
# To debug using xsct, launch xsct and run below command
# source C:\Users\31162\Desktop\Projects\VitisWorkspace\nanoVTX_transmit_system\_ide\scripts\debugger_default.tcl
# 
connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Platform Cable USB 00000000000000" && level==0 && jtag_device_ctx=="jsn-DLC9LP-00000000000000-4ba00477-0"}
fpga -file C:/Users/31162/Desktop/Projects/VitisWorkspace/nanoVTX_transmit/_ide/bitstream/top_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw C:/Users/31162/Desktop/Projects/VitisWorkspace/nanoVTX/export/nanoVTX/hw/top_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}] -regs
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source C:/Users/31162/Desktop/Projects/VitisWorkspace/nanoVTX_transmit/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow C:/Users/31162/Desktop/Projects/VitisWorkspace/nanoVTX_transmit/Debug/nanoVTX_transmit.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
