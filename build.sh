${CROSS_COMPILE}gcc -c monitor-stub.s
${CROSS_COMPILE}objcopy -j .text -O binary monitor-stub.o monitor-stub.bin
dd if=bl31.bin of=fakescp_bl31.bin bs=16384 seek=1
./toc_tools/dragonsecboot -pack boot_package.cfg
