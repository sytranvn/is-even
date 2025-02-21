
main2:	file format elf64-x86-64

Disassembly of section .text:

00000000000010a0 <main>:
    10a0: f3 0f 1e fa                  	endbr64
    10a4: 48 83 ec 18                  	sub	rsp, 24
    10a8: 48 8d 3d 58 0f 00 00         	lea	rdi, [rip + 3928]       # 0x2007 <_IO_stdin_used+0x7>
    10af: 64 48 8b 04 25 28 00 00 00   	mov	rax, qword ptr fs:[40]
    10b8: 48 89 44 24 08               	mov	qword ptr [rsp + 8], rax
    10bd: 31 c0                        	xor	eax, eax
    10bf: 48 8d 74 24 04               	lea	rsi, [rsp + 4]
    10c4: e8 c7 ff ff ff               	call	0x1090 <.plt.sec+0x20>
    10c9: 8b 54 24 04                  	mov	edx, dword ptr [rsp + 4]
    10cd: bf 01 00 00 00               	mov	edi, 1
    10d2: 48 8d 35 2b 0f 00 00         	lea	rsi, [rip + 3883]       # 0x2004 <_IO_stdin_used+0x4>
    10d9: 89 d0                        	mov	eax, edx
    10db: 89 d1                        	mov	ecx, edx
    10dd: c1 e8 1f                     	shr	eax, 31
    10e0: 83 e1 01                     	and	ecx, 1
    10e3: 01 c2                        	add	edx, eax
    10e5: 83 e2 01                     	and	edx, 1
    10e8: 29 c2                        	sub	edx, eax
    10ea: 31 c0                        	xor	eax, eax
    10ec: e8 8f ff ff ff               	call	0x1080 <.plt.sec+0x10>
    10f1: 48 8b 44 24 08               	mov	rax, qword ptr [rsp + 8]
    10f6: 64 48 2b 04 25 28 00 00 00   	sub	rax, qword ptr fs:[40]
    10ff: 75 07                        	jne	0x1108 <main+0x68>
    1101: 31 c0                        	xor	eax, eax
    1103: 48 83 c4 18                  	add	rsp, 24
    1107: c3                           	ret
    1108: e8 63 ff ff ff               	call	0x1070 <.plt.sec>
    110d: 0f 1f 00                     	nop	dword ptr [rax]

0000000000001200 <mod>:
    1200: f3 0f 1e fa                  	endbr64
    1204: 89 fa                        	mov	edx, edi
    1206: c1 ea 1f                     	shr	edx, 31
    1209: 8d 04 17                     	lea	eax, [rdi + rdx]
    120c: 83 e0 01                     	and	eax, 1
    120f: 29 d0                        	sub	eax, edx
    1211: c3                           	ret
    1212: 66 66 2e 0f 1f 84 00 00 00 00 00     	nop	word ptr cs:[rax + rax]
    121d: 0f 1f 00                     	nop	dword ptr [rax]

0000000000001220 <and>:
    1220: f3 0f 1e fa                  	endbr64
    1224: 89 f8                        	mov	eax, edi
    1226: 83 e0 01                     	and	eax, 1
    1229: c3                           	ret
