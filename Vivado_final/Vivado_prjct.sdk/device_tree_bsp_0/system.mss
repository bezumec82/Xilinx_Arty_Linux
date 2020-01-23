
 PARAMETER VERSION = 2.2.0


BEGIN OS
 PARAMETER OS_NAME = device_tree
 PARAMETER PROC_INSTANCE = microblaze_0
 PARAMETER console_device = axi_uartlite_0
 PARAMETER main_memory = mig_7_for_ddr
END


BEGIN PROCESSOR
 PARAMETER DRIVER_NAME = cpu
 PARAMETER HW_INSTANCE = microblaze_0
 PARAMETER clock-frequency = 115000000
 PARAMETER compatible = xlnx,microblaze-10.0
 PARAMETER d-cache-baseaddr = 0x0000000080000000
 PARAMETER d-cache-highaddr = 0x000000008fffffff
 PARAMETER d-cache-line-size = 32
 PARAMETER d-cache-size = 16384
 PARAMETER i-cache-baseaddr = 0x0000000080000000
 PARAMETER i-cache-highaddr = 0x000000008fffffff
 PARAMETER i-cache-line-size = 32
 PARAMETER i-cache-size = 16384
 PARAMETER interrupt-handle = microblaze_0_axi_intc
 PARAMETER model = microblaze,10.0
 PARAMETER timebase-frequency = 115000000
 PARAMETER xlnx,addr-size = 32
 PARAMETER xlnx,addr-tag-bits = 14
 PARAMETER xlnx,allow-dcache-wr = 1
 PARAMETER xlnx,allow-icache-wr = 1
 PARAMETER xlnx,area-optimized = 2
 PARAMETER xlnx,async-interrupt = 1
 PARAMETER xlnx,async-wakeup = 3
 PARAMETER xlnx,avoid-primitives = 0
 PARAMETER xlnx,base-vectors = 0x0000000000000000
 PARAMETER xlnx,branch-target-cache-size = 5
 PARAMETER xlnx,cache-byte-size = 16384
 PARAMETER xlnx,d-axi = 1
 PARAMETER xlnx,d-lmb = 1
 PARAMETER xlnx,d-lmb-mon = 0
 PARAMETER xlnx,daddr-size = 32
 PARAMETER xlnx,data-size = 32
 PARAMETER xlnx,dc-axi-mon = 0
 PARAMETER xlnx,dcache-addr-tag = 14
 PARAMETER xlnx,dcache-always-used = 1
 PARAMETER xlnx,dcache-byte-size = 16384
 PARAMETER xlnx,dcache-data-width = 0
 PARAMETER xlnx,dcache-force-tag-lutram = 1
 PARAMETER xlnx,dcache-line-len = 8
 PARAMETER xlnx,dcache-use-writeback = 0
 PARAMETER xlnx,dcache-victims = 0
 PARAMETER xlnx,debug-counter-width = 32
 PARAMETER xlnx,debug-enabled = 1
 PARAMETER xlnx,debug-event-counters = 5
 PARAMETER xlnx,debug-external-trace = 0
 PARAMETER xlnx,debug-interface = 0
 PARAMETER xlnx,debug-latency-counters = 1
 PARAMETER xlnx,debug-profile-size = 0
 PARAMETER xlnx,debug-trace-async-reset = 0
 PARAMETER xlnx,debug-trace-size = 8192
 PARAMETER xlnx,div-zero-exception = 0
 PARAMETER xlnx,dp-axi-mon = 0
 PARAMETER xlnx,dynamic-bus-sizing = 0
 PARAMETER xlnx,ecc-use-ce-exception = 0
 PARAMETER xlnx,edge-is-positive = 1
 PARAMETER xlnx,enable-discrete-ports = 0
 PARAMETER xlnx,endianness = 1
 PARAMETER xlnx,fault-tolerant = 0
 PARAMETER xlnx,fpu-exception = 0
 PARAMETER xlnx,freq = 115000000
 PARAMETER xlnx,fsl-exception = 0
 PARAMETER xlnx,fsl-links = 0
 PARAMETER xlnx,i-axi = 0
 PARAMETER xlnx,i-lmb = 1
 PARAMETER xlnx,i-lmb-mon = 0
 PARAMETER xlnx,iaddr-size = 32
 PARAMETER xlnx,ic-axi-mon = 0
 PARAMETER xlnx,icache-always-used = 1
 PARAMETER xlnx,icache-data-width = 0
 PARAMETER xlnx,icache-force-tag-lutram = 1
 PARAMETER xlnx,icache-line-len = 8
 PARAMETER xlnx,icache-streams = 0
 PARAMETER xlnx,icache-victims = 0
 PARAMETER xlnx,ill-opcode-exception = 1
 PARAMETER xlnx,imprecise-exceptions = 0
 PARAMETER xlnx,instr-size = 32
 PARAMETER xlnx,interconnect = 2
 PARAMETER xlnx,interrupt-is-edge = 1
 PARAMETER xlnx,interrupt-mon = 0
 PARAMETER xlnx,ip-axi-mon = 0
 PARAMETER xlnx,lockstep-master = 0
 PARAMETER xlnx,lockstep-select = 0
 PARAMETER xlnx,lockstep-slave = 0
 PARAMETER xlnx,mmu-dtlb-size = 4
 PARAMETER xlnx,mmu-itlb-size = 2
 PARAMETER xlnx,mmu-privileged-instr = 0
 PARAMETER xlnx,mmu-tlb-access = 3
 PARAMETER xlnx,mmu-zones = 2
 PARAMETER xlnx,num-sync-ff-clk = 2
 PARAMETER xlnx,num-sync-ff-clk-debug = 2
 PARAMETER xlnx,num-sync-ff-clk-irq = 1
 PARAMETER xlnx,num-sync-ff-dbg-clk = 1
 PARAMETER xlnx,num-sync-ff-dbg-trace-clk = 2
 PARAMETER xlnx,number-of-pc-brk = 1
 PARAMETER xlnx,number-of-rd-addr-brk = 0
 PARAMETER xlnx,number-of-wr-addr-brk = 0
 PARAMETER xlnx,opcode-0x0-illegal = 1
 PARAMETER xlnx,optimization = 0
 PARAMETER xlnx,pc-width = 32
 PARAMETER xlnx,piaddr-size = 32
 PARAMETER xlnx,pvr = 0
 PARAMETER xlnx,pvr-user1 = 0x00
 PARAMETER xlnx,pvr-user2 = 0x00000000
 PARAMETER xlnx,reset-msr = 0x00000000
 PARAMETER xlnx,reset-msr-bip = 0
 PARAMETER xlnx,reset-msr-dce = 0
 PARAMETER xlnx,reset-msr-ee = 0
 PARAMETER xlnx,reset-msr-eip = 0
 PARAMETER xlnx,reset-msr-ice = 0
 PARAMETER xlnx,reset-msr-ie = 0
 PARAMETER xlnx,sco = 0
 PARAMETER xlnx,trace = 0
 PARAMETER xlnx,unaligned-exceptions = 1
 PARAMETER xlnx,use-barrel = 1
 PARAMETER xlnx,use-branch-target-cache = 1
 PARAMETER xlnx,use-config-reset = 0
 PARAMETER xlnx,use-dcache = 1
 PARAMETER xlnx,use-div = 0
 PARAMETER xlnx,use-ext-brk = 0
 PARAMETER xlnx,use-ext-nm-brk = 0
 PARAMETER xlnx,use-extended-fsl-instr = 0
 PARAMETER xlnx,use-fpu = 0
 PARAMETER xlnx,use-hw-mul = 1
 PARAMETER xlnx,use-icache = 1
 PARAMETER xlnx,use-interrupt = 2
 PARAMETER xlnx,use-mmu = 3
 PARAMETER xlnx,use-msr-instr = 1
 PARAMETER xlnx,use-non-secure = 0
 PARAMETER xlnx,use-pcmp-instr = 1
 PARAMETER xlnx,use-reorder-instr = 1
 PARAMETER xlnx,use-stack-protection = 0
