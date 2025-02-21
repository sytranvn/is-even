
main:	file format elf64-x86-64

Disassembly of section .text:

00000000000010a0 <main>:
    10a0: f3 0f 1e fa                  	endbr64
    10a4: 48 83 ec 18                  	sub	rsp, 24
    10a8: 48 8d 3d 55 0f 00 00         	lea	rdi, [rip + 3925]       # 0x2004 <_IO_stdin_used+0x4>
    10af: 64 48 8b 04 25 28 00 00 00   	mov	rax, qword ptr fs:[40]
    10b8: 48 89 44 24 08               	mov	qword ptr [rsp + 8], rax
    10bd: 31 c0                        	xor	eax, eax
    10bf: 48 8d 74 24 04               	lea	rsi, [rsp + 4]
    10c4: e8 c7 ff ff ff               	call	0x1090 <.plt.sec+0x20>
    10c9: 8b 7c 24 04                  	mov	edi, dword ptr [rsp + 4]
    10cd: e8 1e 01 00 00               	call	0x11f0 <mod>
    10d2: 8b 7c 24 04                  	mov	edi, dword ptr [rsp + 4]
    10d6: e8 55 01 00 00               	call	0x1230 <and>
    10db: 48 8b 44 24 08               	mov	rax, qword ptr [rsp + 8]
    10e0: 64 48 2b 04 25 28 00 00 00   	sub	rax, qword ptr fs:[40]
    10e9: 75 07                        	jne	0x10f2 <main+0x52>
    10eb: 31 c0                        	xor	eax, eax
    10ed: 48 83 c4 18                  	add	rsp, 24
    10f1: c3                           	ret
    10f2: e8 79 ff ff ff               	call	0x1070 <.plt.sec>
    10f7: 66 0f 1f 84 00 00 00 00 00   	nop	word ptr [rax + rax]

00000000000011f0 <mod>:
    11f0: f3 0f 1e fa                  	endbr64
    11f4: 89 fa                        	mov	edx, edi
    11f6: 40 f6 c7 01                  	test	dil, 1
    11fa: 74 14                        	je	0x1210 <mod+0x20>
    11fc: 48 8b 35 15 2e 00 00         	mov	rsi, qword ptr [rip + 11797] # 0x4018 <EVN_MSG>
    1203: bf 01 00 00 00               	mov	edi, 1
    1208: 31 c0                        	xor	eax, eax
    120a: e9 71 fe ff ff               	jmp	0x1080 <.plt.sec+0x10>
    120f: 90                           	nop
    1210: 48 8b 35 f9 2d 00 00         	mov	rsi, qword ptr [rip + 11769] # 0x4010 <ODD_MSG>
    1217: bf 01 00 00 00               	mov	edi, 1
    121c: 31 c0                        	xor	eax, eax
    121e: e9 5d fe ff ff               	jmp	0x1080 <.plt.sec+0x10>
    1223: 66 66 2e 0f 1f 84 00 00 00 00 00     	nop	word ptr cs:[rax + rax]
    122e: 66 90                        	nop

0000000000001230 <and>:
    1230: f3 0f 1e fa                  	endbr64
    1234: 89 fa                        	mov	edx, edi
    1236: 40 f6 c7 01                  	test	dil, 1
    123a: 74 14                        	je	0x1250 <and+0x20>
    123c: 48 8b 35 d5 2d 00 00         	mov	rsi, qword ptr [rip + 11733] # 0x4018 <EVN_MSG>
    1243: bf 01 00 00 00               	mov	edi, 1
    1248: 31 c0                        	xor	eax, eax
    124a: e9 31 fe ff ff               	jmp	0x1080 <.plt.sec+0x10>
    124f: 90                           	nop
    1250: 48 8b 35 b9 2d 00 00         	mov	rsi, qword ptr [rip + 11705] # 0x4010 <ODD_MSG>
    1257: bf 01 00 00 00               	mov	edi, 1
    125c: 31 c0                        	xor	eax, eax
    125e: e9 1d fe ff ff               	jmp	0x1080 <.plt.sec+0x10>
