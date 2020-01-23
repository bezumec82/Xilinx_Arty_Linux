connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319A434C0A"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Arty 210319A434C0A"} -index 0
dow /media/constantine/Work/ARTY_A7/Vivado_prjct_final/Vivado_prjct.sdk/Matrix_Ashgana/Debug/Matrix_Ashgana.elf
bpadd -addr &main