END


BEGIN DRIVER
 PARAMETER DRIVER_NAME = emaclite
 PARAMETER HW_INSTANCE = axi_ethernetlite_0
 PARAMETER interrupt-names = ip2intc_irpt
 PARAMETER interrupt-parent = microblaze_0_axi_intc
 PARAMETER interrupts = 1 0
 PARAMETER reg = 0x40e00000 0x10000
 PARAMETER xlnx,duplex = 1
 PARAMETER xlnx,include-global-buffers = 1
 PARAMETER xlnx,include-internal-loopback = 1
 PARAMETER xlnx,include-mdio = 1
 PARAMETER xlnx,rx-ping-pong = 1
 PARAMETER xlnx,s-axi-id-width = 1
 PARAMETER xlnx,select-xpm = 1
 PARAMETER xlnx,tx-ping-pong = 1
 PARAMETER xlnx,use-internal = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = gpio
 PARAMETER HW_INSTANCE = axi_gpio_output
 PARAMETER clock-frequency = 115000000
 PARAMETER clock-names = s_axi_aclk
 PARAMETER clocks = &clk_bus_0
 PARAMETER reg = 0x40010000 0x10000
 PARAMETER xlnx,all-inputs = 0
 PARAMETER xlnx,all-inputs-2 = 0
 PARAMETER xlnx,all-outputs = 0
 PARAMETER xlnx,all-outputs-2 = 0
 PARAMETER xlnx,dout-default = 0x00000000
 PARAMETER xlnx,dout-default-2 = 0x00000000
 PARAMETER xlnx,gpio-width = 4
 PARAMETER xlnx,gpio2-width = 12
 PARAMETER xlnx,interrupt-present = 0
 PARAMETER xlnx,is-dual = 1
 PARAMETER xlnx,tri-default = 0xFFFFFFFF
 PARAMETER xlnx,tri-default-2 = 0xFFFFFFFF
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axi_qspi
 PARAMETER HW_INSTANCE = axi_quad_spi_flash
 PARAMETER bits-per-word = 8
 PARAMETER fifo-size = 256
 PARAMETER interrupt-names = ip2intc_irpt
 PARAMETER interrupt-parent = microblaze_0_axi_intc
 PARAMETER interrupts = 4 0
 PARAMETER num-cs = 1
 PARAMETER reg = 0x44a10000 0x10000
 PARAMETER xlnx,num-ss-bits = 1
 PARAMETER xlnx,spi-mode = 2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = tmrctr
 PARAMETER HW_INSTANCE = axi_timer_0
 PARAMETER clock-frequency = 115000000
 PARAMETER clocks = &clk_bus_0
 PARAMETER interrupt-names = interrupt
 PARAMETER interrupt-parent = microblaze_0_axi_intc
 PARAMETER interrupts = 2 2
 PARAMETER reg = 0x41c00000 0x10000
 PARAMETER xlnx,count-width = 32
 PARAMETER xlnx,gen0-assert = 1
 PARAMETER xlnx,gen1-assert = 1
 PARAMETER xlnx,one-timer-only = 0
 PARAMETER xlnx,trig0-assert = 1
 PARAMETER xlnx,trig1-assert = 1
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = uartlite
 PARAMETER HW_INSTANCE = axi_uartlite_0
 PARAMETER clock-frequency = 115000000
 PARAMETER clocks = &clk_bus_0
 PARAMETER current-speed = 115200
 PARAMETER interrupt-names = interrupt
 PARAMETER interrupt-parent = microblaze_0_axi_intc
 PARAMETER interrupts = 3 0
 PARAMETER reg = 0x40600000 0x10000
 PARAMETER xlnx,baudrate = 115200
 PARAMETER xlnx,data-bits = 8
 PARAMETER xlnx,odd-parity = 0
 PARAMETER xlnx,s-axi-aclk-freq-hz-d = 115.0
 PARAMETER xlnx,use-parity = 0
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = intc
 PARAMETER HW_INSTANCE = microblaze_0_axi_intc
 PARAMETER reg = 0x41200000 0x10000
 PARAMETER xlnx,kind-of-intr = 26
 PARAMETER xlnx,num-intr-inputs = 5
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_dlmb_bram_if_cntlr
 PARAMETER compatible = xlnx,lmb-bram-if-cntlr-4.0
 PARAMETER reg = 0x00000000 0x8000
 PARAMETER xlnx,bram-awidth = 32
 PARAMETER xlnx,ce-counter-width = 0
 PARAMETER xlnx,ce-failing-registers = 0
 PARAMETER xlnx,ecc = 0
 PARAMETER xlnx,ecc-onoff-register = 0
 PARAMETER xlnx,ecc-onoff-reset-value = 1
 PARAMETER xlnx,ecc-status-registers = 0
 PARAMETER xlnx,fault-inject = 0
 PARAMETER xlnx,interconnect = 0
 PARAMETER xlnx,lmb-awidth = 32
 PARAMETER xlnx,lmb-dwidth = 32
 PARAMETER xlnx,mask = 0x00000000c0000000
 PARAMETER xlnx,mask1 = 0x0000000000800000
 PARAMETER xlnx,mask2 = 0x0000000000800000
 PARAMETER xlnx,mask3 = 0x0000000000800000
 PARAMETER xlnx,num-lmb = 1
 PARAMETER xlnx,s-axi-ctrl-addr-width = 32
 PARAMETER xlnx,s-axi-ctrl-data-width = 32
 PARAMETER xlnx,s-axi-ctrl-protocol = AXI4LITE
 PARAMETER xlnx,ue-failing-registers = 0
 PARAMETER xlnx,write-access = 2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = generic
 PARAMETER HW_INSTANCE = microblaze_0_local_memory_ilmb_bram_if_cntlr
 PARAMETER compatible = xlnx,lmb-bram-if-cntlr-4.0
 PARAMETER reg = 0x00000000 0x10000
 PARAMETER xlnx,bram-awidth = 32
 PARAMETER xlnx,ce-counter-width = 0
 PARAMETER xlnx,ce-failing-registers = 0
 PARAMETER xlnx,ecc = 0
 PARAMETER xlnx,ecc-onoff-register = 0
 PARAMETER xlnx,ecc-onoff-reset-value = 1
 PARAMETER xlnx,ecc-status-registers = 0
 PARAMETER xlnx,fault-inject = 0
 PARAMETER xlnx,interconnect = 0
 PARAMETER xlnx,lmb-awidth = 32
 PARAMETER xlnx,lmb-dwidth = 32
 PARAMETER xlnx,mask = 0x0000000080000000
 PARAMETER xlnx,mask1 = 0x0000000000800000
 PARAMETER xlnx,mask2 = 0x0000000000800000
 PARAMETER xlnx,mask3 = 0x0000000000800000
 PARAMETER xlnx,num-lmb = 1
 PARAMETER xlnx,s-axi-ctrl-addr-width = 32
 PARAMETER xlnx,s-axi-ctrl-data-width = 32
 PARAMETER xlnx,s-axi-ctrl-protocol = AXI4LITE
 PARAMETER xlnx,ue-failing-registers = 0
 PARAMETER xlnx,write-access = 2
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = mig_7series
 PARAMETER HW_INSTANCE = mig_7_for_ddr
 PARAMETER compatible = xlnx,mig-7series-4.0
 PARAMETER reg = 0x80000000 0x10000000
