
main:     file format elf64-x86-64


Disassembly of section .interp:

0000000000400238 <.interp>:
  400238:	2f                   	(bad)  
  400239:	6c                   	insb   (%dx),%es:(%rdi)
  40023a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
  400241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
  400246:	78 2d                	js     400275 <_init-0x493>
  400248:	78 38                	js     400282 <_init-0x486>
  40024a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
  400250:	6f                   	outsl  %ds:(%rsi),(%dx)
  400251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000400254 <.note.ABI-tag>:
  400254:	04 00                	add    $0x0,%al
  400256:	00 00                	add    %al,(%rax)
  400258:	10 00                	adc    %al,(%rax)
  40025a:	00 00                	add    %al,(%rax)
  40025c:	01 00                	add    %eax,(%rax)
  40025e:	00 00                	add    %al,(%rax)
  400260:	47                   	rex.RXB
  400261:	4e 55                	rex.WRX push %rbp
  400263:	00 00                	add    %al,(%rax)
  400265:	00 00                	add    %al,(%rax)
  400267:	00 02                	add    %al,(%rdx)
  400269:	00 00                	add    %al,(%rax)
  40026b:	00 06                	add    %al,(%rsi)
  40026d:	00 00                	add    %al,(%rax)
  40026f:	00 20                	add    %ah,(%rax)
  400271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000400274 <.note.gnu.build-id>:
  400274:	04 00                	add    $0x0,%al
  400276:	00 00                	add    %al,(%rax)
  400278:	14 00                	adc    $0x0,%al
  40027a:	00 00                	add    %al,(%rax)
  40027c:	03 00                	add    (%rax),%eax
  40027e:	00 00                	add    %al,(%rax)
  400280:	47                   	rex.RXB
  400281:	4e 55                	rex.WRX push %rbp
  400283:	00 75 34             	add    %dh,0x34(%rbp)
  400286:	a3 f4 92 3b c5 86 1d 	movabs %eax,0xc6f01d86c53b92f4
  40028d:	f0 c6 
  40028f:	11 44 e2 87          	adc    %eax,-0x79(%rdx,%riz,8)
  400293:	26 5a                	es pop %rdx
  400295:	27                   	(bad)  
  400296:	09                   	.byte 0x9
  400297:	48                   	rex.W

Disassembly of section .gnu.hash:

0000000000400298 <.gnu.hash>:
  400298:	03 00                	add    (%rax),%eax
  40029a:	00 00                	add    %al,(%rax)
  40029c:	0b 00                	or     (%rax),%eax
  40029e:	00 00                	add    %al,(%rax)
  4002a0:	01 00                	add    %eax,(%rax)
  4002a2:	00 00                	add    %al,(%rax)
  4002a4:	06                   	(bad)  
  4002a5:	00 00                	add    %al,(%rax)
  4002a7:	00 00                	add    %al,(%rax)
  4002a9:	00 10                	add    %dl,(%rax)
  4002ab:	00 01                	add    %al,(%rcx)
  4002ad:	01 10                	add    %edx,(%rax)
  4002af:	00 00                	add    %al,(%rax)
  4002b1:	00 00                	add    %al,(%rax)
  4002b3:	00 0b                	add    %cl,(%rbx)
  4002b5:	00 00                	add    %al,(%rax)
  4002b7:	00 0c 00             	add    %cl,(%rax,%rax,1)
  4002ba:	00 00                	add    %al,(%rax)
  4002bc:	21 fd                	and    %edi,%ebp
  4002be:	f4                   	hlt    
  4002bf:	09 28                	or     %ebp,(%rax)
  4002c1:	45 d5                	rex.RB (bad) 
  4002c3:	4c                   	rex.WR
  4002c4:	15                   	.byte 0x15
  4002c5:	98                   	cwtl   
  4002c6:	0c 43                	or     $0x43,%al

Disassembly of section .dynsym:

00000000004002c8 <.dynsym>:
	...
  4002e0:	8b 00                	mov    (%rax),%eax
  4002e2:	00 00                	add    %al,(%rax)
  4002e4:	12 00                	adc    (%rax),%al
	...
  4002f6:	00 00                	add    %al,(%rax)
  4002f8:	10 00                	adc    %al,(%rax)
  4002fa:	00 00                	add    %al,(%rax)
  4002fc:	20 00                	and    %al,(%rax)
	...
  40030e:	00 00                	add    %al,(%rax)
  400310:	1f                   	(bad)  
  400311:	00 00                	add    %al,(%rax)
  400313:	00 20                	add    %ah,(%rax)
	...
  400325:	00 00                	add    %al,(%rax)
  400327:	00 19                	add    %bl,(%rcx)
  400329:	01 00                	add    %eax,(%rax)
  40032b:	00 12                	add    %dl,(%rdx)
	...
  40033d:	00 00                	add    %al,(%rax)
  40033f:	00 60 01             	add    %ah,0x1(%rax)
  400342:	00 00                	add    %al,(%rax)
  400344:	12 00                	adc    (%rax),%al
	...
  400356:	00 00                	add    %al,(%rax)
  400358:	53                   	push   %rbx
  400359:	01 00                	add    %eax,(%rax)
  40035b:	00 12                	add    %dl,(%rdx)
	...
  40036d:	00 00                	add    %al,(%rax)
  40036f:	00 33                	add    %dh,(%rbx)
  400371:	00 00                	add    %al,(%rax)
  400373:	00 20                	add    %ah,(%rax)
	...
  400385:	00 00                	add    %al,(%rax)
  400387:	00 95 00 00 00 12    	add    %dl,0x12000000(%rbp)
	...
  40039d:	00 00                	add    %al,(%rax)
  40039f:	00 4f 00             	add    %cl,0x0(%rdi)
  4003a2:	00 00                	add    %al,(%rax)
  4003a4:	20 00                	and    %al,(%rax)
	...
  4003b6:	00 00                	add    %al,(%rax)
  4003b8:	08 01                	or     %al,(%rcx)
  4003ba:	00 00                	add    %al,(%rax)
  4003bc:	12 00                	adc    (%rax),%al
	...
  4003ce:	00 00                	add    %al,(%rax)
  4003d0:	cd 00                	int    $0x0
  4003d2:	00 00                	add    %al,(%rax)
  4003d4:	12 00                	adc    (%rax),%al
  4003d6:	00 00                	add    %al,(%rax)
  4003d8:	c0 07 40             	rolb   $0x40,(%rdi)
	...
  4003e7:	00 69 00             	add    %ch,0x0(%rcx)
  4003ea:	00 00                	add    %al,(%rax)
  4003ec:	12 00                	adc    (%rax),%al
  4003ee:	00 00                	add    %al,(%rax)
  4003f0:	90                   	nop
  4003f1:	07                   	(bad)  
  4003f2:	40 00 00             	add    %al,(%rax)
	...
  4003fd:	00 00                	add    %al,(%rax)
  4003ff:	00 81 00 00 00 11    	add    %al,0x11000000(%rcx)
  400405:	00 19                	add    %bl,(%rcx)
  400407:	00 80 10 60 00 00    	add    %al,0x6010(%rax)
  40040d:	00 00                	add    %al,(%rax)
  40040f:	00 10                	add    %dl,(%rax)
  400411:	01 00                	add    %eax,(%rax)
  400413:	00 00                	add    %al,(%rax)
  400415:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000400418 <.dynstr>:
  400418:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  40041c:	73 74                	jae    400492 <_init-0x276>
  40041e:	64 63 2b             	movslq %fs:(%rbx),%ebp
  400421:	2b 2e                	sub    (%rsi),%ebp
  400423:	73 6f                	jae    400494 <_init-0x274>
  400425:	2e 36 00 5f 5f       	cs add %bl,%ss:0x5f(%rdi)
  40042a:	67 6d                	insl   (%dx),%es:(%edi)
  40042c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40042d:	6e                   	outsb  %ds:(%rsi),(%dx)
  40042e:	5f                   	pop    %rdi
  40042f:	73 74                	jae    4004a5 <_init-0x263>
  400431:	61                   	(bad)  
  400432:	72 74                	jb     4004a8 <_init-0x260>
  400434:	5f                   	pop    %rdi
  400435:	5f                   	pop    %rdi
  400436:	00 5f 4a             	add    %bl,0x4a(%rdi)
  400439:	76 5f                	jbe    40049a <_init-0x26e>
  40043b:	52                   	push   %rdx
  40043c:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
  400443:	43 6c 
  400445:	61                   	(bad)  
  400446:	73 73                	jae    4004bb <_init-0x24d>
  400448:	65 73 00             	gs jae 40044b <_init-0x2bd>
  40044b:	5f                   	pop    %rdi
  40044c:	49 54                	rex.WB push %r12
  40044e:	4d 5f                	rex.WRB pop %r15
  400450:	64 65 72 65          	fs gs jb 4004b9 <_init-0x24f>
  400454:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  40045b:	4d 
  40045c:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  40045e:	6f                   	outsl  %ds:(%rsi),(%dx)
  40045f:	6e                   	outsb  %ds:(%rsi),(%dx)
  400460:	65 54                	gs push %rsp
  400462:	61                   	(bad)  
  400463:	62                   	(bad)  
  400464:	6c                   	insb   (%dx),%es:(%rdi)
  400465:	65 00 5f 49          	add    %bl,%gs:0x49(%rdi)
  400469:	54                   	push   %rsp
  40046a:	4d 5f                	rex.WRB pop %r15
  40046c:	72 65                	jb     4004d3 <_init-0x235>
  40046e:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
  400475:	4d 
  400476:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
  400478:	6f                   	outsl  %ds:(%rsi),(%dx)
  400479:	6e                   	outsb  %ds:(%rsi),(%dx)
  40047a:	65 54                	gs push %rsp
  40047c:	61                   	(bad)  
  40047d:	62                   	(bad)  
  40047e:	6c                   	insb   (%dx),%es:(%rdi)
  40047f:	65 00 5f 5a          	add    %bl,%gs:0x5a(%rdi)
  400483:	4e 53                	rex.WRX push %rbx
  400485:	74 38                	je     4004bf <_init-0x249>
  400487:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  40048e:	65 34 49             	gs xor $0x49,%al
  400491:	6e                   	outsb  %ds:(%rsi),(%dx)
  400492:	69 74 44 31 45 76 00 	imul   $0x5f007645,0x31(%rsp,%rax,2),%esi
  400499:	5f 
  40049a:	5a                   	pop    %rdx
  40049b:	53                   	push   %rbx
  40049c:	74 34                	je     4004d2 <_init-0x236>
  40049e:	63 6f 75             	movslq 0x75(%rdi),%ebp
  4004a1:	74 00                	je     4004a3 <_init-0x265>
  4004a3:	5f                   	pop    %rdi
  4004a4:	5a                   	pop    %rdx
  4004a5:	4e 53                	rex.WRX push %rbx
  4004a7:	6f                   	outsl  %ds:(%rsi),(%dx)
  4004a8:	6c                   	insb   (%dx),%es:(%rdi)
  4004a9:	73 45                	jae    4004f0 <_init-0x218>
  4004ab:	69 00 5f 5a 53 74    	imul   $0x74535a5f,(%rax),%eax
  4004b1:	6c                   	insb   (%dx),%es:(%rdi)
  4004b2:	73 49                	jae    4004fd <_init-0x20b>
  4004b4:	53                   	push   %rbx
  4004b5:	74 31                	je     4004e8 <_init-0x220>
  4004b7:	31 63 68             	xor    %esp,0x68(%rbx)
  4004ba:	61                   	(bad)  
  4004bb:	72 5f                	jb     40051c <_init-0x1ec>
  4004bd:	74 72                	je     400531 <_init-0x1d7>
  4004bf:	61                   	(bad)  
  4004c0:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  4004c7:	52 
  4004c8:	53                   	push   %rbx
  4004c9:	74 31                	je     4004fc <_init-0x20c>
  4004cb:	33 62 61             	xor    0x61(%rdx),%esp
  4004ce:	73 69                	jae    400539 <_init-0x1cf>
  4004d0:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  4004d3:	73 74                	jae    400549 <_init-0x1bf>
  4004d5:	72 65                	jb     40053c <_init-0x1cc>
  4004d7:	61                   	(bad)  
  4004d8:	6d                   	insl   (%dx),%es:(%rdi)
  4004d9:	49 63 54 5f 45       	movslq 0x45(%r15,%rbx,2),%rdx
  4004de:	53                   	push   %rbx
  4004df:	35 5f 50 4b 63       	xor    $0x634b505f,%eax
  4004e4:	00 5f 5a             	add    %bl,0x5a(%rdi)
  4004e7:	53                   	push   %rbx
  4004e8:	74 34                	je     40051e <_init-0x1ea>
  4004ea:	65 6e                	outsb  %gs:(%rsi),(%dx)
  4004ec:	64 6c                	fs insb (%dx),%es:(%rdi)
  4004ee:	49 63 53 74          	movslq 0x74(%r11),%rdx
  4004f2:	31 31                	xor    %esi,(%rcx)
  4004f4:	63 68 61             	movslq 0x61(%rax),%ebp
  4004f7:	72 5f                	jb     400558 <_init-0x1b0>
  4004f9:	74 72                	je     40056d <_init-0x19b>
  4004fb:	61                   	(bad)  
  4004fc:	69 74 73 49 63 45 45 	imul   $0x52454563,0x49(%rbx,%rsi,2),%esi
  400503:	52 
  400504:	53                   	push   %rbx
  400505:	74 31                	je     400538 <_init-0x1d0>
  400507:	33 62 61             	xor    0x61(%rdx),%esp
  40050a:	73 69                	jae    400575 <_init-0x193>
  40050c:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
  40050f:	73 74                	jae    400585 <_init-0x183>
  400511:	72 65                	jb     400578 <_init-0x190>
  400513:	61                   	(bad)  
  400514:	6d                   	insl   (%dx),%es:(%rdi)
  400515:	49 54                	rex.WB push %r12
  400517:	5f                   	pop    %rdi
  400518:	54                   	push   %rsp
  400519:	30 5f 45             	xor    %bl,0x45(%rdi)
  40051c:	53                   	push   %rbx
  40051d:	36 5f                	ss pop %rdi
  40051f:	00 5f 5a             	add    %bl,0x5a(%rdi)
  400522:	4e 53                	rex.WRX push %rbx
  400524:	6f                   	outsl  %ds:(%rsi),(%dx)
  400525:	6c                   	insb   (%dx),%es:(%rdi)
  400526:	73 45                	jae    40056d <_init-0x19b>
  400528:	50                   	push   %rax
  400529:	46 52                	rex.RX push %rdx
  40052b:	53                   	push   %rbx
  40052c:	6f                   	outsl  %ds:(%rsi),(%dx)
  40052d:	53                   	push   %rbx
  40052e:	5f                   	pop    %rdi
  40052f:	45 00 5f 5a          	add    %r11b,0x5a(%r15)
  400533:	4e 53                	rex.WRX push %rbx
  400535:	74 38                	je     40056f <_init-0x199>
  400537:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
  40053e:	65 34 49             	gs xor $0x49,%al
  400541:	6e                   	outsb  %ds:(%rsi),(%dx)
  400542:	69 74 43 31 45 76 00 	imul   $0x6c007645,0x31(%rbx,%rax,2),%esi
  400549:	6c 
  40054a:	69 62 6d 2e 73 6f 2e 	imul   $0x2e6f732e,0x6d(%rdx),%esp
  400551:	36 00 6c 69 62       	add    %ch,%ss:0x62(%rcx,%rbp,2)
  400556:	67 63 63 5f          	movslq 0x5f(%ebx),%esp
  40055a:	73 2e                	jae    40058a <_init-0x17e>
  40055c:	73 6f                	jae    4005cd <_init-0x13b>
  40055e:	2e 31 00             	xor    %eax,%cs:(%rax)
  400561:	6c                   	insb   (%dx),%es:(%rdi)
  400562:	69 62 63 2e 73 6f 2e 	imul   $0x2e6f732e,0x63(%rdx),%esp
  400569:	36 00 5f 5f          	add    %bl,%ss:0x5f(%rdi)
  40056d:	63 78 61             	movslq 0x61(%rax),%edi
  400570:	5f                   	pop    %rdi
  400571:	61                   	(bad)  
  400572:	74 65                	je     4005d9 <_init-0x12f>
  400574:	78 69                	js     4005df <_init-0x129>
  400576:	74 00                	je     400578 <_init-0x190>
  400578:	5f                   	pop    %rdi
  400579:	5f                   	pop    %rdi
  40057a:	6c                   	insb   (%dx),%es:(%rdi)
  40057b:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
  400582:	72 74                	jb     4005f8 <_init-0x110>
  400584:	5f                   	pop    %rdi
  400585:	6d                   	insl   (%dx),%es:(%rdi)
  400586:	61                   	(bad)  
  400587:	69 6e 00 47 4c 49 42 	imul   $0x42494c47,0x0(%rsi),%ebp
  40058e:	43 5f                	rex.XB pop %r15
  400590:	32 2e                	xor    (%rsi),%ch
  400592:	32 2e                	xor    (%rsi),%ch
  400594:	35 00 47 4c 49       	xor    $0x494c4700,%eax
  400599:	42                   	rex.X
  40059a:	43 58                	rex.XB pop %r8
  40059c:	58                   	pop    %rax
  40059d:	5f                   	pop    %rdi
  40059e:	33 2e                	xor    (%rsi),%ebp
  4005a0:	34 00                	xor    $0x0,%al

Disassembly of section .gnu.version:

00000000004005a2 <.gnu.version>:
  4005a2:	00 00                	add    %al,(%rax)
  4005a4:	02 00                	add    (%rax),%al
  4005a6:	00 00                	add    %al,(%rax)
  4005a8:	00 00                	add    %al,(%rax)
  4005aa:	02 00                	add    (%rax),%al
  4005ac:	03 00                	add    (%rax),%eax
  4005ae:	03 00                	add    (%rax),%eax
  4005b0:	00 00                	add    %al,(%rax)
  4005b2:	02 00                	add    (%rax),%al
  4005b4:	00 00                	add    %al,(%rax)
  4005b6:	02 00                	add    (%rax),%al
  4005b8:	02 00                	add    (%rax),%al
  4005ba:	02 00                	add    (%rax),%al
  4005bc:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

00000000004005c0 <.gnu.version_r>:
  4005c0:	01 00                	add    %eax,(%rax)
  4005c2:	01 00                	add    %eax,(%rax)
  4005c4:	49 01 00             	add    %rax,(%r8)
  4005c7:	00 10                	add    %dl,(%rax)
  4005c9:	00 00                	add    %al,(%rax)
  4005cb:	00 20                	add    %ah,(%rax)
  4005cd:	00 00                	add    %al,(%rax)
  4005cf:	00 75 1a             	add    %dh,0x1a(%rbp)
  4005d2:	69 09 00 00 03 00    	imul   $0x30000,(%rcx),%ecx
  4005d8:	72 01                	jb     4005db <_init-0x12d>
  4005da:	00 00                	add    %al,(%rax)
  4005dc:	00 00                	add    %al,(%rax)
  4005de:	00 00                	add    %al,(%rax)
  4005e0:	01 00                	add    %eax,(%rax)
  4005e2:	01 00                	add    %eax,(%rax)
  4005e4:	01 00                	add    %eax,(%rax)
  4005e6:	00 00                	add    %al,(%rax)
  4005e8:	10 00                	adc    %al,(%rax)
  4005ea:	00 00                	add    %al,(%rax)
  4005ec:	00 00                	add    %al,(%rax)
  4005ee:	00 00                	add    %al,(%rax)
  4005f0:	74 29                	je     40061b <_init-0xed>
  4005f2:	92                   	xchg   %eax,%edx
  4005f3:	08 00                	or     %al,(%rax)
  4005f5:	00 02                	add    %al,(%rdx)
  4005f7:	00 7e 01             	add    %bh,0x1(%rsi)
  4005fa:	00 00                	add    %al,(%rax)
  4005fc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

0000000000400600 <.rela.dyn>:
  400600:	f8                   	clc    
  400601:	0f 60 00             	punpcklbw (%rax),%mm0
  400604:	00 00                	add    %al,(%rax)
  400606:	00 00                	add    %al,(%rax)
  400608:	06                   	(bad)  
  400609:	00 00                	add    %al,(%rax)
  40060b:	00 02                	add    %al,(%rdx)
	...
  400615:	00 00                	add    %al,(%rax)
  400617:	00 80 10 60 00 00    	add    %al,0x6010(%rax)
  40061d:	00 00                	add    %al,(%rax)
  40061f:	00 05 00 00 00 0d    	add    %al,0xd000000(%rip)        # d400625 <_end+0xcdff48d>
	...

Disassembly of section .rela.plt:

0000000000400630 <.rela.plt>:
  400630:	18 10                	sbb    %dl,(%rax)
  400632:	60                   	(bad)  
  400633:	00 00                	add    %al,(%rax)
  400635:	00 00                	add    %al,(%rax)
  400637:	00 07                	add    %al,(%rdi)
  400639:	00 00                	add    %al,(%rax)
  40063b:	00 01                	add    %al,(%rcx)
	...
  400645:	00 00                	add    %al,(%rax)
  400647:	00 20                	add    %ah,(%rax)
  400649:	10 60 00             	adc    %ah,0x0(%rax)
  40064c:	00 00                	add    %al,(%rax)
  40064e:	00 00                	add    %al,(%rax)
  400650:	07                   	(bad)  
  400651:	00 00                	add    %al,(%rax)
  400653:	00 02                	add    %al,(%rdx)
	...
  40065d:	00 00                	add    %al,(%rax)
  40065f:	00 28                	add    %ch,(%rax)
  400661:	10 60 00             	adc    %ah,0x0(%rax)
  400664:	00 00                	add    %al,(%rax)
  400666:	00 00                	add    %al,(%rax)
  400668:	07                   	(bad)  
  400669:	00 00                	add    %al,(%rax)
  40066b:	00 04 00             	add    %al,(%rax,%rax,1)
	...
  400676:	00 00                	add    %al,(%rax)
  400678:	30 10                	xor    %dl,(%rax)
  40067a:	60                   	(bad)  
  40067b:	00 00                	add    %al,(%rax)
  40067d:	00 00                	add    %al,(%rax)
  40067f:	00 07                	add    %al,(%rdi)
  400681:	00 00                	add    %al,(%rax)
  400683:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 400689 <_init-0x7f>
  400689:	00 00                	add    %al,(%rax)
  40068b:	00 00                	add    %al,(%rax)
  40068d:	00 00                	add    %al,(%rax)
  40068f:	00 38                	add    %bh,(%rax)
  400691:	10 60 00             	adc    %ah,0x0(%rax)
  400694:	00 00                	add    %al,(%rax)
  400696:	00 00                	add    %al,(%rax)
  400698:	07                   	(bad)  
  400699:	00 00                	add    %al,(%rax)
  40069b:	00 06                	add    %al,(%rsi)
	...
  4006a5:	00 00                	add    %al,(%rax)
  4006a7:	00 40 10             	add    %al,0x10(%rax)
  4006aa:	60                   	(bad)  
  4006ab:	00 00                	add    %al,(%rax)
  4006ad:	00 00                	add    %al,(%rax)
  4006af:	00 07                	add    %al,(%rdi)
  4006b1:	00 00                	add    %al,(%rax)
  4006b3:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
  4006be:	00 00                	add    %al,(%rax)
  4006c0:	48 10 60 00          	rex.W adc %spl,0x0(%rax)
  4006c4:	00 00                	add    %al,(%rax)
  4006c6:	00 00                	add    %al,(%rax)
  4006c8:	07                   	(bad)  
  4006c9:	00 00                	add    %al,(%rax)
  4006cb:	00 08                	add    %cl,(%rax)
	...
  4006d5:	00 00                	add    %al,(%rax)
  4006d7:	00 50 10             	add    %dl,0x10(%rax)
  4006da:	60                   	(bad)  
  4006db:	00 00                	add    %al,(%rax)
  4006dd:	00 00                	add    %al,(%rax)
  4006df:	00 07                	add    %al,(%rdi)
  4006e1:	00 00                	add    %al,(%rax)
  4006e3:	00 0a                	add    %cl,(%rdx)
	...
  4006ed:	00 00                	add    %al,(%rax)
  4006ef:	00 58 10             	add    %bl,0x10(%rax)
  4006f2:	60                   	(bad)  
  4006f3:	00 00                	add    %al,(%rax)
  4006f5:	00 00                	add    %al,(%rax)
  4006f7:	00 07                	add    %al,(%rdi)
  4006f9:	00 00                	add    %al,(%rax)
  4006fb:	00 0b                	add    %cl,(%rbx)
	...

Disassembly of section .init:

0000000000400708 <_init>:
  400708:	48 83 ec 08          	sub    $0x8,%rsp
  40070c:	48 8b 05 e5 08 20 00 	mov    0x2008e5(%rip),%rax        # 600ff8 <_DYNAMIC+0x200>
  400713:	48 85 c0             	test   %rax,%rax
  400716:	74 05                	je     40071d <_init+0x15>
  400718:	e8 33 00 00 00       	callq  400750 <__gmon_start__@plt>
  40071d:	48 83 c4 08          	add    $0x8,%rsp
  400721:	c3                   	retq   

Disassembly of section .plt:

0000000000400730 <_ZNSolsEi@plt-0x10>:
  400730:	ff 35 d2 08 20 00    	pushq  0x2008d2(%rip)        # 601008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400736:	ff 25 d4 08 20 00    	jmpq   *0x2008d4(%rip)        # 601010 <_GLOBAL_OFFSET_TABLE_+0x10>
  40073c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400740 <_ZNSolsEi@plt>:
  400740:	ff 25 d2 08 20 00    	jmpq   *0x2008d2(%rip)        # 601018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400746:	68 00 00 00 00       	pushq  $0x0
  40074b:	e9 e0 ff ff ff       	jmpq   400730 <_init+0x28>

0000000000400750 <__gmon_start__@plt>:
  400750:	ff 25 ca 08 20 00    	jmpq   *0x2008ca(%rip)        # 601020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400756:	68 01 00 00 00       	pushq  $0x1
  40075b:	e9 d0 ff ff ff       	jmpq   400730 <_init+0x28>

0000000000400760 <_ZNSt8ios_base4InitC1Ev@plt>:
  400760:	ff 25 c2 08 20 00    	jmpq   *0x2008c2(%rip)        # 601028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400766:	68 02 00 00 00       	pushq  $0x2
  40076b:	e9 c0 ff ff ff       	jmpq   400730 <_init+0x28>

0000000000400770 <__libc_start_main@plt>:
  400770:	ff 25 ba 08 20 00    	jmpq   *0x2008ba(%rip)        # 601030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400776:	68 03 00 00 00       	pushq  $0x3
  40077b:	e9 b0 ff ff ff       	jmpq   400730 <_init+0x28>

0000000000400780 <__cxa_atexit@plt>:
  400780:	ff 25 b2 08 20 00    	jmpq   *0x2008b2(%rip)        # 601038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400786:	68 04 00 00 00       	pushq  $0x4
  40078b:	e9 a0 ff ff ff       	jmpq   400730 <_init+0x28>

0000000000400790 <_ZNSt8ios_base4InitD1Ev@plt>:
  400790:	ff 25 aa 08 20 00    	jmpq   *0x2008aa(%rip)        # 601040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400796:	68 05 00 00 00       	pushq  $0x5
  40079b:	e9 90 ff ff ff       	jmpq   400730 <_init+0x28>

00000000004007a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>:
  4007a0:	ff 25 a2 08 20 00    	jmpq   *0x2008a2(%rip)        # 601048 <_GLOBAL_OFFSET_TABLE_+0x48>
  4007a6:	68 06 00 00 00       	pushq  $0x6
  4007ab:	e9 80 ff ff ff       	jmpq   400730 <_init+0x28>

00000000004007b0 <_ZNSolsEPFRSoS_E@plt>:
  4007b0:	ff 25 9a 08 20 00    	jmpq   *0x20089a(%rip)        # 601050 <_GLOBAL_OFFSET_TABLE_+0x50>
  4007b6:	68 07 00 00 00       	pushq  $0x7
  4007bb:	e9 70 ff ff ff       	jmpq   400730 <_init+0x28>

00000000004007c0 <_ZSt4endlIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_@plt>:
  4007c0:	ff 25 92 08 20 00    	jmpq   *0x200892(%rip)        # 601058 <_GLOBAL_OFFSET_TABLE_+0x58>
  4007c6:	68 08 00 00 00       	pushq  $0x8
  4007cb:	e9 60 ff ff ff       	jmpq   400730 <_init+0x28>

Disassembly of section .text:

00000000004007d0 <_start>:
  4007d0:	31 ed                	xor    %ebp,%ebp
  4007d2:	49 89 d1             	mov    %rdx,%r9
  4007d5:	5e                   	pop    %rsi
  4007d6:	48 89 e2             	mov    %rsp,%rdx
  4007d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  4007dd:	50                   	push   %rax
  4007de:	54                   	push   %rsp
  4007df:	49 c7 c0 f0 0a 40 00 	mov    $0x400af0,%r8
  4007e6:	48 c7 c1 80 0a 40 00 	mov    $0x400a80,%rcx
  4007ed:	48 c7 c7 bd 08 40 00 	mov    $0x4008bd,%rdi
  4007f4:	e8 77 ff ff ff       	callq  400770 <__libc_start_main@plt>
  4007f9:	f4                   	hlt    
  4007fa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400800 <deregister_tm_clones>:
  400800:	b8 6f 10 60 00       	mov    $0x60106f,%eax
  400805:	55                   	push   %rbp
  400806:	48 2d 68 10 60 00    	sub    $0x601068,%rax
  40080c:	48 83 f8 0e          	cmp    $0xe,%rax
  400810:	48 89 e5             	mov    %rsp,%rbp
  400813:	77 02                	ja     400817 <deregister_tm_clones+0x17>
  400815:	5d                   	pop    %rbp
  400816:	c3                   	retq   
  400817:	b8 00 00 00 00       	mov    $0x0,%eax
  40081c:	48 85 c0             	test   %rax,%rax
  40081f:	74 f4                	je     400815 <deregister_tm_clones+0x15>
  400821:	5d                   	pop    %rbp
  400822:	bf 68 10 60 00       	mov    $0x601068,%edi
  400827:	ff e0                	jmpq   *%rax
  400829:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400830 <register_tm_clones>:
  400830:	b8 68 10 60 00       	mov    $0x601068,%eax
  400835:	55                   	push   %rbp
  400836:	48 2d 68 10 60 00    	sub    $0x601068,%rax
  40083c:	48 c1 f8 03          	sar    $0x3,%rax
  400840:	48 89 e5             	mov    %rsp,%rbp
  400843:	48 89 c2             	mov    %rax,%rdx
  400846:	48 c1 ea 3f          	shr    $0x3f,%rdx
  40084a:	48 01 d0             	add    %rdx,%rax
  40084d:	48 d1 f8             	sar    %rax
  400850:	75 02                	jne    400854 <register_tm_clones+0x24>
  400852:	5d                   	pop    %rbp
  400853:	c3                   	retq   
  400854:	ba 00 00 00 00       	mov    $0x0,%edx
  400859:	48 85 d2             	test   %rdx,%rdx
  40085c:	74 f4                	je     400852 <register_tm_clones+0x22>
  40085e:	5d                   	pop    %rbp
  40085f:	48 89 c6             	mov    %rax,%rsi
  400862:	bf 68 10 60 00       	mov    $0x601068,%edi
  400867:	ff e2                	jmpq   *%rdx
  400869:	0f 1f 80 00 00 00 00 	nopl   0x0(%rax)

0000000000400870 <__do_global_dtors_aux>:
  400870:	80 3d 19 09 20 00 00 	cmpb   $0x0,0x200919(%rip)        # 601190 <completed.6344>
  400877:	75 11                	jne    40088a <__do_global_dtors_aux+0x1a>
  400879:	55                   	push   %rbp
  40087a:	48 89 e5             	mov    %rsp,%rbp
  40087d:	e8 7e ff ff ff       	callq  400800 <deregister_tm_clones>
  400882:	5d                   	pop    %rbp
  400883:	c6 05 06 09 20 00 01 	movb   $0x1,0x200906(%rip)        # 601190 <completed.6344>
  40088a:	f3 c3                	repz retq 
  40088c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400890 <frame_dummy>:
  400890:	48 83 3d 58 05 20 00 	cmpq   $0x0,0x200558(%rip)        # 600df0 <__JCR_END__>
  400897:	00 
  400898:	74 1e                	je     4008b8 <frame_dummy+0x28>
  40089a:	b8 00 00 00 00       	mov    $0x0,%eax
  40089f:	48 85 c0             	test   %rax,%rax
  4008a2:	74 14                	je     4008b8 <frame_dummy+0x28>
  4008a4:	55                   	push   %rbp
  4008a5:	bf f0 0d 60 00       	mov    $0x600df0,%edi
  4008aa:	48 89 e5             	mov    %rsp,%rbp
  4008ad:	ff d0                	callq  *%rax
  4008af:	5d                   	pop    %rbp
  4008b0:	e9 7b ff ff ff       	jmpq   400830 <register_tm_clones>
  4008b5:	0f 1f 00             	nopl   (%rax)
  4008b8:	e9 73 ff ff ff       	jmpq   400830 <register_tm_clones>

00000000004008bd <main>:
  4008bd:	55                   	push   %rbp
  4008be:	48 89 e5             	mov    %rsp,%rbp
  4008c1:	53                   	push   %rbx
  4008c2:	48 83 ec 38          	sub    $0x38,%rsp
  4008c6:	89 7d cc             	mov    %edi,-0x34(%rbp)
  4008c9:	48 89 75 c0          	mov    %rsi,-0x40(%rbp)
  4008cd:	e8 8b 01 00 00       	callq  400a5d <_ZN4Base8getValueEv>
  4008d2:	48 89 45 e8          	mov    %rax,-0x18(%rbp)
  4008d6:	e8 8d 01 00 00       	callq  400a68 <_ZN4Base9getValue2Ev>
  4008db:	48 89 45 e0          	mov    %rax,-0x20(%rbp)
  4008df:	48 8d 45 d0          	lea    -0x30(%rbp),%rax
  4008e3:	be e8 03 00 00       	mov    $0x3e8,%esi
  4008e8:	48 89 c7             	mov    %rax,%rdi
  4008eb:	e8 4c 01 00 00       	callq  400a3c <_ZN4BaseC1Ei>
  4008f0:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  4008f4:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  4008f8:	48 01 d0             	add    %rdx,%rax
  4008fb:	8b 18                	mov    (%rax),%ebx
  4008fd:	be 10 0b 40 00       	mov    $0x400b10,%esi
  400902:	bf 80 10 60 00       	mov    $0x601080,%edi
  400907:	e8 94 fe ff ff       	callq  4007a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40090c:	89 de                	mov    %ebx,%esi
  40090e:	48 89 c7             	mov    %rax,%rdi
  400911:	e8 2a fe ff ff       	callq  400740 <_ZNSolsEi@plt>
  400916:	be c0 07 40 00       	mov    $0x4007c0,%esi
  40091b:	48 89 c7             	mov    %rax,%rdi
  40091e:	e8 8d fe ff ff       	callq  4007b0 <_ZNSolsEPFRSoS_E@plt>
  400923:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  400927:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  40092b:	48 01 d0             	add    %rdx,%rax
  40092e:	8b 18                	mov    (%rax),%ebx
  400930:	be 19 0b 40 00       	mov    $0x400b19,%esi
  400935:	bf 80 10 60 00       	mov    $0x601080,%edi
  40093a:	e8 61 fe ff ff       	callq  4007a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  40093f:	89 de                	mov    %ebx,%esi
  400941:	48 89 c7             	mov    %rax,%rdi
  400944:	e8 f7 fd ff ff       	callq  400740 <_ZNSolsEi@plt>
  400949:	be c0 07 40 00       	mov    $0x4007c0,%esi
  40094e:	48 89 c7             	mov    %rax,%rdi
  400951:	e8 5a fe ff ff       	callq  4007b0 <_ZNSolsEPFRSoS_E@plt>
  400956:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40095a:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  40095e:	48 01 d0             	add    %rdx,%rax
  400961:	c7 00 0a 00 00 00    	movl   $0xa,(%rax)
  400967:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  40096b:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  40096f:	48 01 d0             	add    %rdx,%rax
  400972:	c7 00 ff ff ff ff    	movl   $0xffffffff,(%rax)
  400978:	48 8b 45 e8          	mov    -0x18(%rbp),%rax
  40097c:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  400980:	48 01 d0             	add    %rdx,%rax
  400983:	8b 18                	mov    (%rax),%ebx
  400985:	be 10 0b 40 00       	mov    $0x400b10,%esi
  40098a:	bf 80 10 60 00       	mov    $0x601080,%edi
  40098f:	e8 0c fe ff ff       	callq  4007a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  400994:	89 de                	mov    %ebx,%esi
  400996:	48 89 c7             	mov    %rax,%rdi
  400999:	e8 a2 fd ff ff       	callq  400740 <_ZNSolsEi@plt>
  40099e:	be c0 07 40 00       	mov    $0x4007c0,%esi
  4009a3:	48 89 c7             	mov    %rax,%rdi
  4009a6:	e8 05 fe ff ff       	callq  4007b0 <_ZNSolsEPFRSoS_E@plt>
  4009ab:	48 8b 45 e0          	mov    -0x20(%rbp),%rax
  4009af:	48 8d 55 d0          	lea    -0x30(%rbp),%rdx
  4009b3:	48 01 d0             	add    %rdx,%rax
  4009b6:	8b 18                	mov    (%rax),%ebx
  4009b8:	be 19 0b 40 00       	mov    $0x400b19,%esi
  4009bd:	bf 80 10 60 00       	mov    $0x601080,%edi
  4009c2:	e8 d9 fd ff ff       	callq  4007a0 <_ZStlsISt11char_traitsIcEERSt13basic_ostreamIcT_ES5_PKc@plt>
  4009c7:	89 de                	mov    %ebx,%esi
  4009c9:	48 89 c7             	mov    %rax,%rdi
  4009cc:	e8 6f fd ff ff       	callq  400740 <_ZNSolsEi@plt>
  4009d1:	be c0 07 40 00       	mov    $0x4007c0,%esi
  4009d6:	48 89 c7             	mov    %rax,%rdi
  4009d9:	e8 d2 fd ff ff       	callq  4007b0 <_ZNSolsEPFRSoS_E@plt>
  4009de:	b8 00 00 00 00       	mov    $0x0,%eax
  4009e3:	48 83 c4 38          	add    $0x38,%rsp
  4009e7:	5b                   	pop    %rbx
  4009e8:	5d                   	pop    %rbp
  4009e9:	c3                   	retq   

00000000004009ea <_Z41__static_initialization_and_destruction_0ii>:
  4009ea:	55                   	push   %rbp
  4009eb:	48 89 e5             	mov    %rsp,%rbp
  4009ee:	48 83 ec 10          	sub    $0x10,%rsp
  4009f2:	89 7d fc             	mov    %edi,-0x4(%rbp)
  4009f5:	89 75 f8             	mov    %esi,-0x8(%rbp)
  4009f8:	83 7d fc 01          	cmpl   $0x1,-0x4(%rbp)
  4009fc:	75 27                	jne    400a25 <_Z41__static_initialization_and_destruction_0ii+0x3b>
  4009fe:	81 7d f8 ff ff 00 00 	cmpl   $0xffff,-0x8(%rbp)
  400a05:	75 1e                	jne    400a25 <_Z41__static_initialization_and_destruction_0ii+0x3b>
  400a07:	bf 91 11 60 00       	mov    $0x601191,%edi
  400a0c:	e8 4f fd ff ff       	callq  400760 <_ZNSt8ios_base4InitC1Ev@plt>
  400a11:	ba 08 0b 40 00       	mov    $0x400b08,%edx
  400a16:	be 91 11 60 00       	mov    $0x601191,%esi
  400a1b:	bf 90 07 40 00       	mov    $0x400790,%edi
  400a20:	e8 5b fd ff ff       	callq  400780 <__cxa_atexit@plt>
  400a25:	c9                   	leaveq 
  400a26:	c3                   	retq   

0000000000400a27 <_GLOBAL__sub_I_main>:
  400a27:	55                   	push   %rbp
  400a28:	48 89 e5             	mov    %rsp,%rbp
  400a2b:	be ff ff 00 00       	mov    $0xffff,%esi
  400a30:	bf 01 00 00 00       	mov    $0x1,%edi
  400a35:	e8 b0 ff ff ff       	callq  4009ea <_Z41__static_initialization_and_destruction_0ii>
  400a3a:	5d                   	pop    %rbp
  400a3b:	c3                   	retq   

0000000000400a3c <_ZN4BaseC1Ei>:
  400a3c:	55                   	push   %rbp
  400a3d:	48 89 e5             	mov    %rsp,%rbp
  400a40:	48 89 7d f8          	mov    %rdi,-0x8(%rbp)
  400a44:	89 75 f4             	mov    %esi,-0xc(%rbp)
  400a47:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a4b:	8b 55 f4             	mov    -0xc(%rbp),%edx
  400a4e:	89 10                	mov    %edx,(%rax)
  400a50:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  400a54:	c7 40 04 00 80 00 00 	movl   $0x8000,0x4(%rax)
  400a5b:	5d                   	pop    %rbp
  400a5c:	c3                   	retq   

0000000000400a5d <_ZN4Base8getValueEv>:
  400a5d:	55                   	push   %rbp
  400a5e:	48 89 e5             	mov    %rsp,%rbp
  400a61:	b8 00 00 00 00       	mov    $0x0,%eax
  400a66:	5d                   	pop    %rbp
  400a67:	c3                   	retq   

0000000000400a68 <_ZN4Base9getValue2Ev>:
  400a68:	55                   	push   %rbp
  400a69:	48 89 e5             	mov    %rsp,%rbp
  400a6c:	b8 04 00 00 00       	mov    $0x4,%eax
  400a71:	5d                   	pop    %rbp
  400a72:	c3                   	retq   
  400a73:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400a7a:	00 00 00 
  400a7d:	0f 1f 00             	nopl   (%rax)

0000000000400a80 <__libc_csu_init>:
  400a80:	41 57                	push   %r15
  400a82:	41 89 ff             	mov    %edi,%r15d
  400a85:	41 56                	push   %r14
  400a87:	49 89 f6             	mov    %rsi,%r14
  400a8a:	41 55                	push   %r13
  400a8c:	49 89 d5             	mov    %rdx,%r13
  400a8f:	41 54                	push   %r12
  400a91:	4c 8d 25 40 03 20 00 	lea    0x200340(%rip),%r12        # 600dd8 <__frame_dummy_init_array_entry>
  400a98:	55                   	push   %rbp
  400a99:	48 8d 2d 48 03 20 00 	lea    0x200348(%rip),%rbp        # 600de8 <__init_array_end>
  400aa0:	53                   	push   %rbx
  400aa1:	4c 29 e5             	sub    %r12,%rbp
  400aa4:	31 db                	xor    %ebx,%ebx
  400aa6:	48 c1 fd 03          	sar    $0x3,%rbp
  400aaa:	48 83 ec 08          	sub    $0x8,%rsp
  400aae:	e8 55 fc ff ff       	callq  400708 <_init>
  400ab3:	48 85 ed             	test   %rbp,%rbp
  400ab6:	74 1e                	je     400ad6 <__libc_csu_init+0x56>
  400ab8:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  400abf:	00 
  400ac0:	4c 89 ea             	mov    %r13,%rdx
  400ac3:	4c 89 f6             	mov    %r14,%rsi
  400ac6:	44 89 ff             	mov    %r15d,%edi
  400ac9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  400acd:	48 83 c3 01          	add    $0x1,%rbx
  400ad1:	48 39 eb             	cmp    %rbp,%rbx
  400ad4:	75 ea                	jne    400ac0 <__libc_csu_init+0x40>
  400ad6:	48 83 c4 08          	add    $0x8,%rsp
  400ada:	5b                   	pop    %rbx
  400adb:	5d                   	pop    %rbp
  400adc:	41 5c                	pop    %r12
  400ade:	41 5d                	pop    %r13
  400ae0:	41 5e                	pop    %r14
  400ae2:	41 5f                	pop    %r15
  400ae4:	c3                   	retq   
  400ae5:	90                   	nop
  400ae6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400aed:	00 00 00 

0000000000400af0 <__libc_csu_fini>:
  400af0:	f3 c3                	repz retq 
  400af2:	66 90                	xchg   %ax,%ax

Disassembly of section .fini:

0000000000400af4 <_fini>:
  400af4:	48 83 ec 08          	sub    $0x8,%rsp
  400af8:	48 83 c4 08          	add    $0x8,%rsp
  400afc:	c3                   	retq   

Disassembly of section .rodata:

0000000000400b00 <_IO_stdin_used>:
  400b00:	01 00                	add    %eax,(%rax)
  400b02:	02 00                	add    (%rax),%al
  400b04:	00 00                	add    %al,(%rax)
	...

0000000000400b08 <__dso_handle>:
	...
  400b10:	6d                   	insl   (%dx),%es:(%rdi)
  400b11:	5f                   	pop    %rdi
  400b12:	76 61                	jbe    400b75 <__dso_handle+0x6d>
  400b14:	6c                   	insb   (%dx),%es:(%rdi)
  400b15:	75 65                	jne    400b7c <__dso_handle+0x74>
  400b17:	3d 00 6d 5f 76       	cmp    $0x765f6d00,%eax
  400b1c:	61                   	(bad)  
  400b1d:	6c                   	insb   (%dx),%es:(%rdi)
  400b1e:	75 65                	jne    400b85 <__dso_handle+0x7d>
  400b20:	32                   	.byte 0x32
  400b21:	3d                   	.byte 0x3d
	...

Disassembly of section .eh_frame_hdr:

0000000000400b24 <.eh_frame_hdr>:
  400b24:	01 1b                	add    %ebx,(%rbx)
  400b26:	03 3b                	add    (%rbx),%edi
  400b28:	58                   	pop    %rax
  400b29:	00 00                	add    %al,(%rax)
  400b2b:	00 0a                	add    %cl,(%rdx)
  400b2d:	00 00                	add    %al,(%rax)
  400b2f:	00 0c fc             	add    %cl,(%rsp,%rdi,8)
  400b32:	ff                   	(bad)  
  400b33:	ff a4 00 00 00 ac fc 	jmpq   *-0x3540000(%rax,%rax,1)
  400b3a:	ff                   	(bad)  
  400b3b:	ff 74 00 00          	pushq  0x0(%rax,%rax,1)
  400b3f:	00 99 fd ff ff 2c    	add    %bl,0x2cfffffd(%rcx)
  400b45:	01 00                	add    %eax,(%rax)
  400b47:	00 c6                	add    %al,%dh
  400b49:	fe                   	(bad)  
  400b4a:	ff                   	(bad)  
  400b4b:	ff 54 01 00          	callq  *0x0(%rcx,%rax,1)
  400b4f:	00 03                	add    %al,(%rbx)
  400b51:	ff                   	(bad)  
  400b52:	ff                   	(bad)  
  400b53:	ff 74 01 00          	pushq  0x0(%rcx,%rax,1)
  400b57:	00 18                	add    %bl,(%rax)
  400b59:	ff                   	(bad)  
  400b5a:	ff                   	(bad)  
  400b5b:	ff cc                	dec    %esp
  400b5d:	00 00                	add    %al,(%rax)
  400b5f:	00 39                	add    %bh,(%rcx)
  400b61:	ff                   	(bad)  
  400b62:	ff                   	(bad)  
  400b63:	ff                   	(bad)  
  400b64:	ec                   	in     (%dx),%al
  400b65:	00 00                	add    %al,(%rax)
  400b67:	00 44 ff ff          	add    %al,-0x1(%rdi,%rdi,8)
  400b6b:	ff 0c 01             	decl   (%rcx,%rax,1)
  400b6e:	00 00                	add    %al,(%rax)
  400b70:	5c                   	pop    %rsp
  400b71:	ff                   	(bad)  
  400b72:	ff                   	(bad)  
  400b73:	ff 94 01 00 00 cc ff 	callq  *-0x340000(%rcx,%rax,1)
  400b7a:	ff                   	(bad)  
  400b7b:	ff                   	(bad)  
  400b7c:	dc 01                	faddl  (%rcx)
	...

Disassembly of section .eh_frame:

0000000000400b80 <__FRAME_END__-0x198>:
  400b80:	14 00                	adc    $0x0,%al
  400b82:	00 00                	add    %al,(%rax)
  400b84:	00 00                	add    %al,(%rax)
  400b86:	00 00                	add    %al,(%rax)
  400b88:	01 7a 52             	add    %edi,0x52(%rdx)
  400b8b:	00 01                	add    %al,(%rcx)
  400b8d:	78 10                	js     400b9f <__dso_handle+0x97>
  400b8f:	01 1b                	add    %ebx,(%rbx)
  400b91:	0c 07                	or     $0x7,%al
  400b93:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
  400b99:	00 00                	add    %al,(%rax)
  400b9b:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400b9e:	00 00                	add    %al,(%rax)
  400ba0:	30 fc                	xor    %bh,%ah
  400ba2:	ff                   	(bad)  
  400ba3:	ff 2a                	ljmpq  *(%rdx)
	...
  400bad:	00 00                	add    %al,(%rax)
  400baf:	00 14 00             	add    %dl,(%rax,%rax,1)
  400bb2:	00 00                	add    %al,(%rax)
  400bb4:	00 00                	add    %al,(%rax)
  400bb6:	00 00                	add    %al,(%rax)
  400bb8:	01 7a 52             	add    %edi,0x52(%rdx)
  400bbb:	00 01                	add    %al,(%rcx)
  400bbd:	78 10                	js     400bcf <__dso_handle+0xc7>
  400bbf:	01 1b                	add    %ebx,(%rbx)
  400bc1:	0c 07                	or     $0x7,%al
  400bc3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
  400bc9:	00 00                	add    %al,(%rax)
  400bcb:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400bce:	00 00                	add    %al,(%rax)
  400bd0:	60                   	(bad)  
  400bd1:	fb                   	sti    
  400bd2:	ff                   	(bad)  
  400bd3:	ff a0 00 00 00 00    	jmpq   *0x0(%rax)
  400bd9:	0e                   	(bad)  
  400bda:	10 46 0e             	adc    %al,0xe(%rsi)
  400bdd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
  400be0:	0b 77 08             	or     0x8(%rdi),%esi
  400be3:	80 00 3f             	addb   $0x3f,(%rax)
  400be6:	1a 3b                	sbb    (%rbx),%bh
  400be8:	2a 33                	sub    (%rbx),%dh
  400bea:	24 22                	and    $0x22,%al
  400bec:	00 00                	add    %al,(%rax)
  400bee:	00 00                	add    %al,(%rax)
  400bf0:	1c 00                	sbb    $0x0,%al
  400bf2:	00 00                	add    %al,(%rax)
  400bf4:	44 00 00             	add    %r8b,(%rax)
  400bf7:	00 44 fe ff          	add    %al,-0x1(%rsi,%rdi,8)
  400bfb:	ff 21                	jmpq   *(%rcx)
  400bfd:	00 00                	add    %al,(%rax)
  400bff:	00 00                	add    %al,(%rax)
  400c01:	41 0e                	rex.B (bad) 
  400c03:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c09:	5c                   	pop    %rsp
  400c0a:	0c 07                	or     $0x7,%al
  400c0c:	08 00                	or     %al,(%rax)
  400c0e:	00 00                	add    %al,(%rax)
  400c10:	1c 00                	sbb    $0x0,%al
  400c12:	00 00                	add    %al,(%rax)
  400c14:	64 00 00             	add    %al,%fs:(%rax)
  400c17:	00 45 fe             	add    %al,-0x2(%rbp)
  400c1a:	ff                   	(bad)  
  400c1b:	ff 0b                	decl   (%rbx)
  400c1d:	00 00                	add    %al,(%rax)
  400c1f:	00 00                	add    %al,(%rax)
  400c21:	41 0e                	rex.B (bad) 
  400c23:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c29:	46 0c 07             	rex.RX or $0x7,%al
  400c2c:	08 00                	or     %al,(%rax)
  400c2e:	00 00                	add    %al,(%rax)
  400c30:	1c 00                	sbb    $0x0,%al
  400c32:	00 00                	add    %al,(%rax)
  400c34:	84 00                	test   %al,(%rax)
  400c36:	00 00                	add    %al,(%rax)
  400c38:	30 fe                	xor    %bh,%dh
  400c3a:	ff                   	(bad)  
  400c3b:	ff 0b                	decl   (%rbx)
  400c3d:	00 00                	add    %al,(%rax)
  400c3f:	00 00                	add    %al,(%rax)
  400c41:	41 0e                	rex.B (bad) 
  400c43:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c49:	46 0c 07             	rex.RX or $0x7,%al
  400c4c:	08 00                	or     %al,(%rax)
  400c4e:	00 00                	add    %al,(%rax)
  400c50:	24 00                	and    $0x0,%al
  400c52:	00 00                	add    %al,(%rax)
  400c54:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
  400c55:	00 00                	add    %al,(%rax)
  400c57:	00 65 fc             	add    %ah,-0x4(%rbp)
  400c5a:	ff                   	(bad)  
  400c5b:	ff 2d 01 00 00 00    	ljmpq  *0x1(%rip)        # 400c62 <__dso_handle+0x15a>
  400c61:	41 0e                	rex.B (bad) 
  400c63:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c69:	45 83 03 03          	rex.RB addl $0x3,(%r11)
  400c6d:	23 01                	and    (%rcx),%eax
  400c6f:	0c 07                	or     $0x7,%al
  400c71:	08 00                	or     %al,(%rax)
  400c73:	00 00                	add    %al,(%rax)
  400c75:	00 00                	add    %al,(%rax)
  400c77:	00 1c 00             	add    %bl,(%rax,%rax,1)
  400c7a:	00 00                	add    %al,(%rax)
  400c7c:	cc                   	int3   
  400c7d:	00 00                	add    %al,(%rax)
  400c7f:	00 6a fd             	add    %ch,-0x3(%rdx)
  400c82:	ff                   	(bad)  
  400c83:	ff                   	(bad)  
  400c84:	3d 00 00 00 00       	cmp    $0x0,%eax
  400c89:	41 0e                	rex.B (bad) 
  400c8b:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400c91:	78 0c                	js     400c9f <__dso_handle+0x197>
  400c93:	07                   	(bad)  
  400c94:	08 00                	or     %al,(%rax)
  400c96:	00 00                	add    %al,(%rax)
  400c98:	1c 00                	sbb    $0x0,%al
  400c9a:	00 00                	add    %al,(%rax)
  400c9c:	ec                   	in     (%dx),%al
  400c9d:	00 00                	add    %al,(%rax)
  400c9f:	00 87 fd ff ff 15    	add    %al,0x15fffffd(%rdi)
  400ca5:	00 00                	add    %al,(%rax)
  400ca7:	00 00                	add    %al,(%rax)
  400ca9:	41 0e                	rex.B (bad) 
  400cab:	10 86 02 43 0d 06    	adc    %al,0x60d4302(%rsi)
  400cb1:	50                   	push   %rax
  400cb2:	0c 07                	or     $0x7,%al
  400cb4:	08 00                	or     %al,(%rax)
  400cb6:	00 00                	add    %al,(%rax)
  400cb8:	44 00 00             	add    %r8b,(%rax)
  400cbb:	00 0c 01             	add    %cl,(%rcx,%rax,1)
  400cbe:	00 00                	add    %al,(%rax)
  400cc0:	c0 fd ff             	sar    $0xff,%ch
  400cc3:	ff 65 00             	jmpq   *0x0(%rbp)
  400cc6:	00 00                	add    %al,(%rax)
  400cc8:	00 42 0e             	add    %al,0xe(%rdx)
  400ccb:	10 8f 02 45 0e 18    	adc    %cl,0x180e4502(%rdi)
  400cd1:	8e 03                	mov    (%rbx),%es
  400cd3:	45 0e                	rex.RB (bad) 
  400cd5:	20 8d 04 45 0e 28    	and    %cl,0x280e4504(%rbp)
  400cdb:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86701b29 <_end+0xffffffff86100991>
  400ce1:	06                   	(bad)  
  400ce2:	48 0e                	rex.W (bad) 
  400ce4:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
  400cea:	6c                   	insb   (%dx),%es:(%rdi)
  400ceb:	0e                   	(bad)  
  400cec:	38 41 0e             	cmp    %al,0xe(%rcx)
  400cef:	30 41 0e             	xor    %al,0xe(%rcx)
  400cf2:	28 42 0e             	sub    %al,0xe(%rdx)
  400cf5:	20 42 0e             	and    %al,0xe(%rdx)
  400cf8:	18 42 0e             	sbb    %al,0xe(%rdx)
  400cfb:	10 42 0e             	adc    %al,0xe(%rdx)
  400cfe:	08 00                	or     %al,(%rax)
  400d00:	14 00                	adc    $0x0,%al
  400d02:	00 00                	add    %al,(%rax)
  400d04:	54                   	push   %rsp
  400d05:	01 00                	add    %eax,(%rax)
  400d07:	00 e8                	add    %ch,%al
  400d09:	fd                   	std    
  400d0a:	ff                   	(bad)  
  400d0b:	ff 02                	incl   (%rdx)
	...

0000000000400d18 <__FRAME_END__>:
  400d18:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000600dd8 <__frame_dummy_init_array_entry>:
  600dd8:	90                   	nop
  600dd9:	08 40 00             	or     %al,0x0(%rax)
  600ddc:	00 00                	add    %al,(%rax)
  600dde:	00 00                	add    %al,(%rax)
  600de0:	27                   	(bad)  
  600de1:	0a 40 00             	or     0x0(%rax),%al
  600de4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000600de8 <__do_global_dtors_aux_fini_array_entry>:
  600de8:	70 08                	jo     600df2 <__JCR_END__+0x2>
  600dea:	40 00 00             	add    %al,(%rax)
  600ded:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000600df0 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000600df8 <_DYNAMIC>:
  600df8:	01 00                	add    %eax,(%rax)
  600dfa:	00 00                	add    %al,(%rax)
  600dfc:	00 00                	add    %al,(%rax)
  600dfe:	00 00                	add    %al,(%rax)
  600e00:	01 00                	add    %eax,(%rax)
  600e02:	00 00                	add    %al,(%rax)
  600e04:	00 00                	add    %al,(%rax)
  600e06:	00 00                	add    %al,(%rax)
  600e08:	01 00                	add    %eax,(%rax)
  600e0a:	00 00                	add    %al,(%rax)
  600e0c:	00 00                	add    %al,(%rax)
  600e0e:	00 00                	add    %al,(%rax)
  600e10:	31 01                	xor    %eax,(%rcx)
  600e12:	00 00                	add    %al,(%rax)
  600e14:	00 00                	add    %al,(%rax)
  600e16:	00 00                	add    %al,(%rax)
  600e18:	01 00                	add    %eax,(%rax)
  600e1a:	00 00                	add    %al,(%rax)
  600e1c:	00 00                	add    %al,(%rax)
  600e1e:	00 00                	add    %al,(%rax)
  600e20:	3b 01                	cmp    (%rcx),%eax
  600e22:	00 00                	add    %al,(%rax)
  600e24:	00 00                	add    %al,(%rax)
  600e26:	00 00                	add    %al,(%rax)
  600e28:	01 00                	add    %eax,(%rax)
  600e2a:	00 00                	add    %al,(%rax)
  600e2c:	00 00                	add    %al,(%rax)
  600e2e:	00 00                	add    %al,(%rax)
  600e30:	49 01 00             	add    %rax,(%r8)
  600e33:	00 00                	add    %al,(%rax)
  600e35:	00 00                	add    %al,(%rax)
  600e37:	00 0c 00             	add    %cl,(%rax,%rax,1)
  600e3a:	00 00                	add    %al,(%rax)
  600e3c:	00 00                	add    %al,(%rax)
  600e3e:	00 00                	add    %al,(%rax)
  600e40:	08 07                	or     %al,(%rdi)
  600e42:	40 00 00             	add    %al,(%rax)
  600e45:	00 00                	add    %al,(%rax)
  600e47:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # 600e4d <_DYNAMIC+0x55>
  600e4d:	00 00                	add    %al,(%rax)
  600e4f:	00 f4                	add    %dh,%ah
  600e51:	0a 40 00             	or     0x0(%rax),%al
  600e54:	00 00                	add    %al,(%rax)
  600e56:	00 00                	add    %al,(%rax)
  600e58:	19 00                	sbb    %eax,(%rax)
  600e5a:	00 00                	add    %al,(%rax)
  600e5c:	00 00                	add    %al,(%rax)
  600e5e:	00 00                	add    %al,(%rax)
  600e60:	d8 0d 60 00 00 00    	fmuls  0x60(%rip)        # 600ec6 <_DYNAMIC+0xce>
  600e66:	00 00                	add    %al,(%rax)
  600e68:	1b 00                	sbb    (%rax),%eax
  600e6a:	00 00                	add    %al,(%rax)
  600e6c:	00 00                	add    %al,(%rax)
  600e6e:	00 00                	add    %al,(%rax)
  600e70:	10 00                	adc    %al,(%rax)
  600e72:	00 00                	add    %al,(%rax)
  600e74:	00 00                	add    %al,(%rax)
  600e76:	00 00                	add    %al,(%rax)
  600e78:	1a 00                	sbb    (%rax),%al
  600e7a:	00 00                	add    %al,(%rax)
  600e7c:	00 00                	add    %al,(%rax)
  600e7e:	00 00                	add    %al,(%rax)
  600e80:	e8 0d 60 00 00       	callq  606e92 <_end+0x5cfa>
  600e85:	00 00                	add    %al,(%rax)
  600e87:	00 1c 00             	add    %bl,(%rax,%rax,1)
  600e8a:	00 00                	add    %al,(%rax)
  600e8c:	00 00                	add    %al,(%rax)
  600e8e:	00 00                	add    %al,(%rax)
  600e90:	08 00                	or     %al,(%rax)
  600e92:	00 00                	add    %al,(%rax)
  600e94:	00 00                	add    %al,(%rax)
  600e96:	00 00                	add    %al,(%rax)
  600e98:	f5                   	cmc    
  600e99:	fe                   	(bad)  
  600e9a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600e9d:	00 00                	add    %al,(%rax)
  600e9f:	00 98 02 40 00 00    	add    %bl,0x4002(%rax)
  600ea5:	00 00                	add    %al,(%rax)
  600ea7:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 600ead <_DYNAMIC+0xb5>
  600ead:	00 00                	add    %al,(%rax)
  600eaf:	00 18                	add    %bl,(%rax)
  600eb1:	04 40                	add    $0x40,%al
  600eb3:	00 00                	add    %al,(%rax)
  600eb5:	00 00                	add    %al,(%rax)
  600eb7:	00 06                	add    %al,(%rsi)
  600eb9:	00 00                	add    %al,(%rax)
  600ebb:	00 00                	add    %al,(%rax)
  600ebd:	00 00                	add    %al,(%rax)
  600ebf:	00 c8                	add    %cl,%al
  600ec1:	02 40 00             	add    0x0(%rax),%al
  600ec4:	00 00                	add    %al,(%rax)
  600ec6:	00 00                	add    %al,(%rax)
  600ec8:	0a 00                	or     (%rax),%al
  600eca:	00 00                	add    %al,(%rax)
  600ecc:	00 00                	add    %al,(%rax)
  600ece:	00 00                	add    %al,(%rax)
  600ed0:	8a 01                	mov    (%rcx),%al
  600ed2:	00 00                	add    %al,(%rax)
  600ed4:	00 00                	add    %al,(%rax)
  600ed6:	00 00                	add    %al,(%rax)
  600ed8:	0b 00                	or     (%rax),%eax
  600eda:	00 00                	add    %al,(%rax)
  600edc:	00 00                	add    %al,(%rax)
  600ede:	00 00                	add    %al,(%rax)
  600ee0:	18 00                	sbb    %al,(%rax)
  600ee2:	00 00                	add    %al,(%rax)
  600ee4:	00 00                	add    %al,(%rax)
  600ee6:	00 00                	add    %al,(%rax)
  600ee8:	15 00 00 00 00       	adc    $0x0,%eax
	...
  600ef5:	00 00                	add    %al,(%rax)
  600ef7:	00 03                	add    %al,(%rbx)
	...
  600f01:	10 60 00             	adc    %ah,0x0(%rax)
  600f04:	00 00                	add    %al,(%rax)
  600f06:	00 00                	add    %al,(%rax)
  600f08:	02 00                	add    (%rax),%al
  600f0a:	00 00                	add    %al,(%rax)
  600f0c:	00 00                	add    %al,(%rax)
  600f0e:	00 00                	add    %al,(%rax)
  600f10:	d8 00                	fadds  (%rax)
  600f12:	00 00                	add    %al,(%rax)
  600f14:	00 00                	add    %al,(%rax)
  600f16:	00 00                	add    %al,(%rax)
  600f18:	14 00                	adc    $0x0,%al
  600f1a:	00 00                	add    %al,(%rax)
  600f1c:	00 00                	add    %al,(%rax)
  600f1e:	00 00                	add    %al,(%rax)
  600f20:	07                   	(bad)  
  600f21:	00 00                	add    %al,(%rax)
  600f23:	00 00                	add    %al,(%rax)
  600f25:	00 00                	add    %al,(%rax)
  600f27:	00 17                	add    %dl,(%rdi)
  600f29:	00 00                	add    %al,(%rax)
  600f2b:	00 00                	add    %al,(%rax)
  600f2d:	00 00                	add    %al,(%rax)
  600f2f:	00 30                	add    %dh,(%rax)
  600f31:	06                   	(bad)  
  600f32:	40 00 00             	add    %al,(%rax)
  600f35:	00 00                	add    %al,(%rax)
  600f37:	00 07                	add    %al,(%rdi)
	...
  600f41:	06                   	(bad)  
  600f42:	40 00 00             	add    %al,(%rax)
  600f45:	00 00                	add    %al,(%rax)
  600f47:	00 08                	add    %cl,(%rax)
  600f49:	00 00                	add    %al,(%rax)
  600f4b:	00 00                	add    %al,(%rax)
  600f4d:	00 00                	add    %al,(%rax)
  600f4f:	00 30                	add    %dh,(%rax)
  600f51:	00 00                	add    %al,(%rax)
  600f53:	00 00                	add    %al,(%rax)
  600f55:	00 00                	add    %al,(%rax)
  600f57:	00 09                	add    %cl,(%rcx)
  600f59:	00 00                	add    %al,(%rax)
  600f5b:	00 00                	add    %al,(%rax)
  600f5d:	00 00                	add    %al,(%rax)
  600f5f:	00 18                	add    %bl,(%rax)
  600f61:	00 00                	add    %al,(%rax)
  600f63:	00 00                	add    %al,(%rax)
  600f65:	00 00                	add    %al,(%rax)
  600f67:	00 fe                	add    %bh,%dh
  600f69:	ff                   	(bad)  
  600f6a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f6d:	00 00                	add    %al,(%rax)
  600f6f:	00 c0                	add    %al,%al
  600f71:	05 40 00 00 00       	add    $0x40,%eax
  600f76:	00 00                	add    %al,(%rax)
  600f78:	ff                   	(bad)  
  600f79:	ff                   	(bad)  
  600f7a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f7d:	00 00                	add    %al,(%rax)
  600f7f:	00 02                	add    %al,(%rdx)
  600f81:	00 00                	add    %al,(%rax)
  600f83:	00 00                	add    %al,(%rax)
  600f85:	00 00                	add    %al,(%rax)
  600f87:	00 f0                	add    %dh,%al
  600f89:	ff                   	(bad)  
  600f8a:	ff 6f 00             	ljmpq  *0x0(%rdi)
  600f8d:	00 00                	add    %al,(%rax)
  600f8f:	00 a2 05 40 00 00    	add    %ah,0x4005(%rdx)
	...

Disassembly of section .got:

0000000000600ff8 <.got>:
	...

Disassembly of section .got.plt:

0000000000601000 <_GLOBAL_OFFSET_TABLE_>:
  601000:	f8                   	clc    
  601001:	0d 60 00 00 00       	or     $0x60,%eax
	...
  601016:	00 00                	add    %al,(%rax)
  601018:	46 07                	rex.RX (bad) 
  60101a:	40 00 00             	add    %al,(%rax)
  60101d:	00 00                	add    %al,(%rax)
  60101f:	00 56 07             	add    %dl,0x7(%rsi)
  601022:	40 00 00             	add    %al,(%rax)
  601025:	00 00                	add    %al,(%rax)
  601027:	00 66 07             	add    %ah,0x7(%rsi)
  60102a:	40 00 00             	add    %al,(%rax)
  60102d:	00 00                	add    %al,(%rax)
  60102f:	00 76 07             	add    %dh,0x7(%rsi)
  601032:	40 00 00             	add    %al,(%rax)
  601035:	00 00                	add    %al,(%rax)
  601037:	00 86 07 40 00 00    	add    %al,0x4007(%rsi)
  60103d:	00 00                	add    %al,(%rax)
  60103f:	00 96 07 40 00 00    	add    %dl,0x4007(%rsi)
  601045:	00 00                	add    %al,(%rax)
  601047:	00 a6 07 40 00 00    	add    %ah,0x4007(%rsi)
  60104d:	00 00                	add    %al,(%rax)
  60104f:	00 b6 07 40 00 00    	add    %dh,0x4007(%rsi)
  601055:	00 00                	add    %al,(%rax)
  601057:	00 c6                	add    %al,%dh
  601059:	07                   	(bad)  
  60105a:	40 00 00             	add    %al,(%rax)
  60105d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000601060 <__data_start>:
  601060:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

0000000000601080 <_ZSt4cout@@GLIBCXX_3.4>:
	...

0000000000601190 <completed.6344>:
	...

0000000000601191 <_ZStL8__ioinit>:
  601191:	00 00                	add    %al,(%rax)
  601193:	00 00                	add    %al,(%rax)
  601195:	00 00                	add    %al,(%rax)
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 47 4e             	sub    %al,0x4e(%rdi)
   8:	55                   	push   %rbp
   9:	29 20                	sub    %esp,(%rax)
   b:	34 2e                	xor    $0x2e,%al
   d:	38 2e                	cmp    %ch,(%rsi)
   f:	35 20 32 30 31       	xor    $0x31303220,%eax
  14:	35 30 36 32 33       	xor    $0x33323630,%eax
  19:	20 28                	and    %ch,(%rax)
  1b:	52                   	push   %rdx
  1c:	65 64 20 48 61       	gs and %cl,%fs:0x61(%rax)
  21:	74 20                	je     43 <_init-0x4006c5>
  23:	34 2e                	xor    $0x2e,%al
  25:	38 2e                	cmp    %ch,(%rsi)
  27:	35 2d 31 31 29       	xor    $0x2931312d,%eax
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	5c                   	pop    %rsp
   1:	00 00                	add    %al,(%rax)
   3:	00 02                	add    %al,(%rdx)
   5:	00 00                	add    %al,(%rax)
   7:	00 00                	add    %al,(%rax)
   9:	00 08                	add    %cl,(%rax)
   b:	00 00                	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 bd 08 40 00 00    	add    %bh,0x4008(%rbp)
  15:	00 00                	add    %al,(%rax)
  17:	00 7f 01             	add    %bh,0x1(%rdi)
  1a:	00 00                	add    %al,(%rax)
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	3c 0a                	cmp    $0xa,%al
  22:	40 00 00             	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 21                	add    %ah,(%rcx)
  29:	00 00                	add    %al,(%rax)
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
  2f:	00 5d 0a             	add    %bl,0xa(%rbp)
  32:	40 00 00             	add    %al,(%rax)
  35:	00 00                	add    %al,(%rax)
  37:	00 0b                	add    %cl,(%rbx)
  39:	00 00                	add    %al,(%rax)
  3b:	00 00                	add    %al,(%rax)
  3d:	00 00                	add    %al,(%rax)
  3f:	00 68 0a             	add    %ch,0xa(%rax)
  42:	40 00 00             	add    %al,(%rax)
  45:	00 00                	add    %al,(%rax)
  47:	00 0b                	add    %cl,(%rbx)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
       0:	67 16                	addr32 (bad) 
       2:	00 00                	add    %al,(%rax)
       4:	04 00                	add    $0x0,%al
       6:	00 00                	add    %al,(%rax)
       8:	00 00                	add    %al,(%rax)
       a:	08 01                	or     %al,(%rcx)
       c:	31 01                	xor    %eax,(%rcx)
       e:	00 00                	add    %al,(%rax)
      10:	04 47                	add    $0x47,%al
      12:	02 00                	add    (%rax),%al
      14:	00 ab 03 00 00 00    	add    %ch,0x3(%rbx)
	...
      26:	00 00                	add    %al,(%rax)
      28:	00 02                	add    %al,(%rdx)
      2a:	58                   	pop    %rax
      2b:	02 00                	add    (%rax),%al
      2d:	00 03                	add    %al,(%rbx)
      2f:	0d 0a 00 00 04       	or     $0x400000a,%eax
      34:	40 29 00             	rex sub %eax,(%rax)
      37:	00 00                	add    %al,(%rax)
      39:	04 08                	add    $0x8,%al
      3b:	07                   	(bad)  
      3c:	22 00                	and    (%rax),%al
      3e:	00 00                	add    %al,(%rax)
      40:	05 a4 0c 00 00       	add    $0xca4,%eax
      45:	18 03                	sbb    %al,(%rbx)
      47:	00 7d 00             	add    %bh,0x0(%rbp)
      4a:	00 00                	add    %al,(%rax)
      4c:	06                   	(bad)  
      4d:	da 06                	fiaddl (%rsi)
      4f:	00 00                	add    %al,(%rax)
      51:	03 00                	add    (%rax),%eax
      53:	7d 00                	jge    55 <_init-0x4006b3>
      55:	00 00                	add    %al,(%rax)
      57:	00 06                	add    %al,(%rsi)
      59:	ff 03                	incl   (%rbx)
      5b:	00 00                	add    %al,(%rax)
      5d:	03 00                	add    (%rax),%eax
      5f:	7d 00                	jge    61 <_init-0x4006a7>
      61:	00 00                	add    %al,(%rax)
      63:	04 06                	add    $0x6,%al
      65:	f8                   	clc    
      66:	07                   	(bad)  
      67:	00 00                	add    %al,(%rax)
      69:	03 00                	add    (%rax),%eax
      6b:	84 00                	test   %al,(%rax)
      6d:	00 00                	add    %al,(%rax)
      6f:	08 06                	or     %al,(%rsi)
      71:	1a 09                	sbb    (%rcx),%cl
      73:	00 00                	add    %al,(%rax)
      75:	03 00                	add    (%rax),%eax
      77:	84 00                	test   %al,(%rax)
      79:	00 00                	add    %al,(%rax)
      7b:	10 00                	adc    %al,(%rax)
      7d:	04 04                	add    $0x4,%al
      7f:	07                   	(bad)  
      80:	0d 09 00 00 07       	or     $0x7000009,%eax
      85:	08 03                	or     %al,(%rbx)
      87:	1b 00                	sbb    (%rax),%eax
      89:	00 00                	add    %al,(%rax)
      8b:	05 d4 91 00 00       	add    $0x91d4,%eax
      90:	00 04 08             	add    %al,(%rax,%rcx,1)
      93:	07                   	(bad)  
      94:	08 09                	or     %cl,(%rcx)
      96:	00 00                	add    %al,(%rax)
      98:	08 26                	or     %ah,(%rsi)
      9a:	0a 00                	or     (%rax),%al
      9c:	00 05 61 01 7d 00    	add    %al,0x7d0161(%rip)        # 7d0203 <_end+0x1cf06b>
      a2:	00 00                	add    %al,(%rax)
      a4:	09 08                	or     %ecx,(%rax)
      a6:	06                   	(bad)  
      a7:	53                   	push   %rbx
      a8:	01 0b                	add    %ecx,(%rbx)
      aa:	00 00                	add    %al,(%rax)
      ac:	e8 00 00 00 0a       	callq  a0000b1 <_end+0x99fef19>
      b1:	04 06                	add    $0x6,%al
      b3:	56                   	push   %rsi
      b4:	cf                   	iret   
      b5:	00 00                	add    %al,(%rax)
      b7:	00 0b                	add    %cl,(%rbx)
      b9:	09 01                	or     %eax,(%rcx)
      bb:	00 00                	add    %al,(%rax)
      bd:	06                   	(bad)  
      be:	58                   	pop    %rax
      bf:	7d 00                	jge    c1 <_init-0x400647>
      c1:	00 00                	add    %al,(%rax)
      c3:	0b ac 08 00 00 06 5c 	or     0x5c060000(%rax,%rcx,1),%ebp
      ca:	e8 00 00 00 00       	callq  cf <_init-0x400639>
      cf:	06                   	(bad)  
      d0:	26 08 00             	or     %al,%es:(%rax)
      d3:	00 06                	add    %al,(%rsi)
      d5:	54                   	push   %rsp
      d6:	ff 00                	incl   (%rax)
      d8:	00 00                	add    %al,(%rax)
      da:	00 06                	add    %al,(%rsi)
      dc:	33 00                	xor    (%rax),%eax
      de:	00 00                	add    %al,(%rax)
      e0:	06                   	(bad)  
      e1:	5d                   	pop    %rbp
      e2:	b0 00                	mov    $0x0,%al
      e4:	00 00                	add    %al,(%rax)
      e6:	04 00                	add    $0x0,%al
      e8:	0c f8                	or     $0xf8,%al
      ea:	00 00                	add    %al,(%rax)
      ec:	00 f8                	add    %bh,%al
      ee:	00 00                	add    %al,(%rax)
      f0:	00 0d 39 00 00 00    	add    %cl,0x39(%rip)        # 12f <_init-0x4005d9>
      f6:	03 00                	add    (%rax),%eax
      f8:	04 01                	add    $0x1,%al
      fa:	06                   	(bad)  
      fb:	c0 02 00             	rolb   $0x0,(%rdx)
      fe:	00 0e                	add    %cl,(%rsi)
     100:	04 05                	add    $0x5,%al
     102:	69 6e 74 00 03 03 0b 	imul   $0xb030300,0x74(%rsi),%ebp
     109:	00 00                	add    %al,(%rax)
     10b:	06                   	(bad)  
     10c:	5e                   	pop    %rsi
     10d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     10e:	00 00                	add    %al,(%rax)
     110:	00 03                	add    %al,(%rbx)
     112:	05 0b 00 00 06       	add    $0x600000b,%eax
     117:	6a 06                	pushq  $0x6
     119:	01 00                	add    %eax,(%rax)
     11b:	00 04 02             	add    %al,(%rdx,%rax,1)
     11e:	07                   	(bad)  
     11f:	10 0c 00             	adc    %cl,(%rax,%rax,1)
     122:	00 0f                	add    %cl,(%rdi)
     124:	ff 00                	incl   (%rax)
     126:	00 00                	add    %al,(%rax)
     128:	10 08                	adc    %cl,(%rax)
     12a:	2e 01 00             	add    %eax,%cs:(%rax)
     12d:	00 0f                	add    %cl,(%rdi)
     12f:	f8                   	clc    
     130:	00 00                	add    %al,(%rax)
     132:	00 11                	add    %dl,(%rcx)
     134:	73 74                	jae    1aa <_init-0x40055e>
     136:	64 00 03             	add    %al,%fs:(%rbx)
     139:	00 82 08 00 00 12    	add    %al,0x12000008(%rdx)
     13f:	07                   	(bad)  
     140:	40 11 01             	rex adc %eax,(%rcx)
     143:	00 00                	add    %al,(%rax)
     145:	12 07                	adc    (%rdi),%al
     147:	8b 98 00 00 00 12    	mov    0x12000000(%rax),%ebx
     14d:	07                   	(bad)  
     14e:	8d 82 08 00 00 12    	lea    0x12000008(%rdx),%eax
     154:	07                   	(bad)  
     155:	8e 98 08 00 00 12    	mov    0x12000008(%rax),%ds
     15b:	07                   	(bad)  
     15c:	8f                   	(bad)  
     15d:	b4 08                	mov    $0x8,%ah
     15f:	00 00                	add    %al,(%rax)
     161:	12 07                	adc    (%rdi),%al
     163:	90                   	nop
     164:	e1 08                	loope  16e <_init-0x40059a>
     166:	00 00                	add    %al,(%rax)
     168:	12 07                	adc    (%rdi),%al
     16a:	91                   	xchg   %eax,%ecx
     16b:	fc                   	cld    
     16c:	08 00                	or     %al,(%rax)
     16e:	00 12                	add    %dl,(%rdx)
     170:	07                   	(bad)  
     171:	92                   	xchg   %eax,%edx
     172:	22 09                	and    (%rcx),%cl
     174:	00 00                	add    %al,(%rax)
     176:	12 07                	adc    (%rdi),%al
     178:	93                   	xchg   %eax,%ebx
     179:	3d 09 00 00 12       	cmp    $0x12000009,%eax
     17e:	07                   	(bad)  
     17f:	94                   	xchg   %eax,%esp
     180:	59                   	pop    %rcx
     181:	09 00                	or     %eax,(%rax)
     183:	00 12                	add    %dl,(%rdx)
     185:	07                   	(bad)  
     186:	95                   	xchg   %eax,%ebp
     187:	75 09                	jne    192 <_init-0x400576>
     189:	00 00                	add    %al,(%rax)
     18b:	12 07                	adc    (%rdi),%al
     18d:	96                   	xchg   %eax,%esi
     18e:	8b 09                	mov    (%rcx),%ecx
     190:	00 00                	add    %al,(%rax)
     192:	12 07                	adc    (%rdi),%al
     194:	97                   	xchg   %eax,%edi
     195:	97                   	xchg   %eax,%edi
     196:	09 00                	or     %eax,(%rax)
     198:	00 12                	add    %dl,(%rdx)
     19a:	07                   	(bad)  
     19b:	98                   	cwtl   
     19c:	bd 09 00 00 12       	mov    $0x12000009,%ebp
     1a1:	07                   	(bad)  
     1a2:	99                   	cltd   
     1a3:	e2 09                	loop   1ae <_init-0x40055a>
     1a5:	00 00                	add    %al,(%rax)
     1a7:	12 07                	adc    (%rdi),%al
     1a9:	9a                   	(bad)  
     1aa:	03 0a                	add    (%rdx),%ecx
     1ac:	00 00                	add    %al,(%rax)
     1ae:	12 07                	adc    (%rdi),%al
     1b0:	9b                   	fwait
     1b1:	2e 0a 00             	or     %cs:(%rax),%al
     1b4:	00 12                	add    %dl,(%rdx)
     1b6:	07                   	(bad)  
     1b7:	9c                   	pushfq 
     1b8:	49 0a 00             	rex.WB or (%r8),%al
     1bb:	00 12                	add    %dl,(%rdx)
     1bd:	07                   	(bad)  
     1be:	9e                   	sahf   
     1bf:	5f                   	pop    %rdi
     1c0:	0a 00                	or     (%rax),%al
     1c2:	00 12                	add    %dl,(%rdx)
     1c4:	07                   	(bad)  
     1c5:	a0 80 0a 00 00 12 07 	movabs 0x9ca1071200000a80,%al
     1cc:	a1 9c 
     1ce:	0a 00                	or     (%rax),%al
     1d0:	00 12                	add    %dl,(%rdx)
     1d2:	07                   	(bad)  
     1d3:	a2 b7 0a 00 00 12 07 	movabs %al,0xdda4071200000ab7
     1da:	a4 dd 
     1dc:	0a 00                	or     (%rax),%al
     1de:	00 12                	add    %dl,(%rdx)
     1e0:	07                   	(bad)  
     1e1:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     1e2:	fd                   	std    
     1e3:	0a 00                	or     (%rax),%al
     1e5:	00 12                	add    %dl,(%rdx)
     1e7:	07                   	(bad)  
     1e8:	aa                   	stos   %al,%es:(%rdi)
     1e9:	22 0b                	and    (%rbx),%cl
     1eb:	00 00                	add    %al,(%rax)
     1ed:	12 07                	adc    (%rdi),%al
     1ef:	ac                   	lods   %ds:(%rsi),%al
     1f0:	42 0b 00             	rex.X or (%rax),%eax
     1f3:	00 12                	add    %dl,(%rdx)
     1f5:	07                   	(bad)  
     1f6:	ae                   	scas   %es:(%rdi),%al
     1f7:	5d                   	pop    %rbp
     1f8:	0b 00                	or     (%rax),%eax
     1fa:	00 12                	add    %dl,(%rdx)
     1fc:	07                   	(bad)  
     1fd:	b0 78                	mov    $0x78,%al
     1ff:	0b 00                	or     (%rax),%eax
     201:	00 12                	add    %dl,(%rdx)
     203:	07                   	(bad)  
     204:	b1 9e                	mov    $0x9e,%cl
     206:	0b 00                	or     (%rax),%eax
     208:	00 12                	add    %dl,(%rdx)
     20a:	07                   	(bad)  
     20b:	b2 b8                	mov    $0xb8,%dl
     20d:	0b 00                	or     (%rax),%eax
     20f:	00 12                	add    %dl,(%rdx)
     211:	07                   	(bad)  
     212:	b3 d2                	mov    $0xd2,%bl
     214:	0b 00                	or     (%rax),%eax
     216:	00 12                	add    %dl,(%rdx)
     218:	07                   	(bad)  
     219:	b4 ec                	mov    $0xec,%ah
     21b:	0b 00                	or     (%rax),%eax
     21d:	00 12                	add    %dl,(%rdx)
     21f:	07                   	(bad)  
     220:	b5 06                	mov    $0x6,%ch
     222:	0c 00                	or     $0x0,%al
     224:	00 12                	add    %dl,(%rdx)
     226:	07                   	(bad)  
     227:	b6 20                	mov    $0x20,%dh
     229:	0c 00                	or     $0x0,%al
     22b:	00 12                	add    %dl,(%rdx)
     22d:	07                   	(bad)  
     22e:	b7 e0                	mov    $0xe0,%bh
     230:	0c 00                	or     $0x0,%al
     232:	00 12                	add    %dl,(%rdx)
     234:	07                   	(bad)  
     235:	b8 f6 0c 00 00       	mov    $0xcf6,%eax
     23a:	12 07                	adc    (%rdi),%al
     23c:	b9 15 0d 00 00       	mov    $0xd15,%ecx
     241:	12 07                	adc    (%rdi),%al
     243:	ba 34 0d 00 00       	mov    $0xd34,%edx
     248:	12 07                	adc    (%rdi),%al
     24a:	bb 53 0d 00 00       	mov    $0xd53,%ebx
     24f:	12 07                	adc    (%rdi),%al
     251:	bc 7e 0d 00 00       	mov    $0xd7e,%esp
     256:	12 07                	adc    (%rdi),%al
     258:	bd 99 0d 00 00       	mov    $0xd99,%ebp
     25d:	12 07                	adc    (%rdi),%al
     25f:	bf c1 0d 00 00       	mov    $0xdc1,%edi
     264:	12 07                	adc    (%rdi),%al
     266:	c1 e3 0d             	shl    $0xd,%ebx
     269:	00 00                	add    %al,(%rax)
     26b:	12 07                	adc    (%rdi),%al
     26d:	c2 03 0e             	retq   $0xe03
     270:	00 00                	add    %al,(%rax)
     272:	12 07                	adc    (%rdi),%al
     274:	c3                   	retq   
     275:	2a 0e                	sub    (%rsi),%cl
     277:	00 00                	add    %al,(%rax)
     279:	12 07                	adc    (%rdi),%al
     27b:	c4                   	(bad)  
     27c:	4a 0e                	rex.WX (bad) 
     27e:	00 00                	add    %al,(%rax)
     280:	12 07                	adc    (%rdi),%al
     282:	c5 69 0e             	(bad)  
     285:	00 00                	add    %al,(%rax)
     287:	12 07                	adc    (%rdi),%al
     289:	c6                   	(bad)  
     28a:	7f 0e                	jg     29a <_init-0x40046e>
     28c:	00 00                	add    %al,(%rax)
     28e:	12 07                	adc    (%rdi),%al
     290:	c7                   	(bad)  
     291:	9f                   	lahf   
     292:	0e                   	(bad)  
     293:	00 00                	add    %al,(%rax)
     295:	12 07                	adc    (%rdi),%al
     297:	c8 bf 0e 00          	enterq $0xebf,$0x0
     29b:	00 12                	add    %dl,(%rdx)
     29d:	07                   	(bad)  
     29e:	c9                   	leaveq 
     29f:	df 0e                	fisttp (%rsi)
     2a1:	00 00                	add    %al,(%rax)
     2a3:	12 07                	adc    (%rdi),%al
     2a5:	ca ff 0e             	lret   $0xeff
     2a8:	00 00                	add    %al,(%rax)
     2aa:	12 07                	adc    (%rdi),%al
     2ac:	cb                   	lret   
     2ad:	16                   	(bad)  
     2ae:	0f 00 00             	sldt   (%rax)
     2b1:	12 07                	adc    (%rdi),%al
     2b3:	cc                   	int3   
     2b4:	2d 0f 00 00 12       	sub    $0x1200000f,%eax
     2b9:	07                   	(bad)  
     2ba:	cd 4b                	int    $0x4b
     2bc:	0f 00 00             	sldt   (%rax)
     2bf:	12 07                	adc    (%rdi),%al
     2c1:	ce                   	(bad)  
     2c2:	6a 0f                	pushq  $0xf
     2c4:	00 00                	add    %al,(%rax)
     2c6:	12 07                	adc    (%rdi),%al
     2c8:	cf                   	iret   
     2c9:	88 0f                	mov    %cl,(%rdi)
     2cb:	00 00                	add    %al,(%rax)
     2cd:	12 07                	adc    (%rdi),%al
     2cf:	d0 a7 0f 00 00 13    	shlb   0x1300000f(%rdi)
     2d5:	07                   	(bad)  
     2d6:	08 01                	or     %al,(%rcx)
     2d8:	42 11 00             	rex.X adc %eax,(%rax)
     2db:	00 13                	add    %dl,(%rbx)
     2dd:	07                   	(bad)  
     2de:	09 01                	or     %eax,(%rcx)
     2e0:	64 11 00             	adc    %eax,%fs:(%rax)
     2e3:	00 13                	add    %dl,(%rbx)
     2e5:	07                   	(bad)  
     2e6:	0a 01                	or     (%rcx),%al
     2e8:	8b 11                	mov    (%rcx),%edx
     2ea:	00 00                	add    %al,(%rax)
     2ec:	14 6d                	adc    $0x6d,%al
     2ee:	0a 00                	or     (%rax),%al
     2f0:	00 11                	add    %dl,(%rcx)
     2f2:	30 05 79 07 00 00    	xor    %al,0x779(%rip)        # a71 <_init-0x3ffc97>
     2f8:	01 08                	add    %ecx,(%rax)
     2fa:	e9 ba 04 00 00       	jmpq   7b9 <_init-0x3fff4f>
     2ff:	03 63 0a             	add    0xa(%rbx),%esp
     302:	00 00                	add    %al,(%rax)
     304:	08 eb                	or     %ch,%bl
     306:	f8                   	clc    
     307:	00 00                	add    %al,(%rax)
     309:	00 03                	add    %al,(%rbx)
     30b:	57                   	push   %rdi
     30c:	0a 00                	or     (%rax),%al
     30e:	00 08                	add    %cl,(%rax)
     310:	ec                   	in     (%dx),%al
     311:	ff 00                	incl   (%rax)
     313:	00 00                	add    %al,(%rax)
     315:	15 65 0c 00 00       	adc    $0xc65,%eax
     31a:	08 f2                	or     %dh,%dl
     31c:	d7                   	xlat   %ds:(%rbx)
     31d:	0a 00                	or     (%rax),%al
     31f:	00 2f                	add    %ch,(%rdi)
     321:	03 00                	add    (%rax),%eax
     323:	00 16                	add    %dl,(%rsi)
     325:	da 11                	ficoml (%rcx)
     327:	00 00                	add    %al,(%rax)
     329:	16                   	(bad)  
     32a:	e0 11                	loopne 33d <_init-0x4003cb>
     32c:	00 00                	add    %al,(%rax)
     32e:	00 0f                	add    %cl,(%rdi)
     330:	ff 02                	incl   (%rdx)
     332:	00 00                	add    %al,(%rax)
     334:	17                   	(bad)  
     335:	65 71 00             	gs jno 338 <_init-0x4003d0>
     338:	08 f6                	or     %dh,%dh
     33a:	c8 09 00 00          	enterq $0x9,$0x0
     33e:	e6 11                	out    %al,$0x11
     340:	00 00                	add    %al,(%rax)
     342:	51                   	push   %rcx
     343:	03 00                	add    (%rax),%eax
     345:	00 16                	add    %dl,(%rsi)
     347:	e0 11                	loopne 35a <_init-0x4003ae>
     349:	00 00                	add    %al,(%rax)
     34b:	16                   	(bad)  
     34c:	e0 11                	loopne 35f <_init-0x4003a9>
     34e:	00 00                	add    %al,(%rax)
     350:	00 17                	add    %dl,(%rdi)
     352:	6c                   	insb   (%dx),%es:(%rdi)
     353:	74 00                	je     355 <_init-0x4003b3>
     355:	08 fa                	or     %bh,%dl
     357:	27                   	(bad)  
     358:	05 00 00 e6 11       	add    $0x11e60000,%eax
     35d:	00 00                	add    %al,(%rax)
     35f:	6e                   	outsb  %ds:(%rsi),(%dx)
     360:	03 00                	add    (%rax),%eax
     362:	00 16                	add    %dl,(%rsi)
     364:	e0 11                	loopne 377 <_init-0x400391>
     366:	00 00                	add    %al,(%rax)
     368:	16                   	(bad)  
     369:	e0 11                	loopne 37c <_init-0x40038c>
     36b:	00 00                	add    %al,(%rax)
     36d:	00 18                	add    %bl,(%rax)
     36f:	92                   	xchg   %eax,%edx
     370:	04 00                	add    $0x0,%al
     372:	00 08                	add    %cl,(%rax)
     374:	fe                   	(bad)  
     375:	dd 08                	fisttpll (%rax)
     377:	00 00                	add    %al,(%rax)
     379:	ff 00                	incl   (%rax)
     37b:	00 00                	add    %al,(%rax)
     37d:	91                   	xchg   %eax,%ecx
     37e:	03 00                	add    (%rax),%eax
     380:	00 16                	add    %dl,(%rsi)
     382:	ed                   	in     (%dx),%eax
     383:	11 00                	adc    %eax,(%rax)
     385:	00 16                	add    %dl,(%rsi)
     387:	ed                   	in     (%dx),%eax
     388:	11 00                	adc    %eax,(%rax)
     38a:	00 16                	add    %dl,(%rsi)
     38c:	ba 04 00 00 00       	mov    $0x4,%edx
     391:	19 56 09             	sbb    %edx,0x9(%rsi)
     394:	00 00                	add    %al,(%rax)
     396:	08 02                	or     %al,(%rdx)
     398:	01 99 0a 00 00 ba    	add    %ebx,-0x45fffff6(%rcx)
     39e:	04 00                	add    $0x0,%al
     3a0:	00 ab 03 00 00 16    	add    %ch,0x16000003(%rbx)
     3a6:	ed                   	in     (%dx),%eax
     3a7:	11 00                	adc    %eax,(%rax)
     3a9:	00 00                	add    %al,(%rax)
     3ab:	19 a2 04 00 00 08    	sbb    %esp,0x8000004(%rdx)
     3b1:	06                   	(bad)  
     3b2:	01 67 06             	add    %esp,0x6(%rdi)
     3b5:	00 00                	add    %al,(%rax)
     3b7:	ed                   	in     (%dx),%eax
     3b8:	11 00                	adc    %eax,(%rax)
     3ba:	00 cf                	add    %cl,%bh
     3bc:	03 00                	add    (%rax),%eax
     3be:	00 16                	add    %dl,(%rsi)
     3c0:	ed                   	in     (%dx),%eax
     3c1:	11 00                	adc    %eax,(%rax)
     3c3:	00 16                	add    %dl,(%rsi)
     3c5:	ba 04 00 00 16       	mov    $0x16000004,%edx
     3ca:	e0 11                	loopne 3dd <_init-0x40032b>
     3cc:	00 00                	add    %al,(%rax)
     3ce:	00 19                	add    %bl,(%rcx)
     3d0:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     3d1:	03 00                	add    (%rax),%eax
     3d3:	00 08                	add    %cl,(%rax)
     3d5:	0a 01                	or     (%rcx),%al
     3d7:	0f 01 00             	sgdt   (%rax)
     3da:	00 f3                	add    %dh,%bl
     3dc:	11 00                	adc    %eax,(%rax)
     3de:	00 f3                	add    %dh,%bl
     3e0:	03 00                	add    (%rax),%eax
     3e2:	00 16                	add    %dl,(%rsi)
     3e4:	f3 11 00             	repz adc %eax,(%rax)
     3e7:	00 16                	add    %dl,(%rsi)
     3e9:	ed                   	in     (%dx),%eax
     3ea:	11 00                	adc    %eax,(%rax)
     3ec:	00 16                	add    %dl,(%rsi)
     3ee:	ba 04 00 00 00       	mov    $0x4,%edx
     3f3:	19 13                	sbb    %edx,(%rbx)
     3f5:	02 00                	add    (%rax),%al
     3f7:	00 08                	add    %cl,(%rax)
     3f9:	0e                   	(bad)  
     3fa:	01 05 05 00 00 f3    	add    %eax,-0xcfffffb(%rip)        # fffffffff3000405 <_end+0xfffffffff29ff26d>
     400:	11 00                	adc    %eax,(%rax)
     402:	00 17                	add    %dl,(%rdi)
     404:	04 00                	add    $0x0,%al
     406:	00 16                	add    %dl,(%rsi)
     408:	f3 11 00             	repz adc %eax,(%rax)
     40b:	00 16                	add    %dl,(%rsi)
     40d:	ed                   	in     (%dx),%eax
     40e:	11 00                	adc    %eax,(%rax)
     410:	00 16                	add    %dl,(%rsi)
     412:	ba 04 00 00 00       	mov    $0x4,%edx
     417:	19 65 0c             	sbb    %esp,0xc(%rbp)
     41a:	00 00                	add    %al,(%rax)
     41c:	08 12                	or     %dl,(%rdx)
     41e:	01 3d 08 00 00 f3    	add    %edi,-0xcfffff8(%rip)        # fffffffff300042c <_end+0xfffffffff29ff294>
     424:	11 00                	adc    %eax,(%rax)
     426:	00 3b                	add    %bh,(%rbx)
     428:	04 00                	add    $0x0,%al
     42a:	00 16                	add    %dl,(%rsi)
     42c:	f3 11 00             	repz adc %eax,(%rax)
     42f:	00 16                	add    %dl,(%rsi)
     431:	ba 04 00 00 16       	mov    $0x16000004,%edx
     436:	ff 02                	incl   (%rdx)
     438:	00 00                	add    %al,(%rax)
     43a:	00 19                	add    %bl,(%rcx)
     43c:	60                   	(bad)  
     43d:	0a 00                	or     (%rax),%al
     43f:	00 08                	add    %cl,(%rax)
     441:	16                   	(bad)  
     442:	01 ca                	add    %ecx,%edx
     444:	05 00 00 ff 02       	add    $0x2ff0000,%eax
     449:	00 00                	add    %al,(%rax)
     44b:	55                   	push   %rbp
     44c:	04 00                	add    $0x0,%al
     44e:	00 16                	add    %dl,(%rsi)
     450:	f9                   	stc    
     451:	11 00                	adc    %eax,(%rax)
     453:	00 00                	add    %al,(%rax)
     455:	0f 0a                	(bad)  
     457:	03 00                	add    (%rax),%eax
     459:	00 19                	add    %bl,(%rcx)
     45b:	54                   	push   %rsp
     45c:	0a 00                	or     (%rax),%al
     45e:	00 08                	add    %cl,(%rax)
     460:	1c 01                	sbb    $0x1,%al
     462:	88 01                	mov    %al,(%rcx)
     464:	00 00                	add    %al,(%rax)
     466:	0a 03                	or     (%rbx),%al
     468:	00 00                	add    %al,(%rax)
     46a:	74 04                	je     470 <_init-0x400298>
     46c:	00 00                	add    %al,(%rax)
     46e:	16                   	(bad)  
     46f:	e0 11                	loopne 482 <_init-0x400286>
     471:	00 00                	add    %al,(%rax)
     473:	00 19                	add    %bl,(%rcx)
     475:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     476:	05 00 00 08 20       	add    $0x20080000,%eax
     47b:	01 b4 07 00 00 e6 11 	add    %esi,0x11e60000(%rdi,%rax,1)
     482:	00 00                	add    %al,(%rax)
     484:	93                   	xchg   %eax,%ebx
     485:	04 00                	add    $0x0,%al
     487:	00 16                	add    %dl,(%rsi)
     489:	f9                   	stc    
     48a:	11 00                	adc    %eax,(%rax)
     48c:	00 16                	add    %dl,(%rsi)
     48e:	f9                   	stc    
     48f:	11 00                	adc    %eax,(%rax)
     491:	00 00                	add    %al,(%rax)
     493:	1a 65 6f             	sbb    0x6f(%rbp),%ah
     496:	66 00 08             	data16 add %cl,(%rax)
     499:	24 01                	and    $0x1,%al
     49b:	50                   	push   %rax
     49c:	0b 00                	or     (%rax),%eax
     49e:	00 0a                	add    %cl,(%rdx)
     4a0:	03 00                	add    (%rax),%eax
     4a2:	00 1b                	add    %bl,(%rbx)
     4a4:	25 03 00 00 08       	and    $0x8000003,%eax
     4a9:	28 01                	sub    %al,(%rcx)
     4ab:	6c                   	insb   (%dx),%es:(%rdi)
     4ac:	0c 00                	or     $0x0,%al
     4ae:	00 0a                	add    %cl,(%rdx)
     4b0:	03 00                	add    (%rax),%eax
     4b2:	00 16                	add    %dl,(%rsi)
     4b4:	f9                   	stc    
     4b5:	11 00                	adc    %eax,(%rax)
     4b7:	00 00                	add    %al,(%rax)
     4b9:	00 08                	add    %cl,(%rax)
     4bb:	1b 00                	sbb    (%rax),%eax
     4bd:	00 00                	add    %al,(%rax)
     4bf:	09 41 07             	or     %eax,0x7(%rcx)
     4c2:	91                   	xchg   %eax,%ecx
     4c3:	00 00                	add    %al,(%rax)
     4c5:	00 12                	add    %dl,(%rdx)
     4c7:	0a 35 ff 11 00 00    	or     0x11ff(%rip),%dh        # 16cc <_init-0x3ff03c>
     4cd:	12 0a                	adc    (%rdx),%cl
     4cf:	36 2c 13             	ss sub $0x13,%al
     4d2:	00 00                	add    %al,(%rax)
     4d4:	12 0a                	adc    (%rdx),%cl
     4d6:	37                   	(bad)  
     4d7:	46 13 00             	rex.RX adc (%rax),%r8d
     4da:	00 08                	add    %cl,(%rax)
     4dc:	09 04 00             	or     %eax,(%rax,%rax,1)
     4df:	00 09                	add    %cl,(%rcx)
     4e1:	42 07                	rex.X (bad) 
     4e3:	23 0e                	and    (%rsi),%ecx
     4e5:	00 00                	add    %al,(%rax)
     4e7:	1c 59                	sbb    $0x59,%al
     4e9:	06                   	(bad)  
     4ea:	00 00                	add    %al,(%rax)
     4ec:	04 0b                	add    $0xb,%al
     4ee:	33 76 05             	xor    0x5(%rsi),%esi
     4f1:	00 00                	add    %al,(%rax)
     4f3:	1d c3 00 00 00       	sbb    $0xc3,%eax
     4f8:	01 1d 52 06 00 00    	add    %ebx,0x652(%rip)        # b50 <_init-0x3ffbb8>
     4fe:	02 1d 47 05 00 00    	add    0x547(%rip),%bl        # a4b <_init-0x3ffcbd>
     504:	04 1d                	add    $0x1d,%al
     506:	64 04 00             	fs add $0x0,%al
     509:	00 08                	add    %cl,(%rax)
     50b:	1d 86 04 00 00       	sbb    $0x486,%eax
     510:	10 1d 3f 07 00 00    	adc    %bl,0x73f(%rip)        # c55 <_init-0x3ffab3>
     516:	20 1d a5 08 00 00    	and    %bl,0x8a5(%rip)        # dc1 <_init-0x3ff947>
     51c:	c0 00 1d             	rolb   $0x1d,(%rax)
     51f:	ae                   	scas   %es:(%rdi),%al
     520:	02 00                	add    (%rax),%al
     522:	00 80 01 1d 8e 0c    	add    %al,0xc8e1d01(%rax)
     528:	00 00                	add    %al,(%rax)
     52a:	80 02 1d             	addb   $0x1d,(%rdx)
     52d:	6e                   	outsb  %ds:(%rsi),(%dx)
     52e:	05 00 00 80 04       	add    $0x4800000,%eax
     533:	1d c3 06 00 00       	sbb    $0x6c3,%eax
     538:	80 08 1d             	orb    $0x1d,(%rax)
     53b:	38 06                	cmp    %al,(%rsi)
     53d:	00 00                	add    %al,(%rax)
     53f:	80 10 1d             	adcb   $0x1d,(%rax)
     542:	d0 06                	rolb   (%rsi)
     544:	00 00                	add    %al,(%rax)
     546:	80 20 1d             	andb   $0x1d,(%rax)
     549:	bd 09 00 00 80       	mov    $0x80000009,%ebp
     54e:	c0 00 1d             	rolb   $0x1d,(%rax)
     551:	de 07                	fiadd  (%rdi)
     553:	00 00                	add    %al,(%rax)
     555:	80 80 01 1d e4 06 00 	addb   $0x0,0x6e41d01(%rax)
     55c:	00 b0 01 1d 7b 01    	add    %dh,0x17b1d01(%rax)
     562:	00 00                	add    %al,(%rax)
     564:	ca 00 1d             	lret   $0x1d00
     567:	8e 08                	mov    (%rax),%cs
     569:	00 00                	add    %al,(%rax)
     56b:	84 02                	test   %al,(%rdx)
     56d:	1d 0a 08 00 00       	sbb    $0x80a,%eax
     572:	80 80 04 00 1c e9 01 	addb   $0x1,-0x16e3fffc(%rax)
     579:	00 00                	add    %al,(%rax)
     57b:	04 0b                	add    $0xb,%al
     57d:	67 af                	scas   %es:(%edi),%eax
     57f:	05 00 00 1d 7a       	add    $0x7a1d0000,%eax
     584:	03 00                	add    (%rax),%eax
     586:	00 01                	add    %al,(%rcx)
     588:	1d fe 04 00 00       	sbb    $0x4fe,%eax
     58d:	02 1d 0a 03 00 00    	add    0x30a(%rip),%bl        # 89d <_init-0x3ffe6b>
     593:	04 1d                	add    $0x1d,%al
     595:	7a 05                	jp     59c <_init-0x40016c>
     597:	00 00                	add    %al,(%rax)
     599:	08 1d 73 03 00 00    	or     %bl,0x373(%rip)        # 912 <_init-0x3ffdf6>
     59f:	10 1d f7 05 00 00    	adc    %bl,0x5f7(%rip)        # b9c <_init-0x3ffb6c>
     5a5:	20 1d 99 07 00 00    	and    %bl,0x799(%rip)        # d44 <_init-0x3ff9c4>
     5ab:	80 80 04 00 1c 6c 09 	addb   $0x9,0x6c1c0004(%rax)
     5b2:	00 00                	add    %al,(%rax)
     5b4:	04 0b                	add    $0xb,%al
     5b6:	8f                   	(bad)  
     5b7:	dc 05 00 00 1d cd    	faddl  -0x32e30000(%rip)        # ffffffffcd1d05bd <_end+0xffffffffccbcf425>
     5bd:	02 00                	add    (%rax),%al
     5bf:	00 00                	add    %al,(%rax)
     5c1:	1d d0 00 00 00       	sbb    $0xd0,%eax
     5c6:	01 1d 3d 02 00 00    	add    %ebx,0x23d(%rip)        # 809 <_init-0x3ffeff>
     5cc:	02 1d d1 0b 00 00    	add    0xbd1(%rip),%bl        # 11a3 <_init-0x3ff565>
     5d2:	04 1d                	add    $0x1d,%al
     5d4:	2f                   	(bad)  
     5d5:	0b 00                	or     (%rax),%eax
     5d7:	00 80 80 04 00 1c    	add    %al,0x1c000480(%rax)
     5dd:	34 0c                	xor    $0xc,%al
     5df:	00 00                	add    %al,(%rax)
     5e1:	04 0b                	add    $0xb,%al
     5e3:	b5 03                	mov    $0x3,%ch
     5e5:	06                   	(bad)  
     5e6:	00 00                	add    %al,(%rax)
     5e8:	1d fa 00 00 00       	sbb    $0xfa,%eax
     5ed:	00 1d d0 0a 00 00    	add    %bl,0xad0(%rip)        # 10c3 <_init-0x3ff645>
     5f3:	01 1d 14 00 00 00    	add    %ebx,0x14(%rip)        # 60d <_init-0x4000fb>
     5f9:	02 1d 43 09 00 00    	add    0x943(%rip),%bl        # f42 <_init-0x3ff7c6>
     5ff:	80 80 04 00 1e 2d 0a 	addb   $0xa,0x2d1e0004(%rax)
     606:	00 00                	add    %al,(%rax)
     608:	0f 08                	invd   
     60a:	00 00                	add    %al,(%rax)
     60c:	1f                   	(bad)  
     60d:	c2 0b 00             	retq   $0xb
     610:	00 01                	add    %al,(%rcx)
     612:	0b 15 02 01 62 06    	or     0x6620102(%rip),%edx        # 662071a <_end+0x601f582>
     618:	00 00                	add    %al,(%rax)
     61a:	20 be 05 00 00 0b    	and    %bh,0xb000005(%rsi)
     620:	1d 02 62 13 00       	sbb    $0x136202,%eax
     625:	00 20                	add    %ah,(%rax)
     627:	21 02                	and    %eax,(%rdx)
     629:	00 00                	add    %al,(%rax)
     62b:	0b 1e                	or     (%rsi),%ebx
     62d:	02 e6                	add    %dh,%ah
     62f:	11 00                	adc    %eax,(%rax)
     631:	00 21                	add    %ah,(%rcx)
     633:	c2 0b 00             	retq   $0xb
     636:	00 0b                	add    %cl,(%rbx)
     638:	19 02                	sbb    %eax,(%rdx)
     63a:	01 43 06             	add    %eax,0x6(%rbx)
     63d:	00 00                	add    %al,(%rax)
     63f:	49 06                	rex.WB (bad) 
     641:	00 00                	add    %al,(%rax)
     643:	22 7d 13             	and    0x13(%rbp),%bh
     646:	00 00                	add    %al,(%rax)
     648:	00 23                	add    %ah,(%rbx)
     64a:	c1 0b 00             	rorl   $0x0,(%rbx)
     64d:	00 0b                	add    %cl,(%rbx)
     64f:	1a 02                	sbb    (%rdx),%al
     651:	01 56 06             	add    %edx,0x6(%rsi)
     654:	00 00                	add    %al,(%rax)
     656:	22 7d 13             	and    0x13(%rbp),%bh
     659:	00 00                	add    %al,(%rax)
     65b:	22 ff                	and    %bh,%bh
     65d:	00 00                	add    %al,(%rax)
     65f:	00 00                	add    %al,(%rax)
     661:	00 24 41             	add    %ah,(%rcx,%rax,2)
     664:	0c 00                	or     $0x0,%al
     666:	00 0b                	add    %cl,(%rbx)
     668:	ff e7                	jmpq   *%rdi
     66a:	04 00                	add    $0x0,%al
     66c:	00 01                	add    %al,(%rcx)
     66e:	25 c6 00 00 00       	and    $0xc6,%eax
     673:	0b 02                	or     (%rdx),%eax
     675:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     679:	00 01                	add    %al,(%rcx)
     67b:	01 0f                	add    %ecx,(%rdi)
     67d:	62                   	(bad)  
     67e:	06                   	(bad)  
     67f:	00 00                	add    %al,(%rax)
     681:	26 64 65 63 00       	es fs movslq %gs:(%rax),%eax
     686:	0b 05 01 7c 06 00    	or     0x67c01(%rip),%eax        # 6828d <_init-0x39847b>
     68c:	00 01                	add    %al,(%rcx)
     68e:	02 25 4a 05 00 00    	add    0x54a(%rip),%ah        # bde <_init-0x3ffb2a>
     694:	0b 08                	or     (%rax),%ecx
     696:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     69a:	00 01                	add    %al,(%rcx)
     69c:	04 26                	add    $0x26,%al
     69e:	68 65 78 00 0b       	pushq  $0xb007865
     6a3:	0b 01                	or     (%rcx),%eax
     6a5:	7c 06                	jl     6ad <_init-0x40005b>
     6a7:	00 00                	add    %al,(%rax)
     6a9:	01 08                	add    %ecx,(%rax)
     6ab:	25 89 04 00 00       	and    $0x489,%eax
     6b0:	0b 10                	or     (%rax),%edx
     6b2:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     6b6:	00 01                	add    %al,(%rcx)
     6b8:	10 25 42 07 00 00    	adc    %ah,0x742(%rip)        # e00 <_init-0x3ff908>
     6be:	0b 14 01             	or     (%rcx,%rax,1),%edx
     6c1:	7c 06                	jl     6c9 <_init-0x40003f>
     6c3:	00 00                	add    %al,(%rax)
     6c5:	01 20                	add    %esp,(%rax)
     6c7:	26 6f                	outsl  %es:(%rsi),(%dx)
     6c9:	63 74 00 0b          	movslq 0xb(%rax,%rax,1),%esi
     6cd:	17                   	(bad)  
     6ce:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     6d2:	00 01                	add    %al,(%rcx)
     6d4:	40 25 b1 02 00 00    	rex and $0x2b1,%eax
     6da:	0b 1b                	or     (%rbx),%ebx
     6dc:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     6e0:	00 01                	add    %al,(%rcx)
     6e2:	80 27 91             	andb   $0x91,(%rdi)
     6e5:	0c 00                	or     $0x0,%al
     6e7:	00 0b                	add    %cl,(%rbx)
     6e9:	1e                   	(bad)  
     6ea:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     6ee:	00 01                	add    %al,(%rcx)
     6f0:	00 01                	add    %al,(%rcx)
     6f2:	27                   	(bad)  
     6f3:	71 05                	jno    6fa <_init-0x40000e>
     6f5:	00 00                	add    %al,(%rax)
     6f7:	0b 22                	or     (%rdx),%esp
     6f9:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     6fd:	00 01                	add    %al,(%rcx)
     6ff:	00 02                	add    %al,(%rdx)
     701:	27                   	(bad)  
     702:	c6 06 00             	movb   $0x0,(%rsi)
     705:	00 0b                	add    %cl,(%rbx)
     707:	26 01 7c 06 00       	add    %edi,%es:0x0(%rsi,%rax,1)
     70c:	00 01                	add    %al,(%rcx)
     70e:	00 04 27             	add    %al,(%rdi,%riz,1)
     711:	3b 06                	cmp    (%rsi),%eax
     713:	00 00                	add    %al,(%rax)
     715:	0b 29                	or     (%rcx),%ebp
     717:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     71b:	00 01                	add    %al,(%rcx)
     71d:	00 08                	add    %cl,(%rax)
     71f:	27                   	(bad)  
     720:	d3 06                	roll   %cl,(%rsi)
     722:	00 00                	add    %al,(%rax)
     724:	0b 2c 01             	or     (%rcx,%rax,1),%ebp
     727:	7c 06                	jl     72f <_init-0x3fffd9>
     729:	00 00                	add    %al,(%rax)
     72b:	01 00                	add    %eax,(%rax)
     72d:	10 27                	adc    %ah,(%rdi)
     72f:	c0 09 00             	rorb   $0x0,(%rcx)
     732:	00 0b                	add    %cl,(%rbx)
     734:	2f                   	(bad)  
     735:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     739:	00 01                	add    %al,(%rcx)
     73b:	00 20                	add    %ah,(%rax)
     73d:	27                   	(bad)  
     73e:	e1 07                	loope  747 <_init-0x3fffc1>
     740:	00 00                	add    %al,(%rax)
     742:	0b 33                	or     (%rbx),%esi
     744:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     748:	00 01                	add    %al,(%rcx)
     74a:	00 40 25             	add    %al,0x25(%rax)
     74d:	e7 06                	out    %eax,$0x6
     74f:	00 00                	add    %al,(%rax)
     751:	0b 36                	or     (%rsi),%esi
     753:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     757:	00 01                	add    %al,(%rcx)
     759:	b0 25                	mov    $0x25,%al
     75b:	7e 01                	jle    75e <_init-0x3fffaa>
     75d:	00 00                	add    %al,(%rax)
     75f:	0b 39                	or     (%rcx),%edi
     761:	01 7c 06 00          	add    %edi,0x0(%rsi,%rax,1)
     765:	00 01                	add    %al,(%rcx)
     767:	4a 27                	rex.WX (bad) 
     769:	91                   	xchg   %eax,%ecx
     76a:	08 00                	or     %al,(%rax)
     76c:	00 0b                	add    %cl,(%rbx)
     76e:	3c 01                	cmp    $0x1,%al
     770:	7c 06                	jl     778 <_init-0x3fff90>
     772:	00 00                	add    %al,(%rax)
     774:	01 04 01             	add    %eax,(%rcx,%rax,1)
     777:	28 4c 0a 00          	sub    %cl,0x0(%rdx,%rcx,1)
     77b:	00 0b                	add    %cl,(%rbx)
     77d:	4a 01 af 05 00 00 01 	rex.WX add %rbp,0x1000005(%rdi)
     784:	25 d3 00 00 00       	and    $0xd3,%eax
     789:	0b 4e 01             	or     0x1(%rsi),%ecx
     78c:	92                   	xchg   %eax,%edx
     78d:	07                   	(bad)  
     78e:	00 00                	add    %al,(%rax)
     790:	01 01                	add    %eax,(%rcx)
     792:	0f 77                	emms   
     794:	07                   	(bad)  
     795:	00 00                	add    %al,(%rax)
     797:	25 40 02 00 00       	and    $0x240,%eax
     79c:	0b 51 01             	or     0x1(%rcx),%edx
     79f:	92                   	xchg   %eax,%edx
     7a0:	07                   	(bad)  
     7a1:	00 00                	add    %al,(%rax)
     7a3:	01 02                	add    %eax,(%rdx)
     7a5:	25 d4 0b 00 00       	and    $0xbd4,%eax
     7aa:	0b 56 01             	or     0x1(%rsi),%edx
     7ad:	92                   	xchg   %eax,%edx
     7ae:	07                   	(bad)  
     7af:	00 00                	add    %al,(%rax)
     7b1:	01 04 25 d0 02 00 00 	add    %eax,0x2d0
     7b8:	0b 59 01             	or     0x1(%rcx),%ebx
     7bb:	92                   	xchg   %eax,%edx
     7bc:	07                   	(bad)  
     7bd:	00 00                	add    %al,(%rax)
     7bf:	01 00                	add    %eax,(%rax)
     7c1:	28 81 03 00 00 0b    	sub    %al,0xb000003(%rcx)
     7c7:	69 01 76 05 00 00    	imul   $0x576,(%rcx),%eax
     7cd:	01 26                	add    %esp,(%rsi)
     7cf:	69 6e 00 0b 77 01 db 	imul   $0xdb01770b,0x0(%rsi),%ebp
     7d6:	07                   	(bad)  
     7d7:	00 00                	add    %al,(%rax)
     7d9:	01 08                	add    %ecx,(%rax)
     7db:	0f c1 07             	xadd   %eax,(%rdi)
     7de:	00 00                	add    %al,(%rax)
     7e0:	26 6f                	outsl  %es:(%rsi),(%dx)
     7e2:	75 74                	jne    858 <_init-0x3ffeb0>
     7e4:	00 0b                	add    %cl,(%rbx)
     7e6:	7a 01                	jp     7e9 <_init-0x3fff1f>
     7e8:	db 07                	fildl  (%rdi)
     7ea:	00 00                	add    %al,(%rax)
     7ec:	01 10                	add    %edx,(%rax)
     7ee:	28 c7                	sub    %al,%bh
     7f0:	04 00                	add    $0x0,%al
     7f2:	00 0b                	add    %cl,(%rbx)
     7f4:	89 01                	mov    %eax,(%rcx)
     7f6:	dc 05 00 00 01 26    	faddl  0x26010000(%rip)        # 260107fc <_end+0x25a0f664>
     7fc:	63 75 72             	movslq 0x72(%rbp),%esi
     7ff:	00 0b                	add    %cl,(%rbx)
     801:	8f 01                	popq   (%rcx)
     803:	09 08                	or     %ecx,(%rax)
     805:	00 00                	add    %al,(%rax)
     807:	01 01                	add    %eax,(%rcx)
     809:	0f ee 07             	pmaxsw (%rdi),%mm0
     80c:	00 00                	add    %al,(%rax)
     80e:	00 12                	add    %dl,(%rdx)
     810:	0c 52                	or     $0x52,%al
     812:	8e 13                	mov    (%rbx),%ss
     814:	00 00                	add    %al,(%rax)
     816:	12 0c 53             	adc    (%rbx,%rdx,2),%cl
     819:	83 13 00             	adcl   $0x0,(%rbx)
     81c:	00 12                	add    %dl,(%rdx)
     81e:	0c 54                	or     $0x54,%al
     820:	98                   	cwtl   
     821:	00 00                	add    %al,(%rax)
     823:	00 12                	add    %dl,(%rdx)
     825:	0c 5c                	or     $0x5c,%al
     827:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
     828:	13 00                	adc    (%rax),%eax
     82a:	00 12                	add    %dl,(%rdx)
     82c:	0c 65                	or     $0x65,%al
     82e:	be 13 00 00 12       	mov    $0x12000013,%esi
     833:	0c 68                	or     $0x68,%al
     835:	d8 13                	fcoms  (%rbx)
     837:	00 00                	add    %al,(%rax)
     839:	12 0c 69             	adc    (%rcx,%rbp,2),%cl
     83c:	ed                   	in     (%dx),%eax
     83d:	13 00                	adc    (%rax),%eax
     83f:	00 1e                	add    %bl,(%rsi)
     841:	61                   	(bad)  
     842:	02 00                	add    (%rax),%al
     844:	00 5c 08 00          	add    %bl,0x0(%rax,%rcx,1)
     848:	00 29                	add    %ch,(%rcx)
     84a:	ae                   	scas   %es:(%rdi),%al
     84b:	04 00                	add    $0x0,%al
     84d:	00 f8                	add    %bh,%al
     84f:	00 00                	add    %al,(%rax)
     851:	00 29                	add    %ch,(%rcx)
     853:	23 0c 00             	and    (%rax,%rax,1),%ecx
     856:	00 f3                	add    %dh,%bl
     858:	02 00                	add    (%rax),%al
     85a:	00 00                	add    %al,(%rax)
     85c:	03 1e                	add    (%rsi),%ebx
     85e:	08 00                	or     %al,(%rax)
     860:	00 0d 88 40 08 00    	add    %cl,0x84088(%rip)        # 848ee <_init-0x37be1a>
     866:	00 2a                	add    %ch,(%rdx)
     868:	33 07                	xor    (%rdi),%eax
     86a:	00 00                	add    %al,(%rax)
     86c:	02 3d 2e 07 00 00    	add    0x72e(%rip),%bh        # fa0 <_init-0x3ff768>
     872:	5c                   	pop    %rsp
     873:	08 00                	or     %al,(%rax)
     875:	00 2b                	add    %ch,(%rbx)
     877:	18 02                	sbb    %al,(%rdx)
     879:	00 00                	add    %al,(%rax)
     87b:	02 4a 0c             	add    0xc(%rdx),%cl
     87e:	06                   	(bad)  
     87f:	00 00                	add    %al,(%rax)
     881:	00 2c df             	add    %ch,(%rdi,%rbx,8)
     884:	03 00                	add    (%rax),%eax
     886:	00 06                	add    %al,(%rsi)
     888:	61                   	(bad)  
     889:	01 98 00 00 00 98    	add    %ebx,-0x68000000(%rax)
     88f:	08 00                	or     %al,(%rax)
     891:	00 16                	add    %dl,(%rsi)
     893:	ff 00                	incl   (%rax)
     895:	00 00                	add    %al,(%rax)
     897:	00 2c 97             	add    %ch,(%rdi,%rdx,4)
     89a:	02 00                	add    (%rax),%al
     89c:	00 06                	add    %al,(%rsi)
     89e:	e9 02 98 00 00       	jmpq   a0a5 <_init-0x3f6663>
     8a3:	00 ae 08 00 00 16    	add    %ch,0x16000008(%rsi)
     8a9:	ae                   	scas   %es:(%rdi),%al
     8aa:	08 00                	or     %al,(%rax)
     8ac:	00 00                	add    %al,(%rax)
     8ae:	10 08                	adc    %cl,(%rax)
     8b0:	2e 00 00             	add    %al,%cs:(%rax)
     8b3:	00 2c a7             	add    %ch,(%rdi,%riz,4)
     8b6:	02 00                	add    (%rax),%al
     8b8:	00 06                	add    %al,(%rsi)
     8ba:	06                   	(bad)  
     8bb:	03 d4                	add    %esp,%edx
     8bd:	08 00                	or     %al,(%rax)
     8bf:	00 d4                	add    %dl,%ah
     8c1:	08 00                	or     %al,(%rax)
     8c3:	00 16                	add    %dl,(%rsi)
     8c5:	d4                   	(bad)  
     8c6:	08 00                	or     %al,(%rax)
     8c8:	00 16                	add    %dl,(%rsi)
     8ca:	ff 00                	incl   (%rax)
     8cc:	00 00                	add    %al,(%rax)
     8ce:	16                   	(bad)  
     8cf:	ae                   	scas   %es:(%rdi),%al
     8d0:	08 00                	or     %al,(%rax)
     8d2:	00 00                	add    %al,(%rax)
     8d4:	10 08                	adc    %cl,(%rax)
     8d6:	da 08                	fimull (%rax)
     8d8:	00 00                	add    %al,(%rax)
     8da:	04 04                	add    $0x4,%al
     8dc:	05 9c 0c 00 00       	add    $0xc9c,%eax
     8e1:	2c b3                	sub    $0xb3,%al
     8e3:	0b 00                	or     (%rax),%eax
     8e5:	00 06                	add    %al,(%rsi)
     8e7:	f7 02 98 00 00 00    	testl  $0x98,(%rdx)
     8ed:	fc                   	cld    
     8ee:	08 00                	or     %al,(%rax)
     8f0:	00 16                	add    %dl,(%rsi)
     8f2:	da 08                	fimull (%rax)
     8f4:	00 00                	add    %al,(%rax)
     8f6:	16                   	(bad)  
     8f7:	ae                   	scas   %es:(%rdi),%al
     8f8:	08 00                	or     %al,(%rax)
     8fa:	00 00                	add    %al,(%rax)
     8fc:	2c ba                	sub    $0xba,%al
     8fe:	0b 00                	or     (%rax),%eax
     900:	00 06                	add    %al,(%rsi)
     902:	0d 03 ff 00 00       	or     $0xff03,%eax
     907:	00 17                	add    %dl,(%rdi)
     909:	09 00                	or     %eax,(%rax)
     90b:	00 16                	add    %dl,(%rsi)
     90d:	17                   	(bad)  
     90e:	09 00                	or     %eax,(%rax)
     910:	00 16                	add    %dl,(%rsi)
     912:	ae                   	scas   %es:(%rdi),%al
     913:	08 00                	or     %al,(%rax)
     915:	00 00                	add    %al,(%rax)
     917:	10 08                	adc    %cl,(%rax)
     919:	1d 09 00 00 0f       	sbb    $0xf000009,%eax
     91e:	da 08                	fimull (%rax)
     920:	00 00                	add    %al,(%rax)
     922:	2c cf                	sub    $0xcf,%al
     924:	04 00                	add    $0x0,%al
     926:	00 06                	add    %al,(%rsi)
     928:	4b 02 ff             	rex.WXB add %r15b,%dil
     92b:	00 00                	add    %al,(%rax)
     92d:	00 3d 09 00 00 16    	add    %bh,0x16000009(%rip)        # 1600093c <_end+0x159ff7a4>
     933:	ae                   	scas   %es:(%rdi),%al
     934:	08 00                	or     %al,(%rax)
     936:	00 16                	add    %dl,(%rsi)
     938:	ff 00                	incl   (%rax)
     93a:	00 00                	add    %al,(%rax)
     93c:	00 2c 8d 05 00 00 06 	add    %ch,0x6000005(,%rcx,4)
     943:	52                   	push   %rdx
     944:	02 ff                	add    %bh,%bh
     946:	00 00                	add    %al,(%rax)
     948:	00 59 09             	add    %bl,0x9(%rcx)
     94b:	00 00                	add    %al,(%rax)
     94d:	16                   	(bad)  
     94e:	ae                   	scas   %es:(%rdi),%al
     94f:	08 00                	or     %al,(%rax)
     951:	00 16                	add    %dl,(%rsi)
     953:	17                   	(bad)  
     954:	09 00                	or     %eax,(%rax)
     956:	00 2d 00 2c 2c 0c    	add    %ch,0xc2c2c00(%rip)        # c2c355c <_end+0xbcc23c4>
     95c:	00 00                	add    %al,(%rax)
     95e:	06                   	(bad)  
     95f:	7b 02                	jnp    963 <_init-0x3ffda5>
     961:	ff 00                	incl   (%rax)
     963:	00 00                	add    %al,(%rax)
     965:	75 09                	jne    970 <_init-0x3ffd98>
     967:	00 00                	add    %al,(%rax)
     969:	16                   	(bad)  
     96a:	ae                   	scas   %es:(%rdi),%al
     96b:	08 00                	or     %al,(%rax)
     96d:	00 16                	add    %dl,(%rsi)
     96f:	17                   	(bad)  
     970:	09 00                	or     %eax,(%rax)
     972:	00 2d 00 2c 98 02    	add    %ch,0x2982c00(%rip)        # 2983578 <_end+0x23823e0>
     978:	00 00                	add    %al,(%rax)
     97a:	06                   	(bad)  
     97b:	ea                   	(bad)  
     97c:	02 98 00 00 00 8b    	add    -0x75000000(%rax),%bl
     982:	09 00                	or     %eax,(%rax)
     984:	00 16                	add    %dl,(%rsi)
     986:	ae                   	scas   %es:(%rdi),%al
     987:	08 00                	or     %al,(%rax)
     989:	00 00                	add    %al,(%rax)
     98b:	2e 9e                	cs sahf 
     98d:	02 00                	add    (%rax),%al
     98f:	00 06                	add    %al,(%rsi)
     991:	f0 02 98 00 00 00 2c 	lock add 0x2c000000(%rax),%bl
     998:	4f 04 00             	rex.WRXB add $0x0,%al
     99b:	00 06                	add    %al,(%rsi)
     99d:	78 01                	js     9a0 <_init-0x3ffd68>
     99f:	86 00                	xchg   %al,(%rax)
     9a1:	00 00                	add    %al,(%rax)
     9a3:	b7 09                	mov    $0x9,%bh
     9a5:	00 00                	add    %al,(%rax)
     9a7:	16                   	(bad)  
     9a8:	28 01                	sub    %al,(%rcx)
     9aa:	00 00                	add    %al,(%rax)
     9ac:	16                   	(bad)  
     9ad:	86 00                	xchg   %al,(%rax)
     9af:	00 00                	add    %al,(%rax)
     9b1:	16                   	(bad)  
     9b2:	b7 09                	mov    $0x9,%bh
     9b4:	00 00                	add    %al,(%rax)
     9b6:	00 10                	add    %dl,(%rax)
     9b8:	08 11                	or     %dl,(%rcx)
     9ba:	01 00                	add    %eax,(%rax)
     9bc:	00 2c da             	add    %ch,(%rdx,%rbx,8)
     9bf:	00 00                	add    %al,(%rax)
     9c1:	00 06                	add    %al,(%rsi)
     9c3:	6d                   	insl   (%dx),%es:(%rdi)
     9c4:	01 86 00 00 00 e2    	add    %eax,-0x1e000000(%rsi)
     9ca:	09 00                	or     %eax,(%rax)
     9cc:	00 16                	add    %dl,(%rsi)
     9ce:	d4                   	(bad)  
     9cf:	08 00                	or     %al,(%rax)
     9d1:	00 16                	add    %dl,(%rsi)
     9d3:	28 01                	sub    %al,(%rcx)
     9d5:	00 00                	add    %al,(%rax)
     9d7:	16                   	(bad)  
     9d8:	86 00                	xchg   %al,(%rax)
     9da:	00 00                	add    %al,(%rax)
     9dc:	16                   	(bad)  
     9dd:	b7 09                	mov    $0x9,%bh
     9df:	00 00                	add    %al,(%rax)
     9e1:	00 2c 54             	add    %ch,(%rsp,%rdx,2)
     9e4:	0c 00                	or     $0x0,%al
     9e6:	00 06                	add    %al,(%rsi)
     9e8:	69 01 ff 00 00 00    	imul   $0xff,(%rcx),%eax
     9ee:	f8                   	clc    
     9ef:	09 00                	or     %eax,(%rax)
     9f1:	00 16                	add    %dl,(%rsi)
     9f3:	f8                   	clc    
     9f4:	09 00                	or     %eax,(%rax)
     9f6:	00 00                	add    %al,(%rax)
     9f8:	10 08                	adc    %cl,(%rax)
     9fa:	fe 09                	decb   (%rcx)
     9fc:	00 00                	add    %al,(%rax)
     9fe:	0f 11 01             	movups %xmm0,(%rcx)
     a01:	00 00                	add    %al,(%rax)
     a03:	2c c7                	sub    $0xc7,%al
     a05:	0b 00                	or     (%rax),%eax
     a07:	00 06                	add    %al,(%rsi)
     a09:	98                   	cwtl   
     a0a:	01 86 00 00 00 28    	add    %eax,0x28000000(%rsi)
     a10:	0a 00                	or     (%rax),%al
     a12:	00 16                	add    %dl,(%rsi)
     a14:	d4                   	(bad)  
     a15:	08 00                	or     %al,(%rax)
     a17:	00 16                	add    %dl,(%rsi)
     a19:	28 0a                	sub    %cl,(%rdx)
     a1b:	00 00                	add    %al,(%rax)
     a1d:	16                   	(bad)  
     a1e:	86 00                	xchg   %al,(%rax)
     a20:	00 00                	add    %al,(%rax)
     a22:	16                   	(bad)  
     a23:	b7 09                	mov    $0x9,%bh
     a25:	00 00                	add    %al,(%rax)
     a27:	00 10                	add    %dl,(%rax)
     a29:	08 28                	or     %ch,(%rax)
     a2b:	01 00                	add    %eax,(%rax)
     a2d:	00 2c b4             	add    %ch,(%rsp,%rsi,4)
     a30:	0b 00                	or     (%rax),%eax
     a32:	00 06                	add    %al,(%rsi)
     a34:	f8                   	clc    
     a35:	02 98 00 00 00 49    	add    0x49000000(%rax),%bl
     a3b:	0a 00                	or     (%rax),%al
     a3d:	00 16                	add    %dl,(%rsi)
     a3f:	da 08                	fimull (%rax)
     a41:	00 00                	add    %al,(%rax)
     a43:	16                   	(bad)  
     a44:	ae                   	scas   %es:(%rdi),%al
     a45:	08 00                	or     %al,(%rax)
     a47:	00 00                	add    %al,(%rax)
     a49:	2c ed                	sub    $0xed,%al
     a4b:	04 00                	add    $0x0,%al
     a4d:	00 06                	add    %al,(%rsi)
     a4f:	fe 02                	incb   (%rdx)
     a51:	98                   	cwtl   
     a52:	00 00                	add    %al,(%rax)
     a54:	00 5f 0a             	add    %bl,0xa(%rdi)
     a57:	00 00                	add    %al,(%rax)
     a59:	16                   	(bad)  
     a5a:	da 08                	fimull (%rax)
     a5c:	00 00                	add    %al,(%rax)
     a5e:	00 2c b6             	add    %ch,(%rsi,%rsi,4)
     a61:	04 00                	add    $0x0,%al
     a63:	00 06                	add    %al,(%rsi)
     a65:	5c                   	pop    %rsp
     a66:	02 ff                	add    %bh,%bh
     a68:	00 00                	add    %al,(%rax)
     a6a:	00 80 0a 00 00 16    	add    %al,0x1600000a(%rax)
     a70:	d4                   	(bad)  
     a71:	08 00                	or     %al,(%rax)
     a73:	00 16                	add    %dl,(%rsi)
     a75:	86 00                	xchg   %al,(%rax)
     a77:	00 00                	add    %al,(%rax)
     a79:	16                   	(bad)  
     a7a:	17                   	(bad)  
     a7b:	09 00                	or     %eax,(%rax)
     a7d:	00 2d 00 2c 9c 05    	add    %ch,0x59c2c00(%rip)        # 59c3683 <_end+0x53c24eb>
     a83:	00 00                	add    %al,(%rax)
     a85:	06                   	(bad)  
     a86:	85 02                	test   %eax,(%rdx)
     a88:	ff 00                	incl   (%rax)
     a8a:	00 00                	add    %al,(%rax)
     a8c:	9c                   	pushfq 
     a8d:	0a 00                	or     (%rax),%al
     a8f:	00 16                	add    %dl,(%rsi)
     a91:	17                   	(bad)  
     a92:	09 00                	or     %eax,(%rax)
     a94:	00 16                	add    %dl,(%rsi)
     a96:	17                   	(bad)  
     a97:	09 00                	or     %eax,(%rax)
     a99:	00 2d 00 2c f7 03    	add    %ch,0x3f72c00(%rip)        # 3f7369f <_end+0x3972507>
     a9f:	00 00                	add    %al,(%rax)
     aa1:	06                   	(bad)  
     aa2:	15 03 98 00 00       	adc    $0x9803,%eax
     aa7:	00 b7 0a 00 00 16    	add    %dh,0x1600000a(%rdi)
     aad:	98                   	cwtl   
     aae:	00 00                	add    %al,(%rax)
     ab0:	00 16                	add    %dl,(%rsi)
     ab2:	ae                   	scas   %es:(%rdi),%al
     ab3:	08 00                	or     %al,(%rax)
     ab5:	00 00                	add    %al,(%rax)
     ab7:	2c 8c                	sub    $0x8c,%al
     ab9:	05 00 00 06 64       	add    $0x64060000,%eax
     abe:	02 ff                	add    %bh,%bh
     ac0:	00 00                	add    %al,(%rax)
     ac2:	00 d7                	add    %dl,%bh
     ac4:	0a 00                	or     (%rax),%al
     ac6:	00 16                	add    %dl,(%rsi)
     ac8:	ae                   	scas   %es:(%rdi),%al
     ac9:	08 00                	or     %al,(%rax)
     acb:	00 16                	add    %dl,(%rsi)
     acd:	17                   	(bad)  
     ace:	09 00                	or     %eax,(%rax)
     ad0:	00 16                	add    %dl,(%rsi)
     ad2:	d7                   	xlat   %ds:(%rbx)
     ad3:	0a 00                	or     (%rax),%al
     ad5:	00 00                	add    %al,(%rax)
     ad7:	10 08                	adc    %cl,(%rax)
     ad9:	40 00 00             	add    %al,(%rax)
     adc:	00 2c 2b             	add    %ch,(%rbx,%rbp,1)
     adf:	0c 00                	or     $0x0,%al
     ae1:	00 06                	add    %al,(%rsi)
     ae3:	b1 02                	mov    $0x2,%cl
     ae5:	ff 00                	incl   (%rax)
     ae7:	00 00                	add    %al,(%rax)
     ae9:	fd                   	std    
     aea:	0a 00                	or     (%rax),%al
     aec:	00 16                	add    %dl,(%rsi)
     aee:	ae                   	scas   %es:(%rdi),%al
     aef:	08 00                	or     %al,(%rax)
     af1:	00 16                	add    %dl,(%rsi)
     af3:	17                   	(bad)  
     af4:	09 00                	or     %eax,(%rax)
     af6:	00 16                	add    %dl,(%rsi)
     af8:	d7                   	xlat   %ds:(%rbx)
     af9:	0a 00                	or     (%rax),%al
     afb:	00 00                	add    %al,(%rax)
     afd:	2c b5                	sub    $0xb5,%al
     aff:	04 00                	add    $0x0,%al
     b01:	00 06                	add    %al,(%rsi)
     b03:	71 02                	jno    b07 <_init-0x3ffc01>
     b05:	ff 00                	incl   (%rax)
     b07:	00 00                	add    %al,(%rax)
     b09:	22 0b                	and    (%rbx),%cl
     b0b:	00 00                	add    %al,(%rax)
     b0d:	16                   	(bad)  
     b0e:	d4                   	(bad)  
     b0f:	08 00                	or     %al,(%rax)
     b11:	00 16                	add    %dl,(%rsi)
     b13:	86 00                	xchg   %al,(%rax)
     b15:	00 00                	add    %al,(%rax)
     b17:	16                   	(bad)  
     b18:	17                   	(bad)  
     b19:	09 00                	or     %eax,(%rax)
     b1b:	00 16                	add    %dl,(%rsi)
     b1d:	d7                   	xlat   %ds:(%rbx)
     b1e:	0a 00                	or     (%rax),%al
     b20:	00 00                	add    %al,(%rax)
     b22:	2c 9b                	sub    $0x9b,%al
     b24:	05 00 00 06 bd       	add    $0xbd060000,%eax
     b29:	02 ff                	add    %bh,%bh
     b2b:	00 00                	add    %al,(%rax)
     b2d:	00 42 0b             	add    %al,0xb(%rdx)
     b30:	00 00                	add    %al,(%rax)
     b32:	16                   	(bad)  
     b33:	17                   	(bad)  
     b34:	09 00                	or     %eax,(%rax)
     b36:	00 16                	add    %dl,(%rsi)
     b38:	17                   	(bad)  
     b39:	09 00                	or     %eax,(%rax)
     b3b:	00 16                	add    %dl,(%rsi)
     b3d:	d7                   	xlat   %ds:(%rbx)
     b3e:	0a 00                	or     (%rax),%al
     b40:	00 00                	add    %al,(%rax)
     b42:	2c e0                	sub    $0xe0,%al
     b44:	01 00                	add    %eax,(%rax)
     b46:	00 06                	add    %al,(%rsi)
     b48:	6c                   	insb   (%dx),%es:(%rdi)
     b49:	02 ff                	add    %bh,%bh
     b4b:	00 00                	add    %al,(%rax)
     b4d:	00 5d 0b             	add    %bl,0xb(%rbp)
     b50:	00 00                	add    %al,(%rax)
     b52:	16                   	(bad)  
     b53:	17                   	(bad)  
     b54:	09 00                	or     %eax,(%rax)
     b56:	00 16                	add    %dl,(%rsi)
     b58:	d7                   	xlat   %ds:(%rbx)
     b59:	0a 00                	or     (%rax),%al
     b5b:	00 00                	add    %al,(%rax)
     b5d:	2c 27                	sub    $0x27,%al
     b5f:	0b 00                	or     (%rax),%eax
     b61:	00 06                	add    %al,(%rsi)
     b63:	b9 02 ff 00 00       	mov    $0xff02,%ecx
     b68:	00 78 0b             	add    %bh,0xb(%rax)
     b6b:	00 00                	add    %al,(%rax)
     b6d:	16                   	(bad)  
     b6e:	17                   	(bad)  
     b6f:	09 00                	or     %eax,(%rax)
     b71:	00 16                	add    %dl,(%rsi)
     b73:	d7                   	xlat   %ds:(%rbx)
     b74:	0a 00                	or     (%rax),%al
     b76:	00 00                	add    %al,(%rax)
     b78:	2c 42                	sub    $0x42,%al
     b7a:	0b 00                	or     (%rax),%eax
     b7c:	00 06                	add    %al,(%rsi)
     b7e:	72 01                	jb     b81 <_init-0x3ffb87>
     b80:	86 00                	xchg   %al,(%rax)
     b82:	00 00                	add    %al,(%rax)
     b84:	98                   	cwtl   
     b85:	0b 00                	or     (%rax),%eax
     b87:	00 16                	add    %dl,(%rsi)
     b89:	98                   	cwtl   
     b8a:	0b 00                	or     (%rax),%eax
     b8c:	00 16                	add    %dl,(%rsi)
     b8e:	da 08                	fimull (%rax)
     b90:	00 00                	add    %al,(%rax)
     b92:	16                   	(bad)  
     b93:	b7 09                	mov    $0x9,%bh
     b95:	00 00                	add    %al,(%rax)
     b97:	00 10                	add    %dl,(%rax)
     b99:	08 f8                	or     %bh,%al
     b9b:	00 00                	add    %al,(%rax)
     b9d:	00 2f                	add    %ch,(%rdi)
     b9f:	fa                   	cli    
     ba0:	0a 00                	or     (%rax),%al
     ba2:	00 06                	add    %al,(%rsi)
     ba4:	9b                   	fwait
     ba5:	d4                   	(bad)  
     ba6:	08 00                	or     %al,(%rax)
     ba8:	00 b8 0b 00 00 16    	add    %bh,0x1600000b(%rax)
     bae:	d4                   	(bad)  
     baf:	08 00                	or     %al,(%rax)
     bb1:	00 16                	add    %dl,(%rsi)
     bb3:	17                   	(bad)  
     bb4:	09 00                	or     %eax,(%rax)
     bb6:	00 00                	add    %al,(%rax)
     bb8:	2f                   	(bad)  
     bb9:	1e                   	(bad)  
     bba:	03 00                	add    (%rax),%eax
     bbc:	00 06                	add    %al,(%rsi)
     bbe:	a3 ff 00 00 00 d2 0b 	movabs %eax,0xbd2000000ff
     bc5:	00 00 
     bc7:	16                   	(bad)  
     bc8:	17                   	(bad)  
     bc9:	09 00                	or     %eax,(%rax)
     bcb:	00 16                	add    %dl,(%rsi)
     bcd:	17                   	(bad)  
     bce:	09 00                	or     %eax,(%rax)
     bd0:	00 00                	add    %al,(%rax)
     bd2:	2f                   	(bad)  
     bd3:	01 01                	add    %eax,(%rcx)
     bd5:	00 00                	add    %al,(%rax)
     bd7:	06                   	(bad)  
     bd8:	c0 ff 00             	sar    $0x0,%bh
     bdb:	00 00                	add    %al,(%rax)
     bdd:	ec                   	in     (%dx),%al
     bde:	0b 00                	or     (%rax),%eax
     be0:	00 16                	add    %dl,(%rsi)
     be2:	17                   	(bad)  
     be3:	09 00                	or     %eax,(%rax)
     be5:	00 16                	add    %dl,(%rsi)
     be7:	17                   	(bad)  
     be8:	09 00                	or     %eax,(%rax)
     bea:	00 00                	add    %al,(%rax)
     bec:	2f                   	(bad)  
     bed:	a7                   	cmpsl  %es:(%rdi),%ds:(%rsi)
     bee:	04 00                	add    $0x0,%al
     bf0:	00 06                	add    %al,(%rsi)
     bf2:	93                   	xchg   %eax,%ebx
     bf3:	d4                   	(bad)  
     bf4:	08 00                	or     %al,(%rax)
     bf6:	00 06                	add    %al,(%rsi)
     bf8:	0c 00                	or     $0x0,%al
     bfa:	00 16                	add    %dl,(%rsi)
     bfc:	d4                   	(bad)  
     bfd:	08 00                	or     %al,(%rax)
     bff:	00 16                	add    %dl,(%rsi)
     c01:	17                   	(bad)  
     c02:	09 00                	or     %eax,(%rax)
     c04:	00 00                	add    %al,(%rax)
     c06:	2f                   	(bad)  
     c07:	99                   	cltd   
     c08:	00 00                	add    %al,(%rax)
     c0a:	00 06                	add    %al,(%rsi)
     c0c:	fc                   	cld    
     c0d:	86 00                	xchg   %al,(%rax)
     c0f:	00 00                	add    %al,(%rax)
     c11:	20 0c 00             	and    %cl,(%rax,%rax,1)
     c14:	00 16                	add    %dl,(%rsi)
     c16:	17                   	(bad)  
     c17:	09 00                	or     %eax,(%rax)
     c19:	00 16                	add    %dl,(%rsi)
     c1b:	17                   	(bad)  
     c1c:	09 00                	or     %eax,(%rax)
     c1e:	00 00                	add    %al,(%rax)
     c20:	2c ba                	sub    $0xba,%al
     c22:	0a 00                	or     (%rax),%al
     c24:	00 06                	add    %al,(%rsi)
     c26:	57                   	push   %rdi
     c27:	03 86 00 00 00 45    	add    0x45000000(%rsi),%eax
     c2d:	0c 00                	or     $0x0,%al
     c2f:	00 16                	add    %dl,(%rsi)
     c31:	d4                   	(bad)  
     c32:	08 00                	or     %al,(%rax)
     c34:	00 16                	add    %dl,(%rsi)
     c36:	86 00                	xchg   %al,(%rax)
     c38:	00 00                	add    %al,(%rax)
     c3a:	16                   	(bad)  
     c3b:	17                   	(bad)  
     c3c:	09 00                	or     %eax,(%rax)
     c3e:	00 16                	add    %dl,(%rsi)
     c40:	45 0c 00             	rex.RB or $0x0,%al
     c43:	00 00                	add    %al,(%rax)
     c45:	10 08                	adc    %cl,(%rax)
     c47:	4b 0c 00             	rex.WXB or $0x0,%al
     c4a:	00 0f                	add    %cl,(%rdi)
     c4c:	50                   	push   %rax
     c4d:	0c 00                	or     $0x0,%al
     c4f:	00 30                	add    %dh,(%rax)
     c51:	74 6d                	je     cc0 <_init-0x3ffa48>
     c53:	00 38                	add    %bh,(%rax)
     c55:	0e                   	(bad)  
     c56:	85 e0                	test   %esp,%eax
     c58:	0c 00                	or     $0x0,%al
     c5a:	00 06                	add    %al,(%rsi)
     c5c:	d5                   	(bad)  
     c5d:	04 00                	add    $0x0,%al
     c5f:	00 0e                	add    %cl,(%rsi)
     c61:	87 ff                	xchg   %edi,%edi
     c63:	00 00                	add    %al,(%rax)
     c65:	00 00                	add    %al,(%rax)
     c67:	06                   	(bad)  
     c68:	38 07                	cmp    %al,(%rdi)
     c6a:	00 00                	add    %al,(%rax)
     c6c:	0e                   	(bad)  
     c6d:	88 ff                	mov    %bh,%bh
     c6f:	00 00                	add    %al,(%rax)
     c71:	00 04 06             	add    %al,(%rsi,%rax,1)
     c74:	2b 00                	sub    (%rax),%eax
     c76:	00 00                	add    %al,(%rax)
     c78:	0e                   	(bad)  
     c79:	89 ff                	mov    %edi,%edi
     c7b:	00 00                	add    %al,(%rax)
     c7d:	00 08                	add    %cl,(%rax)
     c7f:	06                   	(bad)  
     c80:	9a                   	(bad)  
     c81:	04 00                	add    $0x0,%al
     c83:	00 0e                	add    %cl,(%rsi)
     c85:	8a ff                	mov    %bh,%bh
     c87:	00 00                	add    %al,(%rax)
     c89:	00 0c 06             	add    %cl,(%rsi,%rax,1)
     c8c:	4b 06                	rex.WXB (bad) 
     c8e:	00 00                	add    %al,(%rax)
     c90:	0e                   	(bad)  
     c91:	8b ff                	mov    %edi,%edi
     c93:	00 00                	add    %al,(%rax)
     c95:	00 10                	add    %dl,(%rax)
     c97:	06                   	(bad)  
     c98:	08 0c 00             	or     %cl,(%rax,%rax,1)
     c9b:	00 0e                	add    %cl,(%rsi)
     c9d:	8c ff                	mov    %?,%edi
     c9f:	00 00                	add    %al,(%rax)
     ca1:	00 14 06             	add    %dl,(%rsi,%rax,1)
     ca4:	b5 09                	mov    $0x9,%ch
     ca6:	00 00                	add    %al,(%rax)
     ca8:	0e                   	(bad)  
     ca9:	8d                   	(bad)  
     caa:	ff 00                	incl   (%rax)
     cac:	00 00                	add    %al,(%rax)
     cae:	18 06                	sbb    %al,(%rsi)
     cb0:	50                   	push   %rax
     cb1:	02 00                	add    (%rax),%al
     cb3:	00 0e                	add    %cl,(%rsi)
     cb5:	8e ff                	mov    %edi,%?
     cb7:	00 00                	add    %al,(%rax)
     cb9:	00 1c 06             	add    %bl,(%rsi,%rax,1)
     cbc:	dc 04 00             	faddl  (%rax,%rax,1)
     cbf:	00 0e                	add    %cl,(%rsi)
     cc1:	8f                   	(bad)  
     cc2:	ff 00                	incl   (%rax)
     cc4:	00 00                	add    %al,(%rax)
     cc6:	20 06                	and    %al,(%rsi)
     cc8:	75 0a                	jne    cd4 <_init-0x3ffa34>
     cca:	00 00                	add    %al,(%rax)
     ccc:	0e                   	(bad)  
     ccd:	92                   	xchg   %eax,%edx
     cce:	23 0e                	and    (%rsi),%ecx
     cd0:	00 00                	add    %al,(%rax)
     cd2:	28 06                	sub    %al,(%rsi)
     cd4:	1f                   	(bad)  
     cd5:	0b 00                	or     (%rax),%eax
     cd7:	00 0e                	add    %cl,(%rsi)
     cd9:	93                   	xchg   %eax,%ebx
     cda:	28 01                	sub    %al,(%rcx)
     cdc:	00 00                	add    %al,(%rax)
     cde:	30 00                	xor    %al,(%rax)
     ce0:	2c 45                	sub    $0x45,%al
     ce2:	0a 00                	or     (%rax),%al
     ce4:	00 06                	add    %al,(%rsi)
     ce6:	1f                   	(bad)  
     ce7:	01 86 00 00 00 f6    	add    %eax,-0xa000000(%rsi)
     ced:	0c 00                	or     $0x0,%al
     cef:	00 16                	add    %dl,(%rsi)
     cf1:	17                   	(bad)  
     cf2:	09 00                	or     %eax,(%rax)
     cf4:	00 00                	add    %al,(%rax)
     cf6:	2f                   	(bad)  
     cf7:	6c                   	insb   (%dx),%es:(%rdi)
     cf8:	0b 00                	or     (%rax),%eax
     cfa:	00 06                	add    %al,(%rsi)
     cfc:	9e                   	sahf   
     cfd:	d4                   	(bad)  
     cfe:	08 00                	or     %al,(%rax)
     d00:	00 15 0d 00 00 16    	add    %dl,0x1600000d(%rip)        # 16000d13 <_end+0x159ffb7b>
     d06:	d4                   	(bad)  
     d07:	08 00                	or     %al,(%rax)
     d09:	00 16                	add    %dl,(%rsi)
     d0b:	17                   	(bad)  
     d0c:	09 00                	or     %eax,(%rax)
     d0e:	00 16                	add    %dl,(%rsi)
     d10:	86 00                	xchg   %al,(%rax)
     d12:	00 00                	add    %al,(%rax)
     d14:	00 2f                	add    %ch,(%rdi)
     d16:	8a 03                	mov    (%rbx),%al
     d18:	00 00                	add    %al,(%rax)
     d1a:	06                   	(bad)  
     d1b:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
     d1c:	ff 00                	incl   (%rax)
     d1e:	00 00                	add    %al,(%rax)
     d20:	34 0d                	xor    $0xd,%al
     d22:	00 00                	add    %al,(%rax)
     d24:	16                   	(bad)  
     d25:	17                   	(bad)  
     d26:	09 00                	or     %eax,(%rax)
     d28:	00 16                	add    %dl,(%rsi)
     d2a:	17                   	(bad)  
     d2b:	09 00                	or     %eax,(%rax)
     d2d:	00 16                	add    %dl,(%rsi)
     d2f:	86 00                	xchg   %al,(%rax)
     d31:	00 00                	add    %al,(%rax)
     d33:	00 2f                	add    %ch,(%rdi)
     d35:	e5 04                	in     $0x4,%eax
     d37:	00 00                	add    %al,(%rax)
     d39:	06                   	(bad)  
     d3a:	96                   	xchg   %eax,%esi
     d3b:	d4                   	(bad)  
     d3c:	08 00                	or     %al,(%rax)
     d3e:	00 53 0d             	add    %dl,0xd(%rbx)
     d41:	00 00                	add    %al,(%rax)
     d43:	16                   	(bad)  
     d44:	d4                   	(bad)  
     d45:	08 00                	or     %al,(%rax)
     d47:	00 16                	add    %dl,(%rsi)
     d49:	17                   	(bad)  
     d4a:	09 00                	or     %eax,(%rax)
     d4c:	00 16                	add    %dl,(%rsi)
     d4e:	86 00                	xchg   %al,(%rax)
     d50:	00 00                	add    %al,(%rax)
     d52:	00 2c ab             	add    %ch,(%rbx,%rbp,4)
     d55:	09 00                	or     %eax,(%rax)
     d57:	00 06                	add    %al,(%rsi)
     d59:	9e                   	sahf   
     d5a:	01 86 00 00 00 78    	add    %eax,0x78000000(%rsi)
     d60:	0d 00 00 16 98       	or     $0x98160000,%eax
     d65:	0b 00                	or     (%rax),%eax
     d67:	00 16                	add    %dl,(%rsi)
     d69:	78 0d                	js     d78 <_init-0x3ff990>
     d6b:	00 00                	add    %al,(%rax)
     d6d:	16                   	(bad)  
     d6e:	86 00                	xchg   %al,(%rax)
     d70:	00 00                	add    %al,(%rax)
     d72:	16                   	(bad)  
     d73:	b7 09                	mov    $0x9,%bh
     d75:	00 00                	add    %al,(%rax)
     d77:	00 10                	add    %dl,(%rax)
     d79:	08 17                	or     %dl,(%rdi)
     d7b:	09 00                	or     %eax,(%rax)
     d7d:	00 2c ad 07 00 00 06 	add    %ch,0x6000007(,%rbp,4)
     d84:	00 01                	add    %al,(%rcx)
     d86:	86 00                	xchg   %al,(%rax)
     d88:	00 00                	add    %al,(%rax)
     d8a:	99                   	cltd   
     d8b:	0d 00 00 16 17       	or     $0x17160000,%eax
     d90:	09 00                	or     %eax,(%rax)
     d92:	00 16                	add    %dl,(%rsi)
     d94:	17                   	(bad)  
     d95:	09 00                	or     %eax,(%rax)
     d97:	00 00                	add    %al,(%rax)
     d99:	2c f1                	sub    $0xf1,%al
     d9b:	09 00                	or     %eax,(%rax)
     d9d:	00 06                	add    %al,(%rsi)
     d9f:	c2 01 b4             	retq   $0xb401
     da2:	0d 00 00 b4 0d       	or     $0xdb40000,%eax
     da7:	00 00                	add    %al,(%rax)
     da9:	16                   	(bad)  
     daa:	17                   	(bad)  
     dab:	09 00                	or     %eax,(%rax)
     dad:	00 16                	add    %dl,(%rsi)
     daf:	bb 0d 00 00 00       	mov    $0xd,%ebx
     db4:	04 08                	add    $0x8,%al
     db6:	04 64                	add    $0x64,%al
     db8:	08 00                	or     %al,(%rax)
     dba:	00 10                	add    %dl,(%rax)
     dbc:	08 d4                	or     %dl,%ah
     dbe:	08 00                	or     %al,(%rax)
     dc0:	00 2c f8             	add    %ch,(%rax,%rdi,8)
     dc3:	09 00                	or     %eax,(%rax)
     dc5:	00 06                	add    %al,(%rsi)
     dc7:	c9                   	leaveq 
     dc8:	01 dc                	add    %ebx,%esp
     dca:	0d 00 00 dc 0d       	or     $0xddc0000,%eax
     dcf:	00 00                	add    %al,(%rax)
     dd1:	16                   	(bad)  
     dd2:	17                   	(bad)  
     dd3:	09 00                	or     %eax,(%rax)
     dd5:	00 16                	add    %dl,(%rsi)
     dd7:	bb 0d 00 00 00       	mov    $0xd,%ebx
     ddc:	04 04                	add    $0x4,%al
     dde:	04 28                	add    $0x28,%al
     de0:	07                   	(bad)  
     de1:	00 00                	add    %al,(%rax)
     de3:	2c ff                	sub    $0xff,%al
     de5:	09 00                	or     %eax,(%rax)
     de7:	00 06                	add    %al,(%rsi)
     de9:	1a 01                	sbb    (%rcx),%al
     deb:	d4                   	(bad)  
     dec:	08 00                	or     %al,(%rax)
     dee:	00 03                	add    %al,(%rbx)
     df0:	0e                   	(bad)  
     df1:	00 00                	add    %al,(%rax)
     df3:	16                   	(bad)  
     df4:	d4                   	(bad)  
     df5:	08 00                	or     %al,(%rax)
     df7:	00 16                	add    %dl,(%rsi)
     df9:	17                   	(bad)  
     dfa:	09 00                	or     %eax,(%rax)
     dfc:	00 16                	add    %dl,(%rsi)
     dfe:	bb 0d 00 00 00       	mov    $0xd,%ebx
     e03:	2c 06                	sub    $0x6,%al
     e05:	0a 00                	or     (%rax),%al
     e07:	00 06                	add    %al,(%rsi)
     e09:	d4                   	(bad)  
     e0a:	01 23                	add    %esp,(%rbx)
     e0c:	0e                   	(bad)  
     e0d:	00 00                	add    %al,(%rax)
     e0f:	23 0e                	and    (%rsi),%ecx
     e11:	00 00                	add    %al,(%rax)
     e13:	16                   	(bad)  
     e14:	17                   	(bad)  
     e15:	09 00                	or     %eax,(%rax)
     e17:	00 16                	add    %dl,(%rsi)
     e19:	bb 0d 00 00 16       	mov    $0x1600000d,%ebx
     e1e:	ff 00                	incl   (%rax)
     e20:	00 00                	add    %al,(%rax)
     e22:	00 04 08             	add    %al,(%rax,%rcx,1)
     e25:	05 aa 0b 00 00       	add    $0xbaa,%eax
     e2a:	2c c8                	sub    $0xc8,%al
     e2c:	0c 00                	or     $0x0,%al
     e2e:	00 06                	add    %al,(%rsi)
     e30:	d9 01                	flds   (%rcx)
     e32:	91                   	xchg   %eax,%ecx
     e33:	00 00                	add    %al,(%rax)
     e35:	00 4a 0e             	add    %cl,0xe(%rdx)
     e38:	00 00                	add    %al,(%rax)
     e3a:	16                   	(bad)  
     e3b:	17                   	(bad)  
     e3c:	09 00                	or     %eax,(%rax)
     e3e:	00 16                	add    %dl,(%rsi)
     e40:	bb 0d 00 00 16       	mov    $0x1600000d,%ebx
     e45:	ff 00                	incl   (%rax)
     e47:	00 00                	add    %al,(%rax)
     e49:	00 2f                	add    %ch,(%rdi)
     e4b:	e2 00                	loop   e4d <_init-0x3ff8bb>
     e4d:	00 00                	add    %al,(%rax)
     e4f:	06                   	(bad)  
     e50:	c4                   	(bad)  
     e51:	86 00                	xchg   %al,(%rax)
     e53:	00 00                	add    %al,(%rax)
     e55:	69 0e 00 00 16 d4    	imul   $0xd4160000,(%rsi),%ecx
     e5b:	08 00                	or     %al,(%rax)
     e5d:	00 16                	add    %dl,(%rsi)
     e5f:	17                   	(bad)  
     e60:	09 00                	or     %eax,(%rax)
     e62:	00 16                	add    %dl,(%rsi)
     e64:	86 00                	xchg   %al,(%rax)
     e66:	00 00                	add    %al,(%rax)
     e68:	00 2c bd 06 00 00 06 	add    %ch,0x6000006(,%rdi,4)
     e6f:	65 01 ff             	gs add %edi,%edi
     e72:	00 00                	add    %al,(%rax)
     e74:	00 7f 0e             	add    %bh,0xe(%rdi)
     e77:	00 00                	add    %al,(%rax)
     e79:	16                   	(bad)  
     e7a:	98                   	cwtl   
     e7b:	00 00                	add    %al,(%rax)
     e7d:	00 00                	add    %al,(%rax)
     e7f:	2c f6                	sub    $0xf6,%al
     e81:	04 00                	add    $0x0,%al
     e83:	00 06                	add    %al,(%rsi)
     e85:	45 01 ff             	add    %r15d,%r15d
     e88:	00 00                	add    %al,(%rax)
     e8a:	00 9f 0e 00 00 16    	add    %bl,0x1600000e(%rdi)
     e90:	17                   	(bad)  
     e91:	09 00                	or     %eax,(%rax)
     e93:	00 16                	add    %dl,(%rsi)
     e95:	17                   	(bad)  
     e96:	09 00                	or     %eax,(%rax)
     e98:	00 16                	add    %dl,(%rsi)
     e9a:	86 00                	xchg   %al,(%rax)
     e9c:	00 00                	add    %al,(%rax)
     e9e:	00 2c 43             	add    %ch,(%rbx,%rax,2)
     ea1:	06                   	(bad)  
     ea2:	00 00                	add    %al,(%rax)
     ea4:	06                   	(bad)  
     ea5:	49 01 d4             	add    %rdx,%r12
     ea8:	08 00                	or     %al,(%rax)
     eaa:	00 bf 0e 00 00 16    	add    %bh,0x1600000e(%rdi)
     eb0:	d4                   	(bad)  
     eb1:	08 00                	or     %al,(%rax)
     eb3:	00 16                	add    %dl,(%rsi)
     eb5:	17                   	(bad)  
     eb6:	09 00                	or     %eax,(%rax)
     eb8:	00 16                	add    %dl,(%rsi)
     eba:	86 00                	xchg   %al,(%rax)
     ebc:	00 00                	add    %al,(%rax)
     ebe:	00 2c a2             	add    %ch,(%rdx,%riz,4)
     ec1:	03 00                	add    (%rax),%eax
     ec3:	00 06                	add    %al,(%rsi)
     ec5:	4e 01 d4             	rex.WRX add %r10,%rsp
     ec8:	08 00                	or     %al,(%rax)
     eca:	00 df                	add    %bl,%bh
     ecc:	0e                   	(bad)  
     ecd:	00 00                	add    %al,(%rax)
     ecf:	16                   	(bad)  
     ed0:	d4                   	(bad)  
     ed1:	08 00                	or     %al,(%rax)
     ed3:	00 16                	add    %dl,(%rsi)
     ed5:	17                   	(bad)  
     ed6:	09 00                	or     %eax,(%rax)
     ed8:	00 16                	add    %dl,(%rsi)
     eda:	86 00                	xchg   %al,(%rax)
     edc:	00 00                	add    %al,(%rax)
     ede:	00 2c bf             	add    %ch,(%rdi,%rdi,4)
     ee1:	04 00                	add    $0x0,%al
     ee3:	00 06                	add    %al,(%rsi)
     ee5:	52                   	push   %rdx
     ee6:	01 d4                	add    %edx,%esp
     ee8:	08 00                	or     %al,(%rax)
     eea:	00 ff                	add    %bh,%bh
     eec:	0e                   	(bad)  
     eed:	00 00                	add    %al,(%rax)
     eef:	16                   	(bad)  
     ef0:	d4                   	(bad)  
     ef1:	08 00                	or     %al,(%rax)
     ef3:	00 16                	add    %dl,(%rsi)
     ef5:	da 08                	fimull (%rax)
     ef7:	00 00                	add    %al,(%rax)
     ef9:	16                   	(bad)  
     efa:	86 00                	xchg   %al,(%rax)
     efc:	00 00                	add    %al,(%rax)
     efe:	00 2c 8e             	add    %ch,(%rsi,%rcx,4)
     f01:	05 00 00 06 59       	add    $0x59060000,%eax
     f06:	02 ff                	add    %bh,%bh
     f08:	00 00                	add    %al,(%rax)
     f0a:	00 16                	add    %dl,(%rsi)
     f0c:	0f 00 00             	sldt   (%rax)
     f0f:	16                   	(bad)  
     f10:	17                   	(bad)  
     f11:	09 00                	or     %eax,(%rax)
     f13:	00 2d 00 2c 2d 0c    	add    %ch,0xc2d2c00(%rip)        # c2d3b19 <_end+0xbcd2981>
     f19:	00 00                	add    %al,(%rax)
     f1b:	06                   	(bad)  
     f1c:	82                   	(bad)  
     f1d:	02 ff                	add    %bh,%bh
     f1f:	00 00                	add    %al,(%rax)
     f21:	00 2d 0f 00 00 16    	add    %ch,0x1600000f(%rip)        # 16000f36 <_end+0x159ffd9e>
     f27:	17                   	(bad)  
     f28:	09 00                	or     %eax,(%rax)
     f2a:	00 2d 00 18 bc 00    	add    %ch,0xbc1800(%rip)        # bc2730 <_end+0x5c1598>
     f30:	00 00                	add    %al,(%rax)
     f32:	06                   	(bad)  
     f33:	e0 bc                	loopne ef1 <_init-0x3ff817>
     f35:	00 00                	add    %al,(%rax)
     f37:	00 17                	add    %dl,(%rdi)
     f39:	09 00                	or     %eax,(%rax)
     f3b:	00 4b 0f             	add    %cl,0xf(%rbx)
     f3e:	00 00                	add    %al,(%rax)
     f40:	16                   	(bad)  
     f41:	17                   	(bad)  
     f42:	09 00                	or     %eax,(%rax)
     f44:	00 16                	add    %dl,(%rsi)
     f46:	da 08                	fimull (%rax)
     f48:	00 00                	add    %al,(%rax)
     f4a:	00 19                	add    %bl,(%rcx)
     f4c:	2d 03 00 00 06       	sub    $0x6000003,%eax
     f51:	06                   	(bad)  
     f52:	01 2d 03 00 00 17    	add    %ebp,0x17000003(%rip)        # 17000f5b <_end+0x169ffdc3>
     f58:	09 00                	or     %eax,(%rax)
     f5a:	00 6a 0f             	add    %ch,0xf(%rdx)
     f5d:	00 00                	add    %al,(%rax)
     f5f:	16                   	(bad)  
     f60:	17                   	(bad)  
     f61:	09 00                	or     %eax,(%rax)
     f63:	00 16                	add    %dl,(%rsi)
     f65:	17                   	(bad)  
     f66:	09 00                	or     %eax,(%rax)
     f68:	00 00                	add    %al,(%rax)
     f6a:	18 1e                	sbb    %bl,(%rsi)
     f6c:	0a 00                	or     (%rax),%al
     f6e:	00 06                	add    %al,(%rsi)
     f70:	ea                   	(bad)  
     f71:	1e                   	(bad)  
     f72:	0a 00                	or     (%rax),%al
     f74:	00 17                	add    %dl,(%rdi)
     f76:	09 00                	or     %eax,(%rax)
     f78:	00 88 0f 00 00 16    	add    %cl,0x1600000f(%rax)
     f7e:	17                   	(bad)  
     f7f:	09 00                	or     %eax,(%rax)
     f81:	00 16                	add    %dl,(%rsi)
     f83:	da 08                	fimull (%rax)
     f85:	00 00                	add    %al,(%rax)
     f87:	00 19                	add    %bl,(%rcx)
     f89:	65 09 00             	or     %eax,%gs:(%rax)
     f8c:	00 06                	add    %al,(%rsi)
     f8e:	11 01                	adc    %eax,(%rcx)
     f90:	65 09 00             	or     %eax,%gs:(%rax)
     f93:	00 17                	add    %dl,(%rdi)
     f95:	09 00                	or     %eax,(%rax)
     f97:	00 a7 0f 00 00 16    	add    %ah,0x1600000f(%rdi)
     f9d:	17                   	(bad)  
     f9e:	09 00                	or     %eax,(%rax)
     fa0:	00 16                	add    %dl,(%rsi)
     fa2:	17                   	(bad)  
     fa3:	09 00                	or     %eax,(%rax)
     fa5:	00 00                	add    %al,(%rax)
     fa7:	19 c5                	sbb    %eax,%ebp
     fa9:	02 00                	add    (%rax),%al
     fab:	00 06                	add    %al,(%rsi)
     fad:	3c 01                	cmp    $0x1,%al
     faf:	c5 02 00             	(bad)  
     fb2:	00 17                	add    %dl,(%rdi)
     fb4:	09 00                	or     %eax,(%rax)
     fb6:	00 cb                	add    %cl,%bl
     fb8:	0f 00 00             	sldt   (%rax)
     fbb:	16                   	(bad)  
     fbc:	17                   	(bad)  
     fbd:	09 00                	or     %eax,(%rax)
     fbf:	00 16                	add    %dl,(%rsi)
     fc1:	da 08                	fimull (%rax)
     fc3:	00 00                	add    %al,(%rax)
     fc5:	16                   	(bad)  
     fc6:	86 00                	xchg   %al,(%rax)
     fc8:	00 00                	add    %al,(%rax)
     fca:	00 31                	add    %dh,(%rcx)
     fcc:	2e 08 00             	or     %al,%cs:(%rax)
     fcf:	00 07                	add    %al,(%rdi)
     fd1:	f2 42 11 00          	repnz rex.X adc %eax,(%rax)
     fd5:	00 12                	add    %dl,(%rdx)
     fd7:	07                   	(bad)  
     fd8:	f8                   	clc    
     fd9:	42 11 00             	rex.X adc %eax,(%rax)
     fdc:	00 13                	add    %dl,(%rbx)
     fde:	07                   	(bad)  
     fdf:	01 01                	add    %eax,(%rcx)
     fe1:	64 11 00             	adc    %eax,%fs:(%rax)
     fe4:	00 13                	add    %dl,(%rbx)
     fe6:	07                   	(bad)  
     fe7:	02 01                	add    (%rcx),%al
     fe9:	8b 11                	mov    (%rcx),%edx
     feb:	00 00                	add    %al,(%rax)
     fed:	12 0f                	adc    (%rdi),%cl
     fef:	2c ba                	sub    $0xba,%al
     ff1:	04 00                	add    $0x0,%al
     ff3:	00 12                	add    %dl,(%rdx)
     ff5:	0f 2d db             	cvtps2pi %xmm3,%mm3
     ff8:	04 00                	add    $0x0,%al
     ffa:	00 05 3b 00 00 00    	add    %al,0x3b(%rip)        # 103b <_init-0x3ff6cd>
    1000:	01 10                	add    %edx,(%rax)
    1002:	37                   	(bad)  
    1003:	3d 10 00 00 32       	cmp    $0x32000010,%eax
    1008:	d9 03                	flds   (%rbx)
    100a:	00 00                	add    %al,(%rax)
    100c:	10 3a                	adc    %bh,(%rdx)
    100e:	23 01                	and    (%rcx),%eax
    1010:	00 00                	add    %al,(%rax)
    1012:	32 93 00 00 00 10    	xor    0x10000000(%rbx),%dl
    1018:	3b 23                	cmp    (%rbx),%esp
    101a:	01 00                	add    %eax,(%rax)
    101c:	00 32                	add    %dh,(%rdx)
    101e:	67 03 00             	add    (%eax),%eax
    1021:	00 10                	add    %dl,(%rax)
    1023:	3f                   	(bad)  
    1024:	6d                   	insl   (%dx),%es:(%rdi)
    1025:	13 00                	adc    (%rax),%eax
    1027:	00 32                	add    %dh,(%rdx)
    1029:	e8 09 00 00 10       	callq  10001037 <_end+0xf9ffe9f>
    102e:	40 23 01             	rex and (%rcx),%eax
    1031:	00 00                	add    %al,(%rax)
    1033:	29 36                	sub    %esi,(%rsi)
    1035:	02 00                	add    (%rax),%al
    1037:	00 ff                	add    %bh,%bh
    1039:	00 00                	add    %al,(%rax)
    103b:	00 00                	add    %al,(%rax)
    103d:	05 dc 0b 00 00       	add    $0xbdc,%eax
    1042:	01 10                	add    %edx,(%rax)
    1044:	37                   	(bad)  
    1045:	7f 10                	jg     1057 <_init-0x3ff6b1>
    1047:	00 00                	add    %al,(%rax)
    1049:	32 d9                	xor    %cl,%bl
    104b:	03 00                	add    (%rax),%eax
    104d:	00 10                	add    %dl,(%rax)
    104f:	3a 78 13             	cmp    0x13(%rax),%bh
    1052:	00 00                	add    %al,(%rax)
    1054:	32 93 00 00 00 10    	xor    0x10000000(%rbx),%dl
    105a:	3b 78 13             	cmp    0x13(%rax),%edi
    105d:	00 00                	add    %al,(%rax)
    105f:	32 67 03             	xor    0x3(%rdi),%ah
    1062:	00 00                	add    %al,(%rax)
    1064:	10 3f                	adc    %bh,(%rdi)
    1066:	6d                   	insl   (%dx),%es:(%rdi)
    1067:	13 00                	adc    (%rax),%eax
    1069:	00 32                	add    %dh,(%rdx)
    106b:	e8 09 00 00 10       	callq  10001079 <_end+0xf9ffee1>
    1070:	40 23 01             	rex and (%rcx),%eax
    1073:	00 00                	add    %al,(%rax)
    1075:	29 36                	sub    %esi,(%rsi)
    1077:	02 00                	add    (%rax),%al
    1079:	00 91 00 00 00 00    	add    %dl,0x0(%rcx)
    107f:	05 c1 01 00 00       	add    $0x1c1,%eax
    1084:	01 10                	add    %edx,(%rax)
    1086:	37                   	(bad)  
    1087:	c1 10 00             	rcll   $0x0,(%rax)
    108a:	00 32                	add    %dh,(%rdx)
    108c:	d9 03                	flds   (%rbx)
    108e:	00 00                	add    %al,(%rax)
    1090:	10 3a                	adc    %bh,(%rdx)
    1092:	2e 01 00             	add    %eax,%cs:(%rax)
    1095:	00 32                	add    %dh,(%rdx)
    1097:	93                   	xchg   %eax,%ebx
    1098:	00 00                	add    %al,(%rax)
    109a:	00 10                	add    %dl,(%rax)
    109c:	3b 2e                	cmp    (%rsi),%ebp
    109e:	01 00                	add    %eax,(%rax)
    10a0:	00 32                	add    %dh,(%rdx)
    10a2:	67 03 00             	add    (%eax),%eax
    10a5:	00 10                	add    %dl,(%rax)
    10a7:	3f                   	(bad)  
    10a8:	6d                   	insl   (%dx),%es:(%rdi)
    10a9:	13 00                	adc    (%rax),%eax
    10ab:	00 32                	add    %dh,(%rdx)
    10ad:	e8 09 00 00 10       	callq  100010bb <_end+0xf9fff23>
    10b2:	40 23 01             	rex and (%rcx),%eax
    10b5:	00 00                	add    %al,(%rax)
    10b7:	29 36                	sub    %esi,(%rsi)
    10b9:	02 00                	add    (%rax),%al
    10bb:	00 f8                	add    %bh,%al
    10bd:	00 00                	add    %al,(%rax)
    10bf:	00 00                	add    %al,(%rax)
    10c1:	05 74 0b 00 00       	add    $0xb74,%eax
    10c6:	01 10                	add    %edx,(%rax)
    10c8:	37                   	(bad)  
    10c9:	03 11                	add    (%rcx),%edx
    10cb:	00 00                	add    %al,(%rax)
    10cd:	32 d9                	xor    %cl,%bl
    10cf:	03 00                	add    (%rax),%eax
    10d1:	00 10                	add    %dl,(%rax)
    10d3:	3a 02                	cmp    (%rdx),%al
    10d5:	14 00                	adc    $0x0,%al
    10d7:	00 32                	add    %dh,(%rdx)
    10d9:	93                   	xchg   %eax,%ebx
    10da:	00 00                	add    %al,(%rax)
    10dc:	00 10                	add    %dl,(%rax)
    10de:	3b 02                	cmp    (%rdx),%eax
    10e0:	14 00                	adc    $0x0,%al
    10e2:	00 32                	add    %dh,(%rdx)
    10e4:	67 03 00             	add    (%eax),%eax
    10e7:	00 10                	add    %dl,(%rax)
    10e9:	3f                   	(bad)  
    10ea:	6d                   	insl   (%dx),%es:(%rdi)
    10eb:	13 00                	adc    (%rax),%eax
    10ed:	00 32                	add    %dh,(%rdx)
    10ef:	e8 09 00 00 10       	callq  100010fd <_end+0xf9fff65>
    10f4:	40 23 01             	rex and (%rcx),%eax
    10f7:	00 00                	add    %al,(%rax)
    10f9:	29 36                	sub    %esi,(%rsi)
    10fb:	02 00                	add    (%rax),%al
    10fd:	00 c0                	add    %al,%al
    10ff:	11 00                	adc    %eax,(%rax)
    1101:	00 00                	add    %al,(%rax)
    1103:	33 6b 08             	xor    0x8(%rbx),%ebp
    1106:	00 00                	add    %al,(%rax)
    1108:	01 10                	add    %edx,(%rax)
    110a:	37                   	(bad)  
    110b:	32 d9                	xor    %cl,%bl
    110d:	03 00                	add    (%rax),%eax
    110f:	00 10                	add    %dl,(%rax)
    1111:	3a 07                	cmp    (%rdi),%al
    1113:	14 00                	adc    $0x0,%al
    1115:	00 32                	add    %dh,(%rdx)
    1117:	93                   	xchg   %eax,%ebx
    1118:	00 00                	add    %al,(%rax)
    111a:	00 10                	add    %dl,(%rax)
    111c:	3b 07                	cmp    (%rdi),%eax
    111e:	14 00                	adc    $0x0,%al
    1120:	00 32                	add    %dh,(%rdx)
    1122:	67 03 00             	add    (%eax),%eax
    1125:	00 10                	add    %dl,(%rax)
    1127:	3f                   	(bad)  
    1128:	6d                   	insl   (%dx),%es:(%rdi)
    1129:	13 00                	adc    (%rax),%eax
    112b:	00 32                	add    %dh,(%rdx)
    112d:	e8 09 00 00 10       	callq  1000113b <_end+0xf9fffa3>
    1132:	40 23 01             	rex and (%rcx),%eax
    1135:	00 00                	add    %al,(%rax)
    1137:	29 36                	sub    %esi,(%rsi)
    1139:	02 00                	add    (%rax),%al
    113b:	00 23                	add    %ah,(%rbx)
    113d:	0e                   	(bad)  
    113e:	00 00                	add    %al,(%rax)
    1140:	00 00                	add    %al,(%rax)
    1142:	2c 28                	sub    $0x28,%al
    1144:	09 00                	or     %eax,(%rax)
    1146:	00 06                	add    %al,(%rsi)
    1148:	cb                   	lret   
    1149:	01 5d 11             	add    %ebx,0x11(%rbp)
    114c:	00 00                	add    %al,(%rax)
    114e:	5d                   	pop    %rbp
    114f:	11 00                	adc    %eax,(%rax)
    1151:	00 16                	add    %dl,(%rsi)
    1153:	17                   	(bad)  
    1154:	09 00                	or     %eax,(%rax)
    1156:	00 16                	add    %dl,(%rsi)
    1158:	bb 0d 00 00 00       	mov    $0xd,%ebx
    115d:	04 10                	add    $0x10,%al
    115f:	04 5f                	add    $0x5f,%al
    1161:	08 00                	or     %al,(%rax)
    1163:	00 2c 5d 09 00 00 06 	add    %ch,0x6000009(,%rbx,2)
    116a:	e3 01                	jrcxz  116d <_init-0x3ff59b>
    116c:	84 11                	test   %dl,(%rcx)
    116e:	00 00                	add    %al,(%rax)
    1170:	84 11                	test   %dl,(%rcx)
    1172:	00 00                	add    %al,(%rax)
    1174:	16                   	(bad)  
    1175:	17                   	(bad)  
    1176:	09 00                	or     %eax,(%rax)
    1178:	00 16                	add    %dl,(%rsi)
    117a:	bb 0d 00 00 16       	mov    $0x1600000d,%ebx
    117f:	ff 00                	incl   (%rax)
    1181:	00 00                	add    %al,(%rax)
    1183:	00 04 08             	add    %al,(%rax,%rcx,1)
    1186:	05 a5 0b 00 00       	add    $0xba5,%eax
    118b:	2c 7d                	sub    $0x7d,%al
    118d:	04 00                	add    $0x0,%al
    118f:	00 06                	add    %al,(%rsi)
    1191:	ea                   	(bad)  
    1192:	01 ab 11 00 00 ab    	add    %ebp,-0x54ffffef(%rbx)
    1198:	11 00                	adc    %eax,(%rax)
    119a:	00 16                	add    %dl,(%rsi)
    119c:	17                   	(bad)  
    119d:	09 00                	or     %eax,(%rax)
    119f:	00 16                	add    %dl,(%rsi)
    11a1:	bb 0d 00 00 16       	mov    $0x1600000d,%ebx
    11a6:	ff 00                	incl   (%rax)
    11a8:	00 00                	add    %al,(%rax)
    11aa:	00 04 08             	add    %al,(%rax,%rcx,1)
    11ad:	07                   	(bad)  
    11ae:	03 09                	add    (%rcx),%ecx
    11b0:	00 00                	add    %al,(%rax)
    11b2:	04 01                	add    $0x1,%al
    11b4:	08 b7 02 00 00 04    	or     %dh,0x4000002(%rdi)
    11ba:	01 06                	add    %eax,(%rsi)
    11bc:	b9 02 00 00 04       	mov    $0x4000002,%ecx
    11c1:	02 05 8f 0a 00 00    	add    0xa8f(%rip),%al        # 1c56 <_init-0x3feab2>
    11c7:	31 80 05 00 00 11    	xor    %eax,0x11000005(%rax)
    11cd:	37                   	(bad)  
    11ce:	da 11                	ficoml (%rcx)
    11d0:	00 00                	add    %al,(%rax)
    11d2:	34 11                	xor    $0x11,%al
    11d4:	38 ec                	cmp    %ch,%ah
    11d6:	02 00                	add    (%rax),%al
    11d8:	00 00                	add    %al,(%rax)
    11da:	35 08 ff 02 00       	xor    $0x2ff08,%eax
    11df:	00 35 08 2f 03 00    	add    %dh,0x32f08(%rip)        # 340ed <_init-0x3cc61b>
    11e5:	00 04 01             	add    %al,(%rcx,%rax,1)
    11e8:	02 38                	add    (%rax),%bh
    11ea:	08 00                	or     %al,(%rax)
    11ec:	00 10                	add    %dl,(%rax)
    11ee:	08 2f                	or     %ch,(%rdi)
    11f0:	03 00                	add    (%rax),%eax
    11f2:	00 10                	add    %dl,(%rax)
    11f4:	08 ff                	or     %bh,%bh
    11f6:	02 00                	add    (%rax),%al
    11f8:	00 35 08 55 04 00    	add    %dh,0x45508(%rip)        # 46706 <_init-0x3ba002>
    11fe:	00 05 4a 0b 00 00    	add    %al,0xb4a(%rip)        # 1d4e <_init-0x3fe9ba>
    1204:	60                   	(bad)  
    1205:	12 36                	adc    (%rsi),%dh
    1207:	2c 13                	sub    $0x13,%al
    1209:	00 00                	add    %al,(%rax)
    120b:	06                   	(bad)  
    120c:	b3 01                	mov    $0x1,%bl
    120e:	00 00                	add    %al,(%rax)
    1210:	12 3a                	adc    (%rdx),%bh
    1212:	98                   	cwtl   
    1213:	0b 00                	or     (%rax),%eax
    1215:	00 00                	add    %al,(%rax)
    1217:	06                   	(bad)  
    1218:	e9 03 00 00 12       	jmpq   12001220 <_end+0x11a00088>
    121d:	3b 98 0b 00 00 08    	cmp    0x800000b(%rax),%ebx
    1223:	06                   	(bad)  
    1224:	c7                   	(bad)  
    1225:	0a 00                	or     (%rax),%al
    1227:	00 12                	add    %dl,(%rdx)
    1229:	41 98                	rex.B cwtl 
    122b:	0b 00                	or     (%rax),%eax
    122d:	00 10                	add    %dl,(%rax)
    122f:	06                   	(bad)  
    1230:	ac                   	lods   %ds:(%rsi),%al
    1231:	00 00                	add    %al,(%rax)
    1233:	00 12                	add    %dl,(%rdx)
    1235:	47 98                	rex.RXB cwtl 
    1237:	0b 00                	or     (%rax),%eax
    1239:	00 18                	add    %bl,(%rax)
    123b:	06                   	(bad)  
    123c:	7f 0a                	jg     1248 <_init-0x3ff4c0>
    123e:	00 00                	add    %al,(%rax)
    1240:	12 48 98             	adc    -0x68(%rax),%cl
    1243:	0b 00                	or     (%rax),%eax
    1245:	00 20                	add    %ah,(%rax)
    1247:	06                   	(bad)  
    1248:	af                   	scas   %es:(%rdi),%eax
    1249:	01 00                	add    %eax,(%rax)
    124b:	00 12                	add    %dl,(%rdx)
    124d:	49 98                	rex.WB cltq 
    124f:	0b 00                	or     (%rax),%eax
    1251:	00 28                	add    %ch,(%rax)
    1253:	06                   	(bad)  
    1254:	e5 03                	in     $0x3,%eax
    1256:	00 00                	add    %al,(%rax)
    1258:	12 4a 98             	adc    -0x68(%rdx),%cl
    125b:	0b 00                	or     (%rax),%eax
    125d:	00 30                	add    %dh,(%rax)
    125f:	06                   	(bad)  
    1260:	c3                   	retq   
    1261:	0a 00                	or     (%rax),%al
    1263:	00 12                	add    %dl,(%rdx)
    1265:	4b 98                	rex.WXB cltq 
    1267:	0b 00                	or     (%rax),%eax
    1269:	00 38                	add    %bh,(%rax)
    126b:	06                   	(bad)  
    126c:	8b 07                	mov    (%rdi),%eax
    126e:	00 00                	add    %al,(%rax)
    1270:	12 4c 98 0b          	adc    0xb(%rax,%rbx,4),%cl
    1274:	00 00                	add    %al,(%rax)
    1276:	40 06                	rex (bad) 
    1278:	56                   	push   %rsi
    1279:	04 00                	add    $0x0,%al
    127b:	00 12                	add    %dl,(%rdx)
    127d:	4d 98                	rex.WRB cltq 
    127f:	0b 00                	or     (%rax),%eax
    1281:	00 48 06             	add    %cl,0x6(%rax)
    1284:	ea                   	(bad)  
    1285:	00 00                	add    %al,(%rax)
    1287:	00 12                	add    %dl,(%rdx)
    1289:	4e f8                	rex.WRX clc 
    128b:	00 00                	add    %al,(%rax)
    128d:	00 50 06             	add    %dl,0x6(%rax)
    1290:	ee                   	out    %al,(%dx)
    1291:	00 00                	add    %al,(%rax)
    1293:	00 12                	add    %dl,(%rdx)
    1295:	4f f8                	rex.WRXB clc 
    1297:	00 00                	add    %al,(%rax)
    1299:	00 51 06             	add    %dl,0x6(%rcx)
    129c:	6f                   	outsl  %ds:(%rsi),(%dx)
    129d:	04 00                	add    $0x0,%al
    129f:	00 12                	add    %dl,(%rdx)
    12a1:	51                   	push   %rcx
    12a2:	f8                   	clc    
    12a3:	00 00                	add    %al,(%rax)
    12a5:	00 52 06             	add    %dl,0x6(%rdx)
    12a8:	34 09                	xor    $0x9,%al
    12aa:	00 00                	add    %al,(%rax)
    12ac:	12 53 f8             	adc    -0x8(%rbx),%dl
    12af:	00 00                	add    %al,(%rax)
    12b1:	00 53 06             	add    %dl,0x6(%rbx)
    12b4:	fb                   	sti    
    12b5:	01 00                	add    %eax,(%rax)
    12b7:	00 12                	add    %dl,(%rdx)
    12b9:	55                   	push   %rbp
    12ba:	f8                   	clc    
    12bb:	00 00                	add    %al,(%rax)
    12bd:	00 54 06 54          	add    %dl,0x54(%rsi,%rax,1)
    12c1:	05 00 00 12 57       	add    $0x57120000,%eax
    12c6:	f8                   	clc    
    12c7:	00 00                	add    %al,(%rax)
    12c9:	00 55 06             	add    %dl,0x6(%rbp)
    12cc:	13 0b                	adc    (%rbx),%ecx
    12ce:	00 00                	add    %al,(%rax)
    12d0:	12 5e f8             	adc    -0x8(%rsi),%bl
    12d3:	00 00                	add    %al,(%rax)
    12d5:	00 56 06             	add    %dl,0x6(%rsi)
    12d8:	96                   	xchg   %eax,%esi
    12d9:	03 00                	add    (%rax),%eax
    12db:	00 12                	add    %dl,(%rdx)
    12dd:	5f                   	pop    %rdi
    12de:	f8                   	clc    
    12df:	00 00                	add    %al,(%rax)
    12e1:	00 57 06             	add    %dl,0x6(%rdi)
    12e4:	6b 04 00 00          	imul   $0x0,(%rax,%rax,1),%eax
    12e8:	12 62 f8             	adc    -0x8(%rdx),%ah
    12eb:	00 00                	add    %al,(%rax)
    12ed:	00 58 06             	add    %bl,0x6(%rax)
    12f0:	30 09                	xor    %cl,(%rcx)
    12f2:	00 00                	add    %al,(%rax)
    12f4:	12 64 f8 00          	adc    0x0(%rax,%rdi,8),%ah
    12f8:	00 00                	add    %al,(%rax)
    12fa:	59                   	pop    %rcx
    12fb:	06                   	(bad)  
    12fc:	f7 01 00 00 12 66    	testl  $0x66120000,(%rcx)
    1302:	f8                   	clc    
    1303:	00 00                	add    %al,(%rax)
    1305:	00 5a 06             	add    %bl,0x6(%rdx)
    1308:	50                   	push   %rax
    1309:	05 00 00 12 68       	add    $0x68120000,%eax
    130e:	f8                   	clc    
    130f:	00 00                	add    %al,(%rax)
    1311:	00 5b 06             	add    %bl,0x6(%rbx)
    1314:	0f 0b                	ud2    
    1316:	00 00                	add    %al,(%rax)
    1318:	12 6f f8             	adc    -0x8(%rdi),%ch
    131b:	00 00                	add    %al,(%rax)
    131d:	00 5c 06 92          	add    %bl,-0x6e(%rsi,%rax,1)
    1321:	03 00                	add    (%rax),%eax
    1323:	00 12                	add    %dl,(%rdx)
    1325:	70 f8                	jo     131f <_init-0x3ff3e9>
    1327:	00 00                	add    %al,(%rax)
    1329:	00 5d 00             	add    %bl,0x0(%rbp)
    132c:	2f                   	(bad)  
    132d:	14 0a                	adc    $0xa,%al
    132f:	00 00                	add    %al,(%rax)
    1331:	12 7d 98             	adc    -0x68(%rbp),%bh
    1334:	0b 00                	or     (%rax),%eax
    1336:	00 46 13             	add    %al,0x13(%rsi)
    1339:	00 00                	add    %al,(%rax)
    133b:	16                   	(bad)  
    133c:	ff 00                	incl   (%rax)
    133e:	00 00                	add    %al,(%rax)
    1340:	16                   	(bad)  
    1341:	28 01                	sub    %al,(%rcx)
    1343:	00 00                	add    %al,(%rax)
    1345:	00 36                	add    %dh,(%rsi)
    1347:	a1 00 00 00 12 80 51 	movabs 0x13518012000000,%eax
    134e:	13 00 
    1350:	00 10                	add    %dl,(%rax)
    1352:	08 ff                	or     %bh,%bh
    1354:	11 00                	adc    %eax,(%rax)
    1356:	00 03                	add    %al,(%rbx)
    1358:	4a 0c 00             	rex.WX or $0x0,%al
    135b:	00 13                	add    %dl,(%rbx)
    135d:	28 ff                	sub    %bh,%bh
    135f:	00 00                	add    %al,(%rax)
    1361:	00 03                	add    %al,(%rbx)
    1363:	eb 07                	jmp    136c <_init-0x3ff39c>
    1365:	00 00                	add    %al,(%rax)
    1367:	14 20                	adc    $0x20,%al
    1369:	ff 00                	incl   (%rax)
    136b:	00 00                	add    %al,(%rax)
    136d:	0f e6                	(bad)  
    136f:	11 00                	adc    %eax,(%rax)
    1371:	00 10                	add    %dl,(%rax)
    1373:	08 98 0b 00 00 0f    	or     %bl,0xf00000b(%rax)
    1379:	91                   	xchg   %eax,%ecx
    137a:	00 00                	add    %al,(%rax)
    137c:	00 10                	add    %dl,(%rax)
    137e:	08 0c 06             	or     %cl,(%rsi,%rax,1)
    1381:	00 00                	add    %al,(%rax)
    1383:	03 8e 02 00 00 15    	add    0x15000002(%rsi),%ecx
    1389:	34 91                	xor    $0x91,%al
    138b:	00 00                	add    %al,(%rax)
    138d:	00 03                	add    %al,(%rbx)
    138f:	45 04 00             	rex.RB add $0x0,%al
    1392:	00 15 ba 99 13 00    	add    %dl,0x1399ba(%rip)        # 13ad52 <_init-0x2c59b6>
    1398:	00 10                	add    %dl,(%rax)
    139a:	08 9f 13 00 00 0f    	or     %bl,0xf000013(%rdi)
    13a0:	57                   	push   %rdi
    13a1:	13 00                	adc    (%rax),%eax
    13a3:	00 2f                	add    %ch,(%rdi)
    13a5:	5c                   	pop    %rsp
    13a6:	0c 00                	or     $0x0,%al
    13a8:	00 15 af ff 00 00    	add    %dl,0xffaf(%rip)        # 1135d <_init-0x3ef3ab>
    13ae:	00 be 13 00 00 16    	add    %bh,0x16000013(%rsi)
    13b4:	98                   	cwtl   
    13b5:	00 00                	add    %al,(%rax)
    13b7:	00 16                	add    %dl,(%rsi)
    13b9:	83 13 00             	adcl   $0x0,(%rbx)
    13bc:	00 00                	add    %al,(%rax)
    13be:	2f                   	(bad)  
    13bf:	09 02                	or     %eax,(%rdx)
    13c1:	00 00                	add    %al,(%rax)
    13c3:	15 dd 98 00 00       	adc    $0x98dd,%eax
    13c8:	00 d8                	add    %bl,%al
    13ca:	13 00                	adc    (%rax),%eax
    13cc:	00 16                	add    %dl,(%rsi)
    13ce:	98                   	cwtl   
    13cf:	00 00                	add    %al,(%rax)
    13d1:	00 16                	add    %dl,(%rsi)
    13d3:	8e 13                	mov    (%rbx),%ss
    13d5:	00 00                	add    %al,(%rax)
    13d7:	00 2f                	add    %ch,(%rdi)
    13d9:	0b 02                	or     (%rdx),%eax
    13db:	00 00                	add    %al,(%rax)
    13dd:	15 da 8e 13 00       	adc    $0x138eda,%eax
    13e2:	00 ed                	add    %ch,%ch
    13e4:	13 00                	adc    (%rax),%eax
    13e6:	00 16                	add    %dl,(%rsi)
    13e8:	28 01                	sub    %al,(%rcx)
    13ea:	00 00                	add    %al,(%rax)
    13ec:	00 2f                	add    %ch,(%rdi)
    13ee:	5e                   	pop    %rsi
    13ef:	0c 00                	or     $0x0,%al
    13f1:	00 15 ab 83 13 00    	add    %dl,0x1383ab(%rip)        # 1397a2 <_init-0x2c6f66>
    13f7:	00 02                	add    %al,(%rdx)
    13f9:	14 00                	adc    $0x0,%al
    13fb:	00 16                	add    %dl,(%rsi)
    13fd:	28 01                	sub    %al,(%rcx)
    13ff:	00 00                	add    %al,(%rax)
    1401:	00 0f                	add    %cl,(%rdi)
    1403:	c0 11 00             	rclb   $0x0,(%rcx)
    1406:	00 0f                	add    %cl,(%rdi)
    1408:	23 0e                	and    (%rsi),%ecx
    140a:	00 00                	add    %al,(%rax)
    140c:	34 01                	xor    $0x1,%al
    140e:	03 33                	add    (%rbx),%esi
    1410:	01 00                	add    %eax,(%rax)
    1412:	00 37                	add    %dh,(%rdi)
    1414:	36 0a 00             	or     %ss:(%rax),%al
    1417:	00 08                	add    %cl,(%rax)
    1419:	01 05 89 14 00 00    	add    %eax,0x1489(%rip)        # 28a8 <_init-0x3fde60>
    141f:	06                   	(bad)  
    1420:	8b 00                	mov    (%rax),%eax
    1422:	00 00                	add    %al,(%rax)
    1424:	01 19                	add    %ebx,(%rcx)
    1426:	ff 00                	incl   (%rax)
    1428:	00 00                	add    %al,(%rax)
    142a:	00 06                	add    %al,(%rsi)
    142c:	9c                   	pushfq 
    142d:	08 00                	or     %al,(%rax)
    142f:	00 01                	add    %al,(%rcx)
    1431:	1a ff                	sbb    %bh,%bh
    1433:	00 00                	add    %al,(%rax)
    1435:	00 04 38             	add    %al,(%rax,%rdi,1)
    1438:	36 0a 00             	or     %ss:(%rax),%al
    143b:	00 01                	add    %al,(%rcx)
    143d:	08 01                	or     %al,(%rcx)
    143f:	47 14 00             	rex.RXB adc $0x0,%al
    1442:	00 52 14             	add    %dl,0x14(%rdx)
    1445:	00 00                	add    %al,(%rax)
    1447:	22 89 14 00 00 16    	and    0x16000014(%rcx),%cl
    144d:	ff 00                	incl   (%rax)
    144f:	00 00                	add    %al,(%rax)
    1451:	00 38                	add    %bh,(%rax)
    1453:	36 0a 00             	or     %ss:(%rax),%al
    1456:	00 01                	add    %al,(%rcx)
    1458:	0b 01                	or     (%rcx),%eax
    145a:	62                   	(bad)  
    145b:	14 00                	adc    $0x0,%al
    145d:	00 68 14             	add    %ch,0x14(%rax)
    1460:	00 00                	add    %al,(%rax)
    1462:	22 89 14 00 00 00    	and    0x14(%rcx),%cl
    1468:	39 b0 05 00 00 01    	cmp    %esi,0x1000005(%rax)
    146e:	0f 00 06             	sldt   (%rsi)
    1471:	00 00                	add    %al,(%rax)
    1473:	8f                   	(bad)  
    1474:	14 00                	adc    $0x0,%al
    1476:	00 01                	add    %al,(%rcx)
    1478:	39 3b                	cmp    %edi,(%rbx)
    147a:	0a 00                	or     (%rax),%al
    147c:	00 01                	add    %al,(%rcx)
    147e:	13 23                	adc    (%rbx),%esp
    1480:	06                   	(bad)  
    1481:	00 00                	add    %al,(%rax)
    1483:	8f                   	(bad)  
    1484:	14 00                	adc    $0x0,%al
    1486:	00 01                	add    %al,(%rcx)
    1488:	00 10                	add    %dl,(%rax)
    148a:	08 13                	or     %dl,(%rbx)
    148c:	14 00                	adc    $0x0,%al
    148e:	00 3a                	add    %bh,(%rdx)
    1490:	13 14 00             	adc    (%rax,%rax,1),%edx
    1493:	00 ff                	add    %bh,%bh
    1495:	00 00                	add    %al,(%rax)
    1497:	00 3b                	add    %bh,(%rbx)
    1499:	37                   	(bad)  
    149a:	14 00                	adc    $0x0,%al
    149c:	00 02                	add    %al,(%rdx)
    149e:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    149f:	14 00                	adc    $0x0,%al
    14a1:	00 b9 14 00 00 3c    	add    %bh,0x3c000014(%rcx)
    14a7:	96                   	xchg   %eax,%esi
    14a8:	05 00 00 b9 14       	add    $0x14b90000,%eax
    14ad:	00 00                	add    %al,(%rax)
    14af:	3d 69 00 01 08       	cmp    $0x8010069,%eax
    14b4:	ff 00                	incl   (%rax)
    14b6:	00 00                	add    %al,(%rax)
    14b8:	00 0f                	add    %cl,(%rdi)
    14ba:	89 14 00             	mov    %edx,(%rax,%rax,1)
    14bd:	00 3e                	add    %bh,(%rsi)
    14bf:	98                   	cwtl   
    14c0:	14 00                	adc    $0x0,%al
    14c2:	00 11                	add    %dl,(%rcx)
    14c4:	03 00                	add    (%rax),%eax
    14c6:	00 3c 0a             	add    %bh,(%rdx,%rcx,1)
    14c9:	40 00 00             	add    %al,(%rax)
    14cc:	00 00                	add    %al,(%rax)
    14ce:	00 21                	add    %ah,(%rcx)
    14d0:	00 00                	add    %al,(%rax)
    14d2:	00 00                	add    %al,(%rax)
    14d4:	00 00                	add    %al,(%rax)
    14d6:	00 01                	add    %al,(%rcx)
    14d8:	9c                   	pushfq 
    14d9:	e1 14                	loope  14ef <_init-0x3ff219>
    14db:	00 00                	add    %al,(%rax)
    14dd:	f2 14 00             	repnz adc $0x0,%al
    14e0:	00 3f                	add    %bh,(%rdi)
    14e2:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
    14e3:	14 00                	adc    $0x0,%al
    14e5:	00 02                	add    %al,(%rdx)
    14e7:	91                   	xchg   %eax,%ecx
    14e8:	68 3f af 14 00       	pushq  $0x14af3f
    14ed:	00 02                	add    %al,(%rdx)
    14ef:	91                   	xchg   %eax,%ecx
    14f0:	64 00 40 68          	add    %al,%fs:0x68(%rax)
    14f4:	14 00                	adc    $0x0,%al
    14f6:	00 5d 0a             	add    %bl,0xa(%rbp)
    14f9:	40 00 00             	add    %al,(%rax)
    14fc:	00 00                	add    %al,(%rax)
    14fe:	00 0b                	add    %cl,(%rbx)
    1500:	00 00                	add    %al,(%rax)
    1502:	00 00                	add    %al,(%rax)
    1504:	00 00                	add    %al,(%rax)
    1506:	00 01                	add    %al,(%rcx)
    1508:	9c                   	pushfq 
    1509:	40 78 14             	rex js 1520 <_init-0x3ff1e8>
    150c:	00 00                	add    %al,(%rax)
    150e:	68 0a 40 00 00       	pushq  $0x400a
    1513:	00 00                	add    %al,(%rax)
    1515:	00 0b                	add    %cl,(%rbx)
    1517:	00 00                	add    %al,(%rax)
    1519:	00 00                	add    %al,(%rax)
    151b:	00 00                	add    %al,(%rax)
    151d:	00 01                	add    %al,(%rcx)
    151f:	9c                   	pushfq 
    1520:	41 0f 00 00          	sldt   (%r8)
    1524:	00 01                	add    %al,(%rcx)
    1526:	1d ff 00 00 00       	sbb    $0xff,%eax
    152b:	bd 08 40 00 00       	mov    $0x4008,%ebp
    1530:	00 00                	add    %al,(%rax)
    1532:	00 2d 01 00 00 00    	add    %ch,0x1(%rip)        # 1539 <_init-0x3ff1cf>
    1538:	00 00                	add    %al,(%rax)
    153a:	00 01                	add    %al,(%rcx)
    153c:	9c                   	pushfq 
    153d:	99                   	cltd   
    153e:	15 00 00 42 b9       	adc    $0xb9420000,%eax
    1543:	05 00 00 01 1d       	add    $0x1d010000,%eax
    1548:	ff 00                	incl   (%rax)
    154a:	00 00                	add    %al,(%rax)
    154c:	03 91 bc 7f 42 f2    	add    -0xdbd8044(%rcx),%edx
    1552:	05 00 00 01 1d       	add    $0x1d010000,%eax
    1557:	72 13                	jb     156c <_init-0x3ff19c>
    1559:	00 00                	add    %al,(%rax)
    155b:	03 91 b0 7f 43 cd    	add    -0x32bc8050(%rcx),%edx
    1561:	08 40 00             	or     %al,0x0(%rax)
    1564:	00 00                	add    %al,(%rax)
    1566:	00 00                	add    %al,(%rax)
    1568:	16                   	(bad)  
    1569:	01 00                	add    %eax,(%rax)
    156b:	00 00                	add    %al,(%rax)
    156d:	00 00                	add    %al,(%rax)
    156f:	00 44 70 76          	add    %al,0x76(%rax,%rsi,2)
    1573:	00 01                	add    %al,(%rcx)
    1575:	1f                   	(bad)  
    1576:	8f                   	(bad)  
    1577:	14 00                	adc    $0x0,%al
    1579:	00 02                	add    %al,(%rdx)
    157b:	91                   	xchg   %eax,%ecx
    157c:	58                   	pop    %rax
    157d:	44 70 76             	rex.R jo 15f6 <_init-0x3ff112>
    1580:	32 00                	xor    (%rax),%al
    1582:	01 20                	add    %esp,(%rax)
    1584:	8f                   	(bad)  
    1585:	14 00                	adc    $0x0,%al
    1587:	00 02                	add    %al,(%rdx)
    1589:	91                   	xchg   %eax,%ecx
    158a:	50                   	push   %rax
    158b:	44 62                	rex.R (bad) 
    158d:	00 01                	add    %al,(%rcx)
    158f:	25 13 14 00 00       	and    $0x1413,%eax
    1594:	02 91 40 00 00 45    	add    0x45000040(%rcx),%dl
    159a:	b3 08                	mov    $0x8,%bl
    159c:	00 00                	add    %al,(%rax)
    159e:	ea                   	(bad)  
    159f:	09 40 00             	or     %eax,0x0(%rax)
    15a2:	00 00                	add    %al,(%rax)
    15a4:	00 00                	add    %al,(%rax)
    15a6:	3d 00 00 00 00       	cmp    $0x0,%eax
    15ab:	00 00                	add    %al,(%rax)
    15ad:	00 01                	add    %al,(%rcx)
    15af:	9c                   	pushfq 
    15b0:	d1 15 00 00 42 14    	rcll   0x14420000(%rip)        # 144215b6 <_end+0x13e2041e>
    15b6:	06                   	(bad)  
    15b7:	00 00                	add    %al,(%rax)
    15b9:	01 2f                	add    %ebp,(%rdi)
    15bb:	ff 00                	incl   (%rax)
    15bd:	00 00                	add    %al,(%rax)
    15bf:	02 91 6c 42 63 05    	add    0x563426c(%rcx),%dl
    15c5:	00 00                	add    %al,(%rax)
    15c7:	01 2f                	add    %ebp,(%rdi)
    15c9:	ff 00                	incl   (%rax)
    15cb:	00 00                	add    %al,(%rax)
    15cd:	02 91 68 00 46 00    	add    0x460068(%rcx),%dl
    15d3:	00 00                	add    %al,(%rax)
    15d5:	00 27                	add    %ah,(%rdi)
    15d7:	0a 40 00             	or     0x0(%rax),%al
    15da:	00 00                	add    %al,(%rax)
    15dc:	00 00                	add    %al,(%rax)
    15de:	15 00 00 00 00       	adc    $0x0,%eax
    15e3:	00 00                	add    %al,(%rax)
    15e5:	00 01                	add    %al,(%rcx)
    15e7:	9c                   	pushfq 
    15e8:	47 98                	rex.RXB cwtl 
    15ea:	0b 00                	or     (%rax),%eax
    15ec:	00 84 00 00 00 48 76 	add    %al,0x76480000(%rax,%rax,1)
    15f3:	08 00                	or     %al,(%rax)
    15f5:	00 09                	add    %cl,(%rcx)
    15f7:	03 91 11 60 00 00    	add    0x6011(%rcx),%edx
    15fd:	00 00                	add    %al,(%rax)
    15ff:	00 49 07             	add    %cl,0x7(%rcx)
    1602:	10 00                	adc    %al,(%rax)
    1604:	00 13                	add    %dl,(%rbx)
    1606:	04 00                	add    $0x0,%al
    1608:	00 80 80 80 80 78    	add    %al,0x78808080(%rax)
    160e:	4a 12 10             	rex.WX adc (%rax),%dl
    1611:	00 00                	add    %al,(%rax)
    1613:	59                   	pop    %rcx
    1614:	00 00                	add    %al,(%rax)
    1616:	00 ff                	add    %bh,%bh
    1618:	ff                   	(bad)  
    1619:	ff                   	(bad)  
    161a:	7f 4b                	jg     1667 <_init-0x3ff0a1>
    161c:	6a 10                	pushq  $0x10
    161e:	00 00                	add    %al,(%rax)
    1620:	f3 06                	repz (bad) 
    1622:	00 00                	add    %al,(%rax)
    1624:	40                   	rex
    1625:	4b 96                	rex.WXB xchg %rax,%r14
    1627:	10 00                	adc    %al,(%rax)
    1629:	00 79 09             	add    %bh,0x9(%rcx)
    162c:	00 00                	add    %al,(%rax)
    162e:	7f 49                	jg     1679 <_init-0x3ff08f>
    1630:	cd 10                	int    $0x10
    1632:	00 00                	add    %al,(%rax)
    1634:	8b 06                	mov    (%rsi),%eax
    1636:	00 00                	add    %al,(%rax)
    1638:	80 80 7e 4c d8 10 00 	addb   $0x0,0x10d84c7e(%rax)
    163f:	00 d8                	add    %bl,%al
    1641:	02 00                	add    (%rax),%al
    1643:	00 ff                	add    %bh,%bh
    1645:	7f 49                	jg     1690 <_init-0x3ff078>
    1647:	0b 11                	or     (%rcx),%edx
    1649:	00 00                	add    %al,(%rax)
    164b:	47 07                	rex.RXB (bad) 
    164d:	00 00                	add    %al,(%rax)
    164f:	80 80 80 80 80 80 80 	addb   $0x80,-0x7f7f7f80(%rax)
    1656:	80 80 7f 4d 16 11 00 	addb   $0x0,0x11164d7f(%rax)
    165d:	00 35 03 00 00 ff    	add    %dh,-0xfffffd(%rip)        # ffffffffff001666 <_end+0xfffffffffea004ce>
    1663:	ff                   	(bad)  
    1664:	ff                   	(bad)  
    1665:	ff                   	(bad)  
    1666:	ff                   	(bad)  
    1667:	ff                   	(bad)  
    1668:	ff                   	(bad)  
    1669:	7f 00                	jg     166b <_init-0x3ff09d>

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2ab017e>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	55                   	push   %rbp
   c:	17                   	(bad)  
   d:	11 01                	adc    %eax,(%rcx)
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 13                	add    (%rbx),%dl
  15:	00 03                	add    %al,(%rbx)
  17:	0e                   	(bad)  
  18:	3c 19                	cmp    $0x19,%al
  1a:	00 00                	add    %al,(%rax)
  1c:	03 16                	add    (%rsi),%edx
  1e:	00 03                	add    %al,(%rbx)
  20:	0e                   	(bad)  
  21:	3a 0b                	cmp    (%rbx),%cl
  23:	3b 0b                	cmp    (%rbx),%ecx
  25:	49 13 00             	adc    (%r8),%rax
  28:	00 04 24             	add    %al,(%rsp)
  2b:	00 0b                	add    %cl,(%rbx)
  2d:	0b 3e                	or     (%rsi),%edi
  2f:	0b 03                	or     (%rbx),%eax
  31:	0e                   	(bad)  
  32:	00 00                	add    %al,(%rax)
  34:	05 13 01 03 0e       	add    $0xe030113,%eax
  39:	0b 0b                	or     (%rbx),%ecx
  3b:	3a 0b                	cmp    (%rbx),%cl
  3d:	3b 0b                	cmp    (%rbx),%ecx
  3f:	01 13                	add    %edx,(%rbx)
  41:	00 00                	add    %al,(%rax)
  43:	06                   	(bad)  
  44:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
  49:	0b 3b                	or     (%rbx),%edi
  4b:	0b 49 13             	or     0x13(%rcx),%ecx
  4e:	38 0b                	cmp    %cl,(%rbx)
  50:	00 00                	add    %al,(%rax)
  52:	07                   	(bad)  
  53:	0f 00 0b             	str    (%rbx)
  56:	0b 00                	or     (%rax),%eax
  58:	00 08                	add    %cl,(%rax)
  5a:	16                   	(bad)  
  5b:	00 03                	add    %al,(%rbx)
  5d:	0e                   	(bad)  
  5e:	3a 0b                	cmp    (%rbx),%cl
  60:	3b 05 49 13 00 00    	cmp    0x1349(%rip),%eax        # 13af <_init-0x3ff359>
  66:	09 13                	or     %edx,(%rbx)
  68:	01 0b                	add    %ecx,(%rbx)
  6a:	0b 3a                	or     (%rdx),%edi
  6c:	0b 3b                	or     (%rbx),%edi
  6e:	0b 6e 0e             	or     0xe(%rsi),%ebp
  71:	01 13                	add    %edx,(%rbx)
  73:	00 00                	add    %al,(%rax)
  75:	0a 17                	or     (%rdi),%dl
  77:	01 0b                	add    %ecx,(%rbx)
  79:	0b 3a                	or     (%rdx),%edi
  7b:	0b 3b                	or     (%rbx),%edi
  7d:	0b 01                	or     (%rcx),%eax
  7f:	13 00                	adc    (%rax),%eax
  81:	00 0b                	add    %cl,(%rbx)
  83:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
  88:	0b 3b                	or     (%rbx),%edi
  8a:	0b 49 13             	or     0x13(%rcx),%ecx
  8d:	00 00                	add    %al,(%rax)
  8f:	0c 01                	or     $0x1,%al
  91:	01 49 13             	add    %ecx,0x13(%rcx)
  94:	01 13                	add    %edx,(%rbx)
  96:	00 00                	add    %al,(%rax)
  98:	0d 21 00 49 13       	or     $0x13490021,%eax
  9d:	2f                   	(bad)  
  9e:	0b 00                	or     (%rax),%eax
  a0:	00 0e                	add    %cl,(%rsi)
  a2:	24 00                	and    $0x0,%al
  a4:	0b 0b                	or     (%rbx),%ecx
  a6:	3e 0b 03             	or     %ds:(%rbx),%eax
  a9:	08 00                	or     %al,(%rax)
  ab:	00 0f                	add    %cl,(%rdi)
  ad:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
  b1:	00 00                	add    %al,(%rax)
  b3:	10 0f                	adc    %cl,(%rdi)
  b5:	00 0b                	add    %cl,(%rbx)
  b7:	0b 49 13             	or     0x13(%rcx),%ecx
  ba:	00 00                	add    %al,(%rax)
  bc:	11 39                	adc    %edi,(%rcx)
  be:	01 03                	add    %eax,(%rbx)
  c0:	08 3a                	or     %bh,(%rdx)
  c2:	0b 3b                	or     (%rbx),%edi
  c4:	0b 01                	or     (%rcx),%eax
  c6:	13 00                	adc    (%rax),%eax
  c8:	00 12                	add    %dl,(%rdx)
  ca:	08 00                	or     %al,(%rax)
  cc:	3a 0b                	cmp    (%rbx),%cl
  ce:	3b 0b                	cmp    (%rbx),%ecx
  d0:	18 13                	sbb    %dl,(%rbx)
  d2:	00 00                	add    %al,(%rax)
  d4:	13 08                	adc    (%rax),%ecx
  d6:	00 3a                	add    %bh,(%rdx)
  d8:	0b 3b                	or     (%rbx),%edi
  da:	05 18 13 00 00       	add    $0x1318,%eax
  df:	14 39                	adc    $0x39,%al
  e1:	00 03                	add    %al,(%rbx)
  e3:	0e                   	(bad)  
  e4:	3a 0b                	cmp    (%rbx),%cl
  e6:	3b 0b                	cmp    (%rbx),%ecx
  e8:	00 00                	add    %al,(%rax)
  ea:	15 2e 01 3f 19       	adc    $0x193f012e,%eax
  ef:	03 0e                	add    (%rsi),%ecx
  f1:	3a 0b                	cmp    (%rbx),%cl
  f3:	3b 0b                	cmp    (%rbx),%ecx
  f5:	6e                   	outsb  %ds:(%rsi),(%dx)
  f6:	0e                   	(bad)  
  f7:	3c 19                	cmp    $0x19,%al
  f9:	01 13                	add    %edx,(%rbx)
  fb:	00 00                	add    %al,(%rax)
  fd:	16                   	(bad)  
  fe:	05 00 49 13 00       	add    $0x134900,%eax
 103:	00 17                	add    %dl,(%rdi)
 105:	2e 01 3f             	add    %edi,%cs:(%rdi)
 108:	19 03                	sbb    %eax,(%rbx)
 10a:	08 3a                	or     %bh,(%rdx)
 10c:	0b 3b                	or     (%rbx),%edi
 10e:	0b 6e 0e             	or     0xe(%rsi),%ebp
 111:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 115:	01 13                	add    %edx,(%rbx)
 117:	00 00                	add    %al,(%rax)
 119:	18 2e                	sbb    %ch,(%rsi)
 11b:	01 3f                	add    %edi,(%rdi)
 11d:	19 03                	sbb    %eax,(%rbx)
 11f:	0e                   	(bad)  
 120:	3a 0b                	cmp    (%rbx),%cl
 122:	3b 0b                	cmp    (%rbx),%ecx
 124:	6e                   	outsb  %ds:(%rsi),(%dx)
 125:	0e                   	(bad)  
 126:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 12a:	01 13                	add    %edx,(%rbx)
 12c:	00 00                	add    %al,(%rax)
 12e:	19 2e                	sbb    %ebp,(%rsi)
 130:	01 3f                	add    %edi,(%rdi)
 132:	19 03                	sbb    %eax,(%rbx)
 134:	0e                   	(bad)  
 135:	3a 0b                	cmp    (%rbx),%cl
 137:	3b 05 6e 0e 49 13    	cmp    0x13490e6e(%rip),%eax        # 13490fab <_end+0x12e8fe13>
 13d:	3c 19                	cmp    $0x19,%al
 13f:	01 13                	add    %edx,(%rbx)
 141:	00 00                	add    %al,(%rax)
 143:	1a 2e                	sbb    (%rsi),%ch
 145:	00 3f                	add    %bh,(%rdi)
 147:	19 03                	sbb    %eax,(%rbx)
 149:	08 3a                	or     %bh,(%rdx)
 14b:	0b 3b                	or     (%rbx),%edi
 14d:	05 6e 0e 49 13       	add    $0x13490e6e,%eax
 152:	3c 19                	cmp    $0x19,%al
 154:	00 00                	add    %al,(%rax)
 156:	1b 2e                	sbb    (%rsi),%ebp
 158:	01 3f                	add    %edi,(%rdi)
 15a:	19 03                	sbb    %eax,(%rbx)
 15c:	0e                   	(bad)  
 15d:	3a 0b                	cmp    (%rbx),%cl
 15f:	3b 05 6e 0e 49 13    	cmp    0x13490e6e(%rip),%eax        # 13490fd3 <_end+0x12e8fe3b>
 165:	3c 19                	cmp    $0x19,%al
 167:	00 00                	add    %al,(%rax)
 169:	1c 04                	sbb    $0x4,%al
 16b:	01 03                	add    %eax,(%rbx)
 16d:	0e                   	(bad)  
 16e:	0b 0b                	or     (%rbx),%ecx
 170:	3a 0b                	cmp    (%rbx),%cl
 172:	3b 0b                	cmp    (%rbx),%ecx
 174:	01 13                	add    %edx,(%rbx)
 176:	00 00                	add    %al,(%rax)
 178:	1d 28 00 03 0e       	sbb    $0xe030028,%eax
 17d:	1c 0d                	sbb    $0xd,%al
 17f:	00 00                	add    %al,(%rax)
 181:	1e                   	(bad)  
 182:	02 01                	add    (%rcx),%al
 184:	03 0e                	add    (%rsi),%ecx
 186:	3c 19                	cmp    $0x19,%al
 188:	01 13                	add    %edx,(%rbx)
 18a:	00 00                	add    %al,(%rax)
 18c:	1f                   	(bad)  
 18d:	02 01                	add    (%rcx),%al
 18f:	03 0e                	add    (%rsi),%ecx
 191:	0b 0b                	or     (%rbx),%ecx
 193:	3a 0b                	cmp    (%rbx),%cl
 195:	3b 05 32 0b 01 13    	cmp    0x13010b32(%rip),%eax        # 13010ccd <_end+0x12a0fb35>
 19b:	00 00                	add    %al,(%rax)
 19d:	20 0d 00 03 0e 3a    	and    %cl,0x3a0e0300(%rip)        # 3a0e04a3 <_end+0x39adf30b>
 1a3:	0b 3b                	or     (%rbx),%edi
 1a5:	05 49 13 3f 19       	add    $0x193f1349,%eax
 1aa:	3c 19                	cmp    $0x19,%al
 1ac:	00 00                	add    %al,(%rax)
 1ae:	21 2e                	and    %ebp,(%rsi)
 1b0:	01 3f                	add    %edi,(%rdi)
 1b2:	19 03                	sbb    %eax,(%rbx)
 1b4:	0e                   	(bad)  
 1b5:	3a 0b                	cmp    (%rbx),%cl
 1b7:	3b 05 32 0b 3c 19    	cmp    0x193c0b32(%rip),%eax        # 193c0cef <_end+0x18dbfb57>
 1bd:	64 13 01             	adc    %fs:(%rcx),%eax
 1c0:	13 00                	adc    (%rax),%eax
 1c2:	00 22                	add    %ah,(%rdx)
 1c4:	05 00 49 13 34       	add    $0x34134900,%eax
 1c9:	19 00                	sbb    %eax,(%rax)
 1cb:	00 23                	add    %ah,(%rbx)
 1cd:	2e 01 3f             	add    %edi,%cs:(%rdi)
 1d0:	19 03                	sbb    %eax,(%rbx)
 1d2:	0e                   	(bad)  
 1d3:	3a 0b                	cmp    (%rbx),%cl
 1d5:	3b 05 32 0b 3c 19    	cmp    0x193c0b32(%rip),%eax        # 193c0d0d <_end+0x18dbfb75>
 1db:	64 13 00             	adc    %fs:(%rax),%eax
 1de:	00 24 16             	add    %ah,(%rsi,%rdx,1)
 1e1:	00 03                	add    %al,(%rbx)
 1e3:	0e                   	(bad)  
 1e4:	3a 0b                	cmp    (%rbx),%cl
 1e6:	3b 0b                	cmp    (%rbx),%ecx
 1e8:	49 13 32             	adc    (%r10),%rsi
 1eb:	0b 00                	or     (%rax),%eax
 1ed:	00 25 0d 00 03 0e    	add    %ah,0xe03000d(%rip)        # e030200 <_end+0xda2f068>
 1f3:	3a 0b                	cmp    (%rbx),%cl
 1f5:	3b 05 49 13 3f 19    	cmp    0x193f1349(%rip),%eax        # 193f1544 <_end+0x18df03ac>
 1fb:	32 0b                	xor    (%rbx),%cl
 1fd:	3c 19                	cmp    $0x19,%al
 1ff:	1c 0b                	sbb    $0xb,%al
 201:	00 00                	add    %al,(%rax)
 203:	26 0d 00 03 08 3a    	es or  $0x3a080300,%eax
 209:	0b 3b                	or     (%rbx),%edi
 20b:	05 49 13 3f 19       	add    $0x193f1349,%eax
 210:	32 0b                	xor    (%rbx),%cl
 212:	3c 19                	cmp    $0x19,%al
 214:	1c 0b                	sbb    $0xb,%al
 216:	00 00                	add    %al,(%rax)
 218:	27                   	(bad)  
 219:	0d 00 03 0e 3a       	or     $0x3a0e0300,%eax
 21e:	0b 3b                	or     (%rbx),%edi
 220:	05 49 13 3f 19       	add    $0x193f1349,%eax
 225:	32 0b                	xor    (%rbx),%cl
 227:	3c 19                	cmp    $0x19,%al
 229:	1c 05                	sbb    $0x5,%al
 22b:	00 00                	add    %al,(%rax)
 22d:	28 16                	sub    %dl,(%rsi)
 22f:	00 03                	add    %al,(%rbx)
 231:	0e                   	(bad)  
 232:	3a 0b                	cmp    (%rbx),%cl
 234:	3b 05 49 13 32 0b    	cmp    0xb321349(%rip),%eax        # b321583 <_end+0xad203eb>
 23a:	00 00                	add    %al,(%rax)
 23c:	29 2f                	sub    %ebp,(%rdi)
 23e:	00 03                	add    %al,(%rbx)
 240:	0e                   	(bad)  
 241:	49 13 00             	adc    (%r8),%rax
 244:	00 2a                	add    %ch,(%rdx)
 246:	34 00                	xor    $0x0,%al
 248:	03 0e                	add    (%rsi),%ecx
 24a:	3a 0b                	cmp    (%rbx),%cl
 24c:	3b 0b                	cmp    (%rbx),%ecx
 24e:	6e                   	outsb  %ds:(%rsi),(%dx)
 24f:	0e                   	(bad)  
 250:	49 13 3f             	adc    (%r15),%rdi
 253:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 256:	00 00                	add    %al,(%rax)
 258:	2b 34 00             	sub    (%rax,%rax,1),%esi
 25b:	03 0e                	add    (%rsi),%ecx
 25d:	3a 0b                	cmp    (%rbx),%cl
 25f:	3b 0b                	cmp    (%rbx),%ecx
 261:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 265:	00 00                	add    %al,(%rax)
 267:	2c 2e                	sub    $0x2e,%al
 269:	01 3f                	add    %edi,(%rdi)
 26b:	19 03                	sbb    %eax,(%rbx)
 26d:	0e                   	(bad)  
 26e:	3a 0b                	cmp    (%rbx),%cl
 270:	3b 05 49 13 3c 19    	cmp    0x193c1349(%rip),%eax        # 193c15bf <_end+0x18dc0427>
 276:	01 13                	add    %edx,(%rbx)
 278:	00 00                	add    %al,(%rax)
 27a:	2d 18 00 00 00       	sub    $0x18,%eax
 27f:	2e 2e 00 3f          	cs add %bh,%cs:(%rdi)
 283:	19 03                	sbb    %eax,(%rbx)
 285:	0e                   	(bad)  
 286:	3a 0b                	cmp    (%rbx),%cl
 288:	3b 05 49 13 3c 19    	cmp    0x193c1349(%rip),%eax        # 193c15d7 <_end+0x18dc043f>
 28e:	00 00                	add    %al,(%rax)
 290:	2f                   	(bad)  
 291:	2e 01 3f             	add    %edi,%cs:(%rdi)
 294:	19 03                	sbb    %eax,(%rbx)
 296:	0e                   	(bad)  
 297:	3a 0b                	cmp    (%rbx),%cl
 299:	3b 0b                	cmp    (%rbx),%ecx
 29b:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 29f:	01 13                	add    %edx,(%rbx)
 2a1:	00 00                	add    %al,(%rax)
 2a3:	30 13                	xor    %dl,(%rbx)
 2a5:	01 03                	add    %eax,(%rbx)
 2a7:	08 0b                	or     %cl,(%rbx)
 2a9:	0b 3a                	or     (%rdx),%edi
 2ab:	0b 3b                	or     (%rbx),%edi
 2ad:	0b 01                	or     (%rcx),%eax
 2af:	13 00                	adc    (%rax),%eax
 2b1:	00 31                	add    %dh,(%rcx)
 2b3:	39 01                	cmp    %eax,(%rcx)
 2b5:	03 0e                	add    (%rsi),%ecx
 2b7:	3a 0b                	cmp    (%rbx),%cl
 2b9:	3b 0b                	cmp    (%rbx),%ecx
 2bb:	01 13                	add    %edx,(%rbx)
 2bd:	00 00                	add    %al,(%rax)
 2bf:	32 0d 00 03 0e 3a    	xor    0x3a0e0300(%rip),%cl        # 3a0e05c5 <_end+0x39adf42d>
 2c5:	0b 3b                	or     (%rbx),%edi
 2c7:	0b 49 13             	or     0x13(%rcx),%ecx
 2ca:	3f                   	(bad)  
 2cb:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 2ce:	00 00                	add    %al,(%rax)
 2d0:	33 13                	xor    (%rbx),%edx
 2d2:	01 03                	add    %eax,(%rbx)
 2d4:	0e                   	(bad)  
 2d5:	0b 0b                	or     (%rbx),%ecx
 2d7:	3a 0b                	cmp    (%rbx),%cl
 2d9:	3b 0b                	cmp    (%rbx),%ecx
 2db:	00 00                	add    %al,(%rax)
 2dd:	34 3a                	xor    $0x3a,%al
 2df:	00 3a                	add    %bh,(%rdx)
 2e1:	0b 3b                	or     (%rbx),%edi
 2e3:	0b 18                	or     (%rax),%ebx
 2e5:	13 00                	adc    (%rax),%eax
 2e7:	00 35 10 00 0b 0b    	add    %dh,0xb0b0010(%rip)        # b0b02fd <_end+0xaaaf165>
 2ed:	49 13 00             	adc    (%r8),%rax
 2f0:	00 36                	add    %dh,(%rsi)
 2f2:	2e 00 3f             	add    %bh,%cs:(%rdi)
 2f5:	19 03                	sbb    %eax,(%rbx)
 2f7:	0e                   	(bad)  
 2f8:	3a 0b                	cmp    (%rbx),%cl
 2fa:	3b 0b                	cmp    (%rbx),%ecx
 2fc:	49 13 3c 19          	adc    (%r9,%rbx,1),%rdi
 300:	00 00                	add    %al,(%rax)
 302:	37                   	(bad)  
 303:	02 01                	add    (%rcx),%al
 305:	03 0e                	add    (%rsi),%ecx
 307:	0b 0b                	or     (%rbx),%ecx
 309:	3a 0b                	cmp    (%rbx),%cl
 30b:	3b 0b                	cmp    (%rbx),%ecx
 30d:	01 13                	add    %edx,(%rbx)
 30f:	00 00                	add    %al,(%rax)
 311:	38 2e                	cmp    %ch,(%rsi)
 313:	01 3f                	add    %edi,(%rdi)
 315:	19 03                	sbb    %eax,(%rbx)
 317:	0e                   	(bad)  
 318:	3a 0b                	cmp    (%rbx),%cl
 31a:	3b 0b                	cmp    (%rbx),%ecx
 31c:	32 0b                	xor    (%rbx),%cl
 31e:	3c 19                	cmp    $0x19,%al
 320:	64 13 01             	adc    %fs:(%rcx),%eax
 323:	13 00                	adc    (%rax),%eax
 325:	00 39                	add    %bh,(%rcx)
 327:	2e 00 3f             	add    %bh,%cs:(%rdi)
 32a:	19 03                	sbb    %eax,(%rbx)
 32c:	0e                   	(bad)  
 32d:	3a 0b                	cmp    (%rbx),%cl
 32f:	3b 0b                	cmp    (%rbx),%ecx
 331:	6e                   	outsb  %ds:(%rsi),(%dx)
 332:	0e                   	(bad)  
 333:	49 13 32             	adc    (%r10),%rsi
 336:	0b 3c 19             	or     (%rcx,%rbx,1),%edi
 339:	00 00                	add    %al,(%rax)
 33b:	3a 1f                	cmp    (%rdi),%bl
 33d:	00 1d 13 49 13 00    	add    %bl,0x134913(%rip)        # 134c56 <_init-0x2cbab2>
 343:	00 3b                	add    %bh,(%rbx)
 345:	2e 01 47 13          	add    %eax,%cs:0x13(%rdi)
 349:	20 0b                	and    %cl,(%rbx)
 34b:	64 13 01             	adc    %fs:(%rcx),%eax
 34e:	13 00                	adc    (%rax),%eax
 350:	00 3c 05 00 03 0e 49 	add    %bh,0x490e0300(,%rax,1)
 357:	13 34 19             	adc    (%rcx,%rbx,1),%esi
 35a:	00 00                	add    %al,(%rax)
 35c:	3d 05 00 03 08       	cmp    $0x8030005,%eax
 361:	3a 0b                	cmp    (%rbx),%cl
 363:	3b 0b                	cmp    (%rbx),%ecx
 365:	49 13 00             	adc    (%r8),%rax
 368:	00 3e                	add    %bh,(%rsi)
 36a:	2e 01 31             	add    %esi,%cs:(%rcx)
 36d:	13 6e 0e             	adc    0xe(%rsi),%ebp
 370:	11 01                	adc    %eax,(%rcx)
 372:	12 07                	adc    (%rdi),%al
 374:	40 18 64 13 97       	sbb    %spl,-0x69(%rbx,%rdx,1)
 379:	42 19 01             	rex.X sbb %eax,(%rcx)
 37c:	13 00                	adc    (%rax),%eax
 37e:	00 3f                	add    %bh,(%rdi)
 380:	05 00 31 13 02       	add    $0x2133100,%eax
 385:	18 00                	sbb    %al,(%rax)
 387:	00 40 2e             	add    %al,0x2e(%rax)
 38a:	00 47 13             	add    %al,0x13(%rdi)
 38d:	11 01                	adc    %eax,(%rcx)
 38f:	12 07                	adc    (%rdi),%al
 391:	40 18 97 42 19 00 00 	sbb    %dl,0x1942(%rdi)
 398:	41                   	rex.B
 399:	2e 01 3f             	add    %edi,%cs:(%rdi)
 39c:	19 03                	sbb    %eax,(%rbx)
 39e:	0e                   	(bad)  
 39f:	3a 0b                	cmp    (%rbx),%cl
 3a1:	3b 0b                	cmp    (%rbx),%ecx
 3a3:	49 13 11             	adc    (%r9),%rdx
 3a6:	01 12                	add    %edx,(%rdx)
 3a8:	07                   	(bad)  
 3a9:	40 18 96 42 19 01 13 	sbb    %dl,0x13011942(%rsi)
 3b0:	00 00                	add    %al,(%rax)
 3b2:	42 05 00 03 0e 3a    	rex.X add $0x3a0e0300,%eax
 3b8:	0b 3b                	or     (%rbx),%edi
 3ba:	0b 49 13             	or     0x13(%rcx),%ecx
 3bd:	02 18                	add    (%rax),%bl
 3bf:	00 00                	add    %al,(%rax)
 3c1:	43 0b 01             	rex.XB or (%r9),%eax
 3c4:	11 01                	adc    %eax,(%rcx)
 3c6:	12 07                	adc    (%rdi),%al
 3c8:	00 00                	add    %al,(%rax)
 3ca:	44 34 00             	rex.R xor $0x0,%al
 3cd:	03 08                	add    (%rax),%ecx
 3cf:	3a 0b                	cmp    (%rbx),%cl
 3d1:	3b 0b                	cmp    (%rbx),%ecx
 3d3:	49 13 02             	adc    (%r10),%rax
 3d6:	18 00                	sbb    %al,(%rax)
 3d8:	00 45 2e             	add    %al,0x2e(%rbp)
 3db:	01 03                	add    %eax,(%rbx)
 3dd:	0e                   	(bad)  
 3de:	34 19                	xor    $0x19,%al
 3e0:	11 01                	adc    %eax,(%rcx)
 3e2:	12 07                	adc    (%rdi),%al
 3e4:	40 18 96 42 19 01 13 	sbb    %dl,0x13011942(%rsi)
 3eb:	00 00                	add    %al,(%rax)
 3ed:	46                   	rex.RX
 3ee:	2e 00 03             	add    %al,%cs:(%rbx)
 3f1:	0e                   	(bad)  
 3f2:	34 19                	xor    $0x19,%al
 3f4:	11 01                	adc    %eax,(%rcx)
 3f6:	12 07                	adc    (%rdi),%al
 3f8:	40 18 96 42 19 00 00 	sbb    %dl,0x1942(%rsi)
 3ff:	47 34 00             	rex.RXB xor $0x0,%al
 402:	03 0e                	add    (%rsi),%ecx
 404:	49 13 3f             	adc    (%r15),%rdi
 407:	19 34 19             	sbb    %esi,(%rcx,%rbx,1)
 40a:	3c 19                	cmp    $0x19,%al
 40c:	00 00                	add    %al,(%rax)
 40e:	48 34 00             	rex.W xor $0x0,%al
 411:	47 13 02             	rex.RXB adc (%r10),%r8d
 414:	18 00                	sbb    %al,(%rax)
 416:	00 49 34             	add    %cl,0x34(%rcx)
 419:	00 47 13             	add    %al,0x13(%rdi)
 41c:	6e                   	outsb  %ds:(%rsi),(%dx)
 41d:	0e                   	(bad)  
 41e:	1c 0d                	sbb    $0xd,%al
 420:	00 00                	add    %al,(%rax)
 422:	4a 34 00             	rex.WX xor $0x0,%al
 425:	47 13 6e 0e          	rex.RXB adc 0xe(%r14),%r13d
 429:	1c 06                	sbb    $0x6,%al
 42b:	00 00                	add    %al,(%rax)
 42d:	4b 34 00             	rex.WXB xor $0x0,%al
 430:	47 13 6e 0e          	rex.RXB adc 0xe(%r14),%r13d
 434:	1c 0b                	sbb    $0xb,%al
 436:	00 00                	add    %al,(%rax)
 438:	4c 34 00             	rex.WR xor $0x0,%al
 43b:	47 13 6e 0e          	rex.RXB adc 0xe(%r14),%r13d
 43f:	1c 05                	sbb    $0x5,%al
 441:	00 00                	add    %al,(%rax)
 443:	4d 34 00             	rex.WRB xor $0x0,%al
 446:	47 13 6e 0e          	rex.RXB adc 0xe(%r14),%r13d
 44a:	1c 07                	sbb    $0x7,%al
 44c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	8e 02                	mov    (%rdx),%es
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	0c 02                	or     $0x2,%al
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	fb                   	sti    
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0x400677>
  1e:	72 2f                	jb     4f <_init-0x4006b9>
  20:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  27:	2f                   	(bad)  
  28:	63 2b                	movslq (%rbx),%ebp
  2a:	2b 2f                	sub    (%rdi),%ebp
  2c:	34 2e                	xor    $0x2e,%al
  2e:	38 2e                	cmp    %ch,(%rsi)
  30:	32 00                	xor    (%rax),%al
  32:	2f                   	(bad)  
  33:	75 73                	jne    a8 <_init-0x400660>
  35:	72 2f                	jb     66 <_init-0x4006a2>
  37:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  3e:	00 2f                	add    %ch,(%rdi)
  40:	75 73                	jne    b5 <_init-0x400653>
  42:	72 2f                	jb     73 <_init-0x400695>
  44:	6c                   	insb   (%dx),%es:(%rdi)
  45:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  4c:	78 38                	js     86 <_init-0x400682>
  4e:	36 5f                	ss pop %rdi
  50:	36 34 2d             	ss xor $0x2d,%al
  53:	72 65                	jb     ba <_init-0x40064e>
  55:	64 68 61 74 2d 6c    	fs pushq $0x6c2d7461
  5b:	69 6e 75 78 2f 34 2e 	imul   $0x2e342f78,0x75(%rsi),%ebp
  62:	38 2e                	cmp    %ch,(%rsi)
  64:	35 2f 69 6e 63       	xor    $0x636e692f,%eax
  69:	6c                   	insb   (%dx),%es:(%rdi)
  6a:	75 64                	jne    d0 <_init-0x400638>
  6c:	65 00 2f             	add    %ch,%gs:(%rdi)
  6f:	75 73                	jne    e4 <_init-0x400624>
  71:	72 2f                	jb     a2 <_init-0x400666>
  73:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  7a:	2f                   	(bad)  
  7b:	63 2b                	movslq (%rbx),%ebp
  7d:	2b 2f                	sub    (%rdi),%ebp
  7f:	34 2e                	xor    $0x2e,%al
  81:	38 2e                	cmp    %ch,(%rsi)
  83:	32 2f                	xor    (%rdi),%ch
  85:	62                   	(bad)  
  86:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  8d:	72 
  8e:	2f                   	(bad)  
  8f:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  96:	2f                   	(bad)  
  97:	63 2b                	movslq (%rbx),%ebp
  99:	2b 2f                	sub    (%rdi),%ebp
  9b:	34 2e                	xor    $0x2e,%al
  9d:	38 2e                	cmp    %ch,(%rsi)
  9f:	32 2f                	xor    (%rdi),%ch
  a1:	78 38                	js     db <_init-0x40062d>
  a3:	36 5f                	ss pop %rdi
  a5:	36 34 2d             	ss xor $0x2d,%al
  a8:	72 65                	jb     10f <_init-0x4005f9>
  aa:	64 68 61 74 2d 6c    	fs pushq $0x6c2d7461
  b0:	69 6e 75 78 2f 62 69 	imul   $0x69622f78,0x75(%rsi),%ebp
  b7:	74 73                	je     12c <_init-0x4005dc>
  b9:	00 2f                	add    %ch,(%rdi)
  bb:	75 73                	jne    130 <_init-0x4005d8>
  bd:	72 2f                	jb     ee <_init-0x40061a>
  bf:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  c6:	2f                   	(bad)  
  c7:	63 2b                	movslq (%rbx),%ebp
  c9:	2b 2f                	sub    (%rdi),%ebp
  cb:	34 2e                	xor    $0x2e,%al
  cd:	38 2e                	cmp    %ch,(%rsi)
  cf:	32 2f                	xor    (%rdi),%ch
  d1:	65 78 74             	gs js  148 <_init-0x4005c0>
  d4:	00 2f                	add    %ch,(%rdi)
  d6:	75 73                	jne    14b <_init-0x4005bd>
  d8:	72 2f                	jb     109 <_init-0x4005ff>
  da:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  e1:	2f                   	(bad)  
  e2:	63 2b                	movslq (%rbx),%ebp
  e4:	2b 2f                	sub    (%rdi),%ebp
  e6:	34 2e                	xor    $0x2e,%al
  e8:	38 2e                	cmp    %ch,(%rsi)
  ea:	32 2f                	xor    (%rdi),%ch
  ec:	64 65 62             	fs gs (bad) 
  ef:	75 67                	jne    158 <_init-0x4005b0>
  f1:	00 2f                	add    %ch,(%rdi)
  f3:	75 73                	jne    168 <_init-0x4005a0>
  f5:	72 2f                	jb     126 <_init-0x4005e2>
  f7:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  fe:	2f                   	(bad)  
  ff:	62                   	(bad)  
 100:	69 74 73 00 00 6d 61 	imul   $0x69616d00,0x0(%rbx,%rsi,2),%esi
 107:	69 
 108:	6e                   	outsb  %ds:(%rsi),(%dx)
 109:	2e 63 70 70          	movslq %cs:0x70(%rax),%esi
 10d:	00 00                	add    %al,(%rax)
 10f:	00 00                	add    %al,(%rax)
 111:	69 6f 73 74 72 65 61 	imul   $0x61657274,0x73(%rdi),%ebp
 118:	6d                   	insl   (%dx),%es:(%rdi)
 119:	00 01                	add    %al,(%rcx)
 11b:	00 00                	add    %al,(%rax)
 11d:	3c 62                	cmp    $0x62,%al
 11f:	75 69                	jne    18a <_init-0x40057e>
 121:	6c                   	insb   (%dx),%es:(%rdi)
 122:	74 2d                	je     151 <_init-0x4005b7>
 124:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
 12b:	73 74                	jae    1a1 <_init-0x400567>
 12d:	64 69 6f 2e 68 00 02 	imul   $0x20068,%fs:0x2e(%rdi),%ebp
 134:	00 
 135:	00 73 74             	add    %dh,0x74(%rbx)
 138:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x300
 13f:	03 
 140:	00 00                	add    %al,(%rax)
 142:	77 63                	ja     1a7 <_init-0x400561>
 144:	68 61 72 2e 68       	pushq  $0x682e7261
 149:	00 02                	add    %al,(%rdx)
 14b:	00 00                	add    %al,(%rax)
 14d:	63 77 63             	movslq 0x63(%rdi),%esi
 150:	68 61 72 00 01       	pushq  $0x1007261
 155:	00 00                	add    %al,(%rax)
 157:	63 68 61             	movslq 0x61(%rax),%ebp
 15a:	72 5f                	jb     1bb <_init-0x40054d>
 15c:	74 72                	je     1d0 <_init-0x400538>
 15e:	61                   	(bad)  
 15f:	69 74 73 2e 68 00 04 	imul   $0x40068,0x2e(%rbx,%rsi,2),%esi
 166:	00 
 167:	00 63 2b             	add    %ah,0x2b(%rbx)
 16a:	2b 63 6f             	sub    0x6f(%rbx),%esp
 16d:	6e                   	outsb  %ds:(%rsi),(%dx)
 16e:	66 69 67 2e 68 00    	imul   $0x68,0x2e(%rdi),%sp
 174:	05 00 00 63 6c       	add    $0x6c630000,%eax
 179:	6f                   	outsl  %ds:(%rsi),(%dx)
 17a:	63 61 6c             	movslq 0x6c(%rcx),%esp
 17d:	65 00 01             	add    %al,%gs:(%rcx)
 180:	00 00                	add    %al,(%rax)
 182:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
 189:	65 2e 68 00 04 00 00 	gs cs pushq $0x400
 190:	63 77 63             	movslq 0x63(%rdi),%esi
 193:	74 79                	je     20e <_init-0x4004fa>
 195:	70 65                	jo     1fc <_init-0x40050c>
 197:	00 01                	add    %al,(%rcx)
 199:	00 00                	add    %al,(%rax)
 19b:	69 6f 73 66 77 64 00 	imul   $0x647766,0x73(%rdi),%ebp
 1a2:	01 00                	add    %eax,(%rax)
 1a4:	00 74 69 6d          	add    %dh,0x6d(%rcx,%rbp,2)
 1a8:	65 2e 68 00 02 00 00 	gs cs pushq $0x200
 1af:	6e                   	outsb  %ds:(%rsi),(%dx)
 1b0:	65 77 5f             	gs ja  212 <_init-0x4004f6>
 1b3:	61                   	(bad)  
 1b4:	6c                   	insb   (%dx),%es:(%rdi)
 1b5:	6c                   	insb   (%dx),%es:(%rdi)
 1b6:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b7:	63 61 74             	movslq 0x74(%rcx),%esp
 1ba:	6f                   	outsl  %ds:(%rsi),(%dx)
 1bb:	72 2e                	jb     1eb <_init-0x40051d>
 1bd:	68 00 06 00 00       	pushq  $0x600
 1c2:	6e                   	outsb  %ds:(%rsi),(%dx)
 1c3:	75 6d                	jne    232 <_init-0x4004d6>
 1c5:	65 72 69             	gs jb  231 <_init-0x4004d7>
 1c8:	63 5f 74             	movslq 0x74(%rdi),%ebx
 1cb:	72 61                	jb     22e <_init-0x4004da>
 1cd:	69 74 73 2e 68 00 06 	imul   $0x60068,0x2e(%rbx,%rsi,2),%esi
 1d4:	00 
 1d5:	00 64 65 62          	add    %ah,0x62(%rbp,%riz,2)
 1d9:	75 67                	jne    242 <_init-0x4004c6>
 1db:	2e 68 00 07 00 00    	cs pushq $0x700
 1e1:	6c                   	insb   (%dx),%es:(%rdi)
 1e2:	6f                   	outsl  %ds:(%rsi),(%dx)
 1e3:	63 61 6c             	movslq 0x6c(%rcx),%esp
 1e6:	65 2e 68 00 02 00 00 	gs cs pushq $0x200
 1ed:	74 79                	je     268 <_init-0x4004a0>
 1ef:	70 65                	jo     256 <_init-0x4004b2>
 1f1:	73 2e                	jae    221 <_init-0x4004e7>
 1f3:	68 00 08 00 00       	pushq  $0x800
 1f8:	61                   	(bad)  
 1f9:	74 6f                	je     26a <_init-0x40049e>
 1fb:	6d                   	insl   (%dx),%es:(%rdi)
 1fc:	69 63 5f 77 6f 72 64 	imul   $0x64726f77,0x5f(%rbx),%esp
 203:	2e 68 00 05 00 00    	cs pushq $0x500
 209:	77 63                	ja     26e <_init-0x40049a>
 20b:	74 79                	je     286 <_init-0x400482>
 20d:	70 65                	jo     274 <_init-0x400494>
 20f:	2e 68 00 02 00 00    	cs pushq $0x200
 215:	00 00                	add    %al,(%rax)
 217:	09 02                	or     %eax,(%rdx)
 219:	3c 0a                	cmp    $0xa,%al
 21b:	40 00 00             	add    %al,(%rax)
 21e:	00 00                	add    %al,(%rax)
 220:	00 19                	add    %bl,(%rcx)
 222:	ac                   	lods   %ds:(%rsi),%al
 223:	08 3e                	or     %bh,(%rsi)
 225:	02 02                	add    (%rdx),%al
 227:	00 01                	add    %al,(%rcx)
 229:	01 00                	add    %eax,(%rax)
 22b:	09 02                	or     %eax,(%rdx)
 22d:	5d                   	pop    %rbp
 22e:	0a 40 00             	or     0x0(%rax),%al
 231:	00 00                	add    %al,(%rax)
 233:	00 00                	add    %al,(%rax)
 235:	03 0e                	add    (%rsi),%ecx
 237:	01 4c 59 02          	add    %ecx,0x2(%rcx,%rbx,2)
 23b:	02 00                	add    (%rax),%al
 23d:	01 01                	add    %eax,(%rcx)
 23f:	00 09                	add    %cl,(%rcx)
 241:	02 68 0a             	add    0xa(%rax),%ch
 244:	40 00 00             	add    %al,(%rax)
 247:	00 00                	add    %al,(%rax)
 249:	00 03                	add    %al,(%rbx)
 24b:	12 01                	adc    (%rcx),%al
 24d:	4c 59                	rex.WR pop %rcx
 24f:	02 02                	add    (%rdx),%al
 251:	00 01                	add    %al,(%rcx)
 253:	01 00                	add    %eax,(%rax)
 255:	09 02                	or     %eax,(%rdx)
 257:	bd 08 40 00 00       	mov    $0x4008,%ebp
 25c:	00 00                	add    %al,(%rax)
 25e:	00 03                	add    %al,(%rbx)
 260:	1d 01 f3 91 95       	sbb    $0x9591f301,%eax
 265:	08 14 02             	or     %dl,(%rdx,%rax,1)
 268:	33 13                	xor    (%rbx),%edx
 26a:	02 33                	add    (%rbx),%dh
 26c:	14 08                	adc    $0x8,%al
 26e:	13 08                	adc    (%rax),%ecx
 270:	13 02                	adc    (%rdx),%eax
 272:	33 13                	xor    (%rbx),%edx
 274:	02 33                	add    (%rbx),%dh
 276:	13 59 74             	adc    0x74(%rcx),%ebx
 279:	d6                   	(bad)  
 27a:	00 02                	add    %al,(%rdx)
 27c:	04 01                	add    $0x1,%al
 27e:	06                   	(bad)  
 27f:	66 04 02             	data16 add $0x2,%al
 282:	06                   	(bad)  
 283:	03 1b                	add    (%rbx),%ebx
 285:	90                   	nop
 286:	04 01                	add    $0x1,%al
 288:	03 65 08             	add    0x8(%rbp),%esp
 28b:	c8 2e 4a 08          	enterq $0x4a2e,$0x8
 28f:	00 01                	add    %al,(%rcx)
 291:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    %rdi
   1:	47                   	rex.RXB
   2:	4c                   	rex.WR
   3:	4f                   	rex.WRXB
   4:	42                   	rex.X
   5:	41                   	rex.B
   6:	4c 5f                	rex.WR pop %rdi
   8:	5f                   	pop    %rdi
   9:	73 75                	jae    80 <_init-0x400688>
   b:	62                   	(bad)  
   c:	5f                   	pop    %rdi
   d:	49 5f                	rex.WB pop %r15
   f:	6d                   	insl   (%dx),%es:(%rdi)
  10:	61                   	(bad)  
  11:	69 6e 00 5f 53 5f 65 	imul   $0x655f535f,0x0(%rsi),%ebp
  18:	6e                   	outsb  %ds:(%rsi),(%dx)
  19:	64 00 73 69          	add    %dh,%fs:0x69(%rbx)
  1d:	7a 65                	jp     84 <_init-0x400684>
  1f:	5f                   	pop    %rdi
  20:	74 00                	je     22 <_init-0x4006e6>
  22:	73 69                	jae    8d <_init-0x40067b>
  24:	7a 65                	jp     8b <_init-0x40067d>
  26:	74 79                	je     a1 <_init-0x400667>
  28:	70 65                	jo     8f <_init-0x400679>
  2a:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
  2e:	68 6f 75 72 00       	pushq  $0x72756f
  33:	5f                   	pop    %rdi
  34:	5f                   	pop    %rdi
  35:	76 61                	jbe    98 <_init-0x400670>
  37:	6c                   	insb   (%dx),%es:(%rdi)
  38:	75 65                	jne    9f <_init-0x400669>
  3a:	00 5f 5f             	add    %bl,0x5f(%rdi)
  3d:	6e                   	outsb  %ds:(%rsi),(%dx)
  3e:	75 6d                	jne    ad <_init-0x40065b>
  40:	65 72 69             	gs jb  ac <_init-0x40065c>
  43:	63 5f 74             	movslq 0x74(%rdi),%ebx
  46:	72 61                	jb     a9 <_init-0x40065f>
  48:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
  4f:	65 
  50:	67 65 72 3c          	addr32 gs jb 90 <_init-0x400678>
  54:	69 6e 74 3e 00 5f 5a 	imul   $0x5a5f003e,0x74(%rsi),%ebp
  5b:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
  5f:	67 6e                	outsb  %ds:(%esi),(%dx)
  61:	75 5f                	jne    c2 <_init-0x400646>
  63:	63 78 78             	movslq 0x78(%rax),%edi
  66:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
  69:	5f                   	pop    %rdi
  6a:	6e                   	outsb  %ds:(%rsi),(%dx)
  6b:	75 6d                	jne    da <_init-0x40062e>
  6d:	65 72 69             	gs jb  d9 <_init-0x40062f>
  70:	63 5f 74             	movslq 0x74(%rdi),%ebx
  73:	72 61                	jb     d6 <_init-0x400632>
  75:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
  7c:	65 
  7d:	67 65 72 49          	addr32 gs jb ca <_init-0x40063e>
  81:	69 45 35 5f 5f 6d 61 	imul   $0x616d5f5f,0x35(%rbp),%eax
  88:	78 45                	js     cf <_init-0x400639>
  8a:	00 6d 5f             	add    %ch,0x5f(%rbp)
  8d:	76 61                	jbe    f0 <_init-0x400618>
  8f:	6c                   	insb   (%dx),%es:(%rdi)
  90:	75 65                	jne    f7 <_init-0x400611>
  92:	00 5f 5f             	add    %bl,0x5f(%rdi)
  95:	6d                   	insl   (%dx),%es:(%rdi)
  96:	61                   	(bad)  
  97:	78 00                	js     99 <_init-0x40066f>
  99:	77 63                	ja     fe <_init-0x40060a>
  9b:	73 63                	jae    100 <_init-0x400608>
  9d:	73 70                	jae    10f <_init-0x4005f9>
  9f:	6e                   	outsb  %ds:(%rsi),(%dx)
  a0:	00 6c 6f 63          	add    %ch,0x63(%rdi,%rbp,2)
  a4:	61                   	(bad)  
  a5:	6c                   	insb   (%dx),%es:(%rdi)
  a6:	65 63 6f 6e          	movslq %gs:0x6e(%rdi),%ebp
  aa:	76 00                	jbe    ac <_init-0x40065c>
  ac:	69 6e 74 5f 63 75 72 	imul   $0x7275635f,0x74(%rsi),%ebp
  b3:	72 5f                	jb     114 <_init-0x4005f4>
  b5:	73 79                	jae    130 <_init-0x4005d8>
  b7:	6d                   	insl   (%dx),%es:(%rdi)
  b8:	62                   	(bad)  
  b9:	6f                   	outsl  %ds:(%rsi),(%dx)
  ba:	6c                   	insb   (%dx),%es:(%rdi)
  bb:	00 77 63             	add    %dh,0x63(%rdi)
  be:	73 63                	jae    123 <_init-0x4005e5>
  c0:	68 72 00 5f 53       	pushq  $0x535f0072
  c5:	5f                   	pop    %rdi
  c6:	62                   	(bad)  
  c7:	6f                   	outsl  %ds:(%rsi),(%dx)
  c8:	6f                   	outsl  %ds:(%rsi),(%dx)
  c9:	6c                   	insb   (%dx),%es:(%rdi)
  ca:	61                   	(bad)  
  cb:	6c                   	insb   (%dx),%es:(%rdi)
  cc:	70 68                	jo     136 <_init-0x4005d2>
  ce:	61                   	(bad)  
  cf:	00 5f 53             	add    %bl,0x53(%rdi)
  d2:	5f                   	pop    %rdi
  d3:	62 61 64 62 69       	(bad)  {%k2}
  d8:	74 00                	je     da <_init-0x40062e>
  da:	6d                   	insl   (%dx),%es:(%rdi)
  db:	62 72 74 6f 77       	(bad)  {%k7}
  e0:	63 00                	movslq (%rax),%eax
  e2:	77 63                	ja     147 <_init-0x4005c1>
  e4:	73 78                	jae    15e <_init-0x4005aa>
  e6:	66 72 6d             	data16 jb 156 <_init-0x4005b2>
  e9:	00 69 6e             	add    %ch,0x6e(%rcx)
  ec:	74 5f                	je     14d <_init-0x4005bb>
  ee:	66 72 61             	data16 jb 152 <_init-0x4005b6>
  f1:	63 5f 64             	movslq 0x64(%rdi),%ebx
  f4:	69 67 69 74 73 00 5f 	imul   $0x5f007374,0x69(%rdi),%esp
  fb:	53                   	push   %rbx
  fc:	5f                   	pop    %rdi
  fd:	62                   	(bad)  {%k7}
  fe:	65 67 00 77 63       	add    %dh,%gs:0x63(%edi)
 103:	73 63                	jae    168 <_init-0x4005a0>
 105:	6f                   	outsl  %ds:(%rsi),(%dx)
 106:	6c                   	insb   (%dx),%es:(%rdi)
 107:	6c                   	insb   (%dx),%es:(%rdi)
 108:	00 5f 5f             	add    %bl,0x5f(%rdi)
 10b:	77 63                	ja     170 <_init-0x400598>
 10d:	68 00 5f 5a 4e       	pushq  $0x4e5a5f00
 112:	53                   	push   %rbx
 113:	74 31                	je     146 <_init-0x4005c2>
 115:	31 63 68             	xor    %esp,0x68(%rbx)
 118:	61                   	(bad)  
 119:	72 5f                	jb     17a <_init-0x40058e>
 11b:	74 72                	je     18f <_init-0x400579>
 11d:	61                   	(bad)  
 11e:	69 74 73 49 63 45 34 	imul   $0x6d344563,0x49(%rbx,%rsi,2),%esi
 125:	6d 
 126:	6f                   	outsl  %ds:(%rsi),(%dx)
 127:	76 65                	jbe    18e <_init-0x40057a>
 129:	45 50                	rex.RB push %r8
 12b:	63 50 4b             	movslq 0x4b(%rax),%edx
 12e:	63 6d 00             	movslq 0x0(%rbp),%ebp
 131:	47                   	rex.RXB
 132:	4e 55                	rex.WRX push %rbp
 134:	20 43 2b             	and    %al,0x2b(%rbx)
 137:	2b 20                	sub    (%rax),%esp
 139:	34 2e                	xor    $0x2e,%al
 13b:	38 2e                	cmp    %ch,(%rsi)
 13d:	35 20 32 30 31       	xor    $0x31303220,%eax
 142:	35 30 36 32 33       	xor    $0x33323630,%eax
 147:	20 28                	and    %ch,(%rax)
 149:	52                   	push   %rdx
 14a:	65 64 20 48 61       	gs and %cl,%fs:0x61(%rax)
 14f:	74 20                	je     171 <_init-0x400597>
 151:	34 2e                	xor    $0x2e,%al
 153:	38 2e                	cmp    %ch,(%rsi)
 155:	35 2d 31 31 29       	xor    $0x2931312d,%eax
 15a:	20 2d 6d 74 75 6e    	and    %ch,0x6e75746d(%rip)        # 6e7575cd <_end+0x6e156435>
 160:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 166:	72 69                	jb     1d1 <_init-0x400537>
 168:	63 20                	movslq (%rax),%esp
 16a:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 16f:	68 3d 78 38 36       	pushq  $0x3638783d
 174:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 179:	67 00 5f 53          	add    %bl,0x53(%edi)
 17d:	5f                   	pop    %rdi
 17e:	62 61                	(bad)  {%k7}
 180:	73 65                	jae    1e7 <_init-0x400521>
 182:	66 69 65 6c 64 00    	imul   $0x64,0x6c(%rbp),%sp
 188:	5f                   	pop    %rdi
 189:	5a                   	pop    %rdx
 18a:	4e 53                	rex.WRX push %rbx
 18c:	74 31                	je     1bf <_init-0x400549>
 18e:	31 63 68             	xor    %esp,0x68(%rbx)
 191:	61                   	(bad)  
 192:	72 5f                	jb     1f3 <_init-0x400515>
 194:	74 72                	je     208 <_init-0x400500>
 196:	61                   	(bad)  
 197:	69 74 73 49 63 45 31 	imul   $0x31314563,0x49(%rbx,%rsi,2),%esi
 19e:	31 
 19f:	74 6f                	je     210 <_init-0x4004f8>
 1a1:	5f                   	pop    %rdi
 1a2:	69 6e 74 5f 74 79 70 	imul   $0x7079745f,0x74(%rsi),%ebp
 1a9:	65 45 52             	gs rex.RB push %r10
 1ac:	4b 63 00             	rex.WXB movslq (%r8),%rax
 1af:	6d                   	insl   (%dx),%es:(%rdi)
 1b0:	6f                   	outsl  %ds:(%rsi),(%dx)
 1b1:	6e                   	outsb  %ds:(%rsi),(%dx)
 1b2:	5f                   	pop    %rdi
 1b3:	64 65 63 69 6d       	fs movslq %gs:0x6d(%rcx),%ebp
 1b8:	61                   	(bad)  
 1b9:	6c                   	insb   (%dx),%es:(%rdi)
 1ba:	5f                   	pop    %rdi
 1bb:	70 6f                	jo     22c <_init-0x4004dc>
 1bd:	69 6e 74 00 5f 5f 6e 	imul   $0x6e5f5f00,0x74(%rsi),%ebp
 1c4:	75 6d                	jne    233 <_init-0x4004d5>
 1c6:	65 72 69             	gs jb  232 <_init-0x4004d6>
 1c9:	63 5f 74             	movslq 0x74(%rdi),%ebx
 1cc:	72 61                	jb     22f <_init-0x4004d9>
 1ce:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 1d5:	65 
 1d6:	67 65 72 3c          	addr32 gs jb 216 <_init-0x4004f2>
 1da:	63 68 61             	movslq 0x61(%rax),%ebp
 1dd:	72 3e                	jb     21d <_init-0x4004eb>
 1df:	00 76 77             	add    %dh,0x77(%rsi)
 1e2:	70 72                	jo     256 <_init-0x4004b2>
 1e4:	69 6e 74 66 00 5f 49 	imul   $0x495f0066,0x74(%rsi),%ebp
 1eb:	6f                   	outsl  %ds:(%rsi),(%dx)
 1ec:	73 5f                	jae    24d <_init-0x4004bb>
 1ee:	4f 70 65             	rex.WRXB jo 256 <_init-0x4004b2>
 1f1:	6e                   	outsb  %ds:(%rsi),(%dx)
 1f2:	6d                   	insl   (%dx),%es:(%rdi)
 1f3:	6f                   	outsl  %ds:(%rsi),(%dx)
 1f4:	64 65 00 69 6e       	fs add %ch,%gs:0x6e(%rcx)
 1f9:	74 5f                	je     25a <_init-0x4004ae>
 1fb:	6e                   	outsb  %ds:(%rsi),(%dx)
 1fc:	5f                   	pop    %rdi
 1fd:	63 73 5f             	movslq 0x5f(%rbx),%esi
 200:	70 72                	jo     274 <_init-0x400494>
 202:	65 63 65 64          	movslq %gs:0x64(%rbp),%esp
 206:	65 73 00             	gs jae 209 <_init-0x4004ff>
 209:	74 6f                	je     27a <_init-0x40048e>
 20b:	77 63                	ja     270 <_init-0x400498>
 20d:	74 72                	je     281 <_init-0x400487>
 20f:	61                   	(bad)  
 210:	6e                   	outsb  %ds:(%rsi),(%dx)
 211:	73 00                	jae    213 <_init-0x4004f5>
 213:	63 6f 70             	movslq 0x70(%rdi),%ebp
 216:	79 00                	jns    218 <_init-0x4004f0>
 218:	5f                   	pop    %rdi
 219:	5f                   	pop    %rdi
 21a:	69 6f 69 6e 69 74 00 	imul   $0x74696e,0x69(%rdi),%ebp
 221:	5f                   	pop    %rdi
 222:	53                   	push   %rbx
 223:	5f                   	pop    %rdi
 224:	73 79                	jae    29f <_init-0x400469>
 226:	6e                   	outsb  %ds:(%rsi),(%dx)
 227:	63 65 64             	movslq 0x64(%rbp),%esp
 22a:	5f                   	pop    %rdi
 22b:	77 69                	ja     296 <_init-0x400472>
 22d:	74 68                	je     297 <_init-0x400471>
 22f:	5f                   	pop    %rdi
 230:	73 74                	jae    2a6 <_init-0x400462>
 232:	64 69 6f 00 5f 56 61 	imul   $0x6c61565f,%fs:0x0(%rdi),%ebp
 239:	6c 
 23a:	75 65                	jne    2a1 <_init-0x400467>
 23c:	00 5f 53             	add    %bl,0x53(%rdi)
 23f:	5f                   	pop    %rdi
 240:	65 6f                	outsl  %gs:(%rsi),(%dx)
 242:	66 62                	data16 (bad) {%k7}
 244:	69 74 00 6d 61 69 6e 	imul   $0x2e6e6961,0x6d(%rax,%rax,1),%esi
 24b:	2e 
 24c:	63 70 70             	movslq 0x70(%rax),%esi
 24f:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 253:	79 64                	jns    2b9 <_init-0x40044f>
 255:	61                   	(bad)  
 256:	79 00                	jns    258 <_init-0x4004b0>
 258:	5f                   	pop    %rdi
 259:	49                   	rex.WB
 25a:	4f 5f                	rex.WRXB pop %r15
 25c:	46                   	rex.RX
 25d:	49                   	rex.WB
 25e:	4c                   	rex.WR
 25f:	45 00 62 61          	add    %r12b,0x61(%r10)
 263:	73 69                	jae    2ce <_init-0x40043a>
 265:	63 5f 6f             	movslq 0x6f(%rdi),%ebx
 268:	73 74                	jae    2de <_init-0x40042a>
 26a:	72 65                	jb     2d1 <_init-0x400437>
 26c:	61                   	(bad)  
 26d:	6d                   	insl   (%dx),%es:(%rdi)
 26e:	3c 63                	cmp    $0x63,%al
 270:	68 61 72 2c 20       	pushq  $0x202c7261
 275:	73 74                	jae    2eb <_init-0x40041d>
 277:	64 3a 3a             	cmp    %fs:(%rdx),%bh
 27a:	63 68 61             	movslq 0x61(%rax),%ebp
 27d:	72 5f                	jb     2de <_init-0x40042a>
 27f:	74 72                	je     2f3 <_init-0x400415>
 281:	61                   	(bad)  
 282:	69 74 73 3c 63 68 61 	imul   $0x72616863,0x3c(%rbx,%rsi,2),%esi
 289:	72 
 28a:	3e 20 3e             	and    %bh,%ds:(%rsi)
 28d:	00 77 63             	add    %dh,0x63(%rdi)
 290:	74 79                	je     30b <_init-0x4003fd>
 292:	70 65                	jo     2f9 <_init-0x40040f>
 294:	5f                   	pop    %rdi
 295:	74 00                	je     297 <_init-0x400471>
 297:	66 67 65 74 77       	data16 addr32 gs je 313 <_init-0x4003f5>
 29c:	63 00                	movslq (%rax),%eax
 29e:	67 65 74 77          	addr32 gs je 319 <_init-0x4003ef>
 2a2:	63 68 61             	movslq 0x61(%rax),%ebp
 2a5:	72 00                	jb     2a7 <_init-0x400461>
 2a7:	66 67 65 74 77       	data16 addr32 gs je 323 <_init-0x4003e5>
 2ac:	73 00                	jae    2ae <_init-0x40045a>
 2ae:	5f                   	pop    %rdi
 2af:	53                   	push   %rbx
 2b0:	5f                   	pop    %rdi
 2b1:	72 69                	jb     31c <_init-0x4003ec>
 2b3:	67 68 74 00 75 6e    	addr32 pushq $0x6e750074
 2b9:	73 69                	jae    324 <_init-0x4003e4>
 2bb:	67 6e                	outsb  %ds:(%esi),(%dx)
 2bd:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 2c2:	61                   	(bad)  
 2c3:	72 00                	jb     2c5 <_init-0x400443>
 2c5:	77 6d                	ja     334 <_init-0x4003d4>
 2c7:	65 6d                	gs insl (%dx),%es:(%rdi)
 2c9:	63 68 72             	movslq 0x72(%rax),%ebp
 2cc:	00 5f 53             	add    %bl,0x53(%rdi)
 2cf:	5f                   	pop    %rdi
 2d0:	67 6f                	outsl  %ds:(%esi),(%dx)
 2d2:	6f                   	outsl  %ds:(%rsi),(%dx)
 2d3:	64 62                	fs (bad) {%k7}
 2d5:	69 74 00 5f 5a 4e 39 	imul   $0x5f394e5a,0x5f(%rax,%rax,1),%esi
 2dc:	5f 
 2dd:	5f                   	pop    %rdi
 2de:	67 6e                	outsb  %ds:(%esi),(%dx)
 2e0:	75 5f                	jne    341 <_init-0x4003c7>
 2e2:	63 78 78             	movslq 0x78(%rax),%edi
 2e5:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 2e8:	5f                   	pop    %rdi
 2e9:	6e                   	outsb  %ds:(%rsi),(%dx)
 2ea:	75 6d                	jne    359 <_init-0x4003af>
 2ec:	65 72 69             	gs jb  358 <_init-0x4003b0>
 2ef:	63 5f 74             	movslq 0x74(%rdi),%ebx
 2f2:	72 61                	jb     355 <_init-0x4003b3>
 2f4:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 2fb:	65 
 2fc:	67 65 72 49          	addr32 gs jb 349 <_init-0x4003bf>
 300:	73 45                	jae    347 <_init-0x4003c1>
 302:	35 5f 5f 6d 61       	xor    $0x616d5f5f,%eax
 307:	78 45                	js     34e <_init-0x4003ba>
 309:	00 5f 53             	add    %bl,0x53(%rdi)
 30c:	5f                   	pop    %rdi
 30d:	62                   	(bad)  {%k7}
 30e:	69 6e 00 5f 5a 4e 34 	imul   $0x344e5a5f,0x0(%rsi),%ebp
 315:	42 61                	rex.X (bad) 
 317:	73 65                	jae    37e <_init-0x40038a>
 319:	43 32 45 69          	rex.XB xor 0x69(%r13),%al
 31d:	00 77 63             	add    %dh,0x63(%rdi)
 320:	73 63                	jae    385 <_init-0x400383>
 322:	6d                   	insl   (%dx),%es:(%rdi)
 323:	70 00                	jo     325 <_init-0x4003e3>
 325:	6e                   	outsb  %ds:(%rsi),(%dx)
 326:	6f                   	outsl  %ds:(%rsi),(%dx)
 327:	74 5f                	je     388 <_init-0x400380>
 329:	65 6f                	outsl  %gs:(%rsi),(%dx)
 32b:	66 00 77 63          	data16 add %dh,0x63(%rdi)
 32f:	73 70                	jae    3a1 <_init-0x400367>
 331:	62 72                	(bad)  {%k7}
 333:	6b 00 5f             	imul   $0x5f,(%rax),%eax
 336:	5a                   	pop    %rdx
 337:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
 33b:	67 6e                	outsb  %ds:(%esi),(%dx)
 33d:	75 5f                	jne    39e <_init-0x40036a>
 33f:	63 78 78             	movslq 0x78(%rax),%edi
 342:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 345:	5f                   	pop    %rdi
 346:	6e                   	outsb  %ds:(%rsi),(%dx)
 347:	75 6d                	jne    3b6 <_init-0x400352>
 349:	65 72 69             	gs jb  3b5 <_init-0x400353>
 34c:	63 5f 74             	movslq 0x74(%rdi),%ebx
 34f:	72 61                	jb     3b2 <_init-0x400356>
 351:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 358:	65 
 359:	67 65 72 49          	addr32 gs jb 3a6 <_init-0x400362>
 35d:	6c                   	insb   (%dx),%es:(%rdi)
 35e:	45 35 5f 5f 6d 61    	rex.RB xor $0x616d5f5f,%eax
 364:	78 45                	js     3ab <_init-0x40035d>
 366:	00 5f 5f             	add    %bl,0x5f(%rdi)
 369:	69 73 5f 73 69 67 6e 	imul   $0x6e676973,0x5f(%rbx),%esi
 370:	65 64 00 5f 53       	gs add %bl,%fs:0x53(%rdi)
 375:	5f                   	pop    %rdi
 376:	6f                   	outsl  %ds:(%rsi),(%dx)
 377:	75 74                	jne    3ed <_init-0x40031b>
 379:	00 5f 53             	add    %bl,0x53(%rdi)
 37c:	5f                   	pop    %rdi
 37d:	61                   	(bad)  
 37e:	70 70                	jo     3f0 <_init-0x400318>
 380:	00 6f 70             	add    %ch,0x70(%rdi)
 383:	65 6e                	outsb  %gs:(%rsi),(%dx)
 385:	6d                   	insl   (%dx),%es:(%rdi)
 386:	6f                   	outsl  %ds:(%rsi),(%dx)
 387:	64 65 00 77 63       	fs add %dh,%gs:0x63(%rdi)
 38c:	73 6e                	jae    3fc <_init-0x40030c>
 38e:	63 6d 70             	movslq 0x70(%rbp),%ebp
 391:	00 69 6e             	add    %ch,0x6e(%rcx)
 394:	74 5f                	je     3f5 <_init-0x400313>
 396:	6e                   	outsb  %ds:(%rsi),(%dx)
 397:	5f                   	pop    %rdi
 398:	73 69                	jae    403 <_init-0x400305>
 39a:	67 6e                	outsb  %ds:(%esi),(%dx)
 39c:	5f                   	pop    %rdi
 39d:	70 6f                	jo     40e <_init-0x4002fa>
 39f:	73 6e                	jae    40f <_init-0x4002f9>
 3a1:	00 77 6d             	add    %dh,0x6d(%rdi)
 3a4:	65 6d                	gs insl (%dx),%es:(%rdi)
 3a6:	6d                   	insl   (%dx),%es:(%rdi)
 3a7:	6f                   	outsl  %ds:(%rsi),(%dx)
 3a8:	76 65                	jbe    40f <_init-0x4002f9>
 3aa:	00 2f                	add    %ch,(%rdi)
 3ac:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
 3b1:	73 68                	jae    41b <_init-0x4002ed>
 3b3:	6c                   	insb   (%dx),%es:(%rdi)
 3b4:	69 61 6e 2f 70 72 6f 	imul   $0x6f72702f,0x6e(%rcx),%esp
 3bb:	67 72 61             	addr32 jb 41f <_init-0x4002e9>
 3be:	6d                   	insl   (%dx),%es:(%rdi)
 3bf:	2f                   	(bad)  
 3c0:	63 2b                	movslq (%rbx),%ebp
 3c2:	2b 2f                	sub    (%rdi),%ebp
 3c4:	67 72 61             	addr32 jb 428 <_init-0x4002e0>
 3c7:	6d                   	insl   (%dx),%es:(%rdi)
 3c8:	6d                   	insl   (%dx),%es:(%rdi)
 3c9:	61                   	(bad)  
 3ca:	72 2f                	jb     3fb <_init-0x40030d>
 3cc:	63 6c 61 73          	movslq 0x73(%rcx,%riz,2),%ebp
 3d0:	73 5f                	jae    431 <_init-0x4002d7>
 3d2:	6d                   	insl   (%dx),%es:(%rdi)
 3d3:	65 6d                	gs insl (%dx),%es:(%rdi)
 3d5:	62                   	(bad)  {%k7}
 3d6:	65 72 00             	gs jb  3d9 <_init-0x40032f>
 3d9:	5f                   	pop    %rdi
 3da:	5f                   	pop    %rdi
 3db:	6d                   	insl   (%dx),%es:(%rdi)
 3dc:	69 6e 00 62 74 6f 77 	imul   $0x776f7462,0x0(%rsi),%ebp
 3e3:	63 00                	movslq (%rax),%eax
 3e5:	6d                   	insl   (%dx),%es:(%rdi)
 3e6:	6f                   	outsl  %ds:(%rsi),(%dx)
 3e7:	6e                   	outsb  %ds:(%rsi),(%dx)
 3e8:	5f                   	pop    %rdi
 3e9:	74 68                	je     453 <_init-0x4002b5>
 3eb:	6f                   	outsl  %ds:(%rsi),(%dx)
 3ec:	75 73                	jne    461 <_init-0x4002a7>
 3ee:	61                   	(bad)  
 3ef:	6e                   	outsb  %ds:(%rsi),(%dx)
 3f0:	64 73 5f             	fs jae 452 <_init-0x4002b6>
 3f3:	73 65                	jae    45a <_init-0x4002ae>
 3f5:	70 00                	jo     3f7 <_init-0x400311>
 3f7:	75 6e                	jne    467 <_init-0x4002a1>
 3f9:	67 65 74 77          	addr32 gs je 474 <_init-0x400294>
 3fd:	63 00                	movslq (%rax),%eax
 3ff:	66 70 5f             	data16 jo 461 <_init-0x4002a7>
 402:	6f                   	outsl  %ds:(%rsi),(%dx)
 403:	66 66 73 65          	data16 data16 jae 46c <_init-0x40029c>
 407:	74 00                	je     409 <_init-0x4002ff>
 409:	70 74                	jo     47f <_init-0x400289>
 40b:	72 64                	jb     471 <_init-0x400297>
 40d:	69 66 66 5f 74 00 5f 	imul   $0x5f00745f,0x66(%rsi),%esp
 414:	5a                   	pop    %rdx
 415:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
 419:	67 6e                	outsb  %ds:(%esi),(%dx)
 41b:	75 5f                	jne    47c <_init-0x40028c>
 41d:	63 78 78             	movslq 0x78(%rax),%edi
 420:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 423:	5f                   	pop    %rdi
 424:	6e                   	outsb  %ds:(%rsi),(%dx)
 425:	75 6d                	jne    494 <_init-0x400274>
 427:	65 72 69             	gs jb  493 <_init-0x400275>
 42a:	63 5f 74             	movslq 0x74(%rdi),%ebx
 42d:	72 61                	jb     490 <_init-0x400278>
 42f:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 436:	65 
 437:	67 65 72 49          	addr32 gs jb 484 <_init-0x400284>
 43b:	69 45 35 5f 5f 6d 69 	imul   $0x696d5f5f,0x35(%rbp),%eax
 442:	6e                   	outsb  %ds:(%rsi),(%dx)
 443:	45 00 77 63          	add    %r14b,0x63(%r15)
 447:	74 72                	je     4bb <_init-0x40024d>
 449:	61                   	(bad)  
 44a:	6e                   	outsb  %ds:(%rsi),(%dx)
 44b:	73 5f                	jae    4ac <_init-0x40025c>
 44d:	74 00                	je     44f <_init-0x4002b9>
 44f:	6d                   	insl   (%dx),%es:(%rdi)
 450:	62 72 6c 65 6e       	(bad)  {%k5}
 455:	00 6e 65             	add    %ch,0x65(%rsi)
 458:	67 61                	addr32 (bad) 
 45a:	74 69                	je     4c5 <_init-0x400243>
 45c:	76 65                	jbe    4c3 <_init-0x400245>
 45e:	5f                   	pop    %rdi
 45f:	73 69                	jae    4ca <_init-0x40023e>
 461:	67 6e                	outsb  %ds:(%esi),(%dx)
 463:	00 5f 53             	add    %bl,0x53(%rdi)
 466:	5f                   	pop    %rdi
 467:	68 65 78 00 69       	pushq  $0x69007865
 46c:	6e                   	outsb  %ds:(%rsi),(%dx)
 46d:	74 5f                	je     4ce <_init-0x40023a>
 46f:	70 5f                	jo     4d0 <_init-0x400238>
 471:	63 73 5f             	movslq 0x5f(%rbx),%esi
 474:	70 72                	jo     4e8 <_init-0x400220>
 476:	65 63 65 64          	movslq %gs:0x64(%rbp),%esp
 47a:	65 73 00             	gs jae 47d <_init-0x40028b>
 47d:	77 63                	ja     4e2 <_init-0x400226>
 47f:	73 74                	jae    4f5 <_init-0x400213>
 481:	6f                   	outsl  %ds:(%rsi),(%dx)
 482:	75 6c                	jne    4f0 <_init-0x400218>
 484:	6c                   	insb   (%dx),%es:(%rdi)
 485:	00 5f 53             	add    %bl,0x53(%rdi)
 488:	5f                   	pop    %rdi
 489:	69 6e 74 65 72 6e 61 	imul   $0x616e7265,0x74(%rsi),%ebp
 490:	6c                   	insb   (%dx),%es:(%rdi)
 491:	00 63 6f             	add    %ah,0x6f(%rbx)
 494:	6d                   	insl   (%dx),%es:(%rdi)
 495:	70 61                	jo     4f8 <_init-0x400210>
 497:	72 65                	jb     4fe <_init-0x40020a>
 499:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 49d:	6d                   	insl   (%dx),%es:(%rdi)
 49e:	64 61                	fs (bad) 
 4a0:	79 00                	jns    4a2 <_init-0x400266>
 4a2:	66 69 6e 64 00 77    	imul   $0x7700,0x64(%rsi),%bp
 4a8:	63 73 63             	movslq 0x63(%rbx),%esi
 4ab:	70 79                	jo     526 <_init-0x4001e2>
 4ad:	00 5f 43             	add    %bl,0x43(%rdi)
 4b0:	68 61 72 54 00       	pushq  $0x547261
 4b5:	76 73                	jbe    52a <_init-0x4001de>
 4b7:	77 70                	ja     529 <_init-0x4001df>
 4b9:	72 69                	jb     524 <_init-0x4001e4>
 4bb:	6e                   	outsb  %ds:(%rsi),(%dx)
 4bc:	74 66                	je     524 <_init-0x4001e4>
 4be:	00 77 6d             	add    %dh,0x6d(%rdi)
 4c1:	65 6d                	gs insl (%dx),%es:(%rdi)
 4c3:	73 65                	jae    52a <_init-0x4001de>
 4c5:	74 00                	je     4c7 <_init-0x400241>
 4c7:	73 65                	jae    52e <_init-0x4001da>
 4c9:	65 6b 64 69 72 00    	imul   $0x0,%gs:0x72(%rcx,%rbp,2),%esp
 4cf:	66 77 69             	data16 ja 53b <_init-0x4001cd>
 4d2:	64 65 00 74 6d 5f    	fs add %dh,%gs:0x5f(%rbp,%rbp,2)
 4d8:	73 65                	jae    53f <_init-0x4001c9>
 4da:	63 00                	movslq (%rax),%eax
 4dc:	74 6d                	je     54b <_init-0x4001bd>
 4de:	5f                   	pop    %rdi
 4df:	69 73 64 73 74 00 77 	imul   $0x77007473,0x64(%rbx),%esi
 4e6:	63 73 6e             	movslq 0x6e(%rbx),%esi
 4e9:	63 70 79             	movslq 0x79(%rax),%esi
 4ec:	00 70 75             	add    %dh,0x75(%rax)
 4ef:	74 77                	je     568 <_init-0x4001a0>
 4f1:	63 68 61             	movslq 0x61(%rax),%ebp
 4f4:	72 00                	jb     4f6 <_init-0x400212>
 4f6:	77 6d                	ja     565 <_init-0x4001a3>
 4f8:	65 6d                	gs insl (%dx),%es:(%rdi)
 4fa:	63 6d 70             	movslq 0x70(%rbp),%ebp
 4fd:	00 5f 53             	add    %bl,0x53(%rdi)
 500:	5f                   	pop    %rdi
 501:	61                   	(bad)  
 502:	74 65                	je     569 <_init-0x40019f>
 504:	00 5f 5a             	add    %bl,0x5a(%rdi)
 507:	4e 53                	rex.WRX push %rbx
 509:	74 31                	je     53c <_init-0x4001cc>
 50b:	31 63 68             	xor    %esp,0x68(%rbx)
 50e:	61                   	(bad)  
 50f:	72 5f                	jb     570 <_init-0x400198>
 511:	74 72                	je     585 <_init-0x400183>
 513:	61                   	(bad)  
 514:	69 74 73 49 63 45 34 	imul   $0x63344563,0x49(%rbx,%rsi,2),%esi
 51b:	63 
 51c:	6f                   	outsl  %ds:(%rsi),(%dx)
 51d:	70 79                	jo     598 <_init-0x400170>
 51f:	45 50                	rex.RB push %r8
 521:	63 50 4b             	movslq 0x4b(%rax),%edx
 524:	63 6d 00             	movslq 0x0(%rbp),%ebp
 527:	5f                   	pop    %rdi
 528:	5a                   	pop    %rdx
 529:	4e 53                	rex.WRX push %rbx
 52b:	74 31                	je     55e <_init-0x4001aa>
 52d:	31 63 68             	xor    %esp,0x68(%rbx)
 530:	61                   	(bad)  
 531:	72 5f                	jb     592 <_init-0x400176>
 533:	74 72                	je     5a7 <_init-0x400161>
 535:	61                   	(bad)  
 536:	69 74 73 49 63 45 32 	imul   $0x6c324563,0x49(%rbx,%rsi,2),%esi
 53d:	6c 
 53e:	74 45                	je     585 <_init-0x400183>
 540:	52                   	push   %rdx
 541:	4b 63 53 32          	rex.WXB movslq 0x32(%r11),%rdx
 545:	5f                   	pop    %rdi
 546:	00 5f 53             	add    %bl,0x53(%rdi)
 549:	5f                   	pop    %rdi
 54a:	66 69 78 65 64 00    	imul   $0x64,0x65(%rax),%di
 550:	69 6e 74 5f 6e 5f 73 	imul   $0x735f6e5f,0x74(%rsi),%ebp
 557:	65 70 5f             	gs jo  5b9 <_init-0x40014f>
 55a:	62                   	(bad)  {%k5}
 55b:	79 5f                	jns    5bc <_init-0x40014c>
 55d:	73 70                	jae    5cf <_init-0x400139>
 55f:	61                   	(bad)  
 560:	63 65 00             	movslq 0x0(%rbp),%esp
 563:	5f                   	pop    %rdi
 564:	5f                   	pop    %rdi
 565:	70 72                	jo     5d9 <_init-0x40012f>
 567:	69 6f 72 69 74 79 00 	imul   $0x797469,0x72(%rdi),%ebp
 56e:	5f                   	pop    %rdi
 56f:	53                   	push   %rbx
 570:	5f                   	pop    %rdi
 571:	73 68                	jae    5db <_init-0x40012d>
 573:	6f                   	outsl  %ds:(%rsi),(%dx)
 574:	77 62                	ja     5d8 <_init-0x400130>
 576:	61                   	(bad)  
 577:	73 65                	jae    5de <_init-0x40012a>
 579:	00 5f 53             	add    %bl,0x53(%rdi)
 57c:	5f                   	pop    %rdi
 57d:	69 6e 00 5f 5f 67 6e 	imul   $0x6e675f5f,0x0(%rsi),%ebp
 584:	75 5f                	jne    5e5 <_init-0x400123>
 586:	64 65 62             	fs gs (bad) {%k5}
 589:	75 67                	jne    5f2 <_init-0x400116>
 58b:	00 76 66             	add    %dh,0x66(%rsi)
 58e:	77 70                	ja     600 <_init-0x400108>
 590:	72 69                	jb     5fb <_init-0x40010d>
 592:	6e                   	outsb  %ds:(%rsi),(%dx)
 593:	74 66                	je     5fb <_init-0x40010d>
 595:	00 74 68 69          	add    %dh,0x69(%rax,%rbp,2)
 599:	73 00                	jae    59b <_init-0x40016d>
 59b:	76 73                	jbe    610 <_init-0x4000f8>
 59d:	77 73                	ja     612 <_init-0x4000f6>
 59f:	63 61 6e             	movslq 0x6e(%rcx),%esp
 5a2:	66 00 65 71          	data16 add %ah,0x71(%rbp)
 5a6:	5f                   	pop    %rdi
 5a7:	69 6e 74 5f 74 79 70 	imul   $0x7079745f,0x74(%rsi),%ebp
 5ae:	65 00 67 65          	add    %ah,%gs:0x65(%rdi)
 5b2:	74 56                	je     60a <_init-0x4000fe>
 5b4:	61                   	(bad)  
 5b5:	6c                   	insb   (%dx),%es:(%rdi)
 5b6:	75 65                	jne    61d <_init-0x4000eb>
 5b8:	00 61 72             	add    %ah,0x72(%rcx)
 5bb:	67 63 00             	movslq (%eax),%eax
 5be:	5f                   	pop    %rdi
 5bf:	53                   	push   %rbx
 5c0:	5f                   	pop    %rdi
 5c1:	72 65                	jb     628 <_init-0x4000e0>
 5c3:	66 63 6f 75          	movslq 0x75(%rdi),%bp
 5c7:	6e                   	outsb  %ds:(%rsi),(%dx)
 5c8:	74 00                	je     5ca <_init-0x40013e>
 5ca:	5f                   	pop    %rdi
 5cb:	5a                   	pop    %rdx
 5cc:	4e 53                	rex.WRX push %rbx
 5ce:	74 31                	je     601 <_init-0x400107>
 5d0:	31 63 68             	xor    %esp,0x68(%rbx)
 5d3:	61                   	(bad)  
 5d4:	72 5f                	jb     635 <_init-0x4000d3>
 5d6:	74 72                	je     64a <_init-0x4000be>
 5d8:	61                   	(bad)  
 5d9:	69 74 73 49 63 45 31 	imul   $0x32314563,0x49(%rbx,%rsi,2),%esi
 5e0:	32 
 5e1:	74 6f                	je     652 <_init-0x4000b6>
 5e3:	5f                   	pop    %rdi
 5e4:	63 68 61             	movslq 0x61(%rax),%ebp
 5e7:	72 5f                	jb     648 <_init-0x4000c0>
 5e9:	74 79                	je     664 <_init-0x4000a4>
 5eb:	70 65                	jo     652 <_init-0x4000b6>
 5ed:	45 52                	rex.RB push %r10
 5ef:	4b 69 00 61 72 67 76 	rex.WXB imul $0x76677261,(%r8),%rax
 5f6:	00 5f 53             	add    %bl,0x53(%rdi)
 5f9:	5f                   	pop    %rdi
 5fa:	74 72                	je     66e <_init-0x40009a>
 5fc:	75 6e                	jne    66c <_init-0x40009c>
 5fe:	63 00                	movslq (%rax),%eax
 600:	5f                   	pop    %rdi
 601:	5a                   	pop    %rdx
 602:	4e 34 42             	rex.WRX xor $0x42,%al
 605:	61                   	(bad)  
 606:	73 65                	jae    66d <_init-0x40009b>
 608:	38 67 65             	cmp    %ah,0x65(%rdi)
 60b:	74 56                	je     663 <_init-0x4000a5>
 60d:	61                   	(bad)  
 60e:	6c                   	insb   (%dx),%es:(%rdi)
 60f:	75 65                	jne    676 <_init-0x400092>
 611:	45 76 00             	rex.RB jbe 614 <_init-0x4000f4>
 614:	5f                   	pop    %rdi
 615:	5f                   	pop    %rdi
 616:	69 6e 69 74 69 61 6c 	imul   $0x6c616974,0x69(%rsi),%ebp
 61d:	69 7a 65 5f 70 00 5f 	imul   $0x5f00705f,0x65(%rdx),%edi
 624:	5a                   	pop    %rdx
 625:	4e 34 42             	rex.WRX xor $0x42,%al
 628:	61                   	(bad)  
 629:	73 65                	jae    690 <_init-0x400078>
 62b:	39 67 65             	cmp    %esp,0x65(%rdi)
 62e:	74 56                	je     686 <_init-0x400082>
 630:	61                   	(bad)  
 631:	6c                   	insb   (%dx),%es:(%rdi)
 632:	75 65                	jne    699 <_init-0x40006f>
 634:	32 45 76             	xor    0x76(%rbp),%al
 637:	00 5f 53             	add    %bl,0x53(%rdi)
 63a:	5f                   	pop    %rdi
 63b:	73 68                	jae    6a5 <_init-0x400063>
 63d:	6f                   	outsl  %ds:(%rsi),(%dx)
 63e:	77 70                	ja     6b0 <_init-0x400058>
 640:	6f                   	outsl  %ds:(%rsi),(%dx)
 641:	73 00                	jae    643 <_init-0x4000c5>
 643:	77 6d                	ja     6b2 <_init-0x400056>
 645:	65 6d                	gs insl (%dx),%es:(%rdi)
 647:	63 70 79             	movslq 0x79(%rax),%esi
 64a:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 64e:	6d                   	insl   (%dx),%es:(%rdi)
 64f:	6f                   	outsl  %ds:(%rsi),(%dx)
 650:	6e                   	outsb  %ds:(%rsi),(%dx)
 651:	00 5f 53             	add    %bl,0x53(%rdi)
 654:	5f                   	pop    %rdi
 655:	64 65 63 00          	fs movslq %gs:(%rax),%eax
 659:	5f                   	pop    %rdi
 65a:	49 6f                	rex.WB outsl %ds:(%rsi),(%dx)
 65c:	73 5f                	jae    6bd <_init-0x40004b>
 65e:	46 6d                	rex.RX insl (%dx),%es:(%rdi)
 660:	74 66                	je     6c8 <_init-0x400040>
 662:	6c                   	insb   (%dx),%es:(%rdi)
 663:	61                   	(bad)  
 664:	67 73 00             	addr32 jae 667 <_init-0x4000a1>
 667:	5f                   	pop    %rdi
 668:	5a                   	pop    %rdx
 669:	4e 53                	rex.WRX push %rbx
 66b:	74 31                	je     69e <_init-0x40006a>
 66d:	31 63 68             	xor    %esp,0x68(%rbx)
 670:	61                   	(bad)  
 671:	72 5f                	jb     6d2 <_init-0x400036>
 673:	74 72                	je     6e7 <_init-0x400021>
 675:	61                   	(bad)  
 676:	69 74 73 49 63 45 34 	imul   $0x66344563,0x49(%rbx,%rsi,2),%esi
 67d:	66 
 67e:	69 6e 64 45 50 4b 63 	imul   $0x634b5045,0x64(%rsi),%ebp
 685:	6d                   	insl   (%dx),%es:(%rdi)
 686:	52                   	push   %rdx
 687:	53                   	push   %rbx
 688:	31 5f 00             	xor    %ebx,0x0(%rdi)
 68b:	5f                   	pop    %rdi
 68c:	5a                   	pop    %rdx
 68d:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
 691:	67 6e                	outsb  %ds:(%esi),(%dx)
 693:	75 5f                	jne    6f4 <_init-0x400014>
 695:	63 78 78             	movslq 0x78(%rax),%edi
 698:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 69b:	5f                   	pop    %rdi
 69c:	6e                   	outsb  %ds:(%rsi),(%dx)
 69d:	75 6d                	jne    70c <_init-0x3ffffc>
 69f:	65 72 69             	gs jb  70b <_init-0x3ffffd>
 6a2:	63 5f 74             	movslq 0x74(%rdi),%ebx
 6a5:	72 61                	jb     708 <_init-0x400000>
 6a7:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 6ae:	65 
 6af:	67 65 72 49          	addr32 gs jb 6fc <_init-0x40000c>
 6b3:	73 45                	jae    6fa <_init-0x40000e>
 6b5:	35 5f 5f 6d 69       	xor    $0x696d5f5f,%eax
 6ba:	6e                   	outsb  %ds:(%rsi),(%dx)
 6bb:	45 00 77 63          	add    %r14b,0x63(%r15)
 6bf:	74 6f                	je     730 <_init-0x3fffd8>
 6c1:	62                   	(bad)  {%k5}
 6c2:	00 5f 53             	add    %bl,0x53(%rdi)
 6c5:	5f                   	pop    %rdi
 6c6:	73 68                	jae    730 <_init-0x3fffd8>
 6c8:	6f                   	outsl  %ds:(%rsi),(%dx)
 6c9:	77 70                	ja     73b <_init-0x3fffcd>
 6cb:	6f                   	outsl  %ds:(%rsi),(%dx)
 6cc:	69 6e 74 00 5f 53 5f 	imul   $0x5f535f00,0x74(%rsi),%ebp
 6d3:	73 6b                	jae    740 <_init-0x3fffc8>
 6d5:	69 70 77 73 00 67 70 	imul   $0x70670073,0x77(%rax),%esi
 6dc:	5f                   	pop    %rdi
 6dd:	6f                   	outsl  %ds:(%rsi),(%dx)
 6de:	66 66 73 65          	data16 data16 jae 747 <_init-0x3fffc1>
 6e2:	74 00                	je     6e4 <_init-0x400024>
 6e4:	5f                   	pop    %rdi
 6e5:	53                   	push   %rbx
 6e6:	5f                   	pop    %rdi
 6e7:	61                   	(bad)  
 6e8:	64 6a 75             	fs pushq $0x75
 6eb:	73 74                	jae    761 <_init-0x3fffa7>
 6ed:	66 69 65 6c 64 00    	imul   $0x64,0x6c(%rbp),%sp
 6f3:	5f                   	pop    %rdi
 6f4:	5a                   	pop    %rdx
 6f5:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
 6f9:	67 6e                	outsb  %ds:(%esi),(%dx)
 6fb:	75 5f                	jne    75c <_init-0x3fffac>
 6fd:	63 78 78             	movslq 0x78(%rax),%edi
 700:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 703:	5f                   	pop    %rdi
 704:	6e                   	outsb  %ds:(%rsi),(%dx)
 705:	75 6d                	jne    774 <_init-0x3fff94>
 707:	65 72 69             	gs jb  773 <_init-0x3fff95>
 70a:	63 5f 74             	movslq 0x74(%rdi),%ebx
 70d:	72 61                	jb     770 <_init-0x3fff98>
 70f:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 716:	65 
 717:	67 65 72 49          	addr32 gs jb 764 <_init-0x3fffa4>
 71b:	6d                   	insl   (%dx),%es:(%rdi)
 71c:	45 38 5f 5f          	cmp    %r11b,0x5f(%r15)
 720:	64 69 67 69 74 73 45 	imul   $0x457374,%fs:0x69(%rdi),%esp
 727:	00 
 728:	66 6c                	data16 insb (%dx),%es:(%rdi)
 72a:	6f                   	outsl  %ds:(%rsi),(%dx)
 72b:	61                   	(bad)  
 72c:	74 00                	je     72e <_init-0x3fffda>
 72e:	5f                   	pop    %rdi
 72f:	5a                   	pop    %rdx
 730:	53                   	push   %rbx
 731:	74 34                	je     767 <_init-0x3fffa1>
 733:	63 6f 75             	movslq 0x75(%rdi),%ebp
 736:	74 00                	je     738 <_init-0x3fffd0>
 738:	74 6d                	je     7a7 <_init-0x3fff61>
 73a:	5f                   	pop    %rdi
 73b:	6d                   	insl   (%dx),%es:(%rdi)
 73c:	69 6e 00 5f 53 5f 6c 	imul   $0x6c5f535f,0x0(%rsi),%ebp
 743:	65 66 74 00          	gs data16 je 747 <_init-0x3fffc1>
 747:	5f                   	pop    %rdi
 748:	5a                   	pop    %rdx
 749:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
 74d:	67 6e                	outsb  %ds:(%esi),(%dx)
 74f:	75 5f                	jne    7b0 <_init-0x3fff58>
 751:	63 78 78             	movslq 0x78(%rax),%edi
 754:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 757:	5f                   	pop    %rdi
 758:	6e                   	outsb  %ds:(%rsi),(%dx)
 759:	75 6d                	jne    7c8 <_init-0x3fff40>
 75b:	65 72 69             	gs jb  7c7 <_init-0x3fff41>
 75e:	63 5f 74             	movslq 0x74(%rdi),%ebx
 761:	72 61                	jb     7c4 <_init-0x3fff44>
 763:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 76a:	65 
 76b:	67 65 72 49          	addr32 gs jb 7b8 <_init-0x3fff50>
 76f:	6c                   	insb   (%dx),%es:(%rdi)
 770:	45 35 5f 5f 6d 69    	rex.RB xor $0x696d5f5f,%eax
 776:	6e                   	outsb  %ds:(%rsi),(%dx)
 777:	45 00 63 68          	add    %r12b,0x68(%r11)
 77b:	61                   	(bad)  
 77c:	72 5f                	jb     7dd <_init-0x3fff2b>
 77e:	74 72                	je     7f2 <_init-0x3fff16>
 780:	61                   	(bad)  
 781:	69 74 73 3c 63 68 61 	imul   $0x72616863,0x3c(%rbx,%rsi,2),%esi
 788:	72 
 789:	3e 00 70 6f          	add    %dh,%ds:0x6f(%rax)
 78d:	73 69                	jae    7f8 <_init-0x3fff10>
 78f:	74 69                	je     7fa <_init-0x3fff0e>
 791:	76 65                	jbe    7f8 <_init-0x3fff10>
 793:	5f                   	pop    %rdi
 794:	73 69                	jae    7ff <_init-0x3fff09>
 796:	67 6e                	outsb  %ds:(%esi),(%dx)
 798:	00 5f 53             	add    %bl,0x53(%rdi)
 79b:	5f                   	pop    %rdi
 79c:	69 6f 73 5f 6f 70 65 	imul   $0x65706f5f,0x73(%rdi),%ebp
 7a3:	6e                   	outsb  %ds:(%rsi),(%dx)
 7a4:	6d                   	insl   (%dx),%es:(%rdi)
 7a5:	6f                   	outsl  %ds:(%rsi),(%dx)
 7a6:	64 65 5f             	fs gs pop %rdi
 7a9:	65 6e                	outsb  %gs:(%rsi),(%dx)
 7ab:	64 00 77 63          	add    %dh,%fs:0x63(%rdi)
 7af:	73 73                	jae    824 <_init-0x3ffee4>
 7b1:	70 6e                	jo     821 <_init-0x3ffee7>
 7b3:	00 5f 5a             	add    %bl,0x5a(%rdi)
 7b6:	4e 53                	rex.WRX push %rbx
 7b8:	74 31                	je     7eb <_init-0x3fff1d>
 7ba:	31 63 68             	xor    %esp,0x68(%rbx)
 7bd:	61                   	(bad)  
 7be:	72 5f                	jb     81f <_init-0x3ffee9>
 7c0:	74 72                	je     834 <_init-0x3ffed4>
 7c2:	61                   	(bad)  
 7c3:	69 74 73 49 63 45 31 	imul   $0x31314563,0x49(%rbx,%rsi,2),%esi
 7ca:	31 
 7cb:	65 71 5f             	gs jno 82d <_init-0x3ffedb>
 7ce:	69 6e 74 5f 74 79 70 	imul   $0x7079745f,0x74(%rsi),%ebp
 7d5:	65 45 52             	gs rex.RB push %r10
 7d8:	4b 69 53 32 5f 00 5f 	rex.WXB imul $0x535f005f,0x32(%r11),%rdx
 7df:	53 
 7e0:	5f                   	pop    %rdi
 7e1:	75 70                	jne    853 <_init-0x3ffeb5>
 7e3:	70 65                	jo     84a <_init-0x3ffebe>
 7e5:	72 63                	jb     84a <_init-0x3ffebe>
 7e7:	61                   	(bad)  
 7e8:	73 65                	jae    84f <_init-0x3ffeb9>
 7ea:	00 5f 41             	add    %bl,0x41(%rdi)
 7ed:	74 6f                	je     85e <_init-0x3ffeaa>
 7ef:	6d                   	insl   (%dx),%es:(%rdi)
 7f0:	69 63 5f 77 6f 72 64 	imul   $0x64726f77,0x5f(%rbx),%esp
 7f7:	00 6f 76             	add    %ch,0x76(%rdi)
 7fa:	65 72 66             	gs jb  863 <_init-0x3ffea5>
 7fd:	6c                   	insb   (%dx),%es:(%rdi)
 7fe:	6f                   	outsl  %ds:(%rsi),(%dx)
 7ff:	77 5f                	ja     860 <_init-0x3ffea8>
 801:	61                   	(bad)  
 802:	72 67                	jb     86b <_init-0x3ffe9d>
 804:	5f                   	pop    %rdi
 805:	61                   	(bad)  
 806:	72 65                	jb     86d <_init-0x3ffe9b>
 808:	61                   	(bad)  
 809:	00 5f 53             	add    %bl,0x53(%rdi)
 80c:	5f                   	pop    %rdi
 80d:	69 6f 73 5f 66 6d 74 	imul   $0x746d665f,0x73(%rdi),%ebp
 814:	66 6c                	data16 insb (%dx),%es:(%rdi)
 816:	61                   	(bad)  
 817:	67 73 5f             	addr32 jae 879 <_init-0x3ffe8f>
 81a:	65 6e                	outsb  %gs:(%rsi),(%dx)
 81c:	64 00 6f 73          	add    %ch,%fs:0x73(%rdi)
 820:	74 72                	je     894 <_init-0x3ffe74>
 822:	65 61                	gs (bad) 
 824:	6d                   	insl   (%dx),%es:(%rdi)
 825:	00 5f 5f             	add    %bl,0x5f(%rdi)
 828:	63 6f 75             	movslq 0x75(%rdi),%ebp
 82b:	6e                   	outsb  %ds:(%rsi),(%dx)
 82c:	74 00                	je     82e <_init-0x3ffeda>
 82e:	5f                   	pop    %rdi
 82f:	5f                   	pop    %rdi
 830:	67 6e                	outsb  %ds:(%esi),(%dx)
 832:	75 5f                	jne    893 <_init-0x3ffe75>
 834:	63 78 78             	movslq 0x78(%rax),%edi
 837:	00 62 6f             	add    %ah,0x6f(%rdx)
 83a:	6f                   	outsl  %ds:(%rsi),(%dx)
 83b:	6c                   	insb   (%dx),%es:(%rdi)
 83c:	00 5f 5a             	add    %bl,0x5a(%rdi)
 83f:	4e 53                	rex.WRX push %rbx
 841:	74 31                	je     874 <_init-0x3ffe94>
 843:	31 63 68             	xor    %esp,0x68(%rbx)
 846:	61                   	(bad)  
 847:	72 5f                	jb     8a8 <_init-0x3ffe60>
 849:	74 72                	je     8bd <_init-0x3ffe4b>
 84b:	61                   	(bad)  
 84c:	69 74 73 49 63 45 36 	imul   $0x61364563,0x49(%rbx,%rsi,2),%esi
 853:	61 
 854:	73 73                	jae    8c9 <_init-0x3ffe3f>
 856:	69 67 6e 45 50 63 6d 	imul   $0x6d635045,0x6e(%rdi),%esp
 85d:	63 00                	movslq (%rax),%eax
 85f:	6c                   	insb   (%dx),%es:(%rdi)
 860:	6f                   	outsl  %ds:(%rsi),(%dx)
 861:	6e                   	outsb  %ds:(%rsi),(%dx)
 862:	67 20 64 6f 75       	and    %ah,0x75(%edi,%ebp,2)
 867:	62                   	(bad)  {%k5}
 868:	6c                   	insb   (%dx),%es:(%rdi)
 869:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 86d:	6e                   	outsb  %ds:(%rsi),(%dx)
 86e:	75 6d                	jne    8dd <_init-0x3ffe2b>
 870:	65 72 69             	gs jb  8dc <_init-0x3ffe2c>
 873:	63 5f 74             	movslq 0x74(%rdi),%ebx
 876:	72 61                	jb     8d9 <_init-0x3ffe2f>
 878:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 87f:	65 
 880:	67 65 72 3c          	addr32 gs jb 8c0 <_init-0x3ffe48>
 884:	6c                   	insb   (%dx),%es:(%rdi)
 885:	6f                   	outsl  %ds:(%rsi),(%dx)
 886:	6e                   	outsb  %ds:(%rsi),(%dx)
 887:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 88b:	74 3e                	je     8cb <_init-0x3ffe3d>
 88d:	00 5f 53             	add    %bl,0x53(%rdi)
 890:	5f                   	pop    %rdi
 891:	66 6c                	data16 insb (%dx),%es:(%rdi)
 893:	6f                   	outsl  %ds:(%rsi),(%dx)
 894:	61                   	(bad)  
 895:	74 66                	je     8fd <_init-0x3ffe0b>
 897:	69 65 6c 64 00 6d 5f 	imul   $0x5f6d0064,0x6c(%rbp),%esp
 89e:	76 61                	jbe    901 <_init-0x3ffe07>
 8a0:	6c                   	insb   (%dx),%es:(%rdi)
 8a1:	75 65                	jne    908 <_init-0x3ffe00>
 8a3:	32 00                	xor    (%rax),%al
 8a5:	5f                   	pop    %rdi
 8a6:	53                   	push   %rbx
 8a7:	5f                   	pop    %rdi
 8a8:	6f                   	outsl  %ds:(%rsi),(%dx)
 8a9:	63 74 00 5f          	movslq 0x5f(%rax,%rax,1),%esi
 8ad:	5f                   	pop    %rdi
 8ae:	77 63                	ja     913 <_init-0x3ffdf5>
 8b0:	68 62 00 5f 5f       	pushq  $0x5f5f0062
 8b5:	73 74                	jae    92b <_init-0x3ffddd>
 8b7:	61                   	(bad)  
 8b8:	74 69                	je     923 <_init-0x3ffde5>
 8ba:	63 5f 69             	movslq 0x69(%rdi),%ebx
 8bd:	6e                   	outsb  %ds:(%rsi),(%dx)
 8be:	69 74 69 61 6c 69 7a 	imul   $0x617a696c,0x61(%rcx,%rbp,2),%esi
 8c5:	61 
 8c6:	74 69                	je     931 <_init-0x3ffdd7>
 8c8:	6f                   	outsl  %ds:(%rsi),(%dx)
 8c9:	6e                   	outsb  %ds:(%rsi),(%dx)
 8ca:	5f                   	pop    %rdi
 8cb:	61                   	(bad)  
 8cc:	6e                   	outsb  %ds:(%rsi),(%dx)
 8cd:	64 5f                	fs pop %rdi
 8cf:	64 65 73 74          	fs gs jae 947 <_init-0x3ffdc1>
 8d3:	72 75                	jb     94a <_init-0x3ffdbe>
 8d5:	63 74 69 6f          	movslq 0x6f(%rcx,%rbp,2),%esi
 8d9:	6e                   	outsb  %ds:(%rsi),(%dx)
 8da:	5f                   	pop    %rdi
 8db:	30 00                	xor    %al,(%rax)
 8dd:	5f                   	pop    %rdi
 8de:	5a                   	pop    %rdx
 8df:	4e 53                	rex.WRX push %rbx
 8e1:	74 31                	je     914 <_init-0x3ffdf4>
 8e3:	31 63 68             	xor    %esp,0x68(%rbx)
 8e6:	61                   	(bad)  
 8e7:	72 5f                	jb     948 <_init-0x3ffdc0>
 8e9:	74 72                	je     95d <_init-0x3ffdab>
 8eb:	61                   	(bad)  
 8ec:	69 74 73 49 63 45 37 	imul   $0x63374563,0x49(%rbx,%rsi,2),%esi
 8f3:	63 
 8f4:	6f                   	outsl  %ds:(%rsi),(%dx)
 8f5:	6d                   	insl   (%dx),%es:(%rdi)
 8f6:	70 61                	jo     959 <_init-0x3ffdaf>
 8f8:	72 65                	jb     95f <_init-0x3ffda9>
 8fa:	45 50                	rex.RB push %r8
 8fc:	4b 63 53 32          	rex.WXB movslq 0x32(%r11),%rdx
 900:	5f                   	pop    %rdi
 901:	6d                   	insl   (%dx),%es:(%rdi)
 902:	00 6c 6f 6e          	add    %ch,0x6e(%rdi,%rbp,2)
 906:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 90b:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 90f:	73 69                	jae    97a <_init-0x3ffd8e>
 911:	67 6e                	outsb  %ds:(%esi),(%dx)
 913:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 918:	74 00                	je     91a <_init-0x3ffdee>
 91a:	72 65                	jb     981 <_init-0x3ffd87>
 91c:	67 5f                	addr32 pop %rdi
 91e:	73 61                	jae    981 <_init-0x3ffd87>
 920:	76 65                	jbe    987 <_init-0x3ffd81>
 922:	5f                   	pop    %rdi
 923:	61                   	(bad)  
 924:	72 65                	jb     98b <_init-0x3ffd7d>
 926:	61                   	(bad)  
 927:	00 77 63             	add    %dh,0x63(%rdi)
 92a:	73 74                	jae    9a0 <_init-0x3ffd68>
 92c:	6f                   	outsl  %ds:(%rsi),(%dx)
 92d:	6c                   	insb   (%dx),%es:(%rdi)
 92e:	64 00 69 6e          	add    %ch,%fs:0x6e(%rcx)
 932:	74 5f                	je     993 <_init-0x3ffd75>
 934:	70 5f                	jo     995 <_init-0x3ffd73>
 936:	73 65                	jae    99d <_init-0x3ffd6b>
 938:	70 5f                	jo     999 <_init-0x3ffd6f>
 93a:	62                   	(bad)  {%k5}
 93b:	79 5f                	jns    99c <_init-0x3ffd6c>
 93d:	73 70                	jae    9af <_init-0x3ffd59>
 93f:	61                   	(bad)  
 940:	63 65 00             	movslq 0x0(%rbp),%esp
 943:	5f                   	pop    %rdi
 944:	53                   	push   %rbx
 945:	5f                   	pop    %rdi
 946:	69 6f 73 5f 73 65 65 	imul   $0x6565735f,0x73(%rdi),%ebp
 94d:	6b 64 69 72 5f       	imul   $0x5f,0x72(%rcx,%rbp,2),%esp
 952:	65 6e                	outsb  %gs:(%rsi),(%dx)
 954:	64 00 6c 65 6e       	add    %ch,%fs:0x6e(%rbp,%riz,2)
 959:	67 74 68             	addr32 je 9c4 <_init-0x3ffd44>
 95c:	00 77 63             	add    %dh,0x63(%rdi)
 95f:	73 74                	jae    9d5 <_init-0x3ffd33>
 961:	6f                   	outsl  %ds:(%rsi),(%dx)
 962:	6c                   	insb   (%dx),%es:(%rdi)
 963:	6c                   	insb   (%dx),%es:(%rdi)
 964:	00 77 63             	add    %dh,0x63(%rdi)
 967:	73 73                	jae    9dc <_init-0x3ffd2c>
 969:	74 72                	je     9dd <_init-0x3ffd2b>
 96b:	00 5f 49             	add    %bl,0x49(%rdi)
 96e:	6f                   	outsl  %ds:(%rsi),(%dx)
 96f:	73 5f                	jae    9d0 <_init-0x3ffd38>
 971:	49 6f                	rex.WB outsl %ds:(%rsi),(%dx)
 973:	73 74                	jae    9e9 <_init-0x3ffd1f>
 975:	61                   	(bad)  
 976:	74 65                	je     9dd <_init-0x3ffd2b>
 978:	00 5f 5a             	add    %bl,0x5a(%rdi)
 97b:	4e 39 5f 5f          	rex.WRX cmp %r11,0x5f(%rdi)
 97f:	67 6e                	outsb  %ds:(%esi),(%dx)
 981:	75 5f                	jne    9e2 <_init-0x3ffd26>
 983:	63 78 78             	movslq 0x78(%rax),%edi
 986:	32 34 5f             	xor    (%rdi,%rbx,2),%dh
 989:	5f                   	pop    %rdi
 98a:	6e                   	outsb  %ds:(%rsi),(%dx)
 98b:	75 6d                	jne    9fa <_init-0x3ffd0e>
 98d:	65 72 69             	gs jb  9f9 <_init-0x3ffd0f>
 990:	63 5f 74             	movslq 0x74(%rdi),%ebx
 993:	72 61                	jb     9f6 <_init-0x3ffd12>
 995:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 99c:	65 
 99d:	67 65 72 49          	addr32 gs jb 9ea <_init-0x3ffd1e>
 9a1:	63 45 35             	movslq 0x35(%rbp),%eax
 9a4:	5f                   	pop    %rdi
 9a5:	5f                   	pop    %rdi
 9a6:	6d                   	insl   (%dx),%es:(%rdi)
 9a7:	61                   	(bad)  
 9a8:	78 45                	js     9ef <_init-0x3ffd19>
 9aa:	00 77 63             	add    %dh,0x63(%rdi)
 9ad:	73 72                	jae    a21 <_init-0x3ffce7>
 9af:	74 6f                	je     a20 <_init-0x3ffce8>
 9b1:	6d                   	insl   (%dx),%es:(%rdi)
 9b2:	62 73                	(bad)  {%k5}
 9b4:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 9b8:	77 64                	ja     a1e <_init-0x3ffcea>
 9ba:	61                   	(bad)  
 9bb:	79 00                	jns    9bd <_init-0x3ffd4b>
 9bd:	5f                   	pop    %rdi
 9be:	53                   	push   %rbx
 9bf:	5f                   	pop    %rdi
 9c0:	75 6e                	jne    a30 <_init-0x3ffcd8>
 9c2:	69 74 62 75 66 00 5f 	imul   $0x5a5f0066,0x75(%rdx,%riz,2),%esi
 9c9:	5a 
 9ca:	4e 53                	rex.WRX push %rbx
 9cc:	74 31                	je     9ff <_init-0x3ffd09>
 9ce:	31 63 68             	xor    %esp,0x68(%rbx)
 9d1:	61                   	(bad)  
 9d2:	72 5f                	jb     a33 <_init-0x3ffcd5>
 9d4:	74 72                	je     a48 <_init-0x3ffcc0>
 9d6:	61                   	(bad)  
 9d7:	69 74 73 49 63 45 32 	imul   $0x65324563,0x49(%rbx,%rsi,2),%esi
 9de:	65 
 9df:	71 45                	jno    a26 <_init-0x3ffce2>
 9e1:	52                   	push   %rdx
 9e2:	4b 63 53 32          	rex.WXB movslq 0x32(%r11),%rdx
 9e6:	5f                   	pop    %rdi
 9e7:	00 5f 5f             	add    %bl,0x5f(%rdi)
 9ea:	64 69 67 69 74 73 00 	imul   $0x77007374,%fs:0x69(%rdi),%esp
 9f1:	77 
 9f2:	63 73 74             	movslq 0x74(%rbx),%esi
 9f5:	6f                   	outsl  %ds:(%rsi),(%dx)
 9f6:	64 00 77 63          	add    %dh,%fs:0x63(%rdi)
 9fa:	73 74                	jae    a70 <_init-0x3ffc98>
 9fc:	6f                   	outsl  %ds:(%rsi),(%dx)
 9fd:	66 00 77 63          	data16 add %dh,0x63(%rdi)
 a01:	73 74                	jae    a77 <_init-0x3ffc91>
 a03:	6f                   	outsl  %ds:(%rsi),(%dx)
 a04:	6b 00 77             	imul   $0x77,(%rax),%eax
 a07:	63 73 74             	movslq 0x74(%rbx),%esi
 a0a:	6f                   	outsl  %ds:(%rsi),(%dx)
 a0b:	6c                   	insb   (%dx),%es:(%rdi)
 a0c:	00 5f 5f             	add    %bl,0x5f(%rdi)
 a0f:	46                   	rex.RX
 a10:	49                   	rex.WB
 a11:	4c                   	rex.WR
 a12:	45 00 73 65          	add    %r14b,0x65(%r11)
 a16:	74 6c                	je     a84 <_init-0x3ffc84>
 a18:	6f                   	outsl  %ds:(%rsi),(%dx)
 a19:	63 61 6c             	movslq 0x6c(%rcx),%esp
 a1c:	65 00 77 63          	add    %dh,%gs:0x63(%rdi)
 a20:	73 72                	jae    a94 <_init-0x3ffc74>
 a22:	63 68 72             	movslq 0x72(%rax),%ebp
 a25:	00 77 69             	add    %dh,0x69(%rdi)
 a28:	6e                   	outsb  %ds:(%rsi),(%dx)
 a29:	74 5f                	je     a8a <_init-0x3ffc7e>
 a2b:	74 00                	je     a2d <_init-0x3ffcdb>
 a2d:	69 6f 73 5f 62 61 73 	imul   $0x7361625f,0x73(%rdi),%ebp
 a34:	65 00 42 61          	add    %al,%gs:0x61(%rdx)
 a38:	73 65                	jae    a9f <_init-0x3ffc69>
 a3a:	00 67 65             	add    %ah,0x65(%rdi)
 a3d:	74 56                	je     a95 <_init-0x3ffc73>
 a3f:	61                   	(bad)  
 a40:	6c                   	insb   (%dx),%es:(%rdi)
 a41:	75 65                	jne    aa8 <_init-0x3ffc60>
 a43:	32 00                	xor    (%rax),%al
 a45:	77 63                	ja     aaa <_init-0x3ffc5e>
 a47:	73 6c                	jae    ab5 <_init-0x3ffc53>
 a49:	65 6e                	outsb  %gs:(%rsi),(%dx)
 a4b:	00 69 6f             	add    %ch,0x6f(%rcx)
 a4e:	73 74                	jae    ac4 <_init-0x3ffc44>
 a50:	61                   	(bad)  
 a51:	74 65                	je     ab8 <_init-0x3ffc50>
 a53:	00 74 6f 5f          	add    %dh,0x5f(%rdi,%rbp,2)
 a57:	69 6e 74 5f 74 79 70 	imul   $0x7079745f,0x74(%rsi),%ebp
 a5e:	65 00 74 6f 5f       	add    %dh,%gs:0x5f(%rdi,%rbp,2)
 a63:	63 68 61             	movslq 0x61(%rax),%ebp
 a66:	72 5f                	jb     ac7 <_init-0x3ffc41>
 a68:	74 79                	je     ae3 <_init-0x3ffc25>
 a6a:	70 65                	jo     ad1 <_init-0x3ffc37>
 a6c:	00 5f 5f             	add    %bl,0x5f(%rdi)
 a6f:	64 65 62             	fs gs (bad) {%k5}
 a72:	75 67                	jne    adb <_init-0x3ffc2d>
 a74:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 a78:	67 6d                	insl   (%dx),%es:(%edi)
 a7a:	74 6f                	je     aeb <_init-0x3ffc1d>
 a7c:	66 66 00 63 75       	data16 data16 add %ah,0x75(%rbx)
 a81:	72 72                	jb     af5 <_init-0x3ffc13>
 a83:	65 6e                	outsb  %gs:(%rsi),(%dx)
 a85:	63 79 5f             	movslq 0x5f(%rcx),%edi
 a88:	73 79                	jae    b03 <_init-0x3ffc05>
 a8a:	6d                   	insl   (%dx),%es:(%rdi)
 a8b:	62                   	(bad)  {%k5}
 a8c:	6f                   	outsl  %ds:(%rsi),(%dx)
 a8d:	6c                   	insb   (%dx),%es:(%rdi)
 a8e:	00 73 68             	add    %dh,0x68(%rbx)
 a91:	6f                   	outsl  %ds:(%rsi),(%dx)
 a92:	72 74                	jb     b08 <_init-0x3ffc00>
 a94:	20 69 6e             	and    %ch,0x6e(%rcx)
 a97:	74 00                	je     a99 <_init-0x3ffc6f>
 a99:	5f                   	pop    %rdi
 a9a:	5a                   	pop    %rdx
 a9b:	4e 53                	rex.WRX push %rbx
 a9d:	74 31                	je     ad0 <_init-0x3ffc38>
 a9f:	31 63 68             	xor    %esp,0x68(%rbx)
 aa2:	61                   	(bad)  
 aa3:	72 5f                	jb     b04 <_init-0x3ffc04>
 aa5:	74 72                	je     b19 <_init-0x3ffbef>
 aa7:	61                   	(bad)  
 aa8:	69 74 73 49 63 45 36 	imul   $0x6c364563,0x49(%rbx,%rsi,2),%esi
 aaf:	6c 
 ab0:	65 6e                	outsb  %gs:(%rsi),(%dx)
 ab2:	67 74 68             	addr32 je b1d <_init-0x3ffbeb>
 ab5:	45 50                	rex.RB push %r8
 ab7:	4b 63 00             	rex.WXB movslq (%r8),%rax
 aba:	77 63                	ja     b1f <_init-0x3ffbe9>
 abc:	73 66                	jae    b24 <_init-0x3ffbe4>
 abe:	74 69                	je     b29 <_init-0x3ffbdf>
 ac0:	6d                   	insl   (%dx),%es:(%rdi)
 ac1:	65 00 6d 6f          	add    %ch,%gs:0x6f(%rbp)
 ac5:	6e                   	outsb  %ds:(%rsi),(%dx)
 ac6:	5f                   	pop    %rdi
 ac7:	67 72 6f             	addr32 jb b39 <_init-0x3ffbcf>
 aca:	75 70                	jne    b3c <_init-0x3ffbcc>
 acc:	69 6e 67 00 5f 53 5f 	imul   $0x5f535f00,0x67(%rsi),%ebp
 ad3:	63 75 72             	movslq 0x72(%rbp),%esi
 ad6:	00 5f 5a             	add    %bl,0x5a(%rdi)
 ad9:	4e 53                	rex.WRX push %rbx
 adb:	74 31                	je     b0e <_init-0x3ffbfa>
 add:	31 63 68             	xor    %esp,0x68(%rbx)
 ae0:	61                   	(bad)  
 ae1:	72 5f                	jb     b42 <_init-0x3ffbc6>
 ae3:	74 72                	je     b57 <_init-0x3ffbb1>
 ae5:	61                   	(bad)  
 ae6:	69 74 73 49 63 45 36 	imul   $0x61364563,0x49(%rbx,%rsi,2),%esi
 aed:	61 
 aee:	73 73                	jae    b63 <_init-0x3ffba5>
 af0:	69 67 6e 45 52 63 52 	imul   $0x52635245,0x6e(%rdi),%esp
 af7:	4b 63 00             	rex.WXB movslq (%r8),%rax
 afa:	77 63                	ja     b5f <_init-0x3ffba9>
 afc:	73 63                	jae    b61 <_init-0x3ffba7>
 afe:	61                   	(bad)  
 aff:	74 00                	je     b01 <_init-0x3ffc07>
 b01:	31 31                	xor    %esi,(%rcx)
 b03:	5f                   	pop    %rdi
 b04:	5f                   	pop    %rdi
 b05:	6d                   	insl   (%dx),%es:(%rdi)
 b06:	62 73 74 61 74       	(bad)  {%k1}
 b0b:	65 5f                	gs pop %rdi
 b0d:	74 00                	je     b0f <_init-0x3ffbf9>
 b0f:	69 6e 74 5f 70 5f 73 	imul   $0x735f705f,0x74(%rsi),%ebp
 b16:	69 67 6e 5f 70 6f 73 	imul   $0x736f705f,0x6e(%rdi),%esp
 b1d:	6e                   	outsb  %ds:(%rsi),(%dx)
 b1e:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 b22:	7a 6f                	jp     b93 <_init-0x3ffb75>
 b24:	6e                   	outsb  %ds:(%rsi),(%dx)
 b25:	65 00 76 77          	add    %dh,%gs:0x77(%rsi)
 b29:	73 63                	jae    b8e <_init-0x3ffb7a>
 b2b:	61                   	(bad)  
 b2c:	6e                   	outsb  %ds:(%rsi),(%dx)
 b2d:	66 00 5f 53          	data16 add %bl,0x53(%rdi)
 b31:	5f                   	pop    %rdi
 b32:	69 6f 73 5f 69 6f 73 	imul   $0x736f695f,0x73(%rdi),%ebp
 b39:	74 61                	je     b9c <_init-0x3ffb6c>
 b3b:	74 65                	je     ba2 <_init-0x3ffb66>
 b3d:	5f                   	pop    %rdi
 b3e:	65 6e                	outsb  %gs:(%rsi),(%dx)
 b40:	64 00 77 63          	add    %dh,%fs:0x63(%rdi)
 b44:	72 74                	jb     bba <_init-0x3ffb4e>
 b46:	6f                   	outsl  %ds:(%rsi),(%dx)
 b47:	6d                   	insl   (%dx),%es:(%rdi)
 b48:	62                   	(bad)  {%k1}
 b49:	00 6c 63 6f          	add    %ch,0x6f(%rbx,%riz,2)
 b4d:	6e                   	outsb  %ds:(%rsi),(%dx)
 b4e:	76 00                	jbe    b50 <_init-0x3ffbb8>
 b50:	5f                   	pop    %rdi
 b51:	5a                   	pop    %rdx
 b52:	4e 53                	rex.WRX push %rbx
 b54:	74 31                	je     b87 <_init-0x3ffb81>
 b56:	31 63 68             	xor    %esp,0x68(%rbx)
 b59:	61                   	(bad)  
 b5a:	72 5f                	jb     bbb <_init-0x3ffb4d>
 b5c:	74 72                	je     bd0 <_init-0x3ffb38>
 b5e:	61                   	(bad)  
 b5f:	69 74 73 49 63 45 33 	imul   $0x65334563,0x49(%rbx,%rsi,2),%esi
 b66:	65 
 b67:	6f                   	outsl  %ds:(%rsi),(%dx)
 b68:	66 45 76 00          	data16 rex.RB jbe b6c <_init-0x3ffb9c>
 b6c:	77 63                	ja     bd1 <_init-0x3ffb37>
 b6e:	73 6e                	jae    bde <_init-0x3ffb2a>
 b70:	63 61 74             	movslq 0x74(%rcx),%esp
 b73:	00 5f 5f             	add    %bl,0x5f(%rdi)
 b76:	6e                   	outsb  %ds:(%rsi),(%dx)
 b77:	75 6d                	jne    be6 <_init-0x3ffb22>
 b79:	65 72 69             	gs jb  be5 <_init-0x3ffb23>
 b7c:	63 5f 74             	movslq 0x74(%rdi),%ebx
 b7f:	72 61                	jb     be2 <_init-0x3ffb26>
 b81:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 b88:	65 
 b89:	67 65 72 3c          	addr32 gs jb bc9 <_init-0x3ffb3f>
 b8d:	73 68                	jae    bf7 <_init-0x3ffb11>
 b8f:	6f                   	outsl  %ds:(%rsi),(%dx)
 b90:	72 74                	jb     c06 <_init-0x3ffb02>
 b92:	20 69 6e             	and    %ch,0x6e(%rcx)
 b95:	74 3e                	je     bd5 <_init-0x3ffb33>
 b97:	00 5f 5f             	add    %bl,0x5f(%rdi)
 b9a:	64 73 6f             	fs jae c0c <_init-0x3ffafc>
 b9d:	5f                   	pop    %rdi
 b9e:	68 61 6e 64 6c       	pushq  $0x6c646e61
 ba3:	65 00 6c 6f 6e       	add    %ch,%gs:0x6e(%rdi,%rbp,2)
 ba8:	67 20 6c 6f 6e       	and    %ch,0x6e(%edi,%ebp,2)
 bad:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 bb1:	74 00                	je     bb3 <_init-0x3ffb55>
 bb3:	66 70 75             	data16 jo c2b <_init-0x3ffadd>
 bb6:	74 77                	je     c2f <_init-0x3ffad9>
 bb8:	63 00                	movslq (%rax),%eax
 bba:	66 70 75             	data16 jo c32 <_init-0x3ffad6>
 bbd:	74 77                	je     c36 <_init-0x3ffad2>
 bbf:	73 00                	jae    bc1 <_init-0x3ffb47>
 bc1:	7e 49                	jle    c0c <_init-0x3ffafc>
 bc3:	6e                   	outsb  %ds:(%rsi),(%dx)
 bc4:	69 74 00 6d 62 73 72 	imul   $0x74727362,0x6d(%rax,%rax,1),%esi
 bcb:	74 
 bcc:	6f                   	outsl  %ds:(%rsi),(%dx)
 bcd:	77 63                	ja     c32 <_init-0x3ffad6>
 bcf:	73 00                	jae    bd1 <_init-0x3ffb37>
 bd1:	5f                   	pop    %rdi
 bd2:	53                   	push   %rbx
 bd3:	5f                   	pop    %rdi
 bd4:	66 61                	data16 (bad) 
 bd6:	69 6c 62 69 74 00 5f 	imul   $0x5f5f0074,0x69(%rdx,%riz,2),%ebp
 bdd:	5f 
 bde:	6e                   	outsb  %ds:(%rsi),(%dx)
 bdf:	75 6d                	jne    c4e <_init-0x3ffaba>
 be1:	65 72 69             	gs jb  c4d <_init-0x3ffabb>
 be4:	63 5f 74             	movslq 0x74(%rdi),%ebx
 be7:	72 61                	jb     c4a <_init-0x3ffabe>
 be9:	69 74 73 5f 69 6e 74 	imul   $0x65746e69,0x5f(%rbx,%rsi,2),%esi
 bf0:	65 
 bf1:	67 65 72 3c          	addr32 gs jb c31 <_init-0x3ffad7>
 bf5:	6c                   	insb   (%dx),%es:(%rdi)
 bf6:	6f                   	outsl  %ds:(%rsi),(%dx)
 bf7:	6e                   	outsb  %ds:(%rsi),(%dx)
 bf8:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 bfc:	73 69                	jae    c67 <_init-0x3ffaa1>
 bfe:	67 6e                	outsb  %ds:(%esi),(%dx)
 c00:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 c05:	74 3e                	je     c45 <_init-0x3ffac3>
 c07:	00 74 6d 5f          	add    %dh,0x5f(%rbp,%rbp,2)
 c0b:	79 65                	jns    c72 <_init-0x3ffa96>
 c0d:	61                   	(bad)  
 c0e:	72 00                	jb     c10 <_init-0x3ffaf8>
 c10:	73 68                	jae    c7a <_init-0x3ffa8e>
 c12:	6f                   	outsl  %ds:(%rsi),(%dx)
 c13:	72 74                	jb     c89 <_init-0x3ffa7f>
 c15:	20 75 6e             	and    %dh,0x6e(%rbp)
 c18:	73 69                	jae    c83 <_init-0x3ffa85>
 c1a:	67 6e                	outsb  %ds:(%esi),(%dx)
 c1c:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 c21:	74 00                	je     c23 <_init-0x3ffae5>
 c23:	5f                   	pop    %rdi
 c24:	54                   	push   %rsp
 c25:	72 61                	jb     c88 <_init-0x3ffa80>
 c27:	69 74 73 00 76 66 77 	imul   $0x73776676,0x0(%rbx,%rsi,2),%esi
 c2e:	73 
 c2f:	63 61 6e             	movslq 0x6e(%rcx),%esp
 c32:	66 00 5f 49          	data16 add %bl,0x49(%rdi)
 c36:	6f                   	outsl  %ds:(%rsi),(%dx)
 c37:	73 5f                	jae    c98 <_init-0x3ffa70>
 c39:	53                   	push   %rbx
 c3a:	65 65 6b 64 69 72 00 	gs imul $0x0,%gs:0x72(%rcx,%rbp,2),%esp
 c41:	66 6d                	insw   (%dx),%es:(%rdi)
 c43:	74 66                	je     cab <_init-0x3ffa5d>
 c45:	6c                   	insb   (%dx),%es:(%rdi)
 c46:	61                   	(bad)  
 c47:	67 73 00             	addr32 jae c4a <_init-0x3ffabe>
 c4a:	5f                   	pop    %rdi
 c4b:	5f                   	pop    %rdi
 c4c:	69 6e 74 33 32 5f 74 	imul   $0x745f3233,0x74(%rsi),%ebp
 c53:	00 6d 62             	add    %ch,0x62(%rbp)
 c56:	73 69                	jae    cc1 <_init-0x3ffa47>
 c58:	6e                   	outsb  %ds:(%rsi),(%dx)
 c59:	69 74 00 69 73 77 63 	imul   $0x74637773,0x69(%rax,%rax,1),%esi
 c60:	74 
 c61:	79 70                	jns    cd3 <_init-0x3ffa35>
 c63:	65 00 61 73          	add    %ah,%gs:0x73(%rcx)
 c67:	73 69                	jae    cd2 <_init-0x3ffa36>
 c69:	67 6e                	outsb  %ds:(%esi),(%dx)
 c6b:	00 5f 5a             	add    %bl,0x5a(%rdi)
 c6e:	4e 53                	rex.WRX push %rbx
 c70:	74 31                	je     ca3 <_init-0x3ffa65>
 c72:	31 63 68             	xor    %esp,0x68(%rbx)
 c75:	61                   	(bad)  
 c76:	72 5f                	jb     cd7 <_init-0x3ffa31>
 c78:	74 72                	je     cec <_init-0x3ffa1c>
 c7a:	61                   	(bad)  
 c7b:	69 74 73 49 63 45 37 	imul   $0x6e374563,0x49(%rbx,%rsi,2),%esi
 c82:	6e 
 c83:	6f                   	outsl  %ds:(%rsi),(%dx)
 c84:	74 5f                	je     ce5 <_init-0x3ffa23>
 c86:	65 6f                	outsl  %gs:(%rsi),(%dx)
 c88:	66 45 52             	rex.RB push %r10w
 c8b:	4b 69 00 5f 53 5f 73 	rex.WXB imul $0x735f535f,(%r8),%rax
 c92:	63 69 65             	movslq 0x65(%rcx),%ebp
 c95:	6e                   	outsb  %ds:(%rsi),(%dx)
 c96:	74 69                	je     d01 <_init-0x3ffa07>
 c98:	66 69 63 00 77 63    	imul   $0x6377,0x0(%rbx),%sp
 c9e:	68 61 72 5f 74       	pushq  $0x745f7261
 ca3:	00 74 79 70          	add    %dh,0x70(%rcx,%rdi,2)
 ca7:	65 64 65 66 20 5f 5f 	gs fs data16 and %bl,%gs:0x5f(%rdi)
 cae:	76 61                	jbe    d11 <_init-0x3ff9f7>
 cb0:	5f                   	pop    %rdi
 cb1:	6c                   	insb   (%dx),%es:(%rdi)
 cb2:	69 73 74 5f 74 61 67 	imul   $0x6761745f,0x74(%rbx),%esi
 cb9:	20 5f 5f             	and    %bl,0x5f(%rdi)
 cbc:	76 61                	jbe    d1f <_init-0x3ff9e9>
 cbe:	5f                   	pop    %rdi
 cbf:	6c                   	insb   (%dx),%es:(%rdi)
 cc0:	69 73 74 5f 74 61 67 	imul   $0x6761745f,0x74(%rbx),%esi
 cc7:	00 77 63             	add    %dh,0x63(%rdi)
 cca:	73 74                	jae    d40 <_init-0x3ff9c8>
 ccc:	6f                   	outsl  %ds:(%rsi),(%dx)
 ccd:	75 6c                	jne    d3b <_init-0x3ff9cd>
	...

Disassembly of section .debug_ranges:

0000000000000000 <.debug_ranges>:
   0:	bd 08 40 00 00       	mov    $0x4008,%ebp
   5:	00 00                	add    %al,(%rax)
   7:	00 3c 0a             	add    %bh,(%rdx,%rcx,1)
   a:	40 00 00             	add    %al,(%rax)
   d:	00 00                	add    %al,(%rax)
   f:	00 3c 0a             	add    %bh,(%rdx,%rcx,1)
  12:	40 00 00             	add    %al,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	00 5d 0a             	add    %bl,0xa(%rbp)
  1a:	40 00 00             	add    %al,(%rax)
  1d:	00 00                	add    %al,(%rax)
  1f:	00 5d 0a             	add    %bl,0xa(%rbp)
  22:	40 00 00             	add    %al,(%rax)
  25:	00 00                	add    %al,(%rax)
  27:	00 68 0a             	add    %ch,0xa(%rax)
  2a:	40 00 00             	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
  2f:	00 68 0a             	add    %ch,0xa(%rax)
  32:	40 00 00             	add    %al,(%rax)
  35:	00 00                	add    %al,(%rax)
  37:	00 73 0a             	add    %dh,0xa(%rbx)
  3a:	40 00 00             	add    %al,(%rax)
	...
