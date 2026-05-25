# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct C:\Users\31162\Desktop\Projects\VitisWorkspace\nanoVTX\platform.tcl
# 
# OR launch xsct and run below command.
# source C:\Users\31162\Desktop\Projects\VitisWorkspace\nanoVTX\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {nanoVTX}\
-hw {C:\FPGA\NanoVTX\top_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {C:/Users/31162/Desktop/Projects/VitisWorkspace}

platform write
platform generate -domains 
platform active {nanoVTX}
domain active {zynq_fsbl}
bsp reload
bsp setdriver -ip axi_register_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
domain active {standalone_domain}
bsp reload
bsp setdriver -ip axi_register_0 -driver none -ver {}
bsp write
bsp reload
catch {bsp regenerate}
bsp reload
bsp write
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp config stdin "ps7_coresight_comp_0"
bsp config stdout "ps7_coresight_comp_0"
bsp write
bsp reload
catch {bsp regenerate}
platform generate
platform active {nanoVTX}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
domain active {zynq_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp write
platform generate -domains 
platform active {nanoVTX}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
domain active {standalone_domain}
bsp reload
platform generate -domains 
platform generate -domains standalone_domain 
platform active {nanoVTX}
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
bsp reload
bsp reload
bsp reload
bsp reload
domain active {zynq_fsbl}
bsp reload
domain active {standalone_domain}
bsp write
bsp reload
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
bsp reload
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
domain active {zynq_fsbl}
domain active {standalone_domain}
bsp reload
bsp reload
bsp config stdin "ps7_uart_1"
bsp config stdout "ps7_uart_1"
bsp write
bsp reload
catch {bsp regenerate}
platform generate -domains standalone_domain 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
platform config -updatehw {C:/FPGA/NanoVTX/top_wrapper.xsa}
platform generate -domains 
