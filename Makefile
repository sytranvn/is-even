all: main1 main2 main3

main%: main%.c
	gcc -O3 -fno-inline-small-functions $< -o $@
	llvm-objdump-14 --disassemble-symbols=main,mod,and $@ --x86-asm-syntax=intel | tee $@.s
