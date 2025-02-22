
main3:	file format elf64-x86-64

Disassembly of section .text:

00000000000010a0 <main>:
    10a0: f3 0f 1e fa                  	endbr64
    10a4: 48 83 ec 18                  	sub	rsp, 24
    10a8: 48 8d 3d 55 0f 00 00         	lea	rdi, [rip + 3925]       # 0x2004 <_IO_stdin_used+0x4>
    10af: 64 48 8b 04 25 28 00 00 00   	mov	rax, qword ptr fs:[40]
    10b8: 48 89 44 24 08               	mov	qword ptr [rsp + 8], rax
    10bd: 31 c0                        	xor	eax, eax
    10bf: 48 89 e6                     	mov	rsi, rsp
    10c2: e8 c9 ff ff ff               	call	0x1090 <.plt.sec+0x20>
    10c7: 48 8b 14 24                  	mov	rdx, qword ptr [rsp]
    10cb: 31 c0                        	xor	eax, eax
    10cd: bf 01 00 00 00               	mov	edi, 1
    10d2: 48 8d 35 30 0f 00 00         	lea	rsi, [rip + 3888]       # 0x2009 <_IO_stdin_used+0x9>
    10d9: 48 83 f2 01                  	xor	rdx, 1
    10dd: e8 9e ff ff ff               	call	0x1080 <.plt.sec+0x10>
    10e2: 48 8b 44 24 08               	mov	rax, qword ptr [rsp + 8]
    10e7: 64 48 2b 04 25 28 00 00 00   	sub	rax, qword ptr fs:[40]
    10f0: 75 07                        	jne	0x10f9 <main+0x59>
    10f2: 31 c0                        	xor	eax, eax
    10f4: 48 83 c4 18                  	add	rsp, 24
    10f8: c3                           	ret
    10f9: e8 72 ff ff ff               	call	0x1070 <.plt.sec>
    10fe: 66 90                        	nop