END

BEGIN DRIVER
 PARAMETER DRIVER_NAME = axi_xadc
 PARAMETER HW_INSTANCE = xadc_wiz_0
 PARAMETER clock-frequency = 115000000
 PARAMETER clocks = &clk_bus_0
 PARAMETER compatible = xlnx,axi-xadc-1.00.a
 PARAMETER interrupt-names = ip2intc_irpt
 PARAMETER interrupt-parent = microblaze_0_axi_intc
 PARAMETER interrupts = 0 2
 PARAMETER reg = 0x44a20000 0x10000
 PARAMETER xlnx,alarm-limit-r0 = 46573
 PARAMETER xlnx,alarm-limit-r1 = 21408
 PARAMETER xlnx,alarm-limit-r10 = 21845
 PARAMETER xlnx,alarm-limit-r11 = 20753
 PARAMETER xlnx,alarm-limit-r12 = 39321
 PARAMETER xlnx,alarm-limit-r13 = 37355
 PARAMETER xlnx,alarm-limit-r14 = 27306
 PARAMETER xlnx,alarm-limit-r15 = 25122
 PARAMETER xlnx,alarm-limit-r2 = 41287
 PARAMETER xlnx,alarm-limit-r3 = 51763
 PARAMETER xlnx,alarm-limit-r4 = 43322
 PARAMETER xlnx,alarm-limit-r5 = 20753
 PARAMETER xlnx,alarm-limit-r6 = 38229
 PARAMETER xlnx,alarm-limit-r7 = 44622
 PARAMETER xlnx,alarm-limit-r8 = 22937
 PARAMETER xlnx,alarm-limit-r9 = 20753
 PARAMETER xlnx,configuration-r0 = 0
 PARAMETER xlnx,configuration-r1 = 8609
 PARAMETER xlnx,configuration-r2 = 1024
 PARAMETER xlnx,dclk-frequency = 100
 PARAMETER xlnx,external-mux = none
 PARAMETER xlnx,external-mux-channel = VP_VN
 PARAMETER xlnx,external-muxaddr-enable = 0
 PARAMETER xlnx,fifo-depth = 7
 PARAMETER xlnx,has-axi = 1
 PARAMETER xlnx,has-axi4stream = 0
 PARAMETER xlnx,has-busy = 1
 PARAMETER xlnx,has-channel = 1
 PARAMETER xlnx,has-convst = 0
 PARAMETER xlnx,has-convstclk = 0
 PARAMETER xlnx,has-dclk = 1
 PARAMETER xlnx,has-drp = 0
 PARAMETER xlnx,has-eoc = 1
 PARAMETER xlnx,has-eos = 1
 PARAMETER xlnx,has-external-mux = 0
 PARAMETER xlnx,has-jtagbusy = 0
 PARAMETER xlnx,has-jtaglocked = 0
 PARAMETER xlnx,has-jtagmodified = 0
 PARAMETER xlnx,has-ot-alarm = 0
 PARAMETER xlnx,has-reset = 0
 PARAMETER xlnx,has-temp-bus = 1
 PARAMETER xlnx,has-user-temp-alarm = 1
 PARAMETER xlnx,has-vbram-alarm = 0
 PARAMETER xlnx,has-vccaux-alarm = 1
 PARAMETER xlnx,has-vccddro-alarm = 0
 PARAMETER xlnx,has-vccint-alarm = 1
 PARAMETER xlnx,has-vccpaux-alarm = 0
 PARAMETER xlnx,has-vccpint-alarm = 0
 PARAMETER xlnx,has-vn = 1
 PARAMETER xlnx,has-vp = 1
 PARAMETER xlnx,include-intr = 1
 PARAMETER xlnx,sampling-rate = 961538.4615384615
 PARAMETER xlnx,sequence-r0 = 2304
 PARAMETER xlnx,sequence-r1 = 63223
 PARAMETER xlnx,sequence-r2 = 0
 PARAMETER xlnx,sequence-r3 = 0
 PARAMETER xlnx,sequence-r4 = 0
 PARAMETER xlnx,sequence-r5 = 0
 PARAMETER xlnx,sequence-r6 = 0
 PARAMETER xlnx,sequence-r7 = 0
 PARAMETER xlnx,sim-file-name = design
 PARAMETER xlnx,sim-file-rel-path = ./
 PARAMETER xlnx,sim-file-sel = Default
 PARAMETER xlnx,vaux0 = 1
 PARAMETER xlnx,vaux1 = 1
 PARAMETER xlnx,vaux10 = 1
 PARAMETER xlnx,vaux11 = 0
 PARAMETER xlnx,vaux12 = 1
 PARAMETER xlnx,vaux13 = 1
 PARAMETER xlnx,vaux14 = 1
 PARAMETER xlnx,vaux15 = 1
 PARAMETER xlnx,vaux2 = 1
 PARAMETER xlnx,vaux3 = 0
 PARAMETER xlnx,vaux4 = 1
 PARAMETER xlnx,vaux5 = 1
 PARAMETER xlnx,vaux6 = 1
 PARAMETER xlnx,vaux7 = 1
 PARAMETER xlnx,vaux8 = 0
 PARAMETER xlnx,vaux9 = 1
END


