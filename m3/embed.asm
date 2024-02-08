
embed.out:     file format elf32-littlearm


Disassembly of section .text:

00000000 <deregister_tm_clones>:
       0:	e59f0018 	ldr	r0, [pc, #24]	; 20 <deregister_tm_clones+0x20>
       4:	e59f3018 	ldr	r3, [pc, #24]	; 24 <deregister_tm_clones+0x24>
       8:	e1530000 	cmp	r3, r0
       c:	012fff1e 	bxeq	lr
      10:	e59f3010 	ldr	r3, [pc, #16]	; 28 <deregister_tm_clones+0x28>
      14:	e3530000 	cmp	r3, #0
      18:	012fff1e 	bxeq	lr
      1c:	e12fff13 	bx	r3
      20:	20000870 	andcs	r0, r0, r0, ror r8
      24:	20000870 	andcs	r0, r0, r0, ror r8
      28:	00000000 	andeq	r0, r0, r0

0000002c <register_tm_clones>:
      2c:	e59f0024 	ldr	r0, [pc, #36]	; 58 <register_tm_clones+0x2c>
      30:	e59f1024 	ldr	r1, [pc, #36]	; 5c <register_tm_clones+0x30>
      34:	e0413000 	sub	r3, r1, r0
      38:	e1a01fa3 	lsr	r1, r3, #31
      3c:	e0811143 	add	r1, r1, r3, asr #2
      40:	e1b010c1 	asrs	r1, r1, #1
      44:	012fff1e 	bxeq	lr
      48:	e59f3010 	ldr	r3, [pc, #16]	; 60 <register_tm_clones+0x34>
      4c:	e3530000 	cmp	r3, #0
      50:	012fff1e 	bxeq	lr
      54:	e12fff13 	bx	r3
      58:	20000870 	andcs	r0, r0, r0, ror r8
      5c:	20000870 	andcs	r0, r0, r0, ror r8
      60:	00000000 	andeq	r0, r0, r0

00000064 <__do_global_dtors_aux>:
      64:	e92d4010 	push	{r4, lr}
      68:	e59f402c 	ldr	r4, [pc, #44]	; 9c <__do_global_dtors_aux+0x38>
      6c:	e5d43000 	ldrb	r3, [r4]
      70:	e3530000 	cmp	r3, #0
      74:	1a000006 	bne	94 <__do_global_dtors_aux+0x30>
      78:	ebffffe0 	bl	0 <deregister_tm_clones>
      7c:	e59f301c 	ldr	r3, [pc, #28]	; a0 <__do_global_dtors_aux+0x3c>
      80:	e3530000 	cmp	r3, #0
      84:	159f0018 	ldrne	r0, [pc, #24]	; a4 <__do_global_dtors_aux+0x40>
      88:	11a00000 	movne	r0, r0
      8c:	e3a03001 	mov	r3, #1
      90:	e5c43000 	strb	r3, [r4]
      94:	e8bd4010 	pop	{r4, lr}
      98:	e12fff1e 	bx	lr
      9c:	20000870 	andcs	r0, r0, r0, ror r8
      a0:	00000000 	andeq	r0, r0, r0
      a4:	00001624 	andeq	r1, r0, r4, lsr #12

000000a8 <frame_dummy>:
      a8:	e59f3020 	ldr	r3, [pc, #32]	; d0 <frame_dummy+0x28>
      ac:	e3530000 	cmp	r3, #0
      b0:	0a000005 	beq	cc <frame_dummy+0x24>
      b4:	e92d4010 	push	{r4, lr}
      b8:	e59f1014 	ldr	r1, [pc, #20]	; d4 <frame_dummy+0x2c>
      bc:	e59f0014 	ldr	r0, [pc, #20]	; d8 <frame_dummy+0x30>
      c0:	e1a00000 	nop			; (mov r0, r0)
      c4:	e8bd4010 	pop	{r4, lr}
      c8:	eaffffd7 	b	2c <register_tm_clones>
      cc:	eaffffd6 	b	2c <register_tm_clones>
      d0:	00000000 	andeq	r0, r0, r0
      d4:	20000874 	andcs	r0, r0, r4, ror r8
      d8:	00001624 	andeq	r1, r0, r4, lsr #12

000000dc <_stack_init>:
      dc:	e10f4000 	mrs	r4, CPSR
      e0:	e314000f 	tst	r4, #15
      e4:	0a00001c 	beq	15c <_stack_init+0x80>
      e8:	e1a0300d 	mov	r3, sp
      ec:	e3a010d1 	mov	r1, #209	; 0xd1
      f0:	e121f001 	msr	CPSR_c, r1
      f4:	e1a0d003 	mov	sp, r3
      f8:	e24daa01 	sub	sl, sp, #4096	; 0x1000
      fc:	e1a0300a 	mov	r3, sl
     100:	e3a010d7 	mov	r1, #215	; 0xd7
     104:	e121f001 	msr	CPSR_c, r1
     108:	e1a0d003 	mov	sp, r3
     10c:	e2433a01 	sub	r3, r3, #4096	; 0x1000
     110:	e3a010db 	mov	r1, #219	; 0xdb
     114:	e121f001 	msr	CPSR_c, r1
     118:	e1a0d003 	mov	sp, r3
     11c:	e2433a01 	sub	r3, r3, #4096	; 0x1000
     120:	e3a010d2 	mov	r1, #210	; 0xd2
     124:	e121f001 	msr	CPSR_c, r1
     128:	e1a0d003 	mov	sp, r3
     12c:	e2433a02 	sub	r3, r3, #8192	; 0x2000
     130:	e3a010d3 	mov	r1, #211	; 0xd3
     134:	e121f001 	msr	CPSR_c, r1
     138:	e1a0d003 	mov	sp, r3
     13c:	e2433902 	sub	r3, r3, #32768	; 0x8000
     140:	e3c330ff 	bic	r3, r3, #255	; 0xff
     144:	e3c33cff 	bic	r3, r3, #65280	; 0xff00
     148:	e3a010df 	mov	r1, #223	; 0xdf
     14c:	e121f001 	msr	CPSR_c, r1
     150:	e1a0d003 	mov	sp, r3
     154:	e38440c0 	orr	r4, r4, #192	; 0xc0
     158:	e121f004 	msr	CPSR_c, r4
     15c:	e243a801 	sub	sl, r3, #65536	; 0x10000
     160:	e12fff1e 	bx	lr

00000164 <_mainCRTStartup>:
     164:	e59f3088 	ldr	r3, [pc, #136]	; 1f4 <_mainCRTStartup+0x90>
     168:	e3530000 	cmp	r3, #0
     16c:	059f3074 	ldreq	r3, [pc, #116]	; 1e8 <_mainCRTStartup+0x84>
     170:	e1a0d003 	mov	sp, r3
     174:	ebffffd8 	bl	dc <_stack_init>
     178:	e3b01000 	movs	r1, #0
     17c:	e1a0b001 	mov	fp, r1
     180:	e1a07001 	mov	r7, r1
     184:	e59f006c 	ldr	r0, [pc, #108]	; 1f8 <_mainCRTStartup+0x94>
     188:	e59f206c 	ldr	r2, [pc, #108]	; 1fc <_mainCRTStartup+0x98>
     18c:	e0522000 	subs	r2, r2, r0
     190:	eb0002ca 	bl	cc0 <memset>
     194:	e59f3050 	ldr	r3, [pc, #80]	; 1ec <_mainCRTStartup+0x88>
     198:	e3530000 	cmp	r3, #0
     19c:	0a000001 	beq	1a8 <_mainCRTStartup+0x44>
     1a0:	e1a0e00f 	mov	lr, pc
     1a4:	e1a0f003 	mov	pc, r3
     1a8:	e59f3040 	ldr	r3, [pc, #64]	; 1f0 <_mainCRTStartup+0x8c>
     1ac:	e3530000 	cmp	r3, #0
     1b0:	0a000001 	beq	1bc <_mainCRTStartup+0x58>
     1b4:	e1a0e00f 	mov	lr, pc
     1b8:	e1a0f003 	mov	pc, r3
     1bc:	e3b00000 	movs	r0, #0
     1c0:	e3b01000 	movs	r1, #0
     1c4:	e1b04000 	movs	r4, r0
     1c8:	e1b05001 	movs	r5, r1
     1cc:	e59f002c 	ldr	r0, [pc, #44]	; 200 <_mainCRTStartup+0x9c>
     1d0:	eb000066 	bl	370 <atexit>
     1d4:	eb00008b 	bl	408 <__libc_init_array>
     1d8:	e1b00004 	movs	r0, r4
     1dc:	e1b01005 	movs	r1, r5
     1e0:	eb000007 	bl	204 <main>
     1e4:	eb000069 	bl	390 <exit>
     1e8:	00080000 	andeq	r0, r8, r0
	...
     1f4:	200008d8 	ldrdcs	r0, [r0], -r8
     1f8:	20000870 	andcs	r0, r0, r0, ror r8
     1fc:	200008d4 	ldrdcs	r0, [r0], -r4
     200:	000003c4 	andeq	r0, r0, r4, asr #7

00000204 <main>:
     204:	e92d4810 	push	{r4, fp, lr}
     208:	e28db008 	add	fp, sp, #8
     20c:	e24dd00c 	sub	sp, sp, #12
     210:	e3a0300c 	mov	r3, #12
     214:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     218:	e3a0302d 	mov	r3, #45	; 0x2d
     21c:	e1a02003 	mov	r2, r3
     220:	e1a03002 	mov	r3, r2
     224:	e1a03103 	lsl	r3, r3, #2
     228:	e0833002 	add	r3, r3, r2
     22c:	e1a03083 	lsl	r3, r3, #1
     230:	e1a00003 	mov	r0, r3
     234:	eb000095 	bl	490 <malloc>
     238:	e1a03000 	mov	r3, r0
     23c:	e50b3010 	str	r3, [fp, #-16]
     240:	e51b3010 	ldr	r3, [fp, #-16]
     244:	e3530000 	cmp	r3, #0
     248:	1a000001 	bne	254 <main+0x50>
     24c:	e3e03000 	mvn	r3, #0
     250:	ea00000d 	b	28c <main+0x88>
     254:	e3a04000 	mov	r4, #0
     258:	ea000007 	b	27c <main+0x78>
     25c:	e51b0010 	ldr	r0, [fp, #-16]
     260:	eb00000e 	bl	2a0 <func>
     264:	e1a03000 	mov	r3, r0
     268:	e59f202c 	ldr	r2, [pc, #44]	; 29c <main+0x98>
     26c:	e5823000 	str	r3, [r2]
     270:	e51b3014 	ldr	r3, [fp, #-20]	; 0xffffffec
     274:	e2833001 	add	r3, r3, #1
     278:	e50b3014 	str	r3, [fp, #-20]	; 0xffffffec
     27c:	e3a0302d 	mov	r3, #45	; 0x2d
     280:	e1540003 	cmp	r4, r3
     284:	bafffff4 	blt	25c <main+0x58>
     288:	e3a03000 	mov	r3, #0
     28c:	e1a00003 	mov	r0, r3
     290:	e24bd008 	sub	sp, fp, #8
     294:	e8bd4810 	pop	{r4, fp, lr}
     298:	e12fff1e 	bx	lr
     29c:	2000088c 	andcs	r0, r0, ip, lsl #17

000002a0 <func>:
     2a0:	e52db004 	push	{fp}		; (str fp, [sp, #-4]!)
     2a4:	e28db000 	add	fp, sp, #0
     2a8:	e24dd014 	sub	sp, sp, #20
     2ac:	e50b0010 	str	r0, [fp, #-16]
     2b0:	e3a03000 	mov	r3, #0
     2b4:	e50b3008 	str	r3, [fp, #-8]
     2b8:	e59f30a4 	ldr	r3, [pc, #164]	; 364 <func+0xc4>
     2bc:	e50b300c 	str	r3, [fp, #-12]
     2c0:	e59f30a0 	ldr	r3, [pc, #160]	; 368 <func+0xc8>
     2c4:	e5933000 	ldr	r3, [r3]
     2c8:	e2833001 	add	r3, r3, #1
     2cc:	e59f2094 	ldr	r2, [pc, #148]	; 368 <func+0xc8>
     2d0:	e5823000 	str	r3, [r2]
     2d4:	e59f308c 	ldr	r3, [pc, #140]	; 368 <func+0xc8>
     2d8:	e5933000 	ldr	r3, [r3]
     2dc:	e1a03103 	lsl	r3, r3, #2
     2e0:	e59f2084 	ldr	r2, [pc, #132]	; 36c <func+0xcc>
     2e4:	e0833002 	add	r3, r3, r2
     2e8:	e51b2008 	ldr	r2, [fp, #-8]
     2ec:	e5832000 	str	r2, [r3]
     2f0:	e3a03000 	mov	r3, #0
     2f4:	e50b3008 	str	r3, [fp, #-8]
     2f8:	ea000010 	b	340 <func+0xa0>
     2fc:	e51b200c 	ldr	r2, [fp, #-12]
     300:	e51b3008 	ldr	r3, [fp, #-8]
     304:	e0823003 	add	r3, r2, r3
     308:	e5d33000 	ldrb	r3, [r3]
     30c:	e20330ff 	and	r3, r3, #255	; 0xff
     310:	e1a01003 	mov	r1, r3
     314:	e59f2050 	ldr	r2, [pc, #80]	; 36c <func+0xcc>
     318:	e51b3008 	ldr	r3, [fp, #-8]
     31c:	e7821103 	str	r1, [r2, r3, lsl #2]
     320:	e59f3040 	ldr	r3, [pc, #64]	; 368 <func+0xc8>
     324:	e5933000 	ldr	r3, [r3]
     328:	e2833001 	add	r3, r3, #1
     32c:	e59f2034 	ldr	r2, [pc, #52]	; 368 <func+0xc8>
     330:	e5823000 	str	r3, [r2]
     334:	e51b3008 	ldr	r3, [fp, #-8]
     338:	e2833001 	add	r3, r3, #1
     33c:	e50b3008 	str	r3, [fp, #-8]
     340:	e51b3008 	ldr	r3, [fp, #-8]
     344:	e3530005 	cmp	r3, #5
     348:	9affffeb 	bls	2fc <func+0x5c>
     34c:	e59f3014 	ldr	r3, [pc, #20]	; 368 <func+0xc8>
     350:	e5933000 	ldr	r3, [r3]
     354:	e1a00003 	mov	r0, r3
     358:	e28bd000 	add	sp, fp, #0
     35c:	e49db004 	pop	{fp}		; (ldr fp, [sp], #4)
     360:	e12fff1e 	bx	lr
     364:	000015ec 	andeq	r1, r0, ip, ror #11
     368:	20000894 	mulcs	r0, r4, r8
     36c:	20000008 	andcs	r0, r0, r8

00000370 <atexit>:
     370:	e3a03000 	mov	r3, #0
     374:	e92d4010 	push	{r4, lr}
     378:	e1a01000 	mov	r1, r0
     37c:	e1a02003 	mov	r2, r3
     380:	e1a00003 	mov	r0, r3
     384:	eb0002a7 	bl	e28 <__register_exitproc>
     388:	e8bd4010 	pop	{r4, lr}
     38c:	e12fff1e 	bx	lr

00000390 <exit>:
     390:	e92d4010 	push	{r4, lr}
     394:	e3a01000 	mov	r1, #0
     398:	e1a04000 	mov	r4, r0
     39c:	eb0002c4 	bl	eb4 <__call_exitprocs>
     3a0:	e59f3018 	ldr	r3, [pc, #24]	; 3c0 <exit+0x30>
     3a4:	e5930000 	ldr	r0, [r3]
     3a8:	e590303c 	ldr	r3, [r0, #60]	; 0x3c
     3ac:	e3530000 	cmp	r3, #0
     3b0:	11a0e00f 	movne	lr, pc
     3b4:	112fff13 	bxne	r3
     3b8:	e1a00004 	mov	r0, r4
     3bc:	eb000466 	bl	155c <_exit>
     3c0:	000015fc 	strdeq	r1, [r0], -ip

000003c4 <__libc_fini_array>:
     3c4:	e92d4070 	push	{r4, r5, r6, lr}
     3c8:	e59f5030 	ldr	r5, [pc, #48]	; 400 <__libc_fini_array+0x3c>
     3cc:	e59f4030 	ldr	r4, [pc, #48]	; 404 <__libc_fini_array+0x40>
     3d0:	e0454004 	sub	r4, r5, r4
     3d4:	e1b04144 	asrs	r4, r4, #2
     3d8:	0a000005 	beq	3f4 <__libc_fini_array+0x30>
     3dc:	e5353004 	ldr	r3, [r5, #-4]!
     3e0:	e2444001 	sub	r4, r4, #1
     3e4:	e1a0e00f 	mov	lr, pc
     3e8:	e12fff13 	bx	r3
     3ec:	e3540000 	cmp	r4, #0
     3f0:	1afffff9 	bne	3dc <__libc_fini_array+0x18>
     3f4:	eb00046b 	bl	15a8 <_fini>
     3f8:	e8bd4070 	pop	{r4, r5, r6, lr}
     3fc:	e12fff1e 	bx	lr
	...

00000408 <__libc_init_array>:
     408:	e92d4070 	push	{r4, r5, r6, lr}
     40c:	e59f606c 	ldr	r6, [pc, #108]	; 480 <__libc_init_array+0x78>
     410:	e59f506c 	ldr	r5, [pc, #108]	; 484 <__libc_init_array+0x7c>
     414:	e0466005 	sub	r6, r6, r5
     418:	e1b06146 	asrs	r6, r6, #2
     41c:	0a000007 	beq	440 <__libc_init_array+0x38>
     420:	e3a04000 	mov	r4, #0
     424:	e2455004 	sub	r5, r5, #4
     428:	e5b53004 	ldr	r3, [r5, #4]!
     42c:	e2844001 	add	r4, r4, #1
     430:	e1a0e00f 	mov	lr, pc
     434:	e12fff13 	bx	r3
     438:	e1560004 	cmp	r6, r4
     43c:	1afffff9 	bne	428 <__libc_init_array+0x20>
     440:	e59f6040 	ldr	r6, [pc, #64]	; 488 <__libc_init_array+0x80>
     444:	e59f5040 	ldr	r5, [pc, #64]	; 48c <__libc_init_array+0x84>
     448:	e0466005 	sub	r6, r6, r5
     44c:	eb00044f 	bl	1590 <_init>
     450:	e1b06146 	asrs	r6, r6, #2
     454:	0a000007 	beq	478 <__libc_init_array+0x70>
     458:	e3a04000 	mov	r4, #0
     45c:	e2455004 	sub	r5, r5, #4
     460:	e5b53004 	ldr	r3, [r5, #4]!
     464:	e2844001 	add	r4, r4, #1
     468:	e1a0e00f 	mov	lr, pc
     46c:	e12fff13 	bx	r3
     470:	e1560004 	cmp	r6, r4
     474:	1afffff9 	bne	460 <__libc_init_array+0x58>
     478:	e8bd4070 	pop	{r4, r5, r6, lr}
     47c:	e12fff1e 	bx	lr
	...
     488:	00001590 	muleq	r0, r0, r5
     48c:	00001588 	andeq	r1, r0, r8, lsl #11

00000490 <malloc>:
     490:	e92d4010 	push	{r4, lr}
     494:	e59f3010 	ldr	r3, [pc, #16]	; 4ac <malloc+0x1c>
     498:	e1a01000 	mov	r1, r0
     49c:	e5930000 	ldr	r0, [r3]
     4a0:	eb00000a 	bl	4d0 <_malloc_r>
     4a4:	e8bd4010 	pop	{r4, lr}
     4a8:	e12fff1e 	bx	lr
     4ac:	20000030 	andcs	r0, r0, r0, lsr r0

000004b0 <free>:
     4b0:	e92d4010 	push	{r4, lr}
     4b4:	e59f3010 	ldr	r3, [pc, #16]	; 4cc <free+0x1c>
     4b8:	e1a01000 	mov	r1, r0
     4bc:	e5930000 	ldr	r0, [r3]
     4c0:	eb000301 	bl	10cc <_free_r>
     4c4:	e8bd4010 	pop	{r4, lr}
     4c8:	e12fff1e 	bx	lr
     4cc:	20000030 	andcs	r0, r0, r0, lsr r0

000004d0 <_malloc_r>:
     4d0:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     4d4:	e281300b 	add	r3, r1, #11
     4d8:	e3530016 	cmp	r3, #22
     4dc:	e1a07000 	mov	r7, r0
     4e0:	e24dd00c 	sub	sp, sp, #12
     4e4:	8a00001c 	bhi	55c <_malloc_r+0x8c>
     4e8:	e3510010 	cmp	r1, #16
     4ec:	8a00003e 	bhi	5ec <_malloc_r+0x11c>
     4f0:	eb000239 	bl	ddc <__malloc_lock>
     4f4:	e3a05010 	mov	r5, #16
     4f8:	e3a02018 	mov	r2, #24
     4fc:	e3a0c002 	mov	ip, #2
     500:	e59f87a8 	ldr	r8, [pc, #1960]	; cb0 <_malloc_r+0x7e0>
     504:	e0882002 	add	r2, r8, r2
     508:	e5924004 	ldr	r4, [r2, #4]
     50c:	e2423008 	sub	r3, r2, #8
     510:	e1540003 	cmp	r4, r3
     514:	0a00003b 	beq	608 <_malloc_r+0x138>
     518:	e5943004 	ldr	r3, [r4, #4]
     51c:	e594200c 	ldr	r2, [r4, #12]
     520:	e5941008 	ldr	r1, [r4, #8]
     524:	e3c33003 	bic	r3, r3, #3
     528:	e0843003 	add	r3, r4, r3
     52c:	e581200c 	str	r2, [r1, #12]
     530:	e5821008 	str	r1, [r2, #8]
     534:	e5932004 	ldr	r2, [r3, #4]
     538:	e3822001 	orr	r2, r2, #1
     53c:	e1a00007 	mov	r0, r7
     540:	e5832004 	str	r2, [r3, #4]
     544:	e2844008 	add	r4, r4, #8
     548:	eb000224 	bl	de0 <__malloc_unlock>
     54c:	e1a00004 	mov	r0, r4
     550:	e28dd00c 	add	sp, sp, #12
     554:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     558:	e12fff1e 	bx	lr
     55c:	e3c35007 	bic	r5, r3, #7
     560:	e1510005 	cmp	r1, r5
     564:	93a01000 	movls	r1, #0
     568:	83a01001 	movhi	r1, #1
     56c:	e1913fa3 	orrs	r3, r1, r3, lsr #31
     570:	1a00001d 	bne	5ec <_malloc_r+0x11c>
     574:	eb000218 	bl	ddc <__malloc_lock>
     578:	e3550f7e 	cmp	r5, #504	; 0x1f8
     57c:	3a00013b 	bcc	a70 <_malloc_r+0x5a0>
     580:	e1b034a5 	lsrs	r3, r5, #9
     584:	0a0000ae 	beq	844 <_malloc_r+0x374>
     588:	e3530004 	cmp	r3, #4
     58c:	8a00011d 	bhi	a08 <_malloc_r+0x538>
     590:	e1a03325 	lsr	r3, r5, #6
     594:	e283c039 	add	ip, r3, #57	; 0x39
     598:	e283e038 	add	lr, r3, #56	; 0x38
     59c:	e1a0018c 	lsl	r0, ip, #3
     5a0:	e59f8708 	ldr	r8, [pc, #1800]	; cb0 <_malloc_r+0x7e0>
     5a4:	e0880000 	add	r0, r8, r0
     5a8:	e5903004 	ldr	r3, [r0, #4]
     5ac:	e2400008 	sub	r0, r0, #8
     5b0:	e1500003 	cmp	r0, r3
     5b4:	1a000005 	bne	5d0 <_malloc_r+0x100>
     5b8:	ea000016 	b	618 <_malloc_r+0x148>
     5bc:	e3510000 	cmp	r1, #0
     5c0:	aa0000e6 	bge	960 <_malloc_r+0x490>
     5c4:	e593300c 	ldr	r3, [r3, #12]
     5c8:	e1500003 	cmp	r0, r3
     5cc:	0a000011 	beq	618 <_malloc_r+0x148>
     5d0:	e5932004 	ldr	r2, [r3, #4]
     5d4:	e3c22003 	bic	r2, r2, #3
     5d8:	e0421005 	sub	r1, r2, r5
     5dc:	e351000f 	cmp	r1, #15
     5e0:	dafffff5 	ble	5bc <_malloc_r+0xec>
     5e4:	e1a0c00e 	mov	ip, lr
     5e8:	ea00000a 	b	618 <_malloc_r+0x148>
     5ec:	e3a04000 	mov	r4, #0
     5f0:	e3a0300c 	mov	r3, #12
     5f4:	e1a00004 	mov	r0, r4
     5f8:	e5873000 	str	r3, [r7]
     5fc:	e28dd00c 	add	sp, sp, #12
     600:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     604:	e12fff1e 	bx	lr
     608:	e592400c 	ldr	r4, [r2, #12]
     60c:	e1520004 	cmp	r2, r4
     610:	028cc002 	addeq	ip, ip, #2
     614:	1affffbf 	bne	518 <_malloc_r+0x48>
     618:	e5984010 	ldr	r4, [r8, #16]
     61c:	e59fe690 	ldr	lr, [pc, #1680]	; cb4 <_malloc_r+0x7e4>
     620:	e154000e 	cmp	r4, lr
     624:	05986004 	ldreq	r6, [r8, #4]
     628:	0a000018 	beq	690 <_malloc_r+0x1c0>
     62c:	e5941004 	ldr	r1, [r4, #4]
     630:	e3c11003 	bic	r1, r1, #3
     634:	e0413005 	sub	r3, r1, r5
     638:	e353000f 	cmp	r3, #15
     63c:	ca00010e 	bgt	a7c <_malloc_r+0x5ac>
     640:	e3530000 	cmp	r3, #0
     644:	e588e014 	str	lr, [r8, #20]
     648:	e588e010 	str	lr, [r8, #16]
     64c:	aa0000ae 	bge	90c <_malloc_r+0x43c>
     650:	e3510c02 	cmp	r1, #512	; 0x200
     654:	2a0000d0 	bcs	99c <_malloc_r+0x4cc>
     658:	e3a02001 	mov	r2, #1
     65c:	e5986004 	ldr	r6, [r8, #4]
     660:	e1a031a1 	lsr	r3, r1, #3
     664:	e0833002 	add	r3, r3, r2
     668:	e1a012a1 	lsr	r1, r1, #5
     66c:	e1866112 	orr	r6, r6, r2, lsl r1
     670:	e7981183 	ldr	r1, [r8, r3, lsl #3]
     674:	e0882183 	add	r2, r8, r3, lsl #3
     678:	e2422008 	sub	r2, r2, #8
     67c:	e5841008 	str	r1, [r4, #8]
     680:	e584200c 	str	r2, [r4, #12]
     684:	e5886004 	str	r6, [r8, #4]
     688:	e7884183 	str	r4, [r8, r3, lsl #3]
     68c:	e581400c 	str	r4, [r1, #12]
     690:	e3a01001 	mov	r1, #1
     694:	e1a0314c 	asr	r3, ip, #2
     698:	e1a01311 	lsl	r1, r1, r3
     69c:	e1510006 	cmp	r1, r6
     6a0:	9a00006b 	bls	854 <_malloc_r+0x384>
     6a4:	e5984008 	ldr	r4, [r8, #8]
     6a8:	e5946004 	ldr	r6, [r4, #4]
     6ac:	e3c66003 	bic	r6, r6, #3
     6b0:	e1550006 	cmp	r5, r6
     6b4:	93a02000 	movls	r2, #0
     6b8:	83a02001 	movhi	r2, #1
     6bc:	e0463005 	sub	r3, r6, r5
     6c0:	e353000f 	cmp	r3, #15
     6c4:	d3822001 	orrle	r2, r2, #1
     6c8:	e3520000 	cmp	r2, #0
     6cc:	0a000096 	beq	92c <_malloc_r+0x45c>
     6d0:	e5983408 	ldr	r3, [r8, #1032]	; 0x408
     6d4:	e59fa5dc 	ldr	sl, [pc, #1500]	; cb8 <_malloc_r+0x7e8>
     6d8:	e3730001 	cmn	r3, #1
     6dc:	e59a3000 	ldr	r3, [sl]
     6e0:	e0853003 	add	r3, r5, r3
     6e4:	12833a01 	addne	r3, r3, #4096	; 0x1000
     6e8:	1283300f 	addne	r3, r3, #15
     6ec:	13c39eff 	bicne	r9, r3, #4080	; 0xff0
     6f0:	02839010 	addeq	r9, r3, #16
     6f4:	13c9900f 	bicne	r9, r9, #15
     6f8:	e1a01009 	mov	r1, r9
     6fc:	e1a00007 	mov	r0, r7
     700:	eb0001b7 	bl	de4 <_sbrk_r>
     704:	e3700001 	cmn	r0, #1
     708:	e1a02000 	mov	r2, r0
     70c:	e084b006 	add	fp, r4, r6
     710:	0a000128 	beq	bb8 <_malloc_r+0x6e8>
     714:	e1540008 	cmp	r4, r8
     718:	115b0000 	cmpne	fp, r0
     71c:	8a000125 	bhi	bb8 <_malloc_r+0x6e8>
     720:	e59a1004 	ldr	r1, [sl, #4]
     724:	e15b0000 	cmp	fp, r0
     728:	e0891001 	add	r1, r9, r1
     72c:	e58a1004 	str	r1, [sl, #4]
     730:	0a000117 	beq	b94 <_malloc_r+0x6c4>
     734:	e5983408 	ldr	r3, [r8, #1032]	; 0x408
     738:	e3730001 	cmn	r3, #1
     73c:	1042b00b 	subne	fp, r2, fp
     740:	108b1001 	addne	r1, fp, r1
     744:	05882408 	streq	r2, [r8, #1032]	; 0x408
     748:	158a1004 	strne	r1, [sl, #4]
     74c:	e2123007 	ands	r3, r2, #7
     750:	1a0000e0 	bne	ad8 <_malloc_r+0x608>
     754:	e0821009 	add	r1, r2, r9
     758:	e2611000 	rsb	r1, r1, #0
     75c:	e1a0ba01 	lsl	fp, r1, #20
     760:	e1a0ba2b 	lsr	fp, fp, #20
     764:	e1a0100b 	mov	r1, fp
     768:	e1a00007 	mov	r0, r7
     76c:	e58d3004 	str	r3, [sp, #4]
     770:	e58d2000 	str	r2, [sp]
     774:	eb00019a 	bl	de4 <_sbrk_r>
     778:	e89d000c 	ldm	sp, {r2, r3}
     77c:	e3700001 	cmn	r0, #1
     780:	01a0b003 	moveq	fp, r3
     784:	0a000001 	beq	790 <_malloc_r+0x2c0>
     788:	e0403002 	sub	r3, r0, r2
     78c:	e083900b 	add	r9, r3, fp
     790:	e59a1004 	ldr	r1, [sl, #4]
     794:	e3893001 	orr	r3, r9, #1
     798:	e08b1001 	add	r1, fp, r1
     79c:	e1540008 	cmp	r4, r8
     7a0:	e5882008 	str	r2, [r8, #8]
     7a4:	e58a1004 	str	r1, [sl, #4]
     7a8:	e5823004 	str	r3, [r2, #4]
     7ac:	0a000118 	beq	c14 <_malloc_r+0x744>
     7b0:	e356000f 	cmp	r6, #15
     7b4:	93a03001 	movls	r3, #1
     7b8:	95823004 	strls	r3, [r2, #4]
     7bc:	9a00001c 	bls	834 <_malloc_r+0x364>
     7c0:	e3a0c005 	mov	ip, #5
     7c4:	e5940004 	ldr	r0, [r4, #4]
     7c8:	e246300c 	sub	r3, r6, #12
     7cc:	e3c33007 	bic	r3, r3, #7
     7d0:	e2000001 	and	r0, r0, #1
     7d4:	e1800003 	orr	r0, r0, r3
     7d8:	e353000f 	cmp	r3, #15
     7dc:	e0843003 	add	r3, r4, r3
     7e0:	e5840004 	str	r0, [r4, #4]
     7e4:	e583c004 	str	ip, [r3, #4]
     7e8:	e583c008 	str	ip, [r3, #8]
     7ec:	8a000119 	bhi	c58 <_malloc_r+0x788>
     7f0:	e1a04002 	mov	r4, r2
     7f4:	e5923004 	ldr	r3, [r2, #4]
     7f8:	e59a202c 	ldr	r2, [sl, #44]	; 0x2c
     7fc:	e1520001 	cmp	r2, r1
     800:	e59a2030 	ldr	r2, [sl, #48]	; 0x30
     804:	358a102c 	strcc	r1, [sl, #44]	; 0x2c
     808:	e1520001 	cmp	r2, r1
     80c:	358a1030 	strcc	r1, [sl, #48]	; 0x30
     810:	e3c39003 	bic	r9, r3, #3
     814:	e0493005 	sub	r3, r9, r5
     818:	e353000f 	cmp	r3, #15
     81c:	c3a02000 	movgt	r2, #0
     820:	d3a02001 	movle	r2, #1
     824:	e1550009 	cmp	r5, r9
     828:	83822001 	orrhi	r2, r2, #1
     82c:	e3520000 	cmp	r2, #0
     830:	0a00003d 	beq	92c <_malloc_r+0x45c>
     834:	e1a00007 	mov	r0, r7
     838:	eb000168 	bl	de0 <__malloc_unlock>
     83c:	e3a04000 	mov	r4, #0
     840:	eaffff41 	b	54c <_malloc_r+0x7c>
     844:	e3a00c02 	mov	r0, #512	; 0x200
     848:	e3a0c040 	mov	ip, #64	; 0x40
     84c:	e3a0e03f 	mov	lr, #63	; 0x3f
     850:	eaffff52 	b	5a0 <_malloc_r+0xd0>
     854:	e1110006 	tst	r1, r6
     858:	1a000008 	bne	880 <_malloc_r+0x3b0>
     85c:	e1a01081 	lsl	r1, r1, #1
     860:	e3ccc003 	bic	ip, ip, #3
     864:	e1110006 	tst	r1, r6
     868:	e28cc004 	add	ip, ip, #4
     86c:	1a000003 	bne	880 <_malloc_r+0x3b0>
     870:	e1a01081 	lsl	r1, r1, #1
     874:	e1110006 	tst	r1, r6
     878:	e28cc004 	add	ip, ip, #4
     87c:	0afffffb 	beq	870 <_malloc_r+0x3a0>
     880:	e088918c 	add	r9, r8, ip, lsl #3
     884:	e1a00009 	mov	r0, r9
     888:	e1a0400c 	mov	r4, ip
     88c:	e590600c 	ldr	r6, [r0, #12]
     890:	e1500006 	cmp	r0, r6
     894:	1a000005 	bne	8b0 <_malloc_r+0x3e0>
     898:	ea000063 	b	a2c <_malloc_r+0x55c>
     89c:	e3520000 	cmp	r2, #0
     8a0:	aa000066 	bge	a40 <_malloc_r+0x570>
     8a4:	e596600c 	ldr	r6, [r6, #12]
     8a8:	e1500006 	cmp	r0, r6
     8ac:	0a00005e 	beq	a2c <_malloc_r+0x55c>
     8b0:	e5963004 	ldr	r3, [r6, #4]
     8b4:	e3c33003 	bic	r3, r3, #3
     8b8:	e0432005 	sub	r2, r3, r5
     8bc:	e352000f 	cmp	r2, #15
     8c0:	dafffff5 	ble	89c <_malloc_r+0x3cc>
     8c4:	e2864008 	add	r4, r6, #8
     8c8:	e8941010 	ldm	r4, {r4, ip}
     8cc:	e0861005 	add	r1, r6, r5
     8d0:	e3855001 	orr	r5, r5, #1
     8d4:	e5865004 	str	r5, [r6, #4]
     8d8:	e584c00c 	str	ip, [r4, #12]
     8dc:	e58c4008 	str	r4, [ip, #8]
     8e0:	e382c001 	orr	ip, r2, #1
     8e4:	e5881014 	str	r1, [r8, #20]
     8e8:	e5881010 	str	r1, [r8, #16]
     8ec:	e1a00007 	mov	r0, r7
     8f0:	e581e00c 	str	lr, [r1, #12]
     8f4:	e581e008 	str	lr, [r1, #8]
     8f8:	e581c004 	str	ip, [r1, #4]
     8fc:	e7862003 	str	r2, [r6, r3]
     900:	eb000136 	bl	de0 <__malloc_unlock>
     904:	e2864008 	add	r4, r6, #8
     908:	eaffff0f 	b	54c <_malloc_r+0x7c>
     90c:	e0841001 	add	r1, r4, r1
     910:	e5913004 	ldr	r3, [r1, #4]
     914:	e3833001 	orr	r3, r3, #1
     918:	e1a00007 	mov	r0, r7
     91c:	e5813004 	str	r3, [r1, #4]
     920:	eb00012e 	bl	de0 <__malloc_unlock>
     924:	e2844008 	add	r4, r4, #8
     928:	eaffff07 	b	54c <_malloc_r+0x7c>
     92c:	e0842005 	add	r2, r4, r5
     930:	e3833001 	orr	r3, r3, #1
     934:	e3855001 	orr	r5, r5, #1
     938:	e5845004 	str	r5, [r4, #4]
     93c:	e1a00007 	mov	r0, r7
     940:	e5882008 	str	r2, [r8, #8]
     944:	e2844008 	add	r4, r4, #8
     948:	e5823004 	str	r3, [r2, #4]
     94c:	eb000123 	bl	de0 <__malloc_unlock>
     950:	e1a00004 	mov	r0, r4
     954:	e28dd00c 	add	sp, sp, #12
     958:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     95c:	e12fff1e 	bx	lr
     960:	e593100c 	ldr	r1, [r3, #12]
     964:	e593c008 	ldr	ip, [r3, #8]
     968:	e0832002 	add	r2, r3, r2
     96c:	e58c100c 	str	r1, [ip, #12]
     970:	e581c008 	str	ip, [r1, #8]
     974:	e5921004 	ldr	r1, [r2, #4]
     978:	e2834008 	add	r4, r3, #8
     97c:	e3813001 	orr	r3, r1, #1
     980:	e1a00007 	mov	r0, r7
     984:	e5823004 	str	r3, [r2, #4]
     988:	eb000114 	bl	de0 <__malloc_unlock>
     98c:	e1a00004 	mov	r0, r4
     990:	e28dd00c 	add	sp, sp, #12
     994:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     998:	e12fff1e 	bx	lr
     99c:	e3510c0a 	cmp	r1, #2560	; 0xa00
     9a0:	e1a034a1 	lsr	r3, r1, #9
     9a4:	3a000042 	bcc	ab4 <_malloc_r+0x5e4>
     9a8:	e3530014 	cmp	r3, #20
     9ac:	8a00008a 	bhi	bdc <_malloc_r+0x70c>
     9b0:	e283205c 	add	r2, r3, #92	; 0x5c
     9b4:	e1a02182 	lsl	r2, r2, #3
     9b8:	e283305b 	add	r3, r3, #91	; 0x5b
     9bc:	e7980002 	ldr	r0, [r8, r2]
     9c0:	e0882002 	add	r2, r8, r2
     9c4:	e2422008 	sub	r2, r2, #8
     9c8:	e1520000 	cmp	r2, r0
     9cc:	0a00007c 	beq	bc4 <_malloc_r+0x6f4>
     9d0:	e5903004 	ldr	r3, [r0, #4]
     9d4:	e3c33003 	bic	r3, r3, #3
     9d8:	e1530001 	cmp	r3, r1
     9dc:	9a000002 	bls	9ec <_malloc_r+0x51c>
     9e0:	e5900008 	ldr	r0, [r0, #8]
     9e4:	e1520000 	cmp	r2, r0
     9e8:	1afffff8 	bne	9d0 <_malloc_r+0x500>
     9ec:	e590200c 	ldr	r2, [r0, #12]
     9f0:	e5986004 	ldr	r6, [r8, #4]
     9f4:	e584200c 	str	r2, [r4, #12]
     9f8:	e5840008 	str	r0, [r4, #8]
     9fc:	e5824008 	str	r4, [r2, #8]
     a00:	e580400c 	str	r4, [r0, #12]
     a04:	eaffff21 	b	690 <_malloc_r+0x1c0>
     a08:	e3530014 	cmp	r3, #20
     a0c:	9a00002d 	bls	ac8 <_malloc_r+0x5f8>
     a10:	e3530054 	cmp	r3, #84	; 0x54
     a14:	8a000077 	bhi	bf8 <_malloc_r+0x728>
     a18:	e1a03625 	lsr	r3, r5, #12
     a1c:	e283c06f 	add	ip, r3, #111	; 0x6f
     a20:	e283e06e 	add	lr, r3, #110	; 0x6e
     a24:	e1a0018c 	lsl	r0, ip, #3
     a28:	eafffedc 	b	5a0 <_malloc_r+0xd0>
     a2c:	e2844001 	add	r4, r4, #1
     a30:	e3140003 	tst	r4, #3
     a34:	e2800008 	add	r0, r0, #8
     a38:	1affff93 	bne	88c <_malloc_r+0x3bc>
     a3c:	ea00003f 	b	b40 <_malloc_r+0x670>
     a40:	e1a04006 	mov	r4, r6
     a44:	e0863003 	add	r3, r6, r3
     a48:	e5932004 	ldr	r2, [r3, #4]
     a4c:	e3822001 	orr	r2, r2, #1
     a50:	e596100c 	ldr	r1, [r6, #12]
     a54:	e5832004 	str	r2, [r3, #4]
     a58:	e5b43008 	ldr	r3, [r4, #8]!
     a5c:	e1a00007 	mov	r0, r7
     a60:	e583100c 	str	r1, [r3, #12]
     a64:	e5813008 	str	r3, [r1, #8]
     a68:	eb0000dc 	bl	de0 <__malloc_unlock>
     a6c:	eafffeb6 	b	54c <_malloc_r+0x7c>
     a70:	e1a0c1a5 	lsr	ip, r5, #3
     a74:	e2852008 	add	r2, r5, #8
     a78:	eafffea0 	b	500 <_malloc_r+0x30>
     a7c:	e0842005 	add	r2, r4, r5
     a80:	e383c001 	orr	ip, r3, #1
     a84:	e3855001 	orr	r5, r5, #1
     a88:	e5845004 	str	r5, [r4, #4]
     a8c:	e1a00007 	mov	r0, r7
     a90:	e5882014 	str	r2, [r8, #20]
     a94:	e5882010 	str	r2, [r8, #16]
     a98:	e582e00c 	str	lr, [r2, #12]
     a9c:	e582e008 	str	lr, [r2, #8]
     aa0:	e582c004 	str	ip, [r2, #4]
     aa4:	e7843001 	str	r3, [r4, r1]
     aa8:	eb0000cc 	bl	de0 <__malloc_unlock>
     aac:	e2844008 	add	r4, r4, #8
     ab0:	eafffea5 	b	54c <_malloc_r+0x7c>
     ab4:	e1a03321 	lsr	r3, r1, #6
     ab8:	e2832039 	add	r2, r3, #57	; 0x39
     abc:	e1a02182 	lsl	r2, r2, #3
     ac0:	e2833038 	add	r3, r3, #56	; 0x38
     ac4:	eaffffbc 	b	9bc <_malloc_r+0x4ec>
     ac8:	e283c05c 	add	ip, r3, #92	; 0x5c
     acc:	e283e05b 	add	lr, r3, #91	; 0x5b
     ad0:	e1a0018c 	lsl	r0, ip, #3
     ad4:	eafffeb1 	b	5a0 <_malloc_r+0xd0>
     ad8:	e2631008 	rsb	r1, r3, #8
     adc:	e0822001 	add	r2, r2, r1
     ae0:	e2631a01 	rsb	r1, r3, #4096	; 0x1000
     ae4:	e0829009 	add	r9, r2, r9
     ae8:	e2811008 	add	r1, r1, #8
     aec:	e0411009 	sub	r1, r1, r9
     af0:	e1a0ba01 	lsl	fp, r1, #20
     af4:	e1a0ba2b 	lsr	fp, fp, #20
     af8:	e1a0100b 	mov	r1, fp
     afc:	e1a00007 	mov	r0, r7
     b00:	e58d2004 	str	r2, [sp, #4]
     b04:	e58d3000 	str	r3, [sp]
     b08:	eb0000b5 	bl	de4 <_sbrk_r>
     b0c:	e3700001 	cmn	r0, #1
     b10:	e59d3000 	ldr	r3, [sp]
     b14:	e59d2004 	ldr	r2, [sp, #4]
     b18:	1affff1a 	bne	788 <_malloc_r+0x2b8>
     b1c:	e2433008 	sub	r3, r3, #8
     b20:	e0899003 	add	r9, r9, r3
     b24:	e3a0b000 	mov	fp, #0
     b28:	e0499002 	sub	r9, r9, r2
     b2c:	eaffff17 	b	790 <_malloc_r+0x2c0>
     b30:	e4193008 	ldr	r3, [r9], #-8
     b34:	e1530009 	cmp	r3, r9
     b38:	e24cc001 	sub	ip, ip, #1
     b3c:	1a000059 	bne	ca8 <_malloc_r+0x7d8>
     b40:	e31c0003 	tst	ip, #3
     b44:	1afffff9 	bne	b30 <_malloc_r+0x660>
     b48:	e5983004 	ldr	r3, [r8, #4]
     b4c:	e1c33001 	bic	r3, r3, r1
     b50:	e5883004 	str	r3, [r8, #4]
     b54:	e1b01081 	lsls	r1, r1, #1
     b58:	13a02001 	movne	r2, #1
     b5c:	03a02000 	moveq	r2, #0
     b60:	e1510003 	cmp	r1, r3
     b64:	83a02000 	movhi	r2, #0
     b68:	92022001 	andls	r2, r2, #1
     b6c:	e3520000 	cmp	r2, #0
     b70:	0afffecb 	beq	6a4 <_malloc_r+0x1d4>
     b74:	e1110003 	tst	r1, r3
     b78:	1a000003 	bne	b8c <_malloc_r+0x6bc>
     b7c:	e1a01081 	lsl	r1, r1, #1
     b80:	e1110003 	tst	r1, r3
     b84:	e2844004 	add	r4, r4, #4
     b88:	0afffffb 	beq	b7c <_malloc_r+0x6ac>
     b8c:	e1a0c004 	mov	ip, r4
     b90:	eaffff3a 	b	880 <_malloc_r+0x3b0>
     b94:	e1a03a0b 	lsl	r3, fp, #20
     b98:	e1a03a23 	lsr	r3, r3, #20
     b9c:	e3530000 	cmp	r3, #0
     ba0:	1afffee3 	bne	734 <_malloc_r+0x264>
     ba4:	e5984008 	ldr	r4, [r8, #8]
     ba8:	e0863009 	add	r3, r6, r9
     bac:	e3833001 	orr	r3, r3, #1
     bb0:	e5843004 	str	r3, [r4, #4]
     bb4:	eaffff0f 	b	7f8 <_malloc_r+0x328>
     bb8:	e5984008 	ldr	r4, [r8, #8]
     bbc:	e5943004 	ldr	r3, [r4, #4]
     bc0:	eaffff12 	b	810 <_malloc_r+0x340>
     bc4:	e3a01001 	mov	r1, #1
     bc8:	e5986004 	ldr	r6, [r8, #4]
     bcc:	e1a03143 	asr	r3, r3, #2
     bd0:	e1866311 	orr	r6, r6, r1, lsl r3
     bd4:	e5886004 	str	r6, [r8, #4]
     bd8:	eaffff85 	b	9f4 <_malloc_r+0x524>
     bdc:	e3530054 	cmp	r3, #84	; 0x54
     be0:	8a00000d 	bhi	c1c <_malloc_r+0x74c>
     be4:	e1a03621 	lsr	r3, r1, #12
     be8:	e283206f 	add	r2, r3, #111	; 0x6f
     bec:	e1a02182 	lsl	r2, r2, #3
     bf0:	e283306e 	add	r3, r3, #110	; 0x6e
     bf4:	eaffff70 	b	9bc <_malloc_r+0x4ec>
     bf8:	e3530f55 	cmp	r3, #340	; 0x154
     bfc:	8a00000d 	bhi	c38 <_malloc_r+0x768>
     c00:	e1a037a5 	lsr	r3, r5, #15
     c04:	e283c078 	add	ip, r3, #120	; 0x78
     c08:	e283e077 	add	lr, r3, #119	; 0x77
     c0c:	e1a0018c 	lsl	r0, ip, #3
     c10:	eafffe62 	b	5a0 <_malloc_r+0xd0>
     c14:	e1a04002 	mov	r4, r2
     c18:	eafffef6 	b	7f8 <_malloc_r+0x328>
     c1c:	e3530f55 	cmp	r3, #340	; 0x154
     c20:	8a000013 	bhi	c74 <_malloc_r+0x7a4>
     c24:	e1a037a1 	lsr	r3, r1, #15
     c28:	e2832078 	add	r2, r3, #120	; 0x78
     c2c:	e1a02182 	lsl	r2, r2, #3
     c30:	e2833077 	add	r3, r3, #119	; 0x77
     c34:	eaffff60 	b	9bc <_malloc_r+0x4ec>
     c38:	e59f207c 	ldr	r2, [pc, #124]	; cbc <_malloc_r+0x7ec>
     c3c:	e1530002 	cmp	r3, r2
     c40:	8a000014 	bhi	c98 <_malloc_r+0x7c8>
     c44:	e1a03925 	lsr	r3, r5, #18
     c48:	e283c07d 	add	ip, r3, #125	; 0x7d
     c4c:	e283e07c 	add	lr, r3, #124	; 0x7c
     c50:	e1a0018c 	lsl	r0, ip, #3
     c54:	eafffe51 	b	5a0 <_malloc_r+0xd0>
     c58:	e2841008 	add	r1, r4, #8
     c5c:	e1a00007 	mov	r0, r7
     c60:	eb000119 	bl	10cc <_free_r>
     c64:	e5984008 	ldr	r4, [r8, #8]
     c68:	e59a1004 	ldr	r1, [sl, #4]
     c6c:	e5943004 	ldr	r3, [r4, #4]
     c70:	eafffee0 	b	7f8 <_malloc_r+0x328>
     c74:	e59f2040 	ldr	r2, [pc, #64]	; cbc <_malloc_r+0x7ec>
     c78:	e1530002 	cmp	r3, r2
     c7c:	91a03921 	lsrls	r3, r1, #18
     c80:	9283207d 	addls	r2, r3, #125	; 0x7d
     c84:	83a02ffe 	movhi	r2, #1016	; 0x3f8
     c88:	83a0307e 	movhi	r3, #126	; 0x7e
     c8c:	9283307c 	addls	r3, r3, #124	; 0x7c
     c90:	91a02182 	lslls	r2, r2, #3
     c94:	eaffff48 	b	9bc <_malloc_r+0x4ec>
     c98:	e3a00ffe 	mov	r0, #1016	; 0x3f8
     c9c:	e3a0c07f 	mov	ip, #127	; 0x7f
     ca0:	e3a0e07e 	mov	lr, #126	; 0x7e
     ca4:	eafffe3d 	b	5a0 <_malloc_r+0xd0>
     ca8:	e5983004 	ldr	r3, [r8, #4]
     cac:	eaffffa8 	b	b54 <_malloc_r+0x684>
     cb0:	20000460 	andcs	r0, r0, r0, ror #8
     cb4:	20000468 	andcs	r0, r0, r8, ror #8
     cb8:	20000898 	mulcs	r0, r8, r8
     cbc:	00000554 	andeq	r0, r0, r4, asr r5

00000cc0 <memset>:
     cc0:	e3100003 	tst	r0, #3
     cc4:	0a000040 	beq	dcc <memset+0x10c>
     cc8:	e3520000 	cmp	r2, #0
     ccc:	e2422001 	sub	r2, r2, #1
     cd0:	012fff1e 	bxeq	lr
     cd4:	e1a03000 	mov	r3, r0
     cd8:	e201c0ff 	and	ip, r1, #255	; 0xff
     cdc:	ea000002 	b	cec <memset+0x2c>
     ce0:	e2422001 	sub	r2, r2, #1
     ce4:	e3720001 	cmn	r2, #1
     ce8:	012fff1e 	bxeq	lr
     cec:	e4c3c001 	strb	ip, [r3], #1
     cf0:	e3130003 	tst	r3, #3
     cf4:	1afffff9 	bne	ce0 <memset+0x20>
     cf8:	e3520003 	cmp	r2, #3
     cfc:	9a000028 	bls	da4 <memset+0xe4>
     d00:	e92d4030 	push	{r4, r5, lr}
     d04:	e201e0ff 	and	lr, r1, #255	; 0xff
     d08:	e18ee40e 	orr	lr, lr, lr, lsl #8
     d0c:	e352000f 	cmp	r2, #15
     d10:	e18ee80e 	orr	lr, lr, lr, lsl #16
     d14:	9a00002e 	bls	dd4 <memset+0x114>
     d18:	e242c010 	sub	ip, r2, #16
     d1c:	e3cc400f 	bic	r4, ip, #15
     d20:	e2835020 	add	r5, r3, #32
     d24:	e0855004 	add	r5, r5, r4
     d28:	e1a0422c 	lsr	r4, ip, #4
     d2c:	e283c010 	add	ip, r3, #16
     d30:	e50ce010 	str	lr, [ip, #-16]
     d34:	e50ce00c 	str	lr, [ip, #-12]
     d38:	e50ce008 	str	lr, [ip, #-8]
     d3c:	e50ce004 	str	lr, [ip, #-4]
     d40:	e28cc010 	add	ip, ip, #16
     d44:	e15c0005 	cmp	ip, r5
     d48:	1afffff8 	bne	d30 <memset+0x70>
     d4c:	e284c001 	add	ip, r4, #1
     d50:	e312000c 	tst	r2, #12
     d54:	e083c20c 	add	ip, r3, ip, lsl #4
     d58:	e202200f 	and	r2, r2, #15
     d5c:	0a000018 	beq	dc4 <memset+0x104>
     d60:	e2423004 	sub	r3, r2, #4
     d64:	e3c33003 	bic	r3, r3, #3
     d68:	e2833004 	add	r3, r3, #4
     d6c:	e08c3003 	add	r3, ip, r3
     d70:	e48ce004 	str	lr, [ip], #4
     d74:	e153000c 	cmp	r3, ip
     d78:	1afffffc 	bne	d70 <memset+0xb0>
     d7c:	e2022003 	and	r2, r2, #3
     d80:	e3520000 	cmp	r2, #0
     d84:	0a000004 	beq	d9c <memset+0xdc>
     d88:	e20110ff 	and	r1, r1, #255	; 0xff
     d8c:	e0832002 	add	r2, r3, r2
     d90:	e4c31001 	strb	r1, [r3], #1
     d94:	e1520003 	cmp	r2, r3
     d98:	1afffffc 	bne	d90 <memset+0xd0>
     d9c:	e8bd4030 	pop	{r4, r5, lr}
     da0:	e12fff1e 	bx	lr
     da4:	e3520000 	cmp	r2, #0
     da8:	012fff1e 	bxeq	lr
     dac:	e20110ff 	and	r1, r1, #255	; 0xff
     db0:	e0832002 	add	r2, r3, r2
     db4:	e4c31001 	strb	r1, [r3], #1
     db8:	e1520003 	cmp	r2, r3
     dbc:	1afffffc 	bne	db4 <memset+0xf4>
     dc0:	e12fff1e 	bx	lr
     dc4:	e1a0300c 	mov	r3, ip
     dc8:	eaffffec 	b	d80 <memset+0xc0>
     dcc:	e1a03000 	mov	r3, r0
     dd0:	eaffffc8 	b	cf8 <memset+0x38>
     dd4:	e1a0c003 	mov	ip, r3
     dd8:	eaffffe0 	b	d60 <memset+0xa0>

00000ddc <__malloc_lock>:
     ddc:	e12fff1e 	bx	lr

00000de0 <__malloc_unlock>:
     de0:	e12fff1e 	bx	lr

00000de4 <_sbrk_r>:
     de4:	e3a02000 	mov	r2, #0
     de8:	e92d4070 	push	{r4, r5, r6, lr}
     dec:	e59f5030 	ldr	r5, [pc, #48]	; e24 <_sbrk_r+0x40>
     df0:	e1a04000 	mov	r4, r0
     df4:	e1a00001 	mov	r0, r1
     df8:	e5852000 	str	r2, [r5]
     dfc:	eb0001cb 	bl	1530 <_sbrk>
     e00:	e3700001 	cmn	r0, #1
     e04:	0a000001 	beq	e10 <_sbrk_r+0x2c>
     e08:	e8bd4070 	pop	{r4, r5, r6, lr}
     e0c:	e12fff1e 	bx	lr
     e10:	e5953000 	ldr	r3, [r5]
     e14:	e3530000 	cmp	r3, #0
     e18:	15843000 	strne	r3, [r4]
     e1c:	e8bd4070 	pop	{r4, r5, r6, lr}
     e20:	e12fff1e 	bx	lr
     e24:	200008cc 	andcs	r0, r0, ip, asr #17

00000e28 <__register_exitproc>:
     e28:	e59fc080 	ldr	ip, [pc, #128]	; eb0 <__register_exitproc+0x88>
     e2c:	e92d4010 	push	{r4, lr}
     e30:	e59ce000 	ldr	lr, [ip]
     e34:	e59ec148 	ldr	ip, [lr, #328]	; 0x148
     e38:	e35c0000 	cmp	ip, #0
     e3c:	028ecf53 	addeq	ip, lr, #332	; 0x14c
     e40:	058ec148 	streq	ip, [lr, #328]	; 0x148
     e44:	e59ce004 	ldr	lr, [ip, #4]
     e48:	e35e001f 	cmp	lr, #31
     e4c:	ca000015 	bgt	ea8 <__register_exitproc+0x80>
     e50:	e3500000 	cmp	r0, #0
     e54:	1a000006 	bne	e74 <__register_exitproc+0x4c>
     e58:	e3a00000 	mov	r0, #0
     e5c:	e28e3001 	add	r3, lr, #1
     e60:	e28ee002 	add	lr, lr, #2
     e64:	e58c3004 	str	r3, [ip, #4]
     e68:	e78c110e 	str	r1, [ip, lr, lsl #2]
     e6c:	e8bd4010 	pop	{r4, lr}
     e70:	e12fff1e 	bx	lr
     e74:	e3500002 	cmp	r0, #2
     e78:	e3a00001 	mov	r0, #1
     e7c:	e08c410e 	add	r4, ip, lr, lsl #2
     e80:	e5842088 	str	r2, [r4, #136]	; 0x88
     e84:	e1a02e10 	lsl	r2, r0, lr
     e88:	e59c0188 	ldr	r0, [ip, #392]	; 0x188
     e8c:	e1800002 	orr	r0, r0, r2
     e90:	e58c0188 	str	r0, [ip, #392]	; 0x188
     e94:	e5843108 	str	r3, [r4, #264]	; 0x108
     e98:	059c318c 	ldreq	r3, [ip, #396]	; 0x18c
     e9c:	01832002 	orreq	r2, r3, r2
     ea0:	058c218c 	streq	r2, [ip, #396]	; 0x18c
     ea4:	eaffffeb 	b	e58 <__register_exitproc+0x30>
     ea8:	e3e00000 	mvn	r0, #0
     eac:	eaffffee 	b	e6c <__register_exitproc+0x44>
     eb0:	000015fc 	strdeq	r1, [r0], -ip

00000eb4 <__call_exitprocs>:
     eb4:	e59f310c 	ldr	r3, [pc, #268]	; fc8 <__call_exitprocs+0x114>
     eb8:	e92d4ff0 	push	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     ebc:	e5937000 	ldr	r7, [r3]
     ec0:	e5976148 	ldr	r6, [r7, #328]	; 0x148
     ec4:	e24dd00c 	sub	sp, sp, #12
     ec8:	e3560000 	cmp	r6, #0
     ecc:	e58d0004 	str	r0, [sp, #4]
     ed0:	0a000029 	beq	f7c <__call_exitprocs+0xc8>
     ed4:	e1a0b001 	mov	fp, r1
     ed8:	e3a08001 	mov	r8, #1
     edc:	e3a09000 	mov	r9, #0
     ee0:	e5964004 	ldr	r4, [r6, #4]
     ee4:	e2545001 	subs	r5, r4, #1
     ee8:	4a000023 	bmi	f7c <__call_exitprocs+0xc8>
     eec:	e2844001 	add	r4, r4, #1
     ef0:	e0864104 	add	r4, r6, r4, lsl #2
     ef4:	ea000003 	b	f08 <__call_exitprocs+0x54>
     ef8:	e2455001 	sub	r5, r5, #1
     efc:	e3750001 	cmn	r5, #1
     f00:	e2444004 	sub	r4, r4, #4
     f04:	0a00001c 	beq	f7c <__call_exitprocs+0xc8>
     f08:	e35b0000 	cmp	fp, #0
     f0c:	0a000002 	beq	f1c <__call_exitprocs+0x68>
     f10:	e5943100 	ldr	r3, [r4, #256]	; 0x100
     f14:	e153000b 	cmp	r3, fp
     f18:	1afffff6 	bne	ef8 <__call_exitprocs+0x44>
     f1c:	e5963004 	ldr	r3, [r6, #4]
     f20:	e5942000 	ldr	r2, [r4]
     f24:	e2433001 	sub	r3, r3, #1
     f28:	e1530005 	cmp	r3, r5
     f2c:	05865004 	streq	r5, [r6, #4]
     f30:	15849000 	strne	r9, [r4]
     f34:	e3520000 	cmp	r2, #0
     f38:	0affffee 	beq	ef8 <__call_exitprocs+0x44>
     f3c:	e5963188 	ldr	r3, [r6, #392]	; 0x188
     f40:	e1a01518 	lsl	r1, r8, r5
     f44:	e1110003 	tst	r1, r3
     f48:	e596a004 	ldr	sl, [r6, #4]
     f4c:	1a00000d 	bne	f88 <__call_exitprocs+0xd4>
     f50:	e1a0e00f 	mov	lr, pc
     f54:	e12fff12 	bx	r2
     f58:	e5962004 	ldr	r2, [r6, #4]
     f5c:	e152000a 	cmp	r2, sl
     f60:	1a000012 	bne	fb0 <__call_exitprocs+0xfc>
     f64:	e5973148 	ldr	r3, [r7, #328]	; 0x148
     f68:	e1530006 	cmp	r3, r6
     f6c:	0affffe1 	beq	ef8 <__call_exitprocs+0x44>
     f70:	e1a06003 	mov	r6, r3
     f74:	e3560000 	cmp	r6, #0
     f78:	1affffd8 	bne	ee0 <__call_exitprocs+0x2c>
     f7c:	e28dd00c 	add	sp, sp, #12
     f80:	e8bd4ff0 	pop	{r4, r5, r6, r7, r8, r9, sl, fp, lr}
     f84:	e12fff1e 	bx	lr
     f88:	e596018c 	ldr	r0, [r6, #396]	; 0x18c
     f8c:	e1110000 	tst	r1, r0
     f90:	1a000008 	bne	fb8 <__call_exitprocs+0x104>
     f94:	e5941080 	ldr	r1, [r4, #128]	; 0x80
     f98:	e59d0004 	ldr	r0, [sp, #4]
     f9c:	e1a0e00f 	mov	lr, pc
     fa0:	e12fff12 	bx	r2
     fa4:	e5962004 	ldr	r2, [r6, #4]
     fa8:	e152000a 	cmp	r2, sl
     fac:	0affffec 	beq	f64 <__call_exitprocs+0xb0>
     fb0:	e5976148 	ldr	r6, [r7, #328]	; 0x148
     fb4:	eaffffee 	b	f74 <__call_exitprocs+0xc0>
     fb8:	e5940080 	ldr	r0, [r4, #128]	; 0x80
     fbc:	e1a0e00f 	mov	lr, pc
     fc0:	e12fff12 	bx	r2
     fc4:	eaffffe3 	b	f58 <__call_exitprocs+0xa4>
     fc8:	000015fc 	strdeq	r1, [r0], -ip

00000fcc <_malloc_trim_r>:
     fcc:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
     fd0:	e1a04001 	mov	r4, r1
     fd4:	e59f70e4 	ldr	r7, [pc, #228]	; 10c0 <_malloc_trim_r+0xf4>
     fd8:	e1a06000 	mov	r6, r0
     fdc:	ebffff7e 	bl	ddc <__malloc_lock>
     fe0:	e5973008 	ldr	r3, [r7, #8]
     fe4:	e5935004 	ldr	r5, [r3, #4]
     fe8:	e2643efe 	rsb	r3, r4, #4064	; 0xfe0
     fec:	e3c55003 	bic	r5, r5, #3
     ff0:	e283300f 	add	r3, r3, #15
     ff4:	e0833005 	add	r3, r3, r5
     ff8:	e3c33eff 	bic	r3, r3, #4080	; 0xff0
     ffc:	e3c3300f 	bic	r3, r3, #15
    1000:	e2434a01 	sub	r4, r3, #4096	; 0x1000
    1004:	e3540a01 	cmp	r4, #4096	; 0x1000
    1008:	ba000006 	blt	1028 <_malloc_trim_r+0x5c>
    100c:	e3a01000 	mov	r1, #0
    1010:	e1a00006 	mov	r0, r6
    1014:	ebffff72 	bl	de4 <_sbrk_r>
    1018:	e5973008 	ldr	r3, [r7, #8]
    101c:	e0833005 	add	r3, r3, r5
    1020:	e1500003 	cmp	r0, r3
    1024:	0a000004 	beq	103c <_malloc_trim_r+0x70>
    1028:	e1a00006 	mov	r0, r6
    102c:	ebffff6b 	bl	de0 <__malloc_unlock>
    1030:	e3a00000 	mov	r0, #0
    1034:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    1038:	e12fff1e 	bx	lr
    103c:	e1a00006 	mov	r0, r6
    1040:	e2641000 	rsb	r1, r4, #0
    1044:	ebffff66 	bl	de4 <_sbrk_r>
    1048:	e3700001 	cmn	r0, #1
    104c:	0a00000c 	beq	1084 <_malloc_trim_r+0xb8>
    1050:	e5973008 	ldr	r3, [r7, #8]
    1054:	e59f2068 	ldr	r2, [pc, #104]	; 10c4 <_malloc_trim_r+0xf8>
    1058:	e0455004 	sub	r5, r5, r4
    105c:	e3855001 	orr	r5, r5, #1
    1060:	e5835004 	str	r5, [r3, #4]
    1064:	e5923000 	ldr	r3, [r2]
    1068:	e1a00006 	mov	r0, r6
    106c:	e0433004 	sub	r3, r3, r4
    1070:	e5823000 	str	r3, [r2]
    1074:	ebffff59 	bl	de0 <__malloc_unlock>
    1078:	e3a00001 	mov	r0, #1
    107c:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    1080:	e12fff1e 	bx	lr
    1084:	e3a01000 	mov	r1, #0
    1088:	e1a00006 	mov	r0, r6
    108c:	ebffff54 	bl	de4 <_sbrk_r>
    1090:	e5972008 	ldr	r2, [r7, #8]
    1094:	e0403002 	sub	r3, r0, r2
    1098:	e353000f 	cmp	r3, #15
    109c:	daffffe1 	ble	1028 <_malloc_trim_r+0x5c>
    10a0:	e3833001 	orr	r3, r3, #1
    10a4:	e5823004 	str	r3, [r2, #4]
    10a8:	e59f3018 	ldr	r3, [pc, #24]	; 10c8 <_malloc_trim_r+0xfc>
    10ac:	e5933000 	ldr	r3, [r3]
    10b0:	e59f100c 	ldr	r1, [pc, #12]	; 10c4 <_malloc_trim_r+0xf8>
    10b4:	e0400003 	sub	r0, r0, r3
    10b8:	e5810000 	str	r0, [r1]
    10bc:	eaffffd9 	b	1028 <_malloc_trim_r+0x5c>
    10c0:	20000460 	andcs	r0, r0, r0, ror #8
    10c4:	2000089c 	mulcs	r0, ip, r8
    10c8:	20000868 	andcs	r0, r0, r8, ror #16

000010cc <_free_r>:
    10cc:	e92d4070 	push	{r4, r5, r6, lr}
    10d0:	e2514000 	subs	r4, r1, #0
    10d4:	0a000031 	beq	11a0 <_free_r+0xd4>
    10d8:	e1a05000 	mov	r5, r0
    10dc:	ebffff3e 	bl	ddc <__malloc_lock>
    10e0:	e5140004 	ldr	r0, [r4, #-4]
    10e4:	e59f22bc 	ldr	r2, [pc, #700]	; 13a8 <_free_r+0x2dc>
    10e8:	e244c008 	sub	ip, r4, #8
    10ec:	e5923008 	ldr	r3, [r2, #8]
    10f0:	e3c01001 	bic	r1, r0, #1
    10f4:	e08ce001 	add	lr, ip, r1
    10f8:	e153000e 	cmp	r3, lr
    10fc:	e59e3004 	ldr	r3, [lr, #4]
    1100:	e3c33003 	bic	r3, r3, #3
    1104:	0a000065 	beq	12a0 <_free_r+0x1d4>
    1108:	e3100001 	tst	r0, #1
    110c:	e58e3004 	str	r3, [lr, #4]
    1110:	1a000024 	bne	11a8 <_free_r+0xdc>
    1114:	e5140008 	ldr	r0, [r4, #-8]
    1118:	e04cc000 	sub	ip, ip, r0
    111c:	e0811000 	add	r1, r1, r0
    1120:	e59c0008 	ldr	r0, [ip, #8]
    1124:	e2824008 	add	r4, r2, #8
    1128:	e1500004 	cmp	r0, r4
    112c:	0a00004b 	beq	1260 <_free_r+0x194>
    1130:	e08e6003 	add	r6, lr, r3
    1134:	e5966004 	ldr	r6, [r6, #4]
    1138:	e3160001 	tst	r6, #1
    113c:	e59c600c 	ldr	r6, [ip, #12]
    1140:	e580600c 	str	r6, [r0, #12]
    1144:	e5860008 	str	r0, [r6, #8]
    1148:	0a000073 	beq	131c <_free_r+0x250>
    114c:	e3813001 	orr	r3, r1, #1
    1150:	e58c3004 	str	r3, [ip, #4]
    1154:	e58e1000 	str	r1, [lr]
    1158:	e3510c02 	cmp	r1, #512	; 0x200
    115c:	2a000026 	bcs	11fc <_free_r+0x130>
    1160:	e3a0e001 	mov	lr, #1
    1164:	e5920004 	ldr	r0, [r2, #4]
    1168:	e1a031a1 	lsr	r3, r1, #3
    116c:	e1a012a1 	lsr	r1, r1, #5
    1170:	e2833001 	add	r3, r3, #1
    1174:	e180111e 	orr	r1, r0, lr, lsl r1
    1178:	e5821004 	str	r1, [r2, #4]
    117c:	e7920183 	ldr	r0, [r2, r3, lsl #3]
    1180:	e0821183 	add	r1, r2, r3, lsl #3
    1184:	e2411008 	sub	r1, r1, #8
    1188:	e58c100c 	str	r1, [ip, #12]
    118c:	e58c0008 	str	r0, [ip, #8]
    1190:	e782c183 	str	ip, [r2, r3, lsl #3]
    1194:	e580c00c 	str	ip, [r0, #12]
    1198:	e1a00005 	mov	r0, r5
    119c:	ebffff0f 	bl	de0 <__malloc_unlock>
    11a0:	e8bd4070 	pop	{r4, r5, r6, lr}
    11a4:	e12fff1e 	bx	lr
    11a8:	e08e0003 	add	r0, lr, r3
    11ac:	e5900004 	ldr	r0, [r0, #4]
    11b0:	e3100001 	tst	r0, #1
    11b4:	1a00000b 	bne	11e8 <_free_r+0x11c>
    11b8:	e0811003 	add	r1, r1, r3
    11bc:	e2824008 	add	r4, r2, #8
    11c0:	e59e3008 	ldr	r3, [lr, #8]
    11c4:	e1530004 	cmp	r3, r4
    11c8:	0a00005f 	beq	134c <_free_r+0x280>
    11cc:	e59e000c 	ldr	r0, [lr, #12]
    11d0:	e583000c 	str	r0, [r3, #12]
    11d4:	e5803008 	str	r3, [r0, #8]
    11d8:	e3813001 	orr	r3, r1, #1
    11dc:	e58c3004 	str	r3, [ip, #4]
    11e0:	e78c1001 	str	r1, [ip, r1]
    11e4:	eaffffdb 	b	1158 <_free_r+0x8c>
    11e8:	e3813001 	orr	r3, r1, #1
    11ec:	e3510c02 	cmp	r1, #512	; 0x200
    11f0:	e5043004 	str	r3, [r4, #-4]
    11f4:	e58e1000 	str	r1, [lr]
    11f8:	3affffd8 	bcc	1160 <_free_r+0x94>
    11fc:	e3510c0a 	cmp	r1, #2560	; 0xa00
    1200:	e1a034a1 	lsr	r3, r1, #9
    1204:	2a00003b 	bcs	12f8 <_free_r+0x22c>
    1208:	e1a03321 	lsr	r3, r1, #6
    120c:	e2830039 	add	r0, r3, #57	; 0x39
    1210:	e283e038 	add	lr, r3, #56	; 0x38
    1214:	e1a00180 	lsl	r0, r0, #3
    1218:	e7923000 	ldr	r3, [r2, r0]
    121c:	e0820000 	add	r0, r2, r0
    1220:	e2400008 	sub	r0, r0, #8
    1224:	e1500003 	cmp	r0, r3
    1228:	0a000041 	beq	1334 <_free_r+0x268>
    122c:	e5932004 	ldr	r2, [r3, #4]
    1230:	e3c22003 	bic	r2, r2, #3
    1234:	e1520001 	cmp	r2, r1
    1238:	9a000002 	bls	1248 <_free_r+0x17c>
    123c:	e5933008 	ldr	r3, [r3, #8]
    1240:	e1500003 	cmp	r0, r3
    1244:	1afffff8 	bne	122c <_free_r+0x160>
    1248:	e593000c 	ldr	r0, [r3, #12]
    124c:	e58c000c 	str	r0, [ip, #12]
    1250:	e58c3008 	str	r3, [ip, #8]
    1254:	e580c008 	str	ip, [r0, #8]
    1258:	e583c00c 	str	ip, [r3, #12]
    125c:	eaffffcd 	b	1198 <_free_r+0xcc>
    1260:	e08e2003 	add	r2, lr, r3
    1264:	e5922004 	ldr	r2, [r2, #4]
    1268:	e3120001 	tst	r2, #1
    126c:	13813001 	orrne	r3, r1, #1
    1270:	158c3004 	strne	r3, [ip, #4]
    1274:	158e1000 	strne	r1, [lr]
    1278:	1affffc6 	bne	1198 <_free_r+0xcc>
    127c:	e0833001 	add	r3, r3, r1
    1280:	e28e1008 	add	r1, lr, #8
    1284:	e8910006 	ldm	r1, {r1, r2}
    1288:	e581200c 	str	r2, [r1, #12]
    128c:	e5821008 	str	r1, [r2, #8]
    1290:	e3832001 	orr	r2, r3, #1
    1294:	e58c2004 	str	r2, [ip, #4]
    1298:	e78c3003 	str	r3, [ip, r3]
    129c:	eaffffbd 	b	1198 <_free_r+0xcc>
    12a0:	e3100001 	tst	r0, #1
    12a4:	e0813003 	add	r3, r1, r3
    12a8:	1a000006 	bne	12c8 <_free_r+0x1fc>
    12ac:	e5141008 	ldr	r1, [r4, #-8]
    12b0:	e04cc001 	sub	ip, ip, r1
    12b4:	e28c0008 	add	r0, ip, #8
    12b8:	e0833001 	add	r3, r3, r1
    12bc:	e8900003 	ldm	r0, {r0, r1}
    12c0:	e580100c 	str	r1, [r0, #12]
    12c4:	e5810008 	str	r0, [r1, #8]
    12c8:	e3831001 	orr	r1, r3, #1
    12cc:	e58c1004 	str	r1, [ip, #4]
    12d0:	e59f10d4 	ldr	r1, [pc, #212]	; 13ac <_free_r+0x2e0>
    12d4:	e582c008 	str	ip, [r2, #8]
    12d8:	e5912000 	ldr	r2, [r1]
    12dc:	e1520003 	cmp	r2, r3
    12e0:	8affffac 	bhi	1198 <_free_r+0xcc>
    12e4:	e59f30c4 	ldr	r3, [pc, #196]	; 13b0 <_free_r+0x2e4>
    12e8:	e1a00005 	mov	r0, r5
    12ec:	e5931000 	ldr	r1, [r3]
    12f0:	ebffff35 	bl	fcc <_malloc_trim_r>
    12f4:	eaffffa7 	b	1198 <_free_r+0xcc>
    12f8:	e3530014 	cmp	r3, #20
    12fc:	9a000008 	bls	1324 <_free_r+0x258>
    1300:	e3530054 	cmp	r3, #84	; 0x54
    1304:	8a000017 	bhi	1368 <_free_r+0x29c>
    1308:	e1a03621 	lsr	r3, r1, #12
    130c:	e283006f 	add	r0, r3, #111	; 0x6f
    1310:	e283e06e 	add	lr, r3, #110	; 0x6e
    1314:	e1a00180 	lsl	r0, r0, #3
    1318:	eaffffbe 	b	1218 <_free_r+0x14c>
    131c:	e0811003 	add	r1, r1, r3
    1320:	eaffffa6 	b	11c0 <_free_r+0xf4>
    1324:	e283005c 	add	r0, r3, #92	; 0x5c
    1328:	e283e05b 	add	lr, r3, #91	; 0x5b
    132c:	e1a00180 	lsl	r0, r0, #3
    1330:	eaffffb8 	b	1218 <_free_r+0x14c>
    1334:	e3a04001 	mov	r4, #1
    1338:	e5921004 	ldr	r1, [r2, #4]
    133c:	e1a0e14e 	asr	lr, lr, #2
    1340:	e181ee14 	orr	lr, r1, r4, lsl lr
    1344:	e582e004 	str	lr, [r2, #4]
    1348:	eaffffbf 	b	124c <_free_r+0x180>
    134c:	e3813001 	orr	r3, r1, #1
    1350:	e582c014 	str	ip, [r2, #20]
    1354:	e582c010 	str	ip, [r2, #16]
    1358:	e98c0018 	stmib	ip, {r3, r4}
    135c:	e58c400c 	str	r4, [ip, #12]
    1360:	e78c1001 	str	r1, [ip, r1]
    1364:	eaffff8b 	b	1198 <_free_r+0xcc>
    1368:	e3530f55 	cmp	r3, #340	; 0x154
    136c:	8a000004 	bhi	1384 <_free_r+0x2b8>
    1370:	e1a037a1 	lsr	r3, r1, #15
    1374:	e2830078 	add	r0, r3, #120	; 0x78
    1378:	e283e077 	add	lr, r3, #119	; 0x77
    137c:	e1a00180 	lsl	r0, r0, #3
    1380:	eaffffa4 	b	1218 <_free_r+0x14c>
    1384:	e59f0028 	ldr	r0, [pc, #40]	; 13b4 <_free_r+0x2e8>
    1388:	e1530000 	cmp	r3, r0
    138c:	91a03921 	lsrls	r3, r1, #18
    1390:	9283007d 	addls	r0, r3, #125	; 0x7d
    1394:	83a00ffe 	movhi	r0, #1016	; 0x3f8
    1398:	83a0e07e 	movhi	lr, #126	; 0x7e
    139c:	9283e07c 	addls	lr, r3, #124	; 0x7c
    13a0:	91a00180 	lslls	r0, r0, #3
    13a4:	eaffff9b 	b	1218 <_free_r+0x14c>
    13a8:	20000460 	andcs	r0, r0, r0, ror #8
    13ac:	2000086c 	andcs	r0, r0, ip, ror #16
    13b0:	20000898 	mulcs	r0, r8, r8
    13b4:	00000554 	andeq	r0, r0, r4, asr r5

000013b8 <cleanup_glue>:
    13b8:	e92d41f0 	push	{r4, r5, r6, r7, r8, lr}
    13bc:	e5916000 	ldr	r6, [r1]
    13c0:	e3560000 	cmp	r6, #0
    13c4:	e1a04001 	mov	r4, r1
    13c8:	e1a05000 	mov	r5, r0
    13cc:	0a000011 	beq	1418 <cleanup_glue+0x60>
    13d0:	e5967000 	ldr	r7, [r6]
    13d4:	e3570000 	cmp	r7, #0
    13d8:	0a00000b 	beq	140c <cleanup_glue+0x54>
    13dc:	e5978000 	ldr	r8, [r7]
    13e0:	e3580000 	cmp	r8, #0
    13e4:	0a000005 	beq	1400 <cleanup_glue+0x48>
    13e8:	e5981000 	ldr	r1, [r8]
    13ec:	e3510000 	cmp	r1, #0
    13f0:	1bfffff0 	blne	13b8 <cleanup_glue>
    13f4:	e1a01008 	mov	r1, r8
    13f8:	e1a00005 	mov	r0, r5
    13fc:	ebffff32 	bl	10cc <_free_r>
    1400:	e1a01007 	mov	r1, r7
    1404:	e1a00005 	mov	r0, r5
    1408:	ebffff2f 	bl	10cc <_free_r>
    140c:	e1a01006 	mov	r1, r6
    1410:	e1a00005 	mov	r0, r5
    1414:	ebffff2c 	bl	10cc <_free_r>
    1418:	e1a01004 	mov	r1, r4
    141c:	e1a00005 	mov	r0, r5
    1420:	ebffff29 	bl	10cc <_free_r>
    1424:	e8bd41f0 	pop	{r4, r5, r6, r7, r8, lr}
    1428:	e12fff1e 	bx	lr

0000142c <_reclaim_reent>:
    142c:	e59f30f8 	ldr	r3, [pc, #248]	; 152c <_reclaim_reent+0x100>
    1430:	e5933000 	ldr	r3, [r3]
    1434:	e1530000 	cmp	r3, r0
    1438:	012fff1e 	bxeq	lr
    143c:	e590104c 	ldr	r1, [r0, #76]	; 0x4c
    1440:	e3510000 	cmp	r1, #0
    1444:	e92d4070 	push	{r4, r5, r6, lr}
    1448:	e1a05000 	mov	r5, r0
    144c:	0a00000f 	beq	1490 <_reclaim_reent+0x64>
    1450:	e3a06000 	mov	r6, #0
    1454:	e7914006 	ldr	r4, [r1, r6]
    1458:	e3540000 	cmp	r4, #0
    145c:	0a000006 	beq	147c <_reclaim_reent+0x50>
    1460:	e1a01004 	mov	r1, r4
    1464:	e5944000 	ldr	r4, [r4]
    1468:	e1a00005 	mov	r0, r5
    146c:	ebffff16 	bl	10cc <_free_r>
    1470:	e3540000 	cmp	r4, #0
    1474:	1afffff9 	bne	1460 <_reclaim_reent+0x34>
    1478:	e595104c 	ldr	r1, [r5, #76]	; 0x4c
    147c:	e2866004 	add	r6, r6, #4
    1480:	e3560080 	cmp	r6, #128	; 0x80
    1484:	1afffff2 	bne	1454 <_reclaim_reent+0x28>
    1488:	e1a00005 	mov	r0, r5
    148c:	ebffff0e 	bl	10cc <_free_r>
    1490:	e5951040 	ldr	r1, [r5, #64]	; 0x40
    1494:	e3510000 	cmp	r1, #0
    1498:	11a00005 	movne	r0, r5
    149c:	1bffff0a 	blne	10cc <_free_r>
    14a0:	e5954148 	ldr	r4, [r5, #328]	; 0x148
    14a4:	e3540000 	cmp	r4, #0
    14a8:	0a000008 	beq	14d0 <_reclaim_reent+0xa4>
    14ac:	e2856f53 	add	r6, r5, #332	; 0x14c
    14b0:	e1540006 	cmp	r4, r6
    14b4:	0a000005 	beq	14d0 <_reclaim_reent+0xa4>
    14b8:	e1a01004 	mov	r1, r4
    14bc:	e5944000 	ldr	r4, [r4]
    14c0:	e1a00005 	mov	r0, r5
    14c4:	ebffff00 	bl	10cc <_free_r>
    14c8:	e1560004 	cmp	r6, r4
    14cc:	1afffff9 	bne	14b8 <_reclaim_reent+0x8c>
    14d0:	e5951054 	ldr	r1, [r5, #84]	; 0x54
    14d4:	e3510000 	cmp	r1, #0
    14d8:	11a00005 	movne	r0, r5
    14dc:	1bfffefa 	blne	10cc <_free_r>
    14e0:	e5953038 	ldr	r3, [r5, #56]	; 0x38
    14e4:	e3530000 	cmp	r3, #0
    14e8:	0a00000d 	beq	1524 <_reclaim_reent+0xf8>
    14ec:	e1a00005 	mov	r0, r5
    14f0:	e595303c 	ldr	r3, [r5, #60]	; 0x3c
    14f4:	e1a0e00f 	mov	lr, pc
    14f8:	e12fff13 	bx	r3
    14fc:	e59542e0 	ldr	r4, [r5, #736]	; 0x2e0
    1500:	e3540000 	cmp	r4, #0
    1504:	0a000006 	beq	1524 <_reclaim_reent+0xf8>
    1508:	e5941000 	ldr	r1, [r4]
    150c:	e3510000 	cmp	r1, #0
    1510:	11a00005 	movne	r0, r5
    1514:	1bffffa7 	blne	13b8 <cleanup_glue>
    1518:	e1a01004 	mov	r1, r4
    151c:	e1a00005 	mov	r0, r5
    1520:	ebfffee9 	bl	10cc <_free_r>
    1524:	e8bd4070 	pop	{r4, r5, r6, lr}
    1528:	e12fff1e 	bx	lr
    152c:	20000030 	andcs	r0, r0, r0, lsr r0

00001530 <_sbrk>:
    1530:	e59f201c 	ldr	r2, [pc, #28]	; 1554 <_sbrk+0x24>
    1534:	e5923000 	ldr	r3, [r2]
    1538:	e59f1018 	ldr	r1, [pc, #24]	; 1558 <_sbrk+0x28>
    153c:	e3530000 	cmp	r3, #0
    1540:	01a03001 	moveq	r3, r1
    1544:	e0830000 	add	r0, r3, r0
    1548:	e5820000 	str	r0, [r2]
    154c:	e1a00003 	mov	r0, r3
    1550:	e12fff1e 	bx	lr
    1554:	200008d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
    1558:	200008d4 	ldrdcs	r0, [r0], -r4

0000155c <_exit>:
    155c:	eafffffe 	b	155c <_exit>

00001560 <register_fini>:
    1560:	e59f3018 	ldr	r3, [pc, #24]	; 1580 <register_fini+0x20>
    1564:	e3530000 	cmp	r3, #0
    1568:	012fff1e 	bxeq	lr
    156c:	e92d4010 	push	{r4, lr}
    1570:	e59f000c 	ldr	r0, [pc, #12]	; 1584 <register_fini+0x24>
    1574:	ebfffb7d 	bl	370 <atexit>
    1578:	e8bd4010 	pop	{r4, lr}
    157c:	e12fff1e 	bx	lr
    1580:	00000000 	andeq	r0, r0, r0
    1584:	000003c4 	andeq	r0, r0, r4, asr #7

00001588 <__frame_dummy_init_array_entry>:
    1588:	000000a8 	andeq	r0, r0, r8, lsr #1
    158c:	00001560 	andeq	r1, r0, r0, ror #10

00001590 <_init>:
    1590:	e1a0c00d 	mov	ip, sp
    1594:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    1598:	e24cb004 	sub	fp, ip, #4
    159c:	e24bd028 	sub	sp, fp, #40	; 0x28
    15a0:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    15a4:	e12fff1e 	bx	lr

000015a8 <_fini>:
    15a8:	e1a0c00d 	mov	ip, sp
    15ac:	e92ddff8 	push	{r3, r4, r5, r6, r7, r8, r9, sl, fp, ip, lr, pc}
    15b0:	e24cb004 	sub	fp, ip, #4

000015b4 <__do_global_dtors_aux_fini_array_entry>:
    15b4:	00000064 	andeq	r0, r0, r4, rrx
    15b8:	e24bd028 	sub	sp, fp, #40	; 0x28
    15bc:	e89d6ff0 	ldm	sp, {r4, r5, r6, r7, r8, r9, sl, fp, sp, lr}
    15c0:	e12fff1e 	bx	lr

Disassembly of section .rodata:

000015c4 <all_implied_fbits>:
    15c4:	3d0a3d3a 	stccc	13, cr3, [sl, #-232]	; 0xffffff18
    15c8:	3d243d0f 	stccc	13, cr3, [r4, #-60]!	; 0xffffffc4
    15cc:	3d023d32 	stccc	13, cr3, [r2, #-200]	; 0xffffff38
    15d0:	3d133d05 	ldccc	13, cr3, [r3, #-20]	; 0xffffffec
    15d4:	3d0c3d0d 	stccc	13, cr3, [ip, #-52]	; 0xffffffcc
    15d8:	3d113d23 	ldccc	13, cr3, [r1, #-140]	; 0xffffff74
    15dc:	3d013d26 	stccc	13, cr3, [r1, #-152]	; 0xffffff68
    15e0:	3d083d17 	stccc	13, cr3, [r8, #-92]	; 0xffffffa4
    15e4:	00003d09 	andeq	r3, r0, r9, lsl #26

000015e8 <g2>:
    15e8:	0000002d 	andeq	r0, r0, sp, lsr #32
    15ec:	6c6c6548 	cfstr64vs	mvdx6, [ip], #-288	; 0xfffffee0
    15f0:	6f57206f 	svcvs	0x0057206f
    15f4:	21646c72 	smccs	18114	; 0x46c2
    15f8:	0000000a 	andeq	r0, r0, sl

000015fc <_global_impure_ptr>:
    15fc:	20000038 	andcs	r0, r0, r8, lsr r0

00001600 <all_implied_fbits>:
    1600:	3d0a3d3a 	stccc	13, cr3, [sl, #-232]	; 0xffffff18
    1604:	3d243d0f 	stccc	13, cr3, [r4, #-60]!	; 0xffffffc4
    1608:	3d023d32 	stccc	13, cr3, [r2, #-200]	; 0xffffff38
    160c:	3d133d05 	ldccc	13, cr3, [r3, #-20]	; 0xffffffec
    1610:	3d0c3d0d 	stccc	13, cr3, [ip, #-52]	; 0xffffffcc
    1614:	3d113d23 	ldccc	13, cr3, [r1, #-140]	; 0xffffff74
    1618:	3d013d26 	stccc	13, cr3, [r1, #-152]	; 0xffffff68
    161c:	3d083d17 	stccc	13, cr3, [r8, #-92]	; 0xffffffa4
    1620:	00003d09 	andeq	r3, r0, r9, lsl #26

Disassembly of section .eh_frame:

00001624 <__FRAME_END__>:
    1624:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.exidx:

00001628 <__exidx_start>:
    1628:	7fffeab4 	svcvc	0x00ffeab4
    162c:	00000001 	andeq	r0, r0, r1

Disassembly of section .data:

20000000 <__dso_handle>:
20000000:	00000000 	andeq	r0, r0, r0

20000004 <g3>:
20000004:	0000000c 	andeq	r0, r0, ip

20000008 <g5>:
20000008:	00000000 	andeq	r0, r0, r0
2000000c:	00000001 	andeq	r0, r0, r1
20000010:	00000002 	andeq	r0, r0, r2
20000014:	00000003 	andeq	r0, r0, r3
20000018:	00000004 	andeq	r0, r0, r4
2000001c:	00000005 	andeq	r0, r0, r5
20000020:	00000006 	andeq	r0, r0, r6
20000024:	00000007 	andeq	r0, r0, r7
20000028:	00000008 	andeq	r0, r0, r8
2000002c:	00000009 	andeq	r0, r0, r9

20000030 <_impure_ptr>:
20000030:	20000038 	andcs	r0, r0, r8, lsr r0
20000034:	00000000 	andeq	r0, r0, r0

20000038 <impure_data>:
20000038:	00000000 	andeq	r0, r0, r0
2000003c:	20000324 	andcs	r0, r0, r4, lsr #6
20000040:	2000038c 	andcs	r0, r0, ip, lsl #7
20000044:	200003f4 	strdcs	r0, [r0], -r4
	...
200000e0:	00000001 	andeq	r0, r0, r1
200000e4:	00000000 	andeq	r0, r0, r0
200000e8:	abcd330e 	blge	1f34cd28 <_bsl_base_address+0x1f14ad28>
200000ec:	e66d1234 			; <UNDEFINED> instruction: 0xe66d1234
200000f0:	0005deec 	andeq	sp, r5, ip, ror #29
200000f4:	0000000b 	andeq	r0, r0, fp
	...

20000460 <__malloc_av_>:
	...
20000468:	20000460 	andcs	r0, r0, r0, ror #8
2000046c:	20000460 	andcs	r0, r0, r0, ror #8
20000470:	20000468 	andcs	r0, r0, r8, ror #8
20000474:	20000468 	andcs	r0, r0, r8, ror #8
20000478:	20000470 	andcs	r0, r0, r0, ror r4
2000047c:	20000470 	andcs	r0, r0, r0, ror r4
20000480:	20000478 	andcs	r0, r0, r8, ror r4
20000484:	20000478 	andcs	r0, r0, r8, ror r4
20000488:	20000480 	andcs	r0, r0, r0, lsl #9
2000048c:	20000480 	andcs	r0, r0, r0, lsl #9
20000490:	20000488 	andcs	r0, r0, r8, lsl #9
20000494:	20000488 	andcs	r0, r0, r8, lsl #9
20000498:	20000490 	mulcs	r0, r0, r4
2000049c:	20000490 	mulcs	r0, r0, r4
200004a0:	20000498 	mulcs	r0, r8, r4
200004a4:	20000498 	mulcs	r0, r8, r4
200004a8:	200004a0 	andcs	r0, r0, r0, lsr #9
200004ac:	200004a0 	andcs	r0, r0, r0, lsr #9
200004b0:	200004a8 	andcs	r0, r0, r8, lsr #9
200004b4:	200004a8 	andcs	r0, r0, r8, lsr #9
200004b8:	200004b0 			; <UNDEFINED> instruction: 0x200004b0
200004bc:	200004b0 			; <UNDEFINED> instruction: 0x200004b0
200004c0:	200004b8 			; <UNDEFINED> instruction: 0x200004b8
200004c4:	200004b8 			; <UNDEFINED> instruction: 0x200004b8
200004c8:	200004c0 	andcs	r0, r0, r0, asr #9
200004cc:	200004c0 	andcs	r0, r0, r0, asr #9
200004d0:	200004c8 	andcs	r0, r0, r8, asr #9
200004d4:	200004c8 	andcs	r0, r0, r8, asr #9
200004d8:	200004d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200004dc:	200004d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200004e0:	200004d8 	ldrdcs	r0, [r0], -r8
200004e4:	200004d8 	ldrdcs	r0, [r0], -r8
200004e8:	200004e0 	andcs	r0, r0, r0, ror #9
200004ec:	200004e0 	andcs	r0, r0, r0, ror #9
200004f0:	200004e8 	andcs	r0, r0, r8, ror #9
200004f4:	200004e8 	andcs	r0, r0, r8, ror #9
200004f8:	200004f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200004fc:	200004f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
20000500:	200004f8 	strdcs	r0, [r0], -r8
20000504:	200004f8 	strdcs	r0, [r0], -r8
20000508:	20000500 	andcs	r0, r0, r0, lsl #10
2000050c:	20000500 	andcs	r0, r0, r0, lsl #10
20000510:	20000508 	andcs	r0, r0, r8, lsl #10
20000514:	20000508 	andcs	r0, r0, r8, lsl #10
20000518:	20000510 	andcs	r0, r0, r0, lsl r5
2000051c:	20000510 	andcs	r0, r0, r0, lsl r5
20000520:	20000518 	andcs	r0, r0, r8, lsl r5
20000524:	20000518 	andcs	r0, r0, r8, lsl r5
20000528:	20000520 	andcs	r0, r0, r0, lsr #10
2000052c:	20000520 	andcs	r0, r0, r0, lsr #10
20000530:	20000528 	andcs	r0, r0, r8, lsr #10
20000534:	20000528 	andcs	r0, r0, r8, lsr #10
20000538:	20000530 	andcs	r0, r0, r0, lsr r5
2000053c:	20000530 	andcs	r0, r0, r0, lsr r5
20000540:	20000538 	andcs	r0, r0, r8, lsr r5
20000544:	20000538 	andcs	r0, r0, r8, lsr r5
20000548:	20000540 	andcs	r0, r0, r0, asr #10
2000054c:	20000540 	andcs	r0, r0, r0, asr #10
20000550:	20000548 	andcs	r0, r0, r8, asr #10
20000554:	20000548 	andcs	r0, r0, r8, asr #10
20000558:	20000550 	andcs	r0, r0, r0, asr r5
2000055c:	20000550 	andcs	r0, r0, r0, asr r5
20000560:	20000558 	andcs	r0, r0, r8, asr r5
20000564:	20000558 	andcs	r0, r0, r8, asr r5
20000568:	20000560 	andcs	r0, r0, r0, ror #10
2000056c:	20000560 	andcs	r0, r0, r0, ror #10
20000570:	20000568 	andcs	r0, r0, r8, ror #10
20000574:	20000568 	andcs	r0, r0, r8, ror #10
20000578:	20000570 	andcs	r0, r0, r0, ror r5
2000057c:	20000570 	andcs	r0, r0, r0, ror r5
20000580:	20000578 	andcs	r0, r0, r8, ror r5
20000584:	20000578 	andcs	r0, r0, r8, ror r5
20000588:	20000580 	andcs	r0, r0, r0, lsl #11
2000058c:	20000580 	andcs	r0, r0, r0, lsl #11
20000590:	20000588 	andcs	r0, r0, r8, lsl #11
20000594:	20000588 	andcs	r0, r0, r8, lsl #11
20000598:	20000590 	mulcs	r0, r0, r5
2000059c:	20000590 	mulcs	r0, r0, r5
200005a0:	20000598 	mulcs	r0, r8, r5
200005a4:	20000598 	mulcs	r0, r8, r5
200005a8:	200005a0 	andcs	r0, r0, r0, lsr #11
200005ac:	200005a0 	andcs	r0, r0, r0, lsr #11
200005b0:	200005a8 	andcs	r0, r0, r8, lsr #11
200005b4:	200005a8 	andcs	r0, r0, r8, lsr #11
200005b8:	200005b0 			; <UNDEFINED> instruction: 0x200005b0
200005bc:	200005b0 			; <UNDEFINED> instruction: 0x200005b0
200005c0:	200005b8 			; <UNDEFINED> instruction: 0x200005b8
200005c4:	200005b8 			; <UNDEFINED> instruction: 0x200005b8
200005c8:	200005c0 	andcs	r0, r0, r0, asr #11
200005cc:	200005c0 	andcs	r0, r0, r0, asr #11
200005d0:	200005c8 	andcs	r0, r0, r8, asr #11
200005d4:	200005c8 	andcs	r0, r0, r8, asr #11
200005d8:	200005d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200005dc:	200005d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200005e0:	200005d8 	ldrdcs	r0, [r0], -r8
200005e4:	200005d8 	ldrdcs	r0, [r0], -r8
200005e8:	200005e0 	andcs	r0, r0, r0, ror #11
200005ec:	200005e0 	andcs	r0, r0, r0, ror #11
200005f0:	200005e8 	andcs	r0, r0, r8, ror #11
200005f4:	200005e8 	andcs	r0, r0, r8, ror #11
200005f8:	200005f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200005fc:	200005f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
20000600:	200005f8 	strdcs	r0, [r0], -r8
20000604:	200005f8 	strdcs	r0, [r0], -r8
20000608:	20000600 	andcs	r0, r0, r0, lsl #12
2000060c:	20000600 	andcs	r0, r0, r0, lsl #12
20000610:	20000608 	andcs	r0, r0, r8, lsl #12
20000614:	20000608 	andcs	r0, r0, r8, lsl #12
20000618:	20000610 	andcs	r0, r0, r0, lsl r6
2000061c:	20000610 	andcs	r0, r0, r0, lsl r6
20000620:	20000618 	andcs	r0, r0, r8, lsl r6
20000624:	20000618 	andcs	r0, r0, r8, lsl r6
20000628:	20000620 	andcs	r0, r0, r0, lsr #12
2000062c:	20000620 	andcs	r0, r0, r0, lsr #12
20000630:	20000628 	andcs	r0, r0, r8, lsr #12
20000634:	20000628 	andcs	r0, r0, r8, lsr #12
20000638:	20000630 	andcs	r0, r0, r0, lsr r6
2000063c:	20000630 	andcs	r0, r0, r0, lsr r6
20000640:	20000638 	andcs	r0, r0, r8, lsr r6
20000644:	20000638 	andcs	r0, r0, r8, lsr r6
20000648:	20000640 	andcs	r0, r0, r0, asr #12
2000064c:	20000640 	andcs	r0, r0, r0, asr #12
20000650:	20000648 	andcs	r0, r0, r8, asr #12
20000654:	20000648 	andcs	r0, r0, r8, asr #12
20000658:	20000650 	andcs	r0, r0, r0, asr r6
2000065c:	20000650 	andcs	r0, r0, r0, asr r6
20000660:	20000658 	andcs	r0, r0, r8, asr r6
20000664:	20000658 	andcs	r0, r0, r8, asr r6
20000668:	20000660 	andcs	r0, r0, r0, ror #12
2000066c:	20000660 	andcs	r0, r0, r0, ror #12
20000670:	20000668 	andcs	r0, r0, r8, ror #12
20000674:	20000668 	andcs	r0, r0, r8, ror #12
20000678:	20000670 	andcs	r0, r0, r0, ror r6
2000067c:	20000670 	andcs	r0, r0, r0, ror r6
20000680:	20000678 	andcs	r0, r0, r8, ror r6
20000684:	20000678 	andcs	r0, r0, r8, ror r6
20000688:	20000680 	andcs	r0, r0, r0, lsl #13
2000068c:	20000680 	andcs	r0, r0, r0, lsl #13
20000690:	20000688 	andcs	r0, r0, r8, lsl #13
20000694:	20000688 	andcs	r0, r0, r8, lsl #13
20000698:	20000690 	mulcs	r0, r0, r6
2000069c:	20000690 	mulcs	r0, r0, r6
200006a0:	20000698 	mulcs	r0, r8, r6
200006a4:	20000698 	mulcs	r0, r8, r6
200006a8:	200006a0 	andcs	r0, r0, r0, lsr #13
200006ac:	200006a0 	andcs	r0, r0, r0, lsr #13
200006b0:	200006a8 	andcs	r0, r0, r8, lsr #13
200006b4:	200006a8 	andcs	r0, r0, r8, lsr #13
200006b8:	200006b0 			; <UNDEFINED> instruction: 0x200006b0
200006bc:	200006b0 			; <UNDEFINED> instruction: 0x200006b0
200006c0:	200006b8 			; <UNDEFINED> instruction: 0x200006b8
200006c4:	200006b8 			; <UNDEFINED> instruction: 0x200006b8
200006c8:	200006c0 	andcs	r0, r0, r0, asr #13
200006cc:	200006c0 	andcs	r0, r0, r0, asr #13
200006d0:	200006c8 	andcs	r0, r0, r8, asr #13
200006d4:	200006c8 	andcs	r0, r0, r8, asr #13
200006d8:	200006d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200006dc:	200006d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200006e0:	200006d8 	ldrdcs	r0, [r0], -r8
200006e4:	200006d8 	ldrdcs	r0, [r0], -r8
200006e8:	200006e0 	andcs	r0, r0, r0, ror #13
200006ec:	200006e0 	andcs	r0, r0, r0, ror #13
200006f0:	200006e8 	andcs	r0, r0, r8, ror #13
200006f4:	200006e8 	andcs	r0, r0, r8, ror #13
200006f8:	200006f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200006fc:	200006f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
20000700:	200006f8 	strdcs	r0, [r0], -r8
20000704:	200006f8 	strdcs	r0, [r0], -r8
20000708:	20000700 	andcs	r0, r0, r0, lsl #14
2000070c:	20000700 	andcs	r0, r0, r0, lsl #14
20000710:	20000708 	andcs	r0, r0, r8, lsl #14
20000714:	20000708 	andcs	r0, r0, r8, lsl #14
20000718:	20000710 	andcs	r0, r0, r0, lsl r7
2000071c:	20000710 	andcs	r0, r0, r0, lsl r7
20000720:	20000718 	andcs	r0, r0, r8, lsl r7
20000724:	20000718 	andcs	r0, r0, r8, lsl r7
20000728:	20000720 	andcs	r0, r0, r0, lsr #14
2000072c:	20000720 	andcs	r0, r0, r0, lsr #14
20000730:	20000728 	andcs	r0, r0, r8, lsr #14
20000734:	20000728 	andcs	r0, r0, r8, lsr #14
20000738:	20000730 	andcs	r0, r0, r0, lsr r7
2000073c:	20000730 	andcs	r0, r0, r0, lsr r7
20000740:	20000738 	andcs	r0, r0, r8, lsr r7
20000744:	20000738 	andcs	r0, r0, r8, lsr r7
20000748:	20000740 	andcs	r0, r0, r0, asr #14
2000074c:	20000740 	andcs	r0, r0, r0, asr #14
20000750:	20000748 	andcs	r0, r0, r8, asr #14
20000754:	20000748 	andcs	r0, r0, r8, asr #14
20000758:	20000750 	andcs	r0, r0, r0, asr r7
2000075c:	20000750 	andcs	r0, r0, r0, asr r7
20000760:	20000758 	andcs	r0, r0, r8, asr r7
20000764:	20000758 	andcs	r0, r0, r8, asr r7
20000768:	20000760 	andcs	r0, r0, r0, ror #14
2000076c:	20000760 	andcs	r0, r0, r0, ror #14
20000770:	20000768 	andcs	r0, r0, r8, ror #14
20000774:	20000768 	andcs	r0, r0, r8, ror #14
20000778:	20000770 	andcs	r0, r0, r0, ror r7
2000077c:	20000770 	andcs	r0, r0, r0, ror r7
20000780:	20000778 	andcs	r0, r0, r8, ror r7
20000784:	20000778 	andcs	r0, r0, r8, ror r7
20000788:	20000780 	andcs	r0, r0, r0, lsl #15
2000078c:	20000780 	andcs	r0, r0, r0, lsl #15
20000790:	20000788 	andcs	r0, r0, r8, lsl #15
20000794:	20000788 	andcs	r0, r0, r8, lsl #15
20000798:	20000790 	mulcs	r0, r0, r7
2000079c:	20000790 	mulcs	r0, r0, r7
200007a0:	20000798 	mulcs	r0, r8, r7
200007a4:	20000798 	mulcs	r0, r8, r7
200007a8:	200007a0 	andcs	r0, r0, r0, lsr #15
200007ac:	200007a0 	andcs	r0, r0, r0, lsr #15
200007b0:	200007a8 	andcs	r0, r0, r8, lsr #15
200007b4:	200007a8 	andcs	r0, r0, r8, lsr #15
200007b8:	200007b0 			; <UNDEFINED> instruction: 0x200007b0
200007bc:	200007b0 			; <UNDEFINED> instruction: 0x200007b0
200007c0:	200007b8 			; <UNDEFINED> instruction: 0x200007b8
200007c4:	200007b8 			; <UNDEFINED> instruction: 0x200007b8
200007c8:	200007c0 	andcs	r0, r0, r0, asr #15
200007cc:	200007c0 	andcs	r0, r0, r0, asr #15
200007d0:	200007c8 	andcs	r0, r0, r8, asr #15
200007d4:	200007c8 	andcs	r0, r0, r8, asr #15
200007d8:	200007d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200007dc:	200007d0 	ldrdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200007e0:	200007d8 	ldrdcs	r0, [r0], -r8
200007e4:	200007d8 	ldrdcs	r0, [r0], -r8
200007e8:	200007e0 	andcs	r0, r0, r0, ror #15
200007ec:	200007e0 	andcs	r0, r0, r0, ror #15
200007f0:	200007e8 	andcs	r0, r0, r8, ror #15
200007f4:	200007e8 	andcs	r0, r0, r8, ror #15
200007f8:	200007f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
200007fc:	200007f0 	strdcs	r0, [r0], -r0	; <UNPREDICTABLE>
20000800:	200007f8 	strdcs	r0, [r0], -r8
20000804:	200007f8 	strdcs	r0, [r0], -r8
20000808:	20000800 	andcs	r0, r0, r0, lsl #16
2000080c:	20000800 	andcs	r0, r0, r0, lsl #16
20000810:	20000808 	andcs	r0, r0, r8, lsl #16
20000814:	20000808 	andcs	r0, r0, r8, lsl #16
20000818:	20000810 	andcs	r0, r0, r0, lsl r8
2000081c:	20000810 	andcs	r0, r0, r0, lsl r8
20000820:	20000818 	andcs	r0, r0, r8, lsl r8
20000824:	20000818 	andcs	r0, r0, r8, lsl r8
20000828:	20000820 	andcs	r0, r0, r0, lsr #16
2000082c:	20000820 	andcs	r0, r0, r0, lsr #16
20000830:	20000828 	andcs	r0, r0, r8, lsr #16
20000834:	20000828 	andcs	r0, r0, r8, lsr #16
20000838:	20000830 	andcs	r0, r0, r0, lsr r8
2000083c:	20000830 	andcs	r0, r0, r0, lsr r8
20000840:	20000838 	andcs	r0, r0, r8, lsr r8
20000844:	20000838 	andcs	r0, r0, r8, lsr r8
20000848:	20000840 	andcs	r0, r0, r0, asr #16
2000084c:	20000840 	andcs	r0, r0, r0, asr #16
20000850:	20000848 	andcs	r0, r0, r8, asr #16
20000854:	20000848 	andcs	r0, r0, r8, asr #16
20000858:	20000850 	andcs	r0, r0, r0, asr r8
2000085c:	20000850 	andcs	r0, r0, r0, asr r8
20000860:	20000858 	andcs	r0, r0, r8, asr r8
20000864:	20000858 	andcs	r0, r0, r8, asr r8

20000868 <__malloc_sbrk_base>:
20000868:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff

2000086c <__malloc_trim_threshold>:
2000086c:	00020000 	andeq	r0, r2, r0

Disassembly of section .bss:

20000870 <__bss_start__>:
20000870:	00000000 	andeq	r0, r0, r0

20000874 <object.0>:
	...

2000088c <g1>:
2000088c:	00000000 	andeq	r0, r0, r0

20000890 <g4>:
20000890:	00000000 	andeq	r0, r0, r0

20000894 <f2.0>:
20000894:	00000000 	andeq	r0, r0, r0

20000898 <__malloc_top_pad>:
20000898:	00000000 	andeq	r0, r0, r0

2000089c <__malloc_current_mallinfo>:
	...

200008c4 <__malloc_max_sbrked_mem>:
200008c4:	00000000 	andeq	r0, r0, r0

200008c8 <__malloc_max_total_mem>:
200008c8:	00000000 	andeq	r0, r0, r0

200008cc <errno>:
200008cc:	00000000 	andeq	r0, r0, r0

200008d0 <heap_end.0>:
200008d0:	00000000 	andeq	r0, r0, r0

Disassembly of section .ARM.attributes:

00000000 <__HeapLimit-0x200008d4>:
   0:	00002541 	andeq	r2, r0, r1, asr #10
   4:	61656100 	cmnvs	r5, r0, lsl #2
   8:	01006962 	tsteq	r0, r2, ror #18
   c:	0000001b 	andeq	r0, r0, fp, lsl r0
  10:	00543405 	subseq	r3, r4, r5, lsl #8
  14:	01080206 	tsteq	r8, r6, lsl #4
  18:	04120109 	ldreq	r0, [r2], #-265	; 0xfffffef7
  1c:	01150114 	tsteq	r5, r4, lsl r1
  20:	01180317 	tsteq	r8, r7, lsl r3
  24:	Address 0x0000000000000024 is out of bounds.


Disassembly of section .comment:

00000000 <.comment>:
   0:	3a434347 	bcc	10d0d24 <_bsl_base_address+0xeced24>
   4:	35312820 	ldrcc	r2, [r1, #-2080]!	; 0xfffff7e0
   8:	2e30313a 	mrccs	1, 1, r3, cr0, cr10, {1}
   c:	30322d33 	eorscc	r2, r2, r3, lsr sp
  10:	302e3132 	eorcc	r3, lr, r2, lsr r1
  14:	29342d37 	ldmdbcs	r4!, {r0, r1, r2, r4, r5, r8, sl, fp, sp}
  18:	2e303120 	rsfcssp	f3, f0, f0
  1c:	20312e33 	eorscs	r2, r1, r3, lsr lr
  20:	31323032 	teqcc	r2, r2, lsr r0
  24:	31323630 	teqcc	r2, r0, lsr r6
  28:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
  2c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
  30:	Address 0x0000000000000030 is out of bounds.


Disassembly of section .debug_line:

00000000 <.debug_line>:
       0:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
       4:	00390003 	eorseq	r0, r9, r3
       8:	01020000 	mrseq	r0, (UNDEF: 2)
       c:	000d0efb 	strdeq	r0, [sp], -fp
      10:	01010101 	tsteq	r1, r1, lsl #2
      14:	01000000 	mrseq	r0, (UNDEF: 0)
      18:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
      1c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
      20:	2f2e2e2f 	svccs	0x002e2e2f
      24:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
      28:	696c2f2e 	stmdbvs	ip!, {r1, r2, r3, r5, r8, r9, sl, fp, sp}^
      2c:	6f6c6762 	svcvs	0x006c6762
      30:	612f7373 			; <UNDEFINED> instruction: 0x612f7373
      34:	00006d72 	andeq	r6, r0, r2, ror sp
      38:	30747263 	rsbscc	r7, r4, r3, ror #4
      3c:	0100532e 	tsteq	r0, lr, lsr #6
      40:	00000000 	andeq	r0, r0, r0
      44:	00dc0205 	sbcseq	r0, ip, r5, lsl #4
      48:	96030000 	strls	r0, [r3], -r0
      4c:	30300101 	eorscc	r0, r0, r1, lsl #2
      50:	2f2f3130 	svccs	0x002f3130
      54:	2f2f312f 	svccs	0x002f312f
      58:	2f312f2f 	svccs	0x00312f2f
      5c:	2f312f2f 	svccs	0x00312f2f
      60:	2f312f2f 	svccs	0x00312f2f
      64:	2f2f302f 	svccs	0x002f302f
      68:	032f2f32 			; <UNDEFINED> instruction: 0x032f2f32
      6c:	032f2e0a 			; <UNDEFINED> instruction: 0x032f2e0a
      70:	03322e1c 	teqeq	r2, #28, 28	; 0x1c0
      74:	2f2e00e9 	svccs	0x002e00e9
      78:	342e0903 	strtcc	r0, [lr], #-2307	; 0xfffff6fd
      7c:	2f2f3331 	svccs	0x002f3331
      80:	032f2f30 			; <UNDEFINED> instruction: 0x032f2f30
      84:	2f332e0e 	svccs	0x00332e0e
      88:	2f4c2f2f 	svccs	0x004c2f2f
      8c:	2f4d2f2f 	svccs	0x004d2f2f
      90:	2e00fa03 	vmlacs.f32	s30, s0, s6
      94:	2e09032f 	cdpcs	3, 0, cr0, cr9, cr15, {1}
      98:	2f2f302f 	svccs	0x002f302f
      9c:	10023030 	andne	r3, r2, r0, lsr r0
      a0:	b8010100 	stmdalt	r1, {r8}
      a4:	03000000 	movweq	r0, #0
      a8:	00008f00 	andeq	r8, r0, r0, lsl #30
      ac:	fb010200 	blx	408b6 <__data_load__+0x3f286>
      b0:	01000d0e 	tsteq	r0, lr, lsl #26
      b4:	00010101 	andeq	r0, r1, r1, lsl #2
      b8:	00010000 	andeq	r0, r1, r0
      bc:	2e2e0100 	sufcse	f0, f6, f0
      c0:	2f2e2e2f 	svccs	0x002e2e2f
      c4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
      c8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
      cc:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
      d0:	2f62696c 	svccs	0x0062696c
      d4:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
      d8:	6474732f 	ldrbtvs	r7, [r4], #-815	; 0xfffffcd1
      dc:	0062696c 	rsbeq	r6, r2, ip, ror #18
      e0:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
      e4:	6e2f646c 	cdpvs	4, 2, cr6, cr15, cr12, {3}
      e8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
      ec:	42702d62 	rsbsmi	r2, r0, #6272	; 0x1880
      f0:	65643033 	strbvs	r3, [r4, #-51]!	; 0xffffffcd
      f4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
      f8:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
      fc:	2e332e33 	mrccs	14, 1, r2, cr3, cr3, {1}
     100:	656e2f30 	strbvs	r2, [lr, #-3888]!	; 0xfffff0d0
     104:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     108:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     10c:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
     110:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     114:	61000065 	tstvs	r0, r5, rrx
     118:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
     11c:	00632e74 	rsbeq	r2, r3, r4, ror lr
     120:	61000001 	tstvs	r0, r1
     124:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
     128:	00682e74 	rsbeq	r2, r8, r4, ror lr
     12c:	73000001 	movwvc	r0, #1
     130:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
     134:	00682e62 	rsbeq	r2, r8, r2, ror #28
     138:	00000002 	andeq	r0, r0, r2
     13c:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
     140:	00037002 	andeq	r7, r3, r2
     144:	01380300 	teqeq	r8, r0, lsl #6
     148:	05130305 	ldreq	r0, [r3, #-773]	; 0xfffffcfb
     14c:	0501060a 	streq	r0, [r1, #-1546]	; 0xfffff9f6
     150:	052e2d01 	streq	r2, [lr, #-3329]!	; 0xfffff2ff
     154:	054a2f0a 	strbeq	r2, [sl, #-3850]	; 0xfffff0f6
     158:	04022f01 	streq	r2, [r2], #-3841	; 0xfffff0ff
     15c:	6c010100 	stfvss	f0, [r1], {-0}
     160:	03000001 	movweq	r0, #1
     164:	00012a00 	andeq	r2, r1, r0, lsl #20
     168:	fb010200 	blx	40972 <__data_load__+0x3f342>
     16c:	01000d0e 	tsteq	r0, lr, lsl #26
     170:	00010101 	andeq	r0, r1, r1, lsl #2
     174:	00010000 	andeq	r0, r1, r0
     178:	2e2e0100 	sufcse	f0, f6, f0
     17c:	2f2e2e2f 	svccs	0x002e2e2f
     180:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     184:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     188:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     18c:	2f62696c 	svccs	0x0062696c
     190:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     194:	6474732f 	ldrbtvs	r7, [r4], #-815	; 0xfffffcd1
     198:	0062696c 	rsbeq	r6, r2, ip, ror #18
     19c:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     1a0:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     1a4:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     1a8:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     1ac:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     1b0:	61652d65 	cmnvs	r5, r5, ror #26
     1b4:	312f6962 			; <UNDEFINED> instruction: 0x312f6962
     1b8:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
     1bc:	6e692f31 	mcrvs	15, 3, r2, cr9, cr1, {1}
     1c0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     1c4:	622f0065 	eorvs	r0, pc, #101	; 0x65
     1c8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
     1cc:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     1d0:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
     1d4:	30334270 	eorscc	r4, r3, r0, ror r2
     1d8:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
     1dc:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     1e0:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
     1e4:	2f302e33 	svccs	0x00302e33
     1e8:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     1ec:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 50 <register_tm_clones+0x24>
     1f0:	2f636269 	svccs	0x00636269
     1f4:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     1f8:	2f656475 	svccs	0x00656475
     1fc:	00737973 	rsbseq	r7, r3, r3, ror r9
     200:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
     204:	6e2f646c 	cdpvs	4, 2, cr6, cr15, cr12, {3}
     208:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     20c:	42702d62 	rsbsmi	r2, r0, #6272	; 0x1880
     210:	65643033 	strbvs	r3, [r4, #-51]!	; 0xffffffcd
     214:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     218:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
     21c:	2e332e33 	mrccs	14, 1, r2, cr3, cr3, {1}
     220:	656e2f30 	strbvs	r2, [lr, #-3888]!	; 0xfffff0d0
     224:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     228:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     22c:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
     230:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     234:	65000065 	strvs	r0, [r0, #-101]	; 0xffffff9b
     238:	2e746978 			; <UNDEFINED> instruction: 0x2e746978
     23c:	00010063 	andeq	r0, r1, r3, rrx
     240:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     244:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
     248:	00020068 	andeq	r0, r2, r8, rrx
     24c:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
     250:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
     254:	00030068 	andeq	r0, r3, r8, rrx
     258:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
     25c:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
     260:	00000300 	andeq	r0, r0, r0, lsl #6
     264:	6b636f6c 	blvs	18dc01c <_bsl_base_address+0x16da01c>
     268:	0300682e 	movweq	r6, #2094	; 0x82e
     26c:	74610000 	strbtvc	r0, [r1], #-0
     270:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
     274:	0100682e 	tsteq	r0, lr, lsr #16
     278:	6e750000 	cdpvs	0, 7, cr0, cr5, cr0, {0}
     27c:	64747369 	ldrbtvs	r7, [r4], #-873	; 0xfffffc97
     280:	0300682e 	movweq	r6, #2094	; 0x82e
     284:	74730000 	ldrbtvc	r0, [r3], #-0
     288:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
     28c:	0400682e 	streq	r6, [r0], #-2094	; 0xfffff7d2
     290:	05000000 	streq	r0, [r0, #-0]
     294:	02050001 	andeq	r0, r5, #1
     298:	00000390 	muleq	r0, r0, r3
     29c:	05013503 	streq	r3, [r1, #-1283]	; 0xfffffafd
     2a0:	01051805 	tsteq	r5, r5, lsl #16
     2a4:	017a0306 	cmneq	sl, r6, lsl #6
     2a8:	05340505 	ldreq	r0, [r4, #-1285]!	; 0xfffffafb
     2ac:	2e7a0301 	cdpcs	3, 7, cr0, cr10, cr1, {0}
     2b0:	05340505 	ldreq	r0, [r4, #-1285]!	; 0xfffffafb
     2b4:	05300603 	ldreq	r0, [r0, #-1539]!	; 0xfffff9fd
     2b8:	05010614 	streq	r0, [r1, #-1556]	; 0xfffff9ec
     2bc:	05056606 	streq	r6, [r5, #-1542]	; 0xfffff9fa
     2c0:	06052f06 	streq	r2, [r5], -r6, lsl #30
     2c4:	03050106 	movweq	r0, #20742	; 0x5106
     2c8:	06024b06 	streq	r4, [r2], -r6, lsl #22
     2cc:	d7010100 	strle	r0, [r1, -r0, lsl #2]
     2d0:	03000000 	movweq	r0, #0
     2d4:	00007300 	andeq	r7, r0, r0, lsl #6
     2d8:	fb010200 	blx	40ae2 <__data_load__+0x3f4b2>
     2dc:	01000d0e 	tsteq	r0, lr, lsl #26
     2e0:	00010101 	andeq	r0, r1, r1, lsl #2
     2e4:	00010000 	andeq	r0, r1, r0
     2e8:	2e2e0100 	sufcse	f0, f6, f0
     2ec:	2f2e2e2f 	svccs	0x002e2e2f
     2f0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     2f4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     2f8:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     2fc:	2f62696c 	svccs	0x0062696c
     300:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     304:	73696d2f 	cmnvc	r9, #3008	; 0xbc0
     308:	752f0063 	strvc	r0, [pc, #-99]!	; 2ad <func+0xd>
     30c:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; 148 <_stack_init+0x6c>
     310:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
     314:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
     318:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
     31c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
     320:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
     324:	2e30312f 	rsfcssp	f3, f0, #10.0
     328:	2f312e33 	svccs	0x00312e33
     32c:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
     330:	00656475 	rsbeq	r6, r5, r5, ror r4
     334:	6e696600 	cdpvs	6, 6, cr6, cr9, cr0, {0}
     338:	00632e69 	rsbeq	r2, r3, r9, ror #28
     33c:	73000001 	movwvc	r0, #1
     340:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
     344:	00682e66 	rsbeq	r2, r8, r6, ror #28
     348:	00000002 	andeq	r0, r0, r2
     34c:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
     350:	0003c402 	andeq	ip, r3, r2, lsl #8
     354:	011a0300 	tsteq	sl, r0, lsl #6
     358:	13130305 	tstne	r3, #335544320	; 0x14000000
     35c:	06010514 			; <UNDEFINED> instruction: 0x06010514
     360:	321c050e 	andscc	r0, ip, #58720256	; 0x3800000
     364:	67060305 	strvs	r0, [r6, -r5, lsl #6]
     368:	05011305 	streq	r1, [r1, #-773]	; 0xfffffcfb
     36c:	2e010603 	cfmadd32cs	mvax0, mvfx0, mvfx1, mvfx3
     370:	02000505 	andeq	r0, r0, #20971520	; 0x1400000
     374:	2f060304 	svccs	0x00060304
     378:	02001905 	andeq	r1, r0, #81920	; 0x14000
     37c:	2e060304 	cdpcs	3, 0, cr0, cr6, cr4, {0}
     380:	02000505 	andeq	r0, r0, #20971520	; 0x1400000
     384:	052e0304 	streq	r0, [lr, #-772]!	; 0xfffffcfc
     388:	0402001a 	streq	r0, [r2], #-26	; 0xffffffe6
     38c:	05490603 	strbeq	r0, [r9, #-1539]	; 0xfffff9fd
     390:	04020013 	streq	r0, [r2], #-19	; 0xffffffed
     394:	03050103 	movweq	r0, #20739	; 0x5103
     398:	03040200 	movweq	r0, #16896	; 0x4200
     39c:	4e060106 	adfmis	f0, f6, f6
     3a0:	30060105 	andcc	r0, r6, r5, lsl #2
     3a4:	0006022e 	andeq	r0, r6, lr, lsr #4
     3a8:	00d70101 	sbcseq	r0, r7, r1, lsl #2
     3ac:	00030000 	andeq	r0, r3, r0
     3b0:	000000d1 	ldrdeq	r0, [r0], -r1
     3b4:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     3b8:	0101000d 	tsteq	r1, sp
     3bc:	00000101 	andeq	r0, r0, r1, lsl #2
     3c0:	00000100 	andeq	r0, r0, r0, lsl #2
     3c4:	73752f01 	cmnvc	r5, #1, 30
     3c8:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
     3cc:	63672f62 	cmnvs	r7, #392	; 0x188
     3d0:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
     3d4:	6f6e2d6d 	svcvs	0x006e2d6d
     3d8:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     3dc:	2f696261 	svccs	0x00696261
     3e0:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
     3e4:	692f312e 	stmdbvs	pc!, {r1, r2, r3, r5, r8, ip, sp}	; <UNPREDICTABLE>
     3e8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     3ec:	2f006564 	svccs	0x00006564
     3f0:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     3f4:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
     3f8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     3fc:	3342702d 	movtcc	r7, #8237	; 0x202d
     400:	2f656430 	svccs	0x00656430
     404:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     408:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
     40c:	302e332e 	eorcc	r3, lr, lr, lsr #6
     410:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     414:	2f62696c 	svccs	0x0062696c
     418:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     41c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     420:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     424:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
     428:	2f2e2e00 	svccs	0x002e2e00
     42c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     430:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     434:	2f2e2e2f 	svccs	0x002e2e2f
     438:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     43c:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 2a0 <func>
     440:	2f636269 	svccs	0x00636269
     444:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
     448:	73000074 	movwvc	r0, #116	; 0x74
     44c:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
     450:	00682e66 	rsbeq	r2, r8, r6, ror #28
     454:	5f000001 	svcpl	0x00000001
     458:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
     45c:	00682e73 	rsbeq	r2, r8, r3, ror lr
     460:	72000002 	andvc	r0, r0, #2
     464:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
     468:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     46c:	6f6c0000 	svcvs	0x006c0000
     470:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
     474:	00000200 	andeq	r0, r0, r0, lsl #4
     478:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xfffff297
     47c:	632e6572 			; <UNDEFINED> instruction: 0x632e6572
     480:	00000300 	andeq	r0, r0, r0, lsl #6
     484:	00011d00 	andeq	r1, r1, r0, lsl #26
     488:	73000300 	movwvc	r0, #768	; 0x300
     48c:	02000000 	andeq	r0, r0, #0
     490:	0d0efb01 	vstreq	d15, [lr, #-4]
     494:	01010100 	mrseq	r0, (UNDEF: 17)
     498:	00000001 	andeq	r0, r0, r1
     49c:	01000001 	tsteq	r0, r1
     4a0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     4a4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     4a8:	2f2e2e2f 	svccs	0x002e2e2f
     4ac:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
     4b0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     4b4:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     4b8:	6d2f6362 	stcvs	3, cr6, [pc, #-392]!	; 338 <func+0x98>
     4bc:	00637369 	rsbeq	r7, r3, r9, ror #6
     4c0:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
     4c4:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     4c8:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
     4cc:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
     4d0:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
     4d4:	61652d65 	cmnvs	r5, r5, ror #26
     4d8:	312f6962 			; <UNDEFINED> instruction: 0x312f6962
     4dc:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
     4e0:	6e692f31 	mcrvs	15, 3, r2, cr9, cr1, {1}
     4e4:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
     4e8:	69000065 	stmdbvs	r0, {r0, r2, r5, r6}
     4ec:	2e74696e 	vsubcs.f16	s13, s8, s29	; <UNPREDICTABLE>
     4f0:	00010063 	andeq	r0, r1, r3, rrx
     4f4:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     4f8:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
     4fc:	00020068 	andeq	r0, r2, r8, rrx
     500:	01050000 	mrseq	r0, (UNDEF: 5)
     504:	08020500 	stmdaeq	r2, {r8, sl}
     508:	03000004 	movweq	r0, #4
     50c:	0305011e 	movweq	r0, #20766	; 0x511e
     510:	05141313 	ldreq	r1, [r4, #-787]	; 0xfffffced
     514:	050e0601 	streq	r0, [lr, #-1537]	; 0xfffff9ff
     518:	0305321f 	movweq	r3, #21023	; 0x521f
     51c:	0f056706 	svceq	0x00056706
     520:	06030501 	streq	r0, [r3], -r1, lsl #10
     524:	0a052e01 	beq	14bd30 <__data_load__+0x14a700>
     528:	0005052e 	andeq	r0, r5, lr, lsr #10
     52c:	06030402 	streq	r0, [r3], -r2, lsl #8
     530:	001b054b 	andseq	r0, fp, fp, asr #10
     534:	06030402 	streq	r0, [r3], -r2, lsl #8
     538:	0005052d 	andeq	r0, r5, sp, lsr #10
     53c:	2f030402 	svccs	0x00030402
     540:	02001a05 	andeq	r1, r0, #20480	; 0x5000
     544:	49060304 	stmdbmi	r6, {r2, r8, r9}
     548:	02000f05 	andeq	r0, r0, #5, 30
     54c:	05010304 	streq	r0, [r1, #-772]	; 0xfffffcfc
     550:	04020003 	streq	r0, [r2], #-3
     554:	06010603 	streq	r0, [r1], -r3, lsl #12
     558:	061c054e 	ldreq	r0, [ip], -lr, asr #10
     55c:	03052e15 	movweq	r2, #24085	; 0x5e15
     560:	13310647 	teqne	r1, #74448896	; 0x4700000
     564:	05010f05 	streq	r0, [r1, #-3845]	; 0xfffff0fb
     568:	2e010603 	cfmadd32cs	mvax0, mvfx0, mvfx1, mvfx3
     56c:	052e0a05 	streq	r0, [lr, #-2565]!	; 0xfffff5fb
     570:	04020005 	streq	r0, [r2], #-5
     574:	054b0603 	strbeq	r0, [fp, #-1539]	; 0xfffff9fd
     578:	0402001b 	streq	r0, [r2], #-27	; 0xffffffe5
     57c:	052d0603 	streq	r0, [sp, #-1539]!	; 0xfffff9fd
     580:	04020005 	streq	r0, [r2], #-5
     584:	1a052f03 	bne	14c198 <__data_load__+0x14ab68>
     588:	03040200 	movweq	r0, #16896	; 0x4200
     58c:	0f054906 	svceq	0x00054906
     590:	03040200 	movweq	r0, #16896	; 0x4200
     594:	00030501 	andeq	r0, r3, r1, lsl #10
     598:	06030402 	streq	r0, [r3], -r2, lsl #8
     59c:	4c010501 	cfstr32mi	mvfx0, [r1], {1}
     5a0:	000a022e 	andeq	r0, sl, lr, lsr #4
     5a4:	01560101 	cmpeq	r6, r1, lsl #2
     5a8:	00030000 	andeq	r0, r3, r0
     5ac:	00000114 	andeq	r0, r0, r4, lsl r1
     5b0:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
     5b4:	0101000d 	tsteq	r1, sp
     5b8:	00000101 	andeq	r0, r0, r1, lsl #2
     5bc:	00000100 	andeq	r0, r0, r0, lsl #2
     5c0:	2f2e2e01 	svccs	0x002e2e01
     5c4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     5c8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     5cc:	2f2e2e2f 	svccs	0x002e2e2f
     5d0:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     5d4:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 438 <__libc_init_array+0x30>
     5d8:	2f636269 	svccs	0x00636269
     5dc:	6c647473 	cfstrdvs	mvd7, [r4], #-460	; 0xfffffe34
     5e0:	2f006269 	svccs	0x00006269
     5e4:	2f727375 	svccs	0x00727375
     5e8:	2f62696c 	svccs	0x0062696c
     5ec:	2f636367 	svccs	0x00636367
     5f0:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
     5f4:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
     5f8:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
     5fc:	30312f69 	eorscc	r2, r1, r9, ror #30
     600:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
     604:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     608:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     60c:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
     610:	2f646c69 	svccs	0x00646c69
     614:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     618:	702d6269 	eorvc	r6, sp, r9, ror #4
     61c:	64303342 	ldrtvs	r3, [r0], #-834	; 0xfffffcbe
     620:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xfffff09b
     624:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     628:	332e332d 			; <UNDEFINED> instruction: 0x332e332d
     62c:	6e2f302e 	cdpvs	0, 2, cr3, cr15, cr14, {1}
     630:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     634:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     638:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
     63c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     640:	732f6564 			; <UNDEFINED> instruction: 0x732f6564
     644:	2f007379 	svccs	0x00007379
     648:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     64c:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
     650:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     654:	3342702d 	movtcc	r7, #8237	; 0x202d
     658:	2f656430 	svccs	0x00656430
     65c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     660:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
     664:	302e332e 	eorcc	r3, lr, lr, lsr #6
     668:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     66c:	2f62696c 	svccs	0x0062696c
     670:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     674:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     678:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     67c:	616d0000 	cmnvs	sp, r0
     680:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
     684:	0100632e 	tsteq	r0, lr, lsr #6
     688:	74730000 	ldrbtvc	r0, [r3], #-0
     68c:	66656464 	strbtvs	r6, [r5], -r4, ror #8
     690:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
     694:	745f0000 	ldrbvc	r0, [pc], #-0	; 69c <_malloc_r+0x1cc>
     698:	73657079 	cmnvc	r5, #121	; 0x79
     69c:	0300682e 	movweq	r6, #2094	; 0x82e
     6a0:	65720000 	ldrbvs	r0, [r2, #-0]!
     6a4:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
     6a8:	00030068 	andeq	r0, r3, r8, rrx
     6ac:	636f6c00 	cmnvs	pc, #0, 24
     6b0:	00682e6b 	rsbeq	r2, r8, fp, ror #28
     6b4:	6d000003 	stcvs	0, cr0, [r0, #-12]
     6b8:	6f6c6c61 	svcvs	0x006c6c61
     6bc:	00682e63 	rsbeq	r2, r8, r3, ror #28
     6c0:	00000004 	andeq	r0, r0, r4
     6c4:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
     6c8:	00049002 	andeq	r9, r4, r2
     6cc:	01a20300 			; <UNDEFINED> instruction: 0x01a20300
     6d0:	13030501 	movwne	r0, #13569	; 0x3501
     6d4:	11060105 	tstne	r6, r5, lsl #2
     6d8:	052f0a05 	streq	r0, [pc, #-2565]!	; fffffcdb <__stack+0xdffff403>
     6dc:	0a052d01 	beq	14bae8 <__data_load__+0x14a4b8>
     6e0:	01052e2f 	tsteq	r5, pc, lsr #28
     6e4:	056a062f 	strbeq	r0, [sl, #-1583]!	; 0xfffff9d1
     6e8:	01051303 	tsteq	r5, r3, lsl #6
     6ec:	03051106 	movweq	r1, #20742	; 0x5106
     6f0:	2d01052f 	cfstr32cs	mvfx0, [r1, #-188]	; 0xffffff44
     6f4:	2e2f0305 	cdpcs	3, 2, cr0, cr15, cr5, {0}
     6f8:	022f0105 	eoreq	r0, pc, #1073741825	; 0x40000001
     6fc:	01010006 	tsteq	r1, r6
     700:	000008bf 			; <UNDEFINED> instruction: 0x000008bf
     704:	01140003 	tsteq	r4, r3
     708:	01020000 	mrseq	r0, (UNDEF: 2)
     70c:	000d0efb 	strdeq	r0, [sp], -fp
     710:	01010101 	tsteq	r1, r1, lsl #2
     714:	01000000 	mrseq	r0, (UNDEF: 0)
     718:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
     71c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     720:	2f2e2e2f 	svccs	0x002e2e2f
     724:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     728:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xfffff0d2
     72c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     730:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
     734:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
     738:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
     73c:	73752f00 	cmnvc	r5, #0, 30
     740:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
     744:	63672f62 	cmnvs	r7, #392	; 0x188
     748:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
     74c:	6f6e2d6d 	svcvs	0x006e2d6d
     750:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
     754:	2f696261 	svccs	0x00696261
     758:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
     75c:	692f312e 	stmdbvs	pc!, {r1, r2, r3, r5, r8, ip, sp}	; <UNPREDICTABLE>
     760:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     764:	2f006564 	svccs	0x00006564
     768:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
     76c:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
     770:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     774:	3342702d 	movtcc	r7, #8237	; 0x202d
     778:	2f656430 	svccs	0x00656430
     77c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     780:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
     784:	302e332e 	eorcc	r3, lr, lr, lsr #6
     788:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     78c:	2f62696c 	svccs	0x0062696c
     790:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     794:	636e692f 	cmnvs	lr, #770048	; 0xbc000
     798:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
     79c:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
     7a0:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
     7a4:	2f646c69 	svccs	0x00646c69
     7a8:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
     7ac:	702d6269 	eorvc	r6, sp, r9, ror #4
     7b0:	64303342 	ldrtvs	r3, [r0], #-834	; 0xfffffcbe
     7b4:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xfffff09b
     7b8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
     7bc:	332e332d 			; <UNDEFINED> instruction: 0x332e332d
     7c0:	6e2f302e 	cdpvs	0, 2, cr3, cr15, cr14, {1}
     7c4:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
     7c8:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
     7cc:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
     7d0:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
     7d4:	00006564 	andeq	r6, r0, r4, ror #10
     7d8:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
     7dc:	2e72636f 	cdpcs	3, 7, cr6, cr2, cr15, {3}
     7e0:	00010063 	andeq	r0, r1, r3, rrx
     7e4:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
     7e8:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
     7ec:	00020068 	andeq	r0, r2, r8, rrx
     7f0:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
     7f4:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
     7f8:	00030068 	andeq	r0, r3, r8, rrx
     7fc:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
     800:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
     804:	00000300 	andeq	r0, r0, r0, lsl #6
     808:	6b636f6c 	blvs	18dc5c0 <_bsl_base_address+0x16da5c0>
     80c:	0300682e 	movweq	r6, #2094	; 0x82e
     810:	65720000 	ldrbvs	r0, [r2, #-0]!
     814:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
     818:	00040068 	andeq	r0, r4, r8, rrx
     81c:	01050000 	mrseq	r0, (UNDEF: 5)
     820:	d0020500 	andle	r0, r2, r0, lsl #10
     824:	03000004 	movweq	r0, #4
     828:	0501129c 	streq	r1, [r1, #-668]	; 0xfffffd64
     82c:	13131903 	tstne	r3, #49152	; 0xc000
     830:	13131313 	tstne	r3, #1275068416	; 0x4c000000
     834:	13131313 	tstne	r3, #1275068416	; 0x4c000000
     838:	01051413 	tsteq	r5, r3, lsl r4
     83c:	016c0306 	cmneq	ip, r6, lsl #6
     840:	14031905 	strne	r1, [r3], #-2309	; 0xfffff6fb
     844:	0301052e 	movweq	r0, #5422	; 0x152e
     848:	19054a6c 	stmdbne	r5, {r2, r3, r5, r6, r9, fp, lr}
     84c:	054a1403 	strbeq	r1, [sl, #-1027]	; 0xfffffbfd
     850:	05310603 	ldreq	r0, [r1, #-1539]!	; 0xfffff9fd
     854:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
     858:	32500603 	subscc	r0, r0, #3145728	; 0x300000
     85c:	05050e06 	streq	r0, [r5, #-3590]	; 0xfffff1fa
     860:	05166c06 	ldreq	r6, [r6, #-3078]	; 0xfffff3fa
     864:	05010609 	streq	r0, [r1, #-1545]	; 0xfffff9f7
     868:	054b0605 	strbeq	r0, [fp, #-1541]	; 0xfffff9fb
     86c:	0501060c 	streq	r0, [r1, #-1548]	; 0xfffff9f4
     870:	05320605 	ldreq	r0, [r2, #-1541]!	; 0xfffff9fb
     874:	050d0607 	streq	r0, [sp, #-1543]	; 0xfffff9f9
     878:	07053308 	streq	r3, [r5, -r8, lsl #6]
     87c:	13055206 	movwne	r5, #20998	; 0x5206
     880:	07050106 	streq	r0, [r5, -r6, lsl #2]
     884:	4913052f 	ldmdbmi	r3, {r0, r1, r2, r3, r5, r8, sl}
     888:	2f060705 	svccs	0x00060705
     88c:	13060101 	movwne	r0, #24833	; 0x6101
     890:	052e062d 	streq	r0, [lr, #-1581]!	; 0xfffff9d3
     894:	07052e1f 	smladeq	r5, pc, lr, r2	; <UNPREDICTABLE>
     898:	302e0613 	eorcc	r0, lr, r3, lsl r6
     89c:	0627052c 	strteq	r0, [r7], -ip, lsr #10
     8a0:	1307052f 	movwne	r0, #29999	; 0x752f
     8a4:	13060e05 	movwne	r0, #28165	; 0x6e05
     8a8:	062d0705 	strteq	r0, [sp], -r5, lsl #14
     8ac:	0601052f 	streq	r0, [r1], -pc, lsr #10
     8b0:	0101d003 	tsteq	r1, r3
     8b4:	00190566 	andseq	r0, r9, r6, ror #10
     8b8:	03010402 	movweq	r0, #5122	; 0x1402
     8bc:	052e7e8b 	streq	r7, [lr, #-3723]!	; 0xfffff175
     8c0:	04020003 	streq	r0, [r2], #-3
     8c4:	05310601 	ldreq	r0, [r1, #-1537]!	; 0xfffff9ff
     8c8:	0402001a 	streq	r0, [r2], #-26	; 0xffffffe6
     8cc:	00010601 	andeq	r0, r1, r1, lsl #12
     8d0:	4a010402 	bmi	418e0 <__data_load__+0x402b0>
     8d4:	02000605 	andeq	r0, r0, #5242880	; 0x500000
     8d8:	002e0104 	eoreq	r0, lr, r4, lsl #2
     8dc:	2e010402 	cdpcs	4, 0, cr0, cr1, cr2, {0}
     8e0:	34060305 	strcc	r0, [r6], #-773	; 0xfffffcfb
     8e4:	06060532 			; <UNDEFINED> instruction: 0x06060532
     8e8:	06050501 	streq	r0, [r5], -r1, lsl #10
     8ec:	054a2003 	strbeq	r2, [sl, #-3]
     8f0:	0001060b 	andeq	r0, r1, fp, lsl #12
     8f4:	4a020402 	bmi	81904 <__data_load__+0x802d4>
     8f8:	04040200 	streq	r0, [r4], #-512	; 0xfffffe00
     8fc:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
     900:	02002f04 	andeq	r2, r0, #4, 30
     904:	052d0404 	streq	r0, [sp, #-1028]!	; 0xfffffbfc
     908:	04020005 	streq	r0, [r2], #-5
     90c:	054b0618 	strbeq	r0, [fp, #-1560]	; 0xfffff9e8
     910:	0402000b 	streq	r0, [r2], #-11
     914:	05010618 	streq	r0, [r1, #-1560]	; 0xfffff9e8
     918:	04020011 	streq	r0, [r2], #-17	; 0xffffffef
     91c:	09054c18 	stmdbeq	r5, {r3, r4, sl, fp, lr}
     920:	18040200 	stmdane	r4, {r9}
     924:	0005052c 	andeq	r0, r5, ip, lsr #10
     928:	06180402 	ldreq	r0, [r8], -r2, lsl #8
     92c:	001e0530 	andseq	r0, lr, r0, lsr r5
     930:	01180402 	tsteq	r8, r2, lsl #8
     934:	02000505 	andeq	r0, r0, #20971520	; 0x1400000
     938:	01061804 	tsteq	r6, r4, lsl #16
     93c:	0b030f05 	bleq	c4558 <__data_load__+0xc2f28>
     940:	00340566 	eorseq	r0, r4, r6, ror #10
     944:	03020402 	movweq	r0, #9218	; 0x2402
     948:	1e054a75 			; <UNDEFINED> instruction: 0x1e054a75
     94c:	02040200 	andeq	r0, r4, #0, 4
     950:	05052e06 	streq	r2, [r5, #-3590]	; 0xfffff1fa
     954:	02040200 	andeq	r0, r4, #0, 4
     958:	07050106 	streq	r0, [r5, -r6, lsl #2]
     95c:	0c054c06 	stceq	12, cr4, [r5], {6}
     960:	05010903 	streq	r0, [r1, #-2307]	; 0xfffff6fd
     964:	0175032d 	cmneq	r5, sp, lsr #6
     968:	14061305 	strne	r1, [r6], #-773	; 0xfffffcfb
     96c:	4b060705 	blmi	182588 <__data_load__+0x180f58>
     970:	01061805 	tsteq	r6, r5, lsl #16
     974:	30060705 	andcc	r0, r6, r5, lsl #14
     978:	01060a05 	tsteq	r6, r5, lsl #20
     97c:	0605054a 	streq	r0, [r5], -sl, asr #10
     980:	032e1003 			; <UNDEFINED> instruction: 0x032e1003
     984:	0c052e40 	stceq	14, cr2, [r5], {64}	; 0x40
     988:	052d1306 	streq	r1, [sp, #-774]!	; 0xfffffcfa
     98c:	01f00301 	mvnseq	r0, r1, lsl #6
     990:	030c052e 	movweq	r0, #50478	; 0xc52e
     994:	052e7e90 	streq	r7, [lr, #-3728]!	; 0xfffff170
     998:	052f0605 	streq	r0, [pc, #-1541]!	; 39b <exit+0xb>
     99c:	ef030601 	svc	0x00030601
     9a0:	054a0101 	strbeq	r0, [sl, #-257]	; 0xfffffeff
     9a4:	a5030607 	strge	r0, [r3, #-1543]	; 0xfffff9f9
     9a8:	05132e7e 	ldreq	r2, [r3, #-3710]	; 0xfffff182
     9ac:	0501060e 	streq	r0, [r1, #-1550]	; 0xfffff9f2
     9b0:	05310605 	ldreq	r0, [r1, #-1541]!	; 0xfffff9fb
     9b4:	05010608 	streq	r0, [r1, #-1544]	; 0xfffff9f8
     9b8:	2e0a0309 	cdpcs	3, 0, cr0, cr10, cr9, {0}
     9bc:	76030805 	strvc	r0, [r3], -r5, lsl #16
     9c0:	0603052e 	streq	r0, [r3], -lr, lsr #10
     9c4:	052e2d03 	streq	r2, [lr, #-3331]!	; 0xfffff2fd
     9c8:	05010610 	streq	r0, [r1, #-1552]	; 0xfffff9f0
     9cc:	27052e06 	strcs	r2, [r5, -r6, lsl #28]
     9d0:	054a2503 	strbeq	r2, [sl, #-1283]	; 0xfffffafd
     9d4:	2e5b0306 	cdpcs	3, 5, cr0, cr11, cr6, {0}
     9d8:	30060505 	andcc	r0, r6, r5, lsl #10
     9dc:	01061105 	tsteq	r6, r5, lsl #2
     9e0:	4b060505 	blmi	181dfc <__data_load__+0x1807cc>
     9e4:	01061605 	tsteq	r6, r5, lsl #12
     9e8:	30060505 	andcc	r0, r6, r5, lsl #10
     9ec:	01060805 	tsteq	r6, r5, lsl #16
     9f0:	03060505 	movweq	r0, #25861	; 0x6505
     9f4:	08054a0c 	stmdaeq	r5, {r2, r3, r9, fp, lr}
     9f8:	05051406 	streq	r1, [r5, #-1030]	; 0xfffffbfa
     9fc:	054c062c 	strbeq	r0, [ip, #-1580]	; 0xfffff9d4
     a00:	05010608 	streq	r0, [r1, #-1544]	; 0xfffff9f8
     a04:	0a030605 	beq	c2220 <__data_load__+0xc0bf0>
     a08:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
     a0c:	02004a01 	andeq	r4, r0, #4096	; 0x1000
     a10:	00660104 	rsbeq	r0, r6, r4, lsl #2
     a14:	06010402 	streq	r0, [r1], -r2, lsl #8
     a18:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
     a1c:	02002e01 	andeq	r2, r0, #1, 28
     a20:	d6060104 	strle	r0, [r6], -r4, lsl #2
     a24:	01040200 	mrseq	r0, R12_usr
     a28:	04020001 	streq	r0, [r2], #-1
     a2c:	02000101 	andeq	r0, r0, #1073741824	; 0x40000000
     a30:	00010104 	andeq	r0, r1, r4, lsl #2
     a34:	01010402 	tsteq	r1, r2, lsl #8
     a38:	02003e05 	andeq	r3, r0, #5, 28	; 0x50
     a3c:	054a2504 	strbeq	r2, [sl, #-1284]	; 0xfffffafc
     a40:	04020003 	streq	r0, [r2], #-3
     a44:	0f051a25 	svceq	0x00051a25
     a48:	25040200 	strcs	r0, [r4, #-512]	; 0xfffffe00
     a4c:	11050106 	tstne	r5, r6, lsl #2
     a50:	25040200 	strcs	r0, [r4, #-512]	; 0xfffffe00
     a54:	000f052e 	andeq	r0, pc, lr, lsr #10
     a58:	2e250402 	cdpcs	4, 2, cr0, cr5, cr2, {0}
     a5c:	02000605 	andeq	r0, r0, #5242880	; 0x500000
     a60:	052e2504 	streq	r2, [lr, #-1284]!	; 0xfffffafc
     a64:	e4030603 	str	r0, [r3], #-1539	; 0xfffff9fd
     a68:	14054a00 	strne	r4, [r5], #-2560	; 0xfffff600
     a6c:	06050106 	streq	r0, [r5], -r6, lsl #2
     a70:	65140567 	ldrvs	r0, [r4, #-1383]	; 0xfffffa99
     a74:	2f060305 	svccs	0x00060305
     a78:	01061b05 	tsteq	r6, r5, lsl #22
     a7c:	03060505 	movweq	r0, #25861	; 0x6505
     a80:	0d05820e 	sfmeq	f0, 1, [r5, #-56]	; 0xffffffc8
     a84:	017cc503 	cmneq	ip, r3, lsl #10
     a88:	13170305 	tstne	r7, #335544320	; 0x14000000
     a8c:	13131313 	tstne	r3, #1275068416	; 0x4c000000
     a90:	05131314 	ldreq	r1, [r3, #-788]	; 0xfffffcec
     a94:	0b030606 	bleq	c22b4 <__data_load__+0xc0c84>
     a98:	03290501 			; <UNDEFINED> instruction: 0x03290501
     a9c:	06052e79 			; <UNDEFINED> instruction: 0x06052e79
     aa0:	03290535 			; <UNDEFINED> instruction: 0x03290535
     aa4:	1c052e79 	stcne	14, cr2, [r5], {121}	; 0x79
     aa8:	4a0f0552 	bmi	3c1ff8 <_bsl_base_address+0x1bfff8>
     aac:	78031605 	stmdavc	r3, {r0, r2, r9, sl, ip}
     ab0:	360f052e 	strcc	r0, [pc], -lr, lsr #10
     ab4:	2e301105 	rsfcss	f1, f0, f5
     ab8:	054d0605 	strbeq	r0, [sp, #-1541]	; 0xfffff9fb
     abc:	0d052b11 	vstreq	d2, [r5, #-68]	; 0xffffffbc
     ac0:	052e7203 	streq	r7, [lr, #-515]!	; 0xfffffdfd
     ac4:	13320603 	teqne	r2, #3145728	; 0x300000
     ac8:	13050518 	movwne	r0, #21784	; 0x5518
     acc:	15140305 	ldrne	r0, [r4, #-773]	; 0xfffffcfb
     ad0:	01060605 	tsteq	r6, r5, lsl #12
     ad4:	052f1605 	streq	r1, [pc, #-1541]!	; 4d7 <_malloc_r+0x7>
     ad8:	05690603 	strbeq	r0, [r9, #-1539]!	; 0xfffff9fd
     adc:	0501060e 	streq	r0, [r1, #-1550]	; 0xfffff9f2
     ae0:	0e053006 	cdpeq	0, 0, cr3, cr5, cr6, {0}
     ae4:	0603052c 	streq	r0, [r3], -ip, lsr #10
     ae8:	0606054c 	streq	r0, [r6], -ip, asr #10
     aec:	06050501 	streq	r0, [r5], -r1, lsl #10
     af0:	052e0903 	streq	r0, [lr, #-2307]!	; 0xfffff6fd
     af4:	05010608 	streq	r0, [r1, #-1544]	; 0xfffff9f8
     af8:	054b0607 	strbeq	r0, [fp, #-1543]	; 0xfffff9f9
     afc:	05140619 	ldreq	r0, [r4, #-1561]	; 0xfffff9e7
     b00:	11052e12 	tstne	r5, r2, lsl lr
     b04:	0607052c 	streq	r0, [r7], -ip, lsr #10
     b08:	15050530 	strne	r0, [r5, #-1328]	; 0xfffffad0
     b0c:	06120513 			; <UNDEFINED> instruction: 0x06120513
     b10:	3208050e 	andcc	r0, r8, #58720256	; 0x3800000
     b14:	0605052e 	streq	r0, [r5], -lr, lsr #10
     b18:	152e0903 	strne	r0, [lr, #-2307]!	; 0xfffff6fd
     b1c:	0f063005 	svceq	0x00063005
     b20:	88060505 	stmdahi	r6, {r0, r2, r8, sl}
     b24:	01061705 	tsteq	r6, r5, lsl #14
     b28:	30052e2e 	andcc	r2, r5, lr, lsr #28
     b2c:	052e7a03 	streq	r7, [lr, #-2563]!	; 0xfffff5fd
     b30:	05053417 	streq	r3, [r5, #-1047]	; 0xfffffbe9
     b34:	08052f06 	stmdaeq	r5, {r1, r2, r8, r9, sl, fp, sp}
     b38:	0d050106 	stfeqs	f0, [r5, #-24]	; 0xffffffe8
     b3c:	2c08054c 	cfstr32cs	mvfx0, [r8], {76}	; 0x4c
     b40:	0c031805 	stceq	8, cr1, [r3], {5}
     b44:	2e0e052e 	cfsh32cs	mvfx0, mvfx14, #30
     b48:	2b060505 	blcs	181f64 <__data_load__+0x180934>
     b4c:	01061005 	tsteq	r6, r5
     b50:	05320505 	ldreq	r0, [r2, #-1285]!	; 0xfffffafb
     b54:	08052a10 	stmdaeq	r5, {r4, r9, fp, sp}
     b58:	2a090534 	bcs	242030 <_bsl_base_address+0x40030>
     b5c:	052c1005 	streq	r1, [ip, #-5]!
     b60:	13300605 	teqne	r0, #5242880	; 0x500000
     b64:	10061413 	andne	r1, r6, r3, lsl r4
     b68:	05300805 	ldreq	r0, [r0, #-2053]!	; 0xfffff7fb
     b6c:	05350607 	ldreq	r0, [r5, #-1543]!	; 0xfffff9f9
     b70:	0501060a 	streq	r0, [r1, #-1546]	; 0xfffff9f6
     b74:	0a053009 	beq	14cba0 <__data_load__+0x14b570>
     b78:	06070548 	streq	r0, [r7], -r8, asr #10
     b7c:	063e0535 			; <UNDEFINED> instruction: 0x063e0535
     b80:	2d070514 	cfstr32cs	mvfx0, [r7, #-80]	; 0xffffffb0
     b84:	052d2405 	streq	r2, [sp, #-1029]!	; 0xfffffbfb
     b88:	07052e14 	smladeq	r5, r4, lr, r2
     b8c:	0a052f06 	beq	14c7ac <__data_load__+0x14b17c>
     b90:	3e055006 	cdpcc	0, 0, cr5, cr5, cr6, {0}
     b94:	2d070529 	cfstr32cs	mvfx0, [r7, #-164]	; 0xffffff5c
     b98:	3e052f06 	cdpcc	15, 0, cr2, cr5, cr6, {0}
     b9c:	07050106 	streq	r0, [r5, -r6, lsl #2]
     ba0:	3e053006 	cdpcc	0, 0, cr3, cr5, cr6, {0}
     ba4:	07050106 	streq	r0, [r5, -r6, lsl #2]
     ba8:	0a053106 	beq	14cfc8 <__data_load__+0x14b998>
     bac:	16050106 	strne	r0, [r5], -r6, lsl #2
     bb0:	2e02d303 	cdpcs	3, 0, cr13, cr2, cr3, {0}
     bb4:	0603052e 	streq	r0, [r3], -lr, lsr #10
     bb8:	2e7db203 	cdpcs	2, 7, cr11, cr13, cr3, {0}
     bbc:	01060605 	tsteq	r6, r5, lsl #12
     bc0:	4b060505 	blmi	181fdc <__data_load__+0x1809ac>
     bc4:	17060605 	strne	r0, [r6, -r5, lsl #12]
     bc8:	05291405 	streq	r1, [r9, #-1029]!	; 0xfffffbfb
     bcc:	05330603 	ldreq	r0, [r3, #-1539]!	; 0xfffff9fd
     bd0:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
     bd4:	052f0605 	streq	r0, [pc, #-1541]!	; 5d7 <_malloc_r+0x107>
     bd8:	05010613 	streq	r0, [r1, #-1555]	; 0xfffff9ed
     bdc:	06320603 	ldrteq	r0, [r2], -r3, lsl #12
     be0:	06050501 	streq	r0, [r5], -r1, lsl #10
     be4:	0102c303 	tsteq	r2, r3, lsl #6
     be8:	01061605 	tsteq	r6, r5, lsl #12
     bec:	4b060505 	blmi	182008 <__data_load__+0x1809d8>
     bf0:	01061d05 	tsteq	r6, r5, lsl #26
     bf4:	d8060705 	stmdale	r6, {r0, r2, r8, r9, sl}
     bf8:	060e054b 	streq	r0, [lr], -fp, asr #10
     bfc:	0b054a01 	bleq	153408 <__data_load__+0x151dd8>
     c00:	4a7ec503 	bmi	1fb2014 <_bsl_base_address+0x1db0014>
     c04:	03060505 	movweq	r0, #25861	; 0x6505
     c08:	054a00c8 	strbeq	r0, [sl, #-200]	; 0xffffff38
     c0c:	05010608 	streq	r0, [r1, #-1544]	; 0xfffff9f8
     c10:	054d0607 	strbeq	r0, [sp, #-1543]	; 0xfffff9f9
     c14:	0513060d 	ldreq	r0, [r3, #-1549]	; 0xfffff9f3
     c18:	0d052d12 	stceq	13, cr2, [r5, #-72]	; 0xffffffb8
     c1c:	2c0b0530 	cfstr32cs	mvfx0, [fp], {48}	; 0x30
     c20:	2f060705 	svccs	0x00060705
     c24:	010d0513 	tsteq	sp, r3, lsl r5
     c28:	05300905 	ldreq	r0, [r0, #-2309]!	; 0xfffff6fb
     c2c:	0513060f 	ldreq	r0, [r3, #-1551]	; 0xfffff9f1
     c30:	05302b0d 	ldreq	r2, [r0, #-2829]!	; 0xfffff4f3
     c34:	052f0609 	streq	r0, [pc, #-1545]!	; 633 <_malloc_r+0x163>
     c38:	05050f0d 	streq	r0, [r5, #-3853]	; 0xfffff0f3
     c3c:	14070536 	strne	r0, [r7], #-1334	; 0xfffffaca
     c40:	060f0513 			; <UNDEFINED> instruction: 0x060f0513
     c44:	07052e01 	streq	r2, [r5, -r1, lsl #28]
     c48:	09054d06 	stmdbeq	r5, {r1, r2, r8, sl, fp, lr}
     c4c:	06150516 			; <UNDEFINED> instruction: 0x06150516
     c50:	06220501 	strteq	r0, [r2], -r1, lsl #10
     c54:	0609052e 	streq	r0, [r9], -lr, lsr #10
     c58:	13054a01 	movwne	r4, #23041	; 0x5a01
     c5c:	052e1203 	streq	r1, [lr, #-515]!	; 0xfffffdfd
     c60:	04020038 	streq	r0, [r2], #-56	; 0xffffffc8
     c64:	4a6e0302 	bmi	1b81874 <_bsl_base_address+0x197f874>
     c68:	02002205 	andeq	r2, r0, #1342177280	; 0x50000000
     c6c:	2e060204 	cdpcs	2, 0, cr0, cr6, cr4, {0}
     c70:	02000905 	andeq	r0, r0, #81920	; 0x14000
     c74:	01060204 	tsteq	r6, r4, lsl #4
     c78:	4c060b05 			; <UNDEFINED> instruction: 0x4c060b05
     c7c:	10031005 	andne	r1, r3, r5
     c80:	03310501 	teqeq	r1, #4194304	; 0x400000
     c84:	1705016e 	strne	r0, [r5, -lr, ror #2]
     c88:	0b051406 	bleq	145ca8 <__data_load__+0x144678>
     c8c:	1c054b06 			; <UNDEFINED> instruction: 0x1c054b06
     c90:	0b050106 	bleq	1410b0 <__data_load__+0x13fa80>
     c94:	0e053006 	cdpeq	0, 0, cr3, cr5, cr6, {0}
     c98:	0d050106 	stfeqs	f0, [r5, #-24]	; 0xffffffe8
     c9c:	14064c06 	strne	r4, [r6], #-3078	; 0xfffff3fa
     ca0:	2c17052e 	cfldr32cs	mvfx0, [r7], {46}	; 0x2e
     ca4:	2f060d05 	svccs	0x00060d05
     ca8:	2e01014b 	adfcssm	f0, f1, #3.0
     cac:	052e2505 	streq	r2, [lr, #-1285]!	; 0xfffffafb
     cb0:	1306130d 	movwne	r1, #25357	; 0x630d
     cb4:	2e062e2d 	cdpcs	14, 0, cr2, cr6, cr13, {1}
     cb8:	16060605 	strne	r0, [r6], -r5, lsl #12
     cbc:	052a0d05 	streq	r0, [sl, #-3333]!	; 0xfffff2fb
     cc0:	054a062b 	strbeq	r0, [sl, #-1579]	; 0xfffff9d5
     cc4:	052f130d 	streq	r1, [pc, #-781]!	; 9bf <_malloc_r+0x4ef>
     cc8:	06052f2d 	streq	r2, [r5], -sp, lsr #30
     ccc:	2f0d0513 	svccs	0x000d0513
     cd0:	01061405 	tsteq	r6, r5, lsl #8
     cd4:	0607052e 	streq	r0, [r7], -lr, lsr #10
     cd8:	062e4503 	strteq	r4, [lr], -r3, lsl #10
     cdc:	2c302e2e 	ldccs	14, cr2, [r0], #-184	; 0xffffff48
     ce0:	2f062705 	svccs	0x00062705
     ce4:	2f130705 	svccs	0x00130705
     ce8:	01060e05 	tsteq	r6, r5, lsl #28
     cec:	0603052e 	streq	r0, [r3], -lr, lsr #10
     cf0:	2e018903 	vmlacs.f16	s16, s2, s6	; <UNPREDICTABLE>
     cf4:	06090513 			; <UNDEFINED> instruction: 0x06090513
     cf8:	2f030513 	svccs	0x00030513
     cfc:	064b062c 	strbeq	r0, [fp], -ip, lsr #12
     d00:	2b070515 	blcs	1c215c <__data_load__+0x1c0b2c>
     d04:	2f060305 	svccs	0x00060305
     d08:	15060a05 	strne	r0, [r6, #-2565]	; 0xfffff5fb
     d0c:	052b0305 	streq	r0, [fp, #-773]!	; 0xfffffcfb
     d10:	052f0623 	streq	r0, [pc, #-1571]!	; 6f5 <_malloc_r+0x225>
     d14:	052f1303 	streq	r1, [pc, #-771]!	; a19 <_malloc_r+0x549>
     d18:	66150601 	ldrvs	r0, [r5], -r1, lsl #12
     d1c:	03060905 	movweq	r0, #26885	; 0x6905
     d20:	2e2e7ec8 	cdpcs	14, 2, cr7, cr14, cr8, {6}
     d24:	2d13062e 	ldccs	6, cr0, [r3, #-184]	; 0xffffff48
     d28:	21052e06 	tstcs	r5, r6, lsl #28
     d2c:	1309052e 	movwne	r0, #38190	; 0x952e
     d30:	31061005 	tstcc	r6, r5
     d34:	052b0905 	streq	r0, [fp, #-2309]!	; 0xfffff6fb
     d38:	09053002 	stmdbeq	r5, {r1, ip, sp}
     d3c:	0629052c 	strteq	r0, [r9], -ip, lsr #10
     d40:	1302052f 	movwne	r0, #9519	; 0x252f
     d44:	052f0905 	streq	r0, [pc, #-2309]!	; 447 <__libc_init_array+0x3f>
     d48:	b4030601 	strlt	r0, [r3], #-1537	; 0xfffff9ff
     d4c:	05660101 	strbeq	r0, [r6, #-257]!	; 0xfffffeff
     d50:	04020005 	streq	r0, [r2], #-5
     d54:	f3030602 	vmax.u8	d0, d3, d2
     d58:	02002e7e 	andeq	r2, r0, #2016	; 0x7e0
     d5c:	4a060204 	bmi	181574 <__data_load__+0x17ff44>
     d60:	08040200 	stmdaeq	r4, {r9}
     d64:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
     d68:	02004a0a 	andeq	r4, r0, #40960	; 0xa000
     d6c:	66061a04 	strvs	r1, [r6], -r4, lsl #20
     d70:	1a040200 	bne	101578 <__data_load__+0xfff48>
     d74:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
     d78:	0200011a 	andeq	r0, r0, #-2147483642	; 0x80000006
     d7c:	004a2004 	subeq	r2, sl, r4
     d80:	06200402 	strteq	r0, [r0], -r2, lsl #8
     d84:	04020001 	streq	r0, [r2], #-1
     d88:	02008222 	andeq	r8, r0, #536870914	; 0x20000002
     d8c:	2e062204 	cdpcs	2, 0, cr2, cr6, cr4, {0}
     d90:	23040200 	movwcs	r0, #16896	; 0x4200
     d94:	0027054a 	eoreq	r0, r7, sl, asr #10
     d98:	06230402 	strteq	r0, [r3], -r2, lsl #8
     d9c:	00050536 	andeq	r0, r5, r6, lsr r5
     da0:	06240402 	strteq	r0, [r4], -r2, lsl #8
     da4:	002e7803 	eoreq	r7, lr, r3, lsl #16
     da8:	2e240402 	cdpcs	4, 2, cr0, cr4, cr2, {0}
     dac:	24040200 	strcs	r0, [r4], #-512	; 0xfffffe00
     db0:	000b052e 	andeq	r0, fp, lr, lsr #10
     db4:	06050402 	streq	r0, [r5], -r2, lsl #8
     db8:	00664503 	rsbeq	r4, r6, r3, lsl #10
     dbc:	4a080402 	bmi	201dcc <_tlv_base_address+0xdcc>
     dc0:	0a040200 	beq	1015c8 <__data_load__+0xfff98>
     dc4:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
     dc8:	02002f0a 	andeq	r2, r0, #10, 30	; 0x28
     dcc:	052d0a04 	streq	r0, [sp, #-2564]!	; 0xfffff5fc
     dd0:	fc030608 	stc2	6, cr0, [r3], {8}
     dd4:	07056600 	streq	r6, [r5, -r0, lsl #12]
     dd8:	01090306 	tsteq	r9, r6, lsl #6
     ddc:	030c052e 	movweq	r0, #50478	; 0xc52e
     de0:	0f052e77 	svceq	0x00052e77
     de4:	2e090306 	cdpcs	3, 0, cr0, cr9, cr6, {0}
     de8:	01060705 	tsteq	r6, r5, lsl #14
     dec:	03060d05 	movweq	r0, #27909	; 0x6d05
     df0:	13064a6e 	movwne	r4, #27246	; 0x6a6e
     df4:	2f2e2e2d 	svccs	0x002e2e2d
     df8:	012f062d 			; <UNDEFINED> instruction: 0x012f062d
     dfc:	0606052e 	streq	r0, [r6], -lr, lsr #10
     e00:	2c0d0514 	cfstr32cs	mvfx0, [sp], {20}
     e04:	25052e06 	strcs	r2, [r5, #-3590]	; 0xfffff1fa
     e08:	132d052e 			; <UNDEFINED> instruction: 0x132d052e
     e0c:	05130605 	ldreq	r0, [r3, #-1541]	; 0xfffff9fb
     e10:	14052f0d 	strne	r2, [r5], #-3853	; 0xfffff0f3
     e14:	09050106 	stmdbeq	r5, {r1, r2, r8}
     e18:	2e7eef03 	cdpcs	15, 7, cr14, cr14, cr3, {0}
     e1c:	03060705 	movweq	r0, #26373	; 0x6705
     e20:	1105663f 	tstne	r5, pc, lsr r6
     e24:	07050106 	streq	r0, [r5, -r6, lsl #2]
     e28:	14062f06 	strne	r2, [r6], #-3846	; 0xfffff0fa
     e2c:	064b062c 	strbeq	r0, [fp], -ip, lsr #12
     e30:	4a062a16 	bmi	18b690 <__data_load__+0x18a060>
     e34:	054a2505 	strbeq	r2, [sl, #-1285]	; 0xfffffafb
     e38:	052f1307 	streq	r1, [pc, #-775]!	; b39 <_malloc_r+0x669>
     e3c:	07052f27 	streq	r2, [r5, -r7, lsr #30]
     e40:	0e052f13 	mcreq	15, 0, r2, cr5, cr3, {0}
     e44:	052e0106 	streq	r0, [lr, #-262]!	; 0xfffffefa
     e48:	04020005 	streq	r0, [r2], #-5
     e4c:	2e0f0307 	cdpcs	3, 0, cr0, cr15, cr7, {0}
     e50:	02000b05 	andeq	r0, r0, #5120	; 0x1400
     e54:	46030704 	strmi	r0, [r3], -r4, lsl #14
     e58:	0402009e 	streq	r0, [r2], #-158	; 0xffffff62
     e5c:	07052d07 	streq	r2, [r5, -r7, lsl #26]
     e60:	7eb20306 	cdpvc	3, 11, cr0, cr2, cr6, {0}
     e64:	12051366 	andne	r1, r5, #-1744830463	; 0x98000001
     e68:	0b051106 	bleq	145288 <__data_load__+0x143c58>
     e6c:	0605052f 	streq	r0, [r5], -pc, lsr #10
     e70:	06300534 			; <UNDEFINED> instruction: 0x06300534
     e74:	17052e2e 	strne	r2, [r5, -lr, lsr #28]
     e78:	03300588 	teqeq	r0, #136, 10	; 0x22000000
     e7c:	05054a7a 	streq	r4, [r5, #-2682]	; 0xfffff586
     e80:	05153106 	ldreq	r3, [r5, #-262]	; 0xfffffefa
     e84:	052e0617 	streq	r0, [lr, #-1559]!	; 0xfffff9e9
     e88:	052f0605 	streq	r0, [pc, #-1541]!	; 88b <_malloc_r+0x3bb>
     e8c:	05010608 	streq	r0, [r1, #-1544]	; 0xfffff9f8
     e90:	13840602 	orrne	r0, r4, #2097152	; 0x200000
     e94:	04051313 	streq	r1, [r5], #-787	; 0xfffffced
     e98:	060c0513 			; <UNDEFINED> instruction: 0x060c0513
     e9c:	460d0501 	strmi	r0, [sp], -r1, lsl #10
     ea0:	0a031805 	beq	c6ebc <__data_load__+0xc588c>
     ea4:	07054a2e 	streq	r4, [r5, -lr, lsr #20]
     ea8:	0102c603 	tsteq	r2, r3, lsl #12
     eac:	2c09052e 	cfstr32cs	mvfx0, [r9], {46}	; 0x2e
     eb0:	2f060805 	svccs	0x00060805
     eb4:	05130f05 	ldreq	r0, [r3, #-3845]	; 0xfffff0fb
     eb8:	06010607 	streq	r0, [r1], -r7, lsl #12
     ebc:	052e7703 	streq	r7, [lr, #-1795]!	; 0xfffff8fd
     ec0:	05171409 	ldreq	r1, [r7, #-1033]	; 0xfffffbf7
     ec4:	050d060c 	streq	r0, [sp, #-1548]	; 0xfffff9f4
     ec8:	054c060b 	strbeq	r0, [ip, #-1547]	; 0xfffff9f5
     ecc:	05010615 	streq	r0, [r1, #-1557]	; 0xfffff9eb
     ed0:	0567060b 	strbeq	r0, [r7, #-1547]!	; 0xfffff9f5
     ed4:	27051a07 	strcs	r1, [r5, -r7, lsl #20]
     ed8:	052e0106 	streq	r0, [lr, #-262]!	; 0xfffffefa
     edc:	05d8060f 	ldrbeq	r0, [r8, #1551]	; 0x60f
     ee0:	11054c0b 	tstne	r5, fp, lsl #24
     ee4:	0f051306 	svceq	0x00051306
     ee8:	0b05302b 	bleq	14cf9c <__data_load__+0x14b96c>
     eec:	0f052f06 	svceq	0x00052f06
     ef0:	0605050f 	streq	r0, [r5], -pc, lsl #10
     ef4:	2e7fa303 	cdpcs	3, 7, cr10, cr15, cr3, {0}
     ef8:	0321052e 			; <UNDEFINED> instruction: 0x0321052e
     efc:	052e7de7 	streq	r7, [lr, #-3559]!	; 0xfffff219
     f00:	05054a07 	streq	r4, [r5, #-2567]	; 0xfffff5f9
     f04:	05134c06 	ldreq	r4, [r3, #-3078]	; 0xfffff3fa
     f08:	052d060e 	streq	r0, [sp, #-1550]!	; 0xfffff9f2
     f0c:	4a2e2f05 	bmi	b8cb28 <_bsl_base_address+0x98ab28>
     f10:	92031605 	andls	r1, r3, #5242880	; 0x500000
     f14:	052e0103 	streq	r0, [lr, #-259]!	; 0xfffffefd
     f18:	04020005 	streq	r0, [r2], #-5
     f1c:	8403061c 	strhi	r0, [r3], #-1564	; 0xfffff9e4
     f20:	02004a7f 	andeq	r4, r0, #520192	; 0x7f000
     f24:	2e061c04 	cdpcs	12, 0, cr1, cr6, cr4, {0}
     f28:	1c040200 	sfmne	f0, 4, [r4], {-0}
     f2c:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
     f30:	02004a1c 	andeq	r4, r0, #28, 20	; 0x1c000
     f34:	002e0b04 	eoreq	r0, lr, r4, lsl #22
     f38:	4a0d0402 	bmi	341f48 <_bsl_base_address+0x13ff48>
     f3c:	02000b05 	andeq	r0, r0, #5120	; 0x1400
     f40:	45030b04 	strmi	r0, [r3, #-2820]	; 0xfffff4fc
     f44:	0402009e 	streq	r0, [r2], #-158	; 0xffffff62
     f48:	02004a0d 	andeq	r4, r0, #53248	; 0xd000
     f4c:	002f0d04 	eoreq	r0, pc, r4, lsl #26
     f50:	2d0d0402 	cfstrscs	mvf0, [sp, #-8]
     f54:	0d040200 	sfmeq	f0, 4, [r4, #-0]
     f58:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
     f5c:	02002e0d 	andeq	r2, r0, #13, 28	; 0xd0
     f60:	052e0d04 	streq	r0, [lr, #-3332]!	; 0xfffff2fc
     f64:	04020005 	streq	r0, [r2], #-5
     f68:	013b030e 	teqeq	fp, lr, lsl #6
     f6c:	10040200 	andne	r0, r4, r0, lsl #4
     f70:	000b054a 	andeq	r0, fp, sl, asr #10
     f74:	030e0402 	movweq	r0, #58370	; 0xe402
     f78:	02009e45 	andeq	r9, r0, #1104	; 0x450
     f7c:	00661004 	rsbeq	r1, r6, r4
     f80:	2f100402 	svccs	0x00100402
     f84:	10040200 	andne	r0, r4, r0, lsl #4
     f88:	0609052d 	streq	r0, [r9], -sp, lsr #10
     f8c:	667ee503 	ldrbtvs	lr, [lr], -r3, lsl #10
     f90:	03061605 	movweq	r1, #26117	; 0x6605
     f94:	056602d2 	strbeq	r0, [r6, #-722]!	; 0xfffffd2e
     f98:	7db20307 	ldcvc	3, cr0, [r2, #28]!
     f9c:	0316052e 	tsteq	r6, #192937984	; 0xb800000
     fa0:	052e02ce 	streq	r0, [lr, #-718]!	; 0xfffffd32
     fa4:	04020005 	streq	r0, [r2], #-5
     fa8:	7f840311 	svcvc	0x00840311
     fac:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
     fb0:	05200811 	streq	r0, [r0, #-2065]!	; 0xfffff7ef
     fb4:	4a45030b 	bmi	1141be8 <_bsl_base_address+0xf3fbe8>
     fb8:	96031d05 	strls	r1, [r3], -r5, lsl #26
     fbc:	0c024a01 			; <UNDEFINED> instruction: 0x0c024a01
     fc0:	d1010100 	mrsle	r0, (UNDEF: 17)
     fc4:	03000001 	movweq	r0, #1
     fc8:	0000b900 	andeq	fp, r0, r0, lsl #18
     fcc:	fb010200 	blx	417d6 <__data_load__+0x401a6>
     fd0:	01000d0e 	tsteq	r0, lr, lsl #26
     fd4:	00010101 	andeq	r0, r1, r1, lsl #2
     fd8:	00010000 	andeq	r0, r1, r0
     fdc:	2e2e0100 	sufcse	f0, f6, f0
     fe0:	2f2e2e2f 	svccs	0x002e2e2f
     fe4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
     fe8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
     fec:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
     ff0:	2f62696c 	svccs	0x0062696c
     ff4:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
     ff8:	7274732f 	rsbsvc	r7, r4, #-1140850688	; 0xbc000000
     ffc:	00676e69 	rsbeq	r6, r7, r9, ror #28
    1000:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
    1004:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1008:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    100c:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    1010:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1014:	61652d65 	cmnvs	r5, r5, ror #26
    1018:	312f6962 			; <UNDEFINED> instruction: 0x312f6962
    101c:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
    1020:	6e692f31 	mcrvs	15, 3, r2, cr9, cr1, {1}
    1024:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    1028:	622f0065 	eorvs	r0, pc, #101	; 0x65
    102c:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1030:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1034:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
    1038:	30334270 	eorscc	r4, r3, r0, ror r2
    103c:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
    1040:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1044:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
    1048:	2f302e33 	svccs	0x00302e33
    104c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1050:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; eb4 <__call_exitprocs>
    1054:	2f636269 	svccs	0x00636269
    1058:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    105c:	00656475 	rsbeq	r6, r5, r5, ror r4
    1060:	6d656d00 	stclvs	13, cr6, [r5, #-0]
    1064:	2e746573 	mrccs	5, 3, r6, cr4, cr3, {3}
    1068:	00010063 	andeq	r0, r1, r3, rrx
    106c:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
    1070:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
    1074:	00020068 	andeq	r0, r2, r8, rrx
    1078:	72747300 	rsbsvc	r7, r4, #0, 6
    107c:	2e676e69 	cdpcs	14, 6, cr6, cr7, cr9, {3}
    1080:	00030068 	andeq	r0, r3, r8, rrx
    1084:	01050000 	mrseq	r0, (UNDEF: 5)
    1088:	c0020500 	andgt	r0, r2, r0, lsl #10
    108c:	0300000c 	movweq	r0, #12
    1090:	03050128 	movweq	r0, #20776	; 0x5128
    1094:	13131513 	tstne	r3, #79691776	; 0x4c00000
    1098:	09051513 	stmdbeq	r5, {r0, r1, r4, r8, sl, ip}
    109c:	4c070501 	cfstr32mi	mvfx0, [r7], {1}
    10a0:	01060a05 	tsteq	r6, r5, lsl #20
    10a4:	052e0c05 	streq	r0, [lr, #-3077]!	; 0xfffff3fb
    10a8:	09052e0a 	stmdbeq	r5, {r1, r3, r9, sl, fp, sp}
    10ac:	052e7503 	streq	r7, [lr, #-1283]!	; 0xfffffafd
    10b0:	2e0c0310 	mcrcs	3, 0, r0, cr12, cr0, {0}
    10b4:	05490c05 	strbeq	r0, [r9, #-3077]	; 0xfffff3fb
    10b8:	07052e0a 	streq	r2, [r5, -sl, lsl #28]
    10bc:	09054a06 	stmdbeq	r5, {r1, r2, r9, fp, lr}
    10c0:	060e0513 			; <UNDEFINED> instruction: 0x060e0513
    10c4:	06090501 	streq	r0, [r9], -r1, lsl #10
    10c8:	5203052b 	andpl	r0, r3, #180355072	; 0xac00000
    10cc:	01060605 	tsteq	r6, r5, lsl #12
    10d0:	6e030105 	adfvss	f0, f3, f5
    10d4:	3510054a 	ldrcc	r0, [r0, #-1354]	; 0xfffffab6
    10d8:	03060705 	movweq	r0, #26373	; 0x6705
    10dc:	05162e0e 	ldreq	r2, [r6, #-3598]	; 0xfffff1f2
    10e0:	0501060e 	streq	r0, [r1, #-1550]	; 0xfffff9f2
    10e4:	052f0607 	streq	r0, [pc, #-1543]!	; ae5 <_malloc_r+0x615>
    10e8:	0517060d 	ldreq	r0, [r7, #-1549]	; 0xfffff9f3
    10ec:	0705290e 	streq	r2, [r5, -lr, lsl #18]
    10f0:	14052f06 	strne	r2, [r5], #-3846	; 0xfffff0fa
    10f4:	160d0501 	strne	r0, [sp], -r1, lsl #10
    10f8:	0b052e06 	bleq	14c918 <__data_load__+0x14b2e8>
    10fc:	1b05bc06 	blne	17011c <__data_load__+0x16eaec>
    1100:	0b050106 	bleq	141520 <__data_load__+0x13fef0>
    1104:	1b052f06 	blne	14cd24 <__data_load__+0x14b6f4>
    1108:	0b050106 	bleq	141528 <__data_load__+0x13fef8>
    110c:	1b052f06 	blne	14cd2c <__data_load__+0x14b6fc>
    1110:	0b050106 	bleq	141530 <__data_load__+0x13ff00>
    1114:	1b052f06 	blne	14cd34 <__data_load__+0x14b704>
    1118:	0b050106 	bleq	141538 <__data_load__+0x13ff08>
    111c:	0d052f06 	stceq	15, cr2, [r5, #-24]	; 0xffffffe8
    1120:	06017a03 	streq	r7, [r1], -r3, lsl #20
    1124:	4f18052e 	svcmi	0x0018052e
    1128:	05320d05 	ldreq	r0, [r2, #-3333]!	; 0xfffff2fb
    112c:	0d052a18 	vstreq	s4, [r5, #-96]	; 0xffffffa0
    1130:	0631062f 	ldrteq	r0, [r1], -pc, lsr #12
    1134:	0b052e2e 	bleq	14c9f4 <__data_load__+0x14b3c4>
    1138:	1b056806 	blne	15b158 <__data_load__+0x159b28>
    113c:	0b050106 	bleq	14155c <__data_load__+0x13ff2c>
    1140:	0d052f06 	stceq	15, cr2, [r5, #-24]	; 0xffffffe8
    1144:	054d060f 	strbeq	r0, [sp, #-1551]	; 0xfffff9f1
    1148:	06360609 	ldrteq	r0, [r6], -r9, lsl #12
    114c:	03100501 	tsteq	r0, #4194304	; 0x400000
    1150:	052e4a5a 	streq	r4, [lr, #-2650]!	; 0xfffff5a6
    1154:	27030605 	strcs	r0, [r3, -r5, lsl #12]
    1158:	060a052e 	streq	r0, [sl], -lr, lsr #10
    115c:	06090501 	streq	r0, [r9], -r1, lsl #10
    1160:	0501062d 	streq	r0, [r1, #-1581]	; 0xfffff9d3
    1164:	052e4e01 	streq	r4, [lr, #-3585]!	; 0xfffff1ff
    1168:	062a0609 	strteq	r0, [sl], -r9, lsl #12
    116c:	03100501 	tsteq	r0, #4194304	; 0x400000
    1170:	052e4a5a 	streq	r4, [lr, #-2650]!	; 0xfffff5a6
    1174:	27030605 	strcs	r0, [r3, -r5, lsl #12]
    1178:	060a052e 	streq	r0, [sl], -lr, lsr #10
    117c:	06090501 	streq	r0, [r9], -r1, lsl #10
    1180:	0501062d 	streq	r0, [r1, #-1581]	; 0xfffff9d3
    1184:	66710318 			; <UNDEFINED> instruction: 0x66710318
    1188:	0309052e 	movweq	r0, #38190	; 0x952e
    118c:	0d052e5d 	stceq	14, cr2, [r5, #-372]	; 0xfffffe8c
    1190:	024a1e03 	subeq	r1, sl, #3, 28	; 0x30
    1194:	01010004 	tsteq	r1, r4
    1198:	00000131 	andeq	r0, r0, r1, lsr r1
    119c:	01130003 	tsteq	r3, r3
    11a0:	01020000 	mrseq	r0, (UNDEF: 2)
    11a4:	000d0efb 	strdeq	r0, [sp], -fp
    11a8:	01010101 	tsteq	r1, r1, lsl #2
    11ac:	01000000 	mrseq	r0, (UNDEF: 0)
    11b0:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
    11b4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    11b8:	2f2e2e2f 	svccs	0x002e2e2f
    11bc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    11c0:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xfffff0d2
    11c4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    11c8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    11cc:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
    11d0:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
    11d4:	73752f00 	cmnvc	r5, #0, 30
    11d8:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
    11dc:	63672f62 	cmnvs	r7, #392	; 0x188
    11e0:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
    11e4:	6f6e2d6d 	svcvs	0x006e2d6d
    11e8:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    11ec:	2f696261 	svccs	0x00696261
    11f0:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
    11f4:	692f312e 	stmdbvs	pc!, {r1, r2, r3, r5, r8, ip, sp}	; <UNPREDICTABLE>
    11f8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    11fc:	2f006564 	svccs	0x00006564
    1200:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1204:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
    1208:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    120c:	3342702d 	movtcc	r7, #8237	; 0x202d
    1210:	2f656430 	svccs	0x00656430
    1214:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1218:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
    121c:	302e332e 	eorcc	r3, lr, lr, lsr #6
    1220:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1224:	2f62696c 	svccs	0x0062696c
    1228:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    122c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
    1230:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
    1234:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
    1238:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    123c:	2f646c69 	svccs	0x00646c69
    1240:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1244:	702d6269 	eorvc	r6, sp, r9, ror #4
    1248:	64303342 	ldrtvs	r3, [r0], #-834	; 0xfffffcbe
    124c:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xfffff09b
    1250:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1254:	332e332d 			; <UNDEFINED> instruction: 0x332e332d
    1258:	6e2f302e 	cdpvs	0, 2, cr3, cr15, cr14, {1}
    125c:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1260:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1264:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
    1268:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    126c:	00006564 	andeq	r6, r0, r4, ror #10
    1270:	636f6c6d 	cmnvs	pc, #27904	; 0x6d00
    1274:	00632e6b 	rsbeq	r2, r3, fp, ror #28
    1278:	73000001 	movwvc	r0, #1
    127c:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
    1280:	00682e66 	rsbeq	r2, r8, r6, ror #28
    1284:	5f000002 	svcpl	0x00000002
    1288:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    128c:	00682e73 	rsbeq	r2, r8, r3, ror lr
    1290:	72000003 	andvc	r0, r0, #3
    1294:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    1298:	0300682e 	movweq	r6, #2094	; 0x82e
    129c:	6f6c0000 	svcvs	0x006c0000
    12a0:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
    12a4:	00000300 	andeq	r0, r0, r0, lsl #6
    12a8:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    12ac:	682e636f 	stmdavs	lr!, {r0, r1, r2, r3, r5, r6, r8, r9, sp, lr}
    12b0:	00000400 	andeq	r0, r0, r0, lsl #8
    12b4:	00010500 	andeq	r0, r1, r0, lsl #10
    12b8:	0ddc0205 	lfmeq	f0, 2, [ip, #20]
    12bc:	29030000 	stmdbcs	r3, {}	; <UNPREDICTABLE>
    12c0:	14030501 	strne	r0, [r3], #-1281	; 0xfffffaff
    12c4:	14060105 	strne	r0, [r6], #-261	; 0xfffffefb
    12c8:	01000402 	tsteq	r0, r2, lsl #8
    12cc:	00018e01 	andeq	r8, r1, r1, lsl #28
    12d0:	1d000300 	stcne	3, cr0, [r0, #-0]
    12d4:	02000001 	andeq	r0, r0, #1
    12d8:	0d0efb01 	vstreq	d15, [lr, #-4]
    12dc:	01010100 	mrseq	r0, (UNDEF: 17)
    12e0:	00000001 	andeq	r0, r0, r1
    12e4:	01000001 	tsteq	r0, r1
    12e8:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    12ec:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    12f0:	2f2e2e2f 	svccs	0x002e2e2f
    12f4:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
    12f8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    12fc:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1300:	722f6362 	eorvc	r6, pc, #-2013265919	; 0x88000001
    1304:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    1308:	73752f00 	cmnvc	r5, #0, 30
    130c:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
    1310:	63672f62 	cmnvs	r7, #392	; 0x188
    1314:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
    1318:	6f6e2d6d 	svcvs	0x006e2d6d
    131c:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    1320:	2f696261 	svccs	0x00696261
    1324:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
    1328:	692f312e 	stmdbvs	pc!, {r1, r2, r3, r5, r8, ip, sp}	; <UNPREDICTABLE>
    132c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    1330:	2f006564 	svccs	0x00006564
    1334:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    1338:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
    133c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1340:	3342702d 	movtcc	r7, #8237	; 0x202d
    1344:	2f656430 	svccs	0x00656430
    1348:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    134c:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
    1350:	302e332e 	eorcc	r3, lr, lr, lsr #6
    1354:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1358:	2f62696c 	svccs	0x0062696c
    135c:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    1360:	636e692f 	cmnvs	lr, #770048	; 0xbc000
    1364:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
    1368:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
    136c:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    1370:	2f646c69 	svccs	0x00646c69
    1374:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1378:	702d6269 	eorvc	r6, sp, r9, ror #4
    137c:	64303342 	ldrtvs	r3, [r0], #-834	; 0xfffffcbe
    1380:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xfffff09b
    1384:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1388:	332e332d 			; <UNDEFINED> instruction: 0x332e332d
    138c:	6e2f302e 	cdpvs	0, 2, cr3, cr15, cr14, {1}
    1390:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1394:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1398:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
    139c:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    13a0:	00006564 	andeq	r6, r0, r4, ror #10
    13a4:	6b726273 	blvs	1c99d78 <_bsl_base_address+0x1a97d78>
    13a8:	00632e72 	rsbeq	r2, r3, r2, ror lr
    13ac:	73000001 	movwvc	r0, #1
    13b0:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
    13b4:	00682e66 	rsbeq	r2, r8, r6, ror #28
    13b8:	5f000002 	svcpl	0x00000002
    13bc:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    13c0:	00682e73 	rsbeq	r2, r8, r3, ror lr
    13c4:	72000003 	andvc	r0, r0, #3
    13c8:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    13cc:	0300682e 	movweq	r6, #2094	; 0x82e
    13d0:	6f6c0000 	svcvs	0x006c0000
    13d4:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
    13d8:	00000300 	andeq	r0, r0, r0, lsl #6
    13dc:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    13e0:	00682e74 	rsbeq	r2, r8, r4, ror lr
    13e4:	75000004 	strvc	r0, [r0, #-4]
    13e8:	7473696e 	ldrbtvc	r6, [r3], #-2414	; 0xfffff692
    13ec:	00682e64 	rsbeq	r2, r8, r4, ror #28
    13f0:	00000003 	andeq	r0, r0, r3
    13f4:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
    13f8:	000de402 	andeq	lr, sp, r2, lsl #8
    13fc:	012d0300 			; <UNDEFINED> instruction: 0x012d0300
    1400:	13130305 	tstne	r3, #335544320	; 0x14000000
    1404:	06090514 			; <UNDEFINED> instruction: 0x06090514
    1408:	2a010501 	bcs	42814 <__data_load__+0x411e4>
    140c:	05320905 	ldreq	r0, [r2, #-2309]!	; 0xfffff6fb
    1410:	17052a01 	strne	r2, [r5, -r1, lsl #20]
    1414:	2d090533 	cfstr32cs	mvfx0, [r9, #-204]	; 0xffffff34
    1418:	2f060305 	svccs	0x00060305
    141c:	01061705 	tsteq	r6, r5, lsl #14
    1420:	052e0605 	streq	r0, [lr, #-1541]!	; 0xfffff9fb
    1424:	052e4d01 	streq	r4, [lr, #-3329]!	; 0xfffff2ff
    1428:	0402003e 	streq	r0, [r2], #-62	; 0xffffffc2
    142c:	35052b01 	strcc	r2, [r5, #-2817]	; 0xfffff4ff
    1430:	01040200 	mrseq	r0, R12_usr
    1434:	0005052e 	andeq	r0, r5, lr, lsr #10
    1438:	06010402 	streq	r0, [r1], -r2, lsl #8
    143c:	0011052f 	andseq	r0, r1, pc, lsr #10
    1440:	06010402 	streq	r0, [r1], -r2, lsl #8
    1444:	00030501 	andeq	r0, r3, r1, lsl #10
    1448:	06010402 	streq	r0, [r1], -r2, lsl #8
    144c:	0001052f 	andeq	r0, r1, pc, lsr #10
    1450:	06010402 	streq	r0, [r1], -r2, lsl #8
    1454:	04020013 	streq	r0, [r2], #-19	; 0xffffffed
    1458:	04022e01 	streq	r2, [r2], #-3585	; 0xfffff1ff
    145c:	8c010100 	stfhis	f0, [r1], {-0}
    1460:	03000001 	movweq	r0, #1
    1464:	0000e000 	andeq	lr, r0, r0
    1468:	fb010200 	blx	41c72 <__data_load__+0x40642>
    146c:	01000d0e 	tsteq	r0, lr, lsl #26
    1470:	00010101 	andeq	r0, r1, r1, lsl #2
    1474:	00010000 	andeq	r0, r1, r0
    1478:	2e2e0100 	sufcse	f0, f6, f0
    147c:	2f2e2e2f 	svccs	0x002e2e2f
    1480:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1484:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1488:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    148c:	2f62696c 	svccs	0x0062696c
    1490:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    1494:	6474732f 	ldrbtvs	r7, [r4], #-815	; 0xfffffcd1
    1498:	0062696c 	rsbeq	r6, r2, ip, ror #18
    149c:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
    14a0:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    14a4:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    14a8:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    14ac:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    14b0:	61652d65 	cmnvs	r5, r5, ror #26
    14b4:	312f6962 			; <UNDEFINED> instruction: 0x312f6962
    14b8:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
    14bc:	6e692f31 	mcrvs	15, 3, r2, cr9, cr1, {1}
    14c0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    14c4:	622f0065 	eorvs	r0, pc, #101	; 0x65
    14c8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    14cc:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    14d0:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
    14d4:	30334270 	eorscc	r4, r3, r0, ror r2
    14d8:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
    14dc:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    14e0:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
    14e4:	2f302e33 	svccs	0x00302e33
    14e8:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    14ec:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 1350 <_free_r+0x284>
    14f0:	2f636269 	svccs	0x00636269
    14f4:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    14f8:	2f656475 	svccs	0x00656475
    14fc:	00737973 	rsbseq	r7, r3, r3, ror r9
    1500:	615f5f00 	cmpvs	pc, r0, lsl #30
    1504:	69786574 	ldmdbvs	r8!, {r2, r4, r5, r6, r8, sl, sp, lr}^
    1508:	00632e74 	rsbeq	r2, r3, r4, ror lr
    150c:	73000001 	movwvc	r0, #1
    1510:	65646474 	strbvs	r6, [r4, #-1140]!	; 0xfffffb8c
    1514:	00682e66 	rsbeq	r2, r8, r6, ror #28
    1518:	5f000002 	svcpl	0x00000002
    151c:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
    1520:	00682e73 	rsbeq	r2, r8, r3, ror lr
    1524:	72000003 	andvc	r0, r0, #3
    1528:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
    152c:	0300682e 	movweq	r6, #2094	; 0x82e
    1530:	6f6c0000 	svcvs	0x006c0000
    1534:	682e6b63 	stmdavs	lr!, {r0, r1, r5, r6, r8, r9, fp, sp, lr}
    1538:	00000300 	andeq	r0, r0, r0, lsl #6
    153c:	78657461 	stmdavc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
    1540:	682e7469 	stmdavs	lr!, {r0, r3, r5, r6, sl, ip, sp, lr}
    1544:	00000100 	andeq	r0, r0, r0, lsl #2
    1548:	00010500 	andeq	r0, r1, r0, lsl #10
    154c:	0e280205 	cdpeq	2, 2, cr0, cr8, cr5, {0}
    1550:	c7030000 	strgt	r0, [r3, -r0]
    1554:	03050100 	movweq	r0, #20736	; 0x5100
    1558:	15151313 	ldrne	r1, [r5, #-787]	; 0xfffffced
    155c:	01060705 	tsteq	r6, r5, lsl #14
    1560:	78030105 	stmdavc	r3, {r0, r2, r8}
    1564:	3607052e 	strcc	r0, [r7], -lr, lsr #10
    1568:	052e0505 	streq	r0, [lr, #-1285]!	; 0xfffffafb
    156c:	052f0603 	streq	r0, [pc, #-1539]!	; f71 <__call_exitprocs+0xbd>
    1570:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
    1574:	05300607 	ldreq	r0, [r0, #-1543]!	; 0xfffff9f9
    1578:	0501061a 	streq	r0, [r1, #-1562]	; 0xfffff9e6
    157c:	03052e16 	movweq	r2, #24086	; 0x5e16
    1580:	08053506 	stmdaeq	r5, {r1, r2, r8, sl, ip, sp}
    1584:	06050106 	streq	r0, [r5], -r6, lsl #2
    1588:	0603052e 	streq	r0, [r3], -lr, lsr #10
    158c:	054a1c03 	strbeq	r1, [sl, #-3075]	; 0xfffff3fd
    1590:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
    1594:	24030603 	strcs	r0, [r3], #-1539	; 0xfffff9fd
    1598:	060a054a 	streq	r0, [sl], -sl, asr #10
    159c:	2a120516 	bcs	4829fc <_bsl_base_address+0x2809fc>
    15a0:	052e1605 	streq	r1, [lr, #-1541]!	; 0xfffff9fb
    15a4:	16052e12 			; <UNDEFINED> instruction: 0x16052e12
    15a8:	0603052e 	streq	r0, [r3], -lr, lsr #10
    15ac:	01051430 	tsteq	r5, r0, lsr r4
    15b0:	07051306 	streq	r1, [r5, -r6, lsl #6]
    15b4:	4a730306 	bmi	1cc21d4 <_bsl_base_address+0x1ac01d4>
    15b8:	060a0514 			; <UNDEFINED> instruction: 0x060a0514
    15bc:	2c1c0515 	cfldr32cs	mvfx0, [ip], {21}
    15c0:	2d1e052e 	cfldr32cs	mvfx0, [lr, #-184]	; 0xffffff48
    15c4:	2f060705 	svccs	0x00060705
    15c8:	01061c05 	tsteq	r6, r5, lsl #24
    15cc:	052e1605 	streq	r1, [lr, #-1541]!	; 0xfffff9fb
    15d0:	05670607 	strbeq	r0, [r7, #-1543]!	; 0xfffff9f9
    15d4:	05010622 	streq	r0, [r1, #-1570]	; 0xfffff9de
    15d8:	052f0607 	streq	r0, [pc, #-1543]!	; fd9 <_malloc_trim_r+0xd>
    15dc:	10051302 	andne	r1, r5, r2, lsl #6
    15e0:	4a2e0106 	bmi	b81a00 <_bsl_base_address+0x97fa00>
    15e4:	48030e05 	stmdami	r3, {r0, r2, r9, sl, fp}
    15e8:	04022e2e 	streq	r2, [r2], #-3630	; 0xfffff1d2
    15ec:	85010100 	strhi	r0, [r1, #-256]	; 0xffffff00
    15f0:	03000002 	movweq	r0, #2
    15f4:	00011b00 	andeq	r1, r1, r0, lsl #22
    15f8:	fb010200 	blx	41e02 <__data_load__+0x407d2>
    15fc:	01000d0e 	tsteq	r0, lr, lsl #26
    1600:	00010101 	andeq	r0, r1, r1, lsl #2
    1604:	00010000 	andeq	r0, r1, r0
    1608:	2e2e0100 	sufcse	f0, f6, f0
    160c:	2f2e2e2f 	svccs	0x002e2e2f
    1610:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1614:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1618:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    161c:	2f62696c 	svccs	0x0062696c
    1620:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    1624:	6474732f 	ldrbtvs	r7, [r4], #-815	; 0xfffffcd1
    1628:	0062696c 	rsbeq	r6, r2, ip, ror #18
    162c:	7273752f 	rsbsvc	r7, r3, #197132288	; 0xbc00000
    1630:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1634:	6363672f 	cmnvs	r3, #12320768	; 0xbc0000
    1638:	6d72612f 	ldfvse	f6, [r2, #-188]!	; 0xffffff44
    163c:	6e6f6e2d 	cdpvs	14, 6, cr6, cr15, cr13, {1}
    1640:	61652d65 	cmnvs	r5, r5, ror #26
    1644:	312f6962 			; <UNDEFINED> instruction: 0x312f6962
    1648:	2e332e30 	mrccs	14, 1, r2, cr3, cr0, {1}
    164c:	6e692f31 	mcrvs	15, 3, r2, cr9, cr1, {1}
    1650:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    1654:	622f0065 	eorvs	r0, pc, #101	; 0x65
    1658:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    165c:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1660:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
    1664:	30334270 	eorscc	r4, r3, r0, ror r2
    1668:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
    166c:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1670:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
    1674:	2f302e33 	svccs	0x00302e33
    1678:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    167c:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 14e0 <_reclaim_reent+0xb4>
    1680:	2f636269 	svccs	0x00636269
    1684:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    1688:	2f656475 	svccs	0x00656475
    168c:	00737973 	rsbseq	r7, r3, r3, ror r9
    1690:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1694:	6e2f646c 	cdpvs	4, 2, cr6, cr15, cr12, {3}
    1698:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    169c:	42702d62 	rsbsmi	r2, r0, #6272	; 0x1880
    16a0:	65643033 	strbvs	r3, [r4, #-51]!	; 0xffffffcd
    16a4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    16a8:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
    16ac:	2e332e33 	mrccs	14, 1, r2, cr3, cr3, {1}
    16b0:	656e2f30 	strbvs	r2, [lr, #-3888]!	; 0xfffff0d0
    16b4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    16b8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    16bc:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
    16c0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    16c4:	5f000065 	svcpl	0x00000065
    16c8:	6c61635f 	stclvs	3, cr6, [r1], #-380	; 0xfffffe84
    16cc:	74615f6c 	strbtvc	r5, [r1], #-3948	; 0xfffff094
    16d0:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
    16d4:	0100632e 	tsteq	r0, lr, lsr #6
    16d8:	74730000 	ldrbtvc	r0, [r3], #-0
    16dc:	66656464 	strbtvs	r6, [r5], -r4, ror #8
    16e0:	0200682e 	andeq	r6, r0, #3014656	; 0x2e0000
    16e4:	745f0000 	ldrbvc	r0, [pc], #-0	; 16ec <__data_load__+0xbc>
    16e8:	73657079 	cmnvc	r5, #121	; 0x79
    16ec:	0300682e 	movweq	r6, #2094	; 0x82e
    16f0:	65720000 	ldrbvs	r0, [r2, #-0]!
    16f4:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    16f8:	00030068 	andeq	r0, r3, r8, rrx
    16fc:	636f6c00 	cmnvs	pc, #0, 24
    1700:	00682e6b 	rsbeq	r2, r8, fp, ror #28
    1704:	73000003 	movwvc	r0, #3
    1708:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
    170c:	00682e62 	rsbeq	r2, r8, r2, ror #28
    1710:	00000004 	andeq	r0, r0, r4
    1714:	05000105 	streq	r0, [r0, #-261]	; 0xfffffefb
    1718:	00156002 	andseq	r6, r5, r2
    171c:	01310300 	teqeq	r1, r0, lsl #6
    1720:	05130305 	ldreq	r0, [r3, #-773]	; 0xfffffcfb
    1724:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
    1728:	13680605 	cmnne	r8, #5242880	; 0x500000
    172c:	0e060105 	adfeqs	f0, f6, f5
    1730:	05320505 	ldreq	r0, [r2, #-1285]!	; 0xfffffafb
    1734:	08025001 	stmdaeq	r2, {r0, ip, lr}
    1738:	05010100 	streq	r0, [r1, #-256]	; 0xffffff00
    173c:	02050001 	andeq	r0, r5, #1
    1740:	00000eb4 			; <UNDEFINED> instruction: 0x00000eb4
    1744:	0100c603 	tsteq	r0, r3, lsl #12
    1748:	13130305 	tstne	r3, #335544320	; 0x14000000
    174c:	13131313 	tstne	r3, #1275068416	; 0x4c000000
    1750:	07051716 	smladeq	r5, r6, r7, r1
    1754:	01050106 	tsteq	r5, r6, lsl #2
    1758:	052e7103 	streq	r7, [lr, #-259]!	; 0xfffffefd
    175c:	2e0f0307 	cdpcs	3, 0, cr0, cr15, cr7, {0}
    1760:	052e0505 	streq	r0, [lr, #-1285]!	; 0xfffffafb
    1764:	132f0603 			; <UNDEFINED> instruction: 0x132f0603
    1768:	05010905 	streq	r0, [r1, #-2309]	; 0xfffff6fb
    176c:	6f030601 	svcvs	0x00030601
    1770:	03090501 	movweq	r0, #38145	; 0x9501
    1774:	01052e11 	tsteq	r5, r1, lsl lr
    1778:	052e6f03 	streq	r6, [lr, #-3843]!	; 0xfffff0fd
    177c:	2e110309 	cdpcs	3, 1, cr0, cr1, cr9, {0}
    1780:	0b030605 	bleq	c2f9c <__data_load__+0xc196c>
    1784:	0311054a 	tsteq	r1, #310378496	; 0x12800000
    1788:	052e2e0c 	streq	r2, [lr, #-3596]!	; 0xfffff1f4
    178c:	6e030607 	cfmadd32vs	mvax0, mvfx0, mvfx3, mvfx7
    1790:	11051401 	tstne	r5, r1, lsl #8
    1794:	1d050106 	stfnes	f0, [r5, #-24]	; 0xffffffe8
    1798:	07052e06 	streq	r2, [r5, -r6, lsl #28]
    179c:	052e0106 	streq	r0, [lr, #-262]!	; 0xfffffefa
    17a0:	05820625 	streq	r0, [r2, #1573]	; 0x625
    17a4:	05010626 	streq	r0, [r1, #-1574]	; 0xfffff9da
    17a8:	052e061d 	streq	r0, [lr, #-1565]!	; 0xfffff9e3
    17ac:	05010607 	streq	r0, [r1, #-1543]	; 0xfffff9f9
    17b0:	14680604 	strbtne	r0, [r8], #-1540	; 0xfffff9fc
    17b4:	06070515 			; <UNDEFINED> instruction: 0x06070515
    17b8:	00140501 	andseq	r0, r4, r1, lsl #10
    17bc:	4a020402 	bmi	827cc <__data_load__+0x8119c>
    17c0:	6b060405 	blvs	1827dc <__data_load__+0x1811ac>
    17c4:	13061505 	movwne	r1, #25861	; 0x6505
    17c8:	052d0705 	streq	r0, [sp, #-1797]!	; 0xfffff8fb
    17cc:	052f0604 	streq	r0, [pc, #-1540]!	; 11d0 <_free_r+0x104>
    17d0:	05010615 	streq	r0, [r1, #-1557]	; 0xfffff9eb
    17d4:	06052e07 	streq	r2, [r5], -r7, lsl #28
    17d8:	0d052f06 	stceq	15, cr2, [r5, #-24]	; 0xffffffe8
    17dc:	06050106 	streq	r0, [r5], -r6, lsl #2
    17e0:	11053006 	tstne	r5, r6
    17e4:	04050106 	streq	r0, [r5], #-262	; 0xfffffefa
    17e8:	07053106 	streq	r3, [r5, -r6, lsl #2]
    17ec:	04050106 	streq	r0, [r5], #-262	; 0xfffffefa
    17f0:	21054d06 	tstcs	r5, r6, lsl #26
    17f4:	06051506 	streq	r1, [r5], -r6, lsl #10
    17f8:	052e6b03 	streq	r6, [lr, #-2819]!	; 0xfffff4fd
    17fc:	2e15030e 	cdpcs	3, 1, cr0, cr5, cr14, {0}
    1800:	052b0805 	streq	r0, [fp, #-2053]!	; 0xfffff7fb
    1804:	05310604 	ldreq	r0, [r1, #-1540]!	; 0xfffff9fc
    1808:	0501060e 	streq	r0, [r1, #-1550]	; 0xfffff9f2
    180c:	052f0606 	streq	r0, [pc, #-1542]!	; 120e <_free_r+0x142>
    1810:	4a090304 	bmi	242428 <_bsl_base_address+0x40428>
    1814:	01060705 	tsteq	r6, r5, lsl #14
    1818:	02001a05 	andeq	r1, r0, #20480	; 0x5000
    181c:	05660104 	strbeq	r0, [r6, #-260]!	; 0xfffffefc
    1820:	04020017 	streq	r0, [r2], #-23	; 0xffffffe9
    1824:	02002e01 	andeq	r2, r0, #1, 28
    1828:	05660104 	strbeq	r0, [r6, #-260]!	; 0xfffffefc
    182c:	46030603 	strmi	r0, [r3], -r3, lsl #12
    1830:	13131301 	tstne	r3, #67108864	; 0x4000000
    1834:	17161313 			; <UNDEFINED> instruction: 0x17161313
    1838:	09051313 	stmdbeq	r5, {r0, r1, r4, r8, r9, ip}
    183c:	06010501 	streq	r0, [r1], -r1, lsl #10
    1840:	4a00c903 	bmi	33c54 <__data_load__+0x32624>
    1844:	03060905 	movweq	r0, #26885	; 0x6905
    1848:	1c056659 	stcne	6, cr6, [r5], {89}	; 0x59
    184c:	0c050106 	stfeqs	f0, [r5], {6}
    1850:	0606052e 	streq	r0, [r6], -lr, lsr #10
    1854:	0607054b 	streq	r0, [r7], -fp, asr #10
    1858:	06040501 	streq	r0, [r4], -r1, lsl #10
    185c:	06070589 	streq	r0, [r7], -r9, lsl #11
    1860:	05056601 	streq	r6, [r5, #-1537]	; 0xfffff9ff
    1864:	2e015403 	cdpcs	4, 0, cr5, cr1, cr3, {0}
    1868:	03060605 	movweq	r0, #26117	; 0x6605
    186c:	07052e27 	streq	r2, [r5, -r7, lsr #28]
    1870:	02660106 	rsbeq	r0, r6, #-2147483647	; 0x80000001
    1874:	01010004 	tsteq	r1, r4
    1878:	000004ce 	andeq	r0, r0, lr, asr #9
    187c:	01140003 	tsteq	r4, r3
    1880:	01020000 	mrseq	r0, (UNDEF: 2)
    1884:	000d0efb 	strdeq	r0, [sp], -fp
    1888:	01010101 	tsteq	r1, r1, lsl #2
    188c:	01000000 	mrseq	r0, (UNDEF: 0)
    1890:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
    1894:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1898:	2f2e2e2f 	svccs	0x002e2e2f
    189c:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    18a0:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xfffff0d2
    18a4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    18a8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    18ac:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
    18b0:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
    18b4:	73752f00 	cmnvc	r5, #0, 30
    18b8:	696c2f72 	stmdbvs	ip!, {r1, r4, r5, r6, r8, r9, sl, fp, sp}^
    18bc:	63672f62 	cmnvs	r7, #392	; 0x188
    18c0:	72612f63 	rsbvc	r2, r1, #396	; 0x18c
    18c4:	6f6e2d6d 	svcvs	0x006e2d6d
    18c8:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
    18cc:	2f696261 	svccs	0x00696261
    18d0:	332e3031 			; <UNDEFINED> instruction: 0x332e3031
    18d4:	692f312e 	stmdbvs	pc!, {r1, r2, r3, r5, r8, ip, sp}	; <UNPREDICTABLE>
    18d8:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    18dc:	2f006564 	svccs	0x00006564
    18e0:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
    18e4:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
    18e8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    18ec:	3342702d 	movtcc	r7, #8237	; 0x202d
    18f0:	2f656430 	svccs	0x00656430
    18f4:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    18f8:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
    18fc:	302e332e 	eorcc	r3, lr, lr, lsr #6
    1900:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1904:	2f62696c 	svccs	0x0062696c
    1908:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
    190c:	636e692f 	cmnvs	lr, #770048	; 0xbc000
    1910:	6564756c 	strbvs	r7, [r4, #-1388]!	; 0xfffffa94
    1914:	7379732f 	cmnvc	r9, #-1140850688	; 0xbc000000
    1918:	75622f00 	strbvc	r2, [r2, #-3840]!	; 0xfffff100
    191c:	2f646c69 	svccs	0x00646c69
    1920:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1924:	702d6269 	eorvc	r6, sp, r9, ror #4
    1928:	64303342 	ldrtvs	r3, [r0], #-834	; 0xfffffcbe
    192c:	656e2f65 	strbvs	r2, [lr, #-3941]!	; 0xfffff09b
    1930:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1934:	332e332d 			; <UNDEFINED> instruction: 0x332e332d
    1938:	6e2f302e 	cdpvs	0, 2, cr3, cr15, cr14, {1}
    193c:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1940:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
    1944:	692f6362 	stmdbvs	pc!, {r1, r5, r6, r8, r9, sp, lr}	; <UNPREDICTABLE>
    1948:	756c636e 	strbvc	r6, [ip, #-878]!	; 0xfffffc92
    194c:	00006564 	andeq	r6, r0, r4, ror #10
    1950:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
    1954:	2e72636f 	cdpcs	3, 7, cr6, cr2, cr15, {3}
    1958:	00010063 	andeq	r0, r1, r3, rrx
    195c:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
    1960:	2e666564 	cdpcs	5, 6, cr6, cr6, cr4, {3}
    1964:	00020068 	andeq	r0, r2, r8, rrx
    1968:	79745f00 	ldmdbvc	r4!, {r8, r9, sl, fp, ip, lr}^
    196c:	2e736570 	mrccs	5, 3, r6, cr3, cr0, {3}
    1970:	00030068 	andeq	r0, r3, r8, rrx
    1974:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
    1978:	682e746e 	stmdavs	lr!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
    197c:	00000300 	andeq	r0, r0, r0, lsl #6
    1980:	6b636f6c 	blvs	18dd738 <_bsl_base_address+0x16db738>
    1984:	0300682e 	movweq	r6, #2094	; 0x82e
    1988:	65720000 	ldrbvs	r0, [r2, #-0]!
    198c:	2e746e65 	cdpcs	14, 7, cr6, cr4, cr5, {3}
    1990:	00040068 	andeq	r0, r4, r8, rrx
    1994:	01050000 	mrseq	r0, (UNDEF: 5)
    1998:	cc020500 	cfstr32gt	mvfx0, [r2], {-0}
    199c:	0300000f 	movweq	r0, #15
    19a0:	050119f1 	streq	r1, [r1, #-2545]	; 0xfffff60f
    19a4:	13131303 	tstne	r3, #201326592	; 0xc000000
    19a8:	05141413 	ldreq	r1, [r4, #-1043]	; 0xfffffbed
    19ac:	78030601 	stmdavc	r3, {r0, r9, sl}
    19b0:	0e052e01 	cdpeq	14, 0, cr2, cr5, cr1, {0}
    19b4:	052e0a03 	streq	r0, [lr, #-2563]!	; 0xfffff5fd
    19b8:	2e760301 	cdpcs	3, 7, cr0, cr6, cr1, {0}
    19bc:	06360305 	ldrteq	r0, [r6], -r5, lsl #6
    19c0:	060e0530 			; <UNDEFINED> instruction: 0x060e0530
    19c4:	2e0c0501 	cfsh32cs	mvfx0, mvfx12, #1
    19c8:	052f2605 	streq	r2, [pc, #-1541]!	; 13cb <cleanup_glue+0x13>
    19cc:	03052d0c 	movweq	r2, #23820	; 0x5d0c
    19d0:	26052f06 	strcs	r2, [r5], -r6, lsl #30
    19d4:	3d050106 	stfccs	f0, [r5, #-24]	; 0xffffffe8
    19d8:	4a42054a 	bmi	1082f08 <_bsl_base_address+0xe80f08>
    19dc:	30060305 	andcc	r0, r6, r5, lsl #6
    19e0:	01060605 	tsteq	r6, r5, lsl #12
    19e4:	03060505 	movweq	r0, #25861	; 0x6505
    19e8:	1b054a09 	blne	154214 <__data_load__+0x152be4>
    19ec:	05050106 	streq	r0, [r5, #-262]	; 0xfffffefa
    19f0:	25056706 	strcs	r6, [r5, #-1798]	; 0xfffff8fa
    19f4:	08050106 	stmdaeq	r5, {r1, r2, r8}
    19f8:	0605054a 	streq	r0, [r5], -sl, asr #10
    19fc:	4b4a7803 	blmi	129fa10 <_bsl_base_address+0x109da10>
    1a00:	01060c05 	tsteq	r6, r5, lsl #24
    1a04:	2b030105 	blcs	c1e20 <__data_load__+0xc07f0>
    1a08:	07052e2e 	streq	r2, [r5, -lr, lsr #28]
    1a0c:	2e640306 	cdpcs	3, 6, cr0, cr4, cr6, {0}
    1a10:	01061905 	tsteq	r6, r5, lsl #18
    1a14:	0607052e 	streq	r0, [r7], -lr, lsr #10
    1a18:	060a054c 	streq	r0, [sl], -ip, asr #10
    1a1c:	06090501 	streq	r0, [r9], -r1, lsl #10
    1a20:	054a1203 	strbeq	r1, [sl, #-515]	; 0xfffffdfd
    1a24:	052f0614 	streq	r0, [pc, #-1556]!	; 1418 <cleanup_glue+0x60>
    1a28:	062e2d09 	strteq	r2, [lr], -r9, lsl #26
    1a2c:	0614054b 	ldreq	r0, [r4], -fp, asr #10
    1a30:	30020501 	andcc	r0, r2, r1, lsl #10
    1a34:	052c1405 	streq	r1, [ip, #-1029]!	; 0xfffffbfb
    1a38:	054b0619 	strbeq	r0, [fp, #-1561]	; 0xfffff9e7
    1a3c:	09051302 	stmdbeq	r5, {r1, r8, r9, ip}
    1a40:	0610052f 	ldreq	r0, [r0], -pc, lsr #10
    1a44:	32010501 	andcc	r0, r1, #4194304	; 0x400000
    1a48:	0609052e 	streq	r0, [r9], -lr, lsr #10
    1a4c:	052e6903 	streq	r6, [lr, #-2307]!	; 0xfffff6fd
    1a50:	4a01061f 	bmi	432d4 <__data_load__+0x41ca4>
    1a54:	052f2905 	streq	r2, [pc, #-2309]!	; 1157 <_free_r+0x8b>
    1a58:	052e0609 	streq	r0, [lr, #-1545]!	; 0xfffff9f7
    1a5c:	05010612 	streq	r0, [r1, #-1554]	; 0xfffff9ee
    1a60:	052f0609 	streq	r0, [pc, #-1545]!	; 145f <_reclaim_reent+0x33>
    1a64:	0501060c 	streq	r0, [r1, #-1548]	; 0xfffff9f4
    1a68:	064c060b 	strbeq	r0, [ip], -fp, lsl #12
    1a6c:	24052e13 	strcs	r2, [r5], #-3603	; 0xfffff1ed
    1a70:	4a16052d 	bmi	582f2c <_bsl_base_address+0x380f2c>
    1a74:	052e2405 	streq	r2, [lr, #-1029]!	; 0xfffffbfb
    1a78:	0b052e16 	bleq	14d2d8 <__data_load__+0x14bca8>
    1a7c:	01052f06 	tsteq	r5, r6, lsl #30
    1a80:	827aac03 	rsbshi	sl, sl, #768	; 0x300
    1a84:	13190305 	tstne	r9, #335544320	; 0x14000000
    1a88:	13131313 	tstne	r3, #1275068416	; 0x4c000000
    1a8c:	13131313 	tstne	r3, #1275068416	; 0x4c000000
    1a90:	06010514 			; <UNDEFINED> instruction: 0x06010514
    1a94:	05016e03 	streq	r6, [r1, #-3587]	; 0xfffff1fd
    1a98:	2e120306 	cdpcs	3, 1, cr0, cr2, cr6, {0}
    1a9c:	69060305 	stmdbvs	r6, {r0, r2, r8, r9}
    1aa0:	06060530 			; <UNDEFINED> instruction: 0x06060530
    1aa4:	030f0513 	movweq	r0, #62739	; 0xf513
    1aa8:	05052e11 	streq	r2, [r5, #-3601]	; 0xfffff1ef
    1aac:	052e6e03 	streq	r6, [lr, #-3587]!	; 0xfffff1fd
    1ab0:	052f0603 	streq	r0, [pc, #-1539]!	; 14b5 <_reclaim_reent+0x89>
    1ab4:	010b0317 	tsteq	fp, r7, lsl r3
    1ab8:	05140305 	ldreq	r0, [r4, #-773]	; 0xfffffcfb
    1abc:	2a160606 	bcs	5832dc <_bsl_base_address+0x3812dc>
    1ac0:	2f060305 	svccs	0x00060305
    1ac4:	01060805 	tsteq	r6, r5, lsl #16
    1ac8:	2f060305 	svccs	0x00060305
    1acc:	14060605 	strne	r0, [r6], #-1541	; 0xfffff9fb
    1ad0:	052c0a05 	streq	r0, [ip, #-2565]!	; 0xfffff5fb
    1ad4:	054c0603 	strbeq	r0, [ip, #-1539]	; 0xfffff9fd
    1ad8:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
    1adc:	14030603 	strne	r0, [r3], #-1539	; 0xfffff9fd
    1ae0:	0606052e 	streq	r0, [r6], -lr, lsr #10
    1ae4:	2a030516 	bcs	c2f44 <__data_load__+0xc1914>
    1ae8:	05143006 	ldreq	r3, [r4, #-6]
    1aec:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
    1af0:	05300605 	ldreq	r0, [r0, #-1541]!	; 0xfffff9fb
    1af4:	0501060c 	streq	r0, [r1, #-1548]	; 0xfffff9f4
    1af8:	052f0605 	streq	r0, [pc, #-1541]!	; 14fb <_reclaim_reent+0xcf>
    1afc:	05010607 	streq	r0, [r1, #-1543]	; 0xfffff9f9
    1b00:	052f0605 	streq	r0, [pc, #-1541]!	; 1503 <_reclaim_reent+0xd7>
    1b04:	05010608 	streq	r0, [r1, #-1544]	; 0xfffff9f8
    1b08:	05300605 	ldreq	r0, [r0, #-1541]!	; 0xfffff9fb
    1b0c:	0501060a 	streq	r0, [r1, #-1546]	; 0xfffff9f6
    1b10:	052e2e08 	streq	r2, [lr, #-3592]!	; 0xfffff1f8
    1b14:	054d0607 	strbeq	r0, [sp, #-1543]	; 0xfffff9f9
    1b18:	05150609 	ldreq	r0, [r5, #-1545]	; 0xfffff9f7
    1b1c:	07054a06 	streq	r4, [r5, -r6, lsl #20]
    1b20:	012e062b 			; <UNDEFINED> instruction: 0x012e062b
    1b24:	2e1a052e 	cfmul64cs	mvdx0, mvdx10, mvdx14
    1b28:	05150305 	ldreq	r0, [r5, #-773]	; 0xfffffcfb
    1b2c:	05010606 	streq	r0, [r1, #-1542]	; 0xfffff9fa
    1b30:	0a03061d 	beq	c33ac <__data_load__+0xc1d7c>
    1b34:	1603052e 	strne	r0, [r3], -lr, lsr #10
    1b38:	2f062e06 	svccs	0x00062e06
    1b3c:	1305052f 	movwne	r0, #21807	; 0x552f
    1b40:	01040200 	mrseq	r0, R12_usr
    1b44:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
    1b48:	002e0601 	eoreq	r0, lr, r1, lsl #12
    1b4c:	06010402 	streq	r0, [r1], -r2, lsl #8
    1b50:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
    1b54:	002e0601 	eoreq	r0, lr, r1, lsl #12
    1b58:	2e010402 	cdpcs	4, 0, cr0, cr1, cr2, {0}
    1b5c:	01040200 	mrseq	r0, R12_usr
    1b60:	02004a06 	andeq	r4, r0, #24576	; 0x6000
    1b64:	004a0104 	subeq	r0, sl, r4, lsl #2
    1b68:	01010402 	tsteq	r1, r2, lsl #8
    1b6c:	01040200 	mrseq	r0, R12_usr
    1b70:	02002e06 	andeq	r2, r0, #6, 28	; 0x60
    1b74:	2e060104 	adfcss	f0, f6, f4
    1b78:	01040200 	mrseq	r0, R12_usr
    1b7c:	4a5b032e 	bmi	16c283c <_bsl_base_address+0x14c083c>
    1b80:	0601054b 	streq	r0, [r1], -fp, asr #10
    1b84:	05012903 	streq	r2, [r1, #-2307]	; 0xfffff6fd
    1b88:	6703061a 	smladvs	r3, sl, r6, r0
    1b8c:	1503054a 	strne	r0, [r3, #-1354]	; 0xfffffab6
    1b90:	01060905 	tsteq	r6, r5, lsl #18
    1b94:	2e06052e 	cfsh32cs	mvfx0, mvfx6, #30
    1b98:	4c060505 	cfstr32mi	mvfx0, [r6], {5}
    1b9c:	01060805 	tsteq	r6, r5, lsl #16
    1ba0:	30060505 	andcc	r0, r6, r5, lsl #10
    1ba4:	02001605 	andeq	r1, r0, #5242880	; 0x500000
    1ba8:	2e060104 	adfcss	f0, f6, f4
    1bac:	02000f05 	andeq	r0, r0, #5, 30
    1bb0:	052e0104 	streq	r0, [lr, #-260]!	; 0xfffffefc
    1bb4:	2e500607 	cdpcs	6, 5, cr0, cr0, cr7, {0}
    1bb8:	1d052e01 	stcne	14, cr2, [r5, #-4]
    1bbc:	1603052e 	strne	r0, [r3], -lr, lsr #10
    1bc0:	2f062e06 	svccs	0x00062e06
    1bc4:	031d052f 	tsteq	sp, #197132288	; 0xbc00000
    1bc8:	03052e7a 	movweq	r2, #24186	; 0x5e7a
    1bcc:	06050516 			; <UNDEFINED> instruction: 0x06050516
    1bd0:	2b030531 	blcs	c309c <__data_load__+0xc1a6c>
    1bd4:	052f2f06 	streq	r2, [pc, #-3846]!	; cd6 <memset+0x16>
    1bd8:	02001305 	andeq	r1, r0, #335544320	; 0x14000000
    1bdc:	002e0204 	eoreq	r0, lr, r4, lsl #4
    1be0:	06070402 	streq	r0, [r7], -r2, lsl #8
    1be4:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
    1be8:	02006607 	andeq	r6, r0, #7340032	; 0x700000
    1bec:	2e061a04 	vmlacs.f32	s2, s12, s8
    1bf0:	1a040200 	bne	1023f8 <__data_load__+0x100dc8>
    1bf4:	04020066 	streq	r0, [r2], #-102	; 0xffffff9a
    1bf8:	0200011a 	andeq	r0, r0, #-2147483642	; 0x80000006
    1bfc:	004a2004 	subeq	r2, sl, r4
    1c00:	06200402 	strteq	r0, [r0], -r2, lsl #8
    1c04:	04020001 	streq	r0, [r2], #-1
    1c08:	02008222 	andeq	r8, r0, #536870914	; 0x20000002
    1c0c:	2e062204 	cdpcs	2, 0, cr2, cr6, cr4, {0}
    1c10:	23040200 	movwcs	r0, #16896	; 0x4200
    1c14:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
    1c18:	02002e24 	andeq	r2, r0, #36, 28	; 0x240
    1c1c:	002e2404 	eoreq	r2, lr, r4, lsl #8
    1c20:	2e240402 	cdpcs	4, 2, cr0, cr4, cr2, {0}
    1c24:	6c031a05 			; <UNDEFINED> instruction: 0x6c031a05
    1c28:	15030566 	strne	r0, [r3, #-1382]	; 0xfffffa9a
    1c2c:	01060905 	tsteq	r6, r5, lsl #18
    1c30:	054a0605 	strbeq	r0, [sl, #-1541]	; 0xfffff9fb
    1c34:	2e0e0303 	cdpcs	3, 0, cr0, cr14, cr3, {0}
    1c38:	052f062e 	streq	r0, [pc, #-1582]!	; 1612 <all_implied_fbits+0x12>
    1c3c:	71030606 	tstvc	r3, r6, lsl #12
    1c40:	0605052e 	streq	r0, [r5], -lr, lsr #10
    1c44:	06080530 			; <UNDEFINED> instruction: 0x06080530
    1c48:	06050501 	streq	r0, [r5], -r1, lsl #10
    1c4c:	18070530 	stmdane	r7, {r4, r5, r8, sl}
    1c50:	1d052e4a 	stcne	14, cr2, [r5, #-296]	; 0xfffffed8
    1c54:	1603052e 	strne	r0, [r3], -lr, lsr #10
    1c58:	05052f4b 	streq	r2, [r5, #-3915]	; 0xfffff0b5
    1c5c:	052e4e03 	streq	r4, [lr, #-3587]!	; 0xfffff1fd
    1c60:	2c140608 	ldccs	6, cr0, [r4], {8}
    1c64:	30060505 	andcc	r0, r6, r5, lsl #10
    1c68:	01060805 	tsteq	r6, r5, lsl #16
    1c6c:	30060705 	andcc	r0, r6, r5, lsl #14
    1c70:	01060e05 	tsteq	r6, r5, lsl #28
    1c74:	2f060705 	svccs	0x00060705
    1c78:	01060905 	tsteq	r6, r5, lsl #18
    1c7c:	2f060705 	svccs	0x00060705
    1c80:	0a051306 	beq	1468a0 <__data_load__+0x145270>
    1c84:	0607052d 	streq	r0, [r7], -sp, lsr #10
    1c88:	052e2e2f 	streq	r2, [lr, #-3631]!	; 0xfffff1d1
    1c8c:	0402001a 	streq	r0, [r2], #-26	; 0xffffffe6
    1c90:	05052e01 	streq	r2, [r5, #-3585]	; 0xfffff1ff
    1c94:	01040200 	mrseq	r0, R12_usr
    1c98:	04020015 	streq	r0, [r2], #-21	; 0xffffffeb
    1c9c:	1d054b01 	vstrne	d4, [r5, #-4]
    1ca0:	01040200 	mrseq	r0, R12_usr
    1ca4:	09051306 	stmdbeq	r5, {r1, r2, r8, r9, ip}
    1ca8:	01040200 	mrseq	r0, R12_usr
    1cac:	0005052d 	andeq	r0, r5, sp, lsr #10
    1cb0:	06010402 	streq	r0, [r1], -r2, lsl #8
    1cb4:	0008052f 	andeq	r0, r8, pc, lsr #10
    1cb8:	06010402 	streq	r0, [r1], -r2, lsl #8
    1cbc:	06070501 	streq	r0, [r7], -r1, lsl #10
    1cc0:	662e0667 	strtvs	r0, [lr], -r7, ror #12
    1cc4:	02000505 	andeq	r0, r0, #20971520	; 0x1400000
    1cc8:	26030804 	strcs	r0, [r3], -r4, lsl #16
    1ccc:	0402002e 	streq	r0, [r2], #-46	; 0xffffffd2
    1cd0:	02004a0b 	andeq	r4, r0, #45056	; 0xb000
    1cd4:	004a0d04 	subeq	r0, sl, r4, lsl #26
    1cd8:	660d0402 	strvs	r0, [sp], -r2, lsl #8
    1cdc:	4a710306 	bmi	1c428fc <_bsl_base_address+0x1a408fc>
    1ce0:	01060805 	tsteq	r6, r5, lsl #16
    1ce4:	30060505 	andcc	r0, r6, r5, lsl #10
    1ce8:	0a040200 	beq	1024f0 <__data_load__+0x100ec0>
    1cec:	2e0d0306 	cdpcs	3, 0, cr0, cr13, cr6, {0}
    1cf0:	0a040200 	beq	1024f8 <__data_load__+0x100ec8>
    1cf4:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
    1cf8:	004a061c 	subeq	r0, sl, ip, lsl r6
    1cfc:	061c0402 	ldreq	r0, [ip], -r2, lsl #8
    1d00:	0402004a 	streq	r0, [r2], #-74	; 0xffffffb6
    1d04:	07052e1c 	smladeq	r5, ip, lr, r2
    1d08:	66750306 	ldrbtvs	r0, [r5], -r6, lsl #6
    1d0c:	06030513 			; <UNDEFINED> instruction: 0x06030513
    1d10:	03070519 	movweq	r0, #29977	; 0x7519
    1d14:	4a062e79 	bmi	18d700 <__data_load__+0x18c0d0>
    1d18:	19060305 	stmdbne	r6, {r0, r2, r8, r9}
    1d1c:	07052f06 	streq	r2, [r5, -r6, lsl #30]
    1d20:	01780306 	cmneq	r8, r6, lsl #6
    1d24:	06360305 	ldrteq	r0, [r6], -r5, lsl #6
    1d28:	0005052f 	andeq	r0, r5, pc, lsr #10
    1d2c:	060e0402 	streq	r0, [lr], -r2, lsl #8
    1d30:	0402002f 	streq	r0, [r2], #-47	; 0xffffffd1
    1d34:	02004a10 	andeq	r4, r0, #16, 20	; 0x10000
    1d38:	00661004 	rsbeq	r1, r6, r4
    1d3c:	4a110402 	bmi	442d4c <_bsl_base_address+0x240d4c>
    1d40:	11040200 	mrsne	r0, R12_usr
    1d44:	000e02ba 			; <UNDEFINED> instruction: 0x000e02ba
    1d48:	026e0101 	rsbeq	r0, lr, #1073741824	; 0x40000000
    1d4c:	00030000 	andeq	r0, r3, r0
    1d50:	00000112 	andeq	r0, r0, r2, lsl r1
    1d54:	0efb0102 	cdpeq	1, 15, cr0, cr11, cr2, {0}
    1d58:	0101000d 	tsteq	r1, sp
    1d5c:	00000101 	andeq	r0, r0, r1, lsl #2
    1d60:	00000100 	andeq	r0, r0, r0, lsl #2
    1d64:	2f2e2e01 	svccs	0x002e2e01
    1d68:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
    1d6c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1d70:	2f2e2e2f 	svccs	0x002e2e2f
    1d74:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1d78:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 1bdc <__data_load__+0x5ac>
    1d7c:	2f636269 	svccs	0x00636269
    1d80:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    1d84:	752f0074 	strvc	r0, [pc, #-116]!	; 1d18 <__data_load__+0x6e8>
    1d88:	6c2f7273 	sfmvs	f7, 4, [pc], #-460	; 1bc4 <__data_load__+0x594>
    1d8c:	672f6269 	strvs	r6, [pc, -r9, ror #4]!
    1d90:	612f6363 			; <UNDEFINED> instruction: 0x612f6363
    1d94:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
    1d98:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
    1d9c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
    1da0:	2e30312f 	rsfcssp	f3, f0, #10.0
    1da4:	2f312e33 	svccs	0x00312e33
    1da8:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    1dac:	00656475 	rsbeq	r6, r5, r5, ror r4
    1db0:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
    1db4:	6e2f646c 	cdpvs	4, 2, cr6, cr15, cr12, {3}
    1db8:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1dbc:	42702d62 	rsbsmi	r2, r0, #6272	; 0x1880
    1dc0:	65643033 	strbvs	r3, [r4, #-51]!	; 0xffffffcd
    1dc4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1dc8:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
    1dcc:	2e332e33 	mrccs	14, 1, r2, cr3, cr3, {1}
    1dd0:	656e2f30 	strbvs	r2, [lr, #-3888]!	; 0xfffff0d0
    1dd4:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
    1dd8:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
    1ddc:	6e692f63 	cdpvs	15, 6, cr2, cr9, cr3, {3}
    1de0:	64756c63 	ldrbtvs	r6, [r5], #-3171	; 0xfffff39d
    1de4:	79732f65 	ldmdbvc	r3!, {r0, r2, r5, r6, r8, r9, sl, fp, sp}^
    1de8:	622f0073 	eorvs	r0, pc, #115	; 0x73
    1dec:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
    1df0:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
    1df4:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
    1df8:	30334270 	eorscc	r4, r3, r0, ror r2
    1dfc:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
    1e00:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
    1e04:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
    1e08:	2f302e33 	svccs	0x00302e33
    1e0c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
    1e10:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 1c74 <__data_load__+0x644>
    1e14:	2f636269 	svccs	0x00636269
    1e18:	6c636e69 	stclvs	14, cr6, [r3], #-420	; 0xfffffe5c
    1e1c:	00656475 	rsbeq	r6, r5, r5, ror r4
    1e20:	65657200 	strbvs	r7, [r5, #-512]!	; 0xfffffe00
    1e24:	632e746e 			; <UNDEFINED> instruction: 0x632e746e
    1e28:	00000100 	andeq	r0, r0, r0, lsl #2
    1e2c:	64647473 	strbtvs	r7, [r4], #-1139	; 0xfffffb8d
    1e30:	682e6665 	stmdavs	lr!, {r0, r2, r5, r6, r9, sl, sp, lr}
    1e34:	00000200 	andeq	r0, r0, r0, lsl #4
    1e38:	7079745f 	rsbsvc	r7, r9, pc, asr r4
    1e3c:	682e7365 	stmdavs	lr!, {r0, r2, r5, r6, r8, r9, ip, sp, lr}
    1e40:	00000300 	andeq	r0, r0, r0, lsl #6
    1e44:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
    1e48:	00682e74 	rsbeq	r2, r8, r4, ror lr
    1e4c:	6c000003 	stcvs	0, cr0, [r0], {3}
    1e50:	2e6b636f 	cdpcs	3, 6, cr6, cr11, cr15, {3}
    1e54:	00030068 	andeq	r0, r3, r8, rrx
    1e58:	64747300 	ldrbtvs	r7, [r4], #-768	; 0xfffffd00
    1e5c:	2e62696c 	vnmulcs.f16	s13, s4, s25	; <UNPREDICTABLE>
    1e60:	00040068 	andeq	r0, r4, r8, rrx
    1e64:	01050000 	mrseq	r0, (UNDEF: 5)
    1e68:	b8020500 	stmdalt	r2, {r8, sl}
    1e6c:	03000013 	movweq	r0, #19
    1e70:	03050122 	movweq	r0, #20770	; 0x5122
    1e74:	06010514 			; <UNDEFINED> instruction: 0x06010514
    1e78:	300b0510 	andcc	r0, fp, r0, lsl r5
    1e7c:	052e0605 	streq	r0, [lr, #-1541]!	; 0xfffff9fb
    1e80:	06052c01 	streq	r2, [r5], -r1, lsl #24
    1e84:	0605054c 	streq	r0, [r5], -ip, asr #10
    1e88:	0d01052f 	cfstr32eq	mvfx0, [r1, #-188]	; 0xffffff44
    1e8c:	05160305 	ldreq	r0, [r6, #-773]	; 0xfffffcfb
    1e90:	0501060b 	streq	r0, [r1, #-1547]	; 0xfffff9f5
    1e94:	05052e06 	streq	r2, [r5, #-3590]	; 0xfffff1fa
    1e98:	01054b06 	tsteq	r5, r6, lsl #22
    1e9c:	1603050d 	strne	r0, [r3], -sp, lsl #10
    1ea0:	01060b05 	tsteq	r6, r5, lsl #22
    1ea4:	052e0605 	streq	r0, [lr, #-1541]!	; 0xfffff9fb
    1ea8:	054b0605 	strbeq	r0, [fp, #-1541]	; 0xfffff9fb
    1eac:	03050d01 	movweq	r0, #23809	; 0x5d01
    1eb0:	060b0516 			; <UNDEFINED> instruction: 0x060b0516
    1eb4:	2e060501 	cfsh32cs	mvfx0, mvfx6, #1
    1eb8:	2f060505 	svccs	0x00060505
    1ebc:	06300305 	ldrteq	r0, [r0], -r5, lsl #6
    1ec0:	06010666 	streq	r0, [r1], -r6, ror #12
    1ec4:	06010666 	streq	r0, [r1], -r6, ror #12
    1ec8:	05010666 	streq	r0, [r1, #-1638]	; 0xfffff99a
    1ecc:	2e670601 	cdpcs	6, 6, cr0, cr7, cr1, {0}
    1ed0:	03053206 	movweq	r3, #20998	; 0x5206
    1ed4:	060b0513 			; <UNDEFINED> instruction: 0x060b0513
    1ed8:	2e060501 	cfsh32cs	mvfx0, mvfx6, #1
    1edc:	056d0b05 	strbeq	r0, [sp, #-2821]!	; 0xfffff4fb
    1ee0:	01052e0a 	tsteq	r5, sl, lsl #28
    1ee4:	052e7803 	streq	r7, [lr, #-2051]!	; 0xfffff7fd
    1ee8:	05520607 	ldrbeq	r0, [r2, #-1543]	; 0xfffff9f9
    1eec:	0501060a 	streq	r0, [r1, #-1546]	; 0xfffff9f6
    1ef0:	144f0608 	strbne	r0, [pc], #-1544	; 1ef8 <__data_load__+0x8c8>
    1ef4:	01061005 	tsteq	r6, r5
    1ef8:	2f060805 	svccs	0x00060805
    1efc:	05010e05 	streq	r0, [r1, #-3589]	; 0xfffff1fb
    1f00:	05134c05 	ldreq	r4, [r3, #-3077]	; 0xfffff3fb
    1f04:	052e060d 	streq	r0, [lr, #-1549]!	; 0xfffff9f3
    1f08:	052f0605 	streq	r0, [pc, #-1541]!	; 190b <__data_load__+0x2db>
    1f0c:	1205460e 	andne	r4, r5, #14680064	; 0xe00000
    1f10:	1b055206 	blne	156730 <__data_load__+0x155100>
    1f14:	02040200 	andeq	r0, r4, #0, 4
    1f18:	2e730306 	cdpcs	3, 7, cr0, cr3, cr6, {0}
    1f1c:	02001005 	andeq	r1, r0, #5
    1f20:	05010204 	streq	r0, [r1, #-516]	; 0xfffffdfc
    1f24:	04020004 	streq	r0, [r2], #-4
    1f28:	06010602 	streq	r0, [r1], -r2, lsl #12
    1f2c:	06660d03 	strbteq	r0, [r6], -r3, lsl #26
    1f30:	0607054a 	streq	r0, [r7], -sl, asr #10
    1f34:	060b0514 			; <UNDEFINED> instruction: 0x060b0514
    1f38:	2e0a0501 	cfsh32cs	mvfx0, mvfx10, #1
    1f3c:	2f060205 	svccs	0x00060205
    1f40:	1c030705 	stcne	7, cr0, [r3], {5}
    1f44:	060f054a 	streq	r0, [pc], -sl, asr #10
    1f48:	2e0a0501 	cfsh32cs	mvfx0, mvfx10, #1
    1f4c:	02002e05 	andeq	r2, r0, #5, 28	; 0x50
    1f50:	054a0104 	strbeq	r0, [sl, #-260]	; 0xfffffefc
    1f54:	0402001a 	streq	r0, [r2], #-26	; 0xffffffe6
    1f58:	08052e01 	stmdaeq	r5, {r0, r9, sl, fp, sp}
    1f5c:	05134f06 	ldreq	r4, [r3, #-3846]	; 0xfffff0fa
    1f60:	052e060a 	streq	r0, [lr, #-1546]!	; 0xfffff9f6
    1f64:	052f0608 	streq	r0, [pc, #-1544]!	; 1964 <__data_load__+0x334>
    1f68:	0405461b 	streq	r4, [r5], #-1563	; 0xfffff9e5
    1f6c:	054a0106 	strbeq	r0, [sl, #-262]	; 0xfffffefa
    1f70:	0a030607 	beq	c3794 <__data_load__+0xc2164>
    1f74:	060e0501 	streq	r0, [lr], -r1, lsl #10
    1f78:	2e0a0501 	cfsh32cs	mvfx0, mvfx10, #1
    1f7c:	2f060205 	svccs	0x00060205
    1f80:	05510705 	ldrbeq	r0, [r1, #-1797]	; 0xfffff8fb
    1f84:	0501060a 	streq	r0, [r1, #-1546]	; 0xfffff9f6
    1f88:	846a0604 	strbthi	r0, [sl], #-1540	; 0xfffff9fc
    1f8c:	01061405 	tsteq	r6, r5, lsl #8
    1f90:	052e0705 	streq	r0, [lr, #-1797]!	; 0xfffff8fb
    1f94:	054b0606 	strbeq	r0, [fp, #-1542]	; 0xfffff9fa
    1f98:	7fa10301 	svcvc	0x00a10301
    1f9c:	16030501 	strne	r0, [r3], -r1, lsl #10
    1fa0:	01060b05 	tsteq	r6, r5, lsl #22
    1fa4:	052e0605 	streq	r0, [lr, #-1541]!	; 0xfffff9fb
    1fa8:	052f0605 	streq	r0, [pc, #-1541]!	; 19ab <__data_load__+0x37b>
    1fac:	66064c03 	strvs	r4, [r6], -r3, lsl #24
    1fb0:	de030105 	adfles	f0, f3, f5
    1fb4:	022e0100 	eoreq	r0, lr, #0, 2
    1fb8:	01010004 	tsteq	r1, r4
    1fbc:	0000006c 	andeq	r0, r0, ip, rrx
    1fc0:	003b0003 	eorseq	r0, fp, r3
    1fc4:	01020000 	mrseq	r0, (UNDEF: 2)
    1fc8:	000d0efb 	strdeq	r0, [sp], -fp
    1fcc:	01010101 	tsteq	r1, r1, lsl #2
    1fd0:	01000000 	mrseq	r0, (UNDEF: 0)
    1fd4:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
    1fd8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    1fdc:	2f2e2e2f 	svccs	0x002e2e2f
    1fe0:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; 1f30 <__data_load__+0x900>
    1fe4:	6c676269 	sfmvs	f6, 2, [r7], #-420	; 0xfffffe5c
    1fe8:	2f73736f 	svccs	0x0073736f
    1fec:	6e62696c 	vnmulvs.f16	s13, s4, s25	; <UNPREDICTABLE>
    1ff0:	7379736f 	cmnvc	r9, #-1140850687	; 0xbc000001
    1ff4:	62730000 	rsbsvs	r0, r3, #0
    1ff8:	632e6b72 			; <UNDEFINED> instruction: 0x632e6b72
    1ffc:	00000100 	andeq	r0, r0, r0, lsl #2
    2000:	00010500 	andeq	r0, r1, r0, lsl #10
    2004:	15300205 	ldrne	r0, [r0, #-517]!	; 0xfffffdfb
    2008:	051a0000 	ldreq	r0, [sl, #-0]
    200c:	13131304 	tstne	r3, #4, 6	; 0x10000000
    2010:	06110514 			; <UNDEFINED> instruction: 0x06110514
    2014:	06040501 	streq	r0, [r4], -r1, lsl #10
    2018:	0d0513a1 	stceq	3, cr1, [r5, #-644]	; 0xfffffd7c
    201c:	052e0106 	streq	r0, [lr, #-262]!	; 0xfffffefa
    2020:	05300604 	ldreq	r0, [r0, #-1540]!	; 0xfffff9fc
    2024:	02130601 	andseq	r0, r3, #1048576	; 0x100000
    2028:	01010008 	tsteq	r1, r8
    202c:	00000068 	andeq	r0, r0, r8, rrx
    2030:	003c0003 	eorseq	r0, ip, r3
    2034:	01020000 	mrseq	r0, (UNDEF: 2)
    2038:	000d0efb 	strdeq	r0, [sp], -fp
    203c:	01010101 	tsteq	r1, r1, lsl #2
    2040:	01000000 	mrseq	r0, (UNDEF: 0)
    2044:	2e010000 	cdpcs	0, 0, cr0, cr1, cr0, {0}
    2048:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
    204c:	2f2e2e2f 	svccs	0x002e2e2f
    2050:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; 1fa0 <__data_load__+0x970>
    2054:	6c676269 	sfmvs	f6, 2, [r7], #-420	; 0xfffffe5c
    2058:	2f73736f 	svccs	0x0073736f
    205c:	6e62696c 	vnmulvs.f16	s13, s4, s25	; <UNPREDICTABLE>
    2060:	7379736f 	cmnvc	r9, #-1140850687	; 0xbc000001
    2064:	655f0000 	ldrbvs	r0, [pc, #-0]	; 206c <__data_load__+0xa3c>
    2068:	2e746978 			; <UNDEFINED> instruction: 0x2e746978
    206c:	00010063 	andeq	r0, r1, r3, rrx
    2070:	01050000 	mrseq	r0, (UNDEF: 5)
    2074:	5c020500 	cfstr32pl	mvfx0, [r2], {-0}
    2078:	03000015 	movweq	r0, #21
    207c:	03050109 	movweq	r0, #20745	; 0x5109
    2080:	01040200 	mrseq	r0, R12_usr
    2084:	00050518 	andeq	r0, r5, r8, lsl r5
    2088:	13010402 	movwne	r0, #5122	; 0x1402
    208c:	02000905 	andeq	r0, r0, #81920	; 0x14000
    2090:	02110104 	andseq	r0, r1, #4, 2
    2094:	01010002 	tsteq	r1, r2

Disassembly of section .debug_info:

00000000 <.debug_info>:
       0:	00000022 	andeq	r0, r0, r2, lsr #32
       4:	00000002 	andeq	r0, r0, r2
       8:	01040000 	mrseq	r0, (UNDEF: 4)
       c:	00000000 	andeq	r0, r0, r0
      10:	000000dc 	ldrdeq	r0, [r0], -ip
      14:	00000204 	andeq	r0, r0, r4, lsl #4
      18:	00000000 	andeq	r0, r0, r0
      1c:	00000023 	andeq	r0, r0, r3, lsr #32
      20:	0000006f 	andeq	r0, r0, pc, rrx
      24:	00fc8001 	rscseq	r8, ip, r1
      28:	00040000 	andeq	r0, r4, r0
      2c:	00000014 	andeq	r0, r0, r4, lsl r0
      30:	01610104 	cmneq	r1, r4, lsl #2
      34:	ab0c0000 	blge	30003c <_bsl_base_address+0xfe03c>
      38:	d6000000 	strle	r0, [r0], -r0
      3c:	70000000 	andvc	r0, r0, r0
      40:	20000003 	andcs	r0, r0, r3
      44:	a3000000 	movwge	r0, #0
      48:	02000000 	andeq	r0, r0, #0
      4c:	01290704 			; <UNDEFINED> instruction: 0x01290704
      50:	04030000 	streq	r0, [r3], #-0
      54:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
      58:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
      5c:	0000007b 	andeq	r0, r0, fp, ror r0
      60:	cb040802 	blgt	102070 <__data_load__+0x100a40>
      64:	02000001 	andeq	r0, r0, #1
      68:	01410601 	cmpeq	r1, r1, lsl #12
      6c:	01020000 	mrseq	r0, (UNDEF: 2)
      70:	00013f08 	andeq	r3, r1, r8, lsl #30
      74:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
      78:	000001d7 	ldrdeq	r0, [r0], -r7
      7c:	89070202 	stmdbhi	r7, {r1, r9}
      80:	02000000 	andeq	r0, r0, #0
      84:	00800504 	addeq	r0, r0, r4, lsl #10
      88:	04020000 	streq	r0, [r2], #-0
      8c:	00012407 	andeq	r2, r1, r7, lsl #8
      90:	07080200 	streq	r0, [r8, -r0, lsl #4]
      94:	0000011f 	andeq	r0, r0, pc, lsl r1
      98:	00780404 	rsbseq	r0, r8, r4, lsl #8
      9c:	02050000 	andeq	r0, r5, #0
      a0:	01480801 	cmpeq	r8, r1, lsl #16
      a4:	9c060000 	stcls	0, cr0, [r6], {-0}
      a8:	07000000 	streq	r0, [r0, -r0]
      ac:	00004801 	andeq	r4, r0, r1, lsl #16
      b0:	06050200 	streq	r0, [r5], -r0, lsl #4
      b4:	000000a5 	andeq	r0, r0, r5, lsr #1
      b8:	0001e107 	andeq	lr, r1, r7, lsl #2
      bc:	ed070000 	stc	0, cr0, [r7, #-0]
      c0:	01000001 	tsteq	r0, r1
      c4:	00013607 	andeq	r3, r1, r7, lsl #12
      c8:	08000200 	stmdaeq	r0, {r9}
      cc:	000001e6 	andeq	r0, r0, r6, ror #3
      d0:	2c054c03 	stccs	12, cr4, [r5], {3}
      d4:	70000000 	andvc	r0, r0, r0
      d8:	20000003 	andcs	r0, r0, r3
      dc:	01000000 	mrseq	r0, (UNDEF: 0)
      e0:	0000f39c 	muleq	r0, ip, r3
      e4:	6e660900 	vmulvs.f16	s1, s12, s0	; <UNPREDICTABLE>
      e8:	10380100 	eorsne	r0, r8, r0, lsl #2
      ec:	00000072 	andeq	r0, r0, r2, ror r0
      f0:	00000006 	andeq	r0, r0, r6
      f4:	00000000 	andeq	r0, r0, r0
      f8:	0003880a 	andeq	r8, r3, sl, lsl #16
      fc:	0000f300 	andeq	pc, r0, r0, lsl #6
     100:	50010b00 	andpl	r0, r1, r0, lsl #22
     104:	010b3001 	tsteq	fp, r1
     108:	01f30351 	mvnseq	r0, r1, asr r3
     10c:	52010b50 	andpl	r0, r1, #80, 22	; 0x14000
     110:	010b3001 	tsteq	fp, r1
     114:	00300153 	eorseq	r0, r0, r3, asr r1
     118:	014d0c00 	cmpeq	sp, r0, lsl #24
     11c:	014d0000 	mrseq	r0, (UNDEF: 77)
     120:	0d020000 	stceq	0, cr0, [r2, #-0]
     124:	09650005 	stmdbeq	r5!, {r0, r2}^
     128:	00040000 	andeq	r0, r4, r0
     12c:	000000c8 	andeq	r0, r0, r8, asr #1
     130:	01610104 	cmneq	r1, r4, lsl #2
     134:	910c0000 	mrsls	r0, (UNDEF: 12)
     138:	d6000005 	strle	r0, [r0], -r5
     13c:	90000000 	andls	r0, r0, r0
     140:	34000003 	strcc	r0, [r0], #-3
     144:	5f000000 	svcpl	0x00000000
     148:	02000001 	andeq	r0, r0, #1
     14c:	01290704 			; <UNDEFINED> instruction: 0x01290704
     150:	04030000 	streq	r0, [r3], #-0
     154:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     158:	05080200 	streq	r0, [r8, #-512]	; 0xfffffe00
     15c:	0000007b 	andeq	r0, r0, fp, ror r0
     160:	cb040802 	blgt	102170 <__data_load__+0x100b40>
     164:	04000001 	streq	r0, [r0], #-1
     168:	0000039d 	muleq	r0, sp, r3
     16c:	17015e02 	strne	r5, [r1, -r2, lsl #28]
     170:	00000025 	andeq	r0, r0, r5, lsr #32
     174:	41060102 	tstmi	r6, r2, lsl #2
     178:	02000001 	andeq	r0, r0, #1
     17c:	013f0801 	teqeq	pc, r1, lsl #16
     180:	02020000 	andeq	r0, r2, #0
     184:	0001d705 	andeq	sp, r1, r5, lsl #14
     188:	07020200 	streq	r0, [r2, -r0, lsl #4]
     18c:	00000089 	andeq	r0, r0, r9, lsl #1
     190:	80050402 	andhi	r0, r5, r2, lsl #8
     194:	02000000 	andeq	r0, r0, #0
     198:	01240704 			; <UNDEFINED> instruction: 0x01240704
     19c:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     1a0:	00011f07 	andeq	r1, r1, r7, lsl #30
     1a4:	03d80500 	bicseq	r0, r8, #0, 10
     1a8:	2e030000 	cdpcs	0, 0, cr0, cr3, cr0, {0}
     1ac:	00006a0e 	andeq	r6, r0, lr, lsl #20
     1b0:	04c50500 	strbeq	r0, [r5], #1280	; 0x500
     1b4:	74030000 	strvc	r0, [r3], #-0
     1b8:	00006a0e 	andeq	r6, r0, lr, lsl #20
     1bc:	03040600 	movweq	r0, #17920	; 0x4600
     1c0:	00b903a5 	adcseq	r0, r9, r5, lsr #7
     1c4:	97070000 	strls	r0, [r7, -r0]
     1c8:	03000003 	movweq	r0, #3
     1cc:	00410ca7 	subeq	r0, r1, r7, lsr #25
     1d0:	49070000 	stmdbmi	r7, {}	; <UNPREDICTABLE>
     1d4:	03000003 	movweq	r0, #3
     1d8:	00b913a8 	adcseq	r1, r9, r8, lsr #7
     1dc:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     1e0:	00000055 	andeq	r0, r0, r5, asr r0
     1e4:	000000c9 	andeq	r0, r0, r9, asr #1
     1e8:	00002509 	andeq	r2, r0, r9, lsl #10
     1ec:	0a000300 	beq	df4 <_sbrk_r+0x10>
     1f0:	09a20308 	stmibeq	r2!, {r3, r8, r9}
     1f4:	000000ed 	andeq	r0, r0, sp, ror #1
     1f8:	0004af0b 	andeq	sl, r4, fp, lsl #30
     1fc:	07a40300 	streq	r0, [r4, r0, lsl #6]!
     200:	0000002c 	andeq	r0, r0, ip, lsr #32
     204:	04b70b00 	ldrteq	r0, [r7], #2816	; 0xb00
     208:	a9030000 	stmdbge	r3, {}	; <UNPREDICTABLE>
     20c:	00009705 	andeq	r9, r0, r5, lsl #14
     210:	05000400 	streq	r0, [r0, #-1024]	; 0xfffffc00
     214:	00000438 	andeq	r0, r0, r8, lsr r4
     218:	c903aa03 	stmdbgt	r3, {r0, r1, r9, fp, sp, pc}
     21c:	0c000000 	stceq	0, cr0, [r0], {-0}
     220:	04f70504 	ldrbteq	r0, [r7], #1284	; 0x504
     224:	16040000 	strne	r0, [r4], -r0
     228:	00007119 	andeq	r7, r0, r9, lsl r1
     22c:	03fa0500 	mvnseq	r0, #0, 10
     230:	0c050000 	stceq	0, cr0, [r5], {-0}
     234:	00002c0d 	andeq	r2, r0, sp, lsl #24
     238:	030c0500 	movweq	r0, #50432	; 0xc500
     23c:	23040000 	movwcs	r0, #16384	; 0x4000
     240:	0001071b 	andeq	r0, r1, fp, lsl r7
     244:	031d0d00 	tsteq	sp, #0, 26
     248:	04180000 	ldreq	r0, [r8], #-0
     24c:	01790834 	cmneq	r9, r4, lsr r8
     250:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
     254:	04000004 	streq	r0, [r0], #-4
     258:	01791336 	cmneq	r9, r6, lsr r3
     25c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     260:	04006b5f 	streq	r6, [r0], #-2911	; 0xfffff4a1
     264:	002c0737 	eoreq	r0, ip, r7, lsr r7
     268:	0b040000 	bleq	100270 <__data_load__+0xfec40>
     26c:	000004a1 	andeq	r0, r0, r1, lsr #9
     270:	2c0b3704 	stccs	7, cr3, [fp], {4}
     274:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     278:	0003060b 	andeq	r0, r3, fp, lsl #12
     27c:	14370400 	ldrtne	r0, [r7], #-1024	; 0xfffffc00
     280:	0000002c 	andeq	r0, r0, ip, lsr #32
     284:	05310b0c 	ldreq	r0, [r1, #-2828]!	; 0xfffff4f4
     288:	37040000 	strcc	r0, [r4, -r0]
     28c:	00002c1b 	andeq	r2, r0, fp, lsl ip
     290:	5f0e1000 	svcpl	0x000e1000
     294:	38040078 	stmdacc	r4, {r3, r4, r5, r6}
     298:	00017f0b 	andeq	r7, r1, fp, lsl #30
     29c:	0f001400 	svceq	0x00001400
     2a0:	00011f04 	andeq	r1, r1, r4, lsl #30
     2a4:	00fb0800 	rscseq	r0, fp, r0, lsl #16
     2a8:	018f0000 	orreq	r0, pc, r0
     2ac:	25090000 	strcs	r0, [r9, #-0]
     2b0:	00000000 	andeq	r0, r0, r0
     2b4:	03440d00 	movteq	r0, #19712	; 0x4d00
     2b8:	04240000 	strteq	r0, [r4], #-0
     2bc:	0212083c 	andseq	r0, r2, #60, 16	; 0x3c0000
     2c0:	690b0000 	stmdbvs	fp, {}	; <UNPREDICTABLE>
     2c4:	04000002 	streq	r0, [r0], #-2
     2c8:	002c093e 	eoreq	r0, ip, lr, lsr r9
     2cc:	0b000000 	bleq	2d4 <func+0x34>
     2d0:	000004cd 	andeq	r0, r0, sp, asr #9
     2d4:	2c093f04 	stccs	15, cr3, [r9], {4}
     2d8:	04000000 	streq	r0, [r0], #-0
     2dc:	00027e0b 	andeq	r7, r2, fp, lsl #28
     2e0:	09400400 	stmdbeq	r0, {sl}^
     2e4:	0000002c 	andeq	r0, r0, ip, lsr #32
     2e8:	05cd0b08 	strbeq	r0, [sp, #2824]	; 0xb08
     2ec:	41040000 	mrsmi	r0, (UNDEF: 4)
     2f0:	00002c09 	andeq	r2, r0, r9, lsl #24
     2f4:	c40b0c00 	strgt	r0, [fp], #-3072	; 0xfffff400
     2f8:	04000003 	streq	r0, [r0], #-3
     2fc:	002c0942 	eoreq	r0, ip, r2, asr #18
     300:	0b100000 	bleq	400308 <_bsl_base_address+0x1fe308>
     304:	000003b3 			; <UNDEFINED> instruction: 0x000003b3
     308:	2c094304 	stccs	3, cr4, [r9], {4}
     30c:	14000000 	strne	r0, [r0], #-0
     310:	0005360b 	andeq	r3, r5, fp, lsl #12
     314:	09440400 	stmdbeq	r4, {sl}^
     318:	0000002c 	andeq	r0, r0, ip, lsr #32
     31c:	041a0b18 	ldreq	r0, [sl], #-2840	; 0xfffff4e8
     320:	45040000 	strmi	r0, [r4, #-0]
     324:	00002c09 	andeq	r2, r0, r9, lsl #24
     328:	6b0b1c00 	blvs	2c7330 <_bsl_base_address+0xc5330>
     32c:	04000005 	streq	r0, [r0], #-5
     330:	002c0946 	eoreq	r0, ip, r6, asr #18
     334:	00200000 	eoreq	r0, r0, r0
     338:	00028d10 	andeq	r8, r2, r0, lsl sp
     33c:	04010800 	streq	r0, [r1], #-2048	; 0xfffff800
     340:	0257084f 	subseq	r0, r7, #5177344	; 0x4f0000
     344:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
     348:	04000002 	streq	r0, [r0], #-2
     34c:	02570a50 	subseq	r0, r7, #80, 20	; 0x50000
     350:	0b000000 	bleq	358 <func+0xb8>
     354:	000001f9 	strdeq	r0, [r0], -r9
     358:	57095104 	strpl	r5, [r9, -r4, lsl #2]
     35c:	80000002 	andhi	r0, r0, r2
     360:	0004e911 	andeq	lr, r4, r1, lsl r9
     364:	0a530400 	beq	14c136c <_bsl_base_address+0x12bf36c>
     368:	000000fb 	strdeq	r0, [r0], -fp
     36c:	b2110100 	andslt	r0, r1, #0, 2
     370:	04000002 	streq	r0, [r0], #-2
     374:	00fb0a56 	rscseq	r0, fp, r6, asr sl
     378:	01040000 	mrseq	r0, (UNDEF: 4)
     37c:	00f90800 	rscseq	r0, r9, r0, lsl #16
     380:	02670000 	rsbeq	r0, r7, #0
     384:	25090000 	strcs	r0, [r9, #-0]
     388:	1f000000 	svcne	0x00000000
     38c:	01e51000 	mvneq	r1, r0
     390:	01900000 	orrseq	r0, r0, r0
     394:	aa086204 	bge	218bac <_bsl_base_address+0x16bac>
     398:	0b000002 	bleq	3a8 <exit+0x18>
     39c:	00000459 	andeq	r0, r0, r9, asr r4
     3a0:	aa126304 	bge	498fb8 <_bsl_base_address+0x296fb8>
     3a4:	00000002 	andeq	r0, r0, r2
     3a8:	0004710b 	andeq	r7, r4, fp, lsl #2
     3ac:	06640400 	strbteq	r0, [r4], -r0, lsl #8
     3b0:	0000002c 	andeq	r0, r0, ip, lsr #32
     3b4:	03010b04 	movweq	r0, #6916	; 0x1b04
     3b8:	66040000 	strvs	r0, [r4], -r0
     3bc:	0002b009 	andeq	fp, r2, r9
     3c0:	8d0b0800 	stchi	8, cr0, [fp, #-0]
     3c4:	04000002 	streq	r0, [r0], #-2
     3c8:	02121e67 	andseq	r1, r2, #1648	; 0x670
     3cc:	00880000 	addeq	r0, r8, r0
     3d0:	0267040f 	rsbeq	r0, r7, #251658240	; 0xf000000
     3d4:	c0080000 	andgt	r0, r8, r0
     3d8:	c0000002 	andgt	r0, r0, r2
     3dc:	09000002 	stmdbeq	r0, {r1}
     3e0:	00000025 	andeq	r0, r0, r5, lsr #32
     3e4:	040f001f 	streq	r0, [pc], #-31	; 3ec <__libc_fini_array+0x28>
     3e8:	000002c6 	andeq	r0, r0, r6, asr #5
     3ec:	04240d12 	strteq	r0, [r4], #-3346	; 0xfffff2ee
     3f0:	04080000 	streq	r0, [r8], #-0
     3f4:	02ef087a 	rsceq	r0, pc, #7995392	; 0x7a0000
     3f8:	d70b0000 	strle	r0, [fp, -r0]
     3fc:	04000009 	streq	r0, [r0], #-9
     400:	02ef117b 	rsceq	r1, pc, #-1073741794	; 0xc000001e
     404:	0b000000 	bleq	40c <__libc_init_array+0x4>
     408:	000008a3 	andeq	r0, r0, r3, lsr #17
     40c:	2c067c04 	stccs	12, cr7, [r6], {4}
     410:	04000000 	streq	r0, [r0], #-0
     414:	55040f00 	strpl	r0, [r4, #-3840]	; 0xfffff100
     418:	0d000000 	stceq	0, cr0, [r0, #-0]
     41c:	00000443 	andeq	r0, r0, r3, asr #8
     420:	08ba0468 	ldmeq	sl!, {r3, r5, r6, sl}
     424:	00000438 	andeq	r0, r0, r8, lsr r4
     428:	00705f0e 	rsbseq	r5, r0, lr, lsl #30
     42c:	ef12bb04 	svc	0x0012bb04
     430:	00000002 	andeq	r0, r0, r2
     434:	00725f0e 	rsbseq	r5, r2, lr, lsl #30
     438:	2c07bc04 	stccs	12, cr11, [r7], {4}
     43c:	04000000 	streq	r0, [r0], #-0
     440:	00775f0e 	rsbseq	r5, r7, lr, lsl #30
     444:	2c07bd04 	stccs	13, cr11, [r7], {4}
     448:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     44c:	0002ab0b 	andeq	sl, r2, fp, lsl #22
     450:	09be0400 	ldmibeq	lr!, {sl}
     454:	0000005c 	andeq	r0, r0, ip, asr r0
     458:	03600b0c 	cmneq	r0, #12, 22	; 0x3000
     45c:	bf040000 	svclt	0x00040000
     460:	00005c09 	andeq	r5, r0, r9, lsl #24
     464:	5f0e0e00 	svcpl	0x000e0e00
     468:	04006662 	streq	r6, [r0], #-1634	; 0xfffff99e
     46c:	02c711c0 	sbceq	r1, r7, #192, 2	; 0x30
     470:	0b100000 	bleq	400478 <_bsl_base_address+0x1fe478>
     474:	00000238 	andeq	r0, r0, r8, lsr r2
     478:	2c07c104 	stfcsd	f4, [r7], {4}
     47c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     480:	00029b0b 	andeq	r9, r2, fp, lsl #22
     484:	0ac80400 	beq	ff20148c <__stack+0xdf200bb4>
     488:	000000f9 	strdeq	r0, [r0], -r9
     48c:	03340b1c 	teqeq	r4, #28, 22	; 0x7000
     490:	ca040000 	bgt	100498 <__data_load__+0xfee68>
     494:	0005bc1d 	andeq	fp, r5, sp, lsl ip
     498:	ac0b2000 	stcge	0, cr2, [fp], {-0}
     49c:	04000003 	streq	r0, [r0], #-3
     4a0:	05e61dcc 	strbeq	r1, [r6, #3532]!	; 0xdcc
     4a4:	0b240000 	bleq	9004ac <_bsl_base_address+0x6fe4ac>
     4a8:	000004bf 			; <UNDEFINED> instruction: 0x000004bf
     4ac:	0a0dcf04 	beq	3740c4 <_bsl_base_address+0x1720c4>
     4b0:	28000006 	stmdacs	r0, {r1, r2}
     4b4:	0005850b 	andeq	r8, r5, fp, lsl #10
     4b8:	09d00400 	ldmibeq	r0, {sl}^
     4bc:	00000624 	andeq	r0, r0, r4, lsr #12
     4c0:	755f0e2c 	ldrbvc	r0, [pc, #-3628]	; fffff69c <__stack+0xdfffedc4>
     4c4:	d3040062 	movwle	r0, #16482	; 0x4062
     4c8:	0002c711 	andeq	ip, r2, r1, lsl r7
     4cc:	5f0e3000 	svcpl	0x000e3000
     4d0:	04007075 	streq	r7, [r0], #-117	; 0xffffff8b
     4d4:	02ef12d4 	rsceq	r1, pc, #212, 4	; 0x4000000d
     4d8:	0e380000 	cdpeq	0, 3, cr0, cr8, cr0, {0}
     4dc:	0072755f 	rsbseq	r7, r2, pc, asr r5
     4e0:	2c07d504 	cfstr32cs	mvfx13, [r7], {4}
     4e4:	3c000000 	stccc	0, cr0, [r0], {-0}
     4e8:	0002780b 	andeq	r7, r2, fp, lsl #16
     4ec:	11d80400 	bicsne	r0, r8, r0, lsl #8
     4f0:	0000062a 	andeq	r0, r0, sl, lsr #12
     4f4:	055d0b40 	ldrbeq	r0, [sp, #-2880]	; 0xfffff4c0
     4f8:	d9040000 	stmdble	r4, {}	; <UNPREDICTABLE>
     4fc:	00063a11 	andeq	r3, r6, r1, lsl sl
     500:	5f0e4300 	svcpl	0x000e4300
     504:	0400626c 	streq	r6, [r0], #-620	; 0xfffffd94
     508:	02c711dc 	sbceq	r1, r7, #220, 2	; 0x37
     50c:	0b440000 	bleq	1100514 <_bsl_base_address+0xefe514>
     510:	000002c1 	andeq	r0, r0, r1, asr #5
     514:	2c07df04 	stccs	15, cr13, [r7], {4}
     518:	4c000000 	stcmi	0, cr0, [r0], {-0}
     51c:	0002d20b 	andeq	sp, r2, fp, lsl #4
     520:	0ae00400 	beq	ff801528 <__stack+0xdf800c50>
     524:	0000007f 	andeq	r0, r0, pc, ror r0
     528:	06d00b50 			; <UNDEFINED> instruction: 0x06d00b50
     52c:	e3040000 	movw	r0, #16384	; 0x4000
     530:	00045612 	andeq	r5, r4, r2, lsl r6
     534:	780b5400 	stmdavc	fp, {sl, ip, lr}
     538:	04000008 	streq	r0, [r0], #-8
     53c:	01130ce7 	tsteq	r3, r7, ror #25
     540:	0b580000 	bleq	1600548 <_bsl_base_address+0x13fe548>
     544:	0000044b 	andeq	r0, r0, fp, asr #8
     548:	ed0ee904 	vstr.16	s28, [lr, #-8]
     54c:	5c000000 	stcpl	0, cr0, [r0], {-0}
     550:	0003a40b 	andeq	sl, r3, fp, lsl #8
     554:	09ea0400 	stmibeq	sl!, {sl}^
     558:	0000002c 	andeq	r0, r0, ip, lsr #32
     55c:	2c130064 	ldccs	0, cr0, [r3], {100}	; 0x64
     560:	56000000 	strpl	r0, [r0], -r0
     564:	14000004 	strne	r0, [r0], #-4
     568:	00000456 	andeq	r0, r0, r6, asr r4
     56c:	0000f914 	andeq	pc, r0, r4, lsl r9	; <UNPREDICTABLE>
     570:	05aa1400 	streq	r1, [sl, #1024]!	; 0x400
     574:	2c140000 	ldccs	0, cr0, [r4], {-0}
     578:	00000000 	andeq	r0, r0, r0
     57c:	0461040f 	strbteq	r0, [r1], #-1039	; 0xfffffbf1
     580:	56150000 	ldrpl	r0, [r5], -r0
     584:	16000004 	strne	r0, [r0], -r4
     588:	00000be0 	andeq	r0, r0, r0, ror #23
     58c:	65040428 	strvs	r0, [r4, #-1064]	; 0xfffffbd8
     590:	05aa0802 	streq	r0, [sl, #2050]!	; 0x802
     594:	13170000 	tstne	r7, #0
     598:	04000004 	streq	r0, [r0], #-4
     59c:	2c070267 	sfmcs	f0, 4, [r7], {103}	; 0x67
     5a0:	00000000 	andeq	r0, r0, r0
     5a4:	0002ba17 	andeq	fp, r2, r7, lsl sl
     5a8:	026c0400 	rsbeq	r0, ip, #0, 8
     5ac:	0006960b 	andeq	r9, r6, fp, lsl #12
     5b0:	50170400 	andspl	r0, r7, r0, lsl #8
     5b4:	04000003 	streq	r0, [r0], #-3
     5b8:	9614026c 	ldrls	r0, [r4], -ip, ror #4
     5bc:	08000006 	stmdaeq	r0, {r1, r2}
     5c0:	00031517 	andeq	r1, r3, r7, lsl r5
     5c4:	026c0400 	rsbeq	r0, ip, #0, 8
     5c8:	0006961e 	andeq	r9, r6, lr, lsl r6
     5cc:	6c170c00 	ldcvs	12, cr0, [r7], {-0}
     5d0:	04000004 	streq	r0, [r0], #-4
     5d4:	2c08026e 	sfmcs	f0, 4, [r8], {110}	; 0x6e
     5d8:	10000000 	andne	r0, r0, r0
     5dc:	00020d17 	andeq	r0, r2, r7, lsl sp
     5e0:	026f0400 	rsbeq	r0, pc, #0, 8
     5e4:	00089608 	andeq	r9, r8, r8, lsl #12
     5e8:	88171400 	ldmdahi	r7, {sl, ip}
     5ec:	04000004 	streq	r0, [r0], #-4
     5f0:	2c070272 	sfmcs	f0, 4, [r7], {114}	; 0x72
     5f4:	30000000 	andcc	r0, r0, r0
     5f8:	00047617 	andeq	r7, r4, r7, lsl r6
     5fc:	02730400 	rsbseq	r0, r3, #0, 8
     600:	0008ab16 	andeq	sl, r8, r6, lsl fp
     604:	cd173400 	cfldrsgt	mvf3, [r7, #-0]
     608:	04000003 	streq	r0, [r0], #-3
     60c:	2c070275 	sfmcs	f0, 4, [r7], {117}	; 0x75
     610:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
     614:	00047e17 	andeq	r7, r4, r7, lsl lr
     618:	02770400 	rsbseq	r0, r7, #0, 8
     61c:	0008bc0a 	andeq	fp, r8, sl, lsl #24
     620:	8f173c00 	svchi	0x00173c00
     624:	04000003 	streq	r0, [r0], #-3
     628:	7913027a 	ldmdbvc	r3, {r1, r3, r4, r5, r6, r9}
     62c:	40000001 	andmi	r0, r0, r1
     630:	00033a17 	andeq	r3, r3, r7, lsl sl
     634:	027b0400 	rsbseq	r0, fp, #0, 8
     638:	00002c07 	andeq	r2, r0, r7, lsl #24
     63c:	c8174400 	ldmdagt	r7, {sl, lr}
     640:	04000005 	streq	r0, [r0], #-5
     644:	7913027c 	ldmdbvc	r3, {r2, r3, r4, r5, r6, r9}
     648:	48000001 	stmdami	r0, {r0}
     64c:	0003f017 	andeq	pc, r3, r7, lsl r0	; <UNPREDICTABLE>
     650:	027d0400 	rsbseq	r0, sp, #0, 8
     654:	0008c214 	andeq	ip, r8, r4, lsl r2
     658:	58174c00 	ldmdapl	r7, {sl, fp, lr}
     65c:	04000003 	streq	r0, [r0], #-3
     660:	2c070280 	sfmcs	f0, 4, [r7], {128}	; 0x80
     664:	50000000 	andpl	r0, r0, r0
     668:	0002ca17 	andeq	ip, r2, r7, lsl sl
     66c:	02810400 	addeq	r0, r1, #0, 8
     670:	0005aa09 	andeq	sl, r5, r9, lsl #20
     674:	0c175400 	cfldrseq	mvf5, [r7], {-0}
     678:	04000004 	streq	r0, [r0], #-4
     67c:	710702a4 	smlatbvc	r7, r4, r2, r0
     680:	58000008 	stmdapl	r0, {r3}
     684:	0001e518 	andeq	lr, r1, r8, lsl r5
     688:	02a80400 	adceq	r0, r8, #0, 8
     68c:	0002aa13 	andeq	sl, r2, r3, lsl sl
     690:	18014800 	stmdane	r1, {fp, lr}
     694:	0000036d 	andeq	r0, r0, sp, ror #6
     698:	1202a904 	andne	sl, r2, #4, 18	; 0x10000
     69c:	00000267 	andeq	r0, r0, r7, ror #4
     6a0:	5318014c 	tstpl	r8, #76, 2
     6a4:	04000005 	streq	r0, [r0], #-5
     6a8:	d30c02ad 	movwle	r0, #49837	; 0xc2ad
     6ac:	dc000008 	stcle	0, cr0, [r0], {8}
     6b0:	02a31802 	adceq	r1, r3, #131072	; 0x20000
     6b4:	b2040000 	andlt	r0, r4, #0
     6b8:	06571002 	ldrbeq	r1, [r7], -r2
     6bc:	02e00000 	rsceq	r0, r0, #0
     6c0:	00028818 	andeq	r8, r2, r8, lsl r8
     6c4:	02b40400 	adcseq	r0, r4, #0, 8
     6c8:	0008df0a 	andeq	sp, r8, sl, lsl #30
     6cc:	0002ec00 	andeq	lr, r2, r0, lsl #24
     6d0:	05b0040f 	ldreq	r0, [r0, #1039]!	; 0x40f
     6d4:	01020000 	mrseq	r0, (UNDEF: 2)
     6d8:	00014808 	andeq	r4, r1, r8, lsl #16
     6dc:	05b01500 	ldreq	r1, [r0, #1280]!	; 0x500
     6e0:	040f0000 	streq	r0, [pc], #-0	; 6e8 <_malloc_r+0x218>
     6e4:	00000438 	andeq	r0, r0, r8, lsr r4
     6e8:	00002c13 	andeq	r2, r0, r3, lsl ip
     6ec:	0005e000 	andeq	lr, r5, r0
     6f0:	04561400 	ldrbeq	r1, [r6], #-1024	; 0xfffffc00
     6f4:	f9140000 			; <UNDEFINED> instruction: 0xf9140000
     6f8:	14000000 	strne	r0, [r0], #-0
     6fc:	000005e0 	andeq	r0, r0, r0, ror #11
     700:	00002c14 	andeq	r2, r0, r4, lsl ip
     704:	040f0000 	streq	r0, [pc], #-0	; 70c <_malloc_r+0x23c>
     708:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
     70c:	05c2040f 	strbeq	r0, [r2, #1039]	; 0x40f
     710:	8b130000 	blhi	4c0718 <_bsl_base_address+0x2be718>
     714:	0a000000 	beq	71c <_malloc_r+0x24c>
     718:	14000006 	strne	r0, [r0], #-6
     71c:	00000456 	andeq	r0, r0, r6, asr r4
     720:	0000f914 	andeq	pc, r0, r4, lsl r9	; <UNPREDICTABLE>
     724:	008b1400 	addeq	r1, fp, r0, lsl #8
     728:	2c140000 	ldccs	0, cr0, [r4], {-0}
     72c:	00000000 	andeq	r0, r0, r0
     730:	05ec040f 	strbeq	r0, [ip, #1039]!	; 0x40f
     734:	2c130000 	ldccs	0, cr0, [r3], {-0}
     738:	24000000 	strcs	r0, [r0], #-0
     73c:	14000006 	strne	r0, [r0], #-6
     740:	00000456 	andeq	r0, r0, r6, asr r4
     744:	0000f914 	andeq	pc, r0, r4, lsl r9	; <UNPREDICTABLE>
     748:	040f0000 	streq	r0, [pc], #-0	; 750 <_malloc_r+0x280>
     74c:	00000610 	andeq	r0, r0, r0, lsl r6
     750:	00005508 	andeq	r5, r0, r8, lsl #10
     754:	00063a00 	andeq	r3, r6, r0, lsl #20
     758:	00250900 	eoreq	r0, r5, r0, lsl #18
     75c:	00020000 	andeq	r0, r2, r0
     760:	00005508 	andeq	r5, r0, r8, lsl #10
     764:	00064a00 	andeq	r4, r6, r0, lsl #20
     768:	00250900 	eoreq	r0, r5, r0, lsl #18
     76c:	00000000 	andeq	r0, r0, r0
     770:	00043104 	andeq	r3, r4, r4, lsl #2
     774:	01240400 			; <UNDEFINED> instruction: 0x01240400
     778:	0002f51a 	andeq	pc, r2, sl, lsl r5	; <UNPREDICTABLE>
     77c:	0c1f1900 			; <UNDEFINED> instruction: 0x0c1f1900
     780:	040c0000 	streq	r0, [ip], #-0
     784:	90080128 	andls	r0, r8, r8, lsr #2
     788:	17000006 	strne	r0, [r0, -r6]
     78c:	00000459 	andeq	r0, r0, r9, asr r4
     790:	11012a04 	tstne	r1, r4, lsl #20
     794:	00000690 	muleq	r0, r0, r6
     798:	03661700 	cmneq	r6, #0, 14
     79c:	2b040000 	blcs	1007a4 <__data_load__+0xff174>
     7a0:	002c0701 	eoreq	r0, ip, r1, lsl #14
     7a4:	17040000 	strne	r0, [r4, -r0]
     7a8:	0000042b 	andeq	r0, r0, fp, lsr #8
     7ac:	0b012c04 	bleq	4b7c4 <__data_load__+0x4a194>
     7b0:	00000696 	muleq	r0, r6, r6
     7b4:	040f0008 	streq	r0, [pc], #-8	; 7bc <_malloc_r+0x2ec>
     7b8:	00000657 	andeq	r0, r0, r7, asr r6
     7bc:	064a040f 	strbeq	r0, [sl], -pc, lsl #8
     7c0:	05190000 	ldreq	r0, [r9, #-0]
     7c4:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
     7c8:	08014404 	stmdaeq	r1, {r2, sl, lr}
     7cc:	000006d5 	ldrdeq	r0, [r0], -r5
     7d0:	0004a917 	andeq	sl, r4, r7, lsl r9
     7d4:	01450400 	cmpeq	r5, r0, lsl #8
     7d8:	0006d512 	andeq	sp, r6, r2, lsl r5
     7dc:	d6170000 	ldrle	r0, [r7], -r0
     7e0:	04000004 	streq	r0, [r0], #-4
     7e4:	d5120146 	ldrle	r0, [r2, #-326]	; 0xfffffeba
     7e8:	06000006 	streq	r0, [r0], -r6
     7ec:	0004f217 	andeq	pc, r4, r7, lsl r2	; <UNPREDICTABLE>
     7f0:	01470400 	cmpeq	r7, r0, lsl #8
     7f4:	00006312 	andeq	r6, r0, r2, lsl r3
     7f8:	08000c00 	stmdaeq	r0, {sl, fp}
     7fc:	00000063 	andeq	r0, r0, r3, rrx
     800:	000006e5 	andeq	r0, r0, r5, ror #13
     804:	00002509 	andeq	r2, r0, r9, lsl #10
     808:	1a000200 	bne	1010 <_malloc_trim_r+0x44>
     80c:	028504d0 	addeq	r0, r5, #208, 8	; 0xd0000000
     810:	0007fa07 	andeq	pc, r7, r7, lsl #20
     814:	05241700 	streq	r1, [r4, #-1792]!	; 0xfffff900
     818:	87040000 	strhi	r0, [r4, -r0]
     81c:	00251802 	eoreq	r1, r5, r2, lsl #16
     820:	17000000 	strne	r0, [r0, -r0]
     824:	000004dc 	ldrdeq	r0, [r0], -ip
     828:	12028804 	andne	r8, r2, #4, 16	; 0x40000
     82c:	000005aa 	andeq	r0, r0, sl, lsr #11
     830:	03821704 	orreq	r1, r2, #4, 14	; 0x100000
     834:	89040000 	stmdbhi	r4, {}	; <UNPREDICTABLE>
     838:	07fa1002 	ldrbeq	r1, [sl, r2]!
     83c:	17080000 	strne	r0, [r8, -r0]
     840:	00000576 	andeq	r0, r0, r6, ror r5
     844:	17028a04 	strne	r8, [r2, -r4, lsl #20]
     848:	0000018f 	andeq	r0, r0, pc, lsl #3
     84c:	03251724 			; <UNDEFINED> instruction: 0x03251724
     850:	8b040000 	blhi	100858 <__data_load__+0xff228>
     854:	002c0f02 	eoreq	r0, ip, r2, lsl #30
     858:	17480000 	strbne	r0, [r8, -r0]
     85c:	00000454 	andeq	r0, r0, r4, asr r4
     860:	2c028c04 	stccs	12, cr8, [r2], {4}
     864:	00000078 	andeq	r0, r0, r8, ror r0
     868:	058c1750 	streq	r1, [ip, #1872]	; 0x750
     86c:	8d040000 	stchi	0, cr0, [r4, #-0]
     870:	069c1a02 	ldreq	r1, [ip], r2, lsl #20
     874:	17580000 	ldrbne	r0, [r8, -r0]
     878:	0000045f 	andeq	r0, r0, pc, asr r4
     87c:	16028e04 	strne	r8, [r2], -r4, lsl #28
     880:	000000ed 	andeq	r0, r0, sp, ror #1
     884:	05ba1768 	ldreq	r1, [sl, #1896]!	; 0x768
     888:	8f040000 	svchi	0x00040000
     88c:	00ed1602 	rsceq	r1, sp, r2, lsl #12
     890:	17700000 	ldrbne	r0, [r0, -r0]!
     894:	0000025b 	andeq	r0, r0, fp, asr r2
     898:	16029004 	strne	r9, [r2], -r4
     89c:	000000ed 	andeq	r0, r0, sp, ror #1
     8a0:	05491778 	strbeq	r1, [r9, #-1912]	; 0xfffff888
     8a4:	91040000 	mrsls	r0, (UNDEF: 4)
     8a8:	080a1002 	stmdaeq	sl, {r1, ip}
     8ac:	17800000 	strne	r0, [r0, r0]
     8b0:	00000376 	andeq	r0, r0, r6, ror r3
     8b4:	10029204 	andne	r9, r2, r4, lsl #4
     8b8:	0000081a 	andeq	r0, r0, sl, lsl r8
     8bc:	04ff1788 	ldrbteq	r1, [pc], #1928	; 8c4 <_malloc_r+0x3f4>
     8c0:	93040000 	movwls	r0, #16384	; 0x4000
     8c4:	002c0f02 	eoreq	r0, ip, r2, lsl #30
     8c8:	17a00000 	strne	r0, [r0, r0]!
     8cc:	000002eb 	andeq	r0, r0, fp, ror #5
     8d0:	16029404 	strne	r9, [r2], -r4, lsl #8
     8d4:	000000ed 	andeq	r0, r0, sp, ror #1
     8d8:	024c17a4 	subeq	r1, ip, #164, 14	; 0x2900000
     8dc:	95040000 	strls	r0, [r4, #-0]
     8e0:	00ed1602 	rsceq	r1, sp, r2, lsl #12
     8e4:	17ac0000 	strne	r0, [ip, r0]!
     8e8:	000002da 	ldrdeq	r0, [r0], -sl
     8ec:	16029604 	strne	r9, [r2], -r4, lsl #12
     8f0:	000000ed 	andeq	r0, r0, sp, ror #1
     8f4:	021817b4 	andseq	r1, r8, #180, 14	; 0x2d00000
     8f8:	97040000 	strls	r0, [r4, -r0]
     8fc:	00ed1602 	rsceq	r1, sp, r2, lsl #12
     900:	17bc0000 	ldrne	r0, [ip, r0]!
     904:	00000227 	andeq	r0, r0, r7, lsr #4
     908:	16029804 	strne	r9, [r2], -r4, lsl #16
     90c:	000000ed 	andeq	r0, r0, sp, ror #1
     910:	041117c4 	ldreq	r1, [r1], #-1988	; 0xfffff83c
     914:	99040000 	stmdbls	r4, {}	; <UNPREDICTABLE>
     918:	002c0802 	eoreq	r0, ip, r2, lsl #16
     91c:	00cc0000 	sbceq	r0, ip, r0
     920:	0005b008 	andeq	fp, r5, r8
     924:	00080a00 	andeq	r0, r8, r0, lsl #20
     928:	00250900 	eoreq	r0, r5, r0, lsl #18
     92c:	00190000 	andseq	r0, r9, r0
     930:	0005b008 	andeq	fp, r5, r8
     934:	00081a00 	andeq	r1, r8, r0, lsl #20
     938:	00250900 	eoreq	r0, r5, r0, lsl #18
     93c:	00070000 	andeq	r0, r7, r0
     940:	0005b008 	andeq	fp, r5, r8
     944:	00082a00 	andeq	r2, r8, r0, lsl #20
     948:	00250900 	eoreq	r0, r5, r0, lsl #18
     94c:	00170000 	andseq	r0, r7, r0
     950:	9e04f01a 	mcrls	0, 0, pc, cr4, cr10, {0}	; <UNPREDICTABLE>
     954:	08510702 	ldmdaeq	r1, {r1, r8, r9, sl}^
     958:	bd170000 	ldclt	0, cr0, [r7, #-0]
     95c:	04000003 	streq	r0, [r0], #-3
     960:	511b02a1 	tstpl	fp, r1, lsr #5
     964:	00000008 	andeq	r0, r0, r8
     968:	00054017 	andeq	r4, r5, r7, lsl r0
     96c:	02a20400 	adceq	r0, r2, #0, 8
     970:	00086118 	andeq	r6, r8, r8, lsl r1
     974:	08007800 	stmdaeq	r0, {fp, ip, sp, lr}
     978:	000002ef 	andeq	r0, r0, pc, ror #5
     97c:	00000861 	andeq	r0, r0, r1, ror #16
     980:	00002509 	andeq	r2, r0, r9, lsl #10
     984:	08001d00 	stmdaeq	r0, {r8, sl, fp, ip}
     988:	00000025 	andeq	r0, r0, r5, lsr #32
     98c:	00000871 	andeq	r0, r0, r1, ror r8
     990:	00002509 	andeq	r2, r0, r9, lsl #10
     994:	1b001d00 	blne	7d9c <__data_load__+0x676c>
     998:	028304f0 	addeq	r0, r3, #240, 8	; 0xf0000000
     99c:	00089603 	andeq	r9, r8, r3, lsl #12
     9a0:	0be01c00 	bleq	ff8079a8 <__stack+0xdf8070d0>
     9a4:	9a040000 	bls	1009ac <__data_load__+0xff37c>
     9a8:	06e50b02 	strbteq	r0, [r5], r2, lsl #22
     9ac:	631c0000 	tstvs	ip, #0
     9b0:	04000005 	streq	r0, [r0], #-5
     9b4:	2a0b02a3 	bcs	2c1448 <_bsl_base_address+0xbf448>
     9b8:	00000008 	andeq	r0, r0, r8
     9bc:	0005b008 	andeq	fp, r5, r8
     9c0:	0008a600 	andeq	sl, r8, r0, lsl #12
     9c4:	00250900 	eoreq	r0, r5, r0, lsl #18
     9c8:	00180000 	andseq	r0, r8, r0
     9cc:	0002411d 	andeq	r4, r2, sp, lsl r1
     9d0:	a6040f00 	strge	r0, [r4], -r0, lsl #30
     9d4:	1e000008 	cdpne	0, 0, cr0, cr0, cr8, {0}
     9d8:	000008bc 			; <UNDEFINED> instruction: 0x000008bc
     9dc:	00045614 	andeq	r5, r4, r4, lsl r6
     9e0:	040f0000 	streq	r0, [pc], #-0	; 9e8 <_malloc_r+0x518>
     9e4:	000008b1 			; <UNDEFINED> instruction: 0x000008b1
     9e8:	0179040f 	cmneq	r9, pc, lsl #8
     9ec:	d31e0000 	tstle	lr, #0
     9f0:	14000008 	strne	r0, [r0], #-8
     9f4:	0000002c 	andeq	r0, r0, ip, lsr #32
     9f8:	d9040f00 	stmdble	r4, {r8, r9, sl, fp}
     9fc:	0f000008 	svceq	0x00000008
     a00:	0008c804 	andeq	ip, r8, r4, lsl #16
     a04:	064a0800 	strbeq	r0, [sl], -r0, lsl #16
     a08:	08ef0000 	stmiaeq	pc!, {}^	; <UNPREDICTABLE>
     a0c:	25090000 	strcs	r0, [r9, #-0]
     a10:	02000000 	andeq	r0, r0, #0
     a14:	050c1f00 	streq	r1, [ip, #-3840]	; 0xfffff100
     a18:	34040000 	strcc	r0, [r4], #-0
     a1c:	045c1d03 	ldrbeq	r1, [ip], #-3331	; 0xfffff2fd
     a20:	73200000 	nopvc	{0}	; <UNPREDICTABLE>
     a24:	08000002 	stmdaeq	r0, {r1}
     a28:	0390065d 	orrseq	r0, r0, #97517568	; 0x5d00000
     a2c:	00340000 	eorseq	r0, r4, r0
     a30:	9c010000 	stcls	0, cr0, [r1], {-0}
     a34:	00000950 	andeq	r0, r0, r0, asr r9
     a38:	00051f21 	andeq	r1, r5, r1, lsr #30
     a3c:	0b350100 	bleq	d40e44 <_bsl_base_address+0xb3ee44>
     a40:	0000002c 	andeq	r0, r0, ip, lsr #32
     a44:	00000036 	andeq	r0, r0, r6, lsr r0
     a48:	00000032 	andeq	r0, r0, r2, lsr r0
     a4c:	0003a022 	andeq	sl, r3, r2, lsr #32
     a50:	00095000 	andeq	r5, r9, r0
     a54:	00093f00 	andeq	r3, r9, r0, lsl #30
     a58:	50012300 	andpl	r2, r1, r0, lsl #6
     a5c:	23007402 	movwcs	r7, #1026	; 0x402
     a60:	30015101 	andcc	r5, r1, r1, lsl #2
     a64:	03c02400 	biceq	r2, r0, #0, 8
     a68:	095c0000 	ldmdbeq	ip, {}^	; <UNPREDICTABLE>
     a6c:	01230000 			; <UNDEFINED> instruction: 0x01230000
     a70:	00740250 	rsbseq	r0, r4, r0, asr r2
     a74:	df250000 	svcle	0x00250000
     a78:	df000003 	svcle	0x00000003
     a7c:	06000003 	streq	r0, [r0], -r3
     a80:	7225060c 	eorvc	r0, r5, #12, 12	; 0xc00000
     a84:	72000002 	andvc	r0, r0, #2
     a88:	07000002 	streq	r0, [r0, -r2]
     a8c:	fe000612 	mcr2	6, 0, r0, cr0, cr2, {0}
     a90:	04000000 	streq	r0, [r0], #-0
     a94:	0002d400 	andeq	sp, r2, r0, lsl #8
     a98:	61010400 	tstvs	r1, r0, lsl #8
     a9c:	0c000001 	stceq	0, cr0, [r0], {1}
     aa0:	00000614 	andeq	r0, r0, r4, lsl r6
     aa4:	0000063b 	andeq	r0, r0, fp, lsr r6
     aa8:	000003c4 	andeq	r0, r0, r4, asr #7
     aac:	00000044 	andeq	r0, r0, r4, asr #32
     ab0:	000002cf 	andeq	r0, r0, pc, asr #5
     ab4:	41060102 	tstmi	r6, r2, lsl #2
     ab8:	02000001 	andeq	r0, r0, #1
     abc:	013f0801 	teqeq	pc, r1, lsl #16
     ac0:	02020000 	andeq	r0, r2, #0
     ac4:	0001d705 	andeq	sp, r1, r5, lsl #14
     ac8:	07020200 	streq	r0, [r2, -r0, lsl #4]
     acc:	00000089 	andeq	r0, r0, r9, lsl #1
     ad0:	80050402 	andhi	r0, r5, r2, lsl #8
     ad4:	02000000 	andeq	r0, r0, #0
     ad8:	01240704 			; <UNDEFINED> instruction: 0x01240704
     adc:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     ae0:	00007b05 	andeq	r7, r0, r5, lsl #22
     ae4:	07080200 	streq	r0, [r8, -r0, lsl #4]
     ae8:	0000011f 	andeq	r0, r0, pc, lsl r1
     aec:	69050403 	stmdbvs	r5, {r0, r1, sl}
     af0:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
     af4:	01290704 			; <UNDEFINED> instruction: 0x01290704
     af8:	d7040000 	strle	r0, [r4, -r0]
     afc:	02000005 	andeq	r0, r0, #5
     b00:	006417d1 	ldrdeq	r1, [r4], #-113	; 0xffffff8f	; <UNPREDICTABLE>
     b04:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
     b08:	0001cb04 	andeq	ip, r1, r4, lsl #22
     b0c:	08010200 	stmdaeq	r1, {r9}
     b10:	00000148 	andeq	r0, r0, r8, asr #2
     b14:	00009005 	andeq	r9, r0, r5
     b18:	00009000 	andeq	r9, r0, r0
     b1c:	07000600 	streq	r0, [r0, -r0, lsl #12]
     b20:	00009604 	andeq	r9, r0, r4, lsl #12
     b24:	de090800 	cdple	8, 0, cr0, cr9, cr0, {0}
     b28:	01000005 	tsteq	r0, r5
     b2c:	00850f11 	addeq	r0, r5, r1, lsl pc
     b30:	f1090000 			; <UNDEFINED> instruction: 0xf1090000
     b34:	01000005 	tsteq	r0, r5
     b38:	00850f12 	addeq	r0, r5, r2, lsl pc
     b3c:	020a0000 	andeq	r0, sl, #0
     b40:	01000006 	tsteq	r0, r6
     b44:	03c4011a 	biceq	r0, r4, #-2147483642	; 0x80000006
     b48:	00440000 	subeq	r0, r4, r0
     b4c:	9c010000 	stcls	0, cr0, [r1], {-0}
     b50:	000000f5 	strdeq	r0, [r0], -r5
     b54:	0004b10b 	andeq	fp, r4, fp, lsl #2
     b58:	0a1c0100 	beq	700f60 <_bsl_base_address+0x4fef60>
     b5c:	0000006b 	andeq	r0, r0, fp, rrx
     b60:	00000058 	andeq	r0, r0, r8, asr r0
     b64:	00000054 	andeq	r0, r0, r4, asr r0
     b68:	0100690c 	tsteq	r0, ip, lsl #18
     b6c:	006b0a1d 	rsbeq	r0, fp, sp, lsl sl
     b70:	00820000 	addeq	r0, r2, r0
     b74:	007a0000 	rsbseq	r0, sl, r0
     b78:	f80d0000 			; <UNDEFINED> instruction: 0xf80d0000
     b7c:	f5000003 			; <UNDEFINED> instruction: 0xf5000003
     b80:	00000000 	andeq	r0, r0, r0
     b84:	000b370e 	andeq	r3, fp, lr, lsl #14
     b88:	000b3700 	andeq	r3, fp, r0, lsl #14
     b8c:	0d150100 	ldfeqs	f0, [r5, #-0]
     b90:	00092600 	andeq	r2, r9, r0, lsl #12
     b94:	a0000400 	andge	r0, r0, r0, lsl #8
     b98:	04000003 	streq	r0, [r0], #-3
     b9c:	00016101 	andeq	r6, r1, r1, lsl #2
     ba0:	06d60c00 	ldrbeq	r0, [r6], r0, lsl #24
     ba4:	06820000 	streq	r0, [r2], r0
     ba8:	03aa0000 			; <UNDEFINED> instruction: 0x03aa0000
     bac:	04020000 	streq	r0, [r2], #-0
     bb0:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
     bb4:	07040300 	streq	r0, [r4, -r0, lsl #6]
     bb8:	00000129 	andeq	r0, r0, r9, lsr #2
     bbc:	7b050803 	blvc	142bd0 <__data_load__+0x1415a0>
     bc0:	03000000 	movweq	r0, #0
     bc4:	01cb0408 	biceq	r0, fp, r8, lsl #8
     bc8:	9d040000 	stcls	0, cr0, [r4, #-0]
     bcc:	01000003 	tsteq	r0, r3
     bd0:	2417015e 	ldrcs	r0, [r7], #-350	; 0xfffffea2
     bd4:	03000000 	movweq	r0, #0
     bd8:	01410601 	cmpeq	r1, r1, lsl #12
     bdc:	01030000 	mrseq	r0, (UNDEF: 3)
     be0:	00013f08 	andeq	r3, r1, r8, lsl #30
     be4:	05020300 	streq	r0, [r2, #-768]	; 0xfffffd00
     be8:	000001d7 	ldrdeq	r0, [r0], -r7
     bec:	89070203 	stmdbhi	r7, {r0, r1, r9}
     bf0:	03000000 	movweq	r0, #0
     bf4:	00800504 	addeq	r0, r0, r4, lsl #10
     bf8:	04030000 	streq	r0, [r3], #-0
     bfc:	00012407 	andeq	r2, r1, r7, lsl #8
     c00:	07080300 	streq	r0, [r8, -r0, lsl #6]
     c04:	0000011f 	andeq	r0, r0, pc, lsl r1
     c08:	0003d805 	andeq	sp, r3, r5, lsl #16
     c0c:	0e2e0200 	cdpeq	2, 2, cr0, cr14, cr0, {0}
     c10:	00000062 	andeq	r0, r0, r2, rrx
     c14:	0004c505 	andeq	ip, r4, r5, lsl #10
     c18:	0e740200 	cdpeq	2, 7, cr0, cr4, cr0, {0}
     c1c:	00000062 	andeq	r0, r0, r2, rrx
     c20:	a5020406 	strge	r0, [r2, #-1030]	; 0xfffffbfa
     c24:	0000b103 	andeq	fp, r0, r3, lsl #2
     c28:	03970700 	orrseq	r0, r7, #0, 14
     c2c:	a7020000 	strge	r0, [r2, -r0]
     c30:	0000390c 	andeq	r3, r0, ip, lsl #18
     c34:	03490700 	movteq	r0, #38656	; 0x9700
     c38:	a8020000 	stmdage	r2, {}	; <UNPREDICTABLE>
     c3c:	0000b113 	andeq	fp, r0, r3, lsl r1
     c40:	4d080000 	stcmi	0, cr0, [r8, #-0]
     c44:	c1000000 	mrsgt	r0, (UNDEF: 0)
     c48:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
     c4c:	00000024 	andeq	r0, r0, r4, lsr #32
     c50:	080a0003 	stmdaeq	sl, {r0, r1}
     c54:	e509a202 	str	sl, [r9, #-514]	; 0xfffffdfe
     c58:	0b000000 	bleq	c60 <_malloc_r+0x790>
     c5c:	000004af 	andeq	r0, r0, pc, lsr #9
     c60:	1d07a402 	cfstrsne	mvf10, [r7, #-8]
     c64:	00000000 	andeq	r0, r0, r0
     c68:	0004b70b 	andeq	fp, r4, fp, lsl #14
     c6c:	05a90200 	streq	r0, [r9, #512]!	; 0x200
     c70:	0000008f 	andeq	r0, r0, pc, lsl #1
     c74:	38050004 	stmdacc	r5, {r2}
     c78:	02000004 	andeq	r0, r0, #4
     c7c:	00c103aa 	sbceq	r0, r1, sl, lsr #7
     c80:	040c0000 	streq	r0, [ip], #-0
     c84:	0004f705 	andeq	pc, r4, r5, lsl #14
     c88:	19160300 	ldmdbne	r6, {r8, r9}
     c8c:	00000069 	andeq	r0, r0, r9, rrx
     c90:	0003fa05 	andeq	pc, r3, r5, lsl #20
     c94:	0d0c0400 	cfstrseq	mvf0, [ip, #-0]
     c98:	0000001d 	andeq	r0, r0, sp, lsl r0
     c9c:	00030c05 	andeq	r0, r3, r5, lsl #24
     ca0:	1b230300 	blne	8c18a8 <_bsl_base_address+0x6bf8a8>
     ca4:	000000ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
     ca8:	00031d0d 	andeq	r1, r3, sp, lsl #26
     cac:	34031800 	strcc	r1, [r3], #-2048	; 0xfffff800
     cb0:	00017108 	andeq	r7, r1, r8, lsl #2
     cb4:	04590b00 	ldrbeq	r0, [r9], #-2816	; 0xfffff500
     cb8:	36030000 	strcc	r0, [r3], -r0
     cbc:	00017113 	andeq	r7, r1, r3, lsl r1
     cc0:	5f0e0000 	svcpl	0x000e0000
     cc4:	3703006b 	strcc	r0, [r3, -fp, rrx]
     cc8:	00001d07 	andeq	r1, r0, r7, lsl #26
     ccc:	a10b0400 	tstge	fp, r0, lsl #8
     cd0:	03000004 	movweq	r0, #4
     cd4:	001d0b37 	andseq	r0, sp, r7, lsr fp
     cd8:	0b080000 	bleq	200ce0 <_mailbox_base_address+0xce0>
     cdc:	00000306 	andeq	r0, r0, r6, lsl #6
     ce0:	1d143703 	ldcne	7, cr3, [r4, #-12]
     ce4:	0c000000 	stceq	0, cr0, [r0], {-0}
     ce8:	0005310b 	andeq	r3, r5, fp, lsl #2
     cec:	1b370300 	blne	dc18f4 <_bsl_base_address+0xbbf8f4>
     cf0:	0000001d 	andeq	r0, r0, sp, lsl r0
     cf4:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
     cf8:	0b380300 	bleq	e01900 <_bsl_base_address+0xbff900>
     cfc:	00000177 	andeq	r0, r0, r7, ror r1
     d00:	040f0014 	streq	r0, [pc], #-20	; d08 <memset+0x48>
     d04:	00000117 	andeq	r0, r0, r7, lsl r1
     d08:	0000f308 	andeq	pc, r0, r8, lsl #6
     d0c:	00018700 	andeq	r8, r1, r0, lsl #14
     d10:	00240900 	eoreq	r0, r4, r0, lsl #18
     d14:	00000000 	andeq	r0, r0, r0
     d18:	0003440d 	andeq	r4, r3, sp, lsl #8
     d1c:	3c032400 	cfstrscc	mvf2, [r3], {-0}
     d20:	00020a08 	andeq	r0, r2, r8, lsl #20
     d24:	02690b00 	rsbeq	r0, r9, #0, 22
     d28:	3e030000 	cdpcc	0, 0, cr0, cr3, cr0, {0}
     d2c:	00001d09 	andeq	r1, r0, r9, lsl #26
     d30:	cd0b0000 	stcgt	0, cr0, [fp, #-0]
     d34:	03000004 	movweq	r0, #4
     d38:	001d093f 	andseq	r0, sp, pc, lsr r9
     d3c:	0b040000 	bleq	100d44 <__data_load__+0xff714>
     d40:	0000027e 	andeq	r0, r0, lr, ror r2
     d44:	1d094003 	stcne	0, cr4, [r9, #-12]
     d48:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
     d4c:	0005cd0b 	andeq	ip, r5, fp, lsl #26
     d50:	09410300 	stmdbeq	r1, {r8, r9}^
     d54:	0000001d 	andeq	r0, r0, sp, lsl r0
     d58:	03c40b0c 	biceq	r0, r4, #12, 22	; 0x3000
     d5c:	42030000 	andmi	r0, r3, #0
     d60:	00001d09 	andeq	r1, r0, r9, lsl #26
     d64:	b30b1000 	movwlt	r1, #45056	; 0xb000
     d68:	03000003 	movweq	r0, #3
     d6c:	001d0943 	andseq	r0, sp, r3, asr #18
     d70:	0b140000 	bleq	500d78 <_bsl_base_address+0x2fed78>
     d74:	00000536 	andeq	r0, r0, r6, lsr r5
     d78:	1d094403 	cfstrsne	mvf4, [r9, #-12]
     d7c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
     d80:	00041a0b 	andeq	r1, r4, fp, lsl #20
     d84:	09450300 	stmdbeq	r5, {r8, r9}^
     d88:	0000001d 	andeq	r0, r0, sp, lsl r0
     d8c:	056b0b1c 	strbeq	r0, [fp, #-2844]!	; 0xfffff4e4
     d90:	46030000 	strmi	r0, [r3], -r0
     d94:	00001d09 	andeq	r1, r0, r9, lsl #26
     d98:	10002000 	andne	r2, r0, r0
     d9c:	0000028d 	andeq	r0, r0, sp, lsl #5
     da0:	4f030108 	svcmi	0x00030108
     da4:	00024f08 	andeq	r4, r2, r8, lsl #30
     da8:	02f90b00 	rscseq	r0, r9, #0, 22
     dac:	50030000 	andpl	r0, r3, r0
     db0:	00024f0a 	andeq	r4, r2, sl, lsl #30
     db4:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
     db8:	03000001 	movweq	r0, #1
     dbc:	024f0951 	subeq	r0, pc, #1327104	; 0x144000
     dc0:	11800000 	orrne	r0, r0, r0
     dc4:	000004e9 	andeq	r0, r0, r9, ror #9
     dc8:	f30a5303 	vcgt.u8	d5, d10, d3
     dcc:	00000000 	andeq	r0, r0, r0
     dd0:	02b21101 	adcseq	r1, r2, #1073741824	; 0x40000000
     dd4:	56030000 	strpl	r0, [r3], -r0
     dd8:	0000f30a 	andeq	pc, r0, sl, lsl #6
     ddc:	00010400 	andeq	r0, r1, r0, lsl #8
     de0:	0000f108 	andeq	pc, r0, r8, lsl #2
     de4:	00025f00 	andeq	r5, r2, r0, lsl #30
     de8:	00240900 	eoreq	r0, r4, r0, lsl #18
     dec:	001f0000 	andseq	r0, pc, r0
     df0:	0001e510 	andeq	lr, r1, r0, lsl r5
     df4:	03019000 	movweq	r9, #4096	; 0x1000
     df8:	02a20862 	adceq	r0, r2, #6422528	; 0x620000
     dfc:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
     e00:	03000004 	movweq	r0, #4
     e04:	02a21263 	adceq	r1, r2, #805306374	; 0x30000006
     e08:	0b000000 	bleq	e10 <_sbrk_r+0x2c>
     e0c:	00000471 	andeq	r0, r0, r1, ror r4
     e10:	1d066403 	cfstrsne	mvf6, [r6, #-12]
     e14:	04000000 	streq	r0, [r0], #-0
     e18:	0003010b 	andeq	r0, r3, fp, lsl #2
     e1c:	09660300 	stmdbeq	r6!, {r8, r9}^
     e20:	000002a8 	andeq	r0, r0, r8, lsr #5
     e24:	028d0b08 	addeq	r0, sp, #8, 22	; 0x2000
     e28:	67030000 	strvs	r0, [r3, -r0]
     e2c:	00020a1e 	andeq	r0, r2, lr, lsl sl
     e30:	0f008800 	svceq	0x00008800
     e34:	00025f04 	andeq	r5, r2, r4, lsl #30
     e38:	02b80800 	adcseq	r0, r8, #0, 16
     e3c:	02b80000 	adcseq	r0, r8, #0
     e40:	24090000 	strcs	r0, [r9], #-0
     e44:	1f000000 	svcne	0x00000000
     e48:	be040f00 	cdplt	15, 0, cr0, cr4, cr0, {0}
     e4c:	12000002 	andne	r0, r0, #2
     e50:	0004240d 	andeq	r2, r4, sp, lsl #8
     e54:	7a030800 	bvc	c2e5c <__data_load__+0xc182c>
     e58:	0002e708 	andeq	lr, r2, r8, lsl #14
     e5c:	09d70b00 	ldmibeq	r7, {r8, r9, fp}^
     e60:	7b030000 	blvc	c0e68 <__data_load__+0xbf838>
     e64:	0002e711 	andeq	lr, r2, r1, lsl r7
     e68:	a30b0000 	movwge	r0, #45056	; 0xb000
     e6c:	03000008 	movweq	r0, #8
     e70:	001d067c 	andseq	r0, sp, ip, ror r6
     e74:	00040000 	andeq	r0, r4, r0
     e78:	004d040f 	subeq	r0, sp, pc, lsl #8
     e7c:	430d0000 	movwmi	r0, #53248	; 0xd000
     e80:	68000004 	stmdavs	r0, {r2}
     e84:	3008ba03 	andcc	fp, r8, r3, lsl #20
     e88:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
     e8c:	0300705f 	movweq	r7, #95	; 0x5f
     e90:	02e712bb 	rsceq	r1, r7, #-1342177269	; 0xb000000b
     e94:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
     e98:	0300725f 	movweq	r7, #607	; 0x25f
     e9c:	001d07bc 			; <UNDEFINED> instruction: 0x001d07bc
     ea0:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
     ea4:	0300775f 	movweq	r7, #1887	; 0x75f
     ea8:	001d07bd 			; <UNDEFINED> instruction: 0x001d07bd
     eac:	0b080000 	bleq	200eb4 <_mailbox_base_address+0xeb4>
     eb0:	000002ab 	andeq	r0, r0, fp, lsr #5
     eb4:	5409be03 	strpl	fp, [r9], #-3587	; 0xfffff1fd
     eb8:	0c000000 	stceq	0, cr0, [r0], {-0}
     ebc:	0003600b 	andeq	r6, r3, fp
     ec0:	09bf0300 	ldmibeq	pc!, {r8, r9}	; <UNPREDICTABLE>
     ec4:	00000054 	andeq	r0, r0, r4, asr r0
     ec8:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
     ecc:	c0030066 	andgt	r0, r3, r6, rrx
     ed0:	0002bf11 	andeq	fp, r2, r1, lsl pc
     ed4:	380b1000 	stmdacc	fp, {ip}
     ed8:	03000002 	movweq	r0, #2
     edc:	001d07c1 	andseq	r0, sp, r1, asr #15
     ee0:	0b180000 	bleq	600ee8 <_bsl_base_address+0x3feee8>
     ee4:	0000029b 	muleq	r0, fp, r2
     ee8:	f10ac803 			; <UNDEFINED> instruction: 0xf10ac803
     eec:	1c000000 	stcne	0, cr0, [r0], {-0}
     ef0:	0003340b 	andeq	r3, r3, fp, lsl #8
     ef4:	1dca0300 	stclne	3, cr0, [sl]
     ef8:	000005b4 			; <UNDEFINED> instruction: 0x000005b4
     efc:	03ac0b20 			; <UNDEFINED> instruction: 0x03ac0b20
     f00:	cc030000 	stcgt	0, cr0, [r3], {-0}
     f04:	0005de1d 	andeq	sp, r5, sp, lsl lr
     f08:	bf0b2400 	svclt	0x000b2400
     f0c:	03000004 	movweq	r0, #4
     f10:	06020dcf 	streq	r0, [r2], -pc, asr #27
     f14:	0b280000 	bleq	a00f1c <_bsl_base_address+0x7fef1c>
     f18:	00000585 	andeq	r0, r0, r5, lsl #11
     f1c:	1c09d003 	stcne	0, cr13, [r9], {3}
     f20:	2c000006 	stccs	0, cr0, [r0], {6}
     f24:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
     f28:	11d30300 	bicsne	r0, r3, r0, lsl #6
     f2c:	000002bf 			; <UNDEFINED> instruction: 0x000002bf
     f30:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 108 <_stack_init+0x2c>
     f34:	d4030070 	strle	r0, [r3], #-112	; 0xffffff90
     f38:	0002e712 	andeq	lr, r2, r2, lsl r7
     f3c:	5f0e3800 	svcpl	0x000e3800
     f40:	03007275 	movweq	r7, #629	; 0x275
     f44:	001d07d5 			; <UNDEFINED> instruction: 0x001d07d5
     f48:	0b3c0000 	bleq	f00f50 <_bsl_base_address+0xcfef50>
     f4c:	00000278 	andeq	r0, r0, r8, ror r2
     f50:	2211d803 	andscs	sp, r1, #196608	; 0x30000
     f54:	40000006 	andmi	r0, r0, r6
     f58:	00055d0b 	andeq	r5, r5, fp, lsl #26
     f5c:	11d90300 	bicsne	r0, r9, r0, lsl #6
     f60:	00000632 	andeq	r0, r0, r2, lsr r6
     f64:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
     f68:	dc030062 	stcle	0, cr0, [r3], {98}	; 0x62
     f6c:	0002bf11 	andeq	fp, r2, r1, lsl pc
     f70:	c10b4400 	tstgt	fp, r0, lsl #8
     f74:	03000002 	movweq	r0, #2
     f78:	001d07df 			; <UNDEFINED> instruction: 0x001d07df
     f7c:	0b4c0000 	bleq	1300f84 <_bsl_base_address+0x10fef84>
     f80:	000002d2 	ldrdeq	r0, [r0], -r2
     f84:	770ae003 	strvc	lr, [sl, -r3]
     f88:	50000000 	andpl	r0, r0, r0
     f8c:	0006d00b 	andeq	sp, r6, fp
     f90:	12e30300 	rscne	r0, r3, #0, 6
     f94:	0000044e 	andeq	r0, r0, lr, asr #8
     f98:	08780b54 	ldmdaeq	r8!, {r2, r4, r6, r8, r9, fp}^
     f9c:	e7030000 	str	r0, [r3, -r0]
     fa0:	00010b0c 	andeq	r0, r1, ip, lsl #22
     fa4:	4b0b5800 	blmi	2d6fac <_bsl_base_address+0xd4fac>
     fa8:	03000004 	movweq	r0, #4
     fac:	00e50ee9 	rsceq	r0, r5, r9, ror #29
     fb0:	0b5c0000 	bleq	1700fb8 <_bsl_base_address+0x14fefb8>
     fb4:	000003a4 	andeq	r0, r0, r4, lsr #7
     fb8:	1d09ea03 	vstrne	s28, [r9, #-12]
     fbc:	64000000 	strvs	r0, [r0], #-0
     fc0:	001d1300 	andseq	r1, sp, r0, lsl #6
     fc4:	044e0000 	strbeq	r0, [lr], #-0
     fc8:	4e140000 	cdpmi	0, 1, cr0, cr4, cr0, {0}
     fcc:	14000004 	strne	r0, [r0], #-4
     fd0:	000000f1 	strdeq	r0, [r0], -r1
     fd4:	0005a214 	andeq	sl, r5, r4, lsl r2
     fd8:	001d1400 	andseq	r1, sp, r0, lsl #8
     fdc:	0f000000 	svceq	0x00000000
     fe0:	00045904 	andeq	r5, r4, r4, lsl #18
     fe4:	044e1500 	strbeq	r1, [lr], #-1280	; 0xfffffb00
     fe8:	e0160000 	ands	r0, r6, r0
     fec:	2800000b 	stmdacs	r0, {r0, r1, r3}
     ff0:	02650304 	rsbeq	r0, r5, #4, 6	; 0x10000000
     ff4:	0005a208 	andeq	sl, r5, r8, lsl #4
     ff8:	04131700 	ldreq	r1, [r3], #-1792	; 0xfffff900
     ffc:	67030000 	strvs	r0, [r3, -r0]
    1000:	001d0702 	andseq	r0, sp, r2, lsl #14
    1004:	17000000 	strne	r0, [r0, -r0]
    1008:	000002ba 			; <UNDEFINED> instruction: 0x000002ba
    100c:	0b026c03 	bleq	9c020 <__data_load__+0x9a9f0>
    1010:	0000068e 	andeq	r0, r0, lr, lsl #13
    1014:	03501704 	cmpeq	r0, #4, 14	; 0x100000
    1018:	6c030000 	stcvs	0, cr0, [r3], {-0}
    101c:	068e1402 	streq	r1, [lr], r2, lsl #8
    1020:	17080000 	strne	r0, [r8, -r0]
    1024:	00000315 	andeq	r0, r0, r5, lsl r3
    1028:	1e026c03 	cdpne	12, 0, cr6, cr2, cr3, {0}
    102c:	0000068e 	andeq	r0, r0, lr, lsl #13
    1030:	046c170c 	strbteq	r1, [ip], #-1804	; 0xfffff8f4
    1034:	6e030000 	cdpvs	0, 0, cr0, cr3, cr0, {0}
    1038:	001d0802 	andseq	r0, sp, r2, lsl #16
    103c:	17100000 	ldrne	r0, [r0, -r0]
    1040:	0000020d 	andeq	r0, r0, sp, lsl #4
    1044:	08026f03 	stmdaeq	r2, {r0, r1, r8, r9, sl, fp, sp, lr}
    1048:	0000088e 	andeq	r0, r0, lr, lsl #17
    104c:	04881714 	streq	r1, [r8], #1812	; 0x714
    1050:	72030000 	andvc	r0, r3, #0
    1054:	001d0702 	andseq	r0, sp, r2, lsl #14
    1058:	17300000 	ldrne	r0, [r0, -r0]!
    105c:	00000476 	andeq	r0, r0, r6, ror r4
    1060:	16027303 	strne	r7, [r2], -r3, lsl #6
    1064:	000008a3 	andeq	r0, r0, r3, lsr #17
    1068:	03cd1734 	biceq	r1, sp, #52, 14	; 0xd00000
    106c:	75030000 	strvc	r0, [r3, #-0]
    1070:	001d0702 	andseq	r0, sp, r2, lsl #14
    1074:	17380000 	ldrne	r0, [r8, -r0]!
    1078:	0000047e 	andeq	r0, r0, lr, ror r4
    107c:	0a027703 	beq	9ec90 <__data_load__+0x9d660>
    1080:	000008b4 			; <UNDEFINED> instruction: 0x000008b4
    1084:	038f173c 	orreq	r1, pc, #60, 14	; 0xf00000
    1088:	7a030000 	bvc	c1090 <__data_load__+0xbfa60>
    108c:	01711302 	cmneq	r1, r2, lsl #6
    1090:	17400000 	strbne	r0, [r0, -r0]
    1094:	0000033a 	andeq	r0, r0, sl, lsr r3
    1098:	07027b03 	streq	r7, [r2, -r3, lsl #22]
    109c:	0000001d 	andeq	r0, r0, sp, lsl r0
    10a0:	05c81744 	strbeq	r1, [r8, #1860]	; 0x744
    10a4:	7c030000 	stcvc	0, cr0, [r3], {-0}
    10a8:	01711302 	cmneq	r1, r2, lsl #6
    10ac:	17480000 	strbne	r0, [r8, -r0]
    10b0:	000003f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    10b4:	14027d03 	strne	r7, [r2], #-3331	; 0xfffff2fd
    10b8:	000008ba 			; <UNDEFINED> instruction: 0x000008ba
    10bc:	0358174c 	cmpeq	r8, #76, 14	; 0x1300000
    10c0:	80030000 	andhi	r0, r3, r0
    10c4:	001d0702 	andseq	r0, sp, r2, lsl #14
    10c8:	17500000 	ldrbne	r0, [r0, -r0]
    10cc:	000002ca 	andeq	r0, r0, sl, asr #5
    10d0:	09028103 	stmdbeq	r2, {r0, r1, r8, pc}
    10d4:	000005a2 	andeq	r0, r0, r2, lsr #11
    10d8:	040c1754 	streq	r1, [ip], #-1876	; 0xfffff8ac
    10dc:	a4030000 	strge	r0, [r3], #-0
    10e0:	08690702 	stmdaeq	r9!, {r1, r8, r9, sl}^
    10e4:	18580000 	ldmdane	r8, {}^	; <UNPREDICTABLE>
    10e8:	000001e5 	andeq	r0, r0, r5, ror #3
    10ec:	1302a803 	movwne	sl, #10243	; 0x2803
    10f0:	000002a2 	andeq	r0, r0, r2, lsr #5
    10f4:	6d180148 	ldfvss	f0, [r8, #-288]	; 0xfffffee0
    10f8:	03000003 	movweq	r0, #3
    10fc:	5f1202a9 	svcpl	0x001202a9
    1100:	4c000002 	stcmi	0, cr0, [r0], {2}
    1104:	05531801 	ldrbeq	r1, [r3, #-2049]	; 0xfffff7ff
    1108:	ad030000 	stcge	0, cr0, [r3, #-0]
    110c:	08cb0c02 	stmiaeq	fp, {r1, sl, fp}^
    1110:	02dc0000 	sbcseq	r0, ip, #0
    1114:	0002a318 	andeq	sl, r2, r8, lsl r3
    1118:	02b20300 	adcseq	r0, r2, #0, 6
    111c:	00064f10 	andeq	r4, r6, r0, lsl pc
    1120:	1802e000 	stmdane	r2, {sp, lr, pc}
    1124:	00000288 	andeq	r0, r0, r8, lsl #5
    1128:	0a02b403 	beq	ae13c <__data_load__+0xacb0c>
    112c:	000008d7 	ldrdeq	r0, [r0], -r7
    1130:	0f0002ec 	svceq	0x000002ec
    1134:	0005a804 	andeq	sl, r5, r4, lsl #16
    1138:	08010300 	stmdaeq	r1, {r8, r9}
    113c:	00000148 	andeq	r0, r0, r8, asr #2
    1140:	0005a815 	andeq	sl, r5, r5, lsl r8
    1144:	30040f00 	andcc	r0, r4, r0, lsl #30
    1148:	13000004 	movwne	r0, #4
    114c:	0000001d 	andeq	r0, r0, sp, lsl r0
    1150:	000005d8 	ldrdeq	r0, [r0], -r8
    1154:	00044e14 	andeq	r4, r4, r4, lsl lr
    1158:	00f11400 	rscseq	r1, r1, r0, lsl #8
    115c:	d8140000 	ldmdale	r4, {}	; <UNPREDICTABLE>
    1160:	14000005 	strne	r0, [r0], #-5
    1164:	0000001d 	andeq	r0, r0, sp, lsl r0
    1168:	af040f00 	svcge	0x00040f00
    116c:	0f000005 	svceq	0x00000005
    1170:	0005ba04 	andeq	fp, r5, r4, lsl #20
    1174:	00831300 	addeq	r1, r3, r0, lsl #6
    1178:	06020000 	streq	r0, [r2], -r0
    117c:	4e140000 	cdpmi	0, 1, cr0, cr4, cr0, {0}
    1180:	14000004 	strne	r0, [r0], #-4
    1184:	000000f1 	strdeq	r0, [r0], -r1
    1188:	00008314 	andeq	r8, r0, r4, lsl r3
    118c:	001d1400 	andseq	r1, sp, r0, lsl #8
    1190:	0f000000 	svceq	0x00000000
    1194:	0005e404 	andeq	lr, r5, r4, lsl #8
    1198:	001d1300 	andseq	r1, sp, r0, lsl #6
    119c:	061c0000 	ldreq	r0, [ip], -r0
    11a0:	4e140000 	cdpmi	0, 1, cr0, cr4, cr0, {0}
    11a4:	14000004 	strne	r0, [r0], #-4
    11a8:	000000f1 	strdeq	r0, [r0], -r1
    11ac:	08040f00 	stmdaeq	r4, {r8, r9, sl, fp}
    11b0:	08000006 	stmdaeq	r0, {r1, r2}
    11b4:	0000004d 	andeq	r0, r0, sp, asr #32
    11b8:	00000632 	andeq	r0, r0, r2, lsr r6
    11bc:	00002409 	andeq	r2, r0, r9, lsl #8
    11c0:	08000200 	stmdaeq	r0, {r9}
    11c4:	0000004d 	andeq	r0, r0, sp, asr #32
    11c8:	00000642 	andeq	r0, r0, r2, asr #12
    11cc:	00002409 	andeq	r2, r0, r9, lsl #8
    11d0:	04000000 	streq	r0, [r0], #-0
    11d4:	00000431 	andeq	r0, r0, r1, lsr r4
    11d8:	1a012403 	bne	4a1ec <__data_load__+0x48bbc>
    11dc:	000002ed 	andeq	r0, r0, sp, ror #5
    11e0:	000c1f19 	andeq	r1, ip, r9, lsl pc
    11e4:	28030c00 	stmdacs	r3, {sl, fp}
    11e8:	06880801 	streq	r0, [r8], r1, lsl #16
    11ec:	59170000 	ldmdbpl	r7, {}	; <UNPREDICTABLE>
    11f0:	03000004 	movweq	r0, #4
    11f4:	8811012a 	ldmdahi	r1, {r1, r3, r5, r8}
    11f8:	00000006 	andeq	r0, r0, r6
    11fc:	00036617 	andeq	r6, r3, r7, lsl r6
    1200:	012b0300 			; <UNDEFINED> instruction: 0x012b0300
    1204:	00001d07 	andeq	r1, r0, r7, lsl #26
    1208:	2b170400 	blcs	5c2210 <_bsl_base_address+0x3c0210>
    120c:	03000004 	movweq	r0, #4
    1210:	8e0b012c 	adfhiep	f0, f3, #4.0
    1214:	08000006 	stmdaeq	r0, {r1, r2}
    1218:	4f040f00 	svcmi	0x00040f00
    121c:	0f000006 	svceq	0x00000006
    1220:	00064204 	andeq	r4, r6, r4, lsl #4
    1224:	02051900 	andeq	r1, r5, #0, 18
    1228:	030e0000 	movweq	r0, #57344	; 0xe000
    122c:	cd080144 	stfgts	f0, [r8, #-272]	; 0xfffffef0
    1230:	17000006 	strne	r0, [r0, -r6]
    1234:	000004a9 	andeq	r0, r0, r9, lsr #9
    1238:	12014503 	andne	r4, r1, #12582912	; 0xc00000
    123c:	000006cd 	andeq	r0, r0, sp, asr #13
    1240:	04d61700 	ldrbeq	r1, [r6], #1792	; 0x700
    1244:	46030000 	strmi	r0, [r3], -r0
    1248:	06cd1201 	strbeq	r1, [sp], r1, lsl #4
    124c:	17060000 	strne	r0, [r6, -r0]
    1250:	000004f2 	strdeq	r0, [r0], -r2
    1254:	12014703 	andne	r4, r1, #786432	; 0xc0000
    1258:	0000005b 	andeq	r0, r0, fp, asr r0
    125c:	5b08000c 	blpl	201294 <_tlv_base_address+0x294>
    1260:	dd000000 	stcle	0, cr0, [r0, #-0]
    1264:	09000006 	stmdbeq	r0, {r1, r2}
    1268:	00000024 	andeq	r0, r0, r4, lsr #32
    126c:	d01a0002 	andsle	r0, sl, r2
    1270:	07028503 	streq	r8, [r2, -r3, lsl #10]
    1274:	000007f2 	strdeq	r0, [r0], -r2
    1278:	00052417 	andeq	r2, r5, r7, lsl r4
    127c:	02870300 	addeq	r0, r7, #0, 6
    1280:	00002418 	andeq	r2, r0, r8, lsl r4
    1284:	dc170000 	ldcle	0, cr0, [r7], {-0}
    1288:	03000004 	movweq	r0, #4
    128c:	a2120288 	andsge	r0, r2, #136, 4	; 0x80000008
    1290:	04000005 	streq	r0, [r0], #-5
    1294:	00038217 	andeq	r8, r3, r7, lsl r2
    1298:	02890300 	addeq	r0, r9, #0, 6
    129c:	0007f210 	andeq	pc, r7, r0, lsl r2	; <UNPREDICTABLE>
    12a0:	76170800 	ldrvc	r0, [r7], -r0, lsl #16
    12a4:	03000005 	movweq	r0, #5
    12a8:	8717028a 	ldrhi	r0, [r7, -sl, lsl #5]
    12ac:	24000001 	strcs	r0, [r0], #-1
    12b0:	00032517 	andeq	r2, r3, r7, lsl r5
    12b4:	028b0300 	addeq	r0, fp, #0, 6
    12b8:	00001d0f 	andeq	r1, r0, pc, lsl #26
    12bc:	54174800 	ldrpl	r4, [r7], #-2048	; 0xfffff800
    12c0:	03000004 	movweq	r0, #4
    12c4:	702c028c 	eorvc	r0, ip, ip, lsl #5
    12c8:	50000000 	andpl	r0, r0, r0
    12cc:	00058c17 	andeq	r8, r5, r7, lsl ip
    12d0:	028d0300 	addeq	r0, sp, #0, 6
    12d4:	0006941a 	andeq	r9, r6, sl, lsl r4
    12d8:	5f175800 	svcpl	0x00175800
    12dc:	03000004 	movweq	r0, #4
    12e0:	e516028e 	ldr	r0, [r6, #-654]	; 0xfffffd72
    12e4:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    12e8:	0005ba17 	andeq	fp, r5, r7, lsl sl
    12ec:	028f0300 	addeq	r0, pc, #0, 6
    12f0:	0000e516 	andeq	lr, r0, r6, lsl r5
    12f4:	5b177000 	blpl	5dd2fc <_bsl_base_address+0x3db2fc>
    12f8:	03000002 	movweq	r0, #2
    12fc:	e5160290 	ldr	r0, [r6, #-656]	; 0xfffffd70
    1300:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    1304:	00054917 	andeq	r4, r5, r7, lsl r9
    1308:	02910300 	addseq	r0, r1, #0, 6
    130c:	00080210 	andeq	r0, r8, r0, lsl r2
    1310:	76178000 	ldrvc	r8, [r7], -r0
    1314:	03000003 	movweq	r0, #3
    1318:	12100292 	andsne	r0, r0, #536870921	; 0x20000009
    131c:	88000008 	stmdahi	r0, {r3}
    1320:	0004ff17 	andeq	pc, r4, r7, lsl pc	; <UNPREDICTABLE>
    1324:	02930300 	addseq	r0, r3, #0, 6
    1328:	00001d0f 	andeq	r1, r0, pc, lsl #26
    132c:	eb17a000 	bl	5e9334 <_bsl_base_address+0x3e7334>
    1330:	03000002 	movweq	r0, #2
    1334:	e5160294 	ldr	r0, [r6, #-660]	; 0xfffffd6c
    1338:	a4000000 	strge	r0, [r0], #-0
    133c:	00024c17 	andeq	r4, r2, r7, lsl ip
    1340:	02950300 	addseq	r0, r5, #0, 6
    1344:	0000e516 	andeq	lr, r0, r6, lsl r5
    1348:	da17ac00 	ble	5ec350 <_bsl_base_address+0x3ea350>
    134c:	03000002 	movweq	r0, #2
    1350:	e5160296 	ldr	r0, [r6, #-662]	; 0xfffffd6a
    1354:	b4000000 	strlt	r0, [r0], #-0
    1358:	00021817 	andeq	r1, r2, r7, lsl r8
    135c:	02970300 	addseq	r0, r7, #0, 6
    1360:	0000e516 	andeq	lr, r0, r6, lsl r5
    1364:	2717bc00 	ldrcs	fp, [r7, -r0, lsl #24]
    1368:	03000002 	movweq	r0, #2
    136c:	e5160298 	ldr	r0, [r6, #-664]	; 0xfffffd68
    1370:	c4000000 	strgt	r0, [r0], #-0
    1374:	00041117 	andeq	r1, r4, r7, lsl r1
    1378:	02990300 	addseq	r0, r9, #0, 6
    137c:	00001d08 	andeq	r1, r0, r8, lsl #26
    1380:	0800cc00 	stmdaeq	r0, {sl, fp, lr, pc}
    1384:	000005a8 	andeq	r0, r0, r8, lsr #11
    1388:	00000802 	andeq	r0, r0, r2, lsl #16
    138c:	00002409 	andeq	r2, r0, r9, lsl #8
    1390:	08001900 	stmdaeq	r0, {r8, fp, ip}
    1394:	000005a8 	andeq	r0, r0, r8, lsr #11
    1398:	00000812 	andeq	r0, r0, r2, lsl r8
    139c:	00002409 	andeq	r2, r0, r9, lsl #8
    13a0:	08000700 	stmdaeq	r0, {r8, r9, sl}
    13a4:	000005a8 	andeq	r0, r0, r8, lsr #11
    13a8:	00000822 	andeq	r0, r0, r2, lsr #16
    13ac:	00002409 	andeq	r2, r0, r9, lsl #8
    13b0:	1a001700 	bne	6fb8 <__data_load__+0x5988>
    13b4:	029e03f0 	addseq	r0, lr, #240, 6	; 0xc0000003
    13b8:	00084907 	andeq	r4, r8, r7, lsl #18
    13bc:	03bd1700 			; <UNDEFINED> instruction: 0x03bd1700
    13c0:	a1030000 	mrsge	r0, (UNDEF: 3)
    13c4:	08491b02 	stmdaeq	r9, {r1, r8, r9, fp, ip}^
    13c8:	17000000 	strne	r0, [r0, -r0]
    13cc:	00000540 	andeq	r0, r0, r0, asr #10
    13d0:	1802a203 	stmdane	r2, {r0, r1, r9, sp, pc}
    13d4:	00000859 	andeq	r0, r0, r9, asr r8
    13d8:	e7080078 	smlsdx	r8, r8, r0, r0
    13dc:	59000002 	stmdbpl	r0, {r1}
    13e0:	09000008 	stmdbeq	r0, {r3}
    13e4:	00000024 	andeq	r0, r0, r4, lsr #32
    13e8:	2408001d 	strcs	r0, [r8], #-29	; 0xffffffe3
    13ec:	69000000 	stmdbvs	r0, {}	; <UNPREDICTABLE>
    13f0:	09000008 	stmdbeq	r0, {r3}
    13f4:	00000024 	andeq	r0, r0, r4, lsr #32
    13f8:	f01b001d 			; <UNDEFINED> instruction: 0xf01b001d
    13fc:	03028303 	movweq	r8, #8963	; 0x2303
    1400:	0000088e 	andeq	r0, r0, lr, lsl #17
    1404:	000be01c 	andeq	lr, fp, ip, lsl r0
    1408:	029a0300 	addseq	r0, sl, #0, 6
    140c:	0006dd0b 	andeq	sp, r6, fp, lsl #26
    1410:	05631c00 	strbeq	r1, [r3, #-3072]!	; 0xfffff400
    1414:	a3030000 	movwge	r0, #12288	; 0x3000
    1418:	08220b02 	stmdaeq	r2!, {r1, r8, r9, fp}
    141c:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    1420:	000005a8 	andeq	r0, r0, r8, lsr #11
    1424:	0000089e 	muleq	r0, lr, r8
    1428:	00002409 	andeq	r2, r0, r9, lsl #8
    142c:	1d001800 	stcne	8, cr1, [r0, #-0]
    1430:	00000241 	andeq	r0, r0, r1, asr #4
    1434:	089e040f 	ldmeq	lr, {r0, r1, r2, r3, sl}
    1438:	b41e0000 	ldrlt	r0, [lr], #-0
    143c:	14000008 	strne	r0, [r0], #-8
    1440:	0000044e 	andeq	r0, r0, lr, asr #8
    1444:	a9040f00 	stmdbge	r4, {r8, r9, sl, fp}
    1448:	0f000008 	svceq	0x00000008
    144c:	00017104 	andeq	r7, r1, r4, lsl #2
    1450:	08cb1e00 	stmiaeq	fp, {r9, sl, fp, ip}^
    1454:	1d140000 	ldcne	0, cr0, [r4, #-0]
    1458:	00000000 	andeq	r0, r0, r0
    145c:	08d1040f 	ldmeq	r1, {r0, r1, r2, r3, sl}^
    1460:	040f0000 	streq	r0, [pc], #-0	; 1468 <_reclaim_reent+0x3c>
    1464:	000008c0 	andeq	r0, r0, r0, asr #17
    1468:	00064208 	andeq	r4, r6, r8, lsl #4
    146c:	0008e700 	andeq	lr, r8, r0, lsl #14
    1470:	00240900 	eoreq	r0, r4, r0, lsl #18
    1474:	00020000 	andeq	r0, r2, r0
    1478:	0005131f 	andeq	r1, r5, pc, lsl r3
    147c:	03330300 	teqeq	r3, #0, 6
    1480:	00044e17 	andeq	r4, r4, r7, lsl lr
    1484:	050c1f00 	streq	r1, [ip, #-3840]	; 0xfffff100
    1488:	34030000 	strcc	r0, [r3], #-0
    148c:	04541d03 	ldrbeq	r1, [r4], #-3331	; 0xfffff2fd
    1490:	ca200000 	bgt	801498 <_bsl_base_address+0x5ff498>
    1494:	05000006 	streq	r0, [r0, #-6]
    1498:	04593017 	ldrbeq	r3, [r9], #-23	; 0xffffffe9
    149c:	03050000 	movweq	r0, #20480	; 0x5000
    14a0:	20000038 	andcs	r0, r0, r8, lsr r0
    14a4:	0008e721 	andeq	lr, r8, r1, lsr #14
    14a8:	30030500 	andcc	r0, r3, r0, lsl #10
    14ac:	21200000 			; <UNDEFINED> instruction: 0x21200000
    14b0:	000008f4 	strdeq	r0, [r0], -r4
    14b4:	15fc0305 	ldrbne	r0, [ip, #773]!	; 0x305
    14b8:	16000000 	strne	r0, [r0], -r0
    14bc:	04000001 	streq	r0, [r0], #-1
    14c0:	00055800 	andeq	r5, r5, r0, lsl #16
    14c4:	61010400 	tstvs	r1, r0, lsl #8
    14c8:	0c000001 	stceq	0, cr0, [r0], {1}
    14cc:	00000725 	andeq	r0, r0, r5, lsr #14
    14d0:	0000063b 	andeq	r0, r0, fp, lsr r6
    14d4:	00000408 	andeq	r0, r0, r8, lsl #8
    14d8:	00000088 	andeq	r0, r0, r8, lsl #1
    14dc:	00000485 	andeq	r0, r0, r5, lsl #9
    14e0:	41060102 	tstmi	r6, r2, lsl #2
    14e4:	02000001 	andeq	r0, r0, #1
    14e8:	013f0801 	teqeq	pc, r1, lsl #16
    14ec:	02020000 	andeq	r0, r2, #0
    14f0:	0001d705 	andeq	sp, r1, r5, lsl #14
    14f4:	07020200 	streq	r0, [r2, -r0, lsl #4]
    14f8:	00000089 	andeq	r0, r0, r9, lsl #1
    14fc:	80050402 	andhi	r0, r5, r2, lsl #8
    1500:	02000000 	andeq	r0, r0, #0
    1504:	01240704 			; <UNDEFINED> instruction: 0x01240704
    1508:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    150c:	00007b05 	andeq	r7, r0, r5, lsl #22
    1510:	07080200 	streq	r0, [r8, -r0, lsl #4]
    1514:	0000011f 	andeq	r0, r0, pc, lsl r1
    1518:	69050403 	stmdbvs	r5, {r0, r1, sl}
    151c:	0200746e 	andeq	r7, r0, #1845493760	; 0x6e000000
    1520:	01290704 			; <UNDEFINED> instruction: 0x01290704
    1524:	d7040000 	strle	r0, [r4, -r0]
    1528:	02000005 	andeq	r0, r0, #5
    152c:	006417d1 	ldrdeq	r1, [r4], #-113	; 0xffffff8f	; <UNPREDICTABLE>
    1530:	08020000 	stmdaeq	r2, {}	; <UNPREDICTABLE>
    1534:	0001cb04 	andeq	ip, r1, r4, lsl #22
    1538:	08010200 	stmdaeq	r1, {r9}
    153c:	00000148 	andeq	r0, r0, r8, asr #2
    1540:	00009005 	andeq	r9, r0, r5
    1544:	00009000 	andeq	r9, r0, r0
    1548:	07000600 	streq	r0, [r0, -r0, lsl #12]
    154c:	00009604 	andeq	r9, r0, r4, lsl #12
    1550:	4c090800 	stcmi	8, cr0, [r9], {-0}
    1554:	01000007 	tsteq	r0, r7
    1558:	00850f13 	addeq	r0, r5, r3, lsl pc
    155c:	68090000 	stmdavs	r9, {}	; <UNPREDICTABLE>
    1560:	01000007 	tsteq	r0, r7
    1564:	00850f14 	addeq	r0, r5, r4, lsl pc
    1568:	00090000 	andeq	r0, r9, r0
    156c:	01000007 	tsteq	r0, r7
    1570:	00850f15 	addeq	r0, r5, r5, lsl pc
    1574:	7c090000 	stcvc	0, cr0, [r9], {-0}
    1578:	01000007 	tsteq	r0, r7
    157c:	00850f16 	addeq	r0, r5, r6, lsl pc
    1580:	130a0000 	movwne	r0, #40960	; 0xa000
    1584:	01000007 	tsteq	r0, r7
    1588:	0408011e 	streq	r0, [r8], #-286	; 0xfffffee2
    158c:	00880000 	addeq	r0, r8, r0
    1590:	9c010000 	stcls	0, cr0, [r1], {-0}
    1594:	0000010d 	andeq	r0, r0, sp, lsl #2
    1598:	0004b10b 	andeq	fp, r4, fp, lsl #2
    159c:	0a200100 	beq	8019a4 <_bsl_base_address+0x5ff9a4>
    15a0:	0000006b 	andeq	r0, r0, fp, rrx
    15a4:	000000c4 	andeq	r0, r0, r4, asr #1
    15a8:	000000bc 	strheq	r0, [r0], -ip
    15ac:	0100690c 	tsteq	r0, ip, lsl #18
    15b0:	006b0a21 	rsbeq	r0, fp, r1, lsr #20
    15b4:	01100000 	tsteq	r0, r0
    15b8:	01000000 	mrseq	r0, (UNDEF: 0)
    15bc:	500d0000 	andpl	r0, sp, r0
    15c0:	0d000004 	stceq	0, cr0, [r0, #-16]
    15c4:	00000001 	andeq	r0, r0, r1
    15c8:	0007620e 	andeq	r6, r7, lr, lsl #4
    15cc:	00076200 	andeq	r6, r7, r0, lsl #4
    15d0:	0d190100 	ldfeqs	f0, [r9, #-0]
    15d4:	00099400 	andeq	r9, r9, r0, lsl #8
    15d8:	24000400 	strcs	r0, [r0], #-1024	; 0xfffffc00
    15dc:	04000006 	streq	r0, [r0], #-6
    15e0:	00016101 	andeq	r6, r1, r1, lsl #2
    15e4:	07970c00 	ldreq	r0, [r7, r0, lsl #24]
    15e8:	00d60000 	sbcseq	r0, r6, r0
    15ec:	04900000 	ldreq	r0, [r0], #0
    15f0:	00400000 	subeq	r0, r0, r0
    15f4:	05a60000 	streq	r0, [r6, #0]!
    15f8:	04020000 	streq	r0, [r2], #-0
    15fc:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1600:	05d70300 	ldrbeq	r0, [r7, #768]	; 0x300
    1604:	d1020000 	mrsle	r0, (UNDEF: 2)
    1608:	00003817 	andeq	r3, r0, r7, lsl r8
    160c:	07040400 	streq	r0, [r4, -r0, lsl #8]
    1610:	00000129 	andeq	r0, r0, r9, lsr #2
    1614:	7b050804 	blvc	14362c <__data_load__+0x141ffc>
    1618:	04000000 	streq	r0, [r0], #-0
    161c:	01cb0408 	biceq	r0, fp, r8, lsl #8
    1620:	9d050000 	stcls	0, cr0, [r5, #-0]
    1624:	02000003 	andeq	r0, r0, #3
    1628:	3817015e 	ldmdacc	r7, {r1, r2, r3, r4, r6, r8}
    162c:	04000000 	streq	r0, [r0], #-0
    1630:	01410601 	cmpeq	r1, r1, lsl #12
    1634:	01040000 	mrseq	r0, (UNDEF: 4)
    1638:	00013f08 	andeq	r3, r1, r8, lsl #30
    163c:	05020400 	streq	r0, [r2, #-1024]	; 0xfffffc00
    1640:	000001d7 	ldrdeq	r0, [r0], -r7
    1644:	89070204 	stmdbhi	r7, {r2, r9}
    1648:	04000000 	streq	r0, [r0], #-0
    164c:	00800504 	addeq	r0, r0, r4, lsl #10
    1650:	04040000 	streq	r0, [r4], #-0
    1654:	00012407 	andeq	r2, r1, r7, lsl #8
    1658:	07080400 	streq	r0, [r8, -r0, lsl #8]
    165c:	0000011f 	andeq	r0, r0, pc, lsl r1
    1660:	0003d803 	andeq	sp, r3, r3, lsl #16
    1664:	0e2e0300 	cdpeq	3, 2, cr0, cr14, cr0, {0}
    1668:	00000076 	andeq	r0, r0, r6, ror r0
    166c:	0004c503 	andeq	ip, r4, r3, lsl #10
    1670:	0e740300 	cdpeq	3, 7, cr0, cr4, cr0, {0}
    1674:	00000076 	andeq	r0, r0, r6, ror r0
    1678:	a5030406 	strge	r0, [r3, #-1030]	; 0xfffffbfa
    167c:	0000c503 	andeq	ip, r0, r3, lsl #10
    1680:	03970700 	orrseq	r0, r7, #0, 14
    1684:	a7030000 	strge	r0, [r3, -r0]
    1688:	00004d0c 	andeq	r4, r0, ip, lsl #26
    168c:	03490700 	movteq	r0, #38656	; 0x9700
    1690:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
    1694:	0000c513 	andeq	ip, r0, r3, lsl r5
    1698:	61080000 	mrsvs	r0, (UNDEF: 8)
    169c:	d5000000 	strle	r0, [r0, #-0]
    16a0:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    16a4:	00000038 	andeq	r0, r0, r8, lsr r0
    16a8:	080a0003 	stmdaeq	sl, {r0, r1}
    16ac:	f909a203 			; <UNDEFINED> instruction: 0xf909a203
    16b0:	0b000000 	bleq	16b8 <__data_load__+0x88>
    16b4:	000004af 	andeq	r0, r0, pc, lsr #9
    16b8:	2507a403 	strcs	sl, [r7, #-1027]	; 0xfffffbfd
    16bc:	00000000 	andeq	r0, r0, r0
    16c0:	0004b70b 	andeq	fp, r4, fp, lsl #14
    16c4:	05a90300 	streq	r0, [r9, #768]!	; 0x300
    16c8:	000000a3 	andeq	r0, r0, r3, lsr #1
    16cc:	38030004 	stmdacc	r3, {r2}
    16d0:	03000004 	movweq	r0, #4
    16d4:	00d503aa 	sbcseq	r0, r5, sl, lsr #7
    16d8:	040c0000 	streq	r0, [ip], #-0
    16dc:	0004f703 	andeq	pc, r4, r3, lsl #14
    16e0:	19160400 	ldmdbne	r6, {sl}
    16e4:	0000007d 	andeq	r0, r0, sp, ror r0
    16e8:	0003fa03 	andeq	pc, r3, r3, lsl #20
    16ec:	0d0c0500 	cfstr32eq	mvfx0, [ip, #-0]
    16f0:	00000025 	andeq	r0, r0, r5, lsr #32
    16f4:	00030c03 	andeq	r0, r3, r3, lsl #24
    16f8:	1b230400 	blne	8c2700 <_bsl_base_address+0x6c0700>
    16fc:	00000113 	andeq	r0, r0, r3, lsl r1
    1700:	00031d0d 	andeq	r1, r3, sp, lsl #26
    1704:	34041800 	strcc	r1, [r4], #-2048	; 0xfffff800
    1708:	00018508 	andeq	r8, r1, r8, lsl #10
    170c:	04590b00 	ldrbeq	r0, [r9], #-2816	; 0xfffff500
    1710:	36040000 	strcc	r0, [r4], -r0
    1714:	00018513 	andeq	r8, r1, r3, lsl r5
    1718:	5f0e0000 	svcpl	0x000e0000
    171c:	3704006b 	strcc	r0, [r4, -fp, rrx]
    1720:	00002507 	andeq	r2, r0, r7, lsl #10
    1724:	a10b0400 	tstge	fp, r0, lsl #8
    1728:	04000004 	streq	r0, [r0], #-4
    172c:	00250b37 	eoreq	r0, r5, r7, lsr fp
    1730:	0b080000 	bleq	201738 <_tlv_base_address+0x738>
    1734:	00000306 	andeq	r0, r0, r6, lsl #6
    1738:	25143704 	ldrcs	r3, [r4, #-1796]	; 0xfffff8fc
    173c:	0c000000 	stceq	0, cr0, [r0], {-0}
    1740:	0005310b 	andeq	r3, r5, fp, lsl #2
    1744:	1b370400 	blne	dc274c <_bsl_base_address+0xbc074c>
    1748:	00000025 	andeq	r0, r0, r5, lsr #32
    174c:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    1750:	0b380400 	bleq	e02758 <_bsl_base_address+0xc00758>
    1754:	0000018b 	andeq	r0, r0, fp, lsl #3
    1758:	040f0014 	streq	r0, [pc], #-20	; 1760 <__data_load__+0x130>
    175c:	0000012b 	andeq	r0, r0, fp, lsr #2
    1760:	00010708 	andeq	r0, r1, r8, lsl #14
    1764:	00019b00 	andeq	r9, r1, r0, lsl #22
    1768:	00380900 	eorseq	r0, r8, r0, lsl #18
    176c:	00000000 	andeq	r0, r0, r0
    1770:	0003440d 	andeq	r4, r3, sp, lsl #8
    1774:	3c042400 	cfstrscc	mvf2, [r4], {-0}
    1778:	00021e08 	andeq	r1, r2, r8, lsl #28
    177c:	02690b00 	rsbeq	r0, r9, #0, 22
    1780:	3e040000 	cdpcc	0, 0, cr0, cr4, cr0, {0}
    1784:	00002509 	andeq	r2, r0, r9, lsl #10
    1788:	cd0b0000 	stcgt	0, cr0, [fp, #-0]
    178c:	04000004 	streq	r0, [r0], #-4
    1790:	0025093f 	eoreq	r0, r5, pc, lsr r9
    1794:	0b040000 	bleq	10179c <__data_load__+0x10016c>
    1798:	0000027e 	andeq	r0, r0, lr, ror r2
    179c:	25094004 	strcs	r4, [r9, #-4]
    17a0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    17a4:	0005cd0b 	andeq	ip, r5, fp, lsl #26
    17a8:	09410400 	stmdbeq	r1, {sl}^
    17ac:	00000025 	andeq	r0, r0, r5, lsr #32
    17b0:	03c40b0c 	biceq	r0, r4, #12, 22	; 0x3000
    17b4:	42040000 	andmi	r0, r4, #0
    17b8:	00002509 	andeq	r2, r0, r9, lsl #10
    17bc:	b30b1000 	movwlt	r1, #45056	; 0xb000
    17c0:	04000003 	streq	r0, [r0], #-3
    17c4:	00250943 	eoreq	r0, r5, r3, asr #18
    17c8:	0b140000 	bleq	5017d0 <_bsl_base_address+0x2ff7d0>
    17cc:	00000536 	andeq	r0, r0, r6, lsr r5
    17d0:	25094404 	strcs	r4, [r9, #-1028]	; 0xfffffbfc
    17d4:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    17d8:	00041a0b 	andeq	r1, r4, fp, lsl #20
    17dc:	09450400 	stmdbeq	r5, {sl}^
    17e0:	00000025 	andeq	r0, r0, r5, lsr #32
    17e4:	056b0b1c 	strbeq	r0, [fp, #-2844]!	; 0xfffff4e4
    17e8:	46040000 	strmi	r0, [r4], -r0
    17ec:	00002509 	andeq	r2, r0, r9, lsl #10
    17f0:	10002000 	andne	r2, r0, r0
    17f4:	0000028d 	andeq	r0, r0, sp, lsl #5
    17f8:	4f040108 	svcmi	0x00040108
    17fc:	00026308 	andeq	r6, r2, r8, lsl #6
    1800:	02f90b00 	rscseq	r0, r9, #0, 22
    1804:	50040000 	andpl	r0, r4, r0
    1808:	0002630a 	andeq	r6, r2, sl, lsl #6
    180c:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
    1810:	04000001 	streq	r0, [r0], #-1
    1814:	02630951 	rsbeq	r0, r3, #1327104	; 0x144000
    1818:	11800000 	orrne	r0, r0, r0
    181c:	000004e9 	andeq	r0, r0, r9, ror #9
    1820:	070a5304 	streq	r5, [sl, -r4, lsl #6]
    1824:	00000001 	andeq	r0, r0, r1
    1828:	02b21101 	adcseq	r1, r2, #1073741824	; 0x40000000
    182c:	56040000 	strpl	r0, [r4], -r0
    1830:	0001070a 	andeq	r0, r1, sl, lsl #14
    1834:	00010400 	andeq	r0, r1, r0, lsl #8
    1838:	00010508 	andeq	r0, r1, r8, lsl #10
    183c:	00027300 	andeq	r7, r2, r0, lsl #6
    1840:	00380900 	eorseq	r0, r8, r0, lsl #18
    1844:	001f0000 	andseq	r0, pc, r0
    1848:	0001e510 	andeq	lr, r1, r0, lsl r5
    184c:	04019000 	streq	r9, [r1], #-0
    1850:	02b60862 	adcseq	r0, r6, #6422528	; 0x620000
    1854:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
    1858:	04000004 	streq	r0, [r0], #-4
    185c:	02b61263 	adcseq	r1, r6, #805306374	; 0x30000006
    1860:	0b000000 	bleq	1868 <__data_load__+0x238>
    1864:	00000471 	andeq	r0, r0, r1, ror r4
    1868:	25066404 	strcs	r6, [r6, #-1028]	; 0xfffffbfc
    186c:	04000000 	streq	r0, [r0], #-0
    1870:	0003010b 	andeq	r0, r3, fp, lsl #2
    1874:	09660400 	stmdbeq	r6!, {sl}^
    1878:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
    187c:	028d0b08 	addeq	r0, sp, #8, 22	; 0x2000
    1880:	67040000 	strvs	r0, [r4, -r0]
    1884:	00021e1e 	andeq	r1, r2, lr, lsl lr
    1888:	0f008800 	svceq	0x00008800
    188c:	00027304 	andeq	r7, r2, r4, lsl #6
    1890:	02cc0800 	sbceq	r0, ip, #0, 16
    1894:	02cc0000 	sbceq	r0, ip, #0
    1898:	38090000 	stmdacc	r9, {}	; <UNPREDICTABLE>
    189c:	1f000000 	svcne	0x00000000
    18a0:	d2040f00 	andle	r0, r4, #0, 30
    18a4:	12000002 	andne	r0, r0, #2
    18a8:	0004240d 	andeq	r2, r4, sp, lsl #8
    18ac:	7a040800 	bvc	1038b4 <__data_load__+0x102284>
    18b0:	0002fb08 	andeq	pc, r2, r8, lsl #22
    18b4:	09d70b00 	ldmibeq	r7, {r8, r9, fp}^
    18b8:	7b040000 	blvc	1018c0 <__data_load__+0x100290>
    18bc:	0002fb11 	andeq	pc, r2, r1, lsl fp	; <UNPREDICTABLE>
    18c0:	a30b0000 	movwge	r0, #45056	; 0xb000
    18c4:	04000008 	streq	r0, [r0], #-8
    18c8:	0025067c 	eoreq	r0, r5, ip, ror r6
    18cc:	00040000 	andeq	r0, r4, r0
    18d0:	0061040f 	rsbeq	r0, r1, pc, lsl #8
    18d4:	430d0000 	movwmi	r0, #53248	; 0xd000
    18d8:	68000004 	stmdavs	r0, {r2}
    18dc:	4408ba04 	strmi	fp, [r8], #-2564	; 0xfffff5fc
    18e0:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    18e4:	0400705f 	streq	r7, [r0], #-95	; 0xffffffa1
    18e8:	02fb12bb 	rscseq	r1, fp, #-1342177269	; 0xb000000b
    18ec:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    18f0:	0400725f 	streq	r7, [r0], #-607	; 0xfffffda1
    18f4:	002507bc 	strhteq	r0, [r5], -ip
    18f8:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    18fc:	0400775f 	streq	r7, [r0], #-1887	; 0xfffff8a1
    1900:	002507bd 	strhteq	r0, [r5], -sp
    1904:	0b080000 	bleq	20190c <_tlv_base_address+0x90c>
    1908:	000002ab 	andeq	r0, r0, fp, lsr #5
    190c:	6809be04 	stmdavs	r9, {r2, r9, sl, fp, ip, sp, pc}
    1910:	0c000000 	stceq	0, cr0, [r0], {-0}
    1914:	0003600b 	andeq	r6, r3, fp
    1918:	09bf0400 	ldmibeq	pc!, {sl}	; <UNPREDICTABLE>
    191c:	00000068 	andeq	r0, r0, r8, rrx
    1920:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    1924:	c0040066 	andgt	r0, r4, r6, rrx
    1928:	0002d311 	andeq	sp, r2, r1, lsl r3
    192c:	380b1000 	stmdacc	fp, {ip}
    1930:	04000002 	streq	r0, [r0], #-2
    1934:	002507c1 	eoreq	r0, r5, r1, asr #15
    1938:	0b180000 	bleq	601940 <_bsl_base_address+0x3ff940>
    193c:	0000029b 	muleq	r0, fp, r2
    1940:	050ac804 	streq	ip, [sl, #-2052]	; 0xfffff7fc
    1944:	1c000001 	stcne	0, cr0, [r0], {1}
    1948:	0003340b 	andeq	r3, r3, fp, lsl #8
    194c:	1dca0400 	cfstrdne	mvd0, [sl]
    1950:	000005c3 	andeq	r0, r0, r3, asr #11
    1954:	03ac0b20 			; <UNDEFINED> instruction: 0x03ac0b20
    1958:	cc040000 	stcgt	0, cr0, [r4], {-0}
    195c:	0005ed1d 	andeq	lr, r5, sp, lsl sp
    1960:	bf0b2400 	svclt	0x000b2400
    1964:	04000004 	streq	r0, [r0], #-4
    1968:	06110dcf 	ldreq	r0, [r1], -pc, asr #27
    196c:	0b280000 	bleq	a01974 <_bsl_base_address+0x7ff974>
    1970:	00000585 	andeq	r0, r0, r5, lsl #11
    1974:	2b09d004 	blcs	27598c <_bsl_base_address+0x7398c>
    1978:	2c000006 	stccs	0, cr0, [r0], {6}
    197c:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    1980:	11d30400 	bicsne	r0, r3, r0, lsl #8
    1984:	000002d3 	ldrdeq	r0, [r0], -r3
    1988:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; b60 <_malloc_r+0x690>
    198c:	d4040070 	strle	r0, [r4], #-112	; 0xffffff90
    1990:	0002fb12 	andeq	pc, r2, r2, lsl fp	; <UNPREDICTABLE>
    1994:	5f0e3800 	svcpl	0x000e3800
    1998:	04007275 	streq	r7, [r0], #-629	; 0xfffffd8b
    199c:	002507d5 	ldrdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    19a0:	0b3c0000 	bleq	f019a8 <_bsl_base_address+0xcff9a8>
    19a4:	00000278 	andeq	r0, r0, r8, ror r2
    19a8:	3111d804 	tstcc	r1, r4, lsl #16
    19ac:	40000006 	andmi	r0, r0, r6
    19b0:	00055d0b 	andeq	r5, r5, fp, lsl #26
    19b4:	11d90400 	bicsne	r0, r9, r0, lsl #8
    19b8:	00000641 	andeq	r0, r0, r1, asr #12
    19bc:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    19c0:	dc040062 	stcle	0, cr0, [r4], {98}	; 0x62
    19c4:	0002d311 	andeq	sp, r2, r1, lsl r3
    19c8:	c10b4400 	tstgt	fp, r0, lsl #8
    19cc:	04000002 	streq	r0, [r0], #-2
    19d0:	002507df 	ldrdeq	r0, [r5], -pc	; <UNPREDICTABLE>
    19d4:	0b4c0000 	bleq	13019dc <_bsl_base_address+0x10ff9dc>
    19d8:	000002d2 	ldrdeq	r0, [r0], -r2
    19dc:	8b0ae004 	blhi	2b99f4 <_bsl_base_address+0xb79f4>
    19e0:	50000000 	andpl	r0, r0, r0
    19e4:	0006d00b 	andeq	sp, r6, fp
    19e8:	12e30400 	rscne	r0, r3, #0, 8
    19ec:	00000462 	andeq	r0, r0, r2, ror #8
    19f0:	08780b54 	ldmdaeq	r8!, {r2, r4, r6, r8, r9, fp}^
    19f4:	e7040000 	str	r0, [r4, -r0]
    19f8:	00011f0c 	andeq	r1, r1, ip, lsl #30
    19fc:	4b0b5800 	blmi	2d7a04 <_bsl_base_address+0xd5a04>
    1a00:	04000004 	streq	r0, [r0], #-4
    1a04:	00f90ee9 	rscseq	r0, r9, r9, ror #29
    1a08:	0b5c0000 	bleq	1701a10 <_bsl_base_address+0x14ffa10>
    1a0c:	000003a4 	andeq	r0, r0, r4, lsr #7
    1a10:	2509ea04 	strcs	lr, [r9, #-2564]	; 0xfffff5fc
    1a14:	64000000 	strvs	r0, [r0], #-0
    1a18:	00251300 	eoreq	r1, r5, r0, lsl #6
    1a1c:	04620000 	strbteq	r0, [r2], #-0
    1a20:	62140000 	andsvs	r0, r4, #0
    1a24:	14000004 	strne	r0, [r0], #-4
    1a28:	00000105 	andeq	r0, r0, r5, lsl #2
    1a2c:	0005b114 	andeq	fp, r5, r4, lsl r1
    1a30:	00251400 	eoreq	r1, r5, r0, lsl #8
    1a34:	0f000000 	svceq	0x00000000
    1a38:	00046804 	andeq	r6, r4, r4, lsl #16
    1a3c:	0be01500 	bleq	ff806e44 <__stack+0xdf80656c>
    1a40:	04280000 	strteq	r0, [r8], #-0
    1a44:	08026504 	stmdaeq	r2, {r2, r8, sl, sp, lr}
    1a48:	000005b1 			; <UNDEFINED> instruction: 0x000005b1
    1a4c:	00041316 	andeq	r1, r4, r6, lsl r3
    1a50:	02670400 	rsbeq	r0, r7, #0, 8
    1a54:	00002507 	andeq	r2, r0, r7, lsl #10
    1a58:	ba160000 	blt	581a60 <_bsl_base_address+0x37fa60>
    1a5c:	04000002 	streq	r0, [r0], #-2
    1a60:	9d0b026c 	sfmls	f0, 4, [fp, #-432]	; 0xfffffe50
    1a64:	04000006 	streq	r0, [r0], #-6
    1a68:	00035016 	andeq	r5, r3, r6, lsl r0
    1a6c:	026c0400 	rsbeq	r0, ip, #0, 8
    1a70:	00069d14 	andeq	r9, r6, r4, lsl sp
    1a74:	15160800 	ldrne	r0, [r6, #-2048]	; 0xfffff800
    1a78:	04000003 	streq	r0, [r0], #-3
    1a7c:	9d1e026c 	lfmls	f0, 4, [lr, #-432]	; 0xfffffe50
    1a80:	0c000006 	stceq	0, cr0, [r0], {6}
    1a84:	00046c16 	andeq	r6, r4, r6, lsl ip
    1a88:	026e0400 	rsbeq	r0, lr, #0, 8
    1a8c:	00002508 	andeq	r2, r0, r8, lsl #10
    1a90:	0d161000 	ldceq	0, cr1, [r6, #-0]
    1a94:	04000002 	streq	r0, [r0], #-2
    1a98:	9d08026f 	sfmls	f0, 4, [r8, #-444]	; 0xfffffe44
    1a9c:	14000008 	strne	r0, [r0], #-8
    1aa0:	00048816 	andeq	r8, r4, r6, lsl r8
    1aa4:	02720400 	rsbseq	r0, r2, #0, 8
    1aa8:	00002507 	andeq	r2, r0, r7, lsl #10
    1aac:	76163000 	ldrvc	r3, [r6], -r0
    1ab0:	04000004 	streq	r0, [r0], #-4
    1ab4:	b2160273 	andslt	r0, r6, #805306375	; 0x30000007
    1ab8:	34000008 	strcc	r0, [r0], #-8
    1abc:	0003cd16 	andeq	ip, r3, r6, lsl sp
    1ac0:	02750400 	rsbseq	r0, r5, #0, 8
    1ac4:	00002507 	andeq	r2, r0, r7, lsl #10
    1ac8:	7e163800 	cdpvc	8, 1, cr3, cr6, cr0, {0}
    1acc:	04000004 	streq	r0, [r0], #-4
    1ad0:	c30a0277 	movwgt	r0, #41591	; 0xa277
    1ad4:	3c000008 	stccc	0, cr0, [r0], {8}
    1ad8:	00038f16 	andeq	r8, r3, r6, lsl pc
    1adc:	027a0400 	rsbseq	r0, sl, #0, 8
    1ae0:	00018513 	andeq	r8, r1, r3, lsl r5
    1ae4:	3a164000 	bcc	591aec <_bsl_base_address+0x38faec>
    1ae8:	04000003 	streq	r0, [r0], #-3
    1aec:	2507027b 	strcs	r0, [r7, #-635]	; 0xfffffd85
    1af0:	44000000 	strmi	r0, [r0], #-0
    1af4:	0005c816 	andeq	ip, r5, r6, lsl r8
    1af8:	027c0400 	rsbseq	r0, ip, #0, 8
    1afc:	00018513 	andeq	r8, r1, r3, lsl r5
    1b00:	f0164800 			; <UNDEFINED> instruction: 0xf0164800
    1b04:	04000003 	streq	r0, [r0], #-3
    1b08:	c914027d 	ldmdbgt	r4, {r0, r2, r3, r4, r5, r6, r9}
    1b0c:	4c000008 	stcmi	0, cr0, [r0], {8}
    1b10:	00035816 	andeq	r5, r3, r6, lsl r8
    1b14:	02800400 	addeq	r0, r0, #0, 8
    1b18:	00002507 	andeq	r2, r0, r7, lsl #10
    1b1c:	ca165000 	bgt	595b24 <_bsl_base_address+0x393b24>
    1b20:	04000002 	streq	r0, [r0], #-2
    1b24:	b1090281 	smlabblt	r9, r1, r2, r0
    1b28:	54000005 	strpl	r0, [r0], #-5
    1b2c:	00040c16 	andeq	r0, r4, r6, lsl ip
    1b30:	02a40400 	adceq	r0, r4, #0, 8
    1b34:	00087807 	andeq	r7, r8, r7, lsl #16
    1b38:	e5175800 	ldr	r5, [r7, #-2048]	; 0xfffff800
    1b3c:	04000001 	streq	r0, [r0], #-1
    1b40:	b61302a8 	ldrlt	r0, [r3], -r8, lsr #5
    1b44:	48000002 	stmdami	r0, {r1}
    1b48:	036d1701 	cmneq	sp, #262144	; 0x40000
    1b4c:	a9040000 	stmdbge	r4, {}	; <UNPREDICTABLE>
    1b50:	02731202 	rsbseq	r1, r3, #536870912	; 0x20000000
    1b54:	014c0000 	mrseq	r0, (UNDEF: 76)
    1b58:	00055317 	andeq	r5, r5, r7, lsl r3
    1b5c:	02ad0400 	adceq	r0, sp, #0, 8
    1b60:	0008da0c 	andeq	sp, r8, ip, lsl #20
    1b64:	1702dc00 	strne	sp, [r2, -r0, lsl #24]
    1b68:	000002a3 	andeq	r0, r0, r3, lsr #5
    1b6c:	1002b204 	andne	fp, r2, r4, lsl #4
    1b70:	0000065e 	andeq	r0, r0, lr, asr r6
    1b74:	881702e0 	ldmdahi	r7, {r5, r6, r7, r9}
    1b78:	04000002 	streq	r0, [r0], #-2
    1b7c:	e60a02b4 			; <UNDEFINED> instruction: 0xe60a02b4
    1b80:	ec000008 	stc	0, cr0, [r0], {8}
    1b84:	040f0002 	streq	r0, [pc], #-2	; 1b8c <__data_load__+0x55c>
    1b88:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    1b8c:	48080104 	stmdami	r8, {r2, r8}
    1b90:	18000001 	stmdane	r0, {r0}
    1b94:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    1b98:	0444040f 	strbeq	r0, [r4], #-1039	; 0xfffffbf1
    1b9c:	25130000 	ldrcs	r0, [r3, #-0]
    1ba0:	e7000000 	str	r0, [r0, -r0]
    1ba4:	14000005 	strne	r0, [r0], #-5
    1ba8:	00000462 	andeq	r0, r0, r2, ror #8
    1bac:	00010514 	andeq	r0, r1, r4, lsl r5
    1bb0:	05e71400 	strbeq	r1, [r7, #1024]!	; 0x400
    1bb4:	25140000 	ldrcs	r0, [r4, #-0]
    1bb8:	00000000 	andeq	r0, r0, r0
    1bbc:	05be040f 	ldreq	r0, [lr, #1039]!	; 0x40f
    1bc0:	040f0000 	streq	r0, [pc], #-0	; 1bc8 <__data_load__+0x598>
    1bc4:	000005c9 	andeq	r0, r0, r9, asr #11
    1bc8:	00009713 	andeq	r9, r0, r3, lsl r7
    1bcc:	00061100 	andeq	r1, r6, r0, lsl #2
    1bd0:	04621400 	strbteq	r1, [r2], #-1024	; 0xfffffc00
    1bd4:	05140000 	ldreq	r0, [r4, #-0]
    1bd8:	14000001 	strne	r0, [r0], #-1
    1bdc:	00000097 	muleq	r0, r7, r0
    1be0:	00002514 	andeq	r2, r0, r4, lsl r5
    1be4:	040f0000 	streq	r0, [pc], #-0	; 1bec <__data_load__+0x5bc>
    1be8:	000005f3 	strdeq	r0, [r0], -r3
    1bec:	00002513 	andeq	r2, r0, r3, lsl r5
    1bf0:	00062b00 	andeq	r2, r6, r0, lsl #22
    1bf4:	04621400 	strbteq	r1, [r2], #-1024	; 0xfffffc00
    1bf8:	05140000 	ldreq	r0, [r4, #-0]
    1bfc:	00000001 	andeq	r0, r0, r1
    1c00:	0617040f 	ldreq	r0, [r7], -pc, lsl #8
    1c04:	61080000 	mrsvs	r0, (UNDEF: 8)
    1c08:	41000000 	mrsmi	r0, (UNDEF: 0)
    1c0c:	09000006 	stmdbeq	r0, {r1, r2}
    1c10:	00000038 	andeq	r0, r0, r8, lsr r0
    1c14:	61080002 	tstvs	r8, r2
    1c18:	51000000 	mrspl	r0, (UNDEF: 0)
    1c1c:	09000006 	stmdbeq	r0, {r1, r2}
    1c20:	00000038 	andeq	r0, r0, r8, lsr r0
    1c24:	31050000 	mrscc	r0, (UNDEF: 5)
    1c28:	04000004 	streq	r0, [r0], #-4
    1c2c:	011a0124 	tsteq	sl, r4, lsr #2
    1c30:	19000003 	stmdbne	r0, {r0, r1}
    1c34:	00000c1f 	andeq	r0, r0, pc, lsl ip
    1c38:	0128040c 			; <UNDEFINED> instruction: 0x0128040c
    1c3c:	00069708 	andeq	r9, r6, r8, lsl #14
    1c40:	04591600 	ldrbeq	r1, [r9], #-1536	; 0xfffffa00
    1c44:	2a040000 	bcs	101c4c <__data_load__+0x10061c>
    1c48:	06971101 	ldreq	r1, [r7], r1, lsl #2
    1c4c:	16000000 	strne	r0, [r0], -r0
    1c50:	00000366 	andeq	r0, r0, r6, ror #6
    1c54:	07012b04 	streq	r2, [r1, -r4, lsl #22]
    1c58:	00000025 	andeq	r0, r0, r5, lsr #32
    1c5c:	042b1604 	strteq	r1, [fp], #-1540	; 0xfffff9fc
    1c60:	2c040000 	stccs	0, cr0, [r4], {-0}
    1c64:	069d0b01 	ldreq	r0, [sp], r1, lsl #22
    1c68:	00080000 	andeq	r0, r8, r0
    1c6c:	065e040f 	ldrbeq	r0, [lr], -pc, lsl #8
    1c70:	040f0000 	streq	r0, [pc], #-0	; 1c78 <__data_load__+0x648>
    1c74:	00000651 	andeq	r0, r0, r1, asr r6
    1c78:	00020519 	andeq	r0, r2, r9, lsl r5
    1c7c:	44040e00 	strmi	r0, [r4], #-3584	; 0xfffff200
    1c80:	06dc0801 	ldrbeq	r0, [ip], r1, lsl #16
    1c84:	a9160000 	ldmdbge	r6, {}	; <UNPREDICTABLE>
    1c88:	04000004 	streq	r0, [r0], #-4
    1c8c:	dc120145 	ldfles	f0, [r2], {69}	; 0x45
    1c90:	00000006 	andeq	r0, r0, r6
    1c94:	0004d616 	andeq	sp, r4, r6, lsl r6
    1c98:	01460400 	cmpeq	r6, r0, lsl #8
    1c9c:	0006dc12 	andeq	sp, r6, r2, lsl ip
    1ca0:	f2160600 	vmax.s16	d0, d6, d0
    1ca4:	04000004 	streq	r0, [r0], #-4
    1ca8:	6f120147 	svcvs	0x00120147
    1cac:	0c000000 	stceq	0, cr0, [r0], {-0}
    1cb0:	006f0800 	rsbeq	r0, pc, r0, lsl #16
    1cb4:	06ec0000 	strbteq	r0, [ip], r0
    1cb8:	38090000 	stmdacc	r9, {}	; <UNPREDICTABLE>
    1cbc:	02000000 	andeq	r0, r0, #0
    1cc0:	04d01a00 	ldrbeq	r1, [r0], #2560	; 0xa00
    1cc4:	01070285 	smlabbeq	r7, r5, r2, r0
    1cc8:	16000008 	strne	r0, [r0], -r8
    1ccc:	00000524 	andeq	r0, r0, r4, lsr #10
    1cd0:	18028704 	stmdane	r2, {r2, r8, r9, sl, pc}
    1cd4:	00000038 	andeq	r0, r0, r8, lsr r0
    1cd8:	04dc1600 	ldrbeq	r1, [ip], #1536	; 0x600
    1cdc:	88040000 	stmdahi	r4, {}	; <UNPREDICTABLE>
    1ce0:	05b11202 	ldreq	r1, [r1, #514]!	; 0x202
    1ce4:	16040000 	strne	r0, [r4], -r0
    1ce8:	00000382 	andeq	r0, r0, r2, lsl #7
    1cec:	10028904 	andne	r8, r2, r4, lsl #18
    1cf0:	00000801 	andeq	r0, r0, r1, lsl #16
    1cf4:	05761608 	ldrbeq	r1, [r6, #-1544]!	; 0xfffff9f8
    1cf8:	8a040000 	bhi	101d00 <__data_load__+0x1006d0>
    1cfc:	019b1702 	orrseq	r1, fp, r2, lsl #14
    1d00:	16240000 	strtne	r0, [r4], -r0
    1d04:	00000325 	andeq	r0, r0, r5, lsr #6
    1d08:	0f028b04 	svceq	0x00028b04
    1d0c:	00000025 	andeq	r0, r0, r5, lsr #32
    1d10:	04541648 	ldrbeq	r1, [r4], #-1608	; 0xfffff9b8
    1d14:	8c040000 	stchi	0, cr0, [r4], {-0}
    1d18:	00842c02 	addeq	r2, r4, r2, lsl #24
    1d1c:	16500000 	ldrbne	r0, [r0], -r0
    1d20:	0000058c 	andeq	r0, r0, ip, lsl #11
    1d24:	1a028d04 	bne	a513c <__data_load__+0xa3b0c>
    1d28:	000006a3 	andeq	r0, r0, r3, lsr #13
    1d2c:	045f1658 	ldrbeq	r1, [pc], #-1624	; 1d34 <__data_load__+0x704>
    1d30:	8e040000 	cdphi	0, 0, cr0, cr4, cr0, {0}
    1d34:	00f91602 	rscseq	r1, r9, r2, lsl #12
    1d38:	16680000 	strbtne	r0, [r8], -r0
    1d3c:	000005ba 			; <UNDEFINED> instruction: 0x000005ba
    1d40:	16028f04 	strne	r8, [r2], -r4, lsl #30
    1d44:	000000f9 	strdeq	r0, [r0], -r9
    1d48:	025b1670 	subseq	r1, fp, #112, 12	; 0x7000000
    1d4c:	90040000 	andls	r0, r4, r0
    1d50:	00f91602 	rscseq	r1, r9, r2, lsl #12
    1d54:	16780000 	ldrbtne	r0, [r8], -r0
    1d58:	00000549 	andeq	r0, r0, r9, asr #10
    1d5c:	10029104 	andne	r9, r2, r4, lsl #2
    1d60:	00000811 	andeq	r0, r0, r1, lsl r8
    1d64:	03761680 	cmneq	r6, #128, 12	; 0x8000000
    1d68:	92040000 	andls	r0, r4, #0
    1d6c:	08211002 	stmdaeq	r1!, {r1, ip}
    1d70:	16880000 	strne	r0, [r8], r0
    1d74:	000004ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    1d78:	0f029304 	svceq	0x00029304
    1d7c:	00000025 	andeq	r0, r0, r5, lsr #32
    1d80:	02eb16a0 	rsceq	r1, fp, #160, 12	; 0xa000000
    1d84:	94040000 	strls	r0, [r4], #-0
    1d88:	00f91602 	rscseq	r1, r9, r2, lsl #12
    1d8c:	16a40000 	strtne	r0, [r4], r0
    1d90:	0000024c 	andeq	r0, r0, ip, asr #4
    1d94:	16029504 	strne	r9, [r2], -r4, lsl #10
    1d98:	000000f9 	strdeq	r0, [r0], -r9
    1d9c:	02da16ac 	sbcseq	r1, sl, #172, 12	; 0xac00000
    1da0:	96040000 	strls	r0, [r4], -r0
    1da4:	00f91602 	rscseq	r1, r9, r2, lsl #12
    1da8:	16b40000 	ldrtne	r0, [r4], r0
    1dac:	00000218 	andeq	r0, r0, r8, lsl r2
    1db0:	16029704 	strne	r9, [r2], -r4, lsl #14
    1db4:	000000f9 	strdeq	r0, [r0], -r9
    1db8:	022716bc 	eoreq	r1, r7, #188, 12	; 0xbc00000
    1dbc:	98040000 	stmdals	r4, {}	; <UNPREDICTABLE>
    1dc0:	00f91602 	rscseq	r1, r9, r2, lsl #12
    1dc4:	16c40000 	strbne	r0, [r4], r0
    1dc8:	00000411 	andeq	r0, r0, r1, lsl r4
    1dcc:	08029904 	stmdaeq	r2, {r2, r8, fp, ip, pc}
    1dd0:	00000025 	andeq	r0, r0, r5, lsr #32
    1dd4:	b70800cc 	strlt	r0, [r8, -ip, asr #1]
    1dd8:	11000005 	tstne	r0, r5
    1ddc:	09000008 	stmdbeq	r0, {r3}
    1de0:	00000038 	andeq	r0, r0, r8, lsr r0
    1de4:	b7080019 	smladlt	r8, r9, r0, r0
    1de8:	21000005 	tstcs	r0, r5
    1dec:	09000008 	stmdbeq	r0, {r3}
    1df0:	00000038 	andeq	r0, r0, r8, lsr r0
    1df4:	b7080007 	strlt	r0, [r8, -r7]
    1df8:	31000005 	tstcc	r0, r5
    1dfc:	09000008 	stmdbeq	r0, {r3}
    1e00:	00000038 	andeq	r0, r0, r8, lsr r0
    1e04:	f01a0017 			; <UNDEFINED> instruction: 0xf01a0017
    1e08:	07029e04 	streq	r9, [r2, -r4, lsl #28]
    1e0c:	00000858 	andeq	r0, r0, r8, asr r8
    1e10:	0003bd16 	andeq	fp, r3, r6, lsl sp
    1e14:	02a10400 	adceq	r0, r1, #0, 8
    1e18:	0008581b 	andeq	r5, r8, fp, lsl r8
    1e1c:	40160000 	andsmi	r0, r6, r0
    1e20:	04000005 	streq	r0, [r0], #-5
    1e24:	681802a2 	ldmdavs	r8, {r1, r5, r7, r9}
    1e28:	78000008 	stmdavc	r0, {r3}
    1e2c:	02fb0800 	rscseq	r0, fp, #0, 16
    1e30:	08680000 	stmdaeq	r8!, {}^	; <UNPREDICTABLE>
    1e34:	38090000 	stmdacc	r9, {}	; <UNPREDICTABLE>
    1e38:	1d000000 	stcne	0, cr0, [r0, #-0]
    1e3c:	00380800 	eorseq	r0, r8, r0, lsl #16
    1e40:	08780000 	ldmdaeq	r8!, {}^	; <UNPREDICTABLE>
    1e44:	38090000 	stmdacc	r9, {}	; <UNPREDICTABLE>
    1e48:	1d000000 	stcne	0, cr0, [r0, #-0]
    1e4c:	04f01b00 	ldrbteq	r1, [r0], #2816	; 0xb00
    1e50:	9d030283 	sfmls	f0, 4, [r3, #-524]	; 0xfffffdf4
    1e54:	1c000008 	stcne	0, cr0, [r0], {8}
    1e58:	00000be0 	andeq	r0, r0, r0, ror #23
    1e5c:	0b029a04 	bleq	a8674 <__data_load__+0xa7044>
    1e60:	000006ec 	andeq	r0, r0, ip, ror #13
    1e64:	0005631c 	andeq	r6, r5, ip, lsl r3
    1e68:	02a30400 	adceq	r0, r3, #0, 8
    1e6c:	0008310b 	andeq	r3, r8, fp, lsl #2
    1e70:	b7080000 	strlt	r0, [r8, -r0]
    1e74:	ad000005 	stcge	0, cr0, [r0, #-20]	; 0xffffffec
    1e78:	09000008 	stmdbeq	r0, {r3}
    1e7c:	00000038 	andeq	r0, r0, r8, lsr r0
    1e80:	411d0018 	tstmi	sp, r8, lsl r0
    1e84:	0f000002 	svceq	0x00000002
    1e88:	0008ad04 	andeq	sl, r8, r4, lsl #26
    1e8c:	08c31e00 	stmiaeq	r3, {r9, sl, fp, ip}^
    1e90:	62140000 	andsvs	r0, r4, #0
    1e94:	00000004 	andeq	r0, r0, r4
    1e98:	08b8040f 	ldmeq	r8!, {r0, r1, r2, r3, sl}
    1e9c:	040f0000 	streq	r0, [pc], #-0	; 1ea4 <__data_load__+0x874>
    1ea0:	00000185 	andeq	r0, r0, r5, lsl #3
    1ea4:	0008da1e 	andeq	sp, r8, lr, lsl sl
    1ea8:	00251400 	eoreq	r1, r5, r0, lsl #8
    1eac:	0f000000 	svceq	0x00000000
    1eb0:	0008e004 	andeq	lr, r8, r4
    1eb4:	cf040f00 	svcgt	0x00040f00
    1eb8:	08000008 	stmdaeq	r0, {r3}
    1ebc:	00000651 	andeq	r0, r0, r1, asr r6
    1ec0:	000008f6 	strdeq	r0, [r0], -r6
    1ec4:	00003809 	andeq	r3, r0, r9, lsl #16
    1ec8:	1f000200 	svcne	0x00000200
    1ecc:	00000513 	andeq	r0, r0, r3, lsl r5
    1ed0:	17033304 	strne	r3, [r3, -r4, lsl #6]
    1ed4:	00000462 	andeq	r0, r0, r2, ror #8
    1ed8:	00079220 	andeq	r9, r7, r0, lsr #4
    1edc:	0d2d0600 	stceq	6, cr0, [sp, #-0]
    1ee0:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
    1ee4:	00000020 	andeq	r0, r0, r0, lsr #32
    1ee8:	093f9c01 	ldmdbeq	pc!, {r0, sl, fp, ip, pc}	; <UNPREDICTABLE>
    1eec:	8d210000 	stchi	0, cr0, [r1, #-0]
    1ef0:	01000007 	tsteq	r0, r7
    1ef4:	01050da8 	smlatbeq	r5, r8, sp, r0
    1ef8:	017c0000 	cmneq	ip, r0
    1efc:	01760000 	cmneq	r6, r0
    1f00:	c4220000 	strtgt	r0, [r2], #-0
    1f04:	7f000004 	svcvc	0x00000004
    1f08:	23000009 	movwcs	r0, #9
    1f0c:	f3035101 	vrhadd.u8	d5, d3, d1
    1f10:	00005001 	andeq	r5, r0, r1
    1f14:	00054224 	andeq	r4, r5, r4, lsr #4
    1f18:	0e250600 	cfmadda32eq	mvax0, mvax0, mvfx5, mvfx0
    1f1c:	00000105 	andeq	r0, r0, r5, lsl #2
    1f20:	00000490 	muleq	r0, r0, r4
    1f24:	00000020 	andeq	r0, r0, r0, lsr #32
    1f28:	097f9c01 	ldmdbeq	pc!, {r0, sl, fp, ip, pc}^	; <UNPREDICTABLE>
    1f2c:	c2210000 	eorgt	r0, r1, #0
    1f30:	01000007 	tsteq	r0, r7
    1f34:	002c10a2 	eoreq	r1, ip, r2, lsr #1
    1f38:	01ae0000 			; <UNDEFINED> instruction: 0x01ae0000
    1f3c:	01a80000 			; <UNDEFINED> instruction: 0x01a80000
    1f40:	a4220000 	strtge	r0, [r2], #-0
    1f44:	8b000004 	blhi	1f5c <__data_load__+0x92c>
    1f48:	23000009 	movwcs	r0, #9
    1f4c:	f3035101 	vrhadd.u8	d5, d3, d1
    1f50:	00005001 	andeq	r5, r0, r1
    1f54:	0007c925 	andeq	ip, r7, r5, lsr #18
    1f58:	0007c900 	andeq	ip, r7, r0, lsl #18
    1f5c:	0d320600 	ldceq	6, cr0, [r2, #-0]
    1f60:	0007d125 	andeq	sp, r7, r5, lsr #2
    1f64:	0007d100 	andeq	sp, r7, r0, lsl #2
    1f68:	0e2a0600 	cfmadda32eq	mvax0, mvax0, mvfx10, mvfx0
    1f6c:	000ea300 	andeq	sl, lr, r0, lsl #6
    1f70:	3e000400 	cfcpyscc	mvf0, mvf0
    1f74:	04000008 	streq	r0, [r0], #-8
    1f78:	00016101 	andeq	r6, r1, r1, lsl #2
    1f7c:	08a90c00 	stmiaeq	r9!, {sl, fp}
    1f80:	00d60000 	sbcseq	r0, r6, r0
    1f84:	04d00000 	ldrbeq	r0, [r0], #0
    1f88:	07f00000 	ldrbeq	r0, [r0, r0]!
    1f8c:	07000000 	streq	r0, [r0, -r0]
    1f90:	04020000 	streq	r0, [r2], #-0
    1f94:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    1f98:	05d70300 	ldrbeq	r0, [r7, #768]	; 0x300
    1f9c:	d1020000 	mrsle	r0, (UNDEF: 2)
    1fa0:	00003817 	andeq	r3, r0, r7, lsl r8
    1fa4:	07040400 	streq	r0, [r4, -r0, lsl #8]
    1fa8:	00000129 	andeq	r0, r0, r9, lsr #2
    1fac:	7b050804 	blvc	143fc4 <__data_load__+0x142994>
    1fb0:	04000000 	streq	r0, [r0], #-0
    1fb4:	01cb0408 	biceq	r0, fp, r8, lsl #8
    1fb8:	01040000 	mrseq	r0, (UNDEF: 4)
    1fbc:	00014106 	andeq	r4, r1, r6, lsl #2
    1fc0:	08010400 	stmdaeq	r1, {sl}
    1fc4:	0000013f 	andeq	r0, r0, pc, lsr r1
    1fc8:	d7050204 	strle	r0, [r5, -r4, lsl #4]
    1fcc:	04000001 	streq	r0, [r0], #-1
    1fd0:	00890702 	addeq	r0, r9, r2, lsl #14
    1fd4:	04040000 	streq	r0, [r4], #-0
    1fd8:	00008005 	andeq	r8, r0, r5
    1fdc:	07040400 	streq	r0, [r4, -r0, lsl #8]
    1fe0:	00000124 	andeq	r0, r0, r4, lsr #2
    1fe4:	1f070804 	svcne	0x00070804
    1fe8:	05000001 	streq	r0, [r0, #-1]
    1fec:	039d0604 	orrseq	r0, sp, #4, 12	; 0x400000
    1ff0:	5e020000 	cdppl	0, 0, cr0, cr2, cr0, {0}
    1ff4:	00381701 	eorseq	r1, r8, r1, lsl #14
    1ff8:	d8030000 	stmdale	r3, {}	; <UNPREDICTABLE>
    1ffc:	03000003 	movweq	r0, #3
    2000:	00690e2e 	rsbeq	r0, r9, lr, lsr #28
    2004:	c5030000 	strgt	r0, [r3, #-0]
    2008:	03000004 	movweq	r0, #4
    200c:	00690e74 	rsbeq	r0, r9, r4, ror lr
    2010:	04070000 	streq	r0, [r7], #-0
    2014:	c703a503 	strgt	sl, [r3, -r3, lsl #10]
    2018:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    201c:	00000397 	muleq	r0, r7, r3
    2020:	800ca703 	andhi	sl, ip, r3, lsl #14
    2024:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    2028:	00000349 	andeq	r0, r0, r9, asr #6
    202c:	c713a803 	ldrgt	sl, [r3, -r3, lsl #16]
    2030:	00000000 	andeq	r0, r0, r0
    2034:	00005409 	andeq	r5, r0, r9, lsl #8
    2038:	0000d700 	andeq	sp, r0, r0, lsl #14
    203c:	00380a00 	eorseq	r0, r8, r0, lsl #20
    2040:	00030000 	andeq	r0, r3, r0
    2044:	a203080b 	andge	r0, r3, #720896	; 0xb0000
    2048:	0000fb09 	andeq	pc, r0, r9, lsl #22
    204c:	04af0c00 	strteq	r0, [pc], #3072	; 2054 <__data_load__+0xa24>
    2050:	a4030000 	strge	r0, [r3], #-0
    2054:	00002507 	andeq	r2, r0, r7, lsl #10
    2058:	b70c0000 	strlt	r0, [ip, -r0]
    205c:	03000004 	movweq	r0, #4
    2060:	00a505a9 	adceq	r0, r5, r9, lsr #11
    2064:	00040000 	andeq	r0, r4, r0
    2068:	00043803 	andeq	r3, r4, r3, lsl #16
    206c:	03aa0300 			; <UNDEFINED> instruction: 0x03aa0300
    2070:	000000d7 	ldrdeq	r0, [r0], -r7
    2074:	0004f703 	andeq	pc, r4, r3, lsl #14
    2078:	19160400 	ldmdbne	r6, {sl}
    207c:	00000070 	andeq	r0, r0, r0, ror r0
    2080:	0003fa03 	andeq	pc, r3, r3, lsl #20
    2084:	0d0c0500 	cfstr32eq	mvfx0, [ip, #-0]
    2088:	00000025 	andeq	r0, r0, r5, lsr #32
    208c:	00030c03 	andeq	r0, r3, r3, lsl #24
    2090:	1b230400 	blne	8c3098 <_bsl_base_address+0x6c1098>
    2094:	00000113 	andeq	r0, r0, r3, lsl r1
    2098:	00031d0d 	andeq	r1, r3, sp, lsl #26
    209c:	34041800 	strcc	r1, [r4], #-2048	; 0xfffff800
    20a0:	00018508 	andeq	r8, r1, r8, lsl #10
    20a4:	04590c00 	ldrbeq	r0, [r9], #-3072	; 0xfffff400
    20a8:	36040000 	strcc	r0, [r4], -r0
    20ac:	00018513 	andeq	r8, r1, r3, lsl r5
    20b0:	5f0e0000 	svcpl	0x000e0000
    20b4:	3704006b 	strcc	r0, [r4, -fp, rrx]
    20b8:	00002507 	andeq	r2, r0, r7, lsl #10
    20bc:	a10c0400 	tstge	ip, r0, lsl #8
    20c0:	04000004 	streq	r0, [r0], #-4
    20c4:	00250b37 	eoreq	r0, r5, r7, lsr fp
    20c8:	0c080000 	stceq	0, cr0, [r8], {-0}
    20cc:	00000306 	andeq	r0, r0, r6, lsl #6
    20d0:	25143704 	ldrcs	r3, [r4, #-1796]	; 0xfffff8fc
    20d4:	0c000000 	stceq	0, cr0, [r0], {-0}
    20d8:	0005310c 	andeq	r3, r5, ip, lsl #2
    20dc:	1b370400 	blne	dc30e4 <_bsl_base_address+0xbc10e4>
    20e0:	00000025 	andeq	r0, r0, r5, lsr #32
    20e4:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    20e8:	0b380400 	bleq	e030f0 <_bsl_base_address+0xc010f0>
    20ec:	0000018b 	andeq	r0, r0, fp, lsl #3
    20f0:	040f0014 	streq	r0, [pc], #-20	; 20f8 <__data_load__+0xac8>
    20f4:	0000012b 	andeq	r0, r0, fp, lsr #2
    20f8:	00010709 	andeq	r0, r1, r9, lsl #14
    20fc:	00019b00 	andeq	r9, r1, r0, lsl #22
    2100:	00380a00 	eorseq	r0, r8, r0, lsl #20
    2104:	00000000 	andeq	r0, r0, r0
    2108:	0003440d 	andeq	r4, r3, sp, lsl #8
    210c:	3c042400 	cfstrscc	mvf2, [r4], {-0}
    2110:	00021e08 	andeq	r1, r2, r8, lsl #28
    2114:	02690c00 	rsbeq	r0, r9, #0, 24
    2118:	3e040000 	cdpcc	0, 0, cr0, cr4, cr0, {0}
    211c:	00002509 	andeq	r2, r0, r9, lsl #10
    2120:	cd0c0000 	stcgt	0, cr0, [ip, #-0]
    2124:	04000004 	streq	r0, [r0], #-4
    2128:	0025093f 	eoreq	r0, r5, pc, lsr r9
    212c:	0c040000 	stceq	0, cr0, [r4], {-0}
    2130:	0000027e 	andeq	r0, r0, lr, ror r2
    2134:	25094004 	strcs	r4, [r9, #-4]
    2138:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    213c:	0005cd0c 	andeq	ip, r5, ip, lsl #26
    2140:	09410400 	stmdbeq	r1, {sl}^
    2144:	00000025 	andeq	r0, r0, r5, lsr #32
    2148:	03c40c0c 	biceq	r0, r4, #12, 24	; 0xc00
    214c:	42040000 	andmi	r0, r4, #0
    2150:	00002509 	andeq	r2, r0, r9, lsl #10
    2154:	b30c1000 	movwlt	r1, #49152	; 0xc000
    2158:	04000003 	streq	r0, [r0], #-3
    215c:	00250943 	eoreq	r0, r5, r3, asr #18
    2160:	0c140000 	ldceq	0, cr0, [r4], {-0}
    2164:	00000536 	andeq	r0, r0, r6, lsr r5
    2168:	25094404 	strcs	r4, [r9, #-1028]	; 0xfffffbfc
    216c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    2170:	00041a0c 	andeq	r1, r4, ip, lsl #20
    2174:	09450400 	stmdbeq	r5, {sl}^
    2178:	00000025 	andeq	r0, r0, r5, lsr #32
    217c:	056b0c1c 	strbeq	r0, [fp, #-3100]!	; 0xfffff3e4
    2180:	46040000 	strmi	r0, [r4], -r0
    2184:	00002509 	andeq	r2, r0, r9, lsl #10
    2188:	10002000 	andne	r2, r0, r0
    218c:	0000028d 	andeq	r0, r0, sp, lsl #5
    2190:	4f040108 	svcmi	0x00040108
    2194:	00026308 	andeq	r6, r2, r8, lsl #6
    2198:	02f90c00 	rscseq	r0, r9, #0, 24
    219c:	50040000 	andpl	r0, r4, r0
    21a0:	0002630a 	andeq	r6, r2, sl, lsl #6
    21a4:	f90c0000 			; <UNDEFINED> instruction: 0xf90c0000
    21a8:	04000001 	streq	r0, [r0], #-1
    21ac:	02630951 	rsbeq	r0, r3, #1327104	; 0x144000
    21b0:	11800000 	orrne	r0, r0, r0
    21b4:	000004e9 	andeq	r0, r0, r9, ror #9
    21b8:	070a5304 	streq	r5, [sl, -r4, lsl #6]
    21bc:	00000001 	andeq	r0, r0, r1
    21c0:	02b21101 	adcseq	r1, r2, #1073741824	; 0x40000000
    21c4:	56040000 	strpl	r0, [r4], -r0
    21c8:	0001070a 	andeq	r0, r1, sl, lsl #14
    21cc:	00010400 	andeq	r0, r1, r0, lsl #8
    21d0:	00007e09 	andeq	r7, r0, r9, lsl #28
    21d4:	00027300 	andeq	r7, r2, r0, lsl #6
    21d8:	00380a00 	eorseq	r0, r8, r0, lsl #20
    21dc:	001f0000 	andseq	r0, pc, r0
    21e0:	0001e510 	andeq	lr, r1, r0, lsl r5
    21e4:	04019000 	streq	r9, [r1], #-0
    21e8:	02b60862 	adcseq	r0, r6, #6422528	; 0x620000
    21ec:	590c0000 	stmdbpl	ip, {}	; <UNPREDICTABLE>
    21f0:	04000004 	streq	r0, [r0], #-4
    21f4:	02b61263 	adcseq	r1, r6, #805306374	; 0x30000006
    21f8:	0c000000 	stceq	0, cr0, [r0], {-0}
    21fc:	00000471 	andeq	r0, r0, r1, ror r4
    2200:	25066404 	strcs	r6, [r6, #-1028]	; 0xfffffbfc
    2204:	04000000 	streq	r0, [r0], #-0
    2208:	0003010c 	andeq	r0, r3, ip, lsl #2
    220c:	09660400 	stmdbeq	r6!, {sl}^
    2210:	000002bc 			; <UNDEFINED> instruction: 0x000002bc
    2214:	028d0c08 	addeq	r0, sp, #8, 24	; 0x800
    2218:	67040000 	strvs	r0, [r4, -r0]
    221c:	00021e1e 	andeq	r1, r2, lr, lsl lr
    2220:	0f008800 	svceq	0x00008800
    2224:	00027304 	andeq	r7, r2, r4, lsl #6
    2228:	02cc0900 	sbceq	r0, ip, #0, 18
    222c:	02cc0000 	sbceq	r0, ip, #0
    2230:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    2234:	1f000000 	svcne	0x00000000
    2238:	d2040f00 	andle	r0, r4, #0, 30
    223c:	12000002 	andne	r0, r0, #2
    2240:	0004240d 	andeq	r2, r4, sp, lsl #8
    2244:	7a040800 	bvc	10424c <__data_load__+0x102c1c>
    2248:	0002fb08 	andeq	pc, r2, r8, lsl #22
    224c:	09d70c00 	ldmibeq	r7, {sl, fp}^
    2250:	7b040000 	blvc	102258 <__data_load__+0x100c28>
    2254:	0002fb11 	andeq	pc, r2, r1, lsl fp	; <UNPREDICTABLE>
    2258:	a30c0000 	movwge	r0, #49152	; 0xc000
    225c:	04000008 	streq	r0, [r0], #-8
    2260:	0025067c 	eoreq	r0, r5, ip, ror r6
    2264:	00040000 	andeq	r0, r4, r0
    2268:	0054040f 	subseq	r0, r4, pc, lsl #8
    226c:	430d0000 	movwmi	r0, #53248	; 0xd000
    2270:	68000004 	stmdavs	r0, {r2}
    2274:	4408ba04 	strmi	fp, [r8], #-2564	; 0xfffff5fc
    2278:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    227c:	0400705f 	streq	r7, [r0], #-95	; 0xffffffa1
    2280:	02fb12bb 	rscseq	r1, fp, #-1342177269	; 0xb000000b
    2284:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    2288:	0400725f 	streq	r7, [r0], #-607	; 0xfffffda1
    228c:	002507bc 	strhteq	r0, [r5], -ip
    2290:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    2294:	0400775f 	streq	r7, [r0], #-1887	; 0xfffff8a1
    2298:	002507bd 	strhteq	r0, [r5], -sp
    229c:	0c080000 	stceq	0, cr0, [r8], {-0}
    22a0:	000002ab 	andeq	r0, r0, fp, lsr #5
    22a4:	5b09be04 	blpl	271abc <_bsl_base_address+0x6fabc>
    22a8:	0c000000 	stceq	0, cr0, [r0], {-0}
    22ac:	0003600c 	andeq	r6, r3, ip
    22b0:	09bf0400 	ldmibeq	pc!, {sl}	; <UNPREDICTABLE>
    22b4:	0000005b 	andeq	r0, r0, fp, asr r0
    22b8:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    22bc:	c0040066 	andgt	r0, r4, r6, rrx
    22c0:	0002d311 	andeq	sp, r2, r1, lsl r3
    22c4:	380c1000 	stmdacc	ip, {ip}
    22c8:	04000002 	streq	r0, [r0], #-2
    22cc:	002507c1 	eoreq	r0, r5, r1, asr #15
    22d0:	0c180000 	ldceq	0, cr0, [r8], {-0}
    22d4:	0000029b 	muleq	r0, fp, r2
    22d8:	7e0ac804 	cdpvc	8, 0, cr12, cr10, cr4, {0}
    22dc:	1c000000 	stcne	0, cr0, [r0], {-0}
    22e0:	0003340c 	andeq	r3, r3, ip, lsl #8
    22e4:	1dca0400 	cfstrdne	mvd0, [sl]
    22e8:	000005c3 	andeq	r0, r0, r3, asr #11
    22ec:	03ac0c20 			; <UNDEFINED> instruction: 0x03ac0c20
    22f0:	cc040000 	stcgt	0, cr0, [r4], {-0}
    22f4:	0005ed1d 	andeq	lr, r5, sp, lsl sp
    22f8:	bf0c2400 	svclt	0x000c2400
    22fc:	04000004 	streq	r0, [r0], #-4
    2300:	06110dcf 	ldreq	r0, [r1], -pc, asr #27
    2304:	0c280000 	stceq	0, cr0, [r8], #-0
    2308:	00000585 	andeq	r0, r0, r5, lsl #11
    230c:	2b09d004 	blcs	276324 <_bsl_base_address+0x74324>
    2310:	2c000006 	stccs	0, cr0, [r0], {6}
    2314:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    2318:	11d30400 	bicsne	r0, r3, r0, lsl #8
    231c:	000002d3 	ldrdeq	r0, [r0], -r3
    2320:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 14f8 <_reclaim_reent+0xcc>
    2324:	d4040070 	strle	r0, [r4], #-112	; 0xffffff90
    2328:	0002fb12 	andeq	pc, r2, r2, lsl fp	; <UNPREDICTABLE>
    232c:	5f0e3800 	svcpl	0x000e3800
    2330:	04007275 	streq	r7, [r0], #-629	; 0xfffffd8b
    2334:	002507d5 	ldrdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    2338:	0c3c0000 	ldceq	0, cr0, [ip], #-0
    233c:	00000278 	andeq	r0, r0, r8, ror r2
    2340:	3111d804 	tstcc	r1, r4, lsl #16
    2344:	40000006 	andmi	r0, r0, r6
    2348:	00055d0c 	andeq	r5, r5, ip, lsl #26
    234c:	11d90400 	bicsne	r0, r9, r0, lsl #8
    2350:	00000641 	andeq	r0, r0, r1, asr #12
    2354:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    2358:	dc040062 	stcle	0, cr0, [r4], {98}	; 0x62
    235c:	0002d311 	andeq	sp, r2, r1, lsl r3
    2360:	c10c4400 	tstgt	ip, r0, lsl #8
    2364:	04000002 	streq	r0, [r0], #-2
    2368:	002507df 	ldrdeq	r0, [r5], -pc	; <UNPREDICTABLE>
    236c:	0c4c0000 	mareq	acc0, r0, ip
    2370:	000002d2 	ldrdeq	r0, [r0], -r2
    2374:	8d0ae004 	stchi	0, cr14, [sl, #-16]
    2378:	50000000 	andpl	r0, r0, r0
    237c:	0006d00c 	andeq	sp, r6, ip
    2380:	12e30400 	rscne	r0, r3, #0, 8
    2384:	00000462 	andeq	r0, r0, r2, ror #8
    2388:	08780c54 	ldmdaeq	r8!, {r2, r4, r6, sl, fp}^
    238c:	e7040000 	str	r0, [r4, -r0]
    2390:	00011f0c 	andeq	r1, r1, ip, lsl #30
    2394:	4b0c5800 	blmi	31839c <_bsl_base_address+0x11639c>
    2398:	04000004 	streq	r0, [r0], #-4
    239c:	00fb0ee9 	rscseq	r0, fp, r9, ror #29
    23a0:	0c5c0000 	mraeq	r0, ip, acc0
    23a4:	000003a4 	andeq	r0, r0, r4, lsr #7
    23a8:	2509ea04 	strcs	lr, [r9, #-2564]	; 0xfffff5fc
    23ac:	64000000 	strvs	r0, [r0], #-0
    23b0:	00251300 	eoreq	r1, r5, r0, lsl #6
    23b4:	04620000 	strbteq	r0, [r2], #-0
    23b8:	62140000 	andsvs	r0, r4, #0
    23bc:	14000004 	strne	r0, [r0], #-4
    23c0:	0000007e 	andeq	r0, r0, lr, ror r0
    23c4:	0005b114 	andeq	fp, r5, r4, lsl r1
    23c8:	00251400 	eoreq	r1, r5, r0, lsl #8
    23cc:	0f000000 	svceq	0x00000000
    23d0:	00046804 	andeq	r6, r4, r4, lsl #16
    23d4:	0be01500 	bleq	ff8077dc <__stack+0xdf806f04>
    23d8:	04280000 	strteq	r0, [r8], #-0
    23dc:	08026504 	stmdaeq	r2, {r2, r8, sl, sp, lr}
    23e0:	000005b1 			; <UNDEFINED> instruction: 0x000005b1
    23e4:	00041316 	andeq	r1, r4, r6, lsl r3
    23e8:	02670400 	rsbeq	r0, r7, #0, 8
    23ec:	00002507 	andeq	r2, r0, r7, lsl #10
    23f0:	ba160000 	blt	5823f8 <_bsl_base_address+0x3803f8>
    23f4:	04000002 	streq	r0, [r0], #-2
    23f8:	9d0b026c 	sfmls	f0, 4, [fp, #-432]	; 0xfffffe50
    23fc:	04000006 	streq	r0, [r0], #-6
    2400:	00035016 	andeq	r5, r3, r6, lsl r0
    2404:	026c0400 	rsbeq	r0, ip, #0, 8
    2408:	00069d14 	andeq	r9, r6, r4, lsl sp
    240c:	15160800 	ldrne	r0, [r6, #-2048]	; 0xfffff800
    2410:	04000003 	streq	r0, [r0], #-3
    2414:	9d1e026c 	lfmls	f0, 4, [lr, #-432]	; 0xfffffe50
    2418:	0c000006 	stceq	0, cr0, [r0], {6}
    241c:	00046c16 	andeq	r6, r4, r6, lsl ip
    2420:	026e0400 	rsbeq	r0, lr, #0, 8
    2424:	00002508 	andeq	r2, r0, r8, lsl #10
    2428:	0d161000 	ldceq	0, cr1, [r6, #-0]
    242c:	04000002 	streq	r0, [r0], #-2
    2430:	9d08026f 	sfmls	f0, 4, [r8, #-444]	; 0xfffffe44
    2434:	14000008 	strne	r0, [r0], #-8
    2438:	00048816 	andeq	r8, r4, r6, lsl r8
    243c:	02720400 	rsbseq	r0, r2, #0, 8
    2440:	00002507 	andeq	r2, r0, r7, lsl #10
    2444:	76163000 	ldrvc	r3, [r6], -r0
    2448:	04000004 	streq	r0, [r0], #-4
    244c:	b2160273 	andslt	r0, r6, #805306375	; 0x30000007
    2450:	34000008 	strcc	r0, [r0], #-8
    2454:	0003cd16 	andeq	ip, r3, r6, lsl sp
    2458:	02750400 	rsbseq	r0, r5, #0, 8
    245c:	00002507 	andeq	r2, r0, r7, lsl #10
    2460:	7e163800 	cdpvc	8, 1, cr3, cr6, cr0, {0}
    2464:	04000004 	streq	r0, [r0], #-4
    2468:	c30a0277 	movwgt	r0, #41591	; 0xa277
    246c:	3c000008 	stccc	0, cr0, [r0], {8}
    2470:	00038f16 	andeq	r8, r3, r6, lsl pc
    2474:	027a0400 	rsbseq	r0, sl, #0, 8
    2478:	00018513 	andeq	r8, r1, r3, lsl r5
    247c:	3a164000 	bcc	592484 <_bsl_base_address+0x390484>
    2480:	04000003 	streq	r0, [r0], #-3
    2484:	2507027b 	strcs	r0, [r7, #-635]	; 0xfffffd85
    2488:	44000000 	strmi	r0, [r0], #-0
    248c:	0005c816 	andeq	ip, r5, r6, lsl r8
    2490:	027c0400 	rsbseq	r0, ip, #0, 8
    2494:	00018513 	andeq	r8, r1, r3, lsl r5
    2498:	f0164800 			; <UNDEFINED> instruction: 0xf0164800
    249c:	04000003 	streq	r0, [r0], #-3
    24a0:	c914027d 	ldmdbgt	r4, {r0, r2, r3, r4, r5, r6, r9}
    24a4:	4c000008 	stcmi	0, cr0, [r0], {8}
    24a8:	00035816 	andeq	r5, r3, r6, lsl r8
    24ac:	02800400 	addeq	r0, r0, #0, 8
    24b0:	00002507 	andeq	r2, r0, r7, lsl #10
    24b4:	ca165000 	bgt	5964bc <_bsl_base_address+0x3944bc>
    24b8:	04000002 	streq	r0, [r0], #-2
    24bc:	b1090281 	smlabblt	r9, r1, r2, r0
    24c0:	54000005 	strpl	r0, [r0], #-5
    24c4:	00040c16 	andeq	r0, r4, r6, lsl ip
    24c8:	02a40400 	adceq	r0, r4, #0, 8
    24cc:	00087807 	andeq	r7, r8, r7, lsl #16
    24d0:	e5175800 	ldr	r5, [r7, #-2048]	; 0xfffff800
    24d4:	04000001 	streq	r0, [r0], #-1
    24d8:	b61302a8 	ldrlt	r0, [r3], -r8, lsr #5
    24dc:	48000002 	stmdami	r0, {r1}
    24e0:	036d1701 	cmneq	sp, #262144	; 0x40000
    24e4:	a9040000 	stmdbge	r4, {}	; <UNPREDICTABLE>
    24e8:	02731202 	rsbseq	r1, r3, #536870912	; 0x20000000
    24ec:	014c0000 	mrseq	r0, (UNDEF: 76)
    24f0:	00055317 	andeq	r5, r5, r7, lsl r3
    24f4:	02ad0400 	adceq	r0, sp, #0, 8
    24f8:	0008da0c 	andeq	sp, r8, ip, lsl #20
    24fc:	1702dc00 	strne	sp, [r2, -r0, lsl #24]
    2500:	000002a3 	andeq	r0, r0, r3, lsr #5
    2504:	1002b204 	andne	fp, r2, r4, lsl #4
    2508:	0000065e 	andeq	r0, r0, lr, asr r6
    250c:	881702e0 	ldmdahi	r7, {r5, r6, r7, r9}
    2510:	04000002 	streq	r0, [r0], #-2
    2514:	e60a02b4 			; <UNDEFINED> instruction: 0xe60a02b4
    2518:	ec000008 	stc	0, cr0, [r0], {8}
    251c:	040f0002 	streq	r0, [pc], #-2	; 2524 <__data_load__+0xef4>
    2520:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    2524:	48080104 	stmdami	r8, {r2, r8}
    2528:	18000001 	stmdane	r0, {r0}
    252c:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    2530:	0444040f 	strbeq	r0, [r4], #-1039	; 0xfffffbf1
    2534:	25130000 	ldrcs	r0, [r3, #-0]
    2538:	e7000000 	str	r0, [r0, -r0]
    253c:	14000005 	strne	r0, [r0], #-5
    2540:	00000462 	andeq	r0, r0, r2, ror #8
    2544:	00007e14 	andeq	r7, r0, r4, lsl lr
    2548:	05e71400 	strbeq	r1, [r7, #1024]!	; 0x400
    254c:	25140000 	ldrcs	r0, [r4, #-0]
    2550:	00000000 	andeq	r0, r0, r0
    2554:	05be040f 	ldreq	r0, [lr, #1039]!	; 0x40f
    2558:	040f0000 	streq	r0, [pc], #-0	; 2560 <__data_load__+0xf30>
    255c:	000005c9 	andeq	r0, r0, r9, asr #11
    2560:	00009913 	andeq	r9, r0, r3, lsl r9
    2564:	00061100 	andeq	r1, r6, r0, lsl #2
    2568:	04621400 	strbteq	r1, [r2], #-1024	; 0xfffffc00
    256c:	7e140000 	cdpvc	0, 1, cr0, cr4, cr0, {0}
    2570:	14000000 	strne	r0, [r0], #-0
    2574:	00000099 	muleq	r0, r9, r0
    2578:	00002514 	andeq	r2, r0, r4, lsl r5
    257c:	040f0000 	streq	r0, [pc], #-0	; 2584 <__data_load__+0xf54>
    2580:	000005f3 	strdeq	r0, [r0], -r3
    2584:	00002513 	andeq	r2, r0, r3, lsl r5
    2588:	00062b00 	andeq	r2, r6, r0, lsl #22
    258c:	04621400 	strbteq	r1, [r2], #-1024	; 0xfffffc00
    2590:	7e140000 	cdpvc	0, 1, cr0, cr4, cr0, {0}
    2594:	00000000 	andeq	r0, r0, r0
    2598:	0617040f 	ldreq	r0, [r7], -pc, lsl #8
    259c:	54090000 	strpl	r0, [r9], #-0
    25a0:	41000000 	mrsmi	r0, (UNDEF: 0)
    25a4:	0a000006 	beq	25c4 <__data_load__+0xf94>
    25a8:	00000038 	andeq	r0, r0, r8, lsr r0
    25ac:	54090002 	strpl	r0, [r9], #-2
    25b0:	51000000 	mrspl	r0, (UNDEF: 0)
    25b4:	0a000006 	beq	25d4 <__data_load__+0xfa4>
    25b8:	00000038 	andeq	r0, r0, r8, lsr r0
    25bc:	31060000 	mrscc	r0, (UNDEF: 6)
    25c0:	04000004 	streq	r0, [r0], #-4
    25c4:	011a0124 	tsteq	sl, r4, lsr #2
    25c8:	19000003 	stmdbne	r0, {r0, r1}
    25cc:	00000c1f 	andeq	r0, r0, pc, lsl ip
    25d0:	0128040c 			; <UNDEFINED> instruction: 0x0128040c
    25d4:	00069708 	andeq	r9, r6, r8, lsl #14
    25d8:	04591600 	ldrbeq	r1, [r9], #-1536	; 0xfffffa00
    25dc:	2a040000 	bcs	1025e4 <__data_load__+0x100fb4>
    25e0:	06971101 	ldreq	r1, [r7], r1, lsl #2
    25e4:	16000000 	strne	r0, [r0], -r0
    25e8:	00000366 	andeq	r0, r0, r6, ror #6
    25ec:	07012b04 	streq	r2, [r1, -r4, lsl #22]
    25f0:	00000025 	andeq	r0, r0, r5, lsr #32
    25f4:	042b1604 	strteq	r1, [fp], #-1540	; 0xfffff9fc
    25f8:	2c040000 	stccs	0, cr0, [r4], {-0}
    25fc:	069d0b01 	ldreq	r0, [sp], r1, lsl #22
    2600:	00080000 	andeq	r0, r8, r0
    2604:	065e040f 	ldrbeq	r0, [lr], -pc, lsl #8
    2608:	040f0000 	streq	r0, [pc], #-0	; 2610 <__data_load__+0xfe0>
    260c:	00000651 	andeq	r0, r0, r1, asr r6
    2610:	00020519 	andeq	r0, r2, r9, lsl r5
    2614:	44040e00 	strmi	r0, [r4], #-3584	; 0xfffff200
    2618:	06dc0801 	ldrbeq	r0, [ip], r1, lsl #16
    261c:	a9160000 	ldmdbge	r6, {}	; <UNPREDICTABLE>
    2620:	04000004 	streq	r0, [r0], #-4
    2624:	dc120145 	ldfles	f0, [r2], {69}	; 0x45
    2628:	00000006 	andeq	r0, r0, r6
    262c:	0004d616 	andeq	sp, r4, r6, lsl r6
    2630:	01460400 	cmpeq	r6, r0, lsl #8
    2634:	0006dc12 	andeq	sp, r6, r2, lsl ip
    2638:	f2160600 	vmax.s16	d0, d6, d0
    263c:	04000004 	streq	r0, [r0], #-4
    2640:	62120147 	andsvs	r0, r2, #-1073741807	; 0xc0000011
    2644:	0c000000 	stceq	0, cr0, [r0], {-0}
    2648:	00620900 	rsbeq	r0, r2, r0, lsl #18
    264c:	06ec0000 	strbteq	r0, [ip], r0
    2650:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    2654:	02000000 	andeq	r0, r0, #0
    2658:	04d01a00 	ldrbeq	r1, [r0], #2560	; 0xa00
    265c:	01070285 	smlabbeq	r7, r5, r2, r0
    2660:	16000008 	strne	r0, [r0], -r8
    2664:	00000524 	andeq	r0, r0, r4, lsr #10
    2668:	18028704 	stmdane	r2, {r2, r8, r9, sl, pc}
    266c:	00000038 	andeq	r0, r0, r8, lsr r0
    2670:	04dc1600 	ldrbeq	r1, [ip], #1536	; 0x600
    2674:	88040000 	stmdahi	r4, {}	; <UNPREDICTABLE>
    2678:	05b11202 	ldreq	r1, [r1, #514]!	; 0x202
    267c:	16040000 	strne	r0, [r4], -r0
    2680:	00000382 	andeq	r0, r0, r2, lsl #7
    2684:	10028904 	andne	r8, r2, r4, lsl #18
    2688:	00000801 	andeq	r0, r0, r1, lsl #16
    268c:	05761608 	ldrbeq	r1, [r6, #-1544]!	; 0xfffff9f8
    2690:	8a040000 	bhi	102698 <__data_load__+0x101068>
    2694:	019b1702 	orrseq	r1, fp, r2, lsl #14
    2698:	16240000 	strtne	r0, [r4], -r0
    269c:	00000325 	andeq	r0, r0, r5, lsr #6
    26a0:	0f028b04 	svceq	0x00028b04
    26a4:	00000025 	andeq	r0, r0, r5, lsr #32
    26a8:	04541648 	ldrbeq	r1, [r4], #-1608	; 0xfffff9b8
    26ac:	8c040000 	stchi	0, cr0, [r4], {-0}
    26b0:	00772c02 	rsbseq	r2, r7, r2, lsl #24
    26b4:	16500000 	ldrbne	r0, [r0], -r0
    26b8:	0000058c 	andeq	r0, r0, ip, lsl #11
    26bc:	1a028d04 	bne	a5ad4 <__data_load__+0xa44a4>
    26c0:	000006a3 	andeq	r0, r0, r3, lsr #13
    26c4:	045f1658 	ldrbeq	r1, [pc], #-1624	; 26cc <__data_load__+0x109c>
    26c8:	8e040000 	cdphi	0, 0, cr0, cr4, cr0, {0}
    26cc:	00fb1602 	rscseq	r1, fp, r2, lsl #12
    26d0:	16680000 	strbtne	r0, [r8], -r0
    26d4:	000005ba 			; <UNDEFINED> instruction: 0x000005ba
    26d8:	16028f04 	strne	r8, [r2], -r4, lsl #30
    26dc:	000000fb 	strdeq	r0, [r0], -fp
    26e0:	025b1670 	subseq	r1, fp, #112, 12	; 0x7000000
    26e4:	90040000 	andls	r0, r4, r0
    26e8:	00fb1602 	rscseq	r1, fp, r2, lsl #12
    26ec:	16780000 	ldrbtne	r0, [r8], -r0
    26f0:	00000549 	andeq	r0, r0, r9, asr #10
    26f4:	10029104 	andne	r9, r2, r4, lsl #2
    26f8:	00000811 	andeq	r0, r0, r1, lsl r8
    26fc:	03761680 	cmneq	r6, #128, 12	; 0x8000000
    2700:	92040000 	andls	r0, r4, #0
    2704:	08211002 	stmdaeq	r1!, {r1, ip}
    2708:	16880000 	strne	r0, [r8], r0
    270c:	000004ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2710:	0f029304 	svceq	0x00029304
    2714:	00000025 	andeq	r0, r0, r5, lsr #32
    2718:	02eb16a0 	rsceq	r1, fp, #160, 12	; 0xa000000
    271c:	94040000 	strls	r0, [r4], #-0
    2720:	00fb1602 	rscseq	r1, fp, r2, lsl #12
    2724:	16a40000 	strtne	r0, [r4], r0
    2728:	0000024c 	andeq	r0, r0, ip, asr #4
    272c:	16029504 	strne	r9, [r2], -r4, lsl #10
    2730:	000000fb 	strdeq	r0, [r0], -fp
    2734:	02da16ac 	sbcseq	r1, sl, #172, 12	; 0xac00000
    2738:	96040000 	strls	r0, [r4], -r0
    273c:	00fb1602 	rscseq	r1, fp, r2, lsl #12
    2740:	16b40000 	ldrtne	r0, [r4], r0
    2744:	00000218 	andeq	r0, r0, r8, lsl r2
    2748:	16029704 	strne	r9, [r2], -r4, lsl #14
    274c:	000000fb 	strdeq	r0, [r0], -fp
    2750:	022716bc 	eoreq	r1, r7, #188, 12	; 0xbc00000
    2754:	98040000 	stmdals	r4, {}	; <UNPREDICTABLE>
    2758:	00fb1602 	rscseq	r1, fp, r2, lsl #12
    275c:	16c40000 	strbne	r0, [r4], r0
    2760:	00000411 	andeq	r0, r0, r1, lsl r4
    2764:	08029904 	stmdaeq	r2, {r2, r8, fp, ip, pc}
    2768:	00000025 	andeq	r0, r0, r5, lsr #32
    276c:	b70900cc 	strlt	r0, [r9, -ip, asr #1]
    2770:	11000005 	tstne	r0, r5
    2774:	0a000008 	beq	279c <__data_load__+0x116c>
    2778:	00000038 	andeq	r0, r0, r8, lsr r0
    277c:	b7090019 	smladlt	r9, r9, r0, r0
    2780:	21000005 	tstcs	r0, r5
    2784:	0a000008 	beq	27ac <__data_load__+0x117c>
    2788:	00000038 	andeq	r0, r0, r8, lsr r0
    278c:	b7090007 	strlt	r0, [r9, -r7]
    2790:	31000005 	tstcc	r0, r5
    2794:	0a000008 	beq	27bc <__data_load__+0x118c>
    2798:	00000038 	andeq	r0, r0, r8, lsr r0
    279c:	f01a0017 			; <UNDEFINED> instruction: 0xf01a0017
    27a0:	07029e04 	streq	r9, [r2, -r4, lsl #28]
    27a4:	00000858 	andeq	r0, r0, r8, asr r8
    27a8:	0003bd16 	andeq	fp, r3, r6, lsl sp
    27ac:	02a10400 	adceq	r0, r1, #0, 8
    27b0:	0008581b 	andeq	r5, r8, fp, lsl r8
    27b4:	40160000 	andsmi	r0, r6, r0
    27b8:	04000005 	streq	r0, [r0], #-5
    27bc:	681802a2 	ldmdavs	r8, {r1, r5, r7, r9}
    27c0:	78000008 	stmdavc	r0, {r3}
    27c4:	02fb0900 	rscseq	r0, fp, #0, 18
    27c8:	08680000 	stmdaeq	r8!, {}^	; <UNPREDICTABLE>
    27cc:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    27d0:	1d000000 	stcne	0, cr0, [r0, #-0]
    27d4:	00380900 	eorseq	r0, r8, r0, lsl #18
    27d8:	08780000 	ldmdaeq	r8!, {}^	; <UNPREDICTABLE>
    27dc:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    27e0:	1d000000 	stcne	0, cr0, [r0, #-0]
    27e4:	04f01b00 	ldrbteq	r1, [r0], #2816	; 0xb00
    27e8:	9d030283 	sfmls	f0, 4, [r3, #-524]	; 0xfffffdf4
    27ec:	1c000008 	stcne	0, cr0, [r0], {8}
    27f0:	00000be0 	andeq	r0, r0, r0, ror #23
    27f4:	0b029a04 	bleq	a900c <__data_load__+0xa79dc>
    27f8:	000006ec 	andeq	r0, r0, ip, ror #13
    27fc:	0005631c 	andeq	r6, r5, ip, lsl r3
    2800:	02a30400 	adceq	r0, r3, #0, 8
    2804:	0008310b 	andeq	r3, r8, fp, lsl #2
    2808:	b7090000 	strlt	r0, [r9, -r0]
    280c:	ad000005 	stcge	0, cr0, [r0, #-20]	; 0xffffffec
    2810:	0a000008 	beq	2838 <__data_load__+0x1208>
    2814:	00000038 	andeq	r0, r0, r8, lsr r0
    2818:	411d0018 	tstmi	sp, r8, lsl r0
    281c:	0f000002 	svceq	0x00000002
    2820:	0008ad04 	andeq	sl, r8, r4, lsl #26
    2824:	08c31e00 	stmiaeq	r3, {r9, sl, fp, ip}^
    2828:	62140000 	andsvs	r0, r4, #0
    282c:	00000004 	andeq	r0, r0, r4
    2830:	08b8040f 	ldmeq	r8!, {r0, r1, r2, r3, sl}
    2834:	040f0000 	streq	r0, [pc], #-0	; 283c <__data_load__+0x120c>
    2838:	00000185 	andeq	r0, r0, r5, lsl #3
    283c:	0008da1e 	andeq	sp, r8, lr, lsl sl
    2840:	00251400 	eoreq	r1, r5, r0, lsl #8
    2844:	0f000000 	svceq	0x00000000
    2848:	0008e004 	andeq	lr, r8, r4
    284c:	cf040f00 	svcgt	0x00040f00
    2850:	09000008 	stmdbeq	r0, {r3}
    2854:	00000651 	andeq	r0, r0, r1, asr r6
    2858:	000008f6 	strdeq	r0, [r0], -r6
    285c:	0000380a 	andeq	r3, r0, sl, lsl #16
    2860:	19000200 	stmdbne	r0, {r9}
    2864:	0000094e 	andeq	r0, r0, lr, asr #18
    2868:	02d80128 	sbcseq	r0, r8, #40, 2
    286c:	00099108 	andeq	r9, r9, r8, lsl #2
    2870:	08031600 	stmdaeq	r3, {r9, sl, ip}
    2874:	d9010000 	stmdble	r1, {}	; <UNPREDICTABLE>
    2878:	00250702 	eoreq	r0, r5, r2, lsl #14
    287c:	16000000 	strne	r0, [r0], -r0
    2880:	00000859 	andeq	r0, r0, r9, asr r8
    2884:	0702da01 	streq	sp, [r2, -r1, lsl #20]
    2888:	00000025 	andeq	r0, r0, r5, lsr #32
    288c:	09021604 	stmdbeq	r2, {r2, r9, sl, ip}
    2890:	db010000 	blle	42898 <__data_load__+0x41268>
    2894:	00250702 	eoreq	r0, r5, r2, lsl #14
    2898:	16080000 	strne	r0, [r8], -r0
    289c:	000007f6 	strdeq	r0, [r0], -r6
    28a0:	0702dc01 	streq	sp, [r2, -r1, lsl #24]
    28a4:	00000025 	andeq	r0, r0, r5, lsr #32
    28a8:	09e8160c 	stmibeq	r8!, {r2, r3, r9, sl, ip}^
    28ac:	dd010000 	stcle	0, cr0, [r1, #-0]
    28b0:	00250702 	eoreq	r0, r5, r2, lsl #14
    28b4:	16100000 	ldrne	r0, [r0], -r0
    28b8:	0000092e 	andeq	r0, r0, lr, lsr #18
    28bc:	0702de01 	streq	sp, [r2, -r1, lsl #28]
    28c0:	00000025 	andeq	r0, r0, r5, lsr #32
    28c4:	09011614 	stmdbeq	r1, {r2, r4, r9, sl, ip}
    28c8:	df010000 	svcle	0x00010000
    28cc:	00250702 	eoreq	r0, r5, r2, lsl #14
    28d0:	16180000 	ldrne	r0, [r8], -r0
    28d4:	00000896 	muleq	r0, r6, r8
    28d8:	0702e001 	streq	lr, [r2, -r1]
    28dc:	00000025 	andeq	r0, r0, r5, lsr #32
    28e0:	0858161c 	ldmdaeq	r8, {r2, r3, r4, r9, sl, ip}^
    28e4:	e1010000 	mrs	r0, (UNDEF: 1)
    28e8:	00250702 	eoreq	r0, r5, r2, lsl #14
    28ec:	16200000 	strtne	r0, [r0], -r0
    28f0:	000009c1 	andeq	r0, r0, r1, asr #19
    28f4:	0702e201 	streq	lr, [r2, -r1, lsl #4]
    28f8:	00000025 	andeq	r0, r0, r5, lsr #32
    28fc:	09190024 	ldmdbeq	r9, {r2, r5}
    2900:	10000009 	andne	r0, r0, r9
    2904:	0804e901 	stmdaeq	r4, {r0, r8, fp, sp, lr, pc}
    2908:	000009d6 	ldrdeq	r0, [r0], -r6
    290c:	0007db16 	andeq	sp, r7, r6, lsl fp
    2910:	04eb0100 	strbteq	r0, [fp], #256	; 0x100
    2914:	00002c13 	andeq	r2, r0, r3, lsl ip
    2918:	a4160000 	ldrge	r0, [r6], #-0
    291c:	01000008 	tsteq	r0, r8
    2920:	2c1304ec 	cfldrscs	mvf0, [r3], {236}	; 0xec
    2924:	04000000 	streq	r0, [r0], #-0
    2928:	0064661f 	rsbeq	r6, r4, pc, lsl r6
    292c:	1804ed01 	stmdane	r4, {r0, r8, sl, fp, sp, lr, pc}
    2930:	000009d6 	ldrdeq	r0, [r0], -r6
    2934:	6b621f08 	blvs	188a55c <_bsl_base_address+0x168855c>
    2938:	04ee0100 	strbteq	r0, [lr], #256	; 0x100
    293c:	0009d618 	andeq	sp, r9, r8, lsl r6
    2940:	0f000c00 	svceq	0x00000c00
    2944:	00099104 	andeq	r9, r9, r4, lsl #2
    2948:	09aa0600 	stmibeq	sl!, {r9, sl}
    294c:	f1010000 	setend	le
    2950:	09d61e04 	ldmibeq	r6, {r2, r9, sl, fp, ip}^
    2954:	36060000 	strcc	r0, [r6], -r0
    2958:	01000008 	tsteq	r0, r8
    295c:	d61e061d 			; <UNDEFINED> instruction: 0xd61e061d
    2960:	09000009 	stmdbeq	r0, {r0, r3}
    2964:	000009e9 	andeq	r0, r0, r9, ror #19
    2968:	00000a07 	andeq	r0, r0, r7, lsl #20
    296c:	00003820 	andeq	r3, r0, r0, lsr #16
    2970:	00010100 	andeq	r0, r1, r0, lsl #2
    2974:	00096921 	andeq	r6, r9, r1, lsr #18
    2978:	063d0100 	ldrteq	r0, [sp], -r0, lsl #2
    297c:	0009f610 	andeq	pc, r9, r0, lsl r6	; <UNPREDICTABLE>
    2980:	60030500 	andvs	r0, r3, r0, lsl #10
    2984:	21200004 			; <UNDEFINED> instruction: 0x21200004
    2988:	00000916 	andeq	r0, r0, r6, lsl r9
    298c:	1606a801 	strne	sl, [r6], -r1, lsl #16
    2990:	00000070 	andeq	r0, r0, r0, ror r0
    2994:	086c0305 	stmdaeq	ip!, {r0, r2, r8, r9}^
    2998:	e5212000 	str	r2, [r1, #-0]!
    299c:	01000007 	tsteq	r0, r7
    29a0:	701606a9 	andsvc	r0, r6, r9, lsr #13
    29a4:	05000000 	streq	r0, [r0, #-0]
    29a8:	00089803 	andeq	r9, r8, r3, lsl #16
    29ac:	09ca2120 	stmibeq	sl, {r5, r8, sp}^
    29b0:	b0010000 	andlt	r0, r1, r0
    29b4:	05b10e06 	ldreq	r0, [r1, #3590]!	; 0xe06
    29b8:	03050000 	movweq	r0, #20480	; 0x5000
    29bc:	20000868 	andcs	r0, r0, r8, ror #16
    29c0:	00087e21 	andeq	r7, r8, r1, lsr #28
    29c4:	06b30100 	ldrteq	r0, [r3], r0, lsl #2
    29c8:	00007016 	andeq	r7, r0, r6, lsl r0
    29cc:	c4030500 	strgt	r0, [r3], #-1280	; 0xfffffb00
    29d0:	21200008 			; <UNDEFINED> instruction: 0x21200008
    29d4:	000008d5 	ldrdeq	r0, [r0], -r5
    29d8:	1606b601 	strne	fp, [r6], -r1, lsl #12
    29dc:	00000070 	andeq	r0, r0, r0, ror r0
    29e0:	08c80305 	stmiaeq	r8, {r0, r2, r8, r9}^
    29e4:	3d212000 	stccc	0, cr2, [r1, #-0]
    29e8:	01000009 	tsteq	r0, r9
    29ec:	f61806b9 			; <UNDEFINED> instruction: 0xf61806b9
    29f0:	05000008 	streq	r0, [r0, #-8]
    29f4:	00089c03 	andeq	r9, r8, r3, lsl #24
    29f8:	07d12220 	ldrbeq	r2, [r1, r0, lsr #4]
    29fc:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
    2a00:	007e0909 	rsbseq	r0, lr, r9, lsl #18
    2a04:	04d00000 	ldrbeq	r0, [r0], #0
    2a08:	07f00000 	ldrbeq	r0, [r0, r0]!
    2a0c:	9c010000 	stcls	0, cr0, [r1], {-0}
    2a10:	00000dbc 			; <UNDEFINED> instruction: 0x00000dbc
    2a14:	00097623 	andeq	r7, r9, r3, lsr #12
    2a18:	09190100 	ldmdbeq	r9, {r8}
    2a1c:	00046210 	andeq	r6, r4, r0, lsl r2
    2a20:	0001f400 	andeq	pc, r1, r0, lsl #8
    2a24:	0001da00 	andeq	sp, r1, r0, lsl #20
    2a28:	07c32300 	strbeq	r2, [r3, r0, lsl #6]
    2a2c:	19010000 	stmdbne	r1, {}	; <UNPREDICTABLE>
    2a30:	002c1c09 	eoreq	r1, ip, r9, lsl #24
    2a34:	02a10000 	adceq	r0, r1, #0
    2a38:	02970000 	addseq	r0, r7, #0
    2a3c:	fc240000 	stc2	0, cr0, [r4], #-0
    2a40:	01000007 	tsteq	r0, r7
    2a44:	dc0d0924 			; <UNDEFINED> instruction: 0xdc0d0924
    2a48:	16000009 	strne	r0, [r0], -r9
    2a4c:	e8000003 	stmda	r0, {r0, r1}
    2a50:	24000002 	strcs	r0, [r0], #-2
    2a54:	000008f5 	strdeq	r0, [r0], -r5
    2a58:	13092501 	movwne	r2, #38145	; 0x9501
    2a5c:	0000002c 	andeq	r0, r0, ip, lsr #32
    2a60:	00000457 	andeq	r0, r0, r7, asr r4
    2a64:	00000429 	andeq	r0, r0, r9, lsr #8
    2a68:	78646925 	stmdavc	r4!, {r0, r2, r5, r8, fp, sp, lr}^
    2a6c:	09260100 	stmdbeq	r6!, {r8}
    2a70:	0000250d 	andeq	r2, r0, sp, lsl #10
    2a74:	0005aa00 	andeq	sl, r5, r0, lsl #20
    2a78:	00058600 	andeq	r8, r5, r0, lsl #12
    2a7c:	69622500 	stmdbvs	r2!, {r8, sl, sp}^
    2a80:	2701006e 	strcs	r0, [r1, -lr, rrx]
    2a84:	09e90d09 	stmibeq	r9!, {r0, r3, r8, sl, fp}^
    2a88:	06880000 	streq	r0, [r8], r0
    2a8c:	067a0000 	ldrbteq	r0, [sl], -r0
    2a90:	57240000 	strpl	r0, [r4, -r0]!
    2a94:	01000009 	tsteq	r0, r9
    2a98:	dc0d0928 			; <UNDEFINED> instruction: 0xdc0d0928
    2a9c:	e1000009 	tst	r0, r9
    2aa0:	dd000006 	stcle	0, cr0, [r0, #-24]	; 0xffffffe8
    2aa4:	24000006 	strcs	r0, [r0], #-6
    2aa8:	00000809 	andeq	r0, r0, r9, lsl #16
    2aac:	0d092901 	vstreq.16	s4, [r9, #-2]	; <UNPREDICTABLE>
    2ab0:	00000069 	andeq	r0, r0, r9, rrx
    2ab4:	0000073f 	andeq	r0, r0, pc, lsr r7
    2ab8:	000006ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    2abc:	00098824 	andeq	r8, r9, r4, lsr #16
    2ac0:	092a0100 	stmdbeq	sl!, {r8}
    2ac4:	0000250d 	andeq	r2, r0, sp, lsl #10
    2ac8:	00092600 	andeq	r2, r9, r0, lsl #12
    2acc:	00091e00 	andeq	r1, r9, r0, lsl #28
    2ad0:	08202400 	stmdaeq	r0!, {sl, sp}
    2ad4:	2b010000 	blcs	42adc <__data_load__+0x414ac>
    2ad8:	00701109 	rsbseq	r1, r0, r9, lsl #2
    2adc:	09720000 	ldmdbeq	r2!, {}^	; <UNPREDICTABLE>
    2ae0:	095c0000 	ldmdbeq	ip, {}^	; <UNPREDICTABLE>
    2ae4:	ec240000 	stc	0, cr0, [r4], #-0
    2ae8:	01000008 	tsteq	r0, r8
    2aec:	250d092c 	strcs	r0, [sp, #-2348]	; 0xfffff6d4
    2af0:	03000000 	movweq	r0, #0
    2af4:	fb00000a 	blx	2b26 <__data_load__+0x14f6>
    2af8:	25000009 	strcs	r0, [r0, #-9]
    2afc:	00647766 	rsbeq	r7, r4, r6, ror #14
    2b00:	0d092d01 	stceq	13, cr2, [r9, #-4]
    2b04:	000009dc 	ldrdeq	r0, [r0], -ip
    2b08:	00000a45 	andeq	r0, r0, r5, asr #20
    2b0c:	00000a37 	andeq	r0, r0, r7, lsr sl
    2b10:	6b636225 	blvs	18db3ac <_bsl_base_address+0x16d93ac>
    2b14:	092e0100 	stmdbeq	lr!, {r8}
    2b18:	0009dc0d 	andeq	sp, r9, sp, lsl #24
    2b1c:	000aac00 	andeq	sl, sl, r0, lsl #24
    2b20:	000a9a00 	andeq	r9, sl, r0, lsl #20
    2b24:	00712500 	rsbseq	r2, r1, r0, lsl #10
    2b28:	0b092f01 	bleq	24e734 <_bsl_base_address+0x4c734>
    2b2c:	000009e9 	andeq	r0, r0, r9, ror #19
    2b30:	00000b2c 	andeq	r0, r0, ip, lsr #22
    2b34:	00000b1a 	andeq	r0, r0, sl, lsl fp
    2b38:	00626e25 	rsbeq	r6, r2, r5, lsr #28
    2b3c:	13093101 	movwne	r3, #37121	; 0x9101
    2b40:	0000002c 	andeq	r0, r0, ip, lsr #32
    2b44:	00000bb1 			; <UNDEFINED> instruction: 0x00000bb1
    2b48:	00000b9b 	muleq	r0, fp, fp
    2b4c:	000dbc26 	andeq	fp, sp, r6, lsr #24
    2b50:	0006d000 	andeq	sp, r6, r0
    2b54:	00000100 	andeq	r0, r0, r0, lsl #2
    2b58:	01000000 	mrseq	r0, (UNDEF: 0)
    2b5c:	02050a14 	andeq	r0, r5, #20, 20	; 0x14000
    2b60:	2700000d 	strcs	r0, [r0, -sp]
    2b64:	00000dd7 	ldrdeq	r0, [r0], -r7
    2b68:	000dca28 	andeq	ip, sp, r8, lsr #20
    2b6c:	000c4500 	andeq	r4, ip, r0, lsl #10
    2b70:	000c3b00 	andeq	r3, ip, r0, lsl #22
    2b74:	00002900 	andeq	r2, r0, r0, lsl #18
    2b78:	e32a0000 			; <UNDEFINED> instruction: 0xe32a0000
    2b7c:	9200000d 	andls	r0, r0, #13
    2b80:	8400000c 	strhi	r0, [r0], #-12
    2b84:	2a00000c 	bcs	2bbc <__data_load__+0x158c>
    2b88:	00000df0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    2b8c:	00000cf3 	strdeq	r0, [r0], -r3
    2b90:	00000ce9 	andeq	r0, r0, r9, ror #25
    2b94:	000dfd2a 	andeq	pc, sp, sl, lsr #26
    2b98:	000d4a00 	andeq	r4, sp, r0, lsl #20
    2b9c:	000d3800 	andeq	r3, sp, r0, lsl #16
    2ba0:	0e0a2a00 	vmlaeq.f32	s4, s20, s0
    2ba4:	0e020000 	cdpeq	0, 0, cr0, cr2, cr0, {0}
    2ba8:	0dfa0000 	ldcleq	0, cr0, [sl]
    2bac:	172a0000 	strne	r0, [sl, -r0]!
    2bb0:	4200000e 	andmi	r0, r0, #14
    2bb4:	3a00000e 	bcc	2bf4 <__data_load__+0x15c4>
    2bb8:	2a00000e 	bcs	2bf8 <__data_load__+0x15c8>
    2bbc:	00000e24 	andeq	r0, r0, r4, lsr #28
    2bc0:	00000e84 	andeq	r0, r0, r4, lsl #29
    2bc4:	00000e7e 	andeq	r0, r0, lr, ror lr
    2bc8:	000e312a 	andeq	r3, lr, sl, lsr #2
    2bcc:	000ec300 	andeq	ip, lr, r0, lsl #6
    2bd0:	000eb700 	andeq	fp, lr, r0, lsl #14
    2bd4:	0e3e2a00 	vaddeq.f32	s4, s28, s0
    2bd8:	0f1b0000 	svceq	0x001b0000
    2bdc:	0f0d0000 	svceq	0x000d0000
    2be0:	4b2a0000 	blmi	a82be8 <_bsl_base_address+0x880be8>
    2be4:	8600000e 	strhi	r0, [r0], -lr
    2be8:	7a00000f 	bvc	2c2c <__data_load__+0x15fc>
    2bec:	2a00000f 	bcs	2c30 <__data_load__+0x1600>
    2bf0:	00000e58 	andeq	r0, r0, r8, asr lr
    2bf4:	00000fea 	andeq	r0, r0, sl, ror #31
    2bf8:	00000fe4 	andeq	r0, r0, r4, ror #31
    2bfc:	000e652a 	andeq	r6, lr, sl, lsr #10
    2c00:	00101d00 	andseq	r1, r0, r0, lsl #26
    2c04:	00101300 	andseq	r1, r0, r0, lsl #6
    2c08:	07042b00 	streq	r2, [r4, -r0, lsl #22]
    2c0c:	0e730000 	cdpeq	0, 7, cr0, cr3, cr0, {0}
    2c10:	0cb60000 	ldceq	0, cr0, [r6]
    2c14:	012c0000 			; <UNDEFINED> instruction: 0x012c0000
    2c18:	00770250 	rsbseq	r0, r7, r0, asr r2
    2c1c:	0251012c 	subseq	r0, r1, #44, 2
    2c20:	2b000079 	blcs	2e0c <__data_load__+0x17dc>
    2c24:	00000778 	andeq	r0, r0, r8, ror r7
    2c28:	00000e73 	andeq	r0, r0, r3, ror lr
    2c2c:	00000cd0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    2c30:	0250012c 	subseq	r0, r0, #44, 2
    2c34:	012c0077 			; <UNDEFINED> instruction: 0x012c0077
    2c38:	007b0251 	rsbseq	r0, fp, r1, asr r2
    2c3c:	0b0c2b00 	bleq	30d844 <_bsl_base_address+0x10b844>
    2c40:	0e730000 	cdpeq	0, 7, cr0, cr3, cr0, {0}
    2c44:	0cea0000 	stcleq	0, cr0, [sl]
    2c48:	012c0000 			; <UNDEFINED> instruction: 0x012c0000
    2c4c:	00770250 	rsbseq	r0, r7, r0, asr r2
    2c50:	0251012c 	subseq	r0, r1, #44, 2
    2c54:	2d00007b 	stccs	0, cr0, [r0, #-492]	; 0xfffffe14
    2c58:	00000c64 	andeq	r0, r0, r4, ror #24
    2c5c:	00000e7f 	andeq	r0, r0, pc, ror lr
    2c60:	0250012c 	subseq	r0, r0, #44, 2
    2c64:	012c0077 			; <UNDEFINED> instruction: 0x012c0077
    2c68:	08740251 	ldmdaeq	r4!, {r0, r4, r6, r9}^
    2c6c:	2b000000 	blcs	2c74 <__data_load__+0x1644>
    2c70:	000004f4 	strdeq	r0, [r0], -r4
    2c74:	00000e8c 	andeq	r0, r0, ip, lsl #29
    2c78:	00000d16 	andeq	r0, r0, r6, lsl sp
    2c7c:	0250012c 	subseq	r0, r0, #44, 2
    2c80:	2b000077 	blcs	2e64 <__data_load__+0x1834>
    2c84:	0000054c 	andeq	r0, r0, ip, asr #10
    2c88:	00000e99 	muleq	r0, r9, lr
    2c8c:	00000d2a 	andeq	r0, r0, sl, lsr #26
    2c90:	0250012c 	subseq	r0, r0, #44, 2
    2c94:	2e000077 	mcrcs	0, 0, r0, cr0, cr7, {3}
    2c98:	00000578 	andeq	r0, r0, r8, ror r5
    2c9c:	00000e8c 	andeq	r0, r0, ip, lsl #29
    2ca0:	00083c2b 	andeq	r3, r8, fp, lsr #24
    2ca4:	000e9900 	andeq	r9, lr, r0, lsl #18
    2ca8:	000d4700 	andeq	r4, sp, r0, lsl #14
    2cac:	50012c00 	andpl	r2, r1, r0, lsl #24
    2cb0:	00007702 	andeq	r7, r0, r2, lsl #14
    2cb4:	0009042b 	andeq	r0, r9, fp, lsr #8
    2cb8:	000e9900 	andeq	r9, lr, r0, lsl #18
    2cbc:	000d5b00 	andeq	r5, sp, r0, lsl #22
    2cc0:	50012c00 	andpl	r2, r1, r0, lsl #24
    2cc4:	00007702 	andeq	r7, r0, r2, lsl #14
    2cc8:	0009242b 	andeq	r2, r9, fp, lsr #8
    2ccc:	000e9900 	andeq	r9, lr, r0, lsl #18
    2cd0:	000d6f00 	andeq	r6, sp, r0, lsl #30
    2cd4:	50012c00 	andpl	r2, r1, r0, lsl #24
    2cd8:	00007702 	andeq	r7, r0, r2, lsl #14
    2cdc:	0009502b 	andeq	r5, r9, fp, lsr #32
    2ce0:	000e9900 	andeq	r9, lr, r0, lsl #18
    2ce4:	000d8300 	andeq	r8, sp, r0, lsl #6
    2ce8:	50012c00 	andpl	r2, r1, r0, lsl #24
    2cec:	00007702 	andeq	r7, r0, r2, lsl #14
    2cf0:	00098c2b 	andeq	r8, r9, fp, lsr #24
    2cf4:	000e9900 	andeq	r9, lr, r0, lsl #18
    2cf8:	000d9700 	andeq	r9, sp, r0, lsl #14
    2cfc:	50012c00 	andpl	r2, r1, r0, lsl #24
    2d00:	00007702 	andeq	r7, r0, r2, lsl #14
    2d04:	000a6c2b 	andeq	r6, sl, fp, lsr #24
    2d08:	000e9900 	andeq	r9, lr, r0, lsl #18
    2d0c:	000dab00 	andeq	sl, sp, r0, lsl #22
    2d10:	50012c00 	andpl	r2, r1, r0, lsl #24
    2d14:	00007702 	andeq	r7, r0, r2, lsl #14
    2d18:	000aac2d 	andeq	sl, sl, sp, lsr #24
    2d1c:	000e9900 	andeq	r9, lr, r0, lsl #18
    2d20:	50012c00 	andpl	r2, r1, r0, lsl #24
    2d24:	00007702 	andeq	r7, r0, r2, lsl #14
    2d28:	08462f00 	stmdaeq	r6, {r8, r9, sl, fp, sp}^
    2d2c:	59010000 	stmdbpl	r1, {}	; <UNPREDICTABLE>
    2d30:	73010d08 	movwvc	r0, #7432	; 0x1d08
    2d34:	3000000e 	andcc	r0, r0, lr
    2d38:	00000976 	andeq	r0, r0, r6, ror r9
    2d3c:	1f085901 	svcne	0x00085901
    2d40:	00000462 	andeq	r0, r0, r2, ror #8
    2d44:	00626e31 	rsbeq	r6, r2, r1, lsr lr
    2d48:	34085901 	strcc	r5, [r8], #-2305	; 0xfffff6ff
    2d4c:	0000002c 	andeq	r0, r0, ip, lsr #32
    2d50:	6b726232 	blvs	1c9b620 <_bsl_base_address+0x1a99620>
    2d54:	085e0100 	ldmdaeq	lr, {r8}^
    2d58:	0005b10d 	andeq	fp, r5, sp, lsl #2
    2d5c:	08613300 	stmdaeq	r1!, {r8, r9, ip, sp}^
    2d60:	5f010000 	svcpl	0x00010000
    2d64:	002c1308 	eoreq	r1, ip, r8, lsl #6
    2d68:	dd330000 	ldcle	0, cr0, [r3, #-0]
    2d6c:	01000009 	tsteq	r0, r9
    2d70:	2c130860 	ldccs	8, cr0, [r3], {96}	; 0x60
    2d74:	33000000 	movwcc	r0, #0
    2d78:	00000998 	muleq	r0, r8, r9
    2d7c:	07086101 	streq	r6, [r8, -r1, lsl #2]
    2d80:	00000025 	andeq	r0, r0, r5, lsr #32
    2d84:	00083e33 	andeq	r3, r8, r3, lsr lr
    2d88:	08620100 	stmdaeq	r2!, {r8}^
    2d8c:	0005b10d 	andeq	fp, r5, sp, lsl #2
    2d90:	09b83300 	ldmibeq	r8!, {r8, r9, ip, sp}
    2d94:	63010000 	movwvs	r0, #4096	; 0x1000
    2d98:	002c1308 	eoreq	r1, ip, r8, lsl #6
    2d9c:	61330000 	teqvs	r3, r0
    2da0:	01000009 	tsteq	r0, r9
    2da4:	dc0d0865 	stcle	8, cr0, [sp], {101}	; 0x65
    2da8:	33000009 	movwcc	r0, #9
    2dac:	000009b4 			; <UNDEFINED> instruction: 0x000009b4
    2db0:	13086601 	movwne	r6, #34305	; 0x8601
    2db4:	0000002c 	andeq	r0, r0, ip, lsr #32
    2db8:	00081833 	andeq	r1, r8, r3, lsr r8
    2dbc:	08670100 	stmdaeq	r7!, {r8}^
    2dc0:	0005b10d 	andeq	fp, r5, sp, lsl #2
    2dc4:	089f3300 	ldmeq	pc, {r8, r9, ip, sp}	; <UNPREDICTABLE>
    2dc8:	6b010000 	blvs	42dd0 <__data_load__+0x417a0>
    2dcc:	002c1608 	eoreq	r1, ip, r8, lsl #12
    2dd0:	36330000 	ldrtcc	r0, [r3], -r0
    2dd4:	01000009 	tsteq	r0, r9
    2dd8:	7011086c 	andsvc	r0, r1, ip, ror #16
    2ddc:	00000000 	andeq	r0, r0, r0
    2de0:	00098034 	andeq	r8, r9, r4, lsr r0
    2de4:	00098000 	andeq	r8, r9, r0
    2de8:	0e990600 	cdpeq	6, 9, cr0, cr9, cr0, {0}
    2dec:	0007c935 	andeq	ip, r7, r5, lsr r9
    2df0:	0007c900 	andeq	ip, r7, r0, lsl #18
    2df4:	04190100 	ldreq	r0, [r9], #-256	; 0xffffff00
    2df8:	08703509 	ldmdaeq	r0!, {r0, r3, r8, sl, ip, sp}^
    2dfc:	08700000 	ldmdaeq	r0!, {}^	; <UNPREDICTABLE>
    2e00:	48010000 	stmdami	r1, {}	; <UNPREDICTABLE>
    2e04:	26350d01 	ldrtcs	r0, [r5], -r1, lsl #26
    2e08:	26000008 	strcs	r0, [r0], -r8
    2e0c:	01000008 	tsteq	r0, r8
    2e10:	000d0149 	andeq	r0, sp, r9, asr #2
    2e14:	00000139 	andeq	r0, r0, r9, lsr r1
    2e18:	0b340004 	bleq	d02e30 <_bsl_base_address+0xb00e30>
    2e1c:	01040000 	mrseq	r0, (UNDEF: 4)
    2e20:	00000161 	andeq	r0, r0, r1, ror #2
    2e24:	000a450c 	andeq	r4, sl, ip, lsl #10
    2e28:	0009ef00 	andeq	lr, r9, r0, lsl #30
    2e2c:	000cc000 	andeq	ip, ip, r0
    2e30:	00011c00 	andeq	r1, r1, r0, lsl #24
    2e34:	000fc300 	andeq	ip, pc, r0, lsl #6
    2e38:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
    2e3c:	00746e69 	rsbseq	r6, r4, r9, ror #28
    2e40:	0005d703 	andeq	sp, r5, r3, lsl #14
    2e44:	17d10200 	ldrbne	r0, [r1, r0, lsl #4]
    2e48:	00000038 	andeq	r0, r0, r8, lsr r0
    2e4c:	29070404 	stmdbcs	r7, {r2, sl}
    2e50:	04000001 	streq	r0, [r0], #-1
    2e54:	007b0508 	rsbseq	r0, fp, r8, lsl #10
    2e58:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
    2e5c:	0001cb04 	andeq	ip, r1, r4, lsl #22
    2e60:	06010400 	streq	r0, [r1], -r0, lsl #8
    2e64:	00000141 	andeq	r0, r0, r1, asr #2
    2e68:	3f080104 	svccc	0x00080104
    2e6c:	04000001 	streq	r0, [r0], #-1
    2e70:	01d70502 	bicseq	r0, r7, r2, lsl #10
    2e74:	02040000 	andeq	r0, r4, #0
    2e78:	00008907 	andeq	r8, r0, r7, lsl #18
    2e7c:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
    2e80:	00000080 	andeq	r0, r0, r0, lsl #1
    2e84:	24070404 	strcs	r0, [r7], #-1028	; 0xfffffbfc
    2e88:	04000001 	streq	r0, [r0], #-1
    2e8c:	011f0708 	tsteq	pc, r8, lsl #14
    2e90:	04050000 	streq	r0, [r5], #-0
    2e94:	00860406 	addeq	r0, r6, r6, lsl #8
    2e98:	01040000 	mrseq	r0, (UNDEF: 4)
    2e9c:	00014808 	andeq	r4, r1, r8, lsl #16
    2ea0:	0a700700 	beq	1c04aa8 <_bsl_base_address+0x1a02aa8>
    2ea4:	21030000 	mrscs	r0, (UNDEF: 3)
    2ea8:	00007e09 	andeq	r7, r0, r9, lsl #28
    2eac:	000cc000 	andeq	ip, ip, r0
    2eb0:	00011c00 	andeq	r1, r1, r0, lsl #24
    2eb4:	369c0100 	ldrcc	r0, [ip], r0, lsl #2
    2eb8:	08000001 	stmdaeq	r0, {r0}
    2ebc:	2601006d 	strcs	r0, [r1], -sp, rrx
    2ec0:	00007e0f 	andeq	r7, r0, pc, lsl #28
    2ec4:	09500100 	ldmdbeq	r0, {r8}^
    2ec8:	27010063 	strcs	r0, [r1, -r3, rrx]
    2ecc:	00002506 	andeq	r2, r0, r6, lsl #10
    2ed0:	00107500 	andseq	r7, r0, r0, lsl #10
    2ed4:	00106b00 	andseq	r6, r0, r0, lsl #22
    2ed8:	006e0900 	rsbeq	r0, lr, r0, lsl #18
    2edc:	2c092801 	stccs	8, cr2, [r9], {1}
    2ee0:	cc000000 	stcgt	0, cr0, [r0], {-0}
    2ee4:	ba000010 	blt	2f2c <__data_load__+0x18fc>
    2ee8:	0a000010 	beq	2f30 <__data_load__+0x1900>
    2eec:	2a010073 	bcs	430c0 <__data_load__+0x41a90>
    2ef0:	00008009 	andeq	r8, r0, r9
    2ef4:	00115300 	andseq	r5, r1, r0, lsl #6
    2ef8:	00113d00 	andseq	r3, r1, r0, lsl #26
    2efc:	00690a00 	rsbeq	r0, r9, r0, lsl #20
    2f00:	38102d01 	ldmdacc	r0, {r0, r8, sl, fp, sp}
    2f04:	e0000000 	and	r0, r0, r0
    2f08:	da000011 	ble	2f54 <__data_load__+0x1924>
    2f0c:	0b000011 	bleq	2f58 <__data_load__+0x1928>
    2f10:	00000a77 	andeq	r0, r0, r7, ror sl
    2f14:	70112e01 	andsvc	r2, r1, r1, lsl #28
    2f18:	17000000 	strne	r0, [r0, -r0]
    2f1c:	0f000012 	svceq	0x00000012
    2f20:	0b000012 	bleq	2f70 <__data_load__+0x1940>
    2f24:	00000a38 	andeq	r0, r0, r8, lsr sl
    2f28:	36122f01 	ldrcc	r2, [r2], -r1, lsl #30
    2f2c:	84000001 	strhi	r0, [r0], #-1
    2f30:	6c000012 	stcvs	0, cr0, [r0], {18}
    2f34:	0a000012 	beq	2f84 <__data_load__+0x1954>
    2f38:	30010064 	andcc	r0, r1, r4, rrx
    2f3c:	00003810 	andeq	r3, r0, r0, lsl r8
    2f40:	00132400 	andseq	r2, r3, r0, lsl #8
    2f44:	00131a00 	andseq	r1, r3, r0, lsl #20
    2f48:	04060000 	streq	r0, [r6], #-0
    2f4c:	00000070 	andeq	r0, r0, r0, ror r0
    2f50:	00093e00 	andeq	r3, r9, r0, lsl #28
    2f54:	e8000400 	stmda	r0, {sl}
    2f58:	0400000b 	streq	r0, [r0], #-11
    2f5c:	00016101 	andeq	r6, r1, r1, lsl #2
    2f60:	0a7e0c00 	beq	1f85f68 <_bsl_base_address+0x1d83f68>
    2f64:	00d60000 	sbcseq	r0, r6, r0
    2f68:	0ddc0000 	ldcleq	0, cr0, [ip]
    2f6c:	00080000 	andeq	r0, r8, r0
    2f70:	11980000 	orrsne	r0, r8, r0
    2f74:	04020000 	streq	r0, [r2], #-0
    2f78:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    2f7c:	07040300 	streq	r0, [r4, -r0, lsl #6]
    2f80:	00000129 	andeq	r0, r0, r9, lsr #2
    2f84:	7b050803 	blvc	144f98 <__data_load__+0x143968>
    2f88:	03000000 	movweq	r0, #0
    2f8c:	01cb0408 	biceq	r0, fp, r8, lsl #8
    2f90:	9d040000 	stcls	0, cr0, [r4, #-0]
    2f94:	02000003 	andeq	r0, r0, #3
    2f98:	2c17015e 	ldfcss	f0, [r7], {94}	; 0x5e
    2f9c:	03000000 	movweq	r0, #0
    2fa0:	01410601 	cmpeq	r1, r1, lsl #12
    2fa4:	01030000 	mrseq	r0, (UNDEF: 3)
    2fa8:	00013f08 	andeq	r3, r1, r8, lsl #30
    2fac:	05020300 	streq	r0, [r2, #-768]	; 0xfffffd00
    2fb0:	000001d7 	ldrdeq	r0, [r0], -r7
    2fb4:	89070203 	stmdbhi	r7, {r0, r1, r9}
    2fb8:	03000000 	movweq	r0, #0
    2fbc:	00800504 	addeq	r0, r0, r4, lsl #10
    2fc0:	04030000 	streq	r0, [r3], #-0
    2fc4:	00012407 	andeq	r2, r1, r7, lsl #8
    2fc8:	07080300 	streq	r0, [r8, -r0, lsl #6]
    2fcc:	0000011f 	andeq	r0, r0, pc, lsl r1
    2fd0:	0003d805 	andeq	sp, r3, r5, lsl #16
    2fd4:	0e2e0300 	cdpeq	3, 2, cr0, cr14, cr0, {0}
    2fd8:	0000006a 	andeq	r0, r0, sl, rrx
    2fdc:	0004c505 	andeq	ip, r4, r5, lsl #10
    2fe0:	0e740300 	cdpeq	3, 7, cr0, cr4, cr0, {0}
    2fe4:	0000006a 	andeq	r0, r0, sl, rrx
    2fe8:	a5030406 	strge	r0, [r3, #-1030]	; 0xfffffbfa
    2fec:	0000b903 	andeq	fp, r0, r3, lsl #18
    2ff0:	03970700 	orrseq	r0, r7, #0, 14
    2ff4:	a7030000 	strge	r0, [r3, -r0]
    2ff8:	0000410c 	andeq	r4, r0, ip, lsl #2
    2ffc:	03490700 	movteq	r0, #38656	; 0x9700
    3000:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
    3004:	0000b913 	andeq	fp, r0, r3, lsl r9
    3008:	55080000 	strpl	r0, [r8, #-0]
    300c:	c9000000 	stmdbgt	r0, {}	; <UNPREDICTABLE>
    3010:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    3014:	0000002c 	andeq	r0, r0, ip, lsr #32
    3018:	080a0003 	stmdaeq	sl, {r0, r1}
    301c:	ed09a203 	sfm	f2, 1, [r9, #-12]
    3020:	0b000000 	bleq	3028 <__data_load__+0x19f8>
    3024:	000004af 	andeq	r0, r0, pc, lsr #9
    3028:	2507a403 	strcs	sl, [r7, #-1027]	; 0xfffffbfd
    302c:	00000000 	andeq	r0, r0, r0
    3030:	0004b70b 	andeq	fp, r4, fp, lsl #14
    3034:	05a90300 	streq	r0, [r9, #768]!	; 0x300
    3038:	00000097 	muleq	r0, r7, r0
    303c:	38050004 	stmdacc	r5, {r2}
    3040:	03000004 	movweq	r0, #4
    3044:	00c903aa 	sbceq	r0, r9, sl, lsr #7
    3048:	040c0000 	streq	r0, [ip], #-0
    304c:	0004f705 	andeq	pc, r4, r5, lsl #14
    3050:	19160400 	ldmdbne	r6, {sl}
    3054:	00000071 	andeq	r0, r0, r1, ror r0
    3058:	0003fa05 	andeq	pc, r3, r5, lsl #20
    305c:	0d0c0500 	cfstr32eq	mvfx0, [ip, #-0]
    3060:	00000025 	andeq	r0, r0, r5, lsr #32
    3064:	00030c05 	andeq	r0, r3, r5, lsl #24
    3068:	1b230400 	blne	8c4070 <_bsl_base_address+0x6c2070>
    306c:	00000107 	andeq	r0, r0, r7, lsl #2
    3070:	00031d0d 	andeq	r1, r3, sp, lsl #26
    3074:	34041800 	strcc	r1, [r4], #-2048	; 0xfffff800
    3078:	00017908 	andeq	r7, r1, r8, lsl #18
    307c:	04590b00 	ldrbeq	r0, [r9], #-2816	; 0xfffff500
    3080:	36040000 	strcc	r0, [r4], -r0
    3084:	00017913 	andeq	r7, r1, r3, lsl r9
    3088:	5f0e0000 	svcpl	0x000e0000
    308c:	3704006b 	strcc	r0, [r4, -fp, rrx]
    3090:	00002507 	andeq	r2, r0, r7, lsl #10
    3094:	a10b0400 	tstge	fp, r0, lsl #8
    3098:	04000004 	streq	r0, [r0], #-4
    309c:	00250b37 	eoreq	r0, r5, r7, lsr fp
    30a0:	0b080000 	bleq	2030a8 <_bsl_base_address+0x10a8>
    30a4:	00000306 	andeq	r0, r0, r6, lsl #6
    30a8:	25143704 	ldrcs	r3, [r4, #-1796]	; 0xfffff8fc
    30ac:	0c000000 	stceq	0, cr0, [r0], {-0}
    30b0:	0005310b 	andeq	r3, r5, fp, lsl #2
    30b4:	1b370400 	blne	dc40bc <_bsl_base_address+0xbc20bc>
    30b8:	00000025 	andeq	r0, r0, r5, lsr #32
    30bc:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    30c0:	0b380400 	bleq	e040c8 <_bsl_base_address+0xc020c8>
    30c4:	0000017f 	andeq	r0, r0, pc, ror r1
    30c8:	040f0014 	streq	r0, [pc], #-20	; 30d0 <__data_load__+0x1aa0>
    30cc:	0000011f 	andeq	r0, r0, pc, lsl r1
    30d0:	0000fb08 	andeq	pc, r0, r8, lsl #22
    30d4:	00018f00 	andeq	r8, r1, r0, lsl #30
    30d8:	002c0900 	eoreq	r0, ip, r0, lsl #18
    30dc:	00000000 	andeq	r0, r0, r0
    30e0:	0003440d 	andeq	r4, r3, sp, lsl #8
    30e4:	3c042400 	cfstrscc	mvf2, [r4], {-0}
    30e8:	00021208 	andeq	r1, r2, r8, lsl #4
    30ec:	02690b00 	rsbeq	r0, r9, #0, 22
    30f0:	3e040000 	cdpcc	0, 0, cr0, cr4, cr0, {0}
    30f4:	00002509 	andeq	r2, r0, r9, lsl #10
    30f8:	cd0b0000 	stcgt	0, cr0, [fp, #-0]
    30fc:	04000004 	streq	r0, [r0], #-4
    3100:	0025093f 	eoreq	r0, r5, pc, lsr r9
    3104:	0b040000 	bleq	10310c <__data_load__+0x101adc>
    3108:	0000027e 	andeq	r0, r0, lr, ror r2
    310c:	25094004 	strcs	r4, [r9, #-4]
    3110:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    3114:	0005cd0b 	andeq	ip, r5, fp, lsl #26
    3118:	09410400 	stmdbeq	r1, {sl}^
    311c:	00000025 	andeq	r0, r0, r5, lsr #32
    3120:	03c40b0c 	biceq	r0, r4, #12, 22	; 0x3000
    3124:	42040000 	andmi	r0, r4, #0
    3128:	00002509 	andeq	r2, r0, r9, lsl #10
    312c:	b30b1000 	movwlt	r1, #45056	; 0xb000
    3130:	04000003 	streq	r0, [r0], #-3
    3134:	00250943 	eoreq	r0, r5, r3, asr #18
    3138:	0b140000 	bleq	503140 <_bsl_base_address+0x301140>
    313c:	00000536 	andeq	r0, r0, r6, lsr r5
    3140:	25094404 	strcs	r4, [r9, #-1028]	; 0xfffffbfc
    3144:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    3148:	00041a0b 	andeq	r1, r4, fp, lsl #20
    314c:	09450400 	stmdbeq	r5, {sl}^
    3150:	00000025 	andeq	r0, r0, r5, lsr #32
    3154:	056b0b1c 	strbeq	r0, [fp, #-2844]!	; 0xfffff4e4
    3158:	46040000 	strmi	r0, [r4], -r0
    315c:	00002509 	andeq	r2, r0, r9, lsl #10
    3160:	10002000 	andne	r2, r0, r0
    3164:	0000028d 	andeq	r0, r0, sp, lsl #5
    3168:	4f040108 	svcmi	0x00040108
    316c:	00025708 	andeq	r5, r2, r8, lsl #14
    3170:	02f90b00 	rscseq	r0, r9, #0, 22
    3174:	50040000 	andpl	r0, r4, r0
    3178:	0002570a 	andeq	r5, r2, sl, lsl #14
    317c:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
    3180:	04000001 	streq	r0, [r0], #-1
    3184:	02570951 	subseq	r0, r7, #1327104	; 0x144000
    3188:	11800000 	orrne	r0, r0, r0
    318c:	000004e9 	andeq	r0, r0, r9, ror #9
    3190:	fb0a5304 	blx	297daa <_bsl_base_address+0x95daa>
    3194:	00000000 	andeq	r0, r0, r0
    3198:	02b21101 	adcseq	r1, r2, #1073741824	; 0x40000000
    319c:	56040000 	strpl	r0, [r4], -r0
    31a0:	0000fb0a 	andeq	pc, r0, sl, lsl #22
    31a4:	00010400 	andeq	r0, r1, r0, lsl #8
    31a8:	0000f908 	andeq	pc, r0, r8, lsl #18
    31ac:	00026700 	andeq	r6, r2, r0, lsl #14
    31b0:	002c0900 	eoreq	r0, ip, r0, lsl #18
    31b4:	001f0000 	andseq	r0, pc, r0
    31b8:	0001e510 	andeq	lr, r1, r0, lsl r5
    31bc:	04019000 	streq	r9, [r1], #-0
    31c0:	02aa0862 	adceq	r0, sl, #6422528	; 0x620000
    31c4:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
    31c8:	04000004 	streq	r0, [r0], #-4
    31cc:	02aa1263 	adceq	r1, sl, #805306374	; 0x30000006
    31d0:	0b000000 	bleq	31d8 <__data_load__+0x1ba8>
    31d4:	00000471 	andeq	r0, r0, r1, ror r4
    31d8:	25066404 	strcs	r6, [r6, #-1028]	; 0xfffffbfc
    31dc:	04000000 	streq	r0, [r0], #-0
    31e0:	0003010b 	andeq	r0, r3, fp, lsl #2
    31e4:	09660400 	stmdbeq	r6!, {sl}^
    31e8:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
    31ec:	028d0b08 	addeq	r0, sp, #8, 22	; 0x2000
    31f0:	67040000 	strvs	r0, [r4, -r0]
    31f4:	0002121e 	andeq	r1, r2, lr, lsl r2
    31f8:	0f008800 	svceq	0x00008800
    31fc:	00026704 	andeq	r6, r2, r4, lsl #14
    3200:	02c00800 	sbceq	r0, r0, #0, 16
    3204:	02c00000 	sbceq	r0, r0, #0
    3208:	2c090000 	stccs	0, cr0, [r9], {-0}
    320c:	1f000000 	svcne	0x00000000
    3210:	c6040f00 	strgt	r0, [r4], -r0, lsl #30
    3214:	12000002 	andne	r0, r0, #2
    3218:	0004240d 	andeq	r2, r4, sp, lsl #8
    321c:	7a040800 	bvc	105224 <__data_load__+0x103bf4>
    3220:	0002ef08 	andeq	lr, r2, r8, lsl #30
    3224:	09d70b00 	ldmibeq	r7, {r8, r9, fp}^
    3228:	7b040000 	blvc	103230 <__data_load__+0x101c00>
    322c:	0002ef11 	andeq	lr, r2, r1, lsl pc
    3230:	a30b0000 	movwge	r0, #45056	; 0xb000
    3234:	04000008 	streq	r0, [r0], #-8
    3238:	0025067c 	eoreq	r0, r5, ip, ror r6
    323c:	00040000 	andeq	r0, r4, r0
    3240:	0055040f 	subseq	r0, r5, pc, lsl #8
    3244:	430d0000 	movwmi	r0, #53248	; 0xd000
    3248:	68000004 	stmdavs	r0, {r2}
    324c:	3808ba04 	stmdacc	r8, {r2, r9, fp, ip, sp, pc}
    3250:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    3254:	0400705f 	streq	r7, [r0], #-95	; 0xffffffa1
    3258:	02ef12bb 	rsceq	r1, pc, #-1342177269	; 0xb000000b
    325c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    3260:	0400725f 	streq	r7, [r0], #-607	; 0xfffffda1
    3264:	002507bc 	strhteq	r0, [r5], -ip
    3268:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    326c:	0400775f 	streq	r7, [r0], #-1887	; 0xfffff8a1
    3270:	002507bd 	strhteq	r0, [r5], -sp
    3274:	0b080000 	bleq	20327c <_bsl_base_address+0x127c>
    3278:	000002ab 	andeq	r0, r0, fp, lsr #5
    327c:	5c09be04 	stcpl	14, cr11, [r9], {4}
    3280:	0c000000 	stceq	0, cr0, [r0], {-0}
    3284:	0003600b 	andeq	r6, r3, fp
    3288:	09bf0400 	ldmibeq	pc!, {sl}	; <UNPREDICTABLE>
    328c:	0000005c 	andeq	r0, r0, ip, asr r0
    3290:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    3294:	c0040066 	andgt	r0, r4, r6, rrx
    3298:	0002c711 	andeq	ip, r2, r1, lsl r7
    329c:	380b1000 	stmdacc	fp, {ip}
    32a0:	04000002 	streq	r0, [r0], #-2
    32a4:	002507c1 	eoreq	r0, r5, r1, asr #15
    32a8:	0b180000 	bleq	6032b0 <_bsl_base_address+0x4012b0>
    32ac:	0000029b 	muleq	r0, fp, r2
    32b0:	f90ac804 			; <UNDEFINED> instruction: 0xf90ac804
    32b4:	1c000000 	stcne	0, cr0, [r0], {-0}
    32b8:	0003340b 	andeq	r3, r3, fp, lsl #8
    32bc:	1dca0400 	cfstrdne	mvd0, [sl]
    32c0:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    32c4:	03ac0b20 			; <UNDEFINED> instruction: 0x03ac0b20
    32c8:	cc040000 	stcgt	0, cr0, [r4], {-0}
    32cc:	0005e11d 	andeq	lr, r5, sp, lsl r1
    32d0:	bf0b2400 	svclt	0x000b2400
    32d4:	04000004 	streq	r0, [r0], #-4
    32d8:	06050dcf 	streq	r0, [r5], -pc, asr #27
    32dc:	0b280000 	bleq	a032e4 <_bsl_base_address+0x8012e4>
    32e0:	00000585 	andeq	r0, r0, r5, lsl #11
    32e4:	1f09d004 	svcne	0x0009d004
    32e8:	2c000006 	stccs	0, cr0, [r0], {6}
    32ec:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    32f0:	11d30400 	bicsne	r0, r3, r0, lsl #8
    32f4:	000002c7 	andeq	r0, r0, r7, asr #5
    32f8:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 24d0 <__data_load__+0xea0>
    32fc:	d4040070 	strle	r0, [r4], #-112	; 0xffffff90
    3300:	0002ef12 	andeq	lr, r2, r2, lsl pc
    3304:	5f0e3800 	svcpl	0x000e3800
    3308:	04007275 	streq	r7, [r0], #-629	; 0xfffffd8b
    330c:	002507d5 	ldrdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    3310:	0b3c0000 	bleq	f03318 <_bsl_base_address+0xd01318>
    3314:	00000278 	andeq	r0, r0, r8, ror r2
    3318:	2511d804 	ldrcs	sp, [r1, #-2052]	; 0xfffff7fc
    331c:	40000006 	andmi	r0, r0, r6
    3320:	00055d0b 	andeq	r5, r5, fp, lsl #26
    3324:	11d90400 	bicsne	r0, r9, r0, lsl #8
    3328:	00000635 	andeq	r0, r0, r5, lsr r6
    332c:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    3330:	dc040062 	stcle	0, cr0, [r4], {98}	; 0x62
    3334:	0002c711 	andeq	ip, r2, r1, lsl r7
    3338:	c10b4400 	tstgt	fp, r0, lsl #8
    333c:	04000002 	streq	r0, [r0], #-2
    3340:	002507df 	ldrdeq	r0, [r5], -pc	; <UNPREDICTABLE>
    3344:	0b4c0000 	bleq	130334c <_bsl_base_address+0x110134c>
    3348:	000002d2 	ldrdeq	r0, [r0], -r2
    334c:	7f0ae004 	svcvc	0x000ae004
    3350:	50000000 	andpl	r0, r0, r0
    3354:	0006d00b 	andeq	sp, r6, fp
    3358:	12e30400 	rscne	r0, r3, #0, 8
    335c:	00000456 	andeq	r0, r0, r6, asr r4
    3360:	08780b54 	ldmdaeq	r8!, {r2, r4, r6, r8, r9, fp}^
    3364:	e7040000 	str	r0, [r4, -r0]
    3368:	0001130c 	andeq	r1, r1, ip, lsl #6
    336c:	4b0b5800 	blmi	2d9374 <_bsl_base_address+0xd7374>
    3370:	04000004 	streq	r0, [r0], #-4
    3374:	00ed0ee9 	rsceq	r0, sp, r9, ror #29
    3378:	0b5c0000 	bleq	1703380 <_bsl_base_address+0x1501380>
    337c:	000003a4 	andeq	r0, r0, r4, lsr #7
    3380:	2509ea04 	strcs	lr, [r9, #-2564]	; 0xfffff5fc
    3384:	64000000 	strvs	r0, [r0], #-0
    3388:	00251300 	eoreq	r1, r5, r0, lsl #6
    338c:	04560000 	ldrbeq	r0, [r6], #-0
    3390:	56140000 	ldrpl	r0, [r4], -r0
    3394:	14000004 	strne	r0, [r0], #-4
    3398:	000000f9 	strdeq	r0, [r0], -r9
    339c:	0005a514 	andeq	sl, r5, r4, lsl r5
    33a0:	00251400 	eoreq	r1, r5, r0, lsl #8
    33a4:	0f000000 	svceq	0x00000000
    33a8:	00045c04 	andeq	r5, r4, r4, lsl #24
    33ac:	0be01500 	bleq	ff8087b4 <__stack+0xdf807edc>
    33b0:	04280000 	strteq	r0, [r8], #-0
    33b4:	08026504 	stmdaeq	r2, {r2, r8, sl, sp, lr}
    33b8:	000005a5 	andeq	r0, r0, r5, lsr #11
    33bc:	00041316 	andeq	r1, r4, r6, lsl r3
    33c0:	02670400 	rsbeq	r0, r7, #0, 8
    33c4:	00002507 	andeq	r2, r0, r7, lsl #10
    33c8:	ba160000 	blt	5833d0 <_bsl_base_address+0x3813d0>
    33cc:	04000002 	streq	r0, [r0], #-2
    33d0:	910b026c 	tstls	fp, ip, ror #4
    33d4:	04000006 	streq	r0, [r0], #-6
    33d8:	00035016 	andeq	r5, r3, r6, lsl r0
    33dc:	026c0400 	rsbeq	r0, ip, #0, 8
    33e0:	00069114 	andeq	r9, r6, r4, lsl r1
    33e4:	15160800 	ldrne	r0, [r6, #-2048]	; 0xfffff800
    33e8:	04000003 	streq	r0, [r0], #-3
    33ec:	911e026c 	tstls	lr, ip, ror #4
    33f0:	0c000006 	stceq	0, cr0, [r0], {6}
    33f4:	00046c16 	andeq	r6, r4, r6, lsl ip
    33f8:	026e0400 	rsbeq	r0, lr, #0, 8
    33fc:	00002508 	andeq	r2, r0, r8, lsl #10
    3400:	0d161000 	ldceq	0, cr1, [r6, #-0]
    3404:	04000002 	streq	r0, [r0], #-2
    3408:	9108026f 	tstls	r8, pc, ror #4
    340c:	14000008 	strne	r0, [r0], #-8
    3410:	00048816 	andeq	r8, r4, r6, lsl r8
    3414:	02720400 	rsbseq	r0, r2, #0, 8
    3418:	00002507 	andeq	r2, r0, r7, lsl #10
    341c:	76163000 	ldrvc	r3, [r6], -r0
    3420:	04000004 	streq	r0, [r0], #-4
    3424:	a6160273 			; <UNDEFINED> instruction: 0xa6160273
    3428:	34000008 	strcc	r0, [r0], #-8
    342c:	0003cd16 	andeq	ip, r3, r6, lsl sp
    3430:	02750400 	rsbseq	r0, r5, #0, 8
    3434:	00002507 	andeq	r2, r0, r7, lsl #10
    3438:	7e163800 	cdpvc	8, 1, cr3, cr6, cr0, {0}
    343c:	04000004 	streq	r0, [r0], #-4
    3440:	b70a0277 	smlsdxlt	sl, r7, r2, r0
    3444:	3c000008 	stccc	0, cr0, [r0], {8}
    3448:	00038f16 	andeq	r8, r3, r6, lsl pc
    344c:	027a0400 	rsbseq	r0, sl, #0, 8
    3450:	00017913 	andeq	r7, r1, r3, lsl r9
    3454:	3a164000 	bcc	59345c <_bsl_base_address+0x39145c>
    3458:	04000003 	streq	r0, [r0], #-3
    345c:	2507027b 	strcs	r0, [r7, #-635]	; 0xfffffd85
    3460:	44000000 	strmi	r0, [r0], #-0
    3464:	0005c816 	andeq	ip, r5, r6, lsl r8
    3468:	027c0400 	rsbseq	r0, ip, #0, 8
    346c:	00017913 	andeq	r7, r1, r3, lsl r9
    3470:	f0164800 			; <UNDEFINED> instruction: 0xf0164800
    3474:	04000003 	streq	r0, [r0], #-3
    3478:	bd14027d 	lfmlt	f0, 4, [r4, #-500]	; 0xfffffe0c
    347c:	4c000008 	stcmi	0, cr0, [r0], {8}
    3480:	00035816 	andeq	r5, r3, r6, lsl r8
    3484:	02800400 	addeq	r0, r0, #0, 8
    3488:	00002507 	andeq	r2, r0, r7, lsl #10
    348c:	ca165000 	bgt	597494 <_bsl_base_address+0x395494>
    3490:	04000002 	streq	r0, [r0], #-2
    3494:	a5090281 	strge	r0, [r9, #-641]	; 0xfffffd7f
    3498:	54000005 	strpl	r0, [r0], #-5
    349c:	00040c16 	andeq	r0, r4, r6, lsl ip
    34a0:	02a40400 	adceq	r0, r4, #0, 8
    34a4:	00086c07 	andeq	r6, r8, r7, lsl #24
    34a8:	e5175800 	ldr	r5, [r7, #-2048]	; 0xfffff800
    34ac:	04000001 	streq	r0, [r0], #-1
    34b0:	aa1302a8 	bge	4c3f58 <_bsl_base_address+0x2c1f58>
    34b4:	48000002 	stmdami	r0, {r1}
    34b8:	036d1701 	cmneq	sp, #262144	; 0x40000
    34bc:	a9040000 	stmdbge	r4, {}	; <UNPREDICTABLE>
    34c0:	02671202 	rsbeq	r1, r7, #536870912	; 0x20000000
    34c4:	014c0000 	mrseq	r0, (UNDEF: 76)
    34c8:	00055317 	andeq	r5, r5, r7, lsl r3
    34cc:	02ad0400 	adceq	r0, sp, #0, 8
    34d0:	0008ce0c 	andeq	ip, r8, ip, lsl #28
    34d4:	1702dc00 	strne	sp, [r2, -r0, lsl #24]
    34d8:	000002a3 	andeq	r0, r0, r3, lsr #5
    34dc:	1002b204 	andne	fp, r2, r4, lsl #4
    34e0:	00000652 	andeq	r0, r0, r2, asr r6
    34e4:	881702e0 	ldmdahi	r7, {r5, r6, r7, r9}
    34e8:	04000002 	streq	r0, [r0], #-2
    34ec:	da0a02b4 	ble	283fc4 <_bsl_base_address+0x81fc4>
    34f0:	ec000008 	stc	0, cr0, [r0], {8}
    34f4:	040f0002 	streq	r0, [pc], #-2	; 34fc <__data_load__+0x1ecc>
    34f8:	000005ab 	andeq	r0, r0, fp, lsr #11
    34fc:	48080103 	stmdami	r8, {r0, r1, r8}
    3500:	18000001 	stmdane	r0, {r0}
    3504:	000005ab 	andeq	r0, r0, fp, lsr #11
    3508:	0438040f 	ldrteq	r0, [r8], #-1039	; 0xfffffbf1
    350c:	25130000 	ldrcs	r0, [r3, #-0]
    3510:	db000000 	blle	3518 <__data_load__+0x1ee8>
    3514:	14000005 	strne	r0, [r0], #-5
    3518:	00000456 	andeq	r0, r0, r6, asr r4
    351c:	0000f914 	andeq	pc, r0, r4, lsl r9	; <UNPREDICTABLE>
    3520:	05db1400 	ldrbeq	r1, [fp, #1024]	; 0x400
    3524:	25140000 	ldrcs	r0, [r4, #-0]
    3528:	00000000 	andeq	r0, r0, r0
    352c:	05b2040f 	ldreq	r0, [r2, #1039]!	; 0x40f
    3530:	040f0000 	streq	r0, [pc], #-0	; 3538 <__data_load__+0x1f08>
    3534:	000005bd 			; <UNDEFINED> instruction: 0x000005bd
    3538:	00008b13 	andeq	r8, r0, r3, lsl fp
    353c:	00060500 	andeq	r0, r6, r0, lsl #10
    3540:	04561400 	ldrbeq	r1, [r6], #-1024	; 0xfffffc00
    3544:	f9140000 			; <UNDEFINED> instruction: 0xf9140000
    3548:	14000000 	strne	r0, [r0], #-0
    354c:	0000008b 	andeq	r0, r0, fp, lsl #1
    3550:	00002514 	andeq	r2, r0, r4, lsl r5
    3554:	040f0000 	streq	r0, [pc], #-0	; 355c <__data_load__+0x1f2c>
    3558:	000005e7 	andeq	r0, r0, r7, ror #11
    355c:	00002513 	andeq	r2, r0, r3, lsl r5
    3560:	00061f00 	andeq	r1, r6, r0, lsl #30
    3564:	04561400 	ldrbeq	r1, [r6], #-1024	; 0xfffffc00
    3568:	f9140000 			; <UNDEFINED> instruction: 0xf9140000
    356c:	00000000 	andeq	r0, r0, r0
    3570:	060b040f 	streq	r0, [fp], -pc, lsl #8
    3574:	55080000 	strpl	r0, [r8, #-0]
    3578:	35000000 	strcc	r0, [r0, #-0]
    357c:	09000006 	stmdbeq	r0, {r1, r2}
    3580:	0000002c 	andeq	r0, r0, ip, lsr #32
    3584:	55080002 	strpl	r0, [r8, #-2]
    3588:	45000000 	strmi	r0, [r0, #-0]
    358c:	09000006 	stmdbeq	r0, {r1, r2}
    3590:	0000002c 	andeq	r0, r0, ip, lsr #32
    3594:	31040000 	mrscc	r0, (UNDEF: 4)
    3598:	04000004 	streq	r0, [r0], #-4
    359c:	f51a0124 			; <UNDEFINED> instruction: 0xf51a0124
    35a0:	19000002 	stmdbne	r0, {r1}
    35a4:	00000c1f 	andeq	r0, r0, pc, lsl ip
    35a8:	0128040c 			; <UNDEFINED> instruction: 0x0128040c
    35ac:	00068b08 	andeq	r8, r6, r8, lsl #22
    35b0:	04591600 	ldrbeq	r1, [r9], #-1536	; 0xfffffa00
    35b4:	2a040000 	bcs	1035bc <__data_load__+0x101f8c>
    35b8:	068b1101 	streq	r1, [fp], r1, lsl #2
    35bc:	16000000 	strne	r0, [r0], -r0
    35c0:	00000366 	andeq	r0, r0, r6, ror #6
    35c4:	07012b04 	streq	r2, [r1, -r4, lsl #22]
    35c8:	00000025 	andeq	r0, r0, r5, lsr #32
    35cc:	042b1604 	strteq	r1, [fp], #-1540	; 0xfffff9fc
    35d0:	2c040000 	stccs	0, cr0, [r4], {-0}
    35d4:	06910b01 	ldreq	r0, [r1], r1, lsl #22
    35d8:	00080000 	andeq	r0, r8, r0
    35dc:	0652040f 	ldrbeq	r0, [r2], -pc, lsl #8
    35e0:	040f0000 	streq	r0, [pc], #-0	; 35e8 <__data_load__+0x1fb8>
    35e4:	00000645 	andeq	r0, r0, r5, asr #12
    35e8:	00020519 	andeq	r0, r2, r9, lsl r5
    35ec:	44040e00 	strmi	r0, [r4], #-3584	; 0xfffff200
    35f0:	06d00801 	ldrbeq	r0, [r0], r1, lsl #16
    35f4:	a9160000 	ldmdbge	r6, {}	; <UNPREDICTABLE>
    35f8:	04000004 	streq	r0, [r0], #-4
    35fc:	d0120145 	andsle	r0, r2, r5, asr #2
    3600:	00000006 	andeq	r0, r0, r6
    3604:	0004d616 	andeq	sp, r4, r6, lsl r6
    3608:	01460400 	cmpeq	r6, r0, lsl #8
    360c:	0006d012 	andeq	sp, r6, r2, lsl r0
    3610:	f2160600 	vmax.s16	d0, d6, d0
    3614:	04000004 	streq	r0, [r0], #-4
    3618:	63120147 	tstvs	r2, #-1073741807	; 0xc0000011
    361c:	0c000000 	stceq	0, cr0, [r0], {-0}
    3620:	00630800 	rsbeq	r0, r3, r0, lsl #16
    3624:	06e00000 	strbteq	r0, [r0], r0
    3628:	2c090000 	stccs	0, cr0, [r9], {-0}
    362c:	02000000 	andeq	r0, r0, #0
    3630:	04d01a00 	ldrbeq	r1, [r0], #2560	; 0xa00
    3634:	f5070285 			; <UNDEFINED> instruction: 0xf5070285
    3638:	16000007 	strne	r0, [r0], -r7
    363c:	00000524 	andeq	r0, r0, r4, lsr #10
    3640:	18028704 	stmdane	r2, {r2, r8, r9, sl, pc}
    3644:	0000002c 	andeq	r0, r0, ip, lsr #32
    3648:	04dc1600 	ldrbeq	r1, [ip], #1536	; 0x600
    364c:	88040000 	stmdahi	r4, {}	; <UNPREDICTABLE>
    3650:	05a51202 	streq	r1, [r5, #514]!	; 0x202
    3654:	16040000 	strne	r0, [r4], -r0
    3658:	00000382 	andeq	r0, r0, r2, lsl #7
    365c:	10028904 	andne	r8, r2, r4, lsl #18
    3660:	000007f5 	strdeq	r0, [r0], -r5
    3664:	05761608 	ldrbeq	r1, [r6, #-1544]!	; 0xfffff9f8
    3668:	8a040000 	bhi	103670 <__data_load__+0x102040>
    366c:	018f1702 	orreq	r1, pc, r2, lsl #14
    3670:	16240000 	strtne	r0, [r4], -r0
    3674:	00000325 	andeq	r0, r0, r5, lsr #6
    3678:	0f028b04 	svceq	0x00028b04
    367c:	00000025 	andeq	r0, r0, r5, lsr #32
    3680:	04541648 	ldrbeq	r1, [r4], #-1608	; 0xfffff9b8
    3684:	8c040000 	stchi	0, cr0, [r4], {-0}
    3688:	00782c02 	rsbseq	r2, r8, r2, lsl #24
    368c:	16500000 	ldrbne	r0, [r0], -r0
    3690:	0000058c 	andeq	r0, r0, ip, lsl #11
    3694:	1a028d04 	bne	a6aac <__data_load__+0xa547c>
    3698:	00000697 	muleq	r0, r7, r6
    369c:	045f1658 	ldrbeq	r1, [pc], #-1624	; 36a4 <__data_load__+0x2074>
    36a0:	8e040000 	cdphi	0, 0, cr0, cr4, cr0, {0}
    36a4:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    36a8:	16680000 	strbtne	r0, [r8], -r0
    36ac:	000005ba 			; <UNDEFINED> instruction: 0x000005ba
    36b0:	16028f04 	strne	r8, [r2], -r4, lsl #30
    36b4:	000000ed 	andeq	r0, r0, sp, ror #1
    36b8:	025b1670 	subseq	r1, fp, #112, 12	; 0x7000000
    36bc:	90040000 	andls	r0, r4, r0
    36c0:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    36c4:	16780000 	ldrbtne	r0, [r8], -r0
    36c8:	00000549 	andeq	r0, r0, r9, asr #10
    36cc:	10029104 	andne	r9, r2, r4, lsl #2
    36d0:	00000805 	andeq	r0, r0, r5, lsl #16
    36d4:	03761680 	cmneq	r6, #128, 12	; 0x8000000
    36d8:	92040000 	andls	r0, r4, #0
    36dc:	08151002 	ldmdaeq	r5, {r1, ip}
    36e0:	16880000 	strne	r0, [r8], r0
    36e4:	000004ff 	strdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    36e8:	0f029304 	svceq	0x00029304
    36ec:	00000025 	andeq	r0, r0, r5, lsr #32
    36f0:	02eb16a0 	rsceq	r1, fp, #160, 12	; 0xa000000
    36f4:	94040000 	strls	r0, [r4], #-0
    36f8:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    36fc:	16a40000 	strtne	r0, [r4], r0
    3700:	0000024c 	andeq	r0, r0, ip, asr #4
    3704:	16029504 	strne	r9, [r2], -r4, lsl #10
    3708:	000000ed 	andeq	r0, r0, sp, ror #1
    370c:	02da16ac 	sbcseq	r1, sl, #172, 12	; 0xac00000
    3710:	96040000 	strls	r0, [r4], -r0
    3714:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    3718:	16b40000 	ldrtne	r0, [r4], r0
    371c:	00000218 	andeq	r0, r0, r8, lsl r2
    3720:	16029704 	strne	r9, [r2], -r4, lsl #14
    3724:	000000ed 	andeq	r0, r0, sp, ror #1
    3728:	022716bc 	eoreq	r1, r7, #188, 12	; 0xbc00000
    372c:	98040000 	stmdals	r4, {}	; <UNPREDICTABLE>
    3730:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    3734:	16c40000 	strbne	r0, [r4], r0
    3738:	00000411 	andeq	r0, r0, r1, lsl r4
    373c:	08029904 	stmdaeq	r2, {r2, r8, fp, ip, pc}
    3740:	00000025 	andeq	r0, r0, r5, lsr #32
    3744:	ab0800cc 	blge	203a7c <_bsl_base_address+0x1a7c>
    3748:	05000005 	streq	r0, [r0, #-5]
    374c:	09000008 	stmdbeq	r0, {r3}
    3750:	0000002c 	andeq	r0, r0, ip, lsr #32
    3754:	ab080019 	blge	2037c0 <_bsl_base_address+0x17c0>
    3758:	15000005 	strne	r0, [r0, #-5]
    375c:	09000008 	stmdbeq	r0, {r3}
    3760:	0000002c 	andeq	r0, r0, ip, lsr #32
    3764:	ab080007 	blge	203788 <_bsl_base_address+0x1788>
    3768:	25000005 	strcs	r0, [r0, #-5]
    376c:	09000008 	stmdbeq	r0, {r3}
    3770:	0000002c 	andeq	r0, r0, ip, lsr #32
    3774:	f01a0017 			; <UNDEFINED> instruction: 0xf01a0017
    3778:	07029e04 	streq	r9, [r2, -r4, lsl #28]
    377c:	0000084c 	andeq	r0, r0, ip, asr #16
    3780:	0003bd16 	andeq	fp, r3, r6, lsl sp
    3784:	02a10400 	adceq	r0, r1, #0, 8
    3788:	00084c1b 	andeq	r4, r8, fp, lsl ip
    378c:	40160000 	andsmi	r0, r6, r0
    3790:	04000005 	streq	r0, [r0], #-5
    3794:	5c1802a2 	lfmpl	f0, 4, [r8], {162}	; 0xa2
    3798:	78000008 	stmdavc	r0, {r3}
    379c:	02ef0800 	rsceq	r0, pc, #0, 16
    37a0:	085c0000 	ldmdaeq	ip, {}^	; <UNPREDICTABLE>
    37a4:	2c090000 	stccs	0, cr0, [r9], {-0}
    37a8:	1d000000 	stcne	0, cr0, [r0, #-0]
    37ac:	002c0800 	eoreq	r0, ip, r0, lsl #16
    37b0:	086c0000 	stmdaeq	ip!, {}^	; <UNPREDICTABLE>
    37b4:	2c090000 	stccs	0, cr0, [r9], {-0}
    37b8:	1d000000 	stcne	0, cr0, [r0, #-0]
    37bc:	04f01b00 	ldrbteq	r1, [r0], #2816	; 0xb00
    37c0:	91030283 	smlabbls	r3, r3, r2, r0
    37c4:	1c000008 	stcne	0, cr0, [r0], {8}
    37c8:	00000be0 	andeq	r0, r0, r0, ror #23
    37cc:	0b029a04 	bleq	a9fe4 <__data_load__+0xa89b4>
    37d0:	000006e0 	andeq	r0, r0, r0, ror #13
    37d4:	0005631c 	andeq	r6, r5, ip, lsl r3
    37d8:	02a30400 	adceq	r0, r3, #0, 8
    37dc:	0008250b 	andeq	r2, r8, fp, lsl #10
    37e0:	ab080000 	blge	2037e8 <_bsl_base_address+0x17e8>
    37e4:	a1000005 	tstge	r0, r5
    37e8:	09000008 	stmdbeq	r0, {r3}
    37ec:	0000002c 	andeq	r0, r0, ip, lsr #32
    37f0:	411d0018 	tstmi	sp, r8, lsl r0
    37f4:	0f000002 	svceq	0x00000002
    37f8:	0008a104 	andeq	sl, r8, r4, lsl #2
    37fc:	08b71e00 	ldmeq	r7!, {r9, sl, fp, ip}
    3800:	56140000 	ldrpl	r0, [r4], -r0
    3804:	00000004 	andeq	r0, r0, r4
    3808:	08ac040f 	stmiaeq	ip!, {r0, r1, r2, r3, sl}
    380c:	040f0000 	streq	r0, [pc], #-0	; 3814 <__data_load__+0x21e4>
    3810:	00000179 	andeq	r0, r0, r9, ror r1
    3814:	0008ce1e 	andeq	ip, r8, lr, lsl lr
    3818:	00251400 	eoreq	r1, r5, r0, lsl #8
    381c:	0f000000 	svceq	0x00000000
    3820:	0008d404 	andeq	sp, r8, r4, lsl #8
    3824:	c3040f00 	movwgt	r0, #20224	; 0x4f00
    3828:	08000008 	stmdaeq	r0, {r3}
    382c:	00000645 	andeq	r0, r0, r5, asr #12
    3830:	000008ea 	andeq	r0, r0, sl, ror #17
    3834:	00002c09 	andeq	r2, r0, r9, lsl #24
    3838:	1f000200 	svcne	0x00000200
    383c:	00000aa8 	andeq	r0, r0, r8, lsr #21
    3840:	25012401 	strcs	r2, [r1, #-1025]	; 0xfffffbff
    3844:	00000000 	andeq	r0, r0, r0
    3848:	00082620 	andeq	r2, r8, r0, lsr #12
    384c:	0d8a0600 	stceq	6, cr0, [sl]
    3850:	00000910 	andeq	r0, r0, r0, lsl r9
    3854:	72747021 	rsbsvc	r7, r4, #33	; 0x21
    3858:	15320100 	ldrne	r0, [r2, #-256]!	; 0xffffff00
    385c:	00000456 	andeq	r0, r0, r6, asr r4
    3860:	08702200 	ldmdaeq	r0!, {r9, sp}^
    3864:	88060000 	stmdahi	r6, {}	; <UNPREDICTABLE>
    3868:	092a010d 	stmdbeq	sl!, {r0, r2, r3, r8}
    386c:	70210000 	eorvc	r0, r1, r0
    3870:	01007274 	tsteq	r0, r4, ror r2
    3874:	04561529 	ldrbeq	r1, [r6], #-1321	; 0xfffffad7
    3878:	23000000 	movwcs	r0, #0
    387c:	00000910 	andeq	r0, r0, r0, lsl r9
    3880:	00000ddc 	ldrdeq	r0, [r0], -ip
    3884:	00000004 	andeq	r0, r0, r4
    3888:	1d249c01 	stcne	12, cr9, [r4, #-4]!
    388c:	01000009 	tsteq	r0, r9
    3890:	8a000050 	bhi	39d8 <__data_load__+0x23a8>
    3894:	04000009 	streq	r0, [r0], #-9
    3898:	000dd800 	andeq	sp, sp, r0, lsl #16
    389c:	61010400 	tstvs	r1, r0, lsl #8
    38a0:	0c000001 	stceq	0, cr0, [r0], {1}
    38a4:	00000ad0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    38a8:	00000682 	andeq	r0, r0, r2, lsl #13
    38ac:	00000de4 	andeq	r0, r0, r4, ror #27
    38b0:	00000044 	andeq	r0, r0, r4, asr #32
    38b4:	000012cd 	andeq	r1, r0, sp, asr #5
    38b8:	000ac602 	andeq	ip, sl, r2, lsl #12
    38bc:	1a8f0200 	bne	fe3c40c4 <__stack+0xde3c37ec>
    38c0:	00000031 	andeq	r0, r0, r1, lsr r0
    38c4:	69050403 	stmdbvs	r5, {r0, r1, sl}
    38c8:	0400746e 	streq	r7, [r0], #-1134	; 0xfffffb92
    38cc:	01290704 			; <UNDEFINED> instruction: 0x01290704
    38d0:	08040000 	stmdaeq	r4, {}	; <UNPREDICTABLE>
    38d4:	00007b05 	andeq	r7, r0, r5, lsl #22
    38d8:	04080400 	streq	r0, [r8], #-1024	; 0xfffffc00
    38dc:	000001cb 	andeq	r0, r0, fp, asr #3
    38e0:	00039d05 	andeq	r9, r3, r5, lsl #26
    38e4:	015e0200 	cmpeq	lr, r0, lsl #4
    38e8:	00003817 	andeq	r3, r0, r7, lsl r8
    38ec:	06010400 	streq	r0, [r1], -r0, lsl #8
    38f0:	00000141 	andeq	r0, r0, r1, asr #2
    38f4:	3f080104 	svccc	0x00080104
    38f8:	04000001 	streq	r0, [r0], #-1
    38fc:	01d70502 	bicseq	r0, r7, r2, lsl #10
    3900:	02040000 	andeq	r0, r4, #0
    3904:	00008907 	andeq	r8, r0, r7, lsl #18
    3908:	05040400 	streq	r0, [r4, #-1024]	; 0xfffffc00
    390c:	00000080 	andeq	r0, r0, r0, lsl #1
    3910:	24070404 	strcs	r0, [r7], #-1028	; 0xfffffbfc
    3914:	04000001 	streq	r0, [r0], #-1
    3918:	011f0708 	tsteq	pc, r8, lsl #14
    391c:	d8020000 	stmdale	r2, {}	; <UNPREDICTABLE>
    3920:	03000003 	movweq	r0, #3
    3924:	00760e2e 	rsbseq	r0, r6, lr, lsr #28
    3928:	c5020000 	strgt	r0, [r2, #-0]
    392c:	03000004 	movweq	r0, #4
    3930:	00760e74 	rsbseq	r0, r6, r4, ror lr
    3934:	04060000 	streq	r0, [r6], #-0
    3938:	c503a503 	strgt	sl, [r3, #-1283]	; 0xfffffafd
    393c:	07000000 	streq	r0, [r0, -r0]
    3940:	00000397 	muleq	r0, r7, r3
    3944:	4d0ca703 	stcmi	7, cr10, [ip, #-12]
    3948:	07000000 	streq	r0, [r0, -r0]
    394c:	00000349 	andeq	r0, r0, r9, asr #6
    3950:	c513a803 	ldrgt	sl, [r3, #-2051]	; 0xfffff7fd
    3954:	00000000 	andeq	r0, r0, r0
    3958:	00006108 	andeq	r6, r0, r8, lsl #2
    395c:	0000d500 	andeq	sp, r0, r0, lsl #10
    3960:	00380900 	eorseq	r0, r8, r0, lsl #18
    3964:	00030000 	andeq	r0, r3, r0
    3968:	a203080a 	andge	r0, r3, #655360	; 0xa0000
    396c:	0000f909 	andeq	pc, r0, r9, lsl #18
    3970:	04af0b00 	strteq	r0, [pc], #2816	; 3978 <__data_load__+0x2348>
    3974:	a4030000 	strge	r0, [r3], #-0
    3978:	00003107 	andeq	r3, r0, r7, lsl #2
    397c:	b70b0000 	strlt	r0, [fp, -r0]
    3980:	03000004 	movweq	r0, #4
    3984:	00a305a9 	adceq	r0, r3, r9, lsr #11
    3988:	00040000 	andeq	r0, r4, r0
    398c:	00043802 	andeq	r3, r4, r2, lsl #16
    3990:	03aa0300 			; <UNDEFINED> instruction: 0x03aa0300
    3994:	000000d5 	ldrdeq	r0, [r0], -r5
    3998:	f702040c 			; <UNDEFINED> instruction: 0xf702040c
    399c:	04000004 	streq	r0, [r0], #-4
    39a0:	007d1916 	rsbseq	r1, sp, r6, lsl r9
    39a4:	fa020000 	blx	839ac <__data_load__+0x8237c>
    39a8:	05000003 	streq	r0, [r0, #-3]
    39ac:	00310d0c 	eorseq	r0, r1, ip, lsl #26
    39b0:	0c020000 	stceq	0, cr0, [r2], {-0}
    39b4:	04000003 	streq	r0, [r0], #-3
    39b8:	01131b23 	tsteq	r3, r3, lsr #22
    39bc:	1d0d0000 	stcne	0, cr0, [sp, #-0]
    39c0:	18000003 	stmdane	r0, {r0, r1}
    39c4:	85083404 	strhi	r3, [r8, #-1028]	; 0xfffffbfc
    39c8:	0b000001 	bleq	39d4 <__data_load__+0x23a4>
    39cc:	00000459 	andeq	r0, r0, r9, asr r4
    39d0:	85133604 	ldrhi	r3, [r3, #-1540]	; 0xfffff9fc
    39d4:	00000001 	andeq	r0, r0, r1
    39d8:	006b5f0e 	rsbeq	r5, fp, lr, lsl #30
    39dc:	31073704 	tstcc	r7, r4, lsl #14
    39e0:	04000000 	streq	r0, [r0], #-0
    39e4:	0004a10b 	andeq	sl, r4, fp, lsl #2
    39e8:	0b370400 	bleq	dc49f0 <_bsl_base_address+0xbc29f0>
    39ec:	00000031 	andeq	r0, r0, r1, lsr r0
    39f0:	03060b08 	movweq	r0, #27400	; 0x6b08
    39f4:	37040000 	strcc	r0, [r4, -r0]
    39f8:	00003114 	andeq	r3, r0, r4, lsl r1
    39fc:	310b0c00 	tstcc	fp, r0, lsl #24
    3a00:	04000005 	streq	r0, [r0], #-5
    3a04:	00311b37 	eorseq	r1, r1, r7, lsr fp
    3a08:	0e100000 	cdpeq	0, 1, cr0, cr0, cr0, {0}
    3a0c:	0400785f 	streq	r7, [r0], #-2143	; 0xfffff7a1
    3a10:	018b0b38 	orreq	r0, fp, r8, lsr fp
    3a14:	00140000 	andseq	r0, r4, r0
    3a18:	012b040f 			; <UNDEFINED> instruction: 0x012b040f
    3a1c:	07080000 	streq	r0, [r8, -r0]
    3a20:	9b000001 	blls	3a2c <__data_load__+0x23fc>
    3a24:	09000001 	stmdbeq	r0, {r0}
    3a28:	00000038 	andeq	r0, r0, r8, lsr r0
    3a2c:	440d0000 	strmi	r0, [sp], #-0
    3a30:	24000003 	strcs	r0, [r0], #-3
    3a34:	1e083c04 	cdpne	12, 0, cr3, cr8, cr4, {0}
    3a38:	0b000002 	bleq	3a48 <__data_load__+0x2418>
    3a3c:	00000269 	andeq	r0, r0, r9, ror #4
    3a40:	31093e04 	tstcc	r9, r4, lsl #28
    3a44:	00000000 	andeq	r0, r0, r0
    3a48:	0004cd0b 	andeq	ip, r4, fp, lsl #26
    3a4c:	093f0400 	ldmdbeq	pc!, {sl}	; <UNPREDICTABLE>
    3a50:	00000031 	andeq	r0, r0, r1, lsr r0
    3a54:	027e0b04 	rsbseq	r0, lr, #4, 22	; 0x1000
    3a58:	40040000 	andmi	r0, r4, r0
    3a5c:	00003109 	andeq	r3, r0, r9, lsl #2
    3a60:	cd0b0800 	stcgt	8, cr0, [fp, #-0]
    3a64:	04000005 	streq	r0, [r0], #-5
    3a68:	00310941 	eorseq	r0, r1, r1, asr #18
    3a6c:	0b0c0000 	bleq	303a74 <_bsl_base_address+0x101a74>
    3a70:	000003c4 	andeq	r0, r0, r4, asr #7
    3a74:	31094204 	tstcc	r9, r4, lsl #4
    3a78:	10000000 	andne	r0, r0, r0
    3a7c:	0003b30b 	andeq	fp, r3, fp, lsl #6
    3a80:	09430400 	stmdbeq	r3, {sl}^
    3a84:	00000031 	andeq	r0, r0, r1, lsr r0
    3a88:	05360b14 	ldreq	r0, [r6, #-2836]!	; 0xfffff4ec
    3a8c:	44040000 	strmi	r0, [r4], #-0
    3a90:	00003109 	andeq	r3, r0, r9, lsl #2
    3a94:	1a0b1800 	bne	2c9a9c <_bsl_base_address+0xc7a9c>
    3a98:	04000004 	streq	r0, [r0], #-4
    3a9c:	00310945 	eorseq	r0, r1, r5, asr #18
    3aa0:	0b1c0000 	bleq	703aa8 <_bsl_base_address+0x501aa8>
    3aa4:	0000056b 	andeq	r0, r0, fp, ror #10
    3aa8:	31094604 	tstcc	r9, r4, lsl #12
    3aac:	20000000 	andcs	r0, r0, r0
    3ab0:	028d1000 	addeq	r1, sp, #0
    3ab4:	01080000 	mrseq	r0, (UNDEF: 8)
    3ab8:	63084f04 	movwvs	r4, #36612	; 0x8f04
    3abc:	0b000002 	bleq	3acc <__data_load__+0x249c>
    3ac0:	000002f9 	strdeq	r0, [r0], -r9
    3ac4:	630a5004 	movwvs	r5, #40964	; 0xa004
    3ac8:	00000002 	andeq	r0, r0, r2
    3acc:	0001f90b 	andeq	pc, r1, fp, lsl #18
    3ad0:	09510400 	ldmdbeq	r1, {sl}^
    3ad4:	00000263 	andeq	r0, r0, r3, ror #4
    3ad8:	04e91180 	strbteq	r1, [r9], #384	; 0x180
    3adc:	53040000 	movwpl	r0, #16384	; 0x4000
    3ae0:	0001070a 	andeq	r0, r1, sl, lsl #14
    3ae4:	11010000 	mrsne	r0, (UNDEF: 1)
    3ae8:	000002b2 			; <UNDEFINED> instruction: 0x000002b2
    3aec:	070a5604 	streq	r5, [sl, -r4, lsl #12]
    3af0:	04000001 	streq	r0, [r0], #-1
    3af4:	05080001 	streq	r0, [r8, #-1]
    3af8:	73000001 	movwvc	r0, #1
    3afc:	09000002 	stmdbeq	r0, {r1}
    3b00:	00000038 	andeq	r0, r0, r8, lsr r0
    3b04:	e510001f 	ldr	r0, [r0, #-31]	; 0xffffffe1
    3b08:	90000001 	andls	r0, r0, r1
    3b0c:	08620401 	stmdaeq	r2!, {r0, sl}^
    3b10:	000002b6 			; <UNDEFINED> instruction: 0x000002b6
    3b14:	0004590b 	andeq	r5, r4, fp, lsl #18
    3b18:	12630400 	rsbne	r0, r3, #0, 8
    3b1c:	000002b6 			; <UNDEFINED> instruction: 0x000002b6
    3b20:	04710b00 	ldrbteq	r0, [r1], #-2816	; 0xfffff500
    3b24:	64040000 	strvs	r0, [r4], #-0
    3b28:	00003106 	andeq	r3, r0, r6, lsl #2
    3b2c:	010b0400 	tsteq	fp, r0, lsl #8
    3b30:	04000003 	streq	r0, [r0], #-3
    3b34:	02bc0966 	adcseq	r0, ip, #1671168	; 0x198000
    3b38:	0b080000 	bleq	203b40 <_bsl_base_address+0x1b40>
    3b3c:	0000028d 	andeq	r0, r0, sp, lsl #5
    3b40:	1e1e6704 	cdpne	7, 1, cr6, cr14, cr4, {0}
    3b44:	88000002 	stmdahi	r0, {r1}
    3b48:	73040f00 	movwvc	r0, #20224	; 0x4f00
    3b4c:	08000002 	stmdaeq	r0, {r1}
    3b50:	000002cc 	andeq	r0, r0, ip, asr #5
    3b54:	000002cc 	andeq	r0, r0, ip, asr #5
    3b58:	00003809 	andeq	r3, r0, r9, lsl #16
    3b5c:	0f001f00 	svceq	0x00001f00
    3b60:	0002d204 	andeq	sp, r2, r4, lsl #4
    3b64:	240d1200 	strcs	r1, [sp], #-512	; 0xfffffe00
    3b68:	08000004 	stmdaeq	r0, {r2}
    3b6c:	fb087a04 	blx	222386 <_bsl_base_address+0x20386>
    3b70:	0b000002 	bleq	3b80 <__data_load__+0x2550>
    3b74:	000009d7 	ldrdeq	r0, [r0], -r7
    3b78:	fb117b04 	blx	462792 <_bsl_base_address+0x260792>
    3b7c:	00000002 	andeq	r0, r0, r2
    3b80:	0008a30b 	andeq	sl, r8, fp, lsl #6
    3b84:	067c0400 	ldrbteq	r0, [ip], -r0, lsl #8
    3b88:	00000031 	andeq	r0, r0, r1, lsr r0
    3b8c:	040f0004 	streq	r0, [pc], #-4	; 3b94 <__data_load__+0x2564>
    3b90:	00000061 	andeq	r0, r0, r1, rrx
    3b94:	0004430d 	andeq	r4, r4, sp, lsl #6
    3b98:	ba046800 	blt	11dba0 <__data_load__+0x11c570>
    3b9c:	00044408 	andeq	r4, r4, r8, lsl #8
    3ba0:	705f0e00 	subsvc	r0, pc, r0, lsl #28
    3ba4:	12bb0400 	adcsne	r0, fp, #0, 8
    3ba8:	000002fb 	strdeq	r0, [r0], -fp
    3bac:	725f0e00 	subsvc	r0, pc, #0, 28
    3bb0:	07bc0400 	ldreq	r0, [ip, r0, lsl #8]!
    3bb4:	00000031 	andeq	r0, r0, r1, lsr r0
    3bb8:	775f0e04 	ldrbvc	r0, [pc, -r4, lsl #28]
    3bbc:	07bd0400 	ldreq	r0, [sp, r0, lsl #8]!
    3bc0:	00000031 	andeq	r0, r0, r1, lsr r0
    3bc4:	02ab0b08 	adceq	r0, fp, #8, 22	; 0x2000
    3bc8:	be040000 	cdplt	0, 0, cr0, cr4, cr0, {0}
    3bcc:	00006809 	andeq	r6, r0, r9, lsl #16
    3bd0:	600b0c00 	andvs	r0, fp, r0, lsl #24
    3bd4:	04000003 	streq	r0, [r0], #-3
    3bd8:	006809bf 	strhteq	r0, [r8], #-159	; 0xffffff61
    3bdc:	0e0e0000 	cdpeq	0, 0, cr0, cr14, cr0, {0}
    3be0:	0066625f 	rsbeq	r6, r6, pc, asr r2
    3be4:	d311c004 	tstle	r1, #4
    3be8:	10000002 	andne	r0, r0, r2
    3bec:	0002380b 	andeq	r3, r2, fp, lsl #16
    3bf0:	07c10400 	strbeq	r0, [r1, r0, lsl #8]
    3bf4:	00000031 	andeq	r0, r0, r1, lsr r0
    3bf8:	029b0b18 	addseq	r0, fp, #24, 22	; 0x6000
    3bfc:	c8040000 	stmdagt	r4, {}	; <UNPREDICTABLE>
    3c00:	0001050a 	andeq	r0, r1, sl, lsl #10
    3c04:	340b1c00 	strcc	r1, [fp], #-3072	; 0xfffff400
    3c08:	04000003 	streq	r0, [r0], #-3
    3c0c:	05c31dca 	strbeq	r1, [r3, #3530]	; 0xdca
    3c10:	0b200000 	bleq	803c18 <_bsl_base_address+0x601c18>
    3c14:	000003ac 	andeq	r0, r0, ip, lsr #7
    3c18:	ed1dcc04 	ldc	12, cr12, [sp, #-16]
    3c1c:	24000005 	strcs	r0, [r0], #-5
    3c20:	0004bf0b 	andeq	fp, r4, fp, lsl #30
    3c24:	0dcf0400 	cfstrdeq	mvd0, [pc]	; 3c2c <__data_load__+0x25fc>
    3c28:	00000611 	andeq	r0, r0, r1, lsl r6
    3c2c:	05850b28 	streq	r0, [r5, #2856]	; 0xb28
    3c30:	d0040000 	andle	r0, r4, r0
    3c34:	00062b09 	andeq	r2, r6, r9, lsl #22
    3c38:	5f0e2c00 	svcpl	0x000e2c00
    3c3c:	04006275 	streq	r6, [r0], #-629	; 0xfffffd8b
    3c40:	02d311d3 	sbcseq	r1, r3, #-1073741772	; 0xc0000034
    3c44:	0e300000 	cdpeq	0, 3, cr0, cr0, cr0, {0}
    3c48:	0070755f 	rsbseq	r7, r0, pc, asr r5
    3c4c:	fb12d404 	blx	4b8c66 <_bsl_base_address+0x2b6c66>
    3c50:	38000002 	stmdacc	r0, {r1}
    3c54:	72755f0e 	rsbsvc	r5, r5, #14, 30	; 0x38
    3c58:	07d50400 	ldrbeq	r0, [r5, r0, lsl #8]
    3c5c:	00000031 	andeq	r0, r0, r1, lsr r0
    3c60:	02780b3c 	rsbseq	r0, r8, #60, 22	; 0xf000
    3c64:	d8040000 	stmdale	r4, {}	; <UNPREDICTABLE>
    3c68:	00063111 	andeq	r3, r6, r1, lsl r1
    3c6c:	5d0b4000 	stcpl	0, cr4, [fp, #-0]
    3c70:	04000005 	streq	r0, [r0], #-5
    3c74:	064111d9 			; <UNDEFINED> instruction: 0x064111d9
    3c78:	0e430000 	cdpeq	0, 4, cr0, cr3, cr0, {0}
    3c7c:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    3c80:	d311dc04 	tstle	r1, #4, 24	; 0x400
    3c84:	44000002 	strmi	r0, [r0], #-2
    3c88:	0002c10b 	andeq	ip, r2, fp, lsl #2
    3c8c:	07df0400 	ldrbeq	r0, [pc, r0, lsl #8]
    3c90:	00000031 	andeq	r0, r0, r1, lsr r0
    3c94:	02d20b4c 	sbcseq	r0, r2, #76, 22	; 0x13000
    3c98:	e0040000 	and	r0, r4, r0
    3c9c:	00008b0a 	andeq	r8, r0, sl, lsl #22
    3ca0:	d00b5000 	andle	r5, fp, r0
    3ca4:	04000006 	streq	r0, [r0], #-6
    3ca8:	046212e3 	strbteq	r1, [r2], #-739	; 0xfffffd1d
    3cac:	0b540000 	bleq	1503cb4 <_bsl_base_address+0x1301cb4>
    3cb0:	00000878 	andeq	r0, r0, r8, ror r8
    3cb4:	1f0ce704 	svcne	0x000ce704
    3cb8:	58000001 	stmdapl	r0, {r0}
    3cbc:	00044b0b 	andeq	r4, r4, fp, lsl #22
    3cc0:	0ee90400 	cdpeq	4, 14, cr0, cr9, cr0, {0}
    3cc4:	000000f9 	strdeq	r0, [r0], -r9
    3cc8:	03a40b5c 			; <UNDEFINED> instruction: 0x03a40b5c
    3ccc:	ea040000 	b	103cd4 <__data_load__+0x1026a4>
    3cd0:	00003109 	andeq	r3, r0, r9, lsl #2
    3cd4:	13006400 	movwne	r6, #1024	; 0x400
    3cd8:	00000031 	andeq	r0, r0, r1, lsr r0
    3cdc:	00000462 	andeq	r0, r0, r2, ror #8
    3ce0:	00046214 	andeq	r6, r4, r4, lsl r2
    3ce4:	01051400 	tsteq	r5, r0, lsl #8
    3ce8:	b1140000 	tstlt	r4, r0
    3cec:	14000005 	strne	r0, [r0], #-5
    3cf0:	00000031 	andeq	r0, r0, r1, lsr r0
    3cf4:	68040f00 	stmdavs	r4, {r8, r9, sl, fp}
    3cf8:	15000004 	strne	r0, [r0, #-4]
    3cfc:	00000be0 	andeq	r0, r0, r0, ror #23
    3d00:	65040428 	strvs	r0, [r4, #-1064]	; 0xfffffbd8
    3d04:	05b10802 	ldreq	r0, [r1, #2050]!	; 0x802
    3d08:	13160000 	tstne	r6, #0
    3d0c:	04000004 	streq	r0, [r0], #-4
    3d10:	31070267 	tstcc	r7, r7, ror #4
    3d14:	00000000 	andeq	r0, r0, r0
    3d18:	0002ba16 	andeq	fp, r2, r6, lsl sl
    3d1c:	026c0400 	rsbeq	r0, ip, #0, 8
    3d20:	00069d0b 	andeq	r9, r6, fp, lsl #26
    3d24:	50160400 	andspl	r0, r6, r0, lsl #8
    3d28:	04000003 	streq	r0, [r0], #-3
    3d2c:	9d14026c 	lfmls	f0, 4, [r4, #-432]	; 0xfffffe50
    3d30:	08000006 	stmdaeq	r0, {r1, r2}
    3d34:	00031516 	andeq	r1, r3, r6, lsl r5
    3d38:	026c0400 	rsbeq	r0, ip, #0, 8
    3d3c:	00069d1e 	andeq	r9, r6, lr, lsl sp
    3d40:	6c160c00 	ldcvs	12, cr0, [r6], {-0}
    3d44:	04000004 	streq	r0, [r0], #-4
    3d48:	3108026e 	tstcc	r8, lr, ror #4
    3d4c:	10000000 	andne	r0, r0, r0
    3d50:	00020d16 	andeq	r0, r2, r6, lsl sp
    3d54:	026f0400 	rsbeq	r0, pc, #0, 8
    3d58:	00089d08 	andeq	r9, r8, r8, lsl #26
    3d5c:	88161400 	ldmdahi	r6, {sl, ip}
    3d60:	04000004 	streq	r0, [r0], #-4
    3d64:	31070272 	tstcc	r7, r2, ror r2
    3d68:	30000000 	andcc	r0, r0, r0
    3d6c:	00047616 	andeq	r7, r4, r6, lsl r6
    3d70:	02730400 	rsbseq	r0, r3, #0, 8
    3d74:	0008b216 	andeq	fp, r8, r6, lsl r2
    3d78:	cd163400 	cfldrsgt	mvf3, [r6, #-0]
    3d7c:	04000003 	streq	r0, [r0], #-3
    3d80:	31070275 	tstcc	r7, r5, ror r2
    3d84:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    3d88:	00047e16 	andeq	r7, r4, r6, lsl lr
    3d8c:	02770400 	rsbseq	r0, r7, #0, 8
    3d90:	0008c30a 	andeq	ip, r8, sl, lsl #6
    3d94:	8f163c00 	svchi	0x00163c00
    3d98:	04000003 	streq	r0, [r0], #-3
    3d9c:	8513027a 	ldrhi	r0, [r3, #-634]	; 0xfffffd86
    3da0:	40000001 	andmi	r0, r0, r1
    3da4:	00033a16 	andeq	r3, r3, r6, lsl sl
    3da8:	027b0400 	rsbseq	r0, fp, #0, 8
    3dac:	00003107 	andeq	r3, r0, r7, lsl #2
    3db0:	c8164400 	ldmdagt	r6, {sl, lr}
    3db4:	04000005 	streq	r0, [r0], #-5
    3db8:	8513027c 	ldrhi	r0, [r3, #-636]	; 0xfffffd84
    3dbc:	48000001 	stmdami	r0, {r0}
    3dc0:	0003f016 	andeq	pc, r3, r6, lsl r0	; <UNPREDICTABLE>
    3dc4:	027d0400 	rsbseq	r0, sp, #0, 8
    3dc8:	0008c914 	andeq	ip, r8, r4, lsl r9
    3dcc:	58164c00 	ldmdapl	r6, {sl, fp, lr}
    3dd0:	04000003 	streq	r0, [r0], #-3
    3dd4:	31070280 	smlabbcc	r7, r0, r2, r0
    3dd8:	50000000 	andpl	r0, r0, r0
    3ddc:	0002ca16 	andeq	ip, r2, r6, lsl sl
    3de0:	02810400 	addeq	r0, r1, #0, 8
    3de4:	0005b109 	andeq	fp, r5, r9, lsl #2
    3de8:	0c165400 	cfldrseq	mvf5, [r6], {-0}
    3dec:	04000004 	streq	r0, [r0], #-4
    3df0:	780702a4 	stmdavc	r7, {r2, r5, r7, r9}
    3df4:	58000008 	stmdapl	r0, {r3}
    3df8:	0001e517 	andeq	lr, r1, r7, lsl r5
    3dfc:	02a80400 	adceq	r0, r8, #0, 8
    3e00:	0002b613 	andeq	fp, r2, r3, lsl r6
    3e04:	17014800 	strne	r4, [r1, -r0, lsl #16]
    3e08:	0000036d 	andeq	r0, r0, sp, ror #6
    3e0c:	1202a904 	andne	sl, r2, #4, 18	; 0x10000
    3e10:	00000273 	andeq	r0, r0, r3, ror r2
    3e14:	5317014c 	tstpl	r7, #76, 2
    3e18:	04000005 	streq	r0, [r0], #-5
    3e1c:	da0c02ad 	ble	3048d8 <_bsl_base_address+0x1028d8>
    3e20:	dc000008 	stcle	0, cr0, [r0], {8}
    3e24:	02a31702 	adceq	r1, r3, #524288	; 0x80000
    3e28:	b2040000 	andlt	r0, r4, #0
    3e2c:	065e1002 	ldrbeq	r1, [lr], -r2
    3e30:	02e00000 	rsceq	r0, r0, #0
    3e34:	00028817 	andeq	r8, r2, r7, lsl r8
    3e38:	02b40400 	adcseq	r0, r4, #0, 8
    3e3c:	0008e60a 	andeq	lr, r8, sl, lsl #12
    3e40:	0002ec00 	andeq	lr, r2, r0, lsl #24
    3e44:	05b7040f 	ldreq	r0, [r7, #1039]!	; 0x40f
    3e48:	01040000 	mrseq	r0, (UNDEF: 4)
    3e4c:	00014808 	andeq	r4, r1, r8, lsl #16
    3e50:	05b71800 	ldreq	r1, [r7, #2048]!	; 0x800
    3e54:	040f0000 	streq	r0, [pc], #-0	; 3e5c <__data_load__+0x282c>
    3e58:	00000444 	andeq	r0, r0, r4, asr #8
    3e5c:	00003113 	andeq	r3, r0, r3, lsl r1
    3e60:	0005e700 	andeq	lr, r5, r0, lsl #14
    3e64:	04621400 	strbteq	r1, [r2], #-1024	; 0xfffffc00
    3e68:	05140000 	ldreq	r0, [r4, #-0]
    3e6c:	14000001 	strne	r0, [r0], #-1
    3e70:	000005e7 	andeq	r0, r0, r7, ror #11
    3e74:	00003114 	andeq	r3, r0, r4, lsl r1
    3e78:	040f0000 	streq	r0, [pc], #-0	; 3e80 <__data_load__+0x2850>
    3e7c:	000005be 			; <UNDEFINED> instruction: 0x000005be
    3e80:	05c9040f 	strbeq	r0, [r9, #1039]	; 0x40f
    3e84:	97130000 	ldrls	r0, [r3, -r0]
    3e88:	11000000 	mrsne	r0, (UNDEF: 0)
    3e8c:	14000006 	strne	r0, [r0], #-6
    3e90:	00000462 	andeq	r0, r0, r2, ror #8
    3e94:	00010514 	andeq	r0, r1, r4, lsl r5
    3e98:	00971400 	addseq	r1, r7, r0, lsl #8
    3e9c:	31140000 	tstcc	r4, r0
    3ea0:	00000000 	andeq	r0, r0, r0
    3ea4:	05f3040f 	ldrbeq	r0, [r3, #1039]!	; 0x40f
    3ea8:	31130000 	tstcc	r3, r0
    3eac:	2b000000 	blcs	3eb4 <__data_load__+0x2884>
    3eb0:	14000006 	strne	r0, [r0], #-6
    3eb4:	00000462 	andeq	r0, r0, r2, ror #8
    3eb8:	00010514 	andeq	r0, r1, r4, lsl r5
    3ebc:	040f0000 	streq	r0, [pc], #-0	; 3ec4 <__data_load__+0x2894>
    3ec0:	00000617 	andeq	r0, r0, r7, lsl r6
    3ec4:	00006108 	andeq	r6, r0, r8, lsl #2
    3ec8:	00064100 	andeq	r4, r6, r0, lsl #2
    3ecc:	00380900 	eorseq	r0, r8, r0, lsl #18
    3ed0:	00020000 	andeq	r0, r2, r0
    3ed4:	00006108 	andeq	r6, r0, r8, lsl #2
    3ed8:	00065100 	andeq	r5, r6, r0, lsl #2
    3edc:	00380900 	eorseq	r0, r8, r0, lsl #18
    3ee0:	00000000 	andeq	r0, r0, r0
    3ee4:	00043105 	andeq	r3, r4, r5, lsl #2
    3ee8:	01240400 			; <UNDEFINED> instruction: 0x01240400
    3eec:	0003011a 	andeq	r0, r3, sl, lsl r1
    3ef0:	0c1f1900 			; <UNDEFINED> instruction: 0x0c1f1900
    3ef4:	040c0000 	streq	r0, [ip], #-0
    3ef8:	97080128 	strls	r0, [r8, -r8, lsr #2]
    3efc:	16000006 	strne	r0, [r0], -r6
    3f00:	00000459 	andeq	r0, r0, r9, asr r4
    3f04:	11012a04 	tstne	r1, r4, lsl #20
    3f08:	00000697 	muleq	r0, r7, r6
    3f0c:	03661600 	cmneq	r6, #0, 12
    3f10:	2b040000 	blcs	103f18 <__data_load__+0x1028e8>
    3f14:	00310701 	eorseq	r0, r1, r1, lsl #14
    3f18:	16040000 	strne	r0, [r4], -r0
    3f1c:	0000042b 	andeq	r0, r0, fp, lsr #8
    3f20:	0b012c04 	bleq	4ef38 <__data_load__+0x4d908>
    3f24:	0000069d 	muleq	r0, sp, r6
    3f28:	040f0008 	streq	r0, [pc], #-8	; 3f30 <__data_load__+0x2900>
    3f2c:	0000065e 	andeq	r0, r0, lr, asr r6
    3f30:	0651040f 	ldrbeq	r0, [r1], -pc, lsl #8
    3f34:	05190000 	ldreq	r0, [r9, #-0]
    3f38:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
    3f3c:	08014404 	stmdaeq	r1, {r2, sl, lr}
    3f40:	000006dc 	ldrdeq	r0, [r0], -ip
    3f44:	0004a916 	andeq	sl, r4, r6, lsl r9
    3f48:	01450400 	cmpeq	r5, r0, lsl #8
    3f4c:	0006dc12 	andeq	sp, r6, r2, lsl ip
    3f50:	d6160000 	ldrle	r0, [r6], -r0
    3f54:	04000004 	streq	r0, [r0], #-4
    3f58:	dc120146 	ldfles	f0, [r2], {70}	; 0x46
    3f5c:	06000006 	streq	r0, [r0], -r6
    3f60:	0004f216 	andeq	pc, r4, r6, lsl r2	; <UNPREDICTABLE>
    3f64:	01470400 	cmpeq	r7, r0, lsl #8
    3f68:	00006f12 	andeq	r6, r0, r2, lsl pc
    3f6c:	08000c00 	stmdaeq	r0, {sl, fp}
    3f70:	0000006f 	andeq	r0, r0, pc, rrx
    3f74:	000006ec 	andeq	r0, r0, ip, ror #13
    3f78:	00003809 	andeq	r3, r0, r9, lsl #16
    3f7c:	1a000200 	bne	4784 <__data_load__+0x3154>
    3f80:	028504d0 	addeq	r0, r5, #208, 8	; 0xd0000000
    3f84:	00080107 	andeq	r0, r8, r7, lsl #2
    3f88:	05241600 	streq	r1, [r4, #-1536]!	; 0xfffffa00
    3f8c:	87040000 	strhi	r0, [r4, -r0]
    3f90:	00381802 	eorseq	r1, r8, r2, lsl #16
    3f94:	16000000 	strne	r0, [r0], -r0
    3f98:	000004dc 	ldrdeq	r0, [r0], -ip
    3f9c:	12028804 	andne	r8, r2, #4, 16	; 0x40000
    3fa0:	000005b1 			; <UNDEFINED> instruction: 0x000005b1
    3fa4:	03821604 	orreq	r1, r2, #4, 12	; 0x400000
    3fa8:	89040000 	stmdbhi	r4, {}	; <UNPREDICTABLE>
    3fac:	08011002 	stmdaeq	r1, {r1, ip}
    3fb0:	16080000 	strne	r0, [r8], -r0
    3fb4:	00000576 	andeq	r0, r0, r6, ror r5
    3fb8:	17028a04 	strne	r8, [r2, -r4, lsl #20]
    3fbc:	0000019b 	muleq	r0, fp, r1
    3fc0:	03251624 			; <UNDEFINED> instruction: 0x03251624
    3fc4:	8b040000 	blhi	103fcc <__data_load__+0x10299c>
    3fc8:	00310f02 	eorseq	r0, r1, r2, lsl #30
    3fcc:	16480000 	strbne	r0, [r8], -r0
    3fd0:	00000454 	andeq	r0, r0, r4, asr r4
    3fd4:	2c028c04 	stccs	12, cr8, [r2], {4}
    3fd8:	00000084 	andeq	r0, r0, r4, lsl #1
    3fdc:	058c1650 	streq	r1, [ip, #1616]	; 0x650
    3fe0:	8d040000 	stchi	0, cr0, [r4, #-0]
    3fe4:	06a31a02 	strteq	r1, [r3], r2, lsl #20
    3fe8:	16580000 	ldrbne	r0, [r8], -r0
    3fec:	0000045f 	andeq	r0, r0, pc, asr r4
    3ff0:	16028e04 	strne	r8, [r2], -r4, lsl #28
    3ff4:	000000f9 	strdeq	r0, [r0], -r9
    3ff8:	05ba1668 	ldreq	r1, [sl, #1640]!	; 0x668
    3ffc:	8f040000 	svchi	0x00040000
    4000:	00f91602 	rscseq	r1, r9, r2, lsl #12
    4004:	16700000 	ldrbtne	r0, [r0], -r0
    4008:	0000025b 	andeq	r0, r0, fp, asr r2
    400c:	16029004 	strne	r9, [r2], -r4
    4010:	000000f9 	strdeq	r0, [r0], -r9
    4014:	05491678 	strbeq	r1, [r9, #-1656]	; 0xfffff988
    4018:	91040000 	mrsls	r0, (UNDEF: 4)
    401c:	08111002 	ldmdaeq	r1, {r1, ip}
    4020:	16800000 	strne	r0, [r0], r0
    4024:	00000376 	andeq	r0, r0, r6, ror r3
    4028:	10029204 	andne	r9, r2, r4, lsl #4
    402c:	00000821 	andeq	r0, r0, r1, lsr #16
    4030:	04ff1688 	ldrbteq	r1, [pc], #1672	; 4038 <__data_load__+0x2a08>
    4034:	93040000 	movwls	r0, #16384	; 0x4000
    4038:	00310f02 	eorseq	r0, r1, r2, lsl #30
    403c:	16a00000 	strtne	r0, [r0], r0
    4040:	000002eb 	andeq	r0, r0, fp, ror #5
    4044:	16029404 	strne	r9, [r2], -r4, lsl #8
    4048:	000000f9 	strdeq	r0, [r0], -r9
    404c:	024c16a4 	subeq	r1, ip, #164, 12	; 0xa400000
    4050:	95040000 	strls	r0, [r4, #-0]
    4054:	00f91602 	rscseq	r1, r9, r2, lsl #12
    4058:	16ac0000 	strtne	r0, [ip], r0
    405c:	000002da 	ldrdeq	r0, [r0], -sl
    4060:	16029604 	strne	r9, [r2], -r4, lsl #12
    4064:	000000f9 	strdeq	r0, [r0], -r9
    4068:	021816b4 	andseq	r1, r8, #180, 12	; 0xb400000
    406c:	97040000 	strls	r0, [r4, -r0]
    4070:	00f91602 	rscseq	r1, r9, r2, lsl #12
    4074:	16bc0000 	ldrtne	r0, [ip], r0
    4078:	00000227 	andeq	r0, r0, r7, lsr #4
    407c:	16029804 	strne	r9, [r2], -r4, lsl #16
    4080:	000000f9 	strdeq	r0, [r0], -r9
    4084:	041116c4 	ldreq	r1, [r1], #-1732	; 0xfffff93c
    4088:	99040000 	stmdbls	r4, {}	; <UNPREDICTABLE>
    408c:	00310802 	eorseq	r0, r1, r2, lsl #16
    4090:	00cc0000 	sbceq	r0, ip, r0
    4094:	0005b708 	andeq	fp, r5, r8, lsl #14
    4098:	00081100 	andeq	r1, r8, r0, lsl #2
    409c:	00380900 	eorseq	r0, r8, r0, lsl #18
    40a0:	00190000 	andseq	r0, r9, r0
    40a4:	0005b708 	andeq	fp, r5, r8, lsl #14
    40a8:	00082100 	andeq	r2, r8, r0, lsl #2
    40ac:	00380900 	eorseq	r0, r8, r0, lsl #18
    40b0:	00070000 	andeq	r0, r7, r0
    40b4:	0005b708 	andeq	fp, r5, r8, lsl #14
    40b8:	00083100 	andeq	r3, r8, r0, lsl #2
    40bc:	00380900 	eorseq	r0, r8, r0, lsl #18
    40c0:	00170000 	andseq	r0, r7, r0
    40c4:	9e04f01a 	mcrls	0, 0, pc, cr4, cr10, {0}	; <UNPREDICTABLE>
    40c8:	08580702 	ldmdaeq	r8, {r1, r8, r9, sl}^
    40cc:	bd160000 	ldclt	0, cr0, [r6, #-0]
    40d0:	04000003 	streq	r0, [r0], #-3
    40d4:	581b02a1 	ldmdapl	fp, {r0, r5, r7, r9}
    40d8:	00000008 	andeq	r0, r0, r8
    40dc:	00054016 	andeq	r4, r5, r6, lsl r0
    40e0:	02a20400 	adceq	r0, r2, #0, 8
    40e4:	00086818 	andeq	r6, r8, r8, lsl r8
    40e8:	08007800 	stmdaeq	r0, {fp, ip, sp, lr}
    40ec:	000002fb 	strdeq	r0, [r0], -fp
    40f0:	00000868 	andeq	r0, r0, r8, ror #16
    40f4:	00003809 	andeq	r3, r0, r9, lsl #16
    40f8:	08001d00 	stmdaeq	r0, {r8, sl, fp, ip}
    40fc:	00000038 	andeq	r0, r0, r8, lsr r0
    4100:	00000878 	andeq	r0, r0, r8, ror r8
    4104:	00003809 	andeq	r3, r0, r9, lsl #16
    4108:	1b001d00 	blne	b510 <__data_load__+0x9ee0>
    410c:	028304f0 	addeq	r0, r3, #240, 8	; 0xf0000000
    4110:	00089d03 	andeq	r9, r8, r3, lsl #26
    4114:	0be01c00 	bleq	ff80b11c <__stack+0xdf80a844>
    4118:	9a040000 	bls	104120 <__data_load__+0x102af0>
    411c:	06ec0b02 	strbteq	r0, [ip], r2, lsl #22
    4120:	631c0000 	tstvs	ip, #0
    4124:	04000005 	streq	r0, [r0], #-5
    4128:	310b02a3 	smlatbcc	fp, r3, r2, r0
    412c:	00000008 	andeq	r0, r0, r8
    4130:	0005b708 	andeq	fp, r5, r8, lsl #14
    4134:	0008ad00 	andeq	sl, r8, r0, lsl #26
    4138:	00380900 	eorseq	r0, r8, r0, lsl #18
    413c:	00180000 	andseq	r0, r8, r0
    4140:	0002411d 	andeq	r4, r2, sp, lsl r1
    4144:	ad040f00 	stcge	15, cr0, [r4, #-0]
    4148:	1e000008 	cdpne	0, 0, cr0, cr0, cr8, {0}
    414c:	000008c3 	andeq	r0, r0, r3, asr #17
    4150:	00046214 	andeq	r6, r4, r4, lsl r2
    4154:	040f0000 	streq	r0, [pc], #-0	; 415c <__data_load__+0x2b2c>
    4158:	000008b8 			; <UNDEFINED> instruction: 0x000008b8
    415c:	0185040f 	orreq	r0, r5, pc, lsl #8
    4160:	da1e0000 	ble	784168 <_bsl_base_address+0x582168>
    4164:	14000008 	strne	r0, [r0], #-8
    4168:	00000031 	andeq	r0, r0, r1, lsr r0
    416c:	e0040f00 	and	r0, r4, r0, lsl #30
    4170:	0f000008 	svceq	0x00000008
    4174:	0008cf04 	andeq	ip, r8, r4, lsl #30
    4178:	06510800 	ldrbeq	r0, [r1], -r0, lsl #16
    417c:	08f60000 	ldmeq	r6!, {}^	; <UNPREDICTABLE>
    4180:	38090000 	stmdacc	r9, {}	; <UNPREDICTABLE>
    4184:	02000000 	andeq	r0, r0, #0
    4188:	04141f00 	ldreq	r1, [r4], #-3840	; 0xfffff100
    418c:	18010000 	stmdane	r1, {}	; <UNPREDICTABLE>
    4190:	0000310c 	andeq	r3, r0, ip, lsl #2
    4194:	09802000 	stmibeq	r0, {sp}
    4198:	99060000 	stmdbls	r6, {}	; <UNPREDICTABLE>
    419c:	0001050e 	andeq	r0, r1, lr, lsl #10
    41a0:	000de400 	andeq	lr, sp, r0, lsl #8
    41a4:	00004400 	andeq	r4, r0, r0, lsl #8
    41a8:	809c0100 	addshi	r0, ip, r0, lsl #2
    41ac:	21000009 	tstcs	r0, r9
    41b0:	00727470 	rsbseq	r7, r2, r0, ror r4
    41b4:	62192c01 	andsvs	r2, r9, #256	; 0x100
    41b8:	88000004 	stmdahi	r0, {r2}
    41bc:	7e000013 	mcrvc	0, 0, r0, cr0, cr3, {0}
    41c0:	22000013 	andcs	r0, r0, #19
    41c4:	00000ac1 	andeq	r0, r0, r1, asr #21
    41c8:	25102d01 	ldrcs	r2, [r0, #-3329]	; 0xfffff2ff
    41cc:	d1000000 	mrsle	r0, (UNDEF: 0)
    41d0:	cd000013 	stcgt	0, cr0, [r0, #-76]	; 0xffffffb4
    41d4:	23000013 	movwcs	r0, #19
    41d8:	00746572 	rsbseq	r6, r4, r2, ror r5
    41dc:	b1092f01 	tstlt	r9, r1, lsl #30
    41e0:	f4000005 	vst4.8	{d0-d3}, [r0], r5
    41e4:	f2000013 	vqadd.s8	d0, d0, d3
    41e8:	24000013 	strcs	r0, [r0], #-19	; 0xffffffed
    41ec:	00000af9 	strdeq	r0, [r0], -r9
    41f0:	05093001 	streq	r3, [r9, #-1]
    41f4:	6e000001 	cdpvs	0, 0, cr0, cr0, cr1, {0}
    41f8:	14000009 	strne	r0, [r0], #-9
    41fc:	00000025 	andeq	r0, r0, r5, lsr #32
    4200:	0e002500 	cfsh32eq	mvfx2, mvfx0, #0
    4204:	09800000 	stmibeq	r0, {}	; <UNPREDICTABLE>
    4208:	01260000 			; <UNDEFINED> instruction: 0x01260000
    420c:	01f30350 	mvnseq	r0, r0, asr r3
    4210:	27000051 	smlsdcs	r0, r1, r0, r0
    4214:	00000af9 	strdeq	r0, [r0], -r9
    4218:	00000af9 	strdeq	r0, [r0], -r9
    421c:	09011307 	stmdbeq	r1, {r0, r1, r2, r8, r9, ip}
    4220:	0009ac00 	andeq	sl, r9, r0, lsl #24
    4224:	15000400 	strne	r0, [r0, #-1024]	; 0xfffffc00
    4228:	04000010 	streq	r0, [r0], #-16
    422c:	00016101 	andeq	r6, r1, r1, lsl #2
    4230:	0b040c00 	bleq	107238 <__data_load__+0x105c08>
    4234:	00d60000 	sbcseq	r0, r6, r0
    4238:	0e280000 	cdpeq	0, 2, cr0, cr8, cr0, {0}
    423c:	008c0000 	addeq	r0, ip, r0
    4240:	145f0000 	ldrbne	r0, [pc], #-0	; 4248 <__data_load__+0x2c18>
    4244:	04020000 	streq	r0, [r2], #-0
    4248:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    424c:	07040300 	streq	r0, [r4, -r0, lsl #6]
    4250:	00000129 	andeq	r0, r0, r9, lsr #2
    4254:	7b050803 	blvc	146268 <__data_load__+0x144c38>
    4258:	03000000 	movweq	r0, #0
    425c:	01cb0408 	biceq	r0, fp, r8, lsl #8
    4260:	9d040000 	stcls	0, cr0, [r4, #-0]
    4264:	02000003 	andeq	r0, r0, #3
    4268:	2c17015e 	ldfcss	f0, [r7], {94}	; 0x5e
    426c:	03000000 	movweq	r0, #0
    4270:	01410601 	cmpeq	r1, r1, lsl #12
    4274:	01030000 	mrseq	r0, (UNDEF: 3)
    4278:	00013f08 	andeq	r3, r1, r8, lsl #30
    427c:	05020300 	streq	r0, [r2, #-768]	; 0xfffffd00
    4280:	000001d7 	ldrdeq	r0, [r0], -r7
    4284:	89070203 	stmdbhi	r7, {r0, r1, r9}
    4288:	03000000 	movweq	r0, #0
    428c:	00800504 	addeq	r0, r0, r4, lsl #10
    4290:	04030000 	streq	r0, [r3], #-0
    4294:	00012407 	andeq	r2, r1, r7, lsl #8
    4298:	07080300 	streq	r0, [r8, -r0, lsl #6]
    429c:	0000011f 	andeq	r0, r0, pc, lsl r1
    42a0:	0003d805 	andeq	sp, r3, r5, lsl #16
    42a4:	0e2e0300 	cdpeq	3, 2, cr0, cr14, cr0, {0}
    42a8:	0000006a 	andeq	r0, r0, sl, rrx
    42ac:	0004c505 	andeq	ip, r4, r5, lsl #10
    42b0:	0e740300 	cdpeq	3, 7, cr0, cr4, cr0, {0}
    42b4:	0000006a 	andeq	r0, r0, sl, rrx
    42b8:	a5030406 	strge	r0, [r3, #-1030]	; 0xfffffbfa
    42bc:	0000b903 	andeq	fp, r0, r3, lsl #18
    42c0:	03970700 	orrseq	r0, r7, #0, 14
    42c4:	a7030000 	strge	r0, [r3, -r0]
    42c8:	0000410c 	andeq	r4, r0, ip, lsl #2
    42cc:	03490700 	movteq	r0, #38656	; 0x9700
    42d0:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
    42d4:	0000b913 	andeq	fp, r0, r3, lsl r9
    42d8:	55080000 	strpl	r0, [r8, #-0]
    42dc:	c9000000 	stmdbgt	r0, {}	; <UNPREDICTABLE>
    42e0:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    42e4:	0000002c 	andeq	r0, r0, ip, lsr #32
    42e8:	080a0003 	stmdaeq	sl, {r0, r1}
    42ec:	ed09a203 	sfm	f2, 1, [r9, #-12]
    42f0:	0b000000 	bleq	42f8 <__data_load__+0x2cc8>
    42f4:	000004af 	andeq	r0, r0, pc, lsr #9
    42f8:	2507a403 	strcs	sl, [r7, #-1027]	; 0xfffffbfd
    42fc:	00000000 	andeq	r0, r0, r0
    4300:	0004b70b 	andeq	fp, r4, fp, lsl #14
    4304:	05a90300 	streq	r0, [r9, #768]!	; 0x300
    4308:	00000097 	muleq	r0, r7, r0
    430c:	38050004 	stmdacc	r5, {r2}
    4310:	03000004 	movweq	r0, #4
    4314:	00c903aa 	sbceq	r0, r9, sl, lsr #7
    4318:	040c0000 	streq	r0, [ip], #-0
    431c:	0004f705 	andeq	pc, r4, r5, lsl #14
    4320:	19160400 	ldmdbne	r6, {sl}
    4324:	00000071 	andeq	r0, r0, r1, ror r0
    4328:	0003fa05 	andeq	pc, r3, r5, lsl #20
    432c:	0d0c0500 	cfstr32eq	mvfx0, [ip, #-0]
    4330:	00000025 	andeq	r0, r0, r5, lsr #32
    4334:	00030c05 	andeq	r0, r3, r5, lsl #24
    4338:	1b230400 	blne	8c5340 <_bsl_base_address+0x6c3340>
    433c:	00000107 	andeq	r0, r0, r7, lsl #2
    4340:	00031d0d 	andeq	r1, r3, sp, lsl #26
    4344:	34041800 	strcc	r1, [r4], #-2048	; 0xfffff800
    4348:	00017908 	andeq	r7, r1, r8, lsl #18
    434c:	04590b00 	ldrbeq	r0, [r9], #-2816	; 0xfffff500
    4350:	36040000 	strcc	r0, [r4], -r0
    4354:	00017913 	andeq	r7, r1, r3, lsl r9
    4358:	5f0e0000 	svcpl	0x000e0000
    435c:	3704006b 	strcc	r0, [r4, -fp, rrx]
    4360:	00002507 	andeq	r2, r0, r7, lsl #10
    4364:	a10b0400 	tstge	fp, r0, lsl #8
    4368:	04000004 	streq	r0, [r0], #-4
    436c:	00250b37 	eoreq	r0, r5, r7, lsr fp
    4370:	0b080000 	bleq	204378 <_bsl_base_address+0x2378>
    4374:	00000306 	andeq	r0, r0, r6, lsl #6
    4378:	25143704 	ldrcs	r3, [r4, #-1796]	; 0xfffff8fc
    437c:	0c000000 	stceq	0, cr0, [r0], {-0}
    4380:	0005310b 	andeq	r3, r5, fp, lsl #2
    4384:	1b370400 	blne	dc538c <_bsl_base_address+0xbc338c>
    4388:	00000025 	andeq	r0, r0, r5, lsr #32
    438c:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    4390:	0b380400 	bleq	e05398 <_bsl_base_address+0xc03398>
    4394:	0000017f 	andeq	r0, r0, pc, ror r1
    4398:	040f0014 	streq	r0, [pc], #-20	; 43a0 <__data_load__+0x2d70>
    439c:	0000011f 	andeq	r0, r0, pc, lsl r1
    43a0:	0000fb08 	andeq	pc, r0, r8, lsl #22
    43a4:	00018f00 	andeq	r8, r1, r0, lsl #30
    43a8:	002c0900 	eoreq	r0, ip, r0, lsl #18
    43ac:	00000000 	andeq	r0, r0, r0
    43b0:	0003440d 	andeq	r4, r3, sp, lsl #8
    43b4:	3c042400 	cfstrscc	mvf2, [r4], {-0}
    43b8:	00021208 	andeq	r1, r2, r8, lsl #4
    43bc:	02690b00 	rsbeq	r0, r9, #0, 22
    43c0:	3e040000 	cdpcc	0, 0, cr0, cr4, cr0, {0}
    43c4:	00002509 	andeq	r2, r0, r9, lsl #10
    43c8:	cd0b0000 	stcgt	0, cr0, [fp, #-0]
    43cc:	04000004 	streq	r0, [r0], #-4
    43d0:	0025093f 	eoreq	r0, r5, pc, lsr r9
    43d4:	0b040000 	bleq	1043dc <__data_load__+0x102dac>
    43d8:	0000027e 	andeq	r0, r0, lr, ror r2
    43dc:	25094004 	strcs	r4, [r9, #-4]
    43e0:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    43e4:	0005cd0b 	andeq	ip, r5, fp, lsl #26
    43e8:	09410400 	stmdbeq	r1, {sl}^
    43ec:	00000025 	andeq	r0, r0, r5, lsr #32
    43f0:	03c40b0c 	biceq	r0, r4, #12, 22	; 0x3000
    43f4:	42040000 	andmi	r0, r4, #0
    43f8:	00002509 	andeq	r2, r0, r9, lsl #10
    43fc:	b30b1000 	movwlt	r1, #45056	; 0xb000
    4400:	04000003 	streq	r0, [r0], #-3
    4404:	00250943 	eoreq	r0, r5, r3, asr #18
    4408:	0b140000 	bleq	504410 <_bsl_base_address+0x302410>
    440c:	00000536 	andeq	r0, r0, r6, lsr r5
    4410:	25094404 	strcs	r4, [r9, #-1028]	; 0xfffffbfc
    4414:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    4418:	00041a0b 	andeq	r1, r4, fp, lsl #20
    441c:	09450400 	stmdbeq	r5, {sl}^
    4420:	00000025 	andeq	r0, r0, r5, lsr #32
    4424:	056b0b1c 	strbeq	r0, [fp, #-2844]!	; 0xfffff4e4
    4428:	46040000 	strmi	r0, [r4], -r0
    442c:	00002509 	andeq	r2, r0, r9, lsl #10
    4430:	10002000 	andne	r2, r0, r0
    4434:	0000028d 	andeq	r0, r0, sp, lsl #5
    4438:	4f040108 	svcmi	0x00040108
    443c:	00025708 	andeq	r5, r2, r8, lsl #14
    4440:	02f90b00 	rscseq	r0, r9, #0, 22
    4444:	50040000 	andpl	r0, r4, r0
    4448:	0002570a 	andeq	r5, r2, sl, lsl #14
    444c:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
    4450:	04000001 	streq	r0, [r0], #-1
    4454:	02570951 	subseq	r0, r7, #1327104	; 0x144000
    4458:	11800000 	orrne	r0, r0, r0
    445c:	000004e9 	andeq	r0, r0, r9, ror #9
    4460:	fb0a5304 	blx	29907a <_bsl_base_address+0x9707a>
    4464:	00000000 	andeq	r0, r0, r0
    4468:	02b21101 	adcseq	r1, r2, #1073741824	; 0x40000000
    446c:	56040000 	strpl	r0, [r4], -r0
    4470:	0000fb0a 	andeq	pc, r0, sl, lsl #22
    4474:	00010400 	andeq	r0, r1, r0, lsl #8
    4478:	0000f908 	andeq	pc, r0, r8, lsl #18
    447c:	00026700 	andeq	r6, r2, r0, lsl #14
    4480:	002c0900 	eoreq	r0, ip, r0, lsl #18
    4484:	001f0000 	andseq	r0, pc, r0
    4488:	0001e510 	andeq	lr, r1, r0, lsl r5
    448c:	04019000 	streq	r9, [r1], #-0
    4490:	02aa0862 	adceq	r0, sl, #6422528	; 0x620000
    4494:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
    4498:	04000004 	streq	r0, [r0], #-4
    449c:	02aa1263 	adceq	r1, sl, #805306374	; 0x30000006
    44a0:	0b000000 	bleq	44a8 <__data_load__+0x2e78>
    44a4:	00000471 	andeq	r0, r0, r1, ror r4
    44a8:	25066404 	strcs	r6, [r6, #-1028]	; 0xfffffbfc
    44ac:	04000000 	streq	r0, [r0], #-0
    44b0:	0003010b 	andeq	r0, r3, fp, lsl #2
    44b4:	09660400 	stmdbeq	r6!, {sl}^
    44b8:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
    44bc:	028d0b08 	addeq	r0, sp, #8, 22	; 0x2000
    44c0:	67040000 	strvs	r0, [r4, -r0]
    44c4:	0002121e 	andeq	r1, r2, lr, lsl r2
    44c8:	0f008800 	svceq	0x00008800
    44cc:	00026704 	andeq	r6, r2, r4, lsl #14
    44d0:	02c00800 	sbceq	r0, r0, #0, 16
    44d4:	02c00000 	sbceq	r0, r0, #0
    44d8:	2c090000 	stccs	0, cr0, [r9], {-0}
    44dc:	1f000000 	svcne	0x00000000
    44e0:	c6040f00 	strgt	r0, [r4], -r0, lsl #30
    44e4:	12000002 	andne	r0, r0, #2
    44e8:	0004240d 	andeq	r2, r4, sp, lsl #8
    44ec:	7a040800 	bvc	1064f4 <__data_load__+0x104ec4>
    44f0:	0002ef08 	andeq	lr, r2, r8, lsl #30
    44f4:	09d70b00 	ldmibeq	r7, {r8, r9, fp}^
    44f8:	7b040000 	blvc	104500 <__data_load__+0x102ed0>
    44fc:	0002ef11 	andeq	lr, r2, r1, lsl pc
    4500:	a30b0000 	movwge	r0, #45056	; 0xb000
    4504:	04000008 	streq	r0, [r0], #-8
    4508:	0025067c 	eoreq	r0, r5, ip, ror r6
    450c:	00040000 	andeq	r0, r4, r0
    4510:	0055040f 	subseq	r0, r5, pc, lsl #8
    4514:	430d0000 	movwmi	r0, #53248	; 0xd000
    4518:	68000004 	stmdavs	r0, {r2}
    451c:	3808ba04 	stmdacc	r8, {r2, r9, fp, ip, sp, pc}
    4520:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    4524:	0400705f 	streq	r7, [r0], #-95	; 0xffffffa1
    4528:	02ef12bb 	rsceq	r1, pc, #-1342177269	; 0xb000000b
    452c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    4530:	0400725f 	streq	r7, [r0], #-607	; 0xfffffda1
    4534:	002507bc 	strhteq	r0, [r5], -ip
    4538:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    453c:	0400775f 	streq	r7, [r0], #-1887	; 0xfffff8a1
    4540:	002507bd 	strhteq	r0, [r5], -sp
    4544:	0b080000 	bleq	20454c <_bsl_base_address+0x254c>
    4548:	000002ab 	andeq	r0, r0, fp, lsr #5
    454c:	5c09be04 	stcpl	14, cr11, [r9], {4}
    4550:	0c000000 	stceq	0, cr0, [r0], {-0}
    4554:	0003600b 	andeq	r6, r3, fp
    4558:	09bf0400 	ldmibeq	pc!, {sl}	; <UNPREDICTABLE>
    455c:	0000005c 	andeq	r0, r0, ip, asr r0
    4560:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    4564:	c0040066 	andgt	r0, r4, r6, rrx
    4568:	0002c711 	andeq	ip, r2, r1, lsl r7
    456c:	380b1000 	stmdacc	fp, {ip}
    4570:	04000002 	streq	r0, [r0], #-2
    4574:	002507c1 	eoreq	r0, r5, r1, asr #15
    4578:	0b180000 	bleq	604580 <_bsl_base_address+0x402580>
    457c:	0000029b 	muleq	r0, fp, r2
    4580:	f90ac804 			; <UNDEFINED> instruction: 0xf90ac804
    4584:	1c000000 	stcne	0, cr0, [r0], {-0}
    4588:	0003340b 	andeq	r3, r3, fp, lsl #8
    458c:	1dca0400 	cfstrdne	mvd0, [sl]
    4590:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
    4594:	03ac0b20 			; <UNDEFINED> instruction: 0x03ac0b20
    4598:	cc040000 	stcgt	0, cr0, [r4], {-0}
    459c:	0005e61d 	andeq	lr, r5, sp, lsl r6
    45a0:	bf0b2400 	svclt	0x000b2400
    45a4:	04000004 	streq	r0, [r0], #-4
    45a8:	060a0dcf 	streq	r0, [sl], -pc, asr #27
    45ac:	0b280000 	bleq	a045b4 <_bsl_base_address+0x8025b4>
    45b0:	00000585 	andeq	r0, r0, r5, lsl #11
    45b4:	2409d004 	strcs	sp, [r9], #-4
    45b8:	2c000006 	stccs	0, cr0, [r0], {6}
    45bc:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    45c0:	11d30400 	bicsne	r0, r3, r0, lsl #8
    45c4:	000002c7 	andeq	r0, r0, r7, asr #5
    45c8:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 37a0 <__data_load__+0x2170>
    45cc:	d4040070 	strle	r0, [r4], #-112	; 0xffffff90
    45d0:	0002ef12 	andeq	lr, r2, r2, lsl pc
    45d4:	5f0e3800 	svcpl	0x000e3800
    45d8:	04007275 	streq	r7, [r0], #-629	; 0xfffffd8b
    45dc:	002507d5 	ldrdeq	r0, [r5], -r5	; <UNPREDICTABLE>
    45e0:	0b3c0000 	bleq	f045e8 <_bsl_base_address+0xd025e8>
    45e4:	00000278 	andeq	r0, r0, r8, ror r2
    45e8:	2a11d804 	bcs	47a600 <_bsl_base_address+0x278600>
    45ec:	40000006 	andmi	r0, r0, r6
    45f0:	00055d0b 	andeq	r5, r5, fp, lsl #26
    45f4:	11d90400 	bicsne	r0, r9, r0, lsl #8
    45f8:	0000063a 	andeq	r0, r0, sl, lsr r6
    45fc:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    4600:	dc040062 	stcle	0, cr0, [r4], {98}	; 0x62
    4604:	0002c711 	andeq	ip, r2, r1, lsl r7
    4608:	c10b4400 	tstgt	fp, r0, lsl #8
    460c:	04000002 	streq	r0, [r0], #-2
    4610:	002507df 	ldrdeq	r0, [r5], -pc	; <UNPREDICTABLE>
    4614:	0b4c0000 	bleq	130461c <_bsl_base_address+0x110261c>
    4618:	000002d2 	ldrdeq	r0, [r0], -r2
    461c:	7f0ae004 	svcvc	0x000ae004
    4620:	50000000 	andpl	r0, r0, r0
    4624:	0006d00b 	andeq	sp, r6, fp
    4628:	12e30400 	rscne	r0, r3, #0, 8
    462c:	00000456 	andeq	r0, r0, r6, asr r4
    4630:	08780b54 	ldmdaeq	r8!, {r2, r4, r6, r8, r9, fp}^
    4634:	e7040000 	str	r0, [r4, -r0]
    4638:	0001130c 	andeq	r1, r1, ip, lsl #6
    463c:	4b0b5800 	blmi	2da644 <_bsl_base_address+0xd8644>
    4640:	04000004 	streq	r0, [r0], #-4
    4644:	00ed0ee9 	rsceq	r0, sp, r9, ror #29
    4648:	0b5c0000 	bleq	1704650 <_bsl_base_address+0x1502650>
    464c:	000003a4 	andeq	r0, r0, r4, lsr #7
    4650:	2509ea04 	strcs	lr, [r9, #-2564]	; 0xfffff5fc
    4654:	64000000 	strvs	r0, [r0], #-0
    4658:	00251300 	eoreq	r1, r5, r0, lsl #6
    465c:	04560000 	ldrbeq	r0, [r6], #-0
    4660:	56140000 	ldrpl	r0, [r4], -r0
    4664:	14000004 	strne	r0, [r0], #-4
    4668:	000000f9 	strdeq	r0, [r0], -r9
    466c:	0005aa14 	andeq	sl, r5, r4, lsl sl
    4670:	00251400 	eoreq	r1, r5, r0, lsl #8
    4674:	0f000000 	svceq	0x00000000
    4678:	00046104 	andeq	r6, r4, r4, lsl #2
    467c:	04561500 	ldrbeq	r1, [r6], #-1280	; 0xfffffb00
    4680:	e0160000 	ands	r0, r6, r0
    4684:	2800000b 	stmdacs	r0, {r0, r1, r3}
    4688:	02650404 	rsbeq	r0, r5, #4, 8	; 0x4000000
    468c:	0005aa08 	andeq	sl, r5, r8, lsl #20
    4690:	04131700 	ldreq	r1, [r3], #-1792	; 0xfffff900
    4694:	67040000 	strvs	r0, [r4, -r0]
    4698:	00250702 	eoreq	r0, r5, r2, lsl #14
    469c:	17000000 	strne	r0, [r0, -r0]
    46a0:	000002ba 			; <UNDEFINED> instruction: 0x000002ba
    46a4:	0b026c04 	bleq	9f6bc <__data_load__+0x9e08c>
    46a8:	00000696 	muleq	r0, r6, r6
    46ac:	03501704 	cmpeq	r0, #4, 14	; 0x100000
    46b0:	6c040000 	stcvs	0, cr0, [r4], {-0}
    46b4:	06961402 	ldreq	r1, [r6], r2, lsl #8
    46b8:	17080000 	strne	r0, [r8, -r0]
    46bc:	00000315 	andeq	r0, r0, r5, lsl r3
    46c0:	1e026c04 	cdpne	12, 0, cr6, cr2, cr4, {0}
    46c4:	00000696 	muleq	r0, r6, r6
    46c8:	046c170c 	strbteq	r1, [ip], #-1804	; 0xfffff8f4
    46cc:	6e040000 	cdpvs	0, 0, cr0, cr4, cr0, {0}
    46d0:	00250802 	eoreq	r0, r5, r2, lsl #16
    46d4:	17100000 	ldrne	r0, [r0, -r0]
    46d8:	0000020d 	andeq	r0, r0, sp, lsl #4
    46dc:	08026f04 	stmdaeq	r2, {r2, r8, r9, sl, fp, sp, lr}
    46e0:	00000896 	muleq	r0, r6, r8
    46e4:	04881714 	streq	r1, [r8], #1812	; 0x714
    46e8:	72040000 	andvc	r0, r4, #0
    46ec:	00250702 	eoreq	r0, r5, r2, lsl #14
    46f0:	17300000 	ldrne	r0, [r0, -r0]!
    46f4:	00000476 	andeq	r0, r0, r6, ror r4
    46f8:	16027304 	strne	r7, [r2], -r4, lsl #6
    46fc:	000008ab 	andeq	r0, r0, fp, lsr #17
    4700:	03cd1734 	biceq	r1, sp, #52, 14	; 0xd00000
    4704:	75040000 	strvc	r0, [r4, #-0]
    4708:	00250702 	eoreq	r0, r5, r2, lsl #14
    470c:	17380000 	ldrne	r0, [r8, -r0]!
    4710:	0000047e 	andeq	r0, r0, lr, ror r4
    4714:	0a027704 	beq	a232c <__data_load__+0xa0cfc>
    4718:	000008bc 			; <UNDEFINED> instruction: 0x000008bc
    471c:	038f173c 	orreq	r1, pc, #60, 14	; 0xf00000
    4720:	7a040000 	bvc	104728 <__data_load__+0x1030f8>
    4724:	01791302 	cmneq	r9, r2, lsl #6
    4728:	17400000 	strbne	r0, [r0, -r0]
    472c:	0000033a 	andeq	r0, r0, sl, lsr r3
    4730:	07027b04 	streq	r7, [r2, -r4, lsl #22]
    4734:	00000025 	andeq	r0, r0, r5, lsr #32
    4738:	05c81744 	strbeq	r1, [r8, #1860]	; 0x744
    473c:	7c040000 	stcvc	0, cr0, [r4], {-0}
    4740:	01791302 	cmneq	r9, r2, lsl #6
    4744:	17480000 	strbne	r0, [r8, -r0]
    4748:	000003f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    474c:	14027d04 	strne	r7, [r2], #-3332	; 0xfffff2fc
    4750:	000008c2 	andeq	r0, r0, r2, asr #17
    4754:	0358174c 	cmpeq	r8, #76, 14	; 0x1300000
    4758:	80040000 	andhi	r0, r4, r0
    475c:	00250702 	eoreq	r0, r5, r2, lsl #14
    4760:	17500000 	ldrbne	r0, [r0, -r0]
    4764:	000002ca 	andeq	r0, r0, sl, asr #5
    4768:	09028104 	stmdbeq	r2, {r2, r8, pc}
    476c:	000005aa 	andeq	r0, r0, sl, lsr #11
    4770:	040c1754 	streq	r1, [ip], #-1876	; 0xfffff8ac
    4774:	a4040000 	strge	r0, [r4], #-0
    4778:	08710702 	ldmdaeq	r1!, {r1, r8, r9, sl}^
    477c:	18580000 	ldmdane	r8, {}^	; <UNPREDICTABLE>
    4780:	000001e5 	andeq	r0, r0, r5, ror #3
    4784:	1302a804 	movwne	sl, #10244	; 0x2804
    4788:	000002aa 	andeq	r0, r0, sl, lsr #5
    478c:	6d180148 	ldfvss	f0, [r8, #-288]	; 0xfffffee0
    4790:	04000003 	streq	r0, [r0], #-3
    4794:	671202a9 	ldrvs	r0, [r2, -r9, lsr #5]
    4798:	4c000002 	stcmi	0, cr0, [r0], {2}
    479c:	05531801 	ldrbeq	r1, [r3, #-2049]	; 0xfffff7ff
    47a0:	ad040000 	stcge	0, cr0, [r4, #-0]
    47a4:	08d30c02 	ldmeq	r3, {r1, sl, fp}^
    47a8:	02dc0000 	sbcseq	r0, ip, #0
    47ac:	0002a318 	andeq	sl, r2, r8, lsl r3
    47b0:	02b20400 	adcseq	r0, r2, #0, 8
    47b4:	00065710 	andeq	r5, r6, r0, lsl r7
    47b8:	1802e000 	stmdane	r2, {sp, lr, pc}
    47bc:	00000288 	andeq	r0, r0, r8, lsl #5
    47c0:	0a02b404 	beq	b17d8 <__data_load__+0xb01a8>
    47c4:	000008df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    47c8:	0f0002ec 	svceq	0x000002ec
    47cc:	0005b004 	andeq	fp, r5, r4
    47d0:	08010300 	stmdaeq	r1, {r8, r9}
    47d4:	00000148 	andeq	r0, r0, r8, asr #2
    47d8:	0005b015 	andeq	fp, r5, r5, lsl r0
    47dc:	38040f00 	stmdacc	r4, {r8, r9, sl, fp}
    47e0:	13000004 	movwne	r0, #4
    47e4:	00000025 	andeq	r0, r0, r5, lsr #32
    47e8:	000005e0 	andeq	r0, r0, r0, ror #11
    47ec:	00045614 	andeq	r5, r4, r4, lsl r6
    47f0:	00f91400 	rscseq	r1, r9, r0, lsl #8
    47f4:	e0140000 	ands	r0, r4, r0
    47f8:	14000005 	strne	r0, [r0], #-5
    47fc:	00000025 	andeq	r0, r0, r5, lsr #32
    4800:	b7040f00 	strlt	r0, [r4, -r0, lsl #30]
    4804:	0f000005 	svceq	0x00000005
    4808:	0005c204 	andeq	ip, r5, r4, lsl #4
    480c:	008b1300 	addeq	r1, fp, r0, lsl #6
    4810:	060a0000 	streq	r0, [sl], -r0
    4814:	56140000 	ldrpl	r0, [r4], -r0
    4818:	14000004 	strne	r0, [r0], #-4
    481c:	000000f9 	strdeq	r0, [r0], -r9
    4820:	00008b14 	andeq	r8, r0, r4, lsl fp
    4824:	00251400 	eoreq	r1, r5, r0, lsl #8
    4828:	0f000000 	svceq	0x00000000
    482c:	0005ec04 	andeq	lr, r5, r4, lsl #24
    4830:	00251300 	eoreq	r1, r5, r0, lsl #6
    4834:	06240000 	strteq	r0, [r4], -r0
    4838:	56140000 	ldrpl	r0, [r4], -r0
    483c:	14000004 	strne	r0, [r0], #-4
    4840:	000000f9 	strdeq	r0, [r0], -r9
    4844:	10040f00 	andne	r0, r4, r0, lsl #30
    4848:	08000006 	stmdaeq	r0, {r1, r2}
    484c:	00000055 	andeq	r0, r0, r5, asr r0
    4850:	0000063a 	andeq	r0, r0, sl, lsr r6
    4854:	00002c09 	andeq	r2, r0, r9, lsl #24
    4858:	08000200 	stmdaeq	r0, {r9}
    485c:	00000055 	andeq	r0, r0, r5, asr r0
    4860:	0000064a 	andeq	r0, r0, sl, asr #12
    4864:	00002c09 	andeq	r2, r0, r9, lsl #24
    4868:	04000000 	streq	r0, [r0], #-0
    486c:	00000431 	andeq	r0, r0, r1, lsr r4
    4870:	1a012404 	bne	4d888 <__data_load__+0x4c258>
    4874:	000002f5 	strdeq	r0, [r0], -r5
    4878:	000c1f19 	andeq	r1, ip, r9, lsl pc
    487c:	28040c00 	stmdacs	r4, {sl, fp}
    4880:	06900801 	ldreq	r0, [r0], r1, lsl #16
    4884:	59170000 	ldmdbpl	r7, {}	; <UNPREDICTABLE>
    4888:	04000004 	streq	r0, [r0], #-4
    488c:	9011012a 	andsls	r0, r1, sl, lsr #2
    4890:	00000006 	andeq	r0, r0, r6
    4894:	00036617 	andeq	r6, r3, r7, lsl r6
    4898:	012b0400 			; <UNDEFINED> instruction: 0x012b0400
    489c:	00002507 	andeq	r2, r0, r7, lsl #10
    48a0:	2b170400 	blcs	5c58a8 <_bsl_base_address+0x3c38a8>
    48a4:	04000004 	streq	r0, [r0], #-4
    48a8:	960b012c 	strls	r0, [fp], -ip, lsr #2
    48ac:	08000006 	stmdaeq	r0, {r1, r2}
    48b0:	57040f00 	strpl	r0, [r4, -r0, lsl #30]
    48b4:	0f000006 	svceq	0x00000006
    48b8:	00064a04 	andeq	r4, r6, r4, lsl #20
    48bc:	02051900 	andeq	r1, r5, #0, 18
    48c0:	040e0000 	streq	r0, [lr], #-0
    48c4:	d5080144 	strle	r0, [r8, #-324]	; 0xfffffebc
    48c8:	17000006 	strne	r0, [r0, -r6]
    48cc:	000004a9 	andeq	r0, r0, r9, lsr #9
    48d0:	12014504 	andne	r4, r1, #4, 10	; 0x1000000
    48d4:	000006d5 	ldrdeq	r0, [r0], -r5
    48d8:	04d61700 	ldrbeq	r1, [r6], #1792	; 0x700
    48dc:	46040000 	strmi	r0, [r4], -r0
    48e0:	06d51201 	ldrbeq	r1, [r5], r1, lsl #4
    48e4:	17060000 	strne	r0, [r6, -r0]
    48e8:	000004f2 	strdeq	r0, [r0], -r2
    48ec:	12014704 	andne	r4, r1, #4, 14	; 0x100000
    48f0:	00000063 	andeq	r0, r0, r3, rrx
    48f4:	6308000c 	movwvs	r0, #32780	; 0x800c
    48f8:	e5000000 	str	r0, [r0, #-0]
    48fc:	09000006 	stmdbeq	r0, {r1, r2}
    4900:	0000002c 	andeq	r0, r0, ip, lsr #32
    4904:	d01a0002 	andsle	r0, sl, r2
    4908:	07028504 	streq	r8, [r2, -r4, lsl #10]
    490c:	000007fa 	strdeq	r0, [r0], -sl
    4910:	00052417 	andeq	r2, r5, r7, lsl r4
    4914:	02870400 	addeq	r0, r7, #0, 8
    4918:	00002c18 	andeq	r2, r0, r8, lsl ip
    491c:	dc170000 	ldcle	0, cr0, [r7], {-0}
    4920:	04000004 	streq	r0, [r0], #-4
    4924:	aa120288 	bge	48534c <_bsl_base_address+0x28334c>
    4928:	04000005 	streq	r0, [r0], #-5
    492c:	00038217 	andeq	r8, r3, r7, lsl r2
    4930:	02890400 	addeq	r0, r9, #0, 8
    4934:	0007fa10 	andeq	pc, r7, r0, lsl sl	; <UNPREDICTABLE>
    4938:	76170800 	ldrvc	r0, [r7], -r0, lsl #16
    493c:	04000005 	streq	r0, [r0], #-5
    4940:	8f17028a 	svchi	0x0017028a
    4944:	24000001 	strcs	r0, [r0], #-1
    4948:	00032517 	andeq	r2, r3, r7, lsl r5
    494c:	028b0400 	addeq	r0, fp, #0, 8
    4950:	0000250f 	andeq	r2, r0, pc, lsl #10
    4954:	54174800 	ldrpl	r4, [r7], #-2048	; 0xfffff800
    4958:	04000004 	streq	r0, [r0], #-4
    495c:	782c028c 	stmdavc	ip!, {r2, r3, r7, r9}
    4960:	50000000 	andpl	r0, r0, r0
    4964:	00058c17 	andeq	r8, r5, r7, lsl ip
    4968:	028d0400 	addeq	r0, sp, #0, 8
    496c:	00069c1a 	andeq	r9, r6, sl, lsl ip
    4970:	5f175800 	svcpl	0x00175800
    4974:	04000004 	streq	r0, [r0], #-4
    4978:	ed16028e 	lfm	f0, 4, [r6, #-568]	; 0xfffffdc8
    497c:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    4980:	0005ba17 	andeq	fp, r5, r7, lsl sl
    4984:	028f0400 	addeq	r0, pc, #0, 8
    4988:	0000ed16 	andeq	lr, r0, r6, lsl sp
    498c:	5b177000 	blpl	5e0994 <_bsl_base_address+0x3de994>
    4990:	04000002 	streq	r0, [r0], #-2
    4994:	ed160290 	lfm	f0, 4, [r6, #-576]	; 0xfffffdc0
    4998:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    499c:	00054917 	andeq	r4, r5, r7, lsl r9
    49a0:	02910400 	addseq	r0, r1, #0, 8
    49a4:	00080a10 	andeq	r0, r8, r0, lsl sl
    49a8:	76178000 	ldrvc	r8, [r7], -r0
    49ac:	04000003 	streq	r0, [r0], #-3
    49b0:	1a100292 	bne	405400 <_bsl_base_address+0x203400>
    49b4:	88000008 	stmdahi	r0, {r3}
    49b8:	0004ff17 	andeq	pc, r4, r7, lsl pc	; <UNPREDICTABLE>
    49bc:	02930400 	addseq	r0, r3, #0, 8
    49c0:	0000250f 	andeq	r2, r0, pc, lsl #10
    49c4:	eb17a000 	bl	5ec9cc <_bsl_base_address+0x3ea9cc>
    49c8:	04000002 	streq	r0, [r0], #-2
    49cc:	ed160294 	lfm	f0, 4, [r6, #-592]	; 0xfffffdb0
    49d0:	a4000000 	strge	r0, [r0], #-0
    49d4:	00024c17 	andeq	r4, r2, r7, lsl ip
    49d8:	02950400 	addseq	r0, r5, #0, 8
    49dc:	0000ed16 	andeq	lr, r0, r6, lsl sp
    49e0:	da17ac00 	ble	5ef9e8 <_bsl_base_address+0x3ed9e8>
    49e4:	04000002 	streq	r0, [r0], #-2
    49e8:	ed160296 	lfm	f0, 4, [r6, #-600]	; 0xfffffda8
    49ec:	b4000000 	strlt	r0, [r0], #-0
    49f0:	00021817 	andeq	r1, r2, r7, lsl r8
    49f4:	02970400 	addseq	r0, r7, #0, 8
    49f8:	0000ed16 	andeq	lr, r0, r6, lsl sp
    49fc:	2717bc00 	ldrcs	fp, [r7, -r0, lsl #24]
    4a00:	04000002 	streq	r0, [r0], #-2
    4a04:	ed160298 	lfm	f0, 4, [r6, #-608]	; 0xfffffda0
    4a08:	c4000000 	strgt	r0, [r0], #-0
    4a0c:	00041117 	andeq	r1, r4, r7, lsl r1
    4a10:	02990400 	addseq	r0, r9, #0, 8
    4a14:	00002508 	andeq	r2, r0, r8, lsl #10
    4a18:	0800cc00 	stmdaeq	r0, {sl, fp, lr, pc}
    4a1c:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    4a20:	0000080a 	andeq	r0, r0, sl, lsl #16
    4a24:	00002c09 	andeq	r2, r0, r9, lsl #24
    4a28:	08001900 	stmdaeq	r0, {r8, fp, ip}
    4a2c:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    4a30:	0000081a 	andeq	r0, r0, sl, lsl r8
    4a34:	00002c09 	andeq	r2, r0, r9, lsl #24
    4a38:	08000700 	stmdaeq	r0, {r8, r9, sl}
    4a3c:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    4a40:	0000082a 	andeq	r0, r0, sl, lsr #16
    4a44:	00002c09 	andeq	r2, r0, r9, lsl #24
    4a48:	1a001700 	bne	a650 <__data_load__+0x9020>
    4a4c:	029e04f0 	addseq	r0, lr, #240, 8	; 0xf0000000
    4a50:	00085107 	andeq	r5, r8, r7, lsl #2
    4a54:	03bd1700 			; <UNDEFINED> instruction: 0x03bd1700
    4a58:	a1040000 	mrsge	r0, (UNDEF: 4)
    4a5c:	08511b02 	ldmdaeq	r1, {r1, r8, r9, fp, ip}^
    4a60:	17000000 	strne	r0, [r0, -r0]
    4a64:	00000540 	andeq	r0, r0, r0, asr #10
    4a68:	1802a204 	stmdane	r2, {r2, r9, sp, pc}
    4a6c:	00000861 	andeq	r0, r0, r1, ror #16
    4a70:	ef080078 	svc	0x00080078
    4a74:	61000002 	tstvs	r0, r2
    4a78:	09000008 	stmdbeq	r0, {r3}
    4a7c:	0000002c 	andeq	r0, r0, ip, lsr #32
    4a80:	2c08001d 	stccs	0, cr0, [r8], {29}
    4a84:	71000000 	mrsvc	r0, (UNDEF: 0)
    4a88:	09000008 	stmdbeq	r0, {r3}
    4a8c:	0000002c 	andeq	r0, r0, ip, lsr #32
    4a90:	f01b001d 			; <UNDEFINED> instruction: 0xf01b001d
    4a94:	03028304 	movweq	r8, #8964	; 0x2304
    4a98:	00000896 	muleq	r0, r6, r8
    4a9c:	000be01c 	andeq	lr, fp, ip, lsl r0
    4aa0:	029a0400 	addseq	r0, sl, #0, 8
    4aa4:	0006e50b 	andeq	lr, r6, fp, lsl #10
    4aa8:	05631c00 	strbeq	r1, [r3, #-3072]!	; 0xfffff400
    4aac:	a3040000 	movwge	r0, #16384	; 0x4000
    4ab0:	082a0b02 	stmdaeq	sl!, {r1, r8, r9, fp}
    4ab4:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    4ab8:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    4abc:	000008a6 	andeq	r0, r0, r6, lsr #17
    4ac0:	00002c09 	andeq	r2, r0, r9, lsl #24
    4ac4:	1d001800 	stcne	8, cr1, [r0, #-0]
    4ac8:	00000241 	andeq	r0, r0, r1, asr #4
    4acc:	08a6040f 	stmiaeq	r6!, {r0, r1, r2, r3, sl}
    4ad0:	bc1e0000 	ldclt	0, cr0, [lr], {-0}
    4ad4:	14000008 	strne	r0, [r0], #-8
    4ad8:	00000456 	andeq	r0, r0, r6, asr r4
    4adc:	b1040f00 	tstlt	r4, r0, lsl #30
    4ae0:	0f000008 	svceq	0x00000008
    4ae4:	00017904 	andeq	r7, r1, r4, lsl #18
    4ae8:	08d31e00 	ldmeq	r3, {r9, sl, fp, ip}^
    4aec:	25140000 	ldrcs	r0, [r4, #-0]
    4af0:	00000000 	andeq	r0, r0, r0
    4af4:	08d9040f 	ldmeq	r9, {r0, r1, r2, r3, sl}^
    4af8:	040f0000 	streq	r0, [pc], #-0	; 4b00 <__data_load__+0x34d0>
    4afc:	000008c8 	andeq	r0, r0, r8, asr #17
    4b00:	00064a08 	andeq	r4, r6, r8, lsl #20
    4b04:	0008ef00 	andeq	lr, r8, r0, lsl #30
    4b08:	002c0900 	eoreq	r0, ip, r0, lsl #18
    4b0c:	00020000 	andeq	r0, r2, r0
    4b10:	00050c1f 	andeq	r0, r5, pc, lsl ip
    4b14:	03340400 	teqeq	r4, #0, 8
    4b18:	00045c1d 	andeq	r5, r4, sp, lsl ip
    4b1c:	009c2000 	addseq	r2, ip, r0
    4b20:	01070000 	mrseq	r0, (UNDEF: 7)
    4b24:	00000055 	andeq	r0, r0, r5, asr r0
    4b28:	21060506 	tstcs	r6, r6, lsl #10
    4b2c:	21000009 	tstcs	r0, r9
    4b30:	000001e1 	andeq	r0, r0, r1, ror #3
    4b34:	01ed2100 	mvneq	r2, r0, lsl #2
    4b38:	21010000 	mrscs	r0, (UNDEF: 1)
    4b3c:	00000136 	andeq	r0, r0, r6, lsr r1
    4b40:	4d220002 	stcmi	0, cr0, [r2, #-8]!
    4b44:	01000001 	tsteq	r0, r1
    4b48:	00250144 	eoreq	r0, r5, r4, asr #2
    4b4c:	0e280000 	cdpeq	0, 2, cr0, cr8, cr0, {0}
    4b50:	008c0000 	addeq	r0, ip, r0
    4b54:	9c010000 	stcls	0, cr0, [r1], {-0}
    4b58:	000009a9 	andeq	r0, r0, r9, lsr #19
    4b5c:	000aff23 	andeq	pc, sl, r3, lsr #30
    4b60:	1a440100 	bne	1104f68 <_bsl_base_address+0xf02f68>
    4b64:	00000025 	andeq	r0, r0, r5, lsr #32
    4b68:	00001413 	andeq	r1, r0, r3, lsl r4
    4b6c:	00001407 	andeq	r1, r0, r7, lsl #8
    4b70:	006e6624 	rsbeq	r6, lr, r4, lsr #12
    4b74:	c0094501 	andgt	r4, r9, r1, lsl #10
    4b78:	01000002 	tsteq	r0, r2
    4b7c:	72612551 	rsbvc	r2, r1, #339738624	; 0x14400000
    4b80:	46010067 	strmi	r0, [r1], -r7, rrx
    4b84:	0000f908 	andeq	pc, r0, r8, lsl #18
    4b88:	00147200 	andseq	r7, r4, r0, lsl #4
    4b8c:	00146600 	andseq	r6, r4, r0, lsl #12
    4b90:	00642500 	rsbeq	r2, r4, r0, lsl #10
    4b94:	f9084701 			; <UNDEFINED> instruction: 0xf9084701
    4b98:	d0000000 	andle	r0, r0, r0
    4b9c:	c4000014 	strgt	r0, [r0], #-20	; 0xffffffec
    4ba0:	26000014 			; <UNDEFINED> instruction: 0x26000014
    4ba4:	00000296 	muleq	r0, r6, r2
    4ba8:	a91a4901 	ldmdbge	sl, {r0, r8, fp, lr}
    4bac:	24000009 	strcs	r0, [r0], #-9
    4bb0:	22000015 	andcs	r0, r0, #21
    4bb4:	27000015 	smladcs	r0, r5, r0, r0
    4bb8:	4a010070 	bmi	44d80 <__data_load__+0x43750>
    4bbc:	0002aa1c 	andeq	sl, r2, ip, lsl sl
    4bc0:	00153c00 	andseq	r3, r5, r0, lsl #24
    4bc4:	00153a00 	andseq	r3, r5, r0, lsl #20
    4bc8:	040f0000 	streq	r0, [pc], #-0	; 4bd0 <__data_load__+0x35a0>
    4bcc:	00000212 	andeq	r0, r0, r2, lsl r2
    4bd0:	000a3500 	andeq	r3, sl, r0, lsl #10
    4bd4:	54000400 	strpl	r0, [r0], #-1024	; 0xfffffc00
    4bd8:	04000012 	streq	r0, [r0], #-18	; 0xffffffee
    4bdc:	00016101 	andeq	r6, r1, r1, lsl #2
    4be0:	0b450c00 	bleq	1147be8 <_bsl_base_address+0xf45be8>
    4be4:	00d60000 	sbcseq	r0, r6, r0
    4be8:	00800000 	addeq	r0, r0, r0
    4bec:	00000000 	andeq	r0, r0, r0
    4bf0:	15ef0000 	strbne	r0, [pc, #0]!	; 4bf8 <__data_load__+0x35c8>
    4bf4:	04020000 	streq	r0, [r2], #-0
    4bf8:	00012907 	andeq	r2, r1, r7, lsl #18
    4bfc:	05040300 	streq	r0, [r4, #-768]	; 0xfffffd00
    4c00:	00746e69 	rsbseq	r6, r4, r9, ror #28
    4c04:	7b050802 	blvc	146c14 <__data_load__+0x1455e4>
    4c08:	02000000 	andeq	r0, r0, #0
    4c0c:	01cb0408 	biceq	r0, fp, r8, lsl #8
    4c10:	9d040000 	stcls	0, cr0, [r4, #-0]
    4c14:	02000003 	andeq	r0, r0, #3
    4c18:	2517015e 	ldrcs	r0, [r7, #-350]	; 0xfffffea2
    4c1c:	02000000 	andeq	r0, r0, #0
    4c20:	01410601 	cmpeq	r1, r1, lsl #12
    4c24:	01020000 	mrseq	r0, (UNDEF: 2)
    4c28:	00013f08 	andeq	r3, r1, r8, lsl #30
    4c2c:	05020200 	streq	r0, [r2, #-512]	; 0xfffffe00
    4c30:	000001d7 	ldrdeq	r0, [r0], -r7
    4c34:	89070202 	stmdbhi	r7, {r1, r9}
    4c38:	02000000 	andeq	r0, r0, #0
    4c3c:	00800504 	addeq	r0, r0, r4, lsl #10
    4c40:	04020000 	streq	r0, [r2], #-0
    4c44:	00012407 	andeq	r2, r1, r7, lsl #8
    4c48:	07080200 	streq	r0, [r8, -r0, lsl #4]
    4c4c:	0000011f 	andeq	r0, r0, pc, lsl r1
    4c50:	0003d805 	andeq	sp, r3, r5, lsl #16
    4c54:	0e2e0300 	cdpeq	3, 2, cr0, cr14, cr0, {0}
    4c58:	0000006a 	andeq	r0, r0, sl, rrx
    4c5c:	0004c505 	andeq	ip, r4, r5, lsl #10
    4c60:	0e740300 	cdpeq	3, 7, cr0, cr4, cr0, {0}
    4c64:	0000006a 	andeq	r0, r0, sl, rrx
    4c68:	a5030406 	strge	r0, [r3, #-1030]	; 0xfffffbfa
    4c6c:	0000b903 	andeq	fp, r0, r3, lsl #18
    4c70:	03970700 	orrseq	r0, r7, #0, 14
    4c74:	a7030000 	strge	r0, [r3, -r0]
    4c78:	0000410c 	andeq	r4, r0, ip, lsl #2
    4c7c:	03490700 	movteq	r0, #38656	; 0x9700
    4c80:	a8030000 	stmdage	r3, {}	; <UNPREDICTABLE>
    4c84:	0000b913 	andeq	fp, r0, r3, lsl r9
    4c88:	55080000 	strpl	r0, [r8, #-0]
    4c8c:	c9000000 	stmdbgt	r0, {}	; <UNPREDICTABLE>
    4c90:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    4c94:	00000025 	andeq	r0, r0, r5, lsr #32
    4c98:	080a0003 	stmdaeq	sl, {r0, r1}
    4c9c:	ed09a203 	sfm	f2, 1, [r9, #-12]
    4ca0:	0b000000 	bleq	4ca8 <__data_load__+0x3678>
    4ca4:	000004af 	andeq	r0, r0, pc, lsr #9
    4ca8:	2c07a403 	cfstrscs	mvf10, [r7], {3}
    4cac:	00000000 	andeq	r0, r0, r0
    4cb0:	0004b70b 	andeq	fp, r4, fp, lsl #14
    4cb4:	05a90300 	streq	r0, [r9, #768]!	; 0x300
    4cb8:	00000097 	muleq	r0, r7, r0
    4cbc:	38050004 	stmdacc	r5, {r2}
    4cc0:	03000004 	movweq	r0, #4
    4cc4:	00c903aa 	sbceq	r0, r9, sl, lsr #7
    4cc8:	040c0000 	streq	r0, [ip], #-0
    4ccc:	0004f705 	andeq	pc, r4, r5, lsl #14
    4cd0:	19160400 	ldmdbne	r6, {sl}
    4cd4:	00000071 	andeq	r0, r0, r1, ror r0
    4cd8:	0003fa05 	andeq	pc, r3, r5, lsl #20
    4cdc:	0d0c0500 	cfstr32eq	mvfx0, [ip, #-0]
    4ce0:	0000002c 	andeq	r0, r0, ip, lsr #32
    4ce4:	00030c05 	andeq	r0, r3, r5, lsl #24
    4ce8:	1b230400 	blne	8c5cf0 <_bsl_base_address+0x6c3cf0>
    4cec:	00000107 	andeq	r0, r0, r7, lsl #2
    4cf0:	00031d0d 	andeq	r1, r3, sp, lsl #26
    4cf4:	34041800 	strcc	r1, [r4], #-2048	; 0xfffff800
    4cf8:	00017908 	andeq	r7, r1, r8, lsl #18
    4cfc:	04590b00 	ldrbeq	r0, [r9], #-2816	; 0xfffff500
    4d00:	36040000 	strcc	r0, [r4], -r0
    4d04:	00017913 	andeq	r7, r1, r3, lsl r9
    4d08:	5f0e0000 	svcpl	0x000e0000
    4d0c:	3704006b 	strcc	r0, [r4, -fp, rrx]
    4d10:	00002c07 	andeq	r2, r0, r7, lsl #24
    4d14:	a10b0400 	tstge	fp, r0, lsl #8
    4d18:	04000004 	streq	r0, [r0], #-4
    4d1c:	002c0b37 	eoreq	r0, ip, r7, lsr fp
    4d20:	0b080000 	bleq	204d28 <_bsl_base_address+0x2d28>
    4d24:	00000306 	andeq	r0, r0, r6, lsl #6
    4d28:	2c143704 	ldccs	7, cr3, [r4], {4}
    4d2c:	0c000000 	stceq	0, cr0, [r0], {-0}
    4d30:	0005310b 	andeq	r3, r5, fp, lsl #2
    4d34:	1b370400 	blne	dc5d3c <_bsl_base_address+0xbc3d3c>
    4d38:	0000002c 	andeq	r0, r0, ip, lsr #32
    4d3c:	785f0e10 	ldmdavc	pc, {r4, r9, sl, fp}^	; <UNPREDICTABLE>
    4d40:	0b380400 	bleq	e05d48 <_bsl_base_address+0xc03d48>
    4d44:	0000017f 	andeq	r0, r0, pc, ror r1
    4d48:	040f0014 	streq	r0, [pc], #-20	; 4d50 <__data_load__+0x3720>
    4d4c:	0000011f 	andeq	r0, r0, pc, lsl r1
    4d50:	0000fb08 	andeq	pc, r0, r8, lsl #22
    4d54:	00018f00 	andeq	r8, r1, r0, lsl #30
    4d58:	00250900 	eoreq	r0, r5, r0, lsl #18
    4d5c:	00000000 	andeq	r0, r0, r0
    4d60:	0003440d 	andeq	r4, r3, sp, lsl #8
    4d64:	3c042400 	cfstrscc	mvf2, [r4], {-0}
    4d68:	00021208 	andeq	r1, r2, r8, lsl #4
    4d6c:	02690b00 	rsbeq	r0, r9, #0, 22
    4d70:	3e040000 	cdpcc	0, 0, cr0, cr4, cr0, {0}
    4d74:	00002c09 	andeq	r2, r0, r9, lsl #24
    4d78:	cd0b0000 	stcgt	0, cr0, [fp, #-0]
    4d7c:	04000004 	streq	r0, [r0], #-4
    4d80:	002c093f 	eoreq	r0, ip, pc, lsr r9
    4d84:	0b040000 	bleq	104d8c <__data_load__+0x10375c>
    4d88:	0000027e 	andeq	r0, r0, lr, ror r2
    4d8c:	2c094004 	stccs	0, cr4, [r9], {4}
    4d90:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    4d94:	0005cd0b 	andeq	ip, r5, fp, lsl #26
    4d98:	09410400 	stmdbeq	r1, {sl}^
    4d9c:	0000002c 	andeq	r0, r0, ip, lsr #32
    4da0:	03c40b0c 	biceq	r0, r4, #12, 22	; 0x3000
    4da4:	42040000 	andmi	r0, r4, #0
    4da8:	00002c09 	andeq	r2, r0, r9, lsl #24
    4dac:	b30b1000 	movwlt	r1, #45056	; 0xb000
    4db0:	04000003 	streq	r0, [r0], #-3
    4db4:	002c0943 	eoreq	r0, ip, r3, asr #18
    4db8:	0b140000 	bleq	504dc0 <_bsl_base_address+0x302dc0>
    4dbc:	00000536 	andeq	r0, r0, r6, lsr r5
    4dc0:	2c094404 	cfstrscs	mvf4, [r9], {4}
    4dc4:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    4dc8:	00041a0b 	andeq	r1, r4, fp, lsl #20
    4dcc:	09450400 	stmdbeq	r5, {sl}^
    4dd0:	0000002c 	andeq	r0, r0, ip, lsr #32
    4dd4:	056b0b1c 	strbeq	r0, [fp, #-2844]!	; 0xfffff4e4
    4dd8:	46040000 	strmi	r0, [r4], -r0
    4ddc:	00002c09 	andeq	r2, r0, r9, lsl #24
    4de0:	10002000 	andne	r2, r0, r0
    4de4:	0000028d 	andeq	r0, r0, sp, lsl #5
    4de8:	4f040108 	svcmi	0x00040108
    4dec:	00025708 	andeq	r5, r2, r8, lsl #14
    4df0:	02f90b00 	rscseq	r0, r9, #0, 22
    4df4:	50040000 	andpl	r0, r4, r0
    4df8:	0002570a 	andeq	r5, r2, sl, lsl #14
    4dfc:	f90b0000 			; <UNDEFINED> instruction: 0xf90b0000
    4e00:	04000001 	streq	r0, [r0], #-1
    4e04:	02570951 	subseq	r0, r7, #1327104	; 0x144000
    4e08:	11800000 	orrne	r0, r0, r0
    4e0c:	000004e9 	andeq	r0, r0, r9, ror #9
    4e10:	fb0a5304 	blx	299a2a <_bsl_base_address+0x97a2a>
    4e14:	00000000 	andeq	r0, r0, r0
    4e18:	02b21101 	adcseq	r1, r2, #1073741824	; 0x40000000
    4e1c:	56040000 	strpl	r0, [r4], -r0
    4e20:	0000fb0a 	andeq	pc, r0, sl, lsl #22
    4e24:	00010400 	andeq	r0, r1, r0, lsl #8
    4e28:	0000f908 	andeq	pc, r0, r8, lsl #18
    4e2c:	00026700 	andeq	r6, r2, r0, lsl #14
    4e30:	00250900 	eoreq	r0, r5, r0, lsl #18
    4e34:	001f0000 	andseq	r0, pc, r0
    4e38:	0001e510 	andeq	lr, r1, r0, lsl r5
    4e3c:	04019000 	streq	r9, [r1], #-0
    4e40:	02aa0862 	adceq	r0, sl, #6422528	; 0x620000
    4e44:	590b0000 	stmdbpl	fp, {}	; <UNPREDICTABLE>
    4e48:	04000004 	streq	r0, [r0], #-4
    4e4c:	02aa1263 	adceq	r1, sl, #805306374	; 0x30000006
    4e50:	0b000000 	bleq	4e58 <__data_load__+0x3828>
    4e54:	00000471 	andeq	r0, r0, r1, ror r4
    4e58:	2c066404 	cfstrscs	mvf6, [r6], {4}
    4e5c:	04000000 	streq	r0, [r0], #-0
    4e60:	0003010b 	andeq	r0, r3, fp, lsl #2
    4e64:	09660400 	stmdbeq	r6!, {sl}^
    4e68:	000002b0 			; <UNDEFINED> instruction: 0x000002b0
    4e6c:	028d0b08 	addeq	r0, sp, #8, 22	; 0x2000
    4e70:	67040000 	strvs	r0, [r4, -r0]
    4e74:	0002121e 	andeq	r1, r2, lr, lsl r2
    4e78:	0f008800 	svceq	0x00008800
    4e7c:	00026704 	andeq	r6, r2, r4, lsl #14
    4e80:	02c00800 	sbceq	r0, r0, #0, 16
    4e84:	02c00000 	sbceq	r0, r0, #0
    4e88:	25090000 	strcs	r0, [r9, #-0]
    4e8c:	1f000000 	svcne	0x00000000
    4e90:	c6040f00 	strgt	r0, [r4], -r0, lsl #30
    4e94:	12000002 	andne	r0, r0, #2
    4e98:	0004240d 	andeq	r2, r4, sp, lsl #8
    4e9c:	7a040800 	bvc	106ea4 <__data_load__+0x105874>
    4ea0:	0002ef08 	andeq	lr, r2, r8, lsl #30
    4ea4:	09d70b00 	ldmibeq	r7, {r8, r9, fp}^
    4ea8:	7b040000 	blvc	104eb0 <__data_load__+0x103880>
    4eac:	0002ef11 	andeq	lr, r2, r1, lsl pc
    4eb0:	a30b0000 	movwge	r0, #45056	; 0xb000
    4eb4:	04000008 	streq	r0, [r0], #-8
    4eb8:	002c067c 	eoreq	r0, ip, ip, ror r6
    4ebc:	00040000 	andeq	r0, r4, r0
    4ec0:	0055040f 	subseq	r0, r5, pc, lsl #8
    4ec4:	430d0000 	movwmi	r0, #53248	; 0xd000
    4ec8:	68000004 	stmdavs	r0, {r2}
    4ecc:	3808ba04 	stmdacc	r8, {r2, r9, fp, ip, sp, pc}
    4ed0:	0e000004 	cdpeq	0, 0, cr0, cr0, cr4, {0}
    4ed4:	0400705f 	streq	r7, [r0], #-95	; 0xffffffa1
    4ed8:	02ef12bb 	rsceq	r1, pc, #-1342177269	; 0xb000000b
    4edc:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    4ee0:	0400725f 	streq	r7, [r0], #-607	; 0xfffffda1
    4ee4:	002c07bc 	strhteq	r0, [ip], -ip
    4ee8:	0e040000 	cdpeq	0, 0, cr0, cr4, cr0, {0}
    4eec:	0400775f 	streq	r7, [r0], #-1887	; 0xfffff8a1
    4ef0:	002c07bd 	strhteq	r0, [ip], -sp
    4ef4:	0b080000 	bleq	204efc <_bsl_base_address+0x2efc>
    4ef8:	000002ab 	andeq	r0, r0, fp, lsr #5
    4efc:	5c09be04 	stcpl	14, cr11, [r9], {4}
    4f00:	0c000000 	stceq	0, cr0, [r0], {-0}
    4f04:	0003600b 	andeq	r6, r3, fp
    4f08:	09bf0400 	ldmibeq	pc!, {sl}	; <UNPREDICTABLE>
    4f0c:	0000005c 	andeq	r0, r0, ip, asr r0
    4f10:	625f0e0e 	subsvs	r0, pc, #14, 28	; 0xe0
    4f14:	c0040066 	andgt	r0, r4, r6, rrx
    4f18:	0002c711 	andeq	ip, r2, r1, lsl r7
    4f1c:	380b1000 	stmdacc	fp, {ip}
    4f20:	04000002 	streq	r0, [r0], #-2
    4f24:	002c07c1 	eoreq	r0, ip, r1, asr #15
    4f28:	0b180000 	bleq	604f30 <_bsl_base_address+0x402f30>
    4f2c:	0000029b 	muleq	r0, fp, r2
    4f30:	f90ac804 			; <UNDEFINED> instruction: 0xf90ac804
    4f34:	1c000000 	stcne	0, cr0, [r0], {-0}
    4f38:	0003340b 	andeq	r3, r3, fp, lsl #8
    4f3c:	1dca0400 	cfstrdne	mvd0, [sl]
    4f40:	000005bc 			; <UNDEFINED> instruction: 0x000005bc
    4f44:	03ac0b20 			; <UNDEFINED> instruction: 0x03ac0b20
    4f48:	cc040000 	stcgt	0, cr0, [r4], {-0}
    4f4c:	0005e61d 	andeq	lr, r5, sp, lsl r6
    4f50:	bf0b2400 	svclt	0x000b2400
    4f54:	04000004 	streq	r0, [r0], #-4
    4f58:	060a0dcf 	streq	r0, [sl], -pc, asr #27
    4f5c:	0b280000 	bleq	a04f64 <_bsl_base_address+0x802f64>
    4f60:	00000585 	andeq	r0, r0, r5, lsl #11
    4f64:	2409d004 	strcs	sp, [r9], #-4
    4f68:	2c000006 	stccs	0, cr0, [r0], {6}
    4f6c:	62755f0e 	rsbsvs	r5, r5, #14, 30	; 0x38
    4f70:	11d30400 	bicsne	r0, r3, r0, lsl #8
    4f74:	000002c7 	andeq	r0, r0, r7, asr #5
    4f78:	755f0e30 	ldrbvc	r0, [pc, #-3632]	; 4150 <__data_load__+0x2b20>
    4f7c:	d4040070 	strle	r0, [r4], #-112	; 0xffffff90
    4f80:	0002ef12 	andeq	lr, r2, r2, lsl pc
    4f84:	5f0e3800 	svcpl	0x000e3800
    4f88:	04007275 	streq	r7, [r0], #-629	; 0xfffffd8b
    4f8c:	002c07d5 	ldrdeq	r0, [ip], -r5	; <UNPREDICTABLE>
    4f90:	0b3c0000 	bleq	f04f98 <_bsl_base_address+0xd02f98>
    4f94:	00000278 	andeq	r0, r0, r8, ror r2
    4f98:	2a11d804 	bcs	47afb0 <_bsl_base_address+0x278fb0>
    4f9c:	40000006 	andmi	r0, r0, r6
    4fa0:	00055d0b 	andeq	r5, r5, fp, lsl #26
    4fa4:	11d90400 	bicsne	r0, r9, r0, lsl #8
    4fa8:	0000063a 	andeq	r0, r0, sl, lsr r6
    4fac:	6c5f0e43 	mrrcvs	14, 4, r0, pc, cr3	; <UNPREDICTABLE>
    4fb0:	dc040062 	stcle	0, cr0, [r4], {98}	; 0x62
    4fb4:	0002c711 	andeq	ip, r2, r1, lsl r7
    4fb8:	c10b4400 	tstgt	fp, r0, lsl #8
    4fbc:	04000002 	streq	r0, [r0], #-2
    4fc0:	002c07df 	ldrdeq	r0, [ip], -pc	; <UNPREDICTABLE>
    4fc4:	0b4c0000 	bleq	1304fcc <_bsl_base_address+0x1102fcc>
    4fc8:	000002d2 	ldrdeq	r0, [r0], -r2
    4fcc:	7f0ae004 	svcvc	0x000ae004
    4fd0:	50000000 	andpl	r0, r0, r0
    4fd4:	0006d00b 	andeq	sp, r6, fp
    4fd8:	12e30400 	rscne	r0, r3, #0, 8
    4fdc:	00000456 	andeq	r0, r0, r6, asr r4
    4fe0:	08780b54 	ldmdaeq	r8!, {r2, r4, r6, r8, r9, fp}^
    4fe4:	e7040000 	str	r0, [r4, -r0]
    4fe8:	0001130c 	andeq	r1, r1, ip, lsl #6
    4fec:	4b0b5800 	blmi	2daff4 <_bsl_base_address+0xd8ff4>
    4ff0:	04000004 	streq	r0, [r0], #-4
    4ff4:	00ed0ee9 	rsceq	r0, sp, r9, ror #29
    4ff8:	0b5c0000 	bleq	1705000 <_bsl_base_address+0x1503000>
    4ffc:	000003a4 	andeq	r0, r0, r4, lsr #7
    5000:	2c09ea04 			; <UNDEFINED> instruction: 0x2c09ea04
    5004:	64000000 	strvs	r0, [r0], #-0
    5008:	002c1300 	eoreq	r1, ip, r0, lsl #6
    500c:	04560000 	ldrbeq	r0, [r6], #-0
    5010:	56140000 	ldrpl	r0, [r4], -r0
    5014:	14000004 	strne	r0, [r0], #-4
    5018:	000000f9 	strdeq	r0, [r0], -r9
    501c:	0005aa14 	andeq	sl, r5, r4, lsl sl
    5020:	002c1400 	eoreq	r1, ip, r0, lsl #8
    5024:	0f000000 	svceq	0x00000000
    5028:	00046104 	andeq	r6, r4, r4, lsl #2
    502c:	04561500 	ldrbeq	r1, [r6], #-1280	; 0xfffffb00
    5030:	e0160000 	ands	r0, r6, r0
    5034:	2800000b 	stmdacs	r0, {r0, r1, r3}
    5038:	02650404 	rsbeq	r0, r5, #4, 8	; 0x4000000
    503c:	0005aa08 	andeq	sl, r5, r8, lsl #20
    5040:	04131700 	ldreq	r1, [r3], #-1792	; 0xfffff900
    5044:	67040000 	strvs	r0, [r4, -r0]
    5048:	002c0702 	eoreq	r0, ip, r2, lsl #14
    504c:	17000000 	strne	r0, [r0, -r0]
    5050:	000002ba 			; <UNDEFINED> instruction: 0x000002ba
    5054:	0b026c04 	bleq	a006c <__data_load__+0x9ea3c>
    5058:	00000696 	muleq	r0, r6, r6
    505c:	03501704 	cmpeq	r0, #4, 14	; 0x100000
    5060:	6c040000 	stcvs	0, cr0, [r4], {-0}
    5064:	06961402 	ldreq	r1, [r6], r2, lsl #8
    5068:	17080000 	strne	r0, [r8, -r0]
    506c:	00000315 	andeq	r0, r0, r5, lsl r3
    5070:	1e026c04 	cdpne	12, 0, cr6, cr2, cr4, {0}
    5074:	00000696 	muleq	r0, r6, r6
    5078:	046c170c 	strbteq	r1, [ip], #-1804	; 0xfffff8f4
    507c:	6e040000 	cdpvs	0, 0, cr0, cr4, cr0, {0}
    5080:	002c0802 	eoreq	r0, ip, r2, lsl #16
    5084:	17100000 	ldrne	r0, [r0, -r0]
    5088:	0000020d 	andeq	r0, r0, sp, lsl #4
    508c:	08026f04 	stmdaeq	r2, {r2, r8, r9, sl, fp, sp, lr}
    5090:	00000896 	muleq	r0, r6, r8
    5094:	04881714 	streq	r1, [r8], #1812	; 0x714
    5098:	72040000 	andvc	r0, r4, #0
    509c:	002c0702 	eoreq	r0, ip, r2, lsl #14
    50a0:	17300000 	ldrne	r0, [r0, -r0]!
    50a4:	00000476 	andeq	r0, r0, r6, ror r4
    50a8:	16027304 	strne	r7, [r2], -r4, lsl #6
    50ac:	000008ab 	andeq	r0, r0, fp, lsr #17
    50b0:	03cd1734 	biceq	r1, sp, #52, 14	; 0xd00000
    50b4:	75040000 	strvc	r0, [r4, #-0]
    50b8:	002c0702 	eoreq	r0, ip, r2, lsl #14
    50bc:	17380000 	ldrne	r0, [r8, -r0]!
    50c0:	0000047e 	andeq	r0, r0, lr, ror r4
    50c4:	0a027704 	beq	a2cdc <__data_load__+0xa16ac>
    50c8:	000008bc 			; <UNDEFINED> instruction: 0x000008bc
    50cc:	038f173c 	orreq	r1, pc, #60, 14	; 0xf00000
    50d0:	7a040000 	bvc	1050d8 <__data_load__+0x103aa8>
    50d4:	01791302 	cmneq	r9, r2, lsl #6
    50d8:	17400000 	strbne	r0, [r0, -r0]
    50dc:	0000033a 	andeq	r0, r0, sl, lsr r3
    50e0:	07027b04 	streq	r7, [r2, -r4, lsl #22]
    50e4:	0000002c 	andeq	r0, r0, ip, lsr #32
    50e8:	05c81744 	strbeq	r1, [r8, #1860]	; 0x744
    50ec:	7c040000 	stcvc	0, cr0, [r4], {-0}
    50f0:	01791302 	cmneq	r9, r2, lsl #6
    50f4:	17480000 	strbne	r0, [r8, -r0]
    50f8:	000003f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    50fc:	14027d04 	strne	r7, [r2], #-3332	; 0xfffff2fc
    5100:	000008c2 	andeq	r0, r0, r2, asr #17
    5104:	0358174c 	cmpeq	r8, #76, 14	; 0x1300000
    5108:	80040000 	andhi	r0, r4, r0
    510c:	002c0702 	eoreq	r0, ip, r2, lsl #14
    5110:	17500000 	ldrbne	r0, [r0, -r0]
    5114:	000002ca 	andeq	r0, r0, sl, asr #5
    5118:	09028104 	stmdbeq	r2, {r2, r8, pc}
    511c:	000005aa 	andeq	r0, r0, sl, lsr #11
    5120:	040c1754 	streq	r1, [ip], #-1876	; 0xfffff8ac
    5124:	a4040000 	strge	r0, [r4], #-0
    5128:	08710702 	ldmdaeq	r1!, {r1, r8, r9, sl}^
    512c:	18580000 	ldmdane	r8, {}^	; <UNPREDICTABLE>
    5130:	000001e5 	andeq	r0, r0, r5, ror #3
    5134:	1302a804 	movwne	sl, #10244	; 0x2804
    5138:	000002aa 	andeq	r0, r0, sl, lsr #5
    513c:	6d180148 	ldfvss	f0, [r8, #-288]	; 0xfffffee0
    5140:	04000003 	streq	r0, [r0], #-3
    5144:	671202a9 	ldrvs	r0, [r2, -r9, lsr #5]
    5148:	4c000002 	stcmi	0, cr0, [r0], {2}
    514c:	05531801 	ldrbeq	r1, [r3, #-2049]	; 0xfffff7ff
    5150:	ad040000 	stcge	0, cr0, [r4, #-0]
    5154:	08d30c02 	ldmeq	r3, {r1, sl, fp}^
    5158:	02dc0000 	sbcseq	r0, ip, #0
    515c:	0002a318 	andeq	sl, r2, r8, lsl r3
    5160:	02b20400 	adcseq	r0, r2, #0, 8
    5164:	00065710 	andeq	r5, r6, r0, lsl r7
    5168:	1802e000 	stmdane	r2, {sp, lr, pc}
    516c:	00000288 	andeq	r0, r0, r8, lsl #5
    5170:	0a02b404 	beq	b2188 <__data_load__+0xb0b58>
    5174:	000008df 	ldrdeq	r0, [r0], -pc	; <UNPREDICTABLE>
    5178:	0f0002ec 	svceq	0x000002ec
    517c:	0005b004 	andeq	fp, r5, r4
    5180:	08010200 	stmdaeq	r1, {r9}
    5184:	00000148 	andeq	r0, r0, r8, asr #2
    5188:	0005b015 	andeq	fp, r5, r5, lsl r0
    518c:	38040f00 	stmdacc	r4, {r8, r9, sl, fp}
    5190:	13000004 	movwne	r0, #4
    5194:	0000002c 	andeq	r0, r0, ip, lsr #32
    5198:	000005e0 	andeq	r0, r0, r0, ror #11
    519c:	00045614 	andeq	r5, r4, r4, lsl r6
    51a0:	00f91400 	rscseq	r1, r9, r0, lsl #8
    51a4:	e0140000 	ands	r0, r4, r0
    51a8:	14000005 	strne	r0, [r0], #-5
    51ac:	0000002c 	andeq	r0, r0, ip, lsr #32
    51b0:	b7040f00 	strlt	r0, [r4, -r0, lsl #30]
    51b4:	0f000005 	svceq	0x00000005
    51b8:	0005c204 	andeq	ip, r5, r4, lsl #4
    51bc:	008b1300 	addeq	r1, fp, r0, lsl #6
    51c0:	060a0000 	streq	r0, [sl], -r0
    51c4:	56140000 	ldrpl	r0, [r4], -r0
    51c8:	14000004 	strne	r0, [r0], #-4
    51cc:	000000f9 	strdeq	r0, [r0], -r9
    51d0:	00008b14 	andeq	r8, r0, r4, lsl fp
    51d4:	002c1400 	eoreq	r1, ip, r0, lsl #8
    51d8:	0f000000 	svceq	0x00000000
    51dc:	0005ec04 	andeq	lr, r5, r4, lsl #24
    51e0:	002c1300 	eoreq	r1, ip, r0, lsl #6
    51e4:	06240000 	strteq	r0, [r4], -r0
    51e8:	56140000 	ldrpl	r0, [r4], -r0
    51ec:	14000004 	strne	r0, [r0], #-4
    51f0:	000000f9 	strdeq	r0, [r0], -r9
    51f4:	10040f00 	andne	r0, r4, r0, lsl #30
    51f8:	08000006 	stmdaeq	r0, {r1, r2}
    51fc:	00000055 	andeq	r0, r0, r5, asr r0
    5200:	0000063a 	andeq	r0, r0, sl, lsr r6
    5204:	00002509 	andeq	r2, r0, r9, lsl #10
    5208:	08000200 	stmdaeq	r0, {r9}
    520c:	00000055 	andeq	r0, r0, r5, asr r0
    5210:	0000064a 	andeq	r0, r0, sl, asr #12
    5214:	00002509 	andeq	r2, r0, r9, lsl #10
    5218:	04000000 	streq	r0, [r0], #-0
    521c:	00000431 	andeq	r0, r0, r1, lsr r4
    5220:	1a012404 	bne	4e238 <__data_load__+0x4cc08>
    5224:	000002f5 	strdeq	r0, [r0], -r5
    5228:	000c1f19 	andeq	r1, ip, r9, lsl pc
    522c:	28040c00 	stmdacs	r4, {sl, fp}
    5230:	06900801 	ldreq	r0, [r0], r1, lsl #16
    5234:	59170000 	ldmdbpl	r7, {}	; <UNPREDICTABLE>
    5238:	04000004 	streq	r0, [r0], #-4
    523c:	9011012a 	andsls	r0, r1, sl, lsr #2
    5240:	00000006 	andeq	r0, r0, r6
    5244:	00036617 	andeq	r6, r3, r7, lsl r6
    5248:	012b0400 			; <UNDEFINED> instruction: 0x012b0400
    524c:	00002c07 	andeq	r2, r0, r7, lsl #24
    5250:	2b170400 	blcs	5c6258 <_bsl_base_address+0x3c4258>
    5254:	04000004 	streq	r0, [r0], #-4
    5258:	960b012c 	strls	r0, [fp], -ip, lsr #2
    525c:	08000006 	stmdaeq	r0, {r1, r2}
    5260:	57040f00 	strpl	r0, [r4, -r0, lsl #30]
    5264:	0f000006 	svceq	0x00000006
    5268:	00064a04 	andeq	r4, r6, r4, lsl #20
    526c:	02051900 	andeq	r1, r5, #0, 18
    5270:	040e0000 	streq	r0, [lr], #-0
    5274:	d5080144 	strle	r0, [r8, #-324]	; 0xfffffebc
    5278:	17000006 	strne	r0, [r0, -r6]
    527c:	000004a9 	andeq	r0, r0, r9, lsr #9
    5280:	12014504 	andne	r4, r1, #4, 10	; 0x1000000
    5284:	000006d5 	ldrdeq	r0, [r0], -r5
    5288:	04d61700 	ldrbeq	r1, [r6], #1792	; 0x700
    528c:	46040000 	strmi	r0, [r4], -r0
    5290:	06d51201 	ldrbeq	r1, [r5], r1, lsl #4
    5294:	17060000 	strne	r0, [r6, -r0]
    5298:	000004f2 	strdeq	r0, [r0], -r2
    529c:	12014704 	andne	r4, r1, #4, 14	; 0x100000
    52a0:	00000063 	andeq	r0, r0, r3, rrx
    52a4:	6308000c 	movwvs	r0, #32780	; 0x800c
    52a8:	e5000000 	str	r0, [r0, #-0]
    52ac:	09000006 	stmdbeq	r0, {r1, r2}
    52b0:	00000025 	andeq	r0, r0, r5, lsr #32
    52b4:	d01a0002 	andsle	r0, sl, r2
    52b8:	07028504 	streq	r8, [r2, -r4, lsl #10]
    52bc:	000007fa 	strdeq	r0, [r0], -sl
    52c0:	00052417 	andeq	r2, r5, r7, lsl r4
    52c4:	02870400 	addeq	r0, r7, #0, 8
    52c8:	00002518 	andeq	r2, r0, r8, lsl r5
    52cc:	dc170000 	ldcle	0, cr0, [r7], {-0}
    52d0:	04000004 	streq	r0, [r0], #-4
    52d4:	aa120288 	bge	485cfc <_bsl_base_address+0x283cfc>
    52d8:	04000005 	streq	r0, [r0], #-5
    52dc:	00038217 	andeq	r8, r3, r7, lsl r2
    52e0:	02890400 	addeq	r0, r9, #0, 8
    52e4:	0007fa10 	andeq	pc, r7, r0, lsl sl	; <UNPREDICTABLE>
    52e8:	76170800 	ldrvc	r0, [r7], -r0, lsl #16
    52ec:	04000005 	streq	r0, [r0], #-5
    52f0:	8f17028a 	svchi	0x0017028a
    52f4:	24000001 	strcs	r0, [r0], #-1
    52f8:	00032517 	andeq	r2, r3, r7, lsl r5
    52fc:	028b0400 	addeq	r0, fp, #0, 8
    5300:	00002c0f 	andeq	r2, r0, pc, lsl #24
    5304:	54174800 	ldrpl	r4, [r7], #-2048	; 0xfffff800
    5308:	04000004 	streq	r0, [r0], #-4
    530c:	782c028c 	stmdavc	ip!, {r2, r3, r7, r9}
    5310:	50000000 	andpl	r0, r0, r0
    5314:	00058c17 	andeq	r8, r5, r7, lsl ip
    5318:	028d0400 	addeq	r0, sp, #0, 8
    531c:	00069c1a 	andeq	r9, r6, sl, lsl ip
    5320:	5f175800 	svcpl	0x00175800
    5324:	04000004 	streq	r0, [r0], #-4
    5328:	ed16028e 	lfm	f0, 4, [r6, #-568]	; 0xfffffdc8
    532c:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    5330:	0005ba17 	andeq	fp, r5, r7, lsl sl
    5334:	028f0400 	addeq	r0, pc, #0, 8
    5338:	0000ed16 	andeq	lr, r0, r6, lsl sp
    533c:	5b177000 	blpl	5e1344 <_bsl_base_address+0x3df344>
    5340:	04000002 	streq	r0, [r0], #-2
    5344:	ed160290 	lfm	f0, 4, [r6, #-576]	; 0xfffffdc0
    5348:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    534c:	00054917 	andeq	r4, r5, r7, lsl r9
    5350:	02910400 	addseq	r0, r1, #0, 8
    5354:	00080a10 	andeq	r0, r8, r0, lsl sl
    5358:	76178000 	ldrvc	r8, [r7], -r0
    535c:	04000003 	streq	r0, [r0], #-3
    5360:	1a100292 	bne	405db0 <_bsl_base_address+0x203db0>
    5364:	88000008 	stmdahi	r0, {r3}
    5368:	0004ff17 	andeq	pc, r4, r7, lsl pc	; <UNPREDICTABLE>
    536c:	02930400 	addseq	r0, r3, #0, 8
    5370:	00002c0f 	andeq	r2, r0, pc, lsl #24
    5374:	eb17a000 	bl	5ed37c <_bsl_base_address+0x3eb37c>
    5378:	04000002 	streq	r0, [r0], #-2
    537c:	ed160294 	lfm	f0, 4, [r6, #-592]	; 0xfffffdb0
    5380:	a4000000 	strge	r0, [r0], #-0
    5384:	00024c17 	andeq	r4, r2, r7, lsl ip
    5388:	02950400 	addseq	r0, r5, #0, 8
    538c:	0000ed16 	andeq	lr, r0, r6, lsl sp
    5390:	da17ac00 	ble	5f0398 <_bsl_base_address+0x3ee398>
    5394:	04000002 	streq	r0, [r0], #-2
    5398:	ed160296 	lfm	f0, 4, [r6, #-600]	; 0xfffffda8
    539c:	b4000000 	strlt	r0, [r0], #-0
    53a0:	00021817 	andeq	r1, r2, r7, lsl r8
    53a4:	02970400 	addseq	r0, r7, #0, 8
    53a8:	0000ed16 	andeq	lr, r0, r6, lsl sp
    53ac:	2717bc00 	ldrcs	fp, [r7, -r0, lsl #24]
    53b0:	04000002 	streq	r0, [r0], #-2
    53b4:	ed160298 	lfm	f0, 4, [r6, #-608]	; 0xfffffda0
    53b8:	c4000000 	strgt	r0, [r0], #-0
    53bc:	00041117 	andeq	r1, r4, r7, lsl r1
    53c0:	02990400 	addseq	r0, r9, #0, 8
    53c4:	00002c08 	andeq	r2, r0, r8, lsl #24
    53c8:	0800cc00 	stmdaeq	r0, {sl, fp, lr, pc}
    53cc:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    53d0:	0000080a 	andeq	r0, r0, sl, lsl #16
    53d4:	00002509 	andeq	r2, r0, r9, lsl #10
    53d8:	08001900 	stmdaeq	r0, {r8, fp, ip}
    53dc:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    53e0:	0000081a 	andeq	r0, r0, sl, lsl r8
    53e4:	00002509 	andeq	r2, r0, r9, lsl #10
    53e8:	08000700 	stmdaeq	r0, {r8, r9, sl}
    53ec:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    53f0:	0000082a 	andeq	r0, r0, sl, lsr #16
    53f4:	00002509 	andeq	r2, r0, r9, lsl #10
    53f8:	1a001700 	bne	b000 <__data_load__+0x99d0>
    53fc:	029e04f0 	addseq	r0, lr, #240, 8	; 0xf0000000
    5400:	00085107 	andeq	r5, r8, r7, lsl #2
    5404:	03bd1700 			; <UNDEFINED> instruction: 0x03bd1700
    5408:	a1040000 	mrsge	r0, (UNDEF: 4)
    540c:	08511b02 	ldmdaeq	r1, {r1, r8, r9, fp, ip}^
    5410:	17000000 	strne	r0, [r0, -r0]
    5414:	00000540 	andeq	r0, r0, r0, asr #10
    5418:	1802a204 	stmdane	r2, {r2, r9, sp, pc}
    541c:	00000861 	andeq	r0, r0, r1, ror #16
    5420:	ef080078 	svc	0x00080078
    5424:	61000002 	tstvs	r0, r2
    5428:	09000008 	stmdbeq	r0, {r3}
    542c:	00000025 	andeq	r0, r0, r5, lsr #32
    5430:	2508001d 	strcs	r0, [r8, #-29]	; 0xffffffe3
    5434:	71000000 	mrsvc	r0, (UNDEF: 0)
    5438:	09000008 	stmdbeq	r0, {r3}
    543c:	00000025 	andeq	r0, r0, r5, lsr #32
    5440:	f01b001d 			; <UNDEFINED> instruction: 0xf01b001d
    5444:	03028304 	movweq	r8, #8964	; 0x2304
    5448:	00000896 	muleq	r0, r6, r8
    544c:	000be01c 	andeq	lr, fp, ip, lsl r0
    5450:	029a0400 	addseq	r0, sl, #0, 8
    5454:	0006e50b 	andeq	lr, r6, fp, lsl #10
    5458:	05631c00 	strbeq	r1, [r3, #-3072]!	; 0xfffff400
    545c:	a3040000 	movwge	r0, #16384	; 0x4000
    5460:	082a0b02 	stmdaeq	sl!, {r1, r8, r9, fp}
    5464:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    5468:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
    546c:	000008a6 	andeq	r0, r0, r6, lsr #17
    5470:	00002509 	andeq	r2, r0, r9, lsl #10
    5474:	1d001800 	stcne	8, cr1, [r0, #-0]
    5478:	00000241 	andeq	r0, r0, r1, asr #4
    547c:	08a6040f 	stmiaeq	r6!, {r0, r1, r2, r3, sl}
    5480:	bc1e0000 	ldclt	0, cr0, [lr], {-0}
    5484:	14000008 	strne	r0, [r0], #-8
    5488:	00000456 	andeq	r0, r0, r6, asr r4
    548c:	b1040f00 	tstlt	r4, r0, lsl #30
    5490:	0f000008 	svceq	0x00000008
    5494:	00017904 	andeq	r7, r1, r4, lsl #18
    5498:	08d31e00 	ldmeq	r3, {r9, sl, fp, ip}^
    549c:	2c140000 	ldccs	0, cr0, [r4], {-0}
    54a0:	00000000 	andeq	r0, r0, r0
    54a4:	08d9040f 	ldmeq	r9, {r0, r1, r2, r3, sl}^
    54a8:	040f0000 	streq	r0, [pc], #-0	; 54b0 <__data_load__+0x3e80>
    54ac:	000008c8 	andeq	r0, r0, r8, asr #17
    54b0:	00064a08 	andeq	r4, r6, r8, lsl #20
    54b4:	0008ef00 	andeq	lr, r8, r0, lsl #30
    54b8:	00250900 	eoreq	r0, r5, r0, lsl #18
    54bc:	00020000 	andeq	r0, r2, r0
    54c0:	00050c1f 	andeq	r0, r5, pc, lsl ip
    54c4:	03340400 	teqeq	r4, #0, 8
    54c8:	00045c1d 	andeq	r5, r4, sp, lsl ip
    54cc:	0b8b2000 	bleq	fe2cd4d4 <__stack+0xde2ccbfc>
    54d0:	11010000 	mrsne	r0, (UNDEF: 1)
    54d4:	00002c01 	andeq	r2, r0, r1, lsl #24
    54d8:	31210000 			; <UNDEFINED> instruction: 0x31210000
    54dc:	0100000b 	tsteq	r0, fp
    54e0:	05b00d28 	ldreq	r0, [r0, #3368]!	; 0xd28
    54e4:	df220000 	svcle	0x00220000
    54e8:	01000003 	tsteq	r0, r3
    54ec:	0eb40146 	frdeqsm	f0, f4, f6
    54f0:	01180000 	tsteq	r8, r0
    54f4:	9c010000 	stcls	0, cr0, [r1], {-0}
    54f8:	000009f2 	strdeq	r0, [r0], -r2
    54fc:	00051f23 	andeq	r1, r5, r3, lsr #30
    5500:	17460100 	strbne	r0, [r6, -r0, lsl #2]
    5504:	0000002c 	andeq	r0, r0, ip, lsr #32
    5508:	00001553 	andeq	r1, r0, r3, asr r5
    550c:	0000154f 	andeq	r1, r0, pc, asr #10
    5510:	01006424 	tsteq	r0, r4, lsr #8
    5514:	00f92346 	rscseq	r2, r9, r6, asr #6
    5518:	157a0000 	ldrbne	r0, [sl, #-0]!
    551c:	15720000 	ldrbne	r0, [r2, #-0]!
    5520:	70250000 	eorvc	r0, r5, r0
    5524:	1c480100 	stfnee	f0, [r8], {-0}
    5528:	000002aa 	andeq	r0, r0, sl, lsr #5
    552c:	000015b7 			; <UNDEFINED> instruction: 0x000015b7
    5530:	000015b1 			; <UNDEFINED> instruction: 0x000015b1
    5534:	000b8526 	andeq	r8, fp, r6, lsr #10
    5538:	14490100 	strbne	r0, [r9], #-256	; 0xffffff00
    553c:	000009f2 	strdeq	r0, [r0], -r2
    5540:	000015e2 	andeq	r1, r0, r2, ror #11
    5544:	000015e0 	andeq	r1, r0, r0, ror #11
    5548:	00029626 	andeq	r9, r2, r6, lsr #12
    554c:	234a0100 	movtcs	r0, #41216	; 0xa100
    5550:	000009f8 	strdeq	r0, [r0], -r8
    5554:	000015fe 	strdeq	r1, [r0], -lr
    5558:	000015f8 	strdeq	r1, [r0], -r8
    555c:	01006e25 	tsteq	r0, r5, lsr #28
    5560:	002c104b 	eoreq	r1, ip, fp, asr #32
    5564:	16360000 	ldrtne	r0, [r6], -r0
    5568:	16300000 	ldrtne	r0, [r0], -r0
    556c:	69250000 	stmdbvs	r5!, {}	; <UNPREDICTABLE>
    5570:	074c0100 	strbeq	r0, [ip, -r0, lsl #2]
    5574:	0000002c 	andeq	r0, r0, ip, lsr #32
    5578:	00001669 	andeq	r1, r0, r9, ror #12
    557c:	00001661 	andeq	r1, r0, r1, ror #12
    5580:	006e6625 	rsbeq	r6, lr, r5, lsr #12
    5584:	c00a4d01 	andgt	r4, sl, r1, lsl #26
    5588:	b3000002 	movwlt	r0, #2
    558c:	ad000016 	stcge	0, cr0, [r0, #-88]	; 0xffffffa8
    5590:	27000016 	smladcs	r0, r6, r0, r0
    5594:	00000b3d 	andeq	r0, r0, sp, lsr fp
    5598:	28025401 	stmdacs	r2, {r0, sl, ip, lr}
    559c:	00000058 	andeq	r0, r0, r8, asr r0
    55a0:	646e6925 	strbtvs	r6, [lr], #-2341	; 0xfffff6db
    55a4:	08610100 	stmdaeq	r1!, {r8}^
    55a8:	0000002c 	andeq	r0, r0, ip, lsr #32
    55ac:	000016e0 	andeq	r1, r0, r0, ror #13
    55b0:	000016dc 	ldrdeq	r1, [r0], -ip
    55b4:	000fa429 	andeq	sl, pc, r9, lsr #8
    55b8:	50012a00 	andpl	r2, r1, r0, lsl #20
    55bc:	064c9103 	strbeq	r9, [ip], -r3, lsl #2
    55c0:	0f000000 	svceq	0x00000000
    55c4:	0002aa04 	andeq	sl, r2, r4, lsl #20
    55c8:	12040f00 	andne	r0, r4, #0, 30
    55cc:	2b000002 	blcs	55dc <__data_load__+0x3fac>
    55d0:	00000b77 	andeq	r0, r0, r7, ror fp
    55d4:	60013101 	andvs	r3, r1, r1, lsl #2
    55d8:	28000015 	stmdacs	r0, {r0, r2, r4}
    55dc:	01000000 	mrseq	r0, (UNDEF: 0)
    55e0:	000a2c9c 	muleq	sl, ip, ip
    55e4:	00402800 	subeq	r2, r0, r0, lsl #16
    55e8:	022c0000 	eoreq	r0, ip, #0
    55ec:	01000006 	tsteq	r0, r6
    55f0:	782d1135 	stmdavc	sp!, {r0, r2, r4, r5, r8, ip}
    55f4:	2c000015 	stccs	0, cr0, [r0], {21}
    55f8:	0000000a 	andeq	r0, r0, sl
    55fc:	01e62e00 	mvneq	r2, r0, lsl #28
    5600:	01e60000 	mvneq	r0, r0
    5604:	4c060000 	stcmi	0, cr0, [r6], {-0}
    5608:	0ce10005 	stcleq	0, cr0, [r1], #20
    560c:	00040000 	andeq	r0, r4, r0
    5610:	000014fa 	strdeq	r1, [r0], -sl
    5614:	01610104 	cmneq	r1, r4, lsl #2
    5618:	a90c0000 	stmdbge	ip, {}	; <UNPREDICTABLE>
    561c:	d6000008 	strle	r0, [r0], -r8
    5620:	cc000000 	stcgt	0, cr0, [r0], {-0}
    5624:	ec00000f 	stc	0, cr0, [r0], {15}
    5628:	78000003 	stmdavc	r0, {r0, r1}
    562c:	02000018 	andeq	r0, r0, #24
    5630:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    5634:	d7030074 	smlsdxle	r3, r4, r0, r0
    5638:	02000005 	andeq	r0, r0, #5
    563c:	003817d1 	ldrsbteq	r1, [r8], -r1
    5640:	04040000 	streq	r0, [r4], #-0
    5644:	00012907 	andeq	r2, r1, r7, lsl #18
    5648:	05080400 	streq	r0, [r8, #-1024]	; 0xfffffc00
    564c:	0000007b 	andeq	r0, r0, fp, ror r0
    5650:	cb040804 	blgt	107668 <__data_load__+0x106038>
    5654:	04000001 	streq	r0, [r0], #-1
    5658:	01410601 	cmpeq	r1, r1, lsl #12
    565c:	01040000 	mrseq	r0, (UNDEF: 4)
    5660:	00013f08 	andeq	r3, r1, r8, lsl #30
    5664:	05020400 	streq	r0, [r2, #-1024]	; 0xfffffc00
    5668:	000001d7 	ldrdeq	r0, [r0], -r7
    566c:	89070204 	stmdbhi	r7, {r2, r9}
    5670:	04000000 	streq	r0, [r0], #-0
    5674:	00800504 	addeq	r0, r0, r4, lsl #10
    5678:	04040000 	streq	r0, [r4], #-0
    567c:	00012407 	andeq	r2, r1, r7, lsl #8
    5680:	07080400 	streq	r0, [r8, -r0, lsl #8]
    5684:	0000011f 	andeq	r0, r0, pc, lsl r1
    5688:	9d060405 	cfstrsls	mvf0, [r6, #-20]	; 0xffffffec
    568c:	02000003 	andeq	r0, r0, #3
    5690:	3817015e 	ldmdacc	r7, {r1, r2, r3, r4, r6, r8}
    5694:	03000000 	movweq	r0, #0
    5698:	000003d8 	ldrdeq	r0, [r0], -r8
    569c:	690e2e03 	stmdbvs	lr, {r0, r1, r9, sl, fp, sp}
    56a0:	03000000 	movweq	r0, #0
    56a4:	000004c5 	andeq	r0, r0, r5, asr #9
    56a8:	690e7403 	stmdbvs	lr, {r0, r1, sl, ip, sp, lr}
    56ac:	07000000 	streq	r0, [r0, -r0]
    56b0:	03a50304 			; <UNDEFINED> instruction: 0x03a50304
    56b4:	000000c7 	andeq	r0, r0, r7, asr #1
    56b8:	00039708 	andeq	r9, r3, r8, lsl #14
    56bc:	0ca70300 	stceq	3, cr0, [r7]
    56c0:	00000080 	andeq	r0, r0, r0, lsl #1
    56c4:	00034908 	andeq	r4, r3, r8, lsl #18
    56c8:	13a80300 			; <UNDEFINED> instruction: 0x13a80300
    56cc:	000000c7 	andeq	r0, r0, r7, asr #1
    56d0:	00540900 	subseq	r0, r4, r0, lsl #18
    56d4:	00d70000 	sbcseq	r0, r7, r0
    56d8:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    56dc:	03000000 	movweq	r0, #0
    56e0:	03080b00 	movweq	r0, #35584	; 0x8b00
    56e4:	00fb09a2 	rscseq	r0, fp, r2, lsr #19
    56e8:	af0c0000 	svcge	0x000c0000
    56ec:	03000004 	movweq	r0, #4
    56f0:	002507a4 	eoreq	r0, r5, r4, lsr #15
    56f4:	0c000000 	stceq	0, cr0, [r0], {-0}
    56f8:	000004b7 			; <UNDEFINED> instruction: 0x000004b7
    56fc:	a505a903 	strge	sl, [r5, #-2307]	; 0xfffff6fd
    5700:	04000000 	streq	r0, [r0], #-0
    5704:	04380300 	ldrteq	r0, [r8], #-768	; 0xfffffd00
    5708:	aa030000 	bge	c5710 <__data_load__+0xc40e0>
    570c:	0000d703 	andeq	sp, r0, r3, lsl #14
    5710:	04f70300 	ldrbteq	r0, [r7], #768	; 0x300
    5714:	16040000 	strne	r0, [r4], -r0
    5718:	00007019 	andeq	r7, r0, r9, lsl r0
    571c:	03fa0300 	mvnseq	r0, #0, 6
    5720:	0c050000 	stceq	0, cr0, [r5], {-0}
    5724:	0000250d 	andeq	r2, r0, sp, lsl #10
    5728:	030c0300 	movweq	r0, #49920	; 0xc300
    572c:	23040000 	movwcs	r0, #16384	; 0x4000
    5730:	0001131b 	andeq	r1, r1, fp, lsl r3
    5734:	031d0d00 	tsteq	sp, #0, 26
    5738:	04180000 	ldreq	r0, [r8], #-0
    573c:	01850834 	orreq	r0, r5, r4, lsr r8
    5740:	590c0000 	stmdbpl	ip, {}	; <UNPREDICTABLE>
    5744:	04000004 	streq	r0, [r0], #-4
    5748:	01851336 	orreq	r1, r5, r6, lsr r3
    574c:	0e000000 	cdpeq	0, 0, cr0, cr0, cr0, {0}
    5750:	04006b5f 	streq	r6, [r0], #-2911	; 0xfffff4a1
    5754:	00250737 	eoreq	r0, r5, r7, lsr r7
    5758:	0c040000 	stceq	0, cr0, [r4], {-0}
    575c:	000004a1 	andeq	r0, r0, r1, lsr #9
    5760:	250b3704 	strcs	r3, [fp, #-1796]	; 0xfffff8fc
    5764:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    5768:	0003060c 	andeq	r0, r3, ip, lsl #12
    576c:	14370400 	ldrtne	r0, [r7], #-1024	; 0xfffffc00
    5770:	00000025 	andeq	r0, r0, r5, lsr #32
    5774:	05310c0c 	ldreq	r0, [r1, #-3084]!	; 0xfffff3f4
    5778:	37040000 	strcc	r0, [r4, -r0]
    577c:	0000251b 	andeq	r2, r0, fp, lsl r5
    5780:	5f0e1000 	svcpl	0x000e1000
    5784:	38040078 	stmdacc	r4, {r3, r4, r5, r6}
    5788:	00018b0b 	andeq	r8, r1, fp, lsl #22
    578c:	0f001400 	svceq	0x00001400
    5790:	00012b04 	andeq	r2, r1, r4, lsl #22
    5794:	01070900 	tsteq	r7, r0, lsl #18
    5798:	019b0000 	orrseq	r0, fp, r0
    579c:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    57a0:	00000000 	andeq	r0, r0, r0
    57a4:	03440d00 	movteq	r0, #19712	; 0x4d00
    57a8:	04240000 	strteq	r0, [r4], #-0
    57ac:	021e083c 	andseq	r0, lr, #60, 16	; 0x3c0000
    57b0:	690c0000 	stmdbvs	ip, {}	; <UNPREDICTABLE>
    57b4:	04000002 	streq	r0, [r0], #-2
    57b8:	0025093e 	eoreq	r0, r5, lr, lsr r9
    57bc:	0c000000 	stceq	0, cr0, [r0], {-0}
    57c0:	000004cd 	andeq	r0, r0, sp, asr #9
    57c4:	25093f04 	strcs	r3, [r9, #-3844]	; 0xfffff0fc
    57c8:	04000000 	streq	r0, [r0], #-0
    57cc:	00027e0c 	andeq	r7, r2, ip, lsl #28
    57d0:	09400400 	stmdbeq	r0, {sl}^
    57d4:	00000025 	andeq	r0, r0, r5, lsr #32
    57d8:	05cd0c08 	strbeq	r0, [sp, #3080]	; 0xc08
    57dc:	41040000 	mrsmi	r0, (UNDEF: 4)
    57e0:	00002509 	andeq	r2, r0, r9, lsl #10
    57e4:	c40c0c00 	strgt	r0, [ip], #-3072	; 0xfffff400
    57e8:	04000003 	streq	r0, [r0], #-3
    57ec:	00250942 	eoreq	r0, r5, r2, asr #18
    57f0:	0c100000 	ldceq	0, cr0, [r0], {-0}
    57f4:	000003b3 			; <UNDEFINED> instruction: 0x000003b3
    57f8:	25094304 	strcs	r4, [r9, #-772]	; 0xfffffcfc
    57fc:	14000000 	strne	r0, [r0], #-0
    5800:	0005360c 	andeq	r3, r5, ip, lsl #12
    5804:	09440400 	stmdbeq	r4, {sl}^
    5808:	00000025 	andeq	r0, r0, r5, lsr #32
    580c:	041a0c18 	ldreq	r0, [sl], #-3096	; 0xfffff3e8
    5810:	45040000 	strmi	r0, [r4, #-0]
    5814:	00002509 	andeq	r2, r0, r9, lsl #10
    5818:	6b0c1c00 	blvs	30c820 <_bsl_base_address+0x10a820>
    581c:	04000005 	streq	r0, [r0], #-5
    5820:	00250946 	eoreq	r0, r5, r6, asr #18
    5824:	00200000 	eoreq	r0, r0, r0
    5828:	00028d10 	andeq	r8, r2, r0, lsl sp
    582c:	04010800 	streq	r0, [r1], #-2048	; 0xfffff800
    5830:	0263084f 	rsbeq	r0, r3, #5177344	; 0x4f0000
    5834:	f90c0000 			; <UNDEFINED> instruction: 0xf90c0000
    5838:	04000002 	streq	r0, [r0], #-2
    583c:	02630a50 	rsbeq	r0, r3, #80, 20	; 0x50000
    5840:	0c000000 	stceq	0, cr0, [r0], {-0}
    5844:	000001f9 	strdeq	r0, [r0], -r9
    5848:	63095104 	movwvs	r5, #37124	; 0x9104
    584c:	80000002 	andhi	r0, r0, r2
    5850:	0004e911 	andeq	lr, r4, r1, lsl r9
    5854:	0a530400 	beq	14c685c <_bsl_base_address+0x12c485c>
    5858:	00000107 	andeq	r0, r0, r7, lsl #2
    585c:	b2110100 	andslt	r0, r1, #0, 2
    5860:	04000002 	streq	r0, [r0], #-2
    5864:	01070a56 	tsteq	r7, r6, asr sl
    5868:	01040000 	mrseq	r0, (UNDEF: 4)
    586c:	007e0900 	rsbseq	r0, lr, r0, lsl #18
    5870:	02730000 	rsbseq	r0, r3, #0
    5874:	380a0000 	stmdacc	sl, {}	; <UNPREDICTABLE>
    5878:	1f000000 	svcne	0x00000000
    587c:	01e51000 	mvneq	r1, r0
    5880:	01900000 	orrseq	r0, r0, r0
    5884:	b6086204 	strlt	r6, [r8], -r4, lsl #4
    5888:	0c000002 	stceq	0, cr0, [r0], {2}
    588c:	00000459 	andeq	r0, r0, r9, asr r4
    5890:	b6126304 	ldrlt	r6, [r2], -r4, lsl #6
    5894:	00000002 	andeq	r0, r0, r2
    5898:	0004710c 	andeq	r7, r4, ip, lsl #2
    589c:	06640400 	strbteq	r0, [r4], -r0, lsl #8
    58a0:	00000025 	andeq	r0, r0, r5, lsr #32
    58a4:	03010c04 	movweq	r0, #7172	; 0x1c04
    58a8:	66040000 	strvs	r0, [r4], -r0
    58ac:	0002bc09 	andeq	fp, r2, r9, lsl #24
    58b0:	8d0c0800 	stchi	8, cr0, [ip, #-0]
    58b4:	04000002 	streq	r0, [r0], #-2
    58b8:	021e1e67 	andseq	r1, lr, #1648	; 0x670
    58bc:	00880000 	addeq	r0, r8, r0
    58c0:	0273040f 	rsbseq	r0, r3, #251658240	; 0xf000000
    58c4:	cc090000 	stcgt	0, cr0, [r9], {-0}
    58c8:	cc000002 	stcgt	0, cr0, [r0], {2}
    58cc:	0a000002 	beq	58dc <__data_load__+0x42ac>
    58d0:	00000038 	andeq	r0, r0, r8, lsr r0
    58d4:	040f001f 	streq	r0, [pc], #-31	; 58dc <__data_load__+0x42ac>
    58d8:	000002d2 	ldrdeq	r0, [r0], -r2
    58dc:	04240d12 	strteq	r0, [r4], #-3346	; 0xfffff2ee
    58e0:	04080000 	streq	r0, [r8], #-0
    58e4:	02fb087a 	rscseq	r0, fp, #7995392	; 0x7a0000
    58e8:	d70c0000 	strle	r0, [ip, -r0]
    58ec:	04000009 	streq	r0, [r0], #-9
    58f0:	02fb117b 	rscseq	r1, fp, #-1073741794	; 0xc000001e
    58f4:	0c000000 	stceq	0, cr0, [r0], {-0}
    58f8:	000008a3 	andeq	r0, r0, r3, lsr #17
    58fc:	25067c04 	strcs	r7, [r6, #-3076]	; 0xfffff3fc
    5900:	04000000 	streq	r0, [r0], #-0
    5904:	54040f00 	strpl	r0, [r4], #-3840	; 0xfffff100
    5908:	0d000000 	stceq	0, cr0, [r0, #-0]
    590c:	00000443 	andeq	r0, r0, r3, asr #8
    5910:	08ba0468 	ldmeq	sl!, {r3, r5, r6, sl}
    5914:	00000444 	andeq	r0, r0, r4, asr #8
    5918:	00705f0e 	rsbseq	r5, r0, lr, lsl #30
    591c:	fb12bb04 	blx	4b4536 <_bsl_base_address+0x2b2536>
    5920:	00000002 	andeq	r0, r0, r2
    5924:	00725f0e 	rsbseq	r5, r2, lr, lsl #30
    5928:	2507bc04 	strcs	fp, [r7, #-3076]	; 0xfffff3fc
    592c:	04000000 	streq	r0, [r0], #-0
    5930:	00775f0e 	rsbseq	r5, r7, lr, lsl #30
    5934:	2507bd04 	strcs	fp, [r7, #-3332]	; 0xfffff2fc
    5938:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    593c:	0002ab0c 	andeq	sl, r2, ip, lsl #22
    5940:	09be0400 	ldmibeq	lr!, {sl}
    5944:	0000005b 	andeq	r0, r0, fp, asr r0
    5948:	03600c0c 	cmneq	r0, #12, 24	; 0xc00
    594c:	bf040000 	svclt	0x00040000
    5950:	00005b09 	andeq	r5, r0, r9, lsl #22
    5954:	5f0e0e00 	svcpl	0x000e0e00
    5958:	04006662 	streq	r6, [r0], #-1634	; 0xfffff99e
    595c:	02d311c0 	sbcseq	r1, r3, #192, 2	; 0x30
    5960:	0c100000 	ldceq	0, cr0, [r0], {-0}
    5964:	00000238 	andeq	r0, r0, r8, lsr r2
    5968:	2507c104 	strcs	ip, [r7, #-260]	; 0xfffffefc
    596c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    5970:	00029b0c 	andeq	r9, r2, ip, lsl #22
    5974:	0ac80400 	beq	ff20697c <__stack+0xdf2060a4>
    5978:	0000007e 	andeq	r0, r0, lr, ror r0
    597c:	03340c1c 	teqeq	r4, #28, 24	; 0x1c00
    5980:	ca040000 	bgt	105988 <__data_load__+0x104358>
    5984:	0005c31d 	andeq	ip, r5, sp, lsl r3
    5988:	ac0c2000 	stcge	0, cr2, [ip], {-0}
    598c:	04000003 	streq	r0, [r0], #-3
    5990:	05ed1dcc 	strbeq	r1, [sp, #3532]!	; 0xdcc
    5994:	0c240000 	stceq	0, cr0, [r4], #-0
    5998:	000004bf 			; <UNDEFINED> instruction: 0x000004bf
    599c:	110dcf04 	tstne	sp, r4, lsl #30
    59a0:	28000006 	stmdacs	r0, {r1, r2}
    59a4:	0005850c 	andeq	r8, r5, ip, lsl #10
    59a8:	09d00400 	ldmibeq	r0, {sl}^
    59ac:	0000062b 	andeq	r0, r0, fp, lsr #12
    59b0:	755f0e2c 	ldrbvc	r0, [pc, #-3628]	; 4b8c <__data_load__+0x355c>
    59b4:	d3040062 	movwle	r0, #16482	; 0x4062
    59b8:	0002d311 	andeq	sp, r2, r1, lsl r3
    59bc:	5f0e3000 	svcpl	0x000e3000
    59c0:	04007075 	streq	r7, [r0], #-117	; 0xffffff8b
    59c4:	02fb12d4 	rscseq	r1, fp, #212, 4	; 0x4000000d
    59c8:	0e380000 	cdpeq	0, 3, cr0, cr8, cr0, {0}
    59cc:	0072755f 	rsbseq	r7, r2, pc, asr r5
    59d0:	2507d504 	strcs	sp, [r7, #-1284]	; 0xfffffafc
    59d4:	3c000000 	stccc	0, cr0, [r0], {-0}
    59d8:	0002780c 	andeq	r7, r2, ip, lsl #16
    59dc:	11d80400 	bicsne	r0, r8, r0, lsl #8
    59e0:	00000631 	andeq	r0, r0, r1, lsr r6
    59e4:	055d0c40 	ldrbeq	r0, [sp, #-3136]	; 0xfffff3c0
    59e8:	d9040000 	stmdble	r4, {}	; <UNPREDICTABLE>
    59ec:	00064111 	andeq	r4, r6, r1, lsl r1
    59f0:	5f0e4300 	svcpl	0x000e4300
    59f4:	0400626c 	streq	r6, [r0], #-620	; 0xfffffd94
    59f8:	02d311dc 	sbcseq	r1, r3, #220, 2	; 0x37
    59fc:	0c440000 	mareq	acc0, r0, r4
    5a00:	000002c1 	andeq	r0, r0, r1, asr #5
    5a04:	2507df04 	strcs	sp, [r7, #-3844]	; 0xfffff0fc
    5a08:	4c000000 	stcmi	0, cr0, [r0], {-0}
    5a0c:	0002d20c 	andeq	sp, r2, ip, lsl #4
    5a10:	0ae00400 	beq	ff806a18 <__stack+0xdf806140>
    5a14:	0000008d 	andeq	r0, r0, sp, lsl #1
    5a18:	06d00c50 			; <UNDEFINED> instruction: 0x06d00c50
    5a1c:	e3040000 	movw	r0, #16384	; 0x4000
    5a20:	00046212 	andeq	r6, r4, r2, lsl r2
    5a24:	780c5400 	stmdavc	ip, {sl, ip, lr}
    5a28:	04000008 	streq	r0, [r0], #-8
    5a2c:	011f0ce7 	tsteq	pc, r7, ror #25
    5a30:	0c580000 	mraeq	r0, r8, acc0
    5a34:	0000044b 	andeq	r0, r0, fp, asr #8
    5a38:	fb0ee904 	blx	3bfe52 <_bsl_base_address+0x1bde52>
    5a3c:	5c000000 	stcpl	0, cr0, [r0], {-0}
    5a40:	0003a40c 	andeq	sl, r3, ip, lsl #8
    5a44:	09ea0400 	stmibeq	sl!, {sl}^
    5a48:	00000025 	andeq	r0, r0, r5, lsr #32
    5a4c:	25130064 	ldrcs	r0, [r3, #-100]	; 0xffffff9c
    5a50:	62000000 	andvs	r0, r0, #0
    5a54:	14000004 	strne	r0, [r0], #-4
    5a58:	00000462 	andeq	r0, r0, r2, ror #8
    5a5c:	00007e14 	andeq	r7, r0, r4, lsl lr
    5a60:	05b11400 	ldreq	r1, [r1, #1024]!	; 0x400
    5a64:	25140000 	ldrcs	r0, [r4, #-0]
    5a68:	00000000 	andeq	r0, r0, r0
    5a6c:	0468040f 	strbteq	r0, [r8], #-1039	; 0xfffffbf1
    5a70:	e0150000 	ands	r0, r5, r0
    5a74:	2800000b 	stmdacs	r0, {r0, r1, r3}
    5a78:	02650404 	rsbeq	r0, r5, #4, 8	; 0x4000000
    5a7c:	0005b108 	andeq	fp, r5, r8, lsl #2
    5a80:	04131600 	ldreq	r1, [r3], #-1536	; 0xfffffa00
    5a84:	67040000 	strvs	r0, [r4, -r0]
    5a88:	00250702 	eoreq	r0, r5, r2, lsl #14
    5a8c:	16000000 	strne	r0, [r0], -r0
    5a90:	000002ba 			; <UNDEFINED> instruction: 0x000002ba
    5a94:	0b026c04 	bleq	a0aac <__data_load__+0x9f47c>
    5a98:	0000069d 	muleq	r0, sp, r6
    5a9c:	03501604 	cmpeq	r0, #4, 12	; 0x400000
    5aa0:	6c040000 	stcvs	0, cr0, [r4], {-0}
    5aa4:	069d1402 	ldreq	r1, [sp], r2, lsl #8
    5aa8:	16080000 	strne	r0, [r8], -r0
    5aac:	00000315 	andeq	r0, r0, r5, lsl r3
    5ab0:	1e026c04 	cdpne	12, 0, cr6, cr2, cr4, {0}
    5ab4:	0000069d 	muleq	r0, sp, r6
    5ab8:	046c160c 	strbteq	r1, [ip], #-1548	; 0xfffff9f4
    5abc:	6e040000 	cdpvs	0, 0, cr0, cr4, cr0, {0}
    5ac0:	00250802 	eoreq	r0, r5, r2, lsl #16
    5ac4:	16100000 	ldrne	r0, [r0], -r0
    5ac8:	0000020d 	andeq	r0, r0, sp, lsl #4
    5acc:	08026f04 	stmdaeq	r2, {r2, r8, r9, sl, fp, sp, lr}
    5ad0:	0000089d 	muleq	r0, sp, r8
    5ad4:	04881614 	streq	r1, [r8], #1556	; 0x614
    5ad8:	72040000 	andvc	r0, r4, #0
    5adc:	00250702 	eoreq	r0, r5, r2, lsl #14
    5ae0:	16300000 	ldrtne	r0, [r0], -r0
    5ae4:	00000476 	andeq	r0, r0, r6, ror r4
    5ae8:	16027304 	strne	r7, [r2], -r4, lsl #6
    5aec:	000008b2 			; <UNDEFINED> instruction: 0x000008b2
    5af0:	03cd1634 	biceq	r1, sp, #52, 12	; 0x3400000
    5af4:	75040000 	strvc	r0, [r4, #-0]
    5af8:	00250702 	eoreq	r0, r5, r2, lsl #14
    5afc:	16380000 	ldrtne	r0, [r8], -r0
    5b00:	0000047e 	andeq	r0, r0, lr, ror r4
    5b04:	0a027704 	beq	a371c <__data_load__+0xa20ec>
    5b08:	000008c3 	andeq	r0, r0, r3, asr #17
    5b0c:	038f163c 	orreq	r1, pc, #60, 12	; 0x3c00000
    5b10:	7a040000 	bvc	105b18 <__data_load__+0x1044e8>
    5b14:	01851302 	orreq	r1, r5, r2, lsl #6
    5b18:	16400000 	strbne	r0, [r0], -r0
    5b1c:	0000033a 	andeq	r0, r0, sl, lsr r3
    5b20:	07027b04 	streq	r7, [r2, -r4, lsl #22]
    5b24:	00000025 	andeq	r0, r0, r5, lsr #32
    5b28:	05c81644 	strbeq	r1, [r8, #1604]	; 0x644
    5b2c:	7c040000 	stcvc	0, cr0, [r4], {-0}
    5b30:	01851302 	orreq	r1, r5, r2, lsl #6
    5b34:	16480000 	strbne	r0, [r8], -r0
    5b38:	000003f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    5b3c:	14027d04 	strne	r7, [r2], #-3332	; 0xfffff2fc
    5b40:	000008c9 	andeq	r0, r0, r9, asr #17
    5b44:	0358164c 	cmpeq	r8, #76, 12	; 0x4c00000
    5b48:	80040000 	andhi	r0, r4, r0
    5b4c:	00250702 	eoreq	r0, r5, r2, lsl #14
    5b50:	16500000 	ldrbne	r0, [r0], -r0
    5b54:	000002ca 	andeq	r0, r0, sl, asr #5
    5b58:	09028104 	stmdbeq	r2, {r2, r8, pc}
    5b5c:	000005b1 			; <UNDEFINED> instruction: 0x000005b1
    5b60:	040c1654 	streq	r1, [ip], #-1620	; 0xfffff9ac
    5b64:	a4040000 	strge	r0, [r4], #-0
    5b68:	08780702 	ldmdaeq	r8!, {r1, r8, r9, sl}^
    5b6c:	17580000 	ldrbne	r0, [r8, -r0]
    5b70:	000001e5 	andeq	r0, r0, r5, ror #3
    5b74:	1302a804 	movwne	sl, #10244	; 0x2804
    5b78:	000002b6 			; <UNDEFINED> instruction: 0x000002b6
    5b7c:	6d170148 	ldfvss	f0, [r7, #-288]	; 0xfffffee0
    5b80:	04000003 	streq	r0, [r0], #-3
    5b84:	731202a9 	tstvc	r2, #-1879048182	; 0x9000000a
    5b88:	4c000002 	stcmi	0, cr0, [r0], {2}
    5b8c:	05531701 	ldrbeq	r1, [r3, #-1793]	; 0xfffff8ff
    5b90:	ad040000 	stcge	0, cr0, [r4, #-0]
    5b94:	08da0c02 	ldmeq	sl, {r1, sl, fp}^
    5b98:	02dc0000 	sbcseq	r0, ip, #0
    5b9c:	0002a317 	andeq	sl, r2, r7, lsl r3
    5ba0:	02b20400 	adcseq	r0, r2, #0, 8
    5ba4:	00065e10 	andeq	r5, r6, r0, lsl lr
    5ba8:	1702e000 	strne	lr, [r2, -r0]
    5bac:	00000288 	andeq	r0, r0, r8, lsl #5
    5bb0:	0a02b404 	beq	b2bc8 <__data_load__+0xb1598>
    5bb4:	000008e6 	andeq	r0, r0, r6, ror #17
    5bb8:	0f0002ec 	svceq	0x000002ec
    5bbc:	0005b704 	andeq	fp, r5, r4, lsl #14
    5bc0:	08010400 	stmdaeq	r1, {sl}
    5bc4:	00000148 	andeq	r0, r0, r8, asr #2
    5bc8:	0005b718 	andeq	fp, r5, r8, lsl r7
    5bcc:	44040f00 	strmi	r0, [r4], #-3840	; 0xfffff100
    5bd0:	13000004 	movwne	r0, #4
    5bd4:	00000025 	andeq	r0, r0, r5, lsr #32
    5bd8:	000005e7 	andeq	r0, r0, r7, ror #11
    5bdc:	00046214 	andeq	r6, r4, r4, lsl r2
    5be0:	007e1400 	rsbseq	r1, lr, r0, lsl #8
    5be4:	e7140000 	ldr	r0, [r4, -r0]
    5be8:	14000005 	strne	r0, [r0], #-5
    5bec:	00000025 	andeq	r0, r0, r5, lsr #32
    5bf0:	be040f00 	cdplt	15, 0, cr0, cr4, cr0, {0}
    5bf4:	0f000005 	svceq	0x00000005
    5bf8:	0005c904 	andeq	ip, r5, r4, lsl #18
    5bfc:	00991300 	addseq	r1, r9, r0, lsl #6
    5c00:	06110000 	ldreq	r0, [r1], -r0
    5c04:	62140000 	andsvs	r0, r4, #0
    5c08:	14000004 	strne	r0, [r0], #-4
    5c0c:	0000007e 	andeq	r0, r0, lr, ror r0
    5c10:	00009914 	andeq	r9, r0, r4, lsl r9
    5c14:	00251400 	eoreq	r1, r5, r0, lsl #8
    5c18:	0f000000 	svceq	0x00000000
    5c1c:	0005f304 	andeq	pc, r5, r4, lsl #6
    5c20:	00251300 	eoreq	r1, r5, r0, lsl #6
    5c24:	062b0000 	strteq	r0, [fp], -r0
    5c28:	62140000 	andsvs	r0, r4, #0
    5c2c:	14000004 	strne	r0, [r0], #-4
    5c30:	0000007e 	andeq	r0, r0, lr, ror r0
    5c34:	17040f00 	strne	r0, [r4, -r0, lsl #30]
    5c38:	09000006 	stmdbeq	r0, {r1, r2}
    5c3c:	00000054 	andeq	r0, r0, r4, asr r0
    5c40:	00000641 	andeq	r0, r0, r1, asr #12
    5c44:	0000380a 	andeq	r3, r0, sl, lsl #16
    5c48:	09000200 	stmdbeq	r0, {r9}
    5c4c:	00000054 	andeq	r0, r0, r4, asr r0
    5c50:	00000651 	andeq	r0, r0, r1, asr r6
    5c54:	0000380a 	andeq	r3, r0, sl, lsl #16
    5c58:	06000000 	streq	r0, [r0], -r0
    5c5c:	00000431 	andeq	r0, r0, r1, lsr r4
    5c60:	1a012404 	bne	4ec78 <__data_load__+0x4d648>
    5c64:	00000301 	andeq	r0, r0, r1, lsl #6
    5c68:	000c1f19 	andeq	r1, ip, r9, lsl pc
    5c6c:	28040c00 	stmdacs	r4, {sl, fp}
    5c70:	06970801 	ldreq	r0, [r7], r1, lsl #16
    5c74:	59160000 	ldmdbpl	r6, {}	; <UNPREDICTABLE>
    5c78:	04000004 	streq	r0, [r0], #-4
    5c7c:	9711012a 	ldrls	r0, [r1, -sl, lsr #2]
    5c80:	00000006 	andeq	r0, r0, r6
    5c84:	00036616 	andeq	r6, r3, r6, lsl r6
    5c88:	012b0400 			; <UNDEFINED> instruction: 0x012b0400
    5c8c:	00002507 	andeq	r2, r0, r7, lsl #10
    5c90:	2b160400 	blcs	586c98 <_bsl_base_address+0x384c98>
    5c94:	04000004 	streq	r0, [r0], #-4
    5c98:	9d0b012c 	stflss	f0, [fp, #-176]	; 0xffffff50
    5c9c:	08000006 	stmdaeq	r0, {r1, r2}
    5ca0:	5e040f00 	cdppl	15, 0, cr0, cr4, cr0, {0}
    5ca4:	0f000006 	svceq	0x00000006
    5ca8:	00065104 	andeq	r5, r6, r4, lsl #2
    5cac:	02051900 	andeq	r1, r5, #0, 18
    5cb0:	040e0000 	streq	r0, [lr], #-0
    5cb4:	dc080144 	stfles	f0, [r8], {68}	; 0x44
    5cb8:	16000006 	strne	r0, [r0], -r6
    5cbc:	000004a9 	andeq	r0, r0, r9, lsr #9
    5cc0:	12014504 	andne	r4, r1, #4, 10	; 0x1000000
    5cc4:	000006dc 	ldrdeq	r0, [r0], -ip
    5cc8:	04d61600 	ldrbeq	r1, [r6], #1536	; 0x600
    5ccc:	46040000 	strmi	r0, [r4], -r0
    5cd0:	06dc1201 	ldrbeq	r1, [ip], r1, lsl #4
    5cd4:	16060000 	strne	r0, [r6], -r0
    5cd8:	000004f2 	strdeq	r0, [r0], -r2
    5cdc:	12014704 	andne	r4, r1, #4, 14	; 0x100000
    5ce0:	00000062 	andeq	r0, r0, r2, rrx
    5ce4:	6209000c 	andvs	r0, r9, #12
    5ce8:	ec000000 	stc	0, cr0, [r0], {-0}
    5cec:	0a000006 	beq	5d0c <__data_load__+0x46dc>
    5cf0:	00000038 	andeq	r0, r0, r8, lsr r0
    5cf4:	d01a0002 	andsle	r0, sl, r2
    5cf8:	07028504 	streq	r8, [r2, -r4, lsl #10]
    5cfc:	00000801 	andeq	r0, r0, r1, lsl #16
    5d00:	00052416 	andeq	r2, r5, r6, lsl r4
    5d04:	02870400 	addeq	r0, r7, #0, 8
    5d08:	00003818 	andeq	r3, r0, r8, lsl r8
    5d0c:	dc160000 	ldcle	0, cr0, [r6], {-0}
    5d10:	04000004 	streq	r0, [r0], #-4
    5d14:	b1120288 	tstlt	r2, r8, lsl #5
    5d18:	04000005 	streq	r0, [r0], #-5
    5d1c:	00038216 	andeq	r8, r3, r6, lsl r2
    5d20:	02890400 	addeq	r0, r9, #0, 8
    5d24:	00080110 	andeq	r0, r8, r0, lsl r1
    5d28:	76160800 	ldrvc	r0, [r6], -r0, lsl #16
    5d2c:	04000005 	streq	r0, [r0], #-5
    5d30:	9b17028a 	blls	5c6760 <_bsl_base_address+0x3c4760>
    5d34:	24000001 	strcs	r0, [r0], #-1
    5d38:	00032516 	andeq	r2, r3, r6, lsl r5
    5d3c:	028b0400 	addeq	r0, fp, #0, 8
    5d40:	0000250f 	andeq	r2, r0, pc, lsl #10
    5d44:	54164800 	ldrpl	r4, [r6], #-2048	; 0xfffff800
    5d48:	04000004 	streq	r0, [r0], #-4
    5d4c:	772c028c 	strvc	r0, [ip, -ip, lsl #5]!
    5d50:	50000000 	andpl	r0, r0, r0
    5d54:	00058c16 	andeq	r8, r5, r6, lsl ip
    5d58:	028d0400 	addeq	r0, sp, #0, 8
    5d5c:	0006a31a 	andeq	sl, r6, sl, lsl r3
    5d60:	5f165800 	svcpl	0x00165800
    5d64:	04000004 	streq	r0, [r0], #-4
    5d68:	fb16028e 	blx	5867aa <_bsl_base_address+0x3847aa>
    5d6c:	68000000 	stmdavs	r0, {}	; <UNPREDICTABLE>
    5d70:	0005ba16 	andeq	fp, r5, r6, lsl sl
    5d74:	028f0400 	addeq	r0, pc, #0, 8
    5d78:	0000fb16 	andeq	pc, r0, r6, lsl fp	; <UNPREDICTABLE>
    5d7c:	5b167000 	blpl	5a1d84 <_bsl_base_address+0x39fd84>
    5d80:	04000002 	streq	r0, [r0], #-2
    5d84:	fb160290 	blx	5867ce <_bsl_base_address+0x3847ce>
    5d88:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    5d8c:	00054916 	andeq	r4, r5, r6, lsl r9
    5d90:	02910400 	addseq	r0, r1, #0, 8
    5d94:	00081110 	andeq	r1, r8, r0, lsl r1
    5d98:	76168000 	ldrvc	r8, [r6], -r0
    5d9c:	04000003 	streq	r0, [r0], #-3
    5da0:	21100292 			; <UNDEFINED> instruction: 0x21100292
    5da4:	88000008 	stmdahi	r0, {r3}
    5da8:	0004ff16 	andeq	pc, r4, r6, lsl pc	; <UNPREDICTABLE>
    5dac:	02930400 	addseq	r0, r3, #0, 8
    5db0:	0000250f 	andeq	r2, r0, pc, lsl #10
    5db4:	eb16a000 	bl	5addbc <_bsl_base_address+0x3abdbc>
    5db8:	04000002 	streq	r0, [r0], #-2
    5dbc:	fb160294 	blx	586816 <_bsl_base_address+0x384816>
    5dc0:	a4000000 	strge	r0, [r0], #-0
    5dc4:	00024c16 	andeq	r4, r2, r6, lsl ip
    5dc8:	02950400 	addseq	r0, r5, #0, 8
    5dcc:	0000fb16 	andeq	pc, r0, r6, lsl fp	; <UNPREDICTABLE>
    5dd0:	da16ac00 	ble	5b0dd8 <_bsl_base_address+0x3aedd8>
    5dd4:	04000002 	streq	r0, [r0], #-2
    5dd8:	fb160296 	blx	58683a <_bsl_base_address+0x38483a>
    5ddc:	b4000000 	strlt	r0, [r0], #-0
    5de0:	00021816 	andeq	r1, r2, r6, lsl r8
    5de4:	02970400 	addseq	r0, r7, #0, 8
    5de8:	0000fb16 	andeq	pc, r0, r6, lsl fp	; <UNPREDICTABLE>
    5dec:	2716bc00 	ldrcs	fp, [r6, -r0, lsl #24]
    5df0:	04000002 	streq	r0, [r0], #-2
    5df4:	fb160298 	blx	58685e <_bsl_base_address+0x38485e>
    5df8:	c4000000 	strgt	r0, [r0], #-0
    5dfc:	00041116 	andeq	r1, r4, r6, lsl r1
    5e00:	02990400 	addseq	r0, r9, #0, 8
    5e04:	00002508 	andeq	r2, r0, r8, lsl #10
    5e08:	0900cc00 	stmdbeq	r0, {sl, fp, lr, pc}
    5e0c:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    5e10:	00000811 	andeq	r0, r0, r1, lsl r8
    5e14:	0000380a 	andeq	r3, r0, sl, lsl #16
    5e18:	09001900 	stmdbeq	r0, {r8, fp, ip}
    5e1c:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    5e20:	00000821 	andeq	r0, r0, r1, lsr #16
    5e24:	0000380a 	andeq	r3, r0, sl, lsl #16
    5e28:	09000700 	stmdbeq	r0, {r8, r9, sl}
    5e2c:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    5e30:	00000831 	andeq	r0, r0, r1, lsr r8
    5e34:	0000380a 	andeq	r3, r0, sl, lsl #16
    5e38:	1a001700 	bne	ba40 <__data_load__+0xa410>
    5e3c:	029e04f0 	addseq	r0, lr, #240, 8	; 0xf0000000
    5e40:	00085807 	andeq	r5, r8, r7, lsl #16
    5e44:	03bd1600 			; <UNDEFINED> instruction: 0x03bd1600
    5e48:	a1040000 	mrsge	r0, (UNDEF: 4)
    5e4c:	08581b02 	ldmdaeq	r8, {r1, r8, r9, fp, ip}^
    5e50:	16000000 	strne	r0, [r0], -r0
    5e54:	00000540 	andeq	r0, r0, r0, asr #10
    5e58:	1802a204 	stmdane	r2, {r2, r9, sp, pc}
    5e5c:	00000868 	andeq	r0, r0, r8, ror #16
    5e60:	fb090078 	blx	24604a <_bsl_base_address+0x4404a>
    5e64:	68000002 	stmdavs	r0, {r1}
    5e68:	0a000008 	beq	5e90 <__data_load__+0x4860>
    5e6c:	00000038 	andeq	r0, r0, r8, lsr r0
    5e70:	3809001d 	stmdacc	r9, {r0, r2, r3, r4}
    5e74:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
    5e78:	0a000008 	beq	5ea0 <__data_load__+0x4870>
    5e7c:	00000038 	andeq	r0, r0, r8, lsr r0
    5e80:	f01b001d 			; <UNDEFINED> instruction: 0xf01b001d
    5e84:	03028304 	movweq	r8, #8964	; 0x2304
    5e88:	0000089d 	muleq	r0, sp, r8
    5e8c:	000be01c 	andeq	lr, fp, ip, lsl r0
    5e90:	029a0400 	addseq	r0, sl, #0, 8
    5e94:	0006ec0b 	andeq	lr, r6, fp, lsl #24
    5e98:	05631c00 	strbeq	r1, [r3, #-3072]!	; 0xfffff400
    5e9c:	a3040000 	movwge	r0, #16384	; 0x4000
    5ea0:	08310b02 	ldmdaeq	r1!, {r1, r8, r9, fp}
    5ea4:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
    5ea8:	000005b7 			; <UNDEFINED> instruction: 0x000005b7
    5eac:	000008ad 	andeq	r0, r0, sp, lsr #17
    5eb0:	0000380a 	andeq	r3, r0, sl, lsl #16
    5eb4:	1d001800 	stcne	8, cr1, [r0, #-0]
    5eb8:	00000241 	andeq	r0, r0, r1, asr #4
    5ebc:	08ad040f 	stmiaeq	sp!, {r0, r1, r2, r3, sl}
    5ec0:	c31e0000 	tstgt	lr, #0
    5ec4:	14000008 	strne	r0, [r0], #-8
    5ec8:	00000462 	andeq	r0, r0, r2, ror #8
    5ecc:	b8040f00 	stmdalt	r4, {r8, r9, sl, fp}
    5ed0:	0f000008 	svceq	0x00000008
    5ed4:	00018504 	andeq	r8, r1, r4, lsl #10
    5ed8:	08da1e00 	ldmeq	sl, {r9, sl, fp, ip}^
    5edc:	25140000 	ldrcs	r0, [r4, #-0]
    5ee0:	00000000 	andeq	r0, r0, r0
    5ee4:	08e0040f 	stmiaeq	r0!, {r0, r1, r2, r3, sl}^
    5ee8:	040f0000 	streq	r0, [pc], #-0	; 5ef0 <__data_load__+0x48c0>
    5eec:	000008cf 	andeq	r0, r0, pc, asr #17
    5ef0:	00065109 	andeq	r5, r6, r9, lsl #2
    5ef4:	0008f600 	andeq	pc, r8, r0, lsl #12
    5ef8:	00380a00 	eorseq	r0, r8, r0, lsl #20
    5efc:	00020000 	andeq	r0, r2, r0
    5f00:	00094e19 	andeq	r4, r9, r9, lsl lr
    5f04:	d8012800 	stmdale	r1, {fp, sp}
    5f08:	09910802 	ldmibeq	r1, {r1, fp}
    5f0c:	03160000 	tsteq	r6, #0
    5f10:	01000008 	tsteq	r0, r8
    5f14:	250702d9 	strcs	r0, [r7, #-729]	; 0xfffffd27
    5f18:	00000000 	andeq	r0, r0, r0
    5f1c:	00085916 	andeq	r5, r8, r6, lsl r9
    5f20:	02da0100 	sbcseq	r0, sl, #0, 2
    5f24:	00002507 	andeq	r2, r0, r7, lsl #10
    5f28:	02160400 	andseq	r0, r6, #0, 8
    5f2c:	01000009 	tsteq	r0, r9
    5f30:	250702db 	strcs	r0, [r7, #-731]	; 0xfffffd25
    5f34:	08000000 	stmdaeq	r0, {}	; <UNPREDICTABLE>
    5f38:	0007f616 	andeq	pc, r7, r6, lsl r6	; <UNPREDICTABLE>
    5f3c:	02dc0100 	sbcseq	r0, ip, #0, 2
    5f40:	00002507 	andeq	r2, r0, r7, lsl #10
    5f44:	e8160c00 	ldmda	r6, {sl, fp}
    5f48:	01000009 	tsteq	r0, r9
    5f4c:	250702dd 	strcs	r0, [r7, #-733]	; 0xfffffd23
    5f50:	10000000 	andne	r0, r0, r0
    5f54:	00092e16 	andeq	r2, r9, r6, lsl lr
    5f58:	02de0100 	sbcseq	r0, lr, #0, 2
    5f5c:	00002507 	andeq	r2, r0, r7, lsl #10
    5f60:	01161400 	tsteq	r6, r0, lsl #8
    5f64:	01000009 	tsteq	r0, r9
    5f68:	250702df 	strcs	r0, [r7, #-735]	; 0xfffffd21
    5f6c:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
    5f70:	00089616 	andeq	r9, r8, r6, lsl r6
    5f74:	02e00100 	rsceq	r0, r0, #0, 2
    5f78:	00002507 	andeq	r2, r0, r7, lsl #10
    5f7c:	58161c00 	ldmdapl	r6, {sl, fp, ip}
    5f80:	01000008 	tsteq	r0, r8
    5f84:	250702e1 	strcs	r0, [r7, #-737]	; 0xfffffd1f
    5f88:	20000000 	andcs	r0, r0, r0
    5f8c:	0009c116 	andeq	ip, r9, r6, lsl r1
    5f90:	02e20100 	rsceq	r0, r2, #0, 2
    5f94:	00002507 	andeq	r2, r0, r7, lsl #10
    5f98:	19002400 	stmdbne	r0, {sl, sp}
    5f9c:	00000909 	andeq	r0, r0, r9, lsl #18
    5fa0:	04e90110 	strbteq	r0, [r9], #272	; 0x110
    5fa4:	0009d608 	andeq	sp, r9, r8, lsl #12
    5fa8:	07db1600 	ldrbeq	r1, [fp, r0, lsl #12]
    5fac:	eb010000 	bl	45fb4 <__data_load__+0x44984>
    5fb0:	002c1304 	eoreq	r1, ip, r4, lsl #6
    5fb4:	16000000 	strne	r0, [r0], -r0
    5fb8:	000008a4 	andeq	r0, r0, r4, lsr #17
    5fbc:	1304ec01 	movwne	lr, #19457	; 0x4c01
    5fc0:	0000002c 	andeq	r0, r0, ip, lsr #32
    5fc4:	64661f04 	strbtvs	r1, [r6], #-3844	; 0xfffff0fc
    5fc8:	04ed0100 	strbteq	r0, [sp], #256	; 0x100
    5fcc:	0009d618 	andeq	sp, r9, r8, lsl r6
    5fd0:	621f0800 	andsvs	r0, pc, #0, 16
    5fd4:	ee01006b 	cdp	0, 0, cr0, cr1, cr11, {3}
    5fd8:	09d61804 	ldmibeq	r6, {r2, fp, ip}^
    5fdc:	000c0000 	andeq	r0, ip, r0
    5fe0:	0991040f 	ldmibeq	r1, {r0, r1, r2, r3, sl}
    5fe4:	aa060000 	bge	185fec <__data_load__+0x1849bc>
    5fe8:	01000009 	tsteq	r0, r9
    5fec:	d61e04f1 			; <UNDEFINED> instruction: 0xd61e04f1
    5ff0:	06000009 	streq	r0, [r0], -r9
    5ff4:	00000836 	andeq	r0, r0, r6, lsr r8
    5ff8:	1e061d01 	cdpne	13, 0, cr1, cr6, cr1, {0}
    5ffc:	000009d6 	ldrdeq	r0, [r0], -r6
    6000:	0009e909 	andeq	lr, r9, r9, lsl #18
    6004:	000a0700 	andeq	r0, sl, r0, lsl #14
    6008:	00382000 	eorseq	r2, r8, r0
    600c:	01010000 	mrseq	r0, (UNDEF: 1)
    6010:	09692100 	stmdbeq	r9!, {r8, sp}^
    6014:	51010000 	mrspl	r0, (UNDEF: 1)
    6018:	09f61006 	ldmibeq	r6!, {r1, r2, ip}^
    601c:	16210000 	strtne	r0, [r1], -r0
    6020:	01000009 	tsteq	r0, r9
    6024:	701606c8 	andsvc	r0, r6, r8, asr #13
    6028:	21000000 	mrscs	r0, (UNDEF: 0)
    602c:	000007e5 	andeq	r0, r0, r5, ror #15
    6030:	1606c901 	strne	ip, [r6], -r1, lsl #18
    6034:	00000070 	andeq	r0, r0, r0, ror r0
    6038:	0009ca21 	andeq	ip, r9, r1, lsr #20
    603c:	06ce0100 	strbeq	r0, [lr], r0, lsl #2
    6040:	0005b10e 	andeq	fp, r5, lr, lsl #2
    6044:	093d2100 	ldmdbeq	sp!, {r8, sp}
    6048:	d1010000 	mrsle	r0, (UNDEF: 1)
    604c:	08f61806 	ldmeq	r6!, {r1, r2, fp, ip}^
    6050:	c9220000 	stmdbgt	r2!, {}	; <UNPREDICTABLE>
    6054:	0100000b 	tsteq	r0, fp
    6058:	25050cee 	strcs	r0, [r5, #-3310]	; 0xfffff312
    605c:	cc000000 	stcgt	0, cr0, [r0], {-0}
    6060:	0000000f 	andeq	r0, r0, pc
    6064:	01000001 	tsteq	r0, r1
    6068:	000b769c 	muleq	fp, ip, r6
    606c:	09762300 	ldmdbeq	r6!, {r8, r9, sp}^
    6070:	ee010000 	cdp	0, 0, cr0, cr1, cr0, {0}
    6074:	0462110c 	strbteq	r1, [r2], #-268	; 0xfffffef4
    6078:	170a0000 	strne	r0, [sl, -r0]
    607c:	16fe0000 	ldrbtne	r0, [lr], r0
    6080:	70240000 	eorvc	r0, r4, r0
    6084:	01006461 	tsteq	r0, r1, ror #8
    6088:	2c1d0cee 	ldccs	12, cr0, [sp], {238}	; 0xee
    608c:	60000000 	andvs	r0, r0, r0
    6090:	5a000017 	bpl	60f4 <__data_load__+0x4ac4>
    6094:	25000017 	strcs	r0, [r0, #-23]	; 0xffffffe9
    6098:	000009b8 			; <UNDEFINED> instruction: 0x000009b8
    609c:	090cf301 	stmdbeq	ip, {r0, r8, r9, ip, sp, lr, pc}
    60a0:	00000069 	andeq	r0, r0, r9, rrx
    60a4:	00001796 	muleq	r0, r6, r7
    60a8:	0000178c 	andeq	r1, r0, ip, lsl #15
    60ac:	000ba425 	andeq	sl, fp, r5, lsr #8
    60b0:	0cf40100 	ldfeqe	f0, [r4]
    60b4:	00006909 	andeq	r6, r0, r9, lsl #18
    60b8:	0017e000 	andseq	lr, r7, r0
    60bc:	0017da00 	andseq	sp, r7, r0, lsl #20
    60c0:	0baf2500 	bleq	febcf4c8 <__stack+0xdebcebf0>
    60c4:	f5010000 			; <UNDEFINED> instruction: 0xf5010000
    60c8:	05b1090c 	ldreq	r0, [r1, #2316]!	; 0x90c
    60cc:	180f0000 	stmdane	pc, {}	; <UNPREDICTABLE>
    60d0:	18090000 	stmdane	r9, {}	; <UNPREDICTABLE>
    60d4:	3e250000 	cdpcc	0, 2, cr0, cr5, cr0, {0}
    60d8:	01000008 	tsteq	r0, r8
    60dc:	b1090cf6 	strdlt	r0, [r9, -r6]
    60e0:	3c000005 	stccc	0, cr0, [r0], {5}
    60e4:	38000018 	stmdacc	r0, {r3, r4}
    60e8:	26000018 			; <UNDEFINED> instruction: 0x26000018
    60ec:	00000936 	andeq	r0, r0, r6, lsr r9
    60f0:	110cf801 	tstne	ip, r1, lsl #16	; <UNPREDICTABLE>
    60f4:	00000070 	andeq	r0, r0, r0, ror r0
    60f8:	e0271000 	eor	r1, r7, r0
    60fc:	be00000f 	cdplt	0, 0, cr0, cr0, cr15, {0}
    6100:	0400000c 	streq	r0, [r0], #-12
    6104:	2800000b 	stmdacs	r0, {r0, r1, r3}
    6108:	76025001 	strvc	r5, [r2], -r1
    610c:	18270000 	stmdane	r7!, {}	; <UNPREDICTABLE>
    6110:	cb000010 	blgt	6158 <__data_load__+0x4b28>
    6114:	1d00000c 	stcne	0, cr0, [r0, #-48]	; 0xffffffd0
    6118:	2800000b 	stmdacs	r0, {r0, r1, r3}
    611c:	76025001 	strvc	r5, [r2], -r1
    6120:	51012800 	tstpl	r1, r0, lsl #16
    6124:	27003001 	strcs	r3, [r0, -r1]
    6128:	00001030 	andeq	r1, r0, r0, lsr r0
    612c:	00000cd7 	ldrdeq	r0, [r0], -r7
    6130:	00000b31 	andeq	r0, r0, r1, lsr fp
    6134:	02500128 	subseq	r0, r0, #40, 2
    6138:	27000076 	smlsdxcs	r0, r6, r0, r0
    613c:	00001048 	andeq	r1, r0, r8, asr #32
    6140:	00000ccb 	andeq	r0, r0, fp, asr #25
    6144:	00000b4c 	andeq	r0, r0, ip, asr #22
    6148:	02500128 	subseq	r0, r0, #40, 2
    614c:	01280076 			; <UNDEFINED> instruction: 0x01280076
    6150:	00740351 	rsbseq	r0, r4, r1, asr r3
    6154:	7827001f 	stmdavc	r7!, {r0, r1, r2, r3, r4}
    6158:	d7000010 	smladle	r0, r0, r0, r0
    615c:	6000000c 	andvs	r0, r0, ip
    6160:	2800000b 	stmdacs	r0, {r0, r1, r3}
    6164:	76025001 	strvc	r5, [r2], -r1
    6168:	90290000 	eorls	r0, r9, r0
    616c:	cb000010 	blgt	61b4 <__data_load__+0x4b84>
    6170:	2800000c 	stmdacs	r0, {r2, r3}
    6174:	76025001 	strvc	r5, [r2], -r1
    6178:	51012800 	tstpl	r1, r0, lsl #16
    617c:	00003001 	andeq	r3, r0, r1
    6180:	0007c92a 	andeq	ip, r7, sl, lsr #18
    6184:	0a430100 	beq	10c658c <_bsl_base_address+0xec458c>
    6188:	0010cc06 	andseq	ip, r0, r6, lsl #24
    618c:	0002ec00 	andeq	lr, r2, r0, lsl #24
    6190:	be9c0100 	fmllte	f0, f4, f0
    6194:	2300000c 	movwcs	r0, #12
    6198:	00000976 	andeq	r0, r0, r6, ror r9
    619c:	0b0a4301 	bleq	296da8 <_bsl_base_address+0x94da8>
    61a0:	00000462 	andeq	r0, r0, r2, ror #8
    61a4:	00001862 	andeq	r1, r0, r2, ror #16
    61a8:	0000185a 	andeq	r1, r0, sl, asr r8
    61ac:	6d656d24 	stclvs	13, cr6, [r5, #-144]!	; 0xffffff70
    61b0:	0a430100 	beq	10c65b8 <_bsl_base_address+0xec45b8>
    61b4:	00007e18 	andeq	r7, r0, r8, lsl lr
    61b8:	0018ab00 	andseq	sl, r8, r0, lsl #22
    61bc:	00189900 	andseq	r9, r8, r0, lsl #18
    61c0:	00702b00 	rsbseq	r2, r0, r0, lsl #22
    61c4:	0d0a4e01 	stceq	14, cr4, [sl, #-4]
    61c8:	000009dc 	ldrdeq	r0, [r0], -ip
    61cc:	00001928 	andeq	r1, r0, r8, lsr #18
    61d0:	00001922 	andeq	r1, r0, r2, lsr #18
    61d4:	0064682b 	rsbeq	r6, r4, fp, lsr #16
    61d8:	130a4f01 	movwne	r4, #44801	; 0xaf01
    61dc:	0000002c 	andeq	r0, r0, ip, lsr #32
    61e0:	00001959 	andeq	r1, r0, r9, asr r9
    61e4:	00001951 	andeq	r1, r0, r1, asr r9
    61e8:	007a732b 	rsbseq	r7, sl, fp, lsr #6
    61ec:	130a5001 	movwne	r5, #40961	; 0xa001
    61f0:	0000002c 	andeq	r0, r0, ip, lsr #32
    61f4:	0000199e 	muleq	r0, lr, r9
    61f8:	0000198e 	andeq	r1, r0, lr, lsl #19
    61fc:	7864692b 	stmdavc	r4!, {r0, r1, r3, r5, r8, fp, sp, lr}^
    6200:	0a510100 	beq	1446608 <_bsl_base_address+0x1244608>
    6204:	0000250d 	andeq	r2, r0, sp, lsl #10
    6208:	001a0600 	andseq	r0, sl, r0, lsl #12
    620c:	0019fe00 	andseq	pc, r9, r0, lsl #28
    6210:	045a2500 	ldrbeq	r2, [sl], #-1280	; 0xfffffb00
    6214:	52010000 	andpl	r0, r1, #0
    6218:	09dc0d0a 	ldmibeq	ip, {r1, r3, r8, sl, fp}^
    621c:	1a4a0000 	bne	1286224 <_bsl_base_address+0x1084224>
    6220:	1a3c0000 	bne	f06228 <_bsl_base_address+0xd04228>
    6224:	bb250000 	bllt	94622c <_bsl_base_address+0x74422c>
    6228:	0100000b 	tsteq	r0, fp
    622c:	2c130a53 			; <UNDEFINED> instruction: 0x2c130a53
    6230:	b7000000 	strlt	r0, [r0, -r0]
    6234:	9f00001a 	svcls	0x0000001a
    6238:	2500001a 	strcs	r0, [r0, #-26]	; 0xffffffe6
    623c:	00000bc2 	andeq	r0, r0, r2, asr #23
    6240:	130a5401 	movwne	r5, #41985	; 0xa401
    6244:	0000002c 	andeq	r0, r0, ip, lsr #32
    6248:	00001b5c 	andeq	r1, r0, ip, asr fp
    624c:	00001b4e 	andeq	r1, r0, lr, asr #22
    6250:	6b63622b 	blvs	18deb04 <_bsl_base_address+0x16dcb04>
    6254:	0a550100 	beq	154665c <_bsl_base_address+0x134465c>
    6258:	0009dc0d 	andeq	sp, r9, sp, lsl #24
    625c:	001bcd00 	andseq	ip, fp, r0, lsl #26
    6260:	001bbf00 	andseq	fp, fp, r0, lsl #30
    6264:	77662b00 	strbvc	r2, [r6, -r0, lsl #22]!
    6268:	56010064 	strpl	r0, [r1], -r4, rrx
    626c:	09dc0d0a 	ldmibeq	ip, {r1, r3, r8, sl, fp}^
    6270:	1c360000 	ldcne	0, cr0, [r6], #-0
    6274:	1c240000 	stcne	0, cr0, [r4], #-0
    6278:	aa250000 	bge	946280 <_bsl_base_address+0x744280>
    627c:	0100000b 	tsteq	r0, fp
    6280:	250d0a57 	strcs	r0, [sp, #-2647]	; 0xfffff5a9
    6284:	ae000000 	cdpge	0, 0, cr0, cr0, cr0, {0}
    6288:	a200001c 	andge	r0, r0, #28
    628c:	2700001c 	smladcs	r0, ip, r0, r0
    6290:	000010e0 	andeq	r1, r0, r0, ror #1
    6294:	00000cbe 			; <UNDEFINED> instruction: 0x00000cbe
    6298:	00000c99 	muleq	r0, r9, ip
    629c:	02500128 	subseq	r0, r0, #40, 2
    62a0:	27000075 	smlsdxcs	r0, r5, r0, r0
    62a4:	000011a0 	andeq	r1, r0, r0, lsr #3
    62a8:	00000cd7 	ldrdeq	r0, [r0], -r7
    62ac:	00000cad 	andeq	r0, r0, sp, lsr #25
    62b0:	02500128 	subseq	r0, r0, #40, 2
    62b4:	29000075 	stmdbcs	r0, {r0, r2, r4, r5, r6}
    62b8:	000012f4 	strdeq	r1, [r0], -r4
    62bc:	00000a48 	andeq	r0, r0, r8, asr #20
    62c0:	02500128 	subseq	r0, r0, #40, 2
    62c4:	00000075 	andeq	r0, r0, r5, ror r0
    62c8:	0008702c 	andeq	r7, r8, ip, lsr #32
    62cc:	00087000 	andeq	r7, r8, r0
    62d0:	01480100 	mrseq	r0, (UNDEF: 88)
    62d4:	09802d0d 	stmibeq	r0, {r0, r2, r3, r8, sl, fp, sp}
    62d8:	09800000 	stmibeq	r0, {}	; <UNPREDICTABLE>
    62dc:	99060000 	stmdbls	r6, {}	; <UNPREDICTABLE>
    62e0:	08262c0e 	stmdaeq	r6!, {r1, r2, r3, sl, fp, sp}
    62e4:	08260000 	stmdaeq	r6!, {}	; <UNPREDICTABLE>
    62e8:	49010000 	stmdbmi	r1, {}	; <UNPREDICTABLE>
    62ec:	dd000d01 	stcle	13, cr0, [r0, #-4]
    62f0:	0400000b 	streq	r0, [r0], #-11
    62f4:	00179b00 	andseq	r9, r7, r0, lsl #22
    62f8:	61010400 	tstvs	r1, r0, lsl #8
    62fc:	0c000001 	stceq	0, cr0, [r0], {1}
    6300:	00000be7 	andeq	r0, r0, r7, ror #23
    6304:	00000682 	andeq	r0, r0, r2, lsl #13
    6308:	000013b8 			; <UNDEFINED> instruction: 0x000013b8
    630c:	00000178 	andeq	r0, r0, r8, ror r1
    6310:	00001d4a 	andeq	r1, r0, sl, asr #26
    6314:	29070402 	stmdbcs	r7, {r1, sl}
    6318:	03000001 	movweq	r0, #1
    631c:	6e690504 	cdpvs	5, 6, cr0, cr9, cr4, {0}
    6320:	08020074 	stmdaeq	r2, {r2, r4, r5, r6}
    6324:	00007b05 	andeq	r7, r0, r5, lsl #22
    6328:	04080200 	streq	r0, [r8], #-512	; 0xfffffe00
    632c:	000001cb 	andeq	r0, r0, fp, asr #3
    6330:	00039d04 	andeq	r9, r3, r4, lsl #26
    6334:	015e0200 	cmpeq	lr, r0, lsl #4
    6338:	00002517 	andeq	r2, r0, r7, lsl r5
    633c:	06010200 	streq	r0, [r1], -r0, lsl #4
    6340:	00000141 	andeq	r0, r0, r1, asr #2
    6344:	3f080102 	svccc	0x00080102
    6348:	02000001 	andeq	r0, r0, #1
    634c:	01d70502 	bicseq	r0, r7, r2, lsl #10
    6350:	02020000 	andeq	r0, r2, #0
    6354:	00008907 	andeq	r8, r0, r7, lsl #18
    6358:	05040200 	streq	r0, [r4, #-512]	; 0xfffffe00
    635c:	00000080 	andeq	r0, r0, r0, lsl #1
    6360:	24070402 	strcs	r0, [r7], #-1026	; 0xfffffbfe
    6364:	02000001 	andeq	r0, r0, #1
    6368:	011f0708 	tsteq	pc, r8, lsl #14
    636c:	d8050000 	stmdale	r5, {}	; <UNPREDICTABLE>
    6370:	03000003 	movweq	r0, #3
    6374:	006a0e2e 	rsbeq	r0, sl, lr, lsr #28
    6378:	c5050000 	strgt	r0, [r5, #-0]
    637c:	03000004 	movweq	r0, #4
    6380:	006a0e74 	rsbeq	r0, sl, r4, ror lr
    6384:	04060000 	streq	r0, [r6], #-0
    6388:	b903a503 	stmdblt	r3, {r0, r1, r8, sl, sp, pc}
    638c:	07000000 	streq	r0, [r0, -r0]
    6390:	00000397 	muleq	r0, r7, r3
    6394:	410ca703 	tstmi	ip, r3, lsl #14
    6398:	07000000 	streq	r0, [r0, -r0]
    639c:	00000349 	andeq	r0, r0, r9, asr #6
    63a0:	b913a803 	ldmdblt	r3, {r0, r1, fp, sp, pc}
    63a4:	00000000 	andeq	r0, r0, r0
    63a8:	00005508 	andeq	r5, r0, r8, lsl #10
    63ac:	0000c900 	andeq	ip, r0, r0, lsl #18
    63b0:	00250900 	eoreq	r0, r5, r0, lsl #18
    63b4:	00030000 	andeq	r0, r3, r0
    63b8:	a203080a 	andge	r0, r3, #655360	; 0xa0000
    63bc:	0000ed09 	andeq	lr, r0, r9, lsl #26
    63c0:	04af0b00 	strteq	r0, [pc], #2816	; 63c8 <__data_load__+0x4d98>
    63c4:	a4030000 	strge	r0, [r3], #-0
    63c8:	00002c07 	andeq	r2, r0, r7, lsl #24
    63cc:	b70b0000 	strlt	r0, [fp, -r0]
    63d0:	03000004 	movweq	r0, #4
    63d4:	009705a9 	addseq	r0, r7, r9, lsr #11
    63d8:	00040000 	andeq	r0, r4, r0
    63dc:	00043805 	andeq	r3, r4, r5, lsl #16
    63e0:	03aa0300 			; <UNDEFINED> instruction: 0x03aa0300
    63e4:	000000c9 	andeq	r0, r0, r9, asr #1
    63e8:	f705040c 			; <UNDEFINED> instruction: 0xf705040c
    63ec:	04000004 	streq	r0, [r0], #-4
    63f0:	00711916 	rsbseq	r1, r1, r6, lsl r9
    63f4:	fa050000 	blx	1463fc <__data_load__+0x144dcc>
    63f8:	05000003 	streq	r0, [r0, #-3]
    63fc:	002c0d0c 	eoreq	r0, ip, ip, lsl #26
    6400:	0c050000 	stceq	0, cr0, [r5], {-0}
    6404:	04000003 	streq	r0, [r0], #-3
    6408:	01071b23 	tsteq	r7, r3, lsr #22
    640c:	1d0d0000 	stcne	0, cr0, [sp, #-0]
    6410:	18000003 	stmdane	r0, {r0, r1}
    6414:	79083404 	stmdbvc	r8, {r2, sl, ip, sp}
    6418:	0b000001 	bleq	6424 <__data_load__+0x4df4>
    641c:	00000459 	andeq	r0, r0, r9, asr r4
    6420:	79133604 	ldmdbvc	r3, {r2, r9, sl, ip, sp}
    6424:	00000001 	andeq	r0, r0, r1
    6428:	006b5f0e 	rsbeq	r5, fp, lr, lsl #30
    642c:	2c073704 	stccs	7, cr3, [r7], {4}
    6430:	04000000 	streq	r0, [r0], #-0
    6434:	0004a10b 	andeq	sl, r4, fp, lsl #2
    6438:	0b370400 	bleq	dc7440 <_bsl_base_address+0xbc5440>
    643c:	0000002c 	andeq	r0, r0, ip, lsr #32
    6440:	03060b08 	movweq	r0, #27400	; 0x6b08
    6444:	37040000 	strcc	r0, [r4, -r0]
    6448:	00002c14 	andeq	r2, r0, r4, lsl ip
    644c:	310b0c00 	tstcc	fp, r0, lsl #24
    6450:	04000005 	streq	r0, [r0], #-5
    6454:	002c1b37 	eoreq	r1, ip, r7, lsr fp
    6458:	0e100000 	cdpeq	0, 1, cr0, cr0, cr0, {0}
    645c:	0400785f 	streq	r7, [r0], #-2143	; 0xfffff7a1
    6460:	017f0b38 	cmneq	pc, r8, lsr fp	; <UNPREDICTABLE>
    6464:	00140000 	andseq	r0, r4, r0
    6468:	011f040f 	tsteq	pc, pc, lsl #8
    646c:	fb080000 	blx	206476 <_bsl_base_address+0x4476>
    6470:	8f000000 	svchi	0x00000000
    6474:	09000001 	stmdbeq	r0, {r0}
    6478:	00000025 	andeq	r0, r0, r5, lsr #32
    647c:	440d0000 	strmi	r0, [sp], #-0
    6480:	24000003 	strcs	r0, [r0], #-3
    6484:	12083c04 	andne	r3, r8, #4, 24	; 0x400
    6488:	0b000002 	bleq	6498 <__data_load__+0x4e68>
    648c:	00000269 	andeq	r0, r0, r9, ror #4
    6490:	2c093e04 	stccs	14, cr3, [r9], {4}
    6494:	00000000 	andeq	r0, r0, r0
    6498:	0004cd0b 	andeq	ip, r4, fp, lsl #26
    649c:	093f0400 	ldmdbeq	pc!, {sl}	; <UNPREDICTABLE>
    64a0:	0000002c 	andeq	r0, r0, ip, lsr #32
    64a4:	027e0b04 	rsbseq	r0, lr, #4, 22	; 0x1000
    64a8:	40040000 	andmi	r0, r4, r0
    64ac:	00002c09 	andeq	r2, r0, r9, lsl #24
    64b0:	cd0b0800 	stcgt	8, cr0, [fp, #-0]
    64b4:	04000005 	streq	r0, [r0], #-5
    64b8:	002c0941 	eoreq	r0, ip, r1, asr #18
    64bc:	0b0c0000 	bleq	3064c4 <_bsl_base_address+0x1044c4>
    64c0:	000003c4 	andeq	r0, r0, r4, asr #7
    64c4:	2c094204 	sfmcs	f4, 4, [r9], {4}
    64c8:	10000000 	andne	r0, r0, r0
    64cc:	0003b30b 	andeq	fp, r3, fp, lsl #6
    64d0:	09430400 	stmdbeq	r3, {sl}^
    64d4:	0000002c 	andeq	r0, r0, ip, lsr #32
    64d8:	05360b14 	ldreq	r0, [r6, #-2836]!	; 0xfffff4ec
    64dc:	44040000 	strmi	r0, [r4], #-0
    64e0:	00002c09 	andeq	r2, r0, r9, lsl #24
    64e4:	1a0b1800 	bne	2cc4ec <_bsl_base_address+0xca4ec>
    64e8:	04000004 	streq	r0, [r0], #-4
    64ec:	002c0945 	eoreq	r0, ip, r5, asr #18
    64f0:	0b1c0000 	bleq	7064f8 <_bsl_base_address+0x5044f8>
    64f4:	0000056b 	andeq	r0, r0, fp, ror #10
    64f8:	2c094604 	stccs	6, cr4, [r9], {4}
    64fc:	20000000 	andcs	r0, r0, r0
    6500:	028d1000 	addeq	r1, sp, #0
    6504:	01080000 	mrseq	r0, (UNDEF: 8)
    6508:	57084f04 	strpl	r4, [r8, -r4, lsl #30]
    650c:	0b000002 	bleq	651c <__data_load__+0x4eec>
    6510:	000002f9 	strdeq	r0, [r0], -r9
    6514:	570a5004 	strpl	r5, [sl, -r4]
    6518:	00000002 	andeq	r0, r0, r2
    651c:	0001f90b 	andeq	pc, r1, fp, lsl #18
    6520:	09510400 	ldmdbeq	r1, {sl}^
    6524:	00000257 	andeq	r0, r0, r7, asr r2
    6528:	04e91180 	strbteq	r1, [r9], #384	; 0x180
    652c:	53040000 	movwpl	r0, #16384	; 0x4000
    6530:	0000fb0a 	andeq	pc, r0, sl, lsl #22
    6534:	11010000 	mrsne	r0, (UNDEF: 1)
    6538:	000002b2 			; <UNDEFINED> instruction: 0x000002b2
    653c:	fb0a5604 	blx	29bd56 <_bsl_base_address+0x99d56>
    6540:	04000000 	streq	r0, [r0], #-0
    6544:	f9080001 			; <UNDEFINED> instruction: 0xf9080001
    6548:	67000000 	strvs	r0, [r0, -r0]
    654c:	09000002 	stmdbeq	r0, {r1}
    6550:	00000025 	andeq	r0, r0, r5, lsr #32
    6554:	e510001f 	ldr	r0, [r0, #-31]	; 0xffffffe1
    6558:	90000001 	andls	r0, r0, r1
    655c:	08620401 	stmdaeq	r2!, {r0, sl}^
    6560:	000002aa 	andeq	r0, r0, sl, lsr #5
    6564:	0004590b 	andeq	r5, r4, fp, lsl #18
    6568:	12630400 	rsbne	r0, r3, #0, 8
    656c:	000002aa 	andeq	r0, r0, sl, lsr #5
    6570:	04710b00 	ldrbteq	r0, [r1], #-2816	; 0xfffff500
    6574:	64040000 	strvs	r0, [r4], #-0
    6578:	00002c06 	andeq	r2, r0, r6, lsl #24
    657c:	010b0400 	tsteq	fp, r0, lsl #8
    6580:	04000003 	streq	r0, [r0], #-3
    6584:	02b00966 	adcseq	r0, r0, #1671168	; 0x198000
    6588:	0b080000 	bleq	206590 <_bsl_base_address+0x4590>
    658c:	0000028d 	andeq	r0, r0, sp, lsl #5
    6590:	121e6704 	andsne	r6, lr, #4, 14	; 0x100000
    6594:	88000002 	stmdahi	r0, {r1}
    6598:	67040f00 	strvs	r0, [r4, -r0, lsl #30]
    659c:	08000002 	stmdaeq	r0, {r1}
    65a0:	000002c0 	andeq	r0, r0, r0, asr #5
    65a4:	000002c0 	andeq	r0, r0, r0, asr #5
    65a8:	00002509 	andeq	r2, r0, r9, lsl #10
    65ac:	0f001f00 	svceq	0x00001f00
    65b0:	0002c604 	andeq	ip, r2, r4, lsl #12
    65b4:	240d1200 	strcs	r1, [sp], #-512	; 0xfffffe00
    65b8:	08000004 	stmdaeq	r0, {r2}
    65bc:	ef087a04 	svc	0x00087a04
    65c0:	0b000002 	bleq	65d0 <__data_load__+0x4fa0>
    65c4:	000009d7 	ldrdeq	r0, [r0], -r7
    65c8:	ef117b04 	svc	0x00117b04
    65cc:	00000002 	andeq	r0, r0, r2
    65d0:	0008a30b 	andeq	sl, r8, fp, lsl #6
    65d4:	067c0400 	ldrbteq	r0, [ip], -r0, lsl #8
    65d8:	0000002c 	andeq	r0, r0, ip, lsr #32
    65dc:	040f0004 	streq	r0, [pc], #-4	; 65e4 <__data_load__+0x4fb4>
    65e0:	00000055 	andeq	r0, r0, r5, asr r0
    65e4:	0004430d 	andeq	r4, r4, sp, lsl #6
    65e8:	ba046800 	blt	1205f0 <__data_load__+0x11efc0>
    65ec:	00043808 	andeq	r3, r4, r8, lsl #16
    65f0:	705f0e00 	subsvc	r0, pc, r0, lsl #28
    65f4:	12bb0400 	adcsne	r0, fp, #0, 8
    65f8:	000002ef 	andeq	r0, r0, pc, ror #5
    65fc:	725f0e00 	subsvc	r0, pc, #0, 28
    6600:	07bc0400 	ldreq	r0, [ip, r0, lsl #8]!
    6604:	0000002c 	andeq	r0, r0, ip, lsr #32
    6608:	775f0e04 	ldrbvc	r0, [pc, -r4, lsl #28]
    660c:	07bd0400 	ldreq	r0, [sp, r0, lsl #8]!
    6610:	0000002c 	andeq	r0, r0, ip, lsr #32
    6614:	02ab0b08 	adceq	r0, fp, #8, 22	; 0x2000
    6618:	be040000 	cdplt	0, 0, cr0, cr4, cr0, {0}
    661c:	00005c09 	andeq	r5, r0, r9, lsl #24
    6620:	600b0c00 	andvs	r0, fp, r0, lsl #24
    6624:	04000003 	streq	r0, [r0], #-3
    6628:	005c09bf 	ldrheq	r0, [ip], #-159	; 0xffffff61
    662c:	0e0e0000 	cdpeq	0, 0, cr0, cr14, cr0, {0}
    6630:	0066625f 	rsbeq	r6, r6, pc, asr r2
    6634:	c711c004 	ldrgt	ip, [r1, -r4]
    6638:	10000002 	andne	r0, r0, r2
    663c:	0002380b 	andeq	r3, r2, fp, lsl #16
    6640:	07c10400 	strbeq	r0, [r1, r0, lsl #8]
    6644:	0000002c 	andeq	r0, r0, ip, lsr #32
    6648:	029b0b18 	addseq	r0, fp, #24, 22	; 0x6000
    664c:	c8040000 	stmdagt	r4, {}	; <UNPREDICTABLE>
    6650:	0000f90a 	andeq	pc, r0, sl, lsl #18
    6654:	340b1c00 	strcc	r1, [fp], #-3072	; 0xfffff400
    6658:	04000003 	streq	r0, [r0], #-3
    665c:	05b71dca 	ldreq	r1, [r7, #3530]!	; 0xdca
    6660:	0b200000 	bleq	806668 <_bsl_base_address+0x604668>
    6664:	000003ac 	andeq	r0, r0, ip, lsr #7
    6668:	e11dcc04 	tst	sp, r4, lsl #24
    666c:	24000005 	strcs	r0, [r0], #-5
    6670:	0004bf0b 	andeq	fp, r4, fp, lsl #30
    6674:	0dcf0400 	cfstrdeq	mvd0, [pc]	; 667c <__data_load__+0x504c>
    6678:	00000605 	andeq	r0, r0, r5, lsl #12
    667c:	05850b28 	streq	r0, [r5, #2856]	; 0xb28
    6680:	d0040000 	andle	r0, r4, r0
    6684:	00061f09 	andeq	r1, r6, r9, lsl #30
    6688:	5f0e2c00 	svcpl	0x000e2c00
    668c:	04006275 	streq	r6, [r0], #-629	; 0xfffffd8b
    6690:	02c711d3 	sbceq	r1, r7, #-1073741772	; 0xc0000034
    6694:	0e300000 	cdpeq	0, 3, cr0, cr0, cr0, {0}
    6698:	0070755f 	rsbseq	r7, r0, pc, asr r5
    669c:	ef12d404 	svc	0x0012d404
    66a0:	38000002 	stmdacc	r0, {r1}
    66a4:	72755f0e 	rsbsvc	r5, r5, #14, 30	; 0x38
    66a8:	07d50400 	ldrbeq	r0, [r5, r0, lsl #8]
    66ac:	0000002c 	andeq	r0, r0, ip, lsr #32
    66b0:	02780b3c 	rsbseq	r0, r8, #60, 22	; 0xf000
    66b4:	d8040000 	stmdale	r4, {}	; <UNPREDICTABLE>
    66b8:	00062511 	andeq	r2, r6, r1, lsl r5
    66bc:	5d0b4000 	stcpl	0, cr4, [fp, #-0]
    66c0:	04000005 	streq	r0, [r0], #-5
    66c4:	063511d9 			; <UNDEFINED> instruction: 0x063511d9
    66c8:	0e430000 	cdpeq	0, 4, cr0, cr3, cr0, {0}
    66cc:	00626c5f 	rsbeq	r6, r2, pc, asr ip
    66d0:	c711dc04 	ldrgt	sp, [r1, -r4, lsl #24]
    66d4:	44000002 	strmi	r0, [r0], #-2
    66d8:	0002c10b 	andeq	ip, r2, fp, lsl #2
    66dc:	07df0400 	ldrbeq	r0, [pc, r0, lsl #8]
    66e0:	0000002c 	andeq	r0, r0, ip, lsr #32
    66e4:	02d20b4c 	sbcseq	r0, r2, #76, 22	; 0x13000
    66e8:	e0040000 	and	r0, r4, r0
    66ec:	00007f0a 	andeq	r7, r0, sl, lsl #30
    66f0:	d00b5000 	andle	r5, fp, r0
    66f4:	04000006 	streq	r0, [r0], #-6
    66f8:	045612e3 	ldrbeq	r1, [r6], #-739	; 0xfffffd1d
    66fc:	0b540000 	bleq	1506704 <_bsl_base_address+0x1304704>
    6700:	00000878 	andeq	r0, r0, r8, ror r8
    6704:	130ce704 	movwne	lr, #50948	; 0xc704
    6708:	58000001 	stmdapl	r0, {r0}
    670c:	00044b0b 	andeq	r4, r4, fp, lsl #22
    6710:	0ee90400 	cdpeq	4, 14, cr0, cr9, cr0, {0}
    6714:	000000ed 	andeq	r0, r0, sp, ror #1
    6718:	03a40b5c 			; <UNDEFINED> instruction: 0x03a40b5c
    671c:	ea040000 	b	106724 <__data_load__+0x1050f4>
    6720:	00002c09 	andeq	r2, r0, r9, lsl #24
    6724:	13006400 	movwne	r6, #1024	; 0x400
    6728:	0000002c 	andeq	r0, r0, ip, lsr #32
    672c:	00000456 	andeq	r0, r0, r6, asr r4
    6730:	00045614 	andeq	r5, r4, r4, lsl r6
    6734:	00f91400 	rscseq	r1, r9, r0, lsl #8
    6738:	a5140000 	ldrge	r0, [r4, #-0]
    673c:	14000005 	strne	r0, [r0], #-5
    6740:	0000002c 	andeq	r0, r0, ip, lsr #32
    6744:	5c040f00 	stcpl	15, cr0, [r4], {-0}
    6748:	15000004 	strne	r0, [r0, #-4]
    674c:	00000be0 	andeq	r0, r0, r0, ror #23
    6750:	65040428 	strvs	r0, [r4, #-1064]	; 0xfffffbd8
    6754:	05a50802 	streq	r0, [r5, #2050]!	; 0x802
    6758:	13160000 	tstne	r6, #0
    675c:	04000004 	streq	r0, [r0], #-4
    6760:	2c070267 	sfmcs	f0, 4, [r7], {103}	; 0x67
    6764:	00000000 	andeq	r0, r0, r0
    6768:	0002ba16 	andeq	fp, r2, r6, lsl sl
    676c:	026c0400 	rsbeq	r0, ip, #0, 8
    6770:	0006910b 	andeq	r9, r6, fp, lsl #2
    6774:	50160400 	andspl	r0, r6, r0, lsl #8
    6778:	04000003 	streq	r0, [r0], #-3
    677c:	9114026c 	tstls	r4, ip, ror #4
    6780:	08000006 	stmdaeq	r0, {r1, r2}
    6784:	00031516 	andeq	r1, r3, r6, lsl r5
    6788:	026c0400 	rsbeq	r0, ip, #0, 8
    678c:	0006911e 	andeq	r9, r6, lr, lsl r1
    6790:	6c160c00 	ldcvs	12, cr0, [r6], {-0}
    6794:	04000004 	streq	r0, [r0], #-4
    6798:	2c08026e 	sfmcs	f0, 4, [r8], {110}	; 0x6e
    679c:	10000000 	andne	r0, r0, r0
    67a0:	00020d16 	andeq	r0, r2, r6, lsl sp
    67a4:	026f0400 	rsbeq	r0, pc, #0, 8
    67a8:	00089108 	andeq	r9, r8, r8, lsl #2
    67ac:	88161400 	ldmdahi	r6, {sl, ip}
    67b0:	04000004 	streq	r0, [r0], #-4
    67b4:	2c070272 	sfmcs	f0, 4, [r7], {114}	; 0x72
    67b8:	30000000 	andcc	r0, r0, r0
    67bc:	00047616 	andeq	r7, r4, r6, lsl r6
    67c0:	02730400 	rsbseq	r0, r3, #0, 8
    67c4:	0008a616 	andeq	sl, r8, r6, lsl r6
    67c8:	cd163400 	cfldrsgt	mvf3, [r6, #-0]
    67cc:	04000003 	streq	r0, [r0], #-3
    67d0:	2c070275 	sfmcs	f0, 4, [r7], {117}	; 0x75
    67d4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    67d8:	00047e16 	andeq	r7, r4, r6, lsl lr
    67dc:	02770400 	rsbseq	r0, r7, #0, 8
    67e0:	0008b70a 	andeq	fp, r8, sl, lsl #14
    67e4:	8f163c00 	svchi	0x00163c00
    67e8:	04000003 	streq	r0, [r0], #-3
    67ec:	7913027a 	ldmdbvc	r3, {r1, r3, r4, r5, r6, r9}
    67f0:	40000001 	andmi	r0, r0, r1
    67f4:	00033a16 	andeq	r3, r3, r6, lsl sl
    67f8:	027b0400 	rsbseq	r0, fp, #0, 8
    67fc:	00002c07 	andeq	r2, r0, r7, lsl #24
    6800:	c8164400 	ldmdagt	r6, {sl, lr}
    6804:	04000005 	streq	r0, [r0], #-5
    6808:	7913027c 	ldmdbvc	r3, {r2, r3, r4, r5, r6, r9}
    680c:	48000001 	stmdami	r0, {r0}
    6810:	0003f016 	andeq	pc, r3, r6, lsl r0	; <UNPREDICTABLE>
    6814:	027d0400 	rsbseq	r0, sp, #0, 8
    6818:	0008bd14 	andeq	fp, r8, r4, lsl sp
    681c:	58164c00 	ldmdapl	r6, {sl, fp, lr}
    6820:	04000003 	streq	r0, [r0], #-3
    6824:	2c070280 	sfmcs	f0, 4, [r7], {128}	; 0x80
    6828:	50000000 	andpl	r0, r0, r0
    682c:	0002ca16 	andeq	ip, r2, r6, lsl sl
    6830:	02810400 	addeq	r0, r1, #0, 8
    6834:	0005a509 	andeq	sl, r5, r9, lsl #10
    6838:	0c165400 	cfldrseq	mvf5, [r6], {-0}
    683c:	04000004 	streq	r0, [r0], #-4
    6840:	6c0702a4 	sfmvs	f0, 4, [r7], {164}	; 0xa4
    6844:	58000008 	stmdapl	r0, {r3}
    6848:	0001e517 	andeq	lr, r1, r7, lsl r5
    684c:	02a80400 	adceq	r0, r8, #0, 8
    6850:	0002aa13 	andeq	sl, r2, r3, lsl sl
    6854:	17014800 	strne	r4, [r1, -r0, lsl #16]
    6858:	0000036d 	andeq	r0, r0, sp, ror #6
    685c:	1202a904 	andne	sl, r2, #4, 18	; 0x10000
    6860:	00000267 	andeq	r0, r0, r7, ror #4
    6864:	5317014c 	tstpl	r7, #76, 2
    6868:	04000005 	streq	r0, [r0], #-5
    686c:	ce0c02ad 	cdpgt	2, 0, cr0, cr12, cr13, {5}
    6870:	dc000008 	stcle	0, cr0, [r0], {8}
    6874:	02a31702 	adceq	r1, r3, #524288	; 0x80000
    6878:	b2040000 	andlt	r0, r4, #0
    687c:	06521002 	ldrbeq	r1, [r2], -r2
    6880:	02e00000 	rsceq	r0, r0, #0
    6884:	00028817 	andeq	r8, r2, r7, lsl r8
    6888:	02b40400 	adcseq	r0, r4, #0, 8
    688c:	0008da0a 	andeq	sp, r8, sl, lsl #20
    6890:	0002ec00 	andeq	lr, r2, r0, lsl #24
    6894:	05ab040f 	streq	r0, [fp, #1039]!	; 0x40f
    6898:	01020000 	mrseq	r0, (UNDEF: 2)
    689c:	00014808 	andeq	r4, r1, r8, lsl #16
    68a0:	05ab1800 	streq	r1, [fp, #2048]!	; 0x800
    68a4:	040f0000 	streq	r0, [pc], #-0	; 68ac <__data_load__+0x527c>
    68a8:	00000438 	andeq	r0, r0, r8, lsr r4
    68ac:	00002c13 	andeq	r2, r0, r3, lsl ip
    68b0:	0005db00 	andeq	sp, r5, r0, lsl #22
    68b4:	04561400 	ldrbeq	r1, [r6], #-1024	; 0xfffffc00
    68b8:	f9140000 			; <UNDEFINED> instruction: 0xf9140000
    68bc:	14000000 	strne	r0, [r0], #-0
    68c0:	000005db 	ldrdeq	r0, [r0], -fp
    68c4:	00002c14 	andeq	r2, r0, r4, lsl ip
    68c8:	040f0000 	streq	r0, [pc], #-0	; 68d0 <__data_load__+0x52a0>
    68cc:	000005b2 			; <UNDEFINED> instruction: 0x000005b2
    68d0:	05bd040f 	ldreq	r0, [sp, #1039]!	; 0x40f
    68d4:	8b130000 	blhi	4c68dc <_bsl_base_address+0x2c48dc>
    68d8:	05000000 	streq	r0, [r0, #-0]
    68dc:	14000006 	strne	r0, [r0], #-6
    68e0:	00000456 	andeq	r0, r0, r6, asr r4
    68e4:	0000f914 	andeq	pc, r0, r4, lsl r9	; <UNPREDICTABLE>
    68e8:	008b1400 	addeq	r1, fp, r0, lsl #8
    68ec:	2c140000 	ldccs	0, cr0, [r4], {-0}
    68f0:	00000000 	andeq	r0, r0, r0
    68f4:	05e7040f 	strbeq	r0, [r7, #1039]!	; 0x40f
    68f8:	2c130000 	ldccs	0, cr0, [r3], {-0}
    68fc:	1f000000 	svcne	0x00000000
    6900:	14000006 	strne	r0, [r0], #-6
    6904:	00000456 	andeq	r0, r0, r6, asr r4
    6908:	0000f914 	andeq	pc, r0, r4, lsl r9	; <UNPREDICTABLE>
    690c:	040f0000 	streq	r0, [pc], #-0	; 6914 <__data_load__+0x52e4>
    6910:	0000060b 	andeq	r0, r0, fp, lsl #12
    6914:	00005508 	andeq	r5, r0, r8, lsl #10
    6918:	00063500 	andeq	r3, r6, r0, lsl #10
    691c:	00250900 	eoreq	r0, r5, r0, lsl #18
    6920:	00020000 	andeq	r0, r2, r0
    6924:	00005508 	andeq	r5, r0, r8, lsl #10
    6928:	00064500 	andeq	r4, r6, r0, lsl #10
    692c:	00250900 	eoreq	r0, r5, r0, lsl #18
    6930:	00000000 	andeq	r0, r0, r0
    6934:	00043104 	andeq	r3, r4, r4, lsl #2
    6938:	01240400 			; <UNDEFINED> instruction: 0x01240400
    693c:	0002f51a 	andeq	pc, r2, sl, lsl r5	; <UNPREDICTABLE>
    6940:	0c1f1900 			; <UNDEFINED> instruction: 0x0c1f1900
    6944:	040c0000 	streq	r0, [ip], #-0
    6948:	8b080128 	blhi	206df0 <_bsl_base_address+0x4df0>
    694c:	16000006 	strne	r0, [r0], -r6
    6950:	00000459 	andeq	r0, r0, r9, asr r4
    6954:	11012a04 	tstne	r1, r4, lsl #20
    6958:	0000068b 	andeq	r0, r0, fp, lsl #13
    695c:	03661600 	cmneq	r6, #0, 12
    6960:	2b040000 	blcs	106968 <__data_load__+0x105338>
    6964:	002c0701 	eoreq	r0, ip, r1, lsl #14
    6968:	16040000 	strne	r0, [r4], -r0
    696c:	0000042b 	andeq	r0, r0, fp, lsr #8
    6970:	0b012c04 	bleq	51988 <__data_load__+0x50358>
    6974:	00000691 	muleq	r0, r1, r6
    6978:	040f0008 	streq	r0, [pc], #-8	; 6980 <__data_load__+0x5350>
    697c:	00000652 	andeq	r0, r0, r2, asr r6
    6980:	0645040f 	strbeq	r0, [r5], -pc, lsl #8
    6984:	05190000 	ldreq	r0, [r9, #-0]
    6988:	0e000002 	cdpeq	0, 0, cr0, cr0, cr2, {0}
    698c:	08014404 	stmdaeq	r1, {r2, sl, lr}
    6990:	000006d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    6994:	0004a916 	andeq	sl, r4, r6, lsl r9
    6998:	01450400 	cmpeq	r5, r0, lsl #8
    699c:	0006d012 	andeq	sp, r6, r2, lsl r0
    69a0:	d6160000 	ldrle	r0, [r6], -r0
    69a4:	04000004 	streq	r0, [r0], #-4
    69a8:	d0120146 	andsle	r0, r2, r6, asr #2
    69ac:	06000006 	streq	r0, [r0], -r6
    69b0:	0004f216 	andeq	pc, r4, r6, lsl r2	; <UNPREDICTABLE>
    69b4:	01470400 	cmpeq	r7, r0, lsl #8
    69b8:	00006312 	andeq	r6, r0, r2, lsl r3
    69bc:	08000c00 	stmdaeq	r0, {sl, fp}
    69c0:	00000063 	andeq	r0, r0, r3, rrx
    69c4:	000006e0 	andeq	r0, r0, r0, ror #13
    69c8:	00002509 	andeq	r2, r0, r9, lsl #10
    69cc:	1a000200 	bne	71d4 <__data_load__+0x5ba4>
    69d0:	028504d0 	addeq	r0, r5, #208, 8	; 0xd0000000
    69d4:	0007f507 	andeq	pc, r7, r7, lsl #10
    69d8:	05241600 	streq	r1, [r4, #-1536]!	; 0xfffffa00
    69dc:	87040000 	strhi	r0, [r4, -r0]
    69e0:	00251802 	eoreq	r1, r5, r2, lsl #16
    69e4:	16000000 	strne	r0, [r0], -r0
    69e8:	000004dc 	ldrdeq	r0, [r0], -ip
    69ec:	12028804 	andne	r8, r2, #4, 16	; 0x40000
    69f0:	000005a5 	andeq	r0, r0, r5, lsr #11
    69f4:	03821604 	orreq	r1, r2, #4, 12	; 0x400000
    69f8:	89040000 	stmdbhi	r4, {}	; <UNPREDICTABLE>
    69fc:	07f51002 	ldrbeq	r1, [r5, r2]!
    6a00:	16080000 	strne	r0, [r8], -r0
    6a04:	00000576 	andeq	r0, r0, r6, ror r5
    6a08:	17028a04 	strne	r8, [r2, -r4, lsl #20]
    6a0c:	0000018f 	andeq	r0, r0, pc, lsl #3
    6a10:	03251624 			; <UNDEFINED> instruction: 0x03251624
    6a14:	8b040000 	blhi	106a1c <__data_load__+0x1053ec>
    6a18:	002c0f02 	eoreq	r0, ip, r2, lsl #30
    6a1c:	16480000 	strbne	r0, [r8], -r0
    6a20:	00000454 	andeq	r0, r0, r4, asr r4
    6a24:	2c028c04 	stccs	12, cr8, [r2], {4}
    6a28:	00000078 	andeq	r0, r0, r8, ror r0
    6a2c:	058c1650 	streq	r1, [ip, #1616]	; 0x650
    6a30:	8d040000 	stchi	0, cr0, [r4, #-0]
    6a34:	06971a02 	ldreq	r1, [r7], r2, lsl #20
    6a38:	16580000 	ldrbne	r0, [r8], -r0
    6a3c:	0000045f 	andeq	r0, r0, pc, asr r4
    6a40:	16028e04 	strne	r8, [r2], -r4, lsl #28
    6a44:	000000ed 	andeq	r0, r0, sp, ror #1
    6a48:	05ba1668 	ldreq	r1, [sl, #1640]!	; 0x668
    6a4c:	8f040000 	svchi	0x00040000
    6a50:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    6a54:	16700000 	ldrbtne	r0, [r0], -r0
    6a58:	0000025b 	andeq	r0, r0, fp, asr r2
    6a5c:	16029004 	strne	r9, [r2], -r4
    6a60:	000000ed 	andeq	r0, r0, sp, ror #1
    6a64:	05491678 	strbeq	r1, [r9, #-1656]	; 0xfffff988
    6a68:	91040000 	mrsls	r0, (UNDEF: 4)
    6a6c:	08051002 	stmdaeq	r5, {r1, ip}
    6a70:	16800000 	strne	r0, [r0], r0
    6a74:	00000376 	andeq	r0, r0, r6, ror r3
    6a78:	10029204 	andne	r9, r2, r4, lsl #4
    6a7c:	00000815 	andeq	r0, r0, r5, lsl r8
    6a80:	04ff1688 	ldrbteq	r1, [pc], #1672	; 6a88 <__data_load__+0x5458>
    6a84:	93040000 	movwls	r0, #16384	; 0x4000
    6a88:	002c0f02 	eoreq	r0, ip, r2, lsl #30
    6a8c:	16a00000 	strtne	r0, [r0], r0
    6a90:	000002eb 	andeq	r0, r0, fp, ror #5
    6a94:	16029404 	strne	r9, [r2], -r4, lsl #8
    6a98:	000000ed 	andeq	r0, r0, sp, ror #1
    6a9c:	024c16a4 	subeq	r1, ip, #164, 12	; 0xa400000
    6aa0:	95040000 	strls	r0, [r4, #-0]
    6aa4:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    6aa8:	16ac0000 	strtne	r0, [ip], r0
    6aac:	000002da 	ldrdeq	r0, [r0], -sl
    6ab0:	16029604 	strne	r9, [r2], -r4, lsl #12
    6ab4:	000000ed 	andeq	r0, r0, sp, ror #1
    6ab8:	021816b4 	andseq	r1, r8, #180, 12	; 0xb400000
    6abc:	97040000 	strls	r0, [r4, -r0]
    6ac0:	00ed1602 	rsceq	r1, sp, r2, lsl #12
    6ac4:	16bc0000 	ldrtne	r0, [ip], r0
    6ac8:	00000227 	andeq	r0, r0, r7, lsr #4
    6acc:	16029804 	strne	r9, [r2], -r4, lsl #16
    6ad0:	000000ed 	andeq	r0, r0, sp, ror #1
    6ad4:	041116c4 	ldreq	r1, [r1], #-1732	; 0xfffff93c
    6ad8:	99040000 	stmdbls	r4, {}	; <UNPREDICTABLE>
    6adc:	002c0802 	eoreq	r0, ip, r2, lsl #16
    6ae0:	00cc0000 	sbceq	r0, ip, r0
    6ae4:	0005ab08 	andeq	sl, r5, r8, lsl #22
    6ae8:	00080500 	andeq	r0, r8, r0, lsl #10
    6aec:	00250900 	eoreq	r0, r5, r0, lsl #18
    6af0:	00190000 	andseq	r0, r9, r0
    6af4:	0005ab08 	andeq	sl, r5, r8, lsl #22
    6af8:	00081500 	andeq	r1, r8, r0, lsl #10
    6afc:	00250900 	eoreq	r0, r5, r0, lsl #18
    6b00:	00070000 	andeq	r0, r7, r0
    6b04:	0005ab08 	andeq	sl, r5, r8, lsl #22
    6b08:	00082500 	andeq	r2, r8, r0, lsl #10
    6b0c:	00250900 	eoreq	r0, r5, r0, lsl #18
    6b10:	00170000 	andseq	r0, r7, r0
    6b14:	9e04f01a 	mcrls	0, 0, pc, cr4, cr10, {0}	; <UNPREDICTABLE>
    6b18:	084c0702 	stmdaeq	ip, {r1, r8, r9, sl}^
    6b1c:	bd160000 	ldclt	0, cr0, [r6, #-0]
    6b20:	04000003 	streq	r0, [r0], #-3
    6b24:	4c1b02a1 	lfmmi	f0, 4, [fp], {161}	; 0xa1
    6b28:	00000008 	andeq	r0, r0, r8
    6b2c:	00054016 	andeq	r4, r5, r6, lsl r0
    6b30:	02a20400 	adceq	r0, r2, #0, 8
    6b34:	00085c18 	andeq	r5, r8, r8, lsl ip
    6b38:	08007800 	stmdaeq	r0, {fp, ip, sp, lr}
    6b3c:	000002ef 	andeq	r0, r0, pc, ror #5
    6b40:	0000085c 	andeq	r0, r0, ip, asr r8
    6b44:	00002509 	andeq	r2, r0, r9, lsl #10
    6b48:	08001d00 	stmdaeq	r0, {r8, sl, fp, ip}
    6b4c:	00000025 	andeq	r0, r0, r5, lsr #32
    6b50:	0000086c 	andeq	r0, r0, ip, ror #16
    6b54:	00002509 	andeq	r2, r0, r9, lsl #10
    6b58:	1b001d00 	blne	df60 <__data_load__+0xc930>
    6b5c:	028304f0 	addeq	r0, r3, #240, 8	; 0xf0000000
    6b60:	00089103 	andeq	r9, r8, r3, lsl #2
    6b64:	0be01c00 	bleq	ff80db6c <__stack+0xdf80d294>
    6b68:	9a040000 	bls	106b70 <__data_load__+0x105540>
    6b6c:	06e00b02 	strbteq	r0, [r0], r2, lsl #22
    6b70:	631c0000 	tstvs	ip, #0
    6b74:	04000005 	streq	r0, [r0], #-5
    6b78:	250b02a3 	strcs	r0, [fp, #-675]	; 0xfffffd5d
    6b7c:	00000008 	andeq	r0, r0, r8
    6b80:	0005ab08 	andeq	sl, r5, r8, lsl #22
    6b84:	0008a100 	andeq	sl, r8, r0, lsl #2
    6b88:	00250900 	eoreq	r0, r5, r0, lsl #18
    6b8c:	00180000 	andseq	r0, r8, r0
    6b90:	0002411d 	andeq	r4, r2, sp, lsl r1
    6b94:	a1040f00 	tstge	r4, r0, lsl #30
    6b98:	1e000008 	cdpne	0, 0, cr0, cr0, cr8, {0}
    6b9c:	000008b7 			; <UNDEFINED> instruction: 0x000008b7
    6ba0:	00045614 	andeq	r5, r4, r4, lsl r6
    6ba4:	040f0000 	streq	r0, [pc], #-0	; 6bac <__data_load__+0x557c>
    6ba8:	000008ac 	andeq	r0, r0, ip, lsr #17
    6bac:	0179040f 	cmneq	r9, pc, lsl #8
    6bb0:	ce1e0000 	cdpgt	0, 1, cr0, cr14, cr0, {0}
    6bb4:	14000008 	strne	r0, [r0], #-8
    6bb8:	0000002c 	andeq	r0, r0, ip, lsr #32
    6bbc:	d4040f00 	strle	r0, [r4], #-3840	; 0xfffff100
    6bc0:	0f000008 	svceq	0x00000008
    6bc4:	0008c304 	andeq	ip, r8, r4, lsl #6
    6bc8:	06450800 	strbeq	r0, [r5], -r0, lsl #16
    6bcc:	08ea0000 	stmiaeq	sl!, {}^	; <UNPREDICTABLE>
    6bd0:	25090000 	strcs	r0, [r9, #-0]
    6bd4:	02000000 	andeq	r0, r0, #0
    6bd8:	05131f00 	ldreq	r1, [r3, #-3840]	; 0xfffff100
    6bdc:	33040000 	movwcc	r0, #16384	; 0x4000
    6be0:	04561703 	ldrbeq	r1, [r6], #-1795	; 0xfffff8fd
    6be4:	14200000 	strtne	r0, [r0], #-0
    6be8:	01000004 	tsteq	r0, r4
    6bec:	002c051a 	eoreq	r0, ip, sl, lsl r5
    6bf0:	03050000 	movweq	r0, #20480	; 0x5000
    6bf4:	200008cc 	andcs	r0, r0, ip, asr #17
    6bf8:	000bd821 	andeq	sp, fp, r1, lsr #16
    6bfc:	03360400 	teqeq	r6, #0, 8
    6c00:	00142c06 	andseq	r2, r4, r6, lsl #24
    6c04:	00010400 	andeq	r0, r1, r0, lsl #8
    6c08:	779c0100 	ldrvc	r0, [ip, r0, lsl #2]
    6c0c:	2200000a 	andcs	r0, r0, #10
    6c10:	00727470 	rsbseq	r7, r2, r0, ror r4
    6c14:	56202c01 	strtpl	r2, [r0], -r1, lsl #24
    6c18:	04000004 	streq	r0, [r0], #-4
    6c1c:	fe00001d 	mcr2	0, 0, r0, cr0, cr13, {0}
    6c20:	2300001c 	movwcs	r0, #28
    6c24:	00001454 	andeq	r1, r0, r4, asr r4
    6c28:	0000003c 	andeq	r0, r0, ip, lsr r0
    6c2c:	000009a2 	andeq	r0, r0, r2, lsr #19
    6c30:	01006924 	tsteq	r0, r4, lsr #18
    6c34:	002c0837 	eoreq	r0, ip, r7, lsr r8
    6c38:	54230000 	strtpl	r0, [r3], #-0
    6c3c:	24000014 	strcs	r0, [r0], #-20	; 0xffffffec
    6c40:	91000000 	mrsls	r0, (UNDEF: 0)
    6c44:	25000009 	strcs	r0, [r0, #-9]
    6c48:	00000c10 	andeq	r0, r0, r0, lsl ip
    6c4c:	79183a01 	ldmdbvc	r8, {r0, r9, fp, ip, sp}
    6c50:	34000001 	strcc	r0, [r0], #-1
    6c54:	3000001d 	andcc	r0, r0, sp, lsl r0
    6c58:	2500001d 	strcs	r0, [r0, #-29]	; 0xffffffe3
    6c5c:	00000c25 	andeq	r0, r0, r5, lsr #24
    6c60:	79223a01 	stmdbvc	r2!, {r0, r9, fp, ip, sp}
    6c64:	54000001 	strpl	r0, [r0], #-1
    6c68:	5200001d 	andpl	r0, r0, #29
    6c6c:	2600001d 			; <UNDEFINED> instruction: 0x2600001d
    6c70:	00001470 	andeq	r1, r0, r0, ror r4
    6c74:	00000bd3 	ldrdeq	r0, [r0], -r3
    6c78:	02500127 	subseq	r0, r0, #-1073741815	; 0xc0000009
    6c7c:	00000075 	andeq	r0, r0, r5, ror r0
    6c80:	00149026 	andseq	r9, r4, r6, lsr #32
    6c84:	000bd300 	andeq	sp, fp, r0, lsl #6
    6c88:	50012700 	andpl	r2, r1, r0, lsl #14
    6c8c:	00007502 	andeq	r7, r0, r2, lsl #10
    6c90:	14b82300 	ldrtne	r2, [r8], #768	; 0x300
    6c94:	00180000 	andseq	r0, r8, r0
    6c98:	09e40000 	stmibeq	r4!, {}^	; <UNPREDICTABLE>
    6c9c:	70280000 	eorvc	r0, r8, r0
    6ca0:	14660100 	strbtne	r0, [r6], #-256	; 0xffffff00
    6ca4:	000002aa 	andeq	r0, r0, sl, lsr #5
    6ca8:	00001d69 	andeq	r1, r0, r9, ror #26
    6cac:	00001d67 	andeq	r1, r0, r7, ror #26
    6cb0:	01007128 	tsteq	r0, r8, lsr #2
    6cb4:	02aa1866 	adceq	r1, sl, #6684672	; 0x660000
    6cb8:	1d800000 	stcne	0, cr0, [r0]
    6cbc:	1d7c0000 	ldclne	0, cr0, [ip, #-0]
    6cc0:	c8260000 	stmdagt	r6!, {}	; <UNPREDICTABLE>
    6cc4:	d3000014 	movwle	r0, #20
    6cc8:	2700000b 	strcs	r0, [r0, -fp]
    6ccc:	75025001 	strvc	r5, [r2, #-1]
    6cd0:	29000000 	stmdbcs	r0, {}	; <UNPREDICTABLE>
    6cd4:	00000a77 	andeq	r0, r0, r7, ror sl
    6cd8:	00001508 	andeq	r1, r0, r8, lsl #10
    6cdc:	00150801 	andseq	r0, r5, r1, lsl #16
    6ce0:	00001c00 	andeq	r1, r0, r0, lsl #24
    6ce4:	06800100 	streq	r0, [r0], r0, lsl #2
    6ce8:	00000a42 	andeq	r0, r0, r2, asr #20
    6cec:	000a902a 	andeq	r9, sl, sl, lsr #32
    6cf0:	001da000 	andseq	sl, sp, r0
    6cf4:	001d9e00 	andseq	r9, sp, r0, lsl #28
    6cf8:	0a842a00 	beq	fe111500 <__stack+0xde110c28>
    6cfc:	1db50000 	ldcne	0, cr0, [r5]
    6d00:	1db30000 	ldcne	0, cr0, [r3]
    6d04:	182b0000 	stmdane	fp!, {}	; <UNPREDICTABLE>
    6d08:	77000015 	smladvc	r0, r5, r0, r0
    6d0c:	2b00000a 	blcs	6d3c <__data_load__+0x570c>
    6d10:	2700000a 	strcs	r0, [r0, -sl]
    6d14:	75025001 	strvc	r5, [r2, #-1]
    6d18:	24260000 	strtcs	r0, [r6], #-0
    6d1c:	d3000015 	movwle	r0, #21
    6d20:	2700000b 	strcs	r0, [r0, -fp]
    6d24:	75025001 	strvc	r5, [r2, #-1]
    6d28:	51012700 	tstpl	r1, r0, lsl #14
    6d2c:	00007402 	andeq	r7, r0, r2, lsl #8
    6d30:	14a02b00 	strtne	r2, [r0], #2816	; 0xb00
    6d34:	0bd30000 	bleq	ff4c6d3c <__stack+0xdf4c6464>
    6d38:	0a560000 	beq	1586d40 <_bsl_base_address+0x1384d40>
    6d3c:	01270000 			; <UNDEFINED> instruction: 0x01270000
    6d40:	00750250 	rsbseq	r0, r5, r0, asr r2
    6d44:	14e02b00 	strbtne	r2, [r0], #2816	; 0xb00
    6d48:	0bd30000 	bleq	ff4c6d50 <__stack+0xdf4c6478>
    6d4c:	0a6a0000 	beq	1a86d54 <_bsl_base_address+0x1884d54>
    6d50:	01270000 			; <UNDEFINED> instruction: 0x01270000
    6d54:	00750250 	rsbseq	r0, r5, r0, asr r2
    6d58:	14fc2c00 	ldrbtne	r2, [ip], #3072	; 0xc00
    6d5c:	01270000 			; <UNDEFINED> instruction: 0x01270000
    6d60:	00750250 	rsbseq	r0, r5, r0, asr r2
    6d64:	182d0000 	stmdane	sp!, {}	; <UNPREDICTABLE>
    6d68:	0100000c 	tsteq	r0, ip
    6d6c:	9d010121 	stflss	f0, [r1, #-132]	; 0xffffff7c
    6d70:	2e00000a 	cdpcs	0, 0, cr0, cr0, cr10, {0}
    6d74:	00727470 	rsbseq	r7, r2, r0, ror r4
    6d78:	561e2101 	ldrpl	r2, [lr], -r1, lsl #2
    6d7c:	2f000004 	svccs	0x00000004
    6d80:	00000c20 	andeq	r0, r0, r0, lsr #24
    6d84:	8b142201 	blhi	50f590 <_bsl_base_address+0x30d590>
    6d88:	00000006 	andeq	r0, r0, r6
    6d8c:	000a7730 	andeq	r7, sl, r0, lsr r7
    6d90:	0013b800 	andseq	fp, r3, r0, lsl #16
    6d94:	00007400 	andeq	r7, r0, r0, lsl #8
    6d98:	d39c0100 	orrsle	r0, ip, #0, 2
    6d9c:	2a00000b 	bcs	6dd0 <__data_load__+0x57a0>
    6da0:	00000a84 	andeq	r0, r0, r4, lsl #21
    6da4:	00001dce 	andeq	r1, r0, lr, asr #27
    6da8:	00001dc8 	andeq	r1, r0, r8, asr #27
    6dac:	000a902a 	andeq	r9, sl, sl, lsr #32
    6db0:	001e0000 	andseq	r0, lr, r0
    6db4:	001dfa00 	andseq	pc, sp, r0, lsl #20
    6db8:	0a772900 	beq	1dd11c0 <_bsl_base_address+0x1bcf1c0>
    6dbc:	13d00000 	bicsne	r0, r0, #0
    6dc0:	d0010000 	andle	r0, r1, r0
    6dc4:	48000013 	stmdami	r0, {r0, r1, r4}
    6dc8:	01000000 	mrseq	r0, (UNDEF: 0)
    6dcc:	0bbc0526 	bleq	fef0826c <__stack+0xdef07994>
    6dd0:	902a0000 	eorls	r0, sl, r0
    6dd4:	2e00000a 	cdpcs	0, 0, cr0, cr0, cr10, {0}
    6dd8:	2c00001e 	stccs	0, cr0, [r0], {30}
    6ddc:	2a00001e 	bcs	6e5c <__data_load__+0x582c>
    6de0:	00000a84 	andeq	r0, r0, r4, lsl #21
    6de4:	00001e45 	andeq	r1, r0, r5, asr #28
    6de8:	00001e41 	andeq	r1, r0, r1, asr #28
    6dec:	000a7729 	andeq	r7, sl, r9, lsr #14
    6df0:	0013dc00 	andseq	sp, r3, r0, lsl #24
    6df4:	13dc0100 	bicsne	r0, ip, #0, 2
    6df8:	00300000 	eorseq	r0, r0, r0
    6dfc:	26010000 	strcs	r0, [r1], -r0
    6e00:	000ba505 	andeq	sl, fp, r5, lsl #10
    6e04:	0a902a00 	beq	fe41160c <__stack+0xde410d34>
    6e08:	1e650000 	cdpne	0, 6, cr0, cr5, cr0, {0}
    6e0c:	1e630000 	cdpne	0, 6, cr0, cr3, cr0, {0}
    6e10:	842a0000 	strthi	r0, [sl], #-0
    6e14:	7c00000a 	stcvc	0, cr0, [r0], {10}
    6e18:	7800001e 	stmdavc	r0, {r1, r2, r3, r4}
    6e1c:	2900001e 	stmdbcs	r0, {r1, r2, r3, r4}
    6e20:	00000a77 	andeq	r0, r0, r7, ror sl
    6e24:	000013e8 	andeq	r1, r0, r8, ror #7
    6e28:	0013e801 	andseq	lr, r3, r1, lsl #16
    6e2c:	00001800 	andeq	r1, r0, r0, lsl #16
    6e30:	05260100 	streq	r0, [r6, #-256]!	; 0xffffff00
    6e34:	00000b8e 	andeq	r0, r0, lr, lsl #23
    6e38:	000a902a 	andeq	r9, sl, sl, lsr #32
    6e3c:	001e9c00 	andseq	r9, lr, r0, lsl #24
    6e40:	001e9a00 	andseq	r9, lr, r0, lsl #20
    6e44:	0a842a00 	beq	fe11164c <__stack+0xde110d74>
    6e48:	1eb30000 	cdpne	0, 11, cr0, cr3, cr0, {0}
    6e4c:	1eaf0000 	cdpne	0, 10, cr0, cr15, cr0, {0}
    6e50:	f42b0000 	vld4.8	{d0-d3}, [fp], r0
    6e54:	77000013 	smladvc	r0, r3, r0, r0
    6e58:	7700000a 	strvc	r0, [r0, -sl]
    6e5c:	2700000b 	strcs	r0, [r0, -fp]
    6e60:	75025001 	strvc	r5, [r2, #-1]
    6e64:	00260000 	eoreq	r0, r6, r0
    6e68:	d3000014 	movwle	r0, #20
    6e6c:	2700000b 	strcs	r0, [r0, -fp]
    6e70:	75025001 	strvc	r5, [r2, #-1]
    6e74:	51012700 	tstpl	r1, r0, lsl #14
    6e78:	00007802 	andeq	r7, r0, r2, lsl #16
    6e7c:	140c2600 	strne	r2, [ip], #-1536	; 0xfffffa00
    6e80:	0bd30000 	bleq	ff4c6e88 <__stack+0xdf4c65b0>
    6e84:	01270000 			; <UNDEFINED> instruction: 0x01270000
    6e88:	00750250 	rsbseq	r0, r5, r0, asr r2
    6e8c:	02510127 	subseq	r0, r1, #-1073741815	; 0xc0000009
    6e90:	00000077 	andeq	r0, r0, r7, ror r0
    6e94:	00141826 	andseq	r1, r4, r6, lsr #16
    6e98:	000bd300 	andeq	sp, fp, r0, lsl #6
    6e9c:	50012700 	andpl	r2, r1, r0, lsl #14
    6ea0:	27007502 	strcs	r7, [r0, -r2, lsl #10]
    6ea4:	76025101 	strvc	r5, [r2], -r1, lsl #2
    6ea8:	26000000 	strcs	r0, [r0], -r0
    6eac:	00001424 	andeq	r1, r0, r4, lsr #8
    6eb0:	00000bd3 	ldrdeq	r0, [r0], -r3
    6eb4:	02500127 	subseq	r0, r0, #-1073741815	; 0xc0000009
    6eb8:	01270075 			; <UNDEFINED> instruction: 0x01270075
    6ebc:	00740251 	rsbseq	r0, r4, r1, asr r2
    6ec0:	c9310000 	ldmdbgt	r1!, {}	; <UNPREDICTABLE>
    6ec4:	c9000007 	stmdbgt	r0, {r0, r1, r2}
    6ec8:	06000007 	streq	r0, [r0], -r7
    6ecc:	00060128 	andeq	r0, r6, r8, lsr #2
    6ed0:	00000099 	muleq	r0, r9, r0
    6ed4:	1a6b0004 	bne	1ac6eec <_bsl_base_address+0x18c4eec>
    6ed8:	01040000 	mrseq	r0, (UNDEF: 4)
    6edc:	00000c52 	andeq	r0, r0, r2, asr ip
    6ee0:	000c2d0c 	andeq	r2, ip, ip, lsl #26
    6ee4:	000cc800 	andeq	ip, ip, r0, lsl #16
    6ee8:	00153000 	andseq	r3, r5, r0
    6eec:	00002c00 	andeq	r2, r0, r0, lsl #24
    6ef0:	001fbc00 	andseq	fp, pc, r0, lsl #24
    6ef4:	0af90200 	beq	ffe476fc <__stack+0xdfe46e24>
    6ef8:	07010000 	streq	r0, [r1, -r0]
    6efc:	00008601 	andeq	r8, r0, r1, lsl #12
    6f00:	00153000 	andseq	r3, r5, r0
    6f04:	00002c00 	andeq	r2, r0, r0, lsl #24
    6f08:	869c0100 	ldrhi	r0, [ip], r0, lsl #2
    6f0c:	03000000 	movweq	r0, #0
    6f10:	00000ac1 	andeq	r0, r0, r1, asr #21
    6f14:	880a0801 	stmdahi	sl, {r0, fp}
    6f18:	d5000000 	strle	r0, [r0, #-0]
    6f1c:	d100001e 	tstle	r0, lr, lsl r0
    6f20:	0400001e 	streq	r0, [r0], #-30	; 0xffffffe2
    6f24:	00646e65 	rsbeq	r6, r4, r5, ror #28
    6f28:	8f120a01 	svchi	0x00120a01
    6f2c:	05000000 	streq	r0, [r0, #-0]
    6f30:	00000cbf 			; <UNDEFINED> instruction: 0x00000cbf
    6f34:	96120b01 	ldrls	r0, [r2], -r1, lsl #22
    6f38:	05000000 	streq	r0, [r0, #-0]
    6f3c:	0008d003 	andeq	sp, r8, r3
    6f40:	0cba0620 	ldceq	6, cr0, [sl], #128	; 0x80
    6f44:	0c010000 	stceq	0, cr0, [r1], {-0}
    6f48:	00009612 	andeq	r9, r0, r2, lsl r6
    6f4c:	001ef800 	andseq	pc, lr, r0, lsl #16
    6f50:	001ef600 	andseq	pc, lr, r0, lsl #12
    6f54:	04070000 	streq	r0, [r7], #-0
    6f58:	69050408 	stmdbvs	r5, {r3, sl}
    6f5c:	0900746e 	stmdbeq	r0, {r1, r2, r3, r5, r6, sl, ip, sp, lr}
    6f60:	01480801 	cmpeq	r8, r1, lsl #16
    6f64:	040a0000 	streq	r0, [sl], #-0
    6f68:	0000008f 	andeq	r0, r0, pc, lsl #1
    6f6c:	00009f00 	andeq	r9, r0, r0, lsl #30
    6f70:	0d000400 	cfstrseq	mvf0, [r0, #-0]
    6f74:	0400001b 	streq	r0, [r0], #-27	; 0xffffffe5
    6f78:	000c5201 	andeq	r5, ip, r1, lsl #4
    6f7c:	0d100c00 	ldceq	12, cr0, [r0, #-0]
    6f80:	0cc80000 	stcleq	0, cr0, [r8], {0}
    6f84:	155c0000 	ldrbne	r0, [ip, #-0]
    6f88:	00040000 	andeq	r0, r4, r0
    6f8c:	202c0000 	eorcs	r0, ip, r0
    6f90:	01020000 	mrseq	r0, (UNDEF: 2)
    6f94:	00014106 	andeq	r4, r1, r6, lsl #2
    6f98:	08010200 	stmdaeq	r1, {r9}
    6f9c:	0000013f 	andeq	r0, r0, pc, lsr r1
    6fa0:	d7050202 	strle	r0, [r5, -r2, lsl #4]
    6fa4:	02000001 	andeq	r0, r0, #1
    6fa8:	00890702 	addeq	r0, r9, r2, lsl #14
    6fac:	04020000 	streq	r0, [r2], #-0
    6fb0:	00008005 	andeq	r8, r0, r5
    6fb4:	07040200 	streq	r0, [r4, -r0, lsl #4]
    6fb8:	00000124 	andeq	r0, r0, r4, lsr #2
    6fbc:	7b050802 	blvc	148fcc <__data_load__+0x14799c>
    6fc0:	02000000 	andeq	r0, r0, #0
    6fc4:	011f0708 	tsteq	pc, r8, lsl #14
    6fc8:	04030000 	streq	r0, [r3], #-0
    6fcc:	746e6905 	strbtvc	r6, [lr], #-2309	; 0xfffff6fb
    6fd0:	07040200 	streq	r0, [r4, -r0, lsl #4]
    6fd4:	00000129 	andeq	r0, r0, r9, lsr #2
    6fd8:	cb040802 	blgt	108fe8 <__data_load__+0x1079b8>
    6fdc:	04000001 	streq	r0, [r0], #-1
    6fe0:	00000272 	andeq	r0, r0, r2, ror r2
    6fe4:	5c010901 			; <UNDEFINED> instruction: 0x5c010901
    6fe8:	04000015 	streq	r0, [r0], #-21	; 0xffffffeb
    6fec:	01000000 	mrseq	r0, (UNDEF: 0)
    6ff0:	6372059c 	cmnvs	r2, #156, 10	; 0x27000000
    6ff4:	0c090100 	stfeqs	f0, [r9], {-0}
    6ff8:	0000005d 	andeq	r0, r0, sp, asr r0
    6ffc:	00001f11 	andeq	r1, r0, r1, lsl pc
    7000:	00001f0f 	andeq	r1, r0, pc, lsl #30
    7004:	01007806 	tsteq	r0, r6, lsl #16
    7008:	005d070c 	subseq	r0, sp, ip, lsl #14
    700c:	00000000 	andeq	r0, r0, r0

Disassembly of section .debug_abbrev:

00000000 <.debug_abbrev>:
       0:	10001101 	andne	r1, r0, r1, lsl #2
       4:	12011106 	andne	r1, r1, #-2147483647	; 0x80000001
       8:	1b0e0301 	blne	380c14 <_bsl_base_address+0x17ec14>
       c:	130e250e 	movwne	r2, #58638	; 0xe50e
      10:	00000005 	andeq	r0, r0, r5
      14:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
      18:	030b130e 	movweq	r1, #45838	; 0xb30e
      1c:	110e1b0e 	tstne	lr, lr, lsl #22
      20:	10061201 	andne	r1, r6, r1, lsl #4
      24:	02000017 	andeq	r0, r0, #23
      28:	0b0b0024 	bleq	2c00c0 <_bsl_base_address+0xbe0c0>
      2c:	0e030b3e 	vmoveq.16	d3[0], r0
      30:	24030000 	strcs	r0, [r3], #-0
      34:	3e0b0b00 	vmlacc.f64	d0, d11, d0
      38:	0008030b 	andeq	r0, r8, fp, lsl #6
      3c:	000f0400 	andeq	r0, pc, r0, lsl #8
      40:	13490b0b 	movtne	r0, #39691	; 0x9b0b
      44:	15050000 	strne	r0, [r5, #-0]
      48:	00192700 	andseq	r2, r9, r0, lsl #14
      4c:	01040600 	tsteq	r4, r0, lsl #12
      50:	0b3e0e03 	bleq	f83864 <_bsl_base_address+0xd81864>
      54:	13490b0b 	movtne	r0, #39691	; 0x9b0b
      58:	0b3b0b3a 	bleq	ec2d48 <_bsl_base_address+0xcc0d48>
      5c:	13010b39 	movwne	r0, #6969	; 0x1b39
      60:	28070000 	stmdacs	r7, {}	; <UNPREDICTABLE>
      64:	1c0e0300 	stcne	3, cr0, [lr], {-0}
      68:	0800000b 	stmdaeq	r0, {r0, r1, r3}
      6c:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
      70:	0b3a0e03 	bleq	e83884 <_bsl_base_address+0xc81884>
      74:	0b390b3b 	bleq	e42d68 <_bsl_base_address+0xc40d68>
      78:	13491927 	movtne	r1, #39207	; 0x9927
      7c:	06120111 			; <UNDEFINED> instruction: 0x06120111
      80:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
      84:	00130119 	andseq	r0, r3, r9, lsl r1
      88:	00050900 	andeq	r0, r5, r0, lsl #18
      8c:	0b3a0803 	bleq	e820a0 <_bsl_base_address+0xc800a0>
      90:	0b390b3b 	bleq	e42d84 <_bsl_base_address+0xc40d84>
      94:	17021349 	strne	r1, [r2, -r9, asr #6]
      98:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
      9c:	82890a00 	addhi	r0, r9, #0, 20
      a0:	01110101 	tsteq	r1, r1, lsl #2
      a4:	00001331 	andeq	r1, r0, r1, lsr r3
      a8:	01828a0b 	orreq	r8, r2, fp, lsl #20
      ac:	91180200 	tstls	r8, r0, lsl #4
      b0:	00001842 	andeq	r1, r0, r2, asr #16
      b4:	3f002e0c 	svccc	0x00002e0c
      b8:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
      bc:	3a0e030e 	bcc	380cfc <_bsl_base_address+0x17ecfc>
      c0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
      c4:	0000000b 	andeq	r0, r0, fp
      c8:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
      cc:	030b130e 	movweq	r1, #45838	; 0xb30e
      d0:	110e1b0e 	tstne	lr, lr, lsl #22
      d4:	10061201 	andne	r1, r6, r1, lsl #4
      d8:	02000017 	andeq	r0, r0, #23
      dc:	0b0b0024 	bleq	2c0174 <_bsl_base_address+0xbe174>
      e0:	0e030b3e 	vmoveq.16	d3[0], r0
      e4:	24030000 	strcs	r0, [r3], #-0
      e8:	3e0b0b00 	vmlacc.f64	d0, d11, d0
      ec:	0008030b 	andeq	r0, r8, fp, lsl #6
      f0:	00160400 	andseq	r0, r6, r0, lsl #8
      f4:	0b3a0e03 	bleq	e83908 <_bsl_base_address+0xc81908>
      f8:	0b39053b 	bleq	e415ec <_bsl_base_address+0xc3f5ec>
      fc:	00001349 	andeq	r1, r0, r9, asr #6
     100:	03001605 	movweq	r1, #1541	; 0x605
     104:	3b0b3a0e 	blcc	2ce944 <_bsl_base_address+0xcc944>
     108:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
     10c:	06000013 			; <UNDEFINED> instruction: 0x06000013
     110:	0b0b0117 	bleq	2c0574 <_bsl_base_address+0xbe574>
     114:	0b3b0b3a 	bleq	ec2e04 <_bsl_base_address+0xcc0e04>
     118:	13010b39 	movwne	r0, #6969	; 0x1b39
     11c:	0d070000 	stceq	0, cr0, [r7, #-0]
     120:	3a0e0300 	bcc	380d28 <_bsl_base_address+0x17ed28>
     124:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     128:	0013490b 	andseq	r4, r3, fp, lsl #18
     12c:	01010800 	tsteq	r1, r0, lsl #16
     130:	13011349 	movwne	r1, #4937	; 0x1349
     134:	21090000 	mrscs	r0, (UNDEF: 9)
     138:	2f134900 	svccs	0x00134900
     13c:	0a00000b 	beq	170 <_mainCRTStartup+0xc>
     140:	0b0b0113 	bleq	2c0594 <_bsl_base_address+0xbe594>
     144:	0b3b0b3a 	bleq	ec2e34 <_bsl_base_address+0xcc0e34>
     148:	13010b39 	movwne	r0, #6969	; 0x1b39
     14c:	0d0b0000 	stceq	0, cr0, [fp, #-0]
     150:	3a0e0300 	bcc	380d58 <_bsl_base_address+0x17ed58>
     154:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     158:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     15c:	0c00000b 	stceq	0, cr0, [r0], {11}
     160:	0b0b000f 	bleq	2c01a4 <_bsl_base_address+0xbe1a4>
     164:	130d0000 	movwne	r0, #53248	; 0xd000
     168:	0b0e0301 	bleq	380d74 <_bsl_base_address+0x17ed74>
     16c:	3b0b3a0b 	blcc	2ce9a0 <_bsl_base_address+0xcc9a0>
     170:	010b390b 	tsteq	fp, fp, lsl #18
     174:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     178:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     17c:	0b3b0b3a 	bleq	ec2e6c <_bsl_base_address+0xcc0e6c>
     180:	13490b39 	movtne	r0, #39737	; 0x9b39
     184:	00000b38 	andeq	r0, r0, r8, lsr fp
     188:	0b000f0f 	bleq	3dcc <__data_load__+0x279c>
     18c:	0013490b 	andseq	r4, r3, fp, lsl #18
     190:	01131000 	tsteq	r3, r0
     194:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     198:	0b3b0b3a 	bleq	ec2e88 <_bsl_base_address+0xcc0e88>
     19c:	13010b39 	movwne	r0, #6969	; 0x1b39
     1a0:	0d110000 	ldceq	0, cr0, [r1, #-0]
     1a4:	3a0e0300 	bcc	380dac <_bsl_base_address+0x17edac>
     1a8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     1ac:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     1b0:	12000005 	andne	r0, r0, #5
     1b4:	19270015 	stmdbne	r7!, {r0, r2, r4}
     1b8:	15130000 	ldrne	r0, [r3, #-0]
     1bc:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
     1c0:	00130113 	andseq	r0, r3, r3, lsl r1
     1c4:	00051400 	andeq	r1, r5, r0, lsl #8
     1c8:	00001349 	andeq	r1, r0, r9, asr #6
     1cc:	49002615 	stmdbmi	r0, {r0, r2, r4, r9, sl, sp}
     1d0:	16000013 			; <UNDEFINED> instruction: 0x16000013
     1d4:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     1d8:	0b3a050b 	bleq	e8160c <_bsl_base_address+0xc7f60c>
     1dc:	0b39053b 	bleq	e416d0 <_bsl_base_address+0xc3f6d0>
     1e0:	00001301 	andeq	r1, r0, r1, lsl #6
     1e4:	03000d17 	movweq	r0, #3351	; 0xd17
     1e8:	3b0b3a0e 	blcc	2cea28 <_bsl_base_address+0xcca28>
     1ec:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     1f0:	000b3813 	andeq	r3, fp, r3, lsl r8
     1f4:	000d1800 	andeq	r1, sp, r0, lsl #16
     1f8:	0b3a0e03 	bleq	e83a0c <_bsl_base_address+0xc81a0c>
     1fc:	0b39053b 	bleq	e416f0 <_bsl_base_address+0xc3f6f0>
     200:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
     204:	13190000 	tstne	r9, #0
     208:	0b0e0301 	bleq	380e14 <_bsl_base_address+0x17ee14>
     20c:	3b0b3a0b 	blcc	2cea40 <_bsl_base_address+0xcca40>
     210:	010b3905 	tsteq	fp, r5, lsl #18
     214:	1a000013 	bne	268 <main+0x64>
     218:	0b0b0113 	bleq	2c066c <_bsl_base_address+0xbe66c>
     21c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     220:	13010b39 	movwne	r0, #6969	; 0x1b39
     224:	171b0000 	ldrne	r0, [fp, -r0]
     228:	3a0b0b01 	bcc	2c2e34 <_bsl_base_address+0xc0e34>
     22c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     230:	0013010b 	andseq	r0, r3, fp, lsl #2
     234:	000d1c00 	andeq	r1, sp, r0, lsl #24
     238:	0b3a0e03 	bleq	e83a4c <_bsl_base_address+0xc81a4c>
     23c:	0b39053b 	bleq	e41730 <_bsl_base_address+0xc3f730>
     240:	00001349 	andeq	r1, r0, r9, asr #6
     244:	0300131d 	movweq	r1, #797	; 0x31d
     248:	00193c0e 	andseq	r3, r9, lr, lsl #24
     24c:	01151e00 	tsteq	r5, r0, lsl #28
     250:	13011927 	movwne	r1, #6439	; 0x1927
     254:	341f0000 	ldrcc	r0, [pc], #-0	; 25c <main+0x58>
     258:	3a0e0300 	bcc	380e60 <_bsl_base_address+0x17ee60>
     25c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     260:	3f13490b 	svccc	0x0013490b
     264:	00193c19 	andseq	r3, r9, r9, lsl ip
     268:	012e2000 			; <UNDEFINED> instruction: 0x012e2000
     26c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     270:	0b3b0b3a 	bleq	ec2f60 <_bsl_base_address+0xcc0f60>
     274:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     278:	11190187 	tstne	r9, r7, lsl #3
     27c:	40061201 	andmi	r1, r6, r1, lsl #4
     280:	19429618 	stmdbne	r2, {r3, r4, r9, sl, ip, pc}^
     284:	00001301 	andeq	r1, r0, r1, lsl #6
     288:	03000521 	movweq	r0, #1313	; 0x521
     28c:	3b0b3a0e 	blcc	2ceacc <_bsl_base_address+0xccacc>
     290:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
     294:	b7170213 			; <UNDEFINED> instruction: 0xb7170213
     298:	00001742 	andeq	r1, r0, r2, asr #14
     29c:	01828922 	orreq	r8, r2, r2, lsr #18
     2a0:	31011101 	tstcc	r1, r1, lsl #2
     2a4:	00130113 	andseq	r0, r3, r3, lsl r1
     2a8:	828a2300 	addhi	r2, sl, #0, 6
     2ac:	18020001 	stmdane	r2, {r0}
     2b0:	00184291 	mulseq	r8, r1, r2
     2b4:	82892400 	addhi	r2, r9, #0, 8
     2b8:	01110101 	tsteq	r1, r1, lsl #2
     2bc:	00001331 	andeq	r1, r0, r1, lsr r3
     2c0:	3f002e25 	svccc	0x00002e25
     2c4:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     2c8:	3a0e030e 	bcc	380f08 <_bsl_base_address+0x17ef08>
     2cc:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     2d0:	0000000b 	andeq	r0, r0, fp
     2d4:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     2d8:	030b130e 	movweq	r1, #45838	; 0xb30e
     2dc:	110e1b0e 	tstne	lr, lr, lsl #22
     2e0:	10061201 	andne	r1, r6, r1, lsl #4
     2e4:	02000017 	andeq	r0, r0, #23
     2e8:	0b0b0024 	bleq	2c0380 <_bsl_base_address+0xbe380>
     2ec:	0e030b3e 	vmoveq.16	d3[0], r0
     2f0:	24030000 	strcs	r0, [r3], #-0
     2f4:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     2f8:	0008030b 	andeq	r0, r8, fp, lsl #6
     2fc:	00160400 	andseq	r0, r6, r0, lsl #8
     300:	0b3a0e03 	bleq	e83b14 <_bsl_base_address+0xc81b14>
     304:	0b390b3b 	bleq	e42ff8 <_bsl_base_address+0xc40ff8>
     308:	00001349 	andeq	r1, r0, r9, asr #6
     30c:	49010105 	stmdbmi	r1, {r0, r2, r8}
     310:	00130113 	andseq	r0, r3, r3, lsl r1
     314:	00210600 	eoreq	r0, r1, r0, lsl #12
     318:	0f070000 	svceq	0x00070000
     31c:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
     320:	08000013 	stmdaeq	r0, {r0, r1, r4}
     324:	19270015 	stmdbne	r7!, {r0, r2, r4}
     328:	34090000 	strcc	r0, [r9], #-0
     32c:	3a0e0300 	bcc	380f34 <_bsl_base_address+0x17ef34>
     330:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     334:	3f13490b 	svccc	0x0013490b
     338:	00193c19 	andseq	r3, r9, r9, lsl ip
     33c:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
     340:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     344:	0b3b0b3a 	bleq	ec3034 <_bsl_base_address+0xcc1034>
     348:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     34c:	06120111 			; <UNDEFINED> instruction: 0x06120111
     350:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
     354:	00130119 	andseq	r0, r3, r9, lsl r1
     358:	00340b00 	eorseq	r0, r4, r0, lsl #22
     35c:	0b3a0e03 	bleq	e83b70 <_bsl_base_address+0xc81b70>
     360:	0b390b3b 	bleq	e43054 <_bsl_base_address+0xc41054>
     364:	17021349 	strne	r1, [r2, -r9, asr #6]
     368:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
     36c:	00340c00 	eorseq	r0, r4, r0, lsl #24
     370:	0b3a0803 	bleq	e82384 <_bsl_base_address+0xc80384>
     374:	0b390b3b 	bleq	e43068 <_bsl_base_address+0xc41068>
     378:	17021349 	strne	r1, [r2, -r9, asr #6]
     37c:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
     380:	82890d00 	addhi	r0, r9, #0, 26
     384:	01110001 	tsteq	r1, r1
     388:	00001331 	andeq	r1, r0, r1, lsr r3
     38c:	3f002e0e 	svccc	0x00002e0e
     390:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     394:	3a0e030e 	bcc	380fd4 <_bsl_base_address+0x17efd4>
     398:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     39c:	0000000b 	andeq	r0, r0, fp
     3a0:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     3a4:	030b130e 	movweq	r1, #45838	; 0xb30e
     3a8:	100e1b0e 	andne	r1, lr, lr, lsl #22
     3ac:	02000017 	andeq	r0, r0, #23
     3b0:	0b0b0024 	bleq	2c0448 <_bsl_base_address+0xbe448>
     3b4:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     3b8:	24030000 	strcs	r0, [r3], #-0
     3bc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     3c0:	000e030b 	andeq	r0, lr, fp, lsl #6
     3c4:	00160400 	andseq	r0, r6, r0, lsl #8
     3c8:	0b3a0e03 	bleq	e83bdc <_bsl_base_address+0xc81bdc>
     3cc:	0b39053b 	bleq	e418c0 <_bsl_base_address+0xc3f8c0>
     3d0:	00001349 	andeq	r1, r0, r9, asr #6
     3d4:	03001605 	movweq	r1, #1541	; 0x605
     3d8:	3b0b3a0e 	blcc	2cec18 <_bsl_base_address+0xccc18>
     3dc:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
     3e0:	06000013 			; <UNDEFINED> instruction: 0x06000013
     3e4:	0b0b0117 	bleq	2c0848 <_bsl_base_address+0xbe848>
     3e8:	0b3b0b3a 	bleq	ec30d8 <_bsl_base_address+0xcc10d8>
     3ec:	13010b39 	movwne	r0, #6969	; 0x1b39
     3f0:	0d070000 	stceq	0, cr0, [r7, #-0]
     3f4:	3a0e0300 	bcc	380ffc <_bsl_base_address+0x17effc>
     3f8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     3fc:	0013490b 	andseq	r4, r3, fp, lsl #18
     400:	01010800 	tsteq	r1, r0, lsl #16
     404:	13011349 	movwne	r1, #4937	; 0x1349
     408:	21090000 	mrscs	r0, (UNDEF: 9)
     40c:	2f134900 	svccs	0x00134900
     410:	0a00000b 	beq	444 <__libc_init_array+0x3c>
     414:	0b0b0113 	bleq	2c0868 <_bsl_base_address+0xbe868>
     418:	0b3b0b3a 	bleq	ec3108 <_bsl_base_address+0xcc1108>
     41c:	13010b39 	movwne	r0, #6969	; 0x1b39
     420:	0d0b0000 	stceq	0, cr0, [fp, #-0]
     424:	3a0e0300 	bcc	38102c <_bsl_base_address+0x17f02c>
     428:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     42c:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     430:	0c00000b 	stceq	0, cr0, [r0], {11}
     434:	0b0b000f 	bleq	2c0478 <_bsl_base_address+0xbe478>
     438:	130d0000 	movwne	r0, #53248	; 0xd000
     43c:	0b0e0301 	bleq	381048 <_bsl_base_address+0x17f048>
     440:	3b0b3a0b 	blcc	2cec74 <_bsl_base_address+0xccc74>
     444:	010b390b 	tsteq	fp, fp, lsl #18
     448:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     44c:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     450:	0b3b0b3a 	bleq	ec3140 <_bsl_base_address+0xcc1140>
     454:	13490b39 	movtne	r0, #39737	; 0x9b39
     458:	00000b38 	andeq	r0, r0, r8, lsr fp
     45c:	0b000f0f 	bleq	40a0 <__data_load__+0x2a70>
     460:	0013490b 	andseq	r4, r3, fp, lsl #18
     464:	01131000 	tsteq	r3, r0
     468:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     46c:	0b3b0b3a 	bleq	ec315c <_bsl_base_address+0xcc115c>
     470:	13010b39 	movwne	r0, #6969	; 0x1b39
     474:	0d110000 	ldceq	0, cr0, [r1, #-0]
     478:	3a0e0300 	bcc	381080 <_bsl_base_address+0x17f080>
     47c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     480:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     484:	12000005 	andne	r0, r0, #5
     488:	19270015 	stmdbne	r7!, {r0, r2, r4}
     48c:	15130000 	ldrne	r0, [r3, #-0]
     490:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
     494:	00130113 	andseq	r0, r3, r3, lsl r1
     498:	00051400 	andeq	r1, r5, r0, lsl #8
     49c:	00001349 	andeq	r1, r0, r9, asr #6
     4a0:	49002615 	stmdbmi	r0, {r0, r2, r4, r9, sl, sp}
     4a4:	16000013 			; <UNDEFINED> instruction: 0x16000013
     4a8:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     4ac:	0b3a050b 	bleq	e818e0 <_bsl_base_address+0xc7f8e0>
     4b0:	0b39053b 	bleq	e419a4 <_bsl_base_address+0xc3f9a4>
     4b4:	00001301 	andeq	r1, r0, r1, lsl #6
     4b8:	03000d17 	movweq	r0, #3351	; 0xd17
     4bc:	3b0b3a0e 	blcc	2cecfc <_bsl_base_address+0xcccfc>
     4c0:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     4c4:	000b3813 	andeq	r3, fp, r3, lsl r8
     4c8:	000d1800 	andeq	r1, sp, r0, lsl #16
     4cc:	0b3a0e03 	bleq	e83ce0 <_bsl_base_address+0xc81ce0>
     4d0:	0b39053b 	bleq	e419c4 <_bsl_base_address+0xc3f9c4>
     4d4:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
     4d8:	13190000 	tstne	r9, #0
     4dc:	0b0e0301 	bleq	3810e8 <_bsl_base_address+0x17f0e8>
     4e0:	3b0b3a0b 	blcc	2ced14 <_bsl_base_address+0xccd14>
     4e4:	010b3905 	tsteq	fp, r5, lsl #18
     4e8:	1a000013 	bne	53c <_malloc_r+0x6c>
     4ec:	0b0b0113 	bleq	2c0940 <_bsl_base_address+0xbe940>
     4f0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     4f4:	13010b39 	movwne	r0, #6969	; 0x1b39
     4f8:	171b0000 	ldrne	r0, [fp, -r0]
     4fc:	3a0b0b01 	bcc	2c3108 <_bsl_base_address+0xc1108>
     500:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     504:	0013010b 	andseq	r0, r3, fp, lsl #2
     508:	000d1c00 	andeq	r1, sp, r0, lsl #24
     50c:	0b3a0e03 	bleq	e83d20 <_bsl_base_address+0xc81d20>
     510:	0b39053b 	bleq	e41a04 <_bsl_base_address+0xc3fa04>
     514:	00001349 	andeq	r1, r0, r9, asr #6
     518:	0300131d 	movweq	r1, #797	; 0x31d
     51c:	00193c0e 	andseq	r3, r9, lr, lsl #24
     520:	01151e00 	tsteq	r5, r0, lsl #28
     524:	13011927 	movwne	r1, #6439	; 0x1927
     528:	341f0000 	ldrcc	r0, [pc], #-0	; 530 <_malloc_r+0x60>
     52c:	3a0e0300 	bcc	381134 <_bsl_base_address+0x17f134>
     530:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     534:	3f13490b 	svccc	0x0013490b
     538:	00193c19 	andseq	r3, r9, r9, lsl ip
     53c:	00342000 	eorseq	r2, r4, r0
     540:	0b3a0e03 	bleq	e83d54 <_bsl_base_address+0xc81d54>
     544:	0b390b3b 	bleq	e43238 <_bsl_base_address+0xc41238>
     548:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
     54c:	34210000 	strtcc	r0, [r1], #-0
     550:	02134700 	andseq	r4, r3, #0, 14
     554:	00000018 	andeq	r0, r0, r8, lsl r0
     558:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     55c:	030b130e 	movweq	r1, #45838	; 0xb30e
     560:	110e1b0e 	tstne	lr, lr, lsl #22
     564:	10061201 	andne	r1, r6, r1, lsl #4
     568:	02000017 	andeq	r0, r0, #23
     56c:	0b0b0024 	bleq	2c0604 <_bsl_base_address+0xbe604>
     570:	0e030b3e 	vmoveq.16	d3[0], r0
     574:	24030000 	strcs	r0, [r3], #-0
     578:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     57c:	0008030b 	andeq	r0, r8, fp, lsl #6
     580:	00160400 	andseq	r0, r6, r0, lsl #8
     584:	0b3a0e03 	bleq	e83d98 <_bsl_base_address+0xc81d98>
     588:	0b390b3b 	bleq	e4327c <_bsl_base_address+0xc4127c>
     58c:	00001349 	andeq	r1, r0, r9, asr #6
     590:	49010105 	stmdbmi	r1, {r0, r2, r8}
     594:	00130113 	andseq	r0, r3, r3, lsl r1
     598:	00210600 	eoreq	r0, r1, r0, lsl #12
     59c:	0f070000 	svceq	0x00070000
     5a0:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
     5a4:	08000013 	stmdaeq	r0, {r0, r1, r4}
     5a8:	19270015 	stmdbne	r7!, {r0, r2, r4}
     5ac:	34090000 	strcc	r0, [r9], #-0
     5b0:	3a0e0300 	bcc	3811b8 <_bsl_base_address+0x17f1b8>
     5b4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     5b8:	3f13490b 	svccc	0x0013490b
     5bc:	00193c19 	andseq	r3, r9, r9, lsl ip
     5c0:	012e0a00 			; <UNDEFINED> instruction: 0x012e0a00
     5c4:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     5c8:	0b3b0b3a 	bleq	ec32b8 <_bsl_base_address+0xcc12b8>
     5cc:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     5d0:	06120111 			; <UNDEFINED> instruction: 0x06120111
     5d4:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
     5d8:	00130119 	andseq	r0, r3, r9, lsl r1
     5dc:	00340b00 	eorseq	r0, r4, r0, lsl #22
     5e0:	0b3a0e03 	bleq	e83df4 <_bsl_base_address+0xc81df4>
     5e4:	0b390b3b 	bleq	e432d8 <_bsl_base_address+0xc412d8>
     5e8:	17021349 	strne	r1, [r2, -r9, asr #6]
     5ec:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
     5f0:	00340c00 	eorseq	r0, r4, r0, lsl #24
     5f4:	0b3a0803 	bleq	e82608 <_bsl_base_address+0xc80608>
     5f8:	0b390b3b 	bleq	e432ec <_bsl_base_address+0xc412ec>
     5fc:	17021349 	strne	r1, [r2, -r9, asr #6]
     600:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
     604:	82890d00 	addhi	r0, r9, #0, 26
     608:	01110001 	tsteq	r1, r1
     60c:	00001331 	andeq	r1, r0, r1, lsr r3
     610:	3f002e0e 	svccc	0x00002e0e
     614:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     618:	3a0e030e 	bcc	381258 <_bsl_base_address+0x17f258>
     61c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     620:	0000000b 	andeq	r0, r0, fp
     624:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     628:	030b130e 	movweq	r1, #45838	; 0xb30e
     62c:	110e1b0e 	tstne	lr, lr, lsl #22
     630:	10061201 	andne	r1, r6, r1, lsl #4
     634:	02000017 	andeq	r0, r0, #23
     638:	0b0b0024 	bleq	2c06d0 <_bsl_base_address+0xbe6d0>
     63c:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     640:	16030000 	strne	r0, [r3], -r0
     644:	3a0e0300 	bcc	38124c <_bsl_base_address+0x17f24c>
     648:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     64c:	0013490b 	andseq	r4, r3, fp, lsl #18
     650:	00240400 	eoreq	r0, r4, r0, lsl #8
     654:	0b3e0b0b 	bleq	f83288 <_bsl_base_address+0xd81288>
     658:	00000e03 	andeq	r0, r0, r3, lsl #28
     65c:	03001605 	movweq	r1, #1541	; 0x605
     660:	3b0b3a0e 	blcc	2ceea0 <_bsl_base_address+0xccea0>
     664:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     668:	06000013 			; <UNDEFINED> instruction: 0x06000013
     66c:	0b0b0117 	bleq	2c0ad0 <_bsl_base_address+0xbead0>
     670:	0b3b0b3a 	bleq	ec3360 <_bsl_base_address+0xcc1360>
     674:	13010b39 	movwne	r0, #6969	; 0x1b39
     678:	0d070000 	stceq	0, cr0, [r7, #-0]
     67c:	3a0e0300 	bcc	381284 <_bsl_base_address+0x17f284>
     680:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     684:	0013490b 	andseq	r4, r3, fp, lsl #18
     688:	01010800 	tsteq	r1, r0, lsl #16
     68c:	13011349 	movwne	r1, #4937	; 0x1349
     690:	21090000 	mrscs	r0, (UNDEF: 9)
     694:	2f134900 	svccs	0x00134900
     698:	0a00000b 	beq	6cc <_malloc_r+0x1fc>
     69c:	0b0b0113 	bleq	2c0af0 <_bsl_base_address+0xbeaf0>
     6a0:	0b3b0b3a 	bleq	ec3390 <_bsl_base_address+0xcc1390>
     6a4:	13010b39 	movwne	r0, #6969	; 0x1b39
     6a8:	0d0b0000 	stceq	0, cr0, [fp, #-0]
     6ac:	3a0e0300 	bcc	3812b4 <_bsl_base_address+0x17f2b4>
     6b0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     6b4:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     6b8:	0c00000b 	stceq	0, cr0, [r0], {11}
     6bc:	0b0b000f 	bleq	2c0700 <_bsl_base_address+0xbe700>
     6c0:	130d0000 	movwne	r0, #53248	; 0xd000
     6c4:	0b0e0301 	bleq	3812d0 <_bsl_base_address+0x17f2d0>
     6c8:	3b0b3a0b 	blcc	2ceefc <_bsl_base_address+0xccefc>
     6cc:	010b390b 	tsteq	fp, fp, lsl #18
     6d0:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     6d4:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     6d8:	0b3b0b3a 	bleq	ec33c8 <_bsl_base_address+0xcc13c8>
     6dc:	13490b39 	movtne	r0, #39737	; 0x9b39
     6e0:	00000b38 	andeq	r0, r0, r8, lsr fp
     6e4:	0b000f0f 	bleq	4328 <__data_load__+0x2cf8>
     6e8:	0013490b 	andseq	r4, r3, fp, lsl #18
     6ec:	01131000 	tsteq	r3, r0
     6f0:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     6f4:	0b3b0b3a 	bleq	ec33e4 <_bsl_base_address+0xcc13e4>
     6f8:	13010b39 	movwne	r0, #6969	; 0x1b39
     6fc:	0d110000 	ldceq	0, cr0, [r1, #-0]
     700:	3a0e0300 	bcc	381308 <_bsl_base_address+0x17f308>
     704:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     708:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     70c:	12000005 	andne	r0, r0, #5
     710:	19270015 	stmdbne	r7!, {r0, r2, r4}
     714:	15130000 	ldrne	r0, [r3, #-0]
     718:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
     71c:	00130113 	andseq	r0, r3, r3, lsl r1
     720:	00051400 	andeq	r1, r5, r0, lsl #8
     724:	00001349 	andeq	r1, r0, r9, asr #6
     728:	03011315 	movweq	r1, #4885	; 0x1315
     72c:	3a050b0e 	bcc	14336c <__data_load__+0x141d3c>
     730:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     734:	0013010b 	andseq	r0, r3, fp, lsl #2
     738:	000d1600 	andeq	r1, sp, r0, lsl #12
     73c:	0b3a0e03 	bleq	e83f50 <_bsl_base_address+0xc81f50>
     740:	0b39053b 	bleq	e41c34 <_bsl_base_address+0xc3fc34>
     744:	0b381349 	bleq	e05470 <_bsl_base_address+0xc03470>
     748:	0d170000 	ldceq	0, cr0, [r7, #-0]
     74c:	3a0e0300 	bcc	381354 <_bsl_base_address+0x17f354>
     750:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     754:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     758:	18000005 	stmdane	r0, {r0, r2}
     75c:	13490026 	movtne	r0, #36902	; 0x9026
     760:	13190000 	tstne	r9, #0
     764:	0b0e0301 	bleq	381370 <_bsl_base_address+0x17f370>
     768:	3b0b3a0b 	blcc	2cef9c <_bsl_base_address+0xccf9c>
     76c:	010b3905 	tsteq	fp, r5, lsl #18
     770:	1a000013 	bne	7c4 <_malloc_r+0x2f4>
     774:	0b0b0113 	bleq	2c0bc8 <_bsl_base_address+0xbebc8>
     778:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     77c:	13010b39 	movwne	r0, #6969	; 0x1b39
     780:	171b0000 	ldrne	r0, [fp, -r0]
     784:	3a0b0b01 	bcc	2c3390 <_bsl_base_address+0xc1390>
     788:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     78c:	0013010b 	andseq	r0, r3, fp, lsl #2
     790:	000d1c00 	andeq	r1, sp, r0, lsl #24
     794:	0b3a0e03 	bleq	e83fa8 <_bsl_base_address+0xc81fa8>
     798:	0b39053b 	bleq	e41c8c <_bsl_base_address+0xc3fc8c>
     79c:	00001349 	andeq	r1, r0, r9, asr #6
     7a0:	0300131d 	movweq	r1, #797	; 0x31d
     7a4:	00193c0e 	andseq	r3, r9, lr, lsl #24
     7a8:	01151e00 	tsteq	r5, r0, lsl #28
     7ac:	13011927 	movwne	r1, #6439	; 0x1927
     7b0:	341f0000 	ldrcc	r0, [pc], #-0	; 7b8 <_malloc_r+0x2e8>
     7b4:	3a0e0300 	bcc	3813bc <_bsl_base_address+0x17f3bc>
     7b8:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     7bc:	3f13490b 	svccc	0x0013490b
     7c0:	00193c19 	andseq	r3, r9, r9, lsl ip
     7c4:	012e2000 			; <UNDEFINED> instruction: 0x012e2000
     7c8:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     7cc:	0b3b0b3a 	bleq	ec34bc <_bsl_base_address+0xcc14bc>
     7d0:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     7d4:	06120111 			; <UNDEFINED> instruction: 0x06120111
     7d8:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
     7dc:	00130119 	andseq	r0, r3, r9, lsl r1
     7e0:	00052100 	andeq	r2, r5, r0, lsl #2
     7e4:	0b3a0e03 	bleq	e83ff8 <_bsl_base_address+0xc81ff8>
     7e8:	0b390b3b 	bleq	e434dc <_bsl_base_address+0xc414dc>
     7ec:	17021349 	strne	r1, [r2, -r9, asr #6]
     7f0:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
     7f4:	82892200 	addhi	r2, r9, #0, 4
     7f8:	01110101 	tsteq	r1, r1, lsl #2
     7fc:	00001331 	andeq	r1, r0, r1, lsr r3
     800:	01828a23 	orreq	r8, r2, r3, lsr #20
     804:	91180200 	tstls	r8, r0, lsl #4
     808:	00001842 	andeq	r1, r0, r2, asr #16
     80c:	3f012e24 	svccc	0x00012e24
     810:	3a0e0319 	bcc	38147c <_bsl_base_address+0x17f47c>
     814:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     818:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     81c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     820:	97184006 	ldrls	r4, [r8, -r6]
     824:	13011942 	movwne	r1, #6466	; 0x1942
     828:	2e250000 	cdpcs	0, 2, cr0, cr5, cr0, {0}
     82c:	3c193f00 	ldccc	15, cr3, [r9], {-0}
     830:	030e6e19 	movweq	r6, #60953	; 0xee19
     834:	3b0b3a0e 	blcc	2cf074 <_bsl_base_address+0xcd074>
     838:	000b390b 	andeq	r3, fp, fp, lsl #18
     83c:	11010000 	mrsne	r0, (UNDEF: 1)
     840:	130e2501 	movwne	r2, #58625	; 0xe501
     844:	1b0e030b 	blne	381478 <_bsl_base_address+0x17f478>
     848:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
     84c:	00171006 	andseq	r1, r7, r6
     850:	00240200 	eoreq	r0, r4, r0, lsl #4
     854:	0b3e0b0b 	bleq	f83488 <_bsl_base_address+0xd81488>
     858:	00000803 	andeq	r0, r0, r3, lsl #16
     85c:	03001603 	movweq	r1, #1539	; 0x603
     860:	3b0b3a0e 	blcc	2cf0a0 <_bsl_base_address+0xcd0a0>
     864:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
     868:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
     86c:	0b0b0024 	bleq	2c0904 <_bsl_base_address+0xbe904>
     870:	0e030b3e 	vmoveq.16	d3[0], r0
     874:	0f050000 	svceq	0x00050000
     878:	000b0b00 	andeq	r0, fp, r0, lsl #22
     87c:	00160600 	andseq	r0, r6, r0, lsl #12
     880:	0b3a0e03 	bleq	e84094 <_bsl_base_address+0xc82094>
     884:	0b39053b 	bleq	e41d78 <_bsl_base_address+0xc3fd78>
     888:	00001349 	andeq	r1, r0, r9, asr #6
     88c:	0b011707 	bleq	464b0 <__data_load__+0x44e80>
     890:	3b0b3a0b 	blcc	2cf0c4 <_bsl_base_address+0xcd0c4>
     894:	010b390b 	tsteq	fp, fp, lsl #18
     898:	08000013 	stmdaeq	r0, {r0, r1, r4}
     89c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     8a0:	0b3b0b3a 	bleq	ec3590 <_bsl_base_address+0xcc1590>
     8a4:	13490b39 	movtne	r0, #39737	; 0x9b39
     8a8:	01090000 	mrseq	r0, (UNDEF: 9)
     8ac:	01134901 	tsteq	r3, r1, lsl #18
     8b0:	0a000013 	beq	904 <_malloc_r+0x434>
     8b4:	13490021 	movtne	r0, #36897	; 0x9021
     8b8:	00000b2f 	andeq	r0, r0, pc, lsr #22
     8bc:	0b01130b 	bleq	454f0 <__data_load__+0x43ec0>
     8c0:	3b0b3a0b 	blcc	2cf0f4 <_bsl_base_address+0xcd0f4>
     8c4:	010b390b 	tsteq	fp, fp, lsl #18
     8c8:	0c000013 	stceq	0, cr0, [r0], {19}
     8cc:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     8d0:	0b3b0b3a 	bleq	ec35c0 <_bsl_base_address+0xcc15c0>
     8d4:	13490b39 	movtne	r0, #39737	; 0x9b39
     8d8:	00000b38 	andeq	r0, r0, r8, lsr fp
     8dc:	0301130d 	movweq	r1, #4877	; 0x130d
     8e0:	3a0b0b0e 	bcc	2c3520 <_bsl_base_address+0xc1520>
     8e4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     8e8:	0013010b 	andseq	r0, r3, fp, lsl #2
     8ec:	000d0e00 	andeq	r0, sp, r0, lsl #28
     8f0:	0b3a0803 	bleq	e82904 <_bsl_base_address+0xc80904>
     8f4:	0b390b3b 	bleq	e435e8 <_bsl_base_address+0xc415e8>
     8f8:	0b381349 	bleq	e05624 <_bsl_base_address+0xc03624>
     8fc:	0f0f0000 	svceq	0x000f0000
     900:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
     904:	10000013 	andne	r0, r0, r3, lsl r0
     908:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
     90c:	0b3a050b 	bleq	e81d40 <_bsl_base_address+0xc7fd40>
     910:	0b390b3b 	bleq	e43604 <_bsl_base_address+0xc41604>
     914:	00001301 	andeq	r1, r0, r1, lsl #6
     918:	03000d11 	movweq	r0, #3345	; 0xd11
     91c:	3b0b3a0e 	blcc	2cf15c <_bsl_base_address+0xcd15c>
     920:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
     924:	00053813 	andeq	r3, r5, r3, lsl r8
     928:	00151200 	andseq	r1, r5, r0, lsl #4
     92c:	00001927 	andeq	r1, r0, r7, lsr #18
     930:	27011513 	smladcs	r1, r3, r5, r1
     934:	01134919 	tsteq	r3, r9, lsl r9
     938:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
     93c:	13490005 	movtne	r0, #36869	; 0x9005
     940:	13150000 	tstne	r5, #0
     944:	0b0e0301 	bleq	381550 <_bsl_base_address+0x17f550>
     948:	3b0b3a05 	blcc	2cf164 <_bsl_base_address+0xcd164>
     94c:	010b3905 	tsteq	fp, r5, lsl #18
     950:	16000013 			; <UNDEFINED> instruction: 0x16000013
     954:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     958:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     95c:	13490b39 	movtne	r0, #39737	; 0x9b39
     960:	00000b38 	andeq	r0, r0, r8, lsr fp
     964:	03000d17 	movweq	r0, #3351	; 0xd17
     968:	3b0b3a0e 	blcc	2cf1a8 <_bsl_base_address+0xcd1a8>
     96c:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     970:	00053813 	andeq	r3, r5, r3, lsl r8
     974:	00261800 	eoreq	r1, r6, r0, lsl #16
     978:	00001349 	andeq	r1, r0, r9, asr #6
     97c:	03011319 	movweq	r1, #4889	; 0x1319
     980:	3a0b0b0e 	bcc	2c35c0 <_bsl_base_address+0xc15c0>
     984:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     988:	0013010b 	andseq	r0, r3, fp, lsl #2
     98c:	01131a00 	tsteq	r3, r0, lsl #20
     990:	0b3a0b0b 	bleq	e835c4 <_bsl_base_address+0xc815c4>
     994:	0b39053b 	bleq	e41e88 <_bsl_base_address+0xc3fe88>
     998:	00001301 	andeq	r1, r0, r1, lsl #6
     99c:	0b01171b 	bleq	46610 <__data_load__+0x44fe0>
     9a0:	3b0b3a0b 	blcc	2cf1d4 <_bsl_base_address+0xcd1d4>
     9a4:	010b3905 	tsteq	fp, r5, lsl #18
     9a8:	1c000013 	stcne	0, cr0, [r0], {19}
     9ac:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
     9b0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     9b4:	13490b39 	movtne	r0, #39737	; 0x9b39
     9b8:	131d0000 	tstne	sp, #0
     9bc:	3c0e0300 	stccc	3, cr0, [lr], {-0}
     9c0:	1e000019 	mcrne	0, 0, r0, cr0, cr9, {0}
     9c4:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
     9c8:	00001301 	andeq	r1, r0, r1, lsl #6
     9cc:	03000d1f 	movweq	r0, #3359	; 0xd1f
     9d0:	3b0b3a08 	blcc	2cf1f8 <_bsl_base_address+0xcd1f8>
     9d4:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     9d8:	000b3813 	andeq	r3, fp, r3, lsl r8
     9dc:	00212000 	eoreq	r2, r1, r0
     9e0:	052f1349 	streq	r1, [pc, #-841]!	; 69f <_malloc_r+0x1cf>
     9e4:	34210000 	strtcc	r0, [r1], #-0
     9e8:	3a0e0300 	bcc	3815f0 <_bsl_base_address+0x17f5f0>
     9ec:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     9f0:	3f13490b 	svccc	0x0013490b
     9f4:	00180219 	andseq	r0, r8, r9, lsl r2
     9f8:	012e2200 			; <UNDEFINED> instruction: 0x012e2200
     9fc:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     a00:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     a04:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     a08:	01111349 	tsteq	r1, r9, asr #6
     a0c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     a10:	01194297 			; <UNDEFINED> instruction: 0x01194297
     a14:	23000013 	movwcs	r0, #19
     a18:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
     a1c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     a20:	13490b39 	movtne	r0, #39737	; 0x9b39
     a24:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     a28:	24000017 	strcs	r0, [r0], #-23	; 0xffffffe9
     a2c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     a30:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     a34:	13490b39 	movtne	r0, #39737	; 0x9b39
     a38:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     a3c:	25000017 	strcs	r0, [r0, #-23]	; 0xffffffe9
     a40:	08030034 	stmdaeq	r3, {r2, r4, r5}
     a44:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     a48:	13490b39 	movtne	r0, #39737	; 0x9b39
     a4c:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     a50:	26000017 			; <UNDEFINED> instruction: 0x26000017
     a54:	1331011d 	teqne	r1, #1073741831	; 0x40000007
     a58:	42b80152 	adcsmi	r0, r8, #-2147483628	; 0x80000014
     a5c:	58175505 	ldmdapl	r7, {r0, r2, r8, sl, ip, lr}
     a60:	5705590b 	strpl	r5, [r5, -fp, lsl #18]
     a64:	0013010b 	andseq	r0, r3, fp, lsl #2
     a68:	00052700 	andeq	r2, r5, r0, lsl #14
     a6c:	00001331 	andeq	r1, r0, r1, lsr r3
     a70:	31000528 	tstcc	r0, r8, lsr #10
     a74:	b7170213 			; <UNDEFINED> instruction: 0xb7170213
     a78:	00001742 	andeq	r1, r0, r2, asr #14
     a7c:	55010b29 	strpl	r0, [r1, #-2857]	; 0xfffff4d7
     a80:	2a000017 	bcs	ae4 <_malloc_r+0x614>
     a84:	13310034 	teqne	r1, #52	; 0x34
     a88:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     a8c:	2b000017 	blcs	af0 <_malloc_r+0x620>
     a90:	01018289 	smlabbeq	r1, r9, r2, r8
     a94:	13310111 	teqne	r1, #1073741828	; 0x40000004
     a98:	00001301 	andeq	r1, r0, r1, lsl #6
     a9c:	01828a2c 	orreq	r8, r2, ip, lsr #20
     aa0:	91180200 	tstls	r8, r0, lsl #4
     aa4:	00001842 	andeq	r1, r0, r2, asr #16
     aa8:	0182892d 	orreq	r8, r2, sp, lsr #18
     aac:	31011101 	tstcc	r1, r1, lsl #2
     ab0:	2e000013 	mcrcs	0, 0, r0, cr0, cr3, {0}
     ab4:	00018289 	andeq	r8, r1, r9, lsl #5
     ab8:	13310111 	teqne	r1, #1073741828	; 0x40000004
     abc:	2e2f0000 	cdpcs	0, 2, cr0, cr15, cr0, {0}
     ac0:	3a0e0301 	bcc	3816cc <_bsl_base_address+0x17f6cc>
     ac4:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     ac8:	2019270b 	andscs	r2, r9, fp, lsl #14
     acc:	0013010b 	andseq	r0, r3, fp, lsl #2
     ad0:	00053000 	andeq	r3, r5, r0
     ad4:	0b3a0e03 	bleq	e842e8 <_bsl_base_address+0xc822e8>
     ad8:	0b39053b 	bleq	e41fcc <_bsl_base_address+0xc3ffcc>
     adc:	00001349 	andeq	r1, r0, r9, asr #6
     ae0:	03000531 	movweq	r0, #1329	; 0x531
     ae4:	3b0b3a08 	blcc	2cf30c <_bsl_base_address+0xcd30c>
     ae8:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     aec:	32000013 	andcc	r0, r0, #19
     af0:	08030034 	stmdaeq	r3, {r2, r4, r5}
     af4:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     af8:	13490b39 	movtne	r0, #39737	; 0x9b39
     afc:	34330000 	ldrtcc	r0, [r3], #-0
     b00:	3a0e0300 	bcc	381708 <_bsl_base_address+0x17f708>
     b04:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     b08:	0013490b 	andseq	r4, r3, fp, lsl #18
     b0c:	002e3400 	eoreq	r3, lr, r0, lsl #8
     b10:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
     b14:	0e030e6e 	cdpeq	14, 0, cr0, cr3, cr14, {3}
     b18:	0b3b0b3a 	bleq	ec3808 <_bsl_base_address+0xcc1808>
     b1c:	00000b39 	andeq	r0, r0, r9, lsr fp
     b20:	3f002e35 	svccc	0x00002e35
     b24:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
     b28:	3a0e030e 	bcc	381768 <_bsl_base_address+0x17f768>
     b2c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     b30:	0000000b 	andeq	r0, r0, fp
     b34:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     b38:	030b130e 	movweq	r1, #45838	; 0xb30e
     b3c:	110e1b0e 	tstne	lr, lr, lsl #22
     b40:	10061201 	andne	r1, r6, r1, lsl #4
     b44:	02000017 	andeq	r0, r0, #23
     b48:	0b0b0024 	bleq	2c0be0 <_bsl_base_address+0xbebe0>
     b4c:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     b50:	16030000 	strne	r0, [r3], -r0
     b54:	3a0e0300 	bcc	38175c <_bsl_base_address+0x17f75c>
     b58:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     b5c:	0013490b 	andseq	r4, r3, fp, lsl #18
     b60:	00240400 	eoreq	r0, r4, r0, lsl #8
     b64:	0b3e0b0b 	bleq	f83798 <_bsl_base_address+0xd81798>
     b68:	00000e03 	andeq	r0, r0, r3, lsl #28
     b6c:	0b000f05 	bleq	4788 <__data_load__+0x3158>
     b70:	0600000b 	streq	r0, [r0], -fp
     b74:	0b0b000f 	bleq	2c0bb8 <_bsl_base_address+0xbebb8>
     b78:	00001349 	andeq	r1, r0, r9, asr #6
     b7c:	3f012e07 	svccc	0x00012e07
     b80:	3a0e0319 	bcc	3817ec <_bsl_base_address+0x17f7ec>
     b84:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     b88:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
     b8c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
     b90:	97184006 	ldrls	r4, [r8, -r6]
     b94:	13011942 	movwne	r1, #6466	; 0x1942
     b98:	05080000 	streq	r0, [r8, #-0]
     b9c:	3a080300 	bcc	2017a4 <_tlv_base_address+0x7a4>
     ba0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     ba4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
     ba8:	09000018 	stmdbeq	r0, {r3, r4}
     bac:	08030005 	stmdaeq	r3, {r0, r2}
     bb0:	0b3b0b3a 	bleq	ec38a0 <_bsl_base_address+0xcc18a0>
     bb4:	13490b39 	movtne	r0, #39737	; 0x9b39
     bb8:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     bbc:	0a000017 	beq	c20 <_malloc_r+0x750>
     bc0:	08030034 	stmdaeq	r3, {r2, r4, r5}
     bc4:	0b3b0b3a 	bleq	ec38b4 <_bsl_base_address+0xcc18b4>
     bc8:	13490b39 	movtne	r0, #39737	; 0x9b39
     bcc:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     bd0:	0b000017 	bleq	c34 <_malloc_r+0x764>
     bd4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
     bd8:	0b3b0b3a 	bleq	ec38c8 <_bsl_base_address+0xcc18c8>
     bdc:	13490b39 	movtne	r0, #39737	; 0x9b39
     be0:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     be4:	00000017 	andeq	r0, r0, r7, lsl r0
     be8:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     bec:	030b130e 	movweq	r1, #45838	; 0xb30e
     bf0:	110e1b0e 	tstne	lr, lr, lsl #22
     bf4:	10061201 	andne	r1, r6, r1, lsl #4
     bf8:	02000017 	andeq	r0, r0, #23
     bfc:	0b0b0024 	bleq	2c0c94 <_bsl_base_address+0xbec94>
     c00:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
     c04:	24030000 	strcs	r0, [r3], #-0
     c08:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     c0c:	000e030b 	andeq	r0, lr, fp, lsl #6
     c10:	00160400 	andseq	r0, r6, r0, lsl #8
     c14:	0b3a0e03 	bleq	e84428 <_bsl_base_address+0xc82428>
     c18:	0b39053b 	bleq	e4210c <_bsl_base_address+0xc4010c>
     c1c:	00001349 	andeq	r1, r0, r9, asr #6
     c20:	03001605 	movweq	r1, #1541	; 0x605
     c24:	3b0b3a0e 	blcc	2cf464 <_bsl_base_address+0xcd464>
     c28:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
     c2c:	06000013 			; <UNDEFINED> instruction: 0x06000013
     c30:	0b0b0117 	bleq	2c1094 <_bsl_base_address+0xbf094>
     c34:	0b3b0b3a 	bleq	ec3924 <_bsl_base_address+0xcc1924>
     c38:	13010b39 	movwne	r0, #6969	; 0x1b39
     c3c:	0d070000 	stceq	0, cr0, [r7, #-0]
     c40:	3a0e0300 	bcc	381848 <_bsl_base_address+0x17f848>
     c44:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     c48:	0013490b 	andseq	r4, r3, fp, lsl #18
     c4c:	01010800 	tsteq	r1, r0, lsl #16
     c50:	13011349 	movwne	r1, #4937	; 0x1349
     c54:	21090000 	mrscs	r0, (UNDEF: 9)
     c58:	2f134900 	svccs	0x00134900
     c5c:	0a00000b 	beq	c90 <_malloc_r+0x7c0>
     c60:	0b0b0113 	bleq	2c10b4 <_bsl_base_address+0xbf0b4>
     c64:	0b3b0b3a 	bleq	ec3954 <_bsl_base_address+0xcc1954>
     c68:	13010b39 	movwne	r0, #6969	; 0x1b39
     c6c:	0d0b0000 	stceq	0, cr0, [fp, #-0]
     c70:	3a0e0300 	bcc	381878 <_bsl_base_address+0x17f878>
     c74:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     c78:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     c7c:	0c00000b 	stceq	0, cr0, [r0], {11}
     c80:	0b0b000f 	bleq	2c0cc4 <_bsl_base_address+0xbecc4>
     c84:	130d0000 	movwne	r0, #53248	; 0xd000
     c88:	0b0e0301 	bleq	381894 <_bsl_base_address+0x17f894>
     c8c:	3b0b3a0b 	blcc	2cf4c0 <_bsl_base_address+0xcd4c0>
     c90:	010b390b 	tsteq	fp, fp, lsl #18
     c94:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     c98:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     c9c:	0b3b0b3a 	bleq	ec398c <_bsl_base_address+0xcc198c>
     ca0:	13490b39 	movtne	r0, #39737	; 0x9b39
     ca4:	00000b38 	andeq	r0, r0, r8, lsr fp
     ca8:	0b000f0f 	bleq	48ec <__data_load__+0x32bc>
     cac:	0013490b 	andseq	r4, r3, fp, lsl #18
     cb0:	01131000 	tsteq	r3, r0
     cb4:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     cb8:	0b3b0b3a 	bleq	ec39a8 <_bsl_base_address+0xcc19a8>
     cbc:	13010b39 	movwne	r0, #6969	; 0x1b39
     cc0:	0d110000 	ldceq	0, cr0, [r1, #-0]
     cc4:	3a0e0300 	bcc	3818cc <_bsl_base_address+0x17f8cc>
     cc8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     ccc:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     cd0:	12000005 	andne	r0, r0, #5
     cd4:	19270015 	stmdbne	r7!, {r0, r2, r4}
     cd8:	15130000 	ldrne	r0, [r3, #-0]
     cdc:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
     ce0:	00130113 	andseq	r0, r3, r3, lsl r1
     ce4:	00051400 	andeq	r1, r5, r0, lsl #8
     ce8:	00001349 	andeq	r1, r0, r9, asr #6
     cec:	03011315 	movweq	r1, #4885	; 0x1315
     cf0:	3a050b0e 	bcc	143930 <__data_load__+0x142300>
     cf4:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     cf8:	0013010b 	andseq	r0, r3, fp, lsl #2
     cfc:	000d1600 	andeq	r1, sp, r0, lsl #12
     d00:	0b3a0e03 	bleq	e84514 <_bsl_base_address+0xc82514>
     d04:	0b39053b 	bleq	e421f8 <_bsl_base_address+0xc401f8>
     d08:	0b381349 	bleq	e05a34 <_bsl_base_address+0xc03a34>
     d0c:	0d170000 	ldceq	0, cr0, [r7, #-0]
     d10:	3a0e0300 	bcc	381918 <_bsl_base_address+0x17f918>
     d14:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     d18:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     d1c:	18000005 	stmdane	r0, {r0, r2}
     d20:	13490026 	movtne	r0, #36902	; 0x9026
     d24:	13190000 	tstne	r9, #0
     d28:	0b0e0301 	bleq	381934 <_bsl_base_address+0x17f934>
     d2c:	3b0b3a0b 	blcc	2cf560 <_bsl_base_address+0xcd560>
     d30:	010b3905 	tsteq	fp, r5, lsl #18
     d34:	1a000013 	bne	d88 <memset+0xc8>
     d38:	0b0b0113 	bleq	2c118c <_bsl_base_address+0xbf18c>
     d3c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     d40:	13010b39 	movwne	r0, #6969	; 0x1b39
     d44:	171b0000 	ldrne	r0, [fp, -r0]
     d48:	3a0b0b01 	bcc	2c3954 <_bsl_base_address+0xc1954>
     d4c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     d50:	0013010b 	andseq	r0, r3, fp, lsl #2
     d54:	000d1c00 	andeq	r1, sp, r0, lsl #24
     d58:	0b3a0e03 	bleq	e8456c <_bsl_base_address+0xc8256c>
     d5c:	0b39053b 	bleq	e42250 <_bsl_base_address+0xc40250>
     d60:	00001349 	andeq	r1, r0, r9, asr #6
     d64:	0300131d 	movweq	r1, #797	; 0x31d
     d68:	00193c0e 	andseq	r3, r9, lr, lsl #24
     d6c:	01151e00 	tsteq	r5, r0, lsl #28
     d70:	13011927 	movwne	r1, #6439	; 0x1927
     d74:	341f0000 	ldrcc	r0, [pc], #-0	; d7c <memset+0xbc>
     d78:	3a0e0300 	bcc	381980 <_bsl_base_address+0x17f980>
     d7c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     d80:	1c13490b 			; <UNDEFINED> instruction: 0x1c13490b
     d84:	2000000b 	andcs	r0, r0, fp
     d88:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     d8c:	0b3a0e03 	bleq	e845a0 <_bsl_base_address+0xc825a0>
     d90:	0b390b3b 	bleq	e43a84 <_bsl_base_address+0xc41a84>
     d94:	13011927 	movwne	r1, #6439	; 0x1927
     d98:	05210000 	streq	r0, [r1, #-0]!
     d9c:	3a080300 	bcc	2019a4 <_tlv_base_address+0x9a4>
     da0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     da4:	0013490b 	andseq	r4, r3, fp, lsl #18
     da8:	012e2200 			; <UNDEFINED> instruction: 0x012e2200
     dac:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     db0:	0b3b0b3a 	bleq	ec3aa0 <_bsl_base_address+0xcc1aa0>
     db4:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     db8:	13010b20 	movwne	r0, #6944	; 0x1b20
     dbc:	2e230000 	cdpcs	0, 2, cr0, cr3, cr0, {0}
     dc0:	11133101 	tstne	r3, r1, lsl #2
     dc4:	40061201 	andmi	r1, r6, r1, lsl #4
     dc8:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
     dcc:	05240000 	streq	r0, [r4, #-0]!
     dd0:	02133100 	andseq	r3, r3, #0, 2
     dd4:	00000018 	andeq	r0, r0, r8, lsl r0
     dd8:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
     ddc:	030b130e 	movweq	r1, #45838	; 0xb30e
     de0:	110e1b0e 	tstne	lr, lr, lsl #22
     de4:	10061201 	andne	r1, r6, r1, lsl #4
     de8:	02000017 	andeq	r0, r0, #23
     dec:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
     df0:	0b3b0b3a 	bleq	ec3ae0 <_bsl_base_address+0xcc1ae0>
     df4:	13490b39 	movtne	r0, #39737	; 0x9b39
     df8:	24030000 	strcs	r0, [r3], #-0
     dfc:	3e0b0b00 	vmlacc.f64	d0, d11, d0
     e00:	0008030b 	andeq	r0, r8, fp, lsl #6
     e04:	00240400 	eoreq	r0, r4, r0, lsl #8
     e08:	0b3e0b0b 	bleq	f83a3c <_bsl_base_address+0xd81a3c>
     e0c:	00000e03 	andeq	r0, r0, r3, lsl #28
     e10:	03001605 	movweq	r1, #1541	; 0x605
     e14:	3b0b3a0e 	blcc	2cf654 <_bsl_base_address+0xcd654>
     e18:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
     e1c:	06000013 			; <UNDEFINED> instruction: 0x06000013
     e20:	0b0b0117 	bleq	2c1284 <_bsl_base_address+0xbf284>
     e24:	0b3b0b3a 	bleq	ec3b14 <_bsl_base_address+0xcc1b14>
     e28:	13010b39 	movwne	r0, #6969	; 0x1b39
     e2c:	0d070000 	stceq	0, cr0, [r7, #-0]
     e30:	3a0e0300 	bcc	381a38 <_bsl_base_address+0x17fa38>
     e34:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     e38:	0013490b 	andseq	r4, r3, fp, lsl #18
     e3c:	01010800 	tsteq	r1, r0, lsl #16
     e40:	13011349 	movwne	r1, #4937	; 0x1349
     e44:	21090000 	mrscs	r0, (UNDEF: 9)
     e48:	2f134900 	svccs	0x00134900
     e4c:	0a00000b 	beq	e80 <__register_exitproc+0x58>
     e50:	0b0b0113 	bleq	2c12a4 <_bsl_base_address+0xbf2a4>
     e54:	0b3b0b3a 	bleq	ec3b44 <_bsl_base_address+0xcc1b44>
     e58:	13010b39 	movwne	r0, #6969	; 0x1b39
     e5c:	0d0b0000 	stceq	0, cr0, [fp, #-0]
     e60:	3a0e0300 	bcc	381a68 <_bsl_base_address+0x17fa68>
     e64:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     e68:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     e6c:	0c00000b 	stceq	0, cr0, [r0], {11}
     e70:	0b0b000f 	bleq	2c0eb4 <_bsl_base_address+0xbeeb4>
     e74:	130d0000 	movwne	r0, #53248	; 0xd000
     e78:	0b0e0301 	bleq	381a84 <_bsl_base_address+0x17fa84>
     e7c:	3b0b3a0b 	blcc	2cf6b0 <_bsl_base_address+0xcd6b0>
     e80:	010b390b 	tsteq	fp, fp, lsl #18
     e84:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
     e88:	0803000d 	stmdaeq	r3, {r0, r2, r3}
     e8c:	0b3b0b3a 	bleq	ec3b7c <_bsl_base_address+0xcc1b7c>
     e90:	13490b39 	movtne	r0, #39737	; 0x9b39
     e94:	00000b38 	andeq	r0, r0, r8, lsr fp
     e98:	0b000f0f 	bleq	4adc <__data_load__+0x34ac>
     e9c:	0013490b 	andseq	r4, r3, fp, lsl #18
     ea0:	01131000 	tsteq	r3, r0
     ea4:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
     ea8:	0b3b0b3a 	bleq	ec3b98 <_bsl_base_address+0xcc1b98>
     eac:	13010b39 	movwne	r0, #6969	; 0x1b39
     eb0:	0d110000 	ldceq	0, cr0, [r1, #-0]
     eb4:	3a0e0300 	bcc	381abc <_bsl_base_address+0x17fabc>
     eb8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     ebc:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     ec0:	12000005 	andne	r0, r0, #5
     ec4:	19270015 	stmdbne	r7!, {r0, r2, r4}
     ec8:	15130000 	ldrne	r0, [r3, #-0]
     ecc:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
     ed0:	00130113 	andseq	r0, r3, r3, lsl r1
     ed4:	00051400 	andeq	r1, r5, r0, lsl #8
     ed8:	00001349 	andeq	r1, r0, r9, asr #6
     edc:	03011315 	movweq	r1, #4885	; 0x1315
     ee0:	3a050b0e 	bcc	143b20 <__data_load__+0x1424f0>
     ee4:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     ee8:	0013010b 	andseq	r0, r3, fp, lsl #2
     eec:	000d1600 	andeq	r1, sp, r0, lsl #12
     ef0:	0b3a0e03 	bleq	e84704 <_bsl_base_address+0xc82704>
     ef4:	0b39053b 	bleq	e423e8 <_bsl_base_address+0xc403e8>
     ef8:	0b381349 	bleq	e05c24 <_bsl_base_address+0xc03c24>
     efc:	0d170000 	ldceq	0, cr0, [r7, #-0]
     f00:	3a0e0300 	bcc	381b08 <_bsl_base_address+0x17fb08>
     f04:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     f08:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
     f0c:	18000005 	stmdane	r0, {r0, r2}
     f10:	13490026 	movtne	r0, #36902	; 0x9026
     f14:	13190000 	tstne	r9, #0
     f18:	0b0e0301 	bleq	381b24 <_bsl_base_address+0x17fb24>
     f1c:	3b0b3a0b 	blcc	2cf750 <_bsl_base_address+0xcd750>
     f20:	010b3905 	tsteq	fp, r5, lsl #18
     f24:	1a000013 	bne	f78 <__call_exitprocs+0xc4>
     f28:	0b0b0113 	bleq	2c137c <_bsl_base_address+0xbf37c>
     f2c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
     f30:	13010b39 	movwne	r0, #6969	; 0x1b39
     f34:	171b0000 	ldrne	r0, [fp, -r0]
     f38:	3a0b0b01 	bcc	2c3b44 <_bsl_base_address+0xc1b44>
     f3c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
     f40:	0013010b 	andseq	r0, r3, fp, lsl #2
     f44:	000d1c00 	andeq	r1, sp, r0, lsl #24
     f48:	0b3a0e03 	bleq	e8475c <_bsl_base_address+0xc8275c>
     f4c:	0b39053b 	bleq	e42440 <_bsl_base_address+0xc40440>
     f50:	00001349 	andeq	r1, r0, r9, asr #6
     f54:	0300131d 	movweq	r1, #797	; 0x31d
     f58:	00193c0e 	andseq	r3, r9, lr, lsl #24
     f5c:	01151e00 	tsteq	r5, r0, lsl #28
     f60:	13011927 	movwne	r1, #6439	; 0x1927
     f64:	341f0000 	ldrcc	r0, [pc], #-0	; f6c <__call_exitprocs+0xb8>
     f68:	3a0e0300 	bcc	381b70 <_bsl_base_address+0x17fb70>
     f6c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
     f70:	3f13490b 	svccc	0x0013490b
     f74:	00193c19 	andseq	r3, r9, r9, lsl ip
     f78:	012e2000 			; <UNDEFINED> instruction: 0x012e2000
     f7c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
     f80:	0b3b0b3a 	bleq	ec3c70 <_bsl_base_address+0xcc1c70>
     f84:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
     f88:	01111349 	tsteq	r1, r9, asr #6
     f8c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
     f90:	01194297 			; <UNDEFINED> instruction: 0x01194297
     f94:	21000013 	tstcs	r0, r3, lsl r0
     f98:	08030005 	stmdaeq	r3, {r0, r2}
     f9c:	0b3b0b3a 	bleq	ec3c8c <_bsl_base_address+0xcc1c8c>
     fa0:	13490b39 	movtne	r0, #39737	; 0x9b39
     fa4:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     fa8:	22000017 	andcs	r0, r0, #23
     fac:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
     fb0:	0b3b0b3a 	bleq	ec3ca0 <_bsl_base_address+0xcc1ca0>
     fb4:	13490b39 	movtne	r0, #39737	; 0x9b39
     fb8:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     fbc:	23000017 	movwcs	r0, #23
     fc0:	08030034 	stmdaeq	r3, {r2, r4, r5}
     fc4:	0b3b0b3a 	bleq	ec3cb4 <_bsl_base_address+0xcc1cb4>
     fc8:	13490b39 	movtne	r0, #39737	; 0x9b39
     fcc:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
     fd0:	24000017 	strcs	r0, [r0], #-23	; 0xffffffe9
     fd4:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
     fd8:	0b3a0e03 	bleq	e847ec <_bsl_base_address+0xc827ec>
     fdc:	0b390b3b 	bleq	e43cd0 <_bsl_base_address+0xc41cd0>
     fe0:	13491927 	movtne	r1, #39207	; 0x9927
     fe4:	1301193c 	movwne	r1, #6460	; 0x193c
     fe8:	89250000 	stmdbhi	r5!, {}	; <UNPREDICTABLE>
     fec:	11010182 	smlabbne	r1, r2, r1, r0
     ff0:	00133101 	andseq	r3, r3, r1, lsl #2
     ff4:	828a2600 	addhi	r2, sl, #0, 12
     ff8:	18020001 	stmdane	r2, {r0}
     ffc:	00184291 	mulseq	r8, r1, r2
    1000:	002e2700 	eoreq	r2, lr, r0, lsl #14
    1004:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    1008:	0e030e6e 	cdpeq	14, 0, cr0, cr3, cr14, {3}
    100c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1010:	00000b39 	andeq	r0, r0, r9, lsr fp
    1014:	01110100 	tsteq	r1, r0, lsl #2
    1018:	0b130e25 	bleq	4c48b4 <_bsl_base_address+0x2c28b4>
    101c:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
    1020:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1024:	00001710 	andeq	r1, r0, r0, lsl r7
    1028:	0b002402 	bleq	a038 <__data_load__+0x8a08>
    102c:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1030:	03000008 	movweq	r0, #8
    1034:	0b0b0024 	bleq	2c10cc <_bsl_base_address+0xbf0cc>
    1038:	0e030b3e 	vmoveq.16	d3[0], r0
    103c:	16040000 	strne	r0, [r4], -r0
    1040:	3a0e0300 	bcc	381c48 <_bsl_base_address+0x17fc48>
    1044:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1048:	0013490b 	andseq	r4, r3, fp, lsl #18
    104c:	00160500 	andseq	r0, r6, r0, lsl #10
    1050:	0b3a0e03 	bleq	e84864 <_bsl_base_address+0xc82864>
    1054:	0b390b3b 	bleq	e43d48 <_bsl_base_address+0xc41d48>
    1058:	00001349 	andeq	r1, r0, r9, asr #6
    105c:	0b011706 	bleq	46c7c <__data_load__+0x4564c>
    1060:	3b0b3a0b 	blcc	2cf894 <_bsl_base_address+0xcd894>
    1064:	010b390b 	tsteq	fp, fp, lsl #18
    1068:	07000013 	smladeq	r0, r3, r0, r0
    106c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    1070:	0b3b0b3a 	bleq	ec3d60 <_bsl_base_address+0xcc1d60>
    1074:	13490b39 	movtne	r0, #39737	; 0x9b39
    1078:	01080000 	mrseq	r0, (UNDEF: 8)
    107c:	01134901 	tsteq	r3, r1, lsl #18
    1080:	09000013 	stmdbeq	r0, {r0, r1, r4}
    1084:	13490021 	movtne	r0, #36897	; 0x9021
    1088:	00000b2f 	andeq	r0, r0, pc, lsr #22
    108c:	0b01130a 	bleq	45cbc <__data_load__+0x4468c>
    1090:	3b0b3a0b 	blcc	2cf8c4 <_bsl_base_address+0xcd8c4>
    1094:	010b390b 	tsteq	fp, fp, lsl #18
    1098:	0b000013 	bleq	10ec <_free_r+0x20>
    109c:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    10a0:	0b3b0b3a 	bleq	ec3d90 <_bsl_base_address+0xcc1d90>
    10a4:	13490b39 	movtne	r0, #39737	; 0x9b39
    10a8:	00000b38 	andeq	r0, r0, r8, lsr fp
    10ac:	0b000f0c 	bleq	4ce4 <__data_load__+0x36b4>
    10b0:	0d00000b 	stceq	0, cr0, [r0, #-44]	; 0xffffffd4
    10b4:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    10b8:	0b3a0b0b 	bleq	e83cec <_bsl_base_address+0xc81cec>
    10bc:	0b390b3b 	bleq	e43db0 <_bsl_base_address+0xc41db0>
    10c0:	00001301 	andeq	r1, r0, r1, lsl #6
    10c4:	03000d0e 	movweq	r0, #3342	; 0xd0e
    10c8:	3b0b3a08 	blcc	2cf8f0 <_bsl_base_address+0xcd8f0>
    10cc:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    10d0:	000b3813 	andeq	r3, fp, r3, lsl r8
    10d4:	000f0f00 	andeq	r0, pc, r0, lsl #30
    10d8:	13490b0b 	movtne	r0, #39691	; 0x9b0b
    10dc:	13100000 	tstne	r0, #0
    10e0:	0b0e0301 	bleq	381cec <_bsl_base_address+0x17fcec>
    10e4:	3b0b3a05 	blcc	2cf900 <_bsl_base_address+0xcd900>
    10e8:	010b390b 	tsteq	fp, fp, lsl #18
    10ec:	11000013 	tstne	r0, r3, lsl r0
    10f0:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    10f4:	0b3b0b3a 	bleq	ec3de4 <_bsl_base_address+0xcc1de4>
    10f8:	13490b39 	movtne	r0, #39737	; 0x9b39
    10fc:	00000538 	andeq	r0, r0, r8, lsr r5
    1100:	27001512 	smladcs	r0, r2, r5, r1
    1104:	13000019 	movwne	r0, #25
    1108:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
    110c:	13011349 	movwne	r1, #4937	; 0x1349
    1110:	05140000 	ldreq	r0, [r4, #-0]
    1114:	00134900 	andseq	r4, r3, r0, lsl #18
    1118:	00261500 	eoreq	r1, r6, r0, lsl #10
    111c:	00001349 	andeq	r1, r0, r9, asr #6
    1120:	03011316 	movweq	r1, #4886	; 0x1316
    1124:	3a050b0e 	bcc	143d64 <__data_load__+0x142734>
    1128:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    112c:	0013010b 	andseq	r0, r3, fp, lsl #2
    1130:	000d1700 	andeq	r1, sp, r0, lsl #14
    1134:	0b3a0e03 	bleq	e84948 <_bsl_base_address+0xc82948>
    1138:	0b39053b 	bleq	e4262c <_bsl_base_address+0xc4062c>
    113c:	0b381349 	bleq	e05e68 <_bsl_base_address+0xc03e68>
    1140:	0d180000 	ldceq	0, cr0, [r8, #-0]
    1144:	3a0e0300 	bcc	381d4c <_bsl_base_address+0x17fd4c>
    1148:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    114c:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    1150:	19000005 	stmdbne	r0, {r0, r2}
    1154:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    1158:	0b3a0b0b 	bleq	e83d8c <_bsl_base_address+0xc81d8c>
    115c:	0b39053b 	bleq	e42650 <_bsl_base_address+0xc40650>
    1160:	00001301 	andeq	r1, r0, r1, lsl #6
    1164:	0b01131a 	bleq	45dd4 <__data_load__+0x447a4>
    1168:	3b0b3a0b 	blcc	2cf99c <_bsl_base_address+0xcd99c>
    116c:	010b3905 	tsteq	fp, r5, lsl #18
    1170:	1b000013 	blne	11c4 <_free_r+0xf8>
    1174:	0b0b0117 	bleq	2c15d8 <_bsl_base_address+0xbf5d8>
    1178:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    117c:	13010b39 	movwne	r0, #6969	; 0x1b39
    1180:	0d1c0000 	ldceq	0, cr0, [ip, #-0]
    1184:	3a0e0300 	bcc	381d8c <_bsl_base_address+0x17fd8c>
    1188:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    118c:	0013490b 	andseq	r4, r3, fp, lsl #18
    1190:	00131d00 	andseq	r1, r3, r0, lsl #26
    1194:	193c0e03 	ldmdbne	ip!, {r0, r1, r9, sl, fp}
    1198:	151e0000 	ldrne	r0, [lr, #-0]
    119c:	01192701 	tsteq	r9, r1, lsl #14
    11a0:	1f000013 	svcne	0x00000013
    11a4:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    11a8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    11ac:	13490b39 	movtne	r0, #39737	; 0x9b39
    11b0:	193c193f 	ldmdbne	ip!, {r0, r1, r2, r3, r4, r5, r8, fp, ip}
    11b4:	04200000 	strteq	r0, [r0], #-0
    11b8:	3e0e0301 	cdpcc	3, 0, cr0, cr14, cr1, {0}
    11bc:	490b0b0b 	stmdbmi	fp, {r0, r1, r3, r8, r9, fp}
    11c0:	3b0b3a13 	blcc	2cfa14 <_bsl_base_address+0xcda14>
    11c4:	010b390b 	tsteq	fp, fp, lsl #18
    11c8:	21000013 	tstcs	r0, r3, lsl r0
    11cc:	0e030028 	cdpeq	0, 0, cr0, cr3, cr8, {1}
    11d0:	00000b1c 	andeq	r0, r0, ip, lsl fp
    11d4:	3f012e22 	svccc	0x00012e22
    11d8:	3a0e0319 	bcc	381e44 <_bsl_base_address+0x17fe44>
    11dc:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    11e0:	4919270b 	ldmdbmi	r9, {r0, r1, r3, r8, r9, sl, sp}
    11e4:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
    11e8:	97184006 	ldrls	r4, [r8, -r6]
    11ec:	13011942 	movwne	r1, #6466	; 0x1942
    11f0:	05230000 	streq	r0, [r3, #-0]!
    11f4:	3a0e0300 	bcc	381dfc <_bsl_base_address+0x17fdfc>
    11f8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    11fc:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    1200:	1742b717 	smlaldne	fp, r2, r7, r7
    1204:	05240000 	streq	r0, [r4, #-0]!
    1208:	3a080300 	bcc	201e10 <_tlv_base_address+0xe10>
    120c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1210:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    1214:	25000018 	strcs	r0, [r0, #-24]	; 0xffffffe8
    1218:	08030005 	stmdaeq	r3, {r0, r2}
    121c:	0b3b0b3a 	bleq	ec3f0c <_bsl_base_address+0xcc1f0c>
    1220:	13490b39 	movtne	r0, #39737	; 0x9b39
    1224:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    1228:	26000017 			; <UNDEFINED> instruction: 0x26000017
    122c:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    1230:	0b3b0b3a 	bleq	ec3f20 <_bsl_base_address+0xcc1f20>
    1234:	13490b39 	movtne	r0, #39737	; 0x9b39
    1238:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    123c:	27000017 	smladcs	r0, r7, r0, r0
    1240:	08030034 	stmdaeq	r3, {r2, r4, r5}
    1244:	0b3b0b3a 	bleq	ec3f34 <_bsl_base_address+0xcc1f34>
    1248:	13490b39 	movtne	r0, #39737	; 0x9b39
    124c:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    1250:	00000017 	andeq	r0, r0, r7, lsl r0
    1254:	25011101 	strcs	r1, [r1, #-257]	; 0xfffffeff
    1258:	030b130e 	movweq	r1, #45838	; 0xb30e
    125c:	550e1b0e 	strpl	r1, [lr, #-2830]	; 0xfffff4f2
    1260:	10011117 	andne	r1, r1, r7, lsl r1
    1264:	02000017 	andeq	r0, r0, #23
    1268:	0b0b0024 	bleq	2c1300 <_bsl_base_address+0xbf300>
    126c:	0e030b3e 	vmoveq.16	d3[0], r0
    1270:	24030000 	strcs	r0, [r3], #-0
    1274:	3e0b0b00 	vmlacc.f64	d0, d11, d0
    1278:	0008030b 	andeq	r0, r8, fp, lsl #6
    127c:	00160400 	andseq	r0, r6, r0, lsl #8
    1280:	0b3a0e03 	bleq	e84a94 <_bsl_base_address+0xc82a94>
    1284:	0b39053b 	bleq	e42778 <_bsl_base_address+0xc40778>
    1288:	00001349 	andeq	r1, r0, r9, asr #6
    128c:	03001605 	movweq	r1, #1541	; 0x605
    1290:	3b0b3a0e 	blcc	2cfad0 <_bsl_base_address+0xcdad0>
    1294:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    1298:	06000013 			; <UNDEFINED> instruction: 0x06000013
    129c:	0b0b0117 	bleq	2c1700 <_bsl_base_address+0xbf700>
    12a0:	0b3b0b3a 	bleq	ec3f90 <_bsl_base_address+0xcc1f90>
    12a4:	13010b39 	movwne	r0, #6969	; 0x1b39
    12a8:	0d070000 	stceq	0, cr0, [r7, #-0]
    12ac:	3a0e0300 	bcc	381eb4 <_bsl_base_address+0x17feb4>
    12b0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    12b4:	0013490b 	andseq	r4, r3, fp, lsl #18
    12b8:	01010800 	tsteq	r1, r0, lsl #16
    12bc:	13011349 	movwne	r1, #4937	; 0x1349
    12c0:	21090000 	mrscs	r0, (UNDEF: 9)
    12c4:	2f134900 	svccs	0x00134900
    12c8:	0a00000b 	beq	12fc <_free_r+0x230>
    12cc:	0b0b0113 	bleq	2c1720 <_bsl_base_address+0xbf720>
    12d0:	0b3b0b3a 	bleq	ec3fc0 <_bsl_base_address+0xcc1fc0>
    12d4:	13010b39 	movwne	r0, #6969	; 0x1b39
    12d8:	0d0b0000 	stceq	0, cr0, [fp, #-0]
    12dc:	3a0e0300 	bcc	381ee4 <_bsl_base_address+0x17fee4>
    12e0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    12e4:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    12e8:	0c00000b 	stceq	0, cr0, [r0], {11}
    12ec:	0b0b000f 	bleq	2c1330 <_bsl_base_address+0xbf330>
    12f0:	130d0000 	movwne	r0, #53248	; 0xd000
    12f4:	0b0e0301 	bleq	381f00 <_bsl_base_address+0x17ff00>
    12f8:	3b0b3a0b 	blcc	2cfb2c <_bsl_base_address+0xcdb2c>
    12fc:	010b390b 	tsteq	fp, fp, lsl #18
    1300:	0e000013 	mcreq	0, 0, r0, cr0, cr3, {0}
    1304:	0803000d 	stmdaeq	r3, {r0, r2, r3}
    1308:	0b3b0b3a 	bleq	ec3ff8 <_bsl_base_address+0xcc1ff8>
    130c:	13490b39 	movtne	r0, #39737	; 0x9b39
    1310:	00000b38 	andeq	r0, r0, r8, lsr fp
    1314:	0b000f0f 	bleq	4f58 <__data_load__+0x3928>
    1318:	0013490b 	andseq	r4, r3, fp, lsl #18
    131c:	01131000 	tsteq	r3, r0
    1320:	050b0e03 	streq	r0, [fp, #-3587]	; 0xfffff1fd
    1324:	0b3b0b3a 	bleq	ec4014 <_bsl_base_address+0xcc2014>
    1328:	13010b39 	movwne	r0, #6969	; 0x1b39
    132c:	0d110000 	ldceq	0, cr0, [r1, #-0]
    1330:	3a0e0300 	bcc	381f38 <_bsl_base_address+0x17ff38>
    1334:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1338:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    133c:	12000005 	andne	r0, r0, #5
    1340:	19270015 	stmdbne	r7!, {r0, r2, r4}
    1344:	15130000 	ldrne	r0, [r3, #-0]
    1348:	49192701 	ldmdbmi	r9, {r0, r8, r9, sl, sp}
    134c:	00130113 	andseq	r0, r3, r3, lsl r1
    1350:	00051400 	andeq	r1, r5, r0, lsl #8
    1354:	00001349 	andeq	r1, r0, r9, asr #6
    1358:	49002615 	stmdbmi	r0, {r0, r2, r4, r9, sl, sp}
    135c:	16000013 			; <UNDEFINED> instruction: 0x16000013
    1360:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    1364:	0b3a050b 	bleq	e82798 <_bsl_base_address+0xc80798>
    1368:	0b39053b 	bleq	e4285c <_bsl_base_address+0xc4085c>
    136c:	00001301 	andeq	r1, r0, r1, lsl #6
    1370:	03000d17 	movweq	r0, #3351	; 0xd17
    1374:	3b0b3a0e 	blcc	2cfbb4 <_bsl_base_address+0xcdbb4>
    1378:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    137c:	000b3813 	andeq	r3, fp, r3, lsl r8
    1380:	000d1800 	andeq	r1, sp, r0, lsl #16
    1384:	0b3a0e03 	bleq	e84b98 <_bsl_base_address+0xc82b98>
    1388:	0b39053b 	bleq	e4287c <_bsl_base_address+0xc4087c>
    138c:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
    1390:	13190000 	tstne	r9, #0
    1394:	0b0e0301 	bleq	381fa0 <_bsl_base_address+0x17ffa0>
    1398:	3b0b3a0b 	blcc	2cfbcc <_bsl_base_address+0xcdbcc>
    139c:	010b3905 	tsteq	fp, r5, lsl #18
    13a0:	1a000013 	bne	13f4 <cleanup_glue+0x3c>
    13a4:	0b0b0113 	bleq	2c17f8 <_bsl_base_address+0xbf7f8>
    13a8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    13ac:	13010b39 	movwne	r0, #6969	; 0x1b39
    13b0:	171b0000 	ldrne	r0, [fp, -r0]
    13b4:	3a0b0b01 	bcc	2c3fc0 <_bsl_base_address+0xc1fc0>
    13b8:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    13bc:	0013010b 	andseq	r0, r3, fp, lsl #2
    13c0:	000d1c00 	andeq	r1, sp, r0, lsl #24
    13c4:	0b3a0e03 	bleq	e84bd8 <_bsl_base_address+0xc82bd8>
    13c8:	0b39053b 	bleq	e428bc <_bsl_base_address+0xc408bc>
    13cc:	00001349 	andeq	r1, r0, r9, asr #6
    13d0:	0300131d 	movweq	r1, #797	; 0x31d
    13d4:	00193c0e 	andseq	r3, r9, lr, lsl #24
    13d8:	01151e00 	tsteq	r5, r0, lsl #28
    13dc:	13011927 	movwne	r1, #6439	; 0x1927
    13e0:	341f0000 	ldrcc	r0, [pc], #-0	; 13e8 <cleanup_glue+0x30>
    13e4:	3a0e0300 	bcc	381fec <_bsl_base_address+0x17ffec>
    13e8:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    13ec:	3f13490b 	svccc	0x0013490b
    13f0:	00193c19 	andseq	r3, r9, r9, lsl ip
    13f4:	00342000 	eorseq	r2, r4, r0
    13f8:	0b3a0e03 	bleq	e84c0c <_bsl_base_address+0xc82c0c>
    13fc:	0b390b3b 	bleq	e440f0 <_bsl_base_address+0xc420f0>
    1400:	0b1c1349 	bleq	70612c <_bsl_base_address+0x50412c>
    1404:	34210000 	strtcc	r0, [r1], #-0
    1408:	3a0e0300 	bcc	382010 <_bsl_base_address+0x180010>
    140c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1410:	3f13490b 	svccc	0x0013490b
    1414:	00193c19 	andseq	r3, r9, r9, lsl ip
    1418:	012e2200 			; <UNDEFINED> instruction: 0x012e2200
    141c:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
    1420:	0b3b0b3a 	bleq	ec4110 <_bsl_base_address+0xcc2110>
    1424:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
    1428:	06120111 			; <UNDEFINED> instruction: 0x06120111
    142c:	42961840 	addsmi	r1, r6, #64, 16	; 0x400000
    1430:	00130119 	andseq	r0, r3, r9, lsl r1
    1434:	00052300 	andeq	r2, r5, r0, lsl #6
    1438:	0b3a0e03 	bleq	e84c4c <_bsl_base_address+0xc82c4c>
    143c:	0b390b3b 	bleq	e44130 <_bsl_base_address+0xc42130>
    1440:	17021349 	strne	r1, [r2, -r9, asr #6]
    1444:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
    1448:	00052400 	andeq	r2, r5, r0, lsl #8
    144c:	0b3a0803 	bleq	e83460 <_bsl_base_address+0xc81460>
    1450:	0b390b3b 	bleq	e44144 <_bsl_base_address+0xc42144>
    1454:	17021349 	strne	r1, [r2, -r9, asr #6]
    1458:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
    145c:	00342500 	eorseq	r2, r4, r0, lsl #10
    1460:	0b3a0803 	bleq	e83474 <_bsl_base_address+0xc81474>
    1464:	0b390b3b 	bleq	e44158 <_bsl_base_address+0xc42158>
    1468:	17021349 	strne	r1, [r2, -r9, asr #6]
    146c:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
    1470:	00342600 	eorseq	r2, r4, r0, lsl #12
    1474:	0b3a0e03 	bleq	e84c88 <_bsl_base_address+0xc82c88>
    1478:	0b390b3b 	bleq	e4416c <_bsl_base_address+0xc4216c>
    147c:	17021349 	strne	r1, [r2, -r9, asr #6]
    1480:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
    1484:	000a2700 	andeq	r2, sl, r0, lsl #14
    1488:	0b3a0e03 	bleq	e84c9c <_bsl_base_address+0xc82c9c>
    148c:	0b390b3b 	bleq	e44180 <_bsl_base_address+0xc42180>
    1490:	0b280000 	bleq	a01498 <_bsl_base_address+0x7ff498>
    1494:	00175501 	andseq	r5, r7, r1, lsl #10
    1498:	82892900 	addhi	r2, r9, #0, 18
    149c:	01110101 	tsteq	r1, r1, lsl #2
    14a0:	8a2a0000 	bhi	a814a8 <_bsl_base_address+0x87f4a8>
    14a4:	02000182 	andeq	r0, r0, #-2147483616	; 0x80000020
    14a8:	18429118 	stmdane	r2, {r3, r4, r8, ip, pc}^
    14ac:	2e2b0000 	cdpcs	0, 2, cr0, cr11, cr0, {0}
    14b0:	3a0e0301 	bcc	3820bc <_bsl_base_address+0x1800bc>
    14b4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    14b8:	1119270b 	tstne	r9, fp, lsl #14
    14bc:	40061201 	andmi	r1, r6, r1, lsl #4
    14c0:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    14c4:	00001301 	andeq	r1, r0, r1, lsl #6
    14c8:	3f002e2c 	svccc	0x00002e2c
    14cc:	3a0e0319 	bcc	382138 <_bsl_base_address+0x180138>
    14d0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    14d4:	3c19270b 	ldccc	7, cr2, [r9], {11}
    14d8:	2d000019 	stccs	0, cr0, [r0, #-100]	; 0xffffff9c
    14dc:	00018289 	andeq	r8, r1, r9, lsl #5
    14e0:	13310111 	teqne	r1, #1073741828	; 0x40000004
    14e4:	2e2e0000 	cdpcs	0, 2, cr0, cr14, cr0, {0}
    14e8:	3c193f00 	ldccc	15, cr3, [r9], {-0}
    14ec:	030e6e19 	movweq	r6, #60953	; 0xee19
    14f0:	3b0b3a0e 	blcc	2cfd30 <_bsl_base_address+0xcdd30>
    14f4:	000b390b 	andeq	r3, fp, fp, lsl #18
    14f8:	11010000 	mrsne	r0, (UNDEF: 1)
    14fc:	130e2501 	movwne	r2, #58625	; 0xe501
    1500:	1b0e030b 	blne	382134 <_bsl_base_address+0x180134>
    1504:	1201110e 	andne	r1, r1, #-2147483645	; 0x80000003
    1508:	00171006 	andseq	r1, r7, r6
    150c:	00240200 	eoreq	r0, r4, r0, lsl #4
    1510:	0b3e0b0b 	bleq	f84144 <_bsl_base_address+0xd82144>
    1514:	00000803 	andeq	r0, r0, r3, lsl #16
    1518:	03001603 	movweq	r1, #1539	; 0x603
    151c:	3b0b3a0e 	blcc	2cfd5c <_bsl_base_address+0xcdd5c>
    1520:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    1524:	04000013 	streq	r0, [r0], #-19	; 0xffffffed
    1528:	0b0b0024 	bleq	2c15c0 <_bsl_base_address+0xbf5c0>
    152c:	0e030b3e 	vmoveq.16	d3[0], r0
    1530:	0f050000 	svceq	0x00050000
    1534:	000b0b00 	andeq	r0, fp, r0, lsl #22
    1538:	00160600 	andseq	r0, r6, r0, lsl #12
    153c:	0b3a0e03 	bleq	e84d50 <_bsl_base_address+0xc82d50>
    1540:	0b39053b 	bleq	e42a34 <_bsl_base_address+0xc40a34>
    1544:	00001349 	andeq	r1, r0, r9, asr #6
    1548:	0b011707 	bleq	4716c <__data_load__+0x45b3c>
    154c:	3b0b3a0b 	blcc	2cfd80 <_bsl_base_address+0xcdd80>
    1550:	010b390b 	tsteq	fp, fp, lsl #18
    1554:	08000013 	stmdaeq	r0, {r0, r1, r4}
    1558:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    155c:	0b3b0b3a 	bleq	ec424c <_bsl_base_address+0xcc224c>
    1560:	13490b39 	movtne	r0, #39737	; 0x9b39
    1564:	01090000 	mrseq	r0, (UNDEF: 9)
    1568:	01134901 	tsteq	r3, r1, lsl #18
    156c:	0a000013 	beq	15c0 <__do_global_dtors_aux_fini_array_entry+0xc>
    1570:	13490021 	movtne	r0, #36897	; 0x9021
    1574:	00000b2f 	andeq	r0, r0, pc, lsr #22
    1578:	0b01130b 	bleq	461ac <__data_load__+0x44b7c>
    157c:	3b0b3a0b 	blcc	2cfdb0 <_bsl_base_address+0xcddb0>
    1580:	010b390b 	tsteq	fp, fp, lsl #18
    1584:	0c000013 	stceq	0, cr0, [r0], {19}
    1588:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    158c:	0b3b0b3a 	bleq	ec427c <_bsl_base_address+0xcc227c>
    1590:	13490b39 	movtne	r0, #39737	; 0x9b39
    1594:	00000b38 	andeq	r0, r0, r8, lsr fp
    1598:	0301130d 	movweq	r1, #4877	; 0x130d
    159c:	3a0b0b0e 	bcc	2c41dc <_bsl_base_address+0xc21dc>
    15a0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    15a4:	0013010b 	andseq	r0, r3, fp, lsl #2
    15a8:	000d0e00 	andeq	r0, sp, r0, lsl #28
    15ac:	0b3a0803 	bleq	e835c0 <_bsl_base_address+0xc815c0>
    15b0:	0b390b3b 	bleq	e442a4 <_bsl_base_address+0xc422a4>
    15b4:	0b381349 	bleq	e062e0 <_bsl_base_address+0xc042e0>
    15b8:	0f0f0000 	svceq	0x000f0000
    15bc:	490b0b00 	stmdbmi	fp, {r8, r9, fp}
    15c0:	10000013 	andne	r0, r0, r3, lsl r0
    15c4:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    15c8:	0b3a050b 	bleq	e829fc <_bsl_base_address+0xc809fc>
    15cc:	0b390b3b 	bleq	e442c0 <_bsl_base_address+0xc422c0>
    15d0:	00001301 	andeq	r1, r0, r1, lsl #6
    15d4:	03000d11 	movweq	r0, #3345	; 0xd11
    15d8:	3b0b3a0e 	blcc	2cfe18 <_bsl_base_address+0xcde18>
    15dc:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    15e0:	00053813 	andeq	r3, r5, r3, lsl r8
    15e4:	00151200 	andseq	r1, r5, r0, lsl #4
    15e8:	00001927 	andeq	r1, r0, r7, lsr #18
    15ec:	27011513 	smladcs	r1, r3, r5, r1
    15f0:	01134919 	tsteq	r3, r9, lsl r9
    15f4:	14000013 	strne	r0, [r0], #-19	; 0xffffffed
    15f8:	13490005 	movtne	r0, #36869	; 0x9005
    15fc:	13150000 	tstne	r5, #0
    1600:	0b0e0301 	bleq	38220c <_bsl_base_address+0x18020c>
    1604:	3b0b3a05 	blcc	2cfe20 <_bsl_base_address+0xcde20>
    1608:	010b3905 	tsteq	fp, r5, lsl #18
    160c:	16000013 			; <UNDEFINED> instruction: 0x16000013
    1610:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    1614:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1618:	13490b39 	movtne	r0, #39737	; 0x9b39
    161c:	00000b38 	andeq	r0, r0, r8, lsr fp
    1620:	03000d17 	movweq	r0, #3351	; 0xd17
    1624:	3b0b3a0e 	blcc	2cfe64 <_bsl_base_address+0xcde64>
    1628:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    162c:	00053813 	andeq	r3, r5, r3, lsl r8
    1630:	00261800 	eoreq	r1, r6, r0, lsl #16
    1634:	00001349 	andeq	r1, r0, r9, asr #6
    1638:	03011319 	movweq	r1, #4889	; 0x1319
    163c:	3a0b0b0e 	bcc	2c427c <_bsl_base_address+0xc227c>
    1640:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1644:	0013010b 	andseq	r0, r3, fp, lsl #2
    1648:	01131a00 	tsteq	r3, r0, lsl #20
    164c:	0b3a0b0b 	bleq	e84280 <_bsl_base_address+0xc82280>
    1650:	0b39053b 	bleq	e42b44 <_bsl_base_address+0xc40b44>
    1654:	00001301 	andeq	r1, r0, r1, lsl #6
    1658:	0b01171b 	bleq	472cc <__data_load__+0x45c9c>
    165c:	3b0b3a0b 	blcc	2cfe90 <_bsl_base_address+0xcde90>
    1660:	010b3905 	tsteq	fp, r5, lsl #18
    1664:	1c000013 	stcne	0, cr0, [r0], {19}
    1668:	0e03000d 	cdpeq	0, 0, cr0, cr3, cr13, {0}
    166c:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1670:	13490b39 	movtne	r0, #39737	; 0x9b39
    1674:	131d0000 	tstne	sp, #0
    1678:	3c0e0300 	stccc	3, cr0, [lr], {-0}
    167c:	1e000019 	mcrne	0, 0, r0, cr0, cr9, {0}
    1680:	19270115 	stmdbne	r7!, {r0, r2, r4, r8}
    1684:	00001301 	andeq	r1, r0, r1, lsl #6
    1688:	03000d1f 	movweq	r0, #3359	; 0xd1f
    168c:	3b0b3a08 	blcc	2cfeb4 <_bsl_base_address+0xcdeb4>
    1690:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    1694:	000b3813 	andeq	r3, fp, r3, lsl r8
    1698:	00212000 	eoreq	r2, r1, r0
    169c:	052f1349 	streq	r1, [pc, #-841]!	; 135b <_free_r+0x28f>
    16a0:	34210000 	strtcc	r0, [r1], #-0
    16a4:	3a0e0300 	bcc	3822ac <_bsl_base_address+0x1802ac>
    16a8:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    16ac:	3f13490b 	svccc	0x0013490b
    16b0:	00193c19 	andseq	r3, r9, r9, lsl ip
    16b4:	012e2200 			; <UNDEFINED> instruction: 0x012e2200
    16b8:	0e03193f 			; <UNDEFINED> instruction: 0x0e03193f
    16bc:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    16c0:	19270b39 	stmdbne	r7!, {r0, r3, r4, r5, r8, r9, fp}
    16c4:	01111349 	tsteq	r1, r9, asr #6
    16c8:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    16cc:	01194297 			; <UNDEFINED> instruction: 0x01194297
    16d0:	23000013 	movwcs	r0, #19
    16d4:	0e030005 	cdpeq	0, 0, cr0, cr3, cr5, {0}
    16d8:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    16dc:	13490b39 	movtne	r0, #39737	; 0x9b39
    16e0:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    16e4:	24000017 	strcs	r0, [r0], #-23	; 0xffffffe9
    16e8:	08030005 	stmdaeq	r3, {r0, r2}
    16ec:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    16f0:	13490b39 	movtne	r0, #39737	; 0x9b39
    16f4:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    16f8:	25000017 	strcs	r0, [r0, #-23]	; 0xffffffe9
    16fc:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    1700:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1704:	13490b39 	movtne	r0, #39737	; 0x9b39
    1708:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    170c:	26000017 			; <UNDEFINED> instruction: 0x26000017
    1710:	0e030034 	mcreq	0, 0, r0, cr3, cr4, {1}
    1714:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    1718:	13490b39 	movtne	r0, #39737	; 0x9b39
    171c:	0000051c 	andeq	r0, r0, ip, lsl r5
    1720:	01828927 	orreq	r8, r2, r7, lsr #18
    1724:	31011101 	tstcc	r1, r1, lsl #2
    1728:	00130113 	andseq	r0, r3, r3, lsl r1
    172c:	828a2800 	addhi	r2, sl, #0, 16
    1730:	18020001 	stmdane	r2, {r0}
    1734:	00184291 	mulseq	r8, r1, r2
    1738:	82892900 	addhi	r2, r9, #0, 18
    173c:	01110101 	tsteq	r1, r1, lsl #2
    1740:	00001331 	andeq	r1, r0, r1, lsr r3
    1744:	3f012e2a 	svccc	0x00012e2a
    1748:	3a0e0319 	bcc	3823b4 <_bsl_base_address+0x1803b4>
    174c:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1750:	1119270b 	tstne	r9, fp, lsl #14
    1754:	40061201 	andmi	r1, r6, r1, lsl #4
    1758:	19429718 	stmdbne	r2, {r3, r4, r8, r9, sl, ip, pc}^
    175c:	00001301 	andeq	r1, r0, r1, lsl #6
    1760:	0300342b 	movweq	r3, #1067	; 0x42b
    1764:	3b0b3a08 	blcc	2cff8c <_bsl_base_address+0xcdf8c>
    1768:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    176c:	b7170213 			; <UNDEFINED> instruction: 0xb7170213
    1770:	00001742 	andeq	r1, r0, r2, asr #14
    1774:	3f002e2c 	svccc	0x00002e2c
    1778:	6e193c19 	mrcvs	12, 0, r3, cr9, cr9, {0}
    177c:	3a0e030e 	bcc	3823bc <_bsl_base_address+0x1803bc>
    1780:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    1784:	2d00000b 	stccs	0, cr0, [r0, #-44]	; 0xffffffd4
    1788:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
    178c:	0e6e193c 			; <UNDEFINED> instruction: 0x0e6e193c
    1790:	0b3a0e03 	bleq	e84fa4 <_bsl_base_address+0xc82fa4>
    1794:	0b390b3b 	bleq	e44488 <_bsl_base_address+0xc42488>
    1798:	01000000 	mrseq	r0, (UNDEF: 0)
    179c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
    17a0:	0e030b13 	vmoveq.32	d3[0], r0
    17a4:	01110e1b 	tsteq	r1, fp, lsl lr
    17a8:	17100612 			; <UNDEFINED> instruction: 0x17100612
    17ac:	24020000 	strcs	r0, [r2], #-0
    17b0:	3e0b0b00 	vmlacc.f64	d0, d11, d0
    17b4:	000e030b 	andeq	r0, lr, fp, lsl #6
    17b8:	00240300 	eoreq	r0, r4, r0, lsl #6
    17bc:	0b3e0b0b 	bleq	f843f0 <_bsl_base_address+0xd823f0>
    17c0:	00000803 	andeq	r0, r0, r3, lsl #16
    17c4:	03001604 	movweq	r1, #1540	; 0x604
    17c8:	3b0b3a0e 	blcc	2d0008 <_bsl_base_address+0xce008>
    17cc:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    17d0:	05000013 	streq	r0, [r0, #-19]	; 0xffffffed
    17d4:	0e030016 	mcreq	0, 0, r0, cr3, cr6, {0}
    17d8:	0b3b0b3a 	bleq	ec44c8 <_bsl_base_address+0xcc24c8>
    17dc:	13490b39 	movtne	r0, #39737	; 0x9b39
    17e0:	17060000 	strne	r0, [r6, -r0]
    17e4:	3a0b0b01 	bcc	2c43f0 <_bsl_base_address+0xc23f0>
    17e8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    17ec:	0013010b 	andseq	r0, r3, fp, lsl #2
    17f0:	000d0700 	andeq	r0, sp, r0, lsl #14
    17f4:	0b3a0e03 	bleq	e85008 <_bsl_base_address+0xc83008>
    17f8:	0b390b3b 	bleq	e444ec <_bsl_base_address+0xc424ec>
    17fc:	00001349 	andeq	r1, r0, r9, asr #6
    1800:	49010108 	stmdbmi	r1, {r3, r8}
    1804:	00130113 	andseq	r0, r3, r3, lsl r1
    1808:	00210900 	eoreq	r0, r1, r0, lsl #18
    180c:	0b2f1349 	bleq	bc6538 <_bsl_base_address+0x9c4538>
    1810:	130a0000 	movwne	r0, #40960	; 0xa000
    1814:	3a0b0b01 	bcc	2c4420 <_bsl_base_address+0xc2420>
    1818:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    181c:	0013010b 	andseq	r0, r3, fp, lsl #2
    1820:	000d0b00 	andeq	r0, sp, r0, lsl #22
    1824:	0b3a0e03 	bleq	e85038 <_bsl_base_address+0xc83038>
    1828:	0b390b3b 	bleq	e4451c <_bsl_base_address+0xc4251c>
    182c:	0b381349 	bleq	e06558 <_bsl_base_address+0xc04558>
    1830:	0f0c0000 	svceq	0x000c0000
    1834:	000b0b00 	andeq	r0, fp, r0, lsl #22
    1838:	01130d00 	tsteq	r3, r0, lsl #26
    183c:	0b0b0e03 	bleq	2c5050 <_bsl_base_address+0xc3050>
    1840:	0b3b0b3a 	bleq	ec4530 <_bsl_base_address+0xcc2530>
    1844:	13010b39 	movwne	r0, #6969	; 0x1b39
    1848:	0d0e0000 	stceq	0, cr0, [lr, #-0]
    184c:	3a080300 	bcc	202454 <_bsl_base_address+0x454>
    1850:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1854:	3813490b 	ldmdacc	r3, {r0, r1, r3, r8, fp, lr}
    1858:	0f00000b 	svceq	0x0000000b
    185c:	0b0b000f 	bleq	2c18a0 <_bsl_base_address+0xbf8a0>
    1860:	00001349 	andeq	r1, r0, r9, asr #6
    1864:	03011310 	movweq	r1, #4880	; 0x1310
    1868:	3a050b0e 	bcc	1444a8 <__data_load__+0x142e78>
    186c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1870:	0013010b 	andseq	r0, r3, fp, lsl #2
    1874:	000d1100 	andeq	r1, sp, r0, lsl #2
    1878:	0b3a0e03 	bleq	e8508c <_bsl_base_address+0xc8308c>
    187c:	0b390b3b 	bleq	e44570 <_bsl_base_address+0xc42570>
    1880:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
    1884:	15120000 	ldrne	r0, [r2, #-0]
    1888:	00192700 	andseq	r2, r9, r0, lsl #14
    188c:	01151300 	tsteq	r5, r0, lsl #6
    1890:	13491927 	movtne	r1, #39207	; 0x9927
    1894:	00001301 	andeq	r1, r0, r1, lsl #6
    1898:	49000514 	stmdbmi	r0, {r2, r4, r8, sl}
    189c:	15000013 	strne	r0, [r0, #-19]	; 0xffffffed
    18a0:	0e030113 	mcreq	1, 0, r0, cr3, cr3, {0}
    18a4:	0b3a050b 	bleq	e82cd8 <_bsl_base_address+0xc80cd8>
    18a8:	0b39053b 	bleq	e42d9c <_bsl_base_address+0xc40d9c>
    18ac:	00001301 	andeq	r1, r0, r1, lsl #6
    18b0:	03000d16 	movweq	r0, #3350	; 0xd16
    18b4:	3b0b3a0e 	blcc	2d00f4 <_bsl_base_address+0xce0f4>
    18b8:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    18bc:	000b3813 	andeq	r3, fp, r3, lsl r8
    18c0:	000d1700 	andeq	r1, sp, r0, lsl #14
    18c4:	0b3a0e03 	bleq	e850d8 <_bsl_base_address+0xc830d8>
    18c8:	0b39053b 	bleq	e42dbc <_bsl_base_address+0xc40dbc>
    18cc:	05381349 	ldreq	r1, [r8, #-841]!	; 0xfffffcb7
    18d0:	26180000 	ldrcs	r0, [r8], -r0
    18d4:	00134900 	andseq	r4, r3, r0, lsl #18
    18d8:	01131900 	tsteq	r3, r0, lsl #18
    18dc:	0b0b0e03 	bleq	2c50f0 <_bsl_base_address+0xc30f0>
    18e0:	053b0b3a 	ldreq	r0, [fp, #-2874]!	; 0xfffff4c6
    18e4:	13010b39 	movwne	r0, #6969	; 0x1b39
    18e8:	131a0000 	tstne	sl, #0
    18ec:	3a0b0b01 	bcc	2c44f8 <_bsl_base_address+0xc24f8>
    18f0:	39053b0b 	stmdbcc	r5, {r0, r1, r3, r8, r9, fp, ip, sp}
    18f4:	0013010b 	andseq	r0, r3, fp, lsl #2
    18f8:	01171b00 	tsteq	r7, r0, lsl #22
    18fc:	0b3a0b0b 	bleq	e84530 <_bsl_base_address+0xc82530>
    1900:	0b39053b 	bleq	e42df4 <_bsl_base_address+0xc40df4>
    1904:	00001301 	andeq	r1, r0, r1, lsl #6
    1908:	03000d1c 	movweq	r0, #3356	; 0xd1c
    190c:	3b0b3a0e 	blcc	2d014c <_bsl_base_address+0xce14c>
    1910:	490b3905 	stmdbmi	fp, {r0, r2, r8, fp, ip, sp}
    1914:	1d000013 	stcne	0, cr0, [r0, #-76]	; 0xffffffb4
    1918:	0e030013 	mcreq	0, 0, r0, cr3, cr3, {0}
    191c:	0000193c 	andeq	r1, r0, ip, lsr r9
    1920:	2701151e 	smladcs	r1, lr, r5, r1
    1924:	00130119 	andseq	r0, r3, r9, lsl r1
    1928:	00341f00 	eorseq	r1, r4, r0, lsl #30
    192c:	0b3a0e03 	bleq	e85140 <_bsl_base_address+0xc83140>
    1930:	0b39053b 	bleq	e42e24 <_bsl_base_address+0xc40e24>
    1934:	193f1349 	ldmdbne	pc!, {r0, r3, r6, r8, r9, ip}	; <UNPREDICTABLE>
    1938:	0000193c 	andeq	r1, r0, ip, lsr r9
    193c:	03003420 	movweq	r3, #1056	; 0x420
    1940:	3b0b3a0e 	blcc	2d0180 <_bsl_base_address+0xce180>
    1944:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    1948:	02193f13 	andseq	r3, r9, #19, 30	; 0x4c
    194c:	21000018 	tstcs	r0, r8, lsl r0
    1950:	193f012e 	ldmdbne	pc!, {r1, r2, r3, r5, r8}	; <UNPREDICTABLE>
    1954:	0b3a0e03 	bleq	e85168 <_bsl_base_address+0xc83168>
    1958:	0b39053b 	bleq	e42e4c <_bsl_base_address+0xc40e4c>
    195c:	01111927 	tsteq	r1, r7, lsr #18
    1960:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    1964:	01194297 			; <UNDEFINED> instruction: 0x01194297
    1968:	22000013 	andcs	r0, r0, #19
    196c:	08030005 	stmdaeq	r3, {r0, r2}
    1970:	0b3b0b3a 	bleq	ec4660 <_bsl_base_address+0xcc2660>
    1974:	13490b39 	movtne	r0, #39737	; 0x9b39
    1978:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    197c:	23000017 	movwcs	r0, #23
    1980:	0111010b 	tsteq	r1, fp, lsl #2
    1984:	13010612 	movwne	r0, #5650	; 0x1612
    1988:	34240000 	strtcc	r0, [r4], #-0
    198c:	3a080300 	bcc	202594 <_bsl_base_address+0x594>
    1990:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1994:	0013490b 	andseq	r4, r3, fp, lsl #18
    1998:	00342500 	eorseq	r2, r4, r0, lsl #10
    199c:	0b3a0e03 	bleq	e851b0 <_bsl_base_address+0xc831b0>
    19a0:	0b390b3b 	bleq	e44694 <_bsl_base_address+0xc42694>
    19a4:	17021349 	strne	r1, [r2, -r9, asr #6]
    19a8:	001742b7 			; <UNDEFINED> instruction: 0x001742b7
    19ac:	82892600 	addhi	r2, r9, #0, 12
    19b0:	01110101 	tsteq	r1, r1, lsl #2
    19b4:	00001331 	andeq	r1, r0, r1, lsr r3
    19b8:	01828a27 	orreq	r8, r2, r7, lsr #20
    19bc:	91180200 	tstls	r8, r0, lsl #4
    19c0:	00001842 	andeq	r1, r0, r2, asr #16
    19c4:	03003428 	movweq	r3, #1064	; 0x428
    19c8:	3b0b3a08 	blcc	2d01f0 <_bsl_base_address+0xce1f0>
    19cc:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    19d0:	b7170213 			; <UNDEFINED> instruction: 0xb7170213
    19d4:	00001742 	andeq	r1, r0, r2, asr #14
    19d8:	31011d29 	tstcc	r1, r9, lsr #26
    19dc:	b8015213 	stmdalt	r1, {r0, r1, r4, r9, ip, lr}
    19e0:	01110b42 	tsteq	r1, r2, asr #22
    19e4:	0b580612 	bleq	1603234 <_bsl_base_address+0x1401234>
    19e8:	0b570b59 	bleq	15c4754 <_bsl_base_address+0x13c2754>
    19ec:	00001301 	andeq	r1, r0, r1, lsl #6
    19f0:	3100052a 	tstcc	r0, sl, lsr #10
    19f4:	b7170213 			; <UNDEFINED> instruction: 0xb7170213
    19f8:	00001742 	andeq	r1, r0, r2, asr #14
    19fc:	0182892b 	orreq	r8, r2, fp, lsr #18
    1a00:	31011101 	tstcc	r1, r1, lsl #2
    1a04:	00130113 	andseq	r0, r3, r3, lsl r1
    1a08:	82892c00 	addhi	r2, r9, #0, 24
    1a0c:	01110101 	tsteq	r1, r1, lsl #2
    1a10:	2e2d0000 	cdpcs	0, 2, cr0, cr13, cr0, {0}
    1a14:	03193f01 	tsteq	r9, #1, 30
    1a18:	3b0b3a0e 	blcc	2d0258 <_bsl_base_address+0xce258>
    1a1c:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
    1a20:	010b2019 	tsteq	fp, r9, lsl r0
    1a24:	2e000013 	mcrcs	0, 0, r0, cr0, cr3, {0}
    1a28:	08030005 	stmdaeq	r3, {r0, r2}
    1a2c:	0b3b0b3a 	bleq	ec471c <_bsl_base_address+0xcc271c>
    1a30:	13490b39 	movtne	r0, #39737	; 0x9b39
    1a34:	052f0000 	streq	r0, [pc, #-0]!	; 1a3c <__data_load__+0x40c>
    1a38:	3a0e0300 	bcc	382640 <_bsl_base_address+0x180640>
    1a3c:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1a40:	0013490b 	andseq	r4, r3, fp, lsl #18
    1a44:	012e3000 			; <UNDEFINED> instruction: 0x012e3000
    1a48:	01111331 	tsteq	r1, r1, lsr r3
    1a4c:	18400612 	stmdane	r0, {r1, r4, r9, sl}^
    1a50:	01194297 			; <UNDEFINED> instruction: 0x01194297
    1a54:	31000013 	tstcc	r0, r3, lsl r0
    1a58:	193f002e 	ldmdbne	pc!, {r1, r2, r3, r5}	; <UNPREDICTABLE>
    1a5c:	0e6e193c 			; <UNDEFINED> instruction: 0x0e6e193c
    1a60:	0b3a0e03 	bleq	e85274 <_bsl_base_address+0xc83274>
    1a64:	0b39053b 	bleq	e42f58 <_bsl_base_address+0xc40f58>
    1a68:	01000000 	mrseq	r0, (UNDEF: 0)
    1a6c:	0e250111 	mcreq	1, 1, r0, cr5, cr1, {0}
    1a70:	0e030b13 	vmoveq.32	d3[0], r0
    1a74:	01110e1b 	tsteq	r1, fp, lsl lr
    1a78:	17100612 			; <UNDEFINED> instruction: 0x17100612
    1a7c:	2e020000 	cdpcs	0, 0, cr0, cr2, cr0, {0}
    1a80:	03193f01 	tsteq	r9, #1, 30
    1a84:	3b0b3a0e 	blcc	2d02c4 <_bsl_base_address+0xce2c4>
    1a88:	490b390b 	stmdbmi	fp, {r0, r1, r3, r8, fp, ip, sp}
    1a8c:	12011113 	andne	r1, r1, #-1073741820	; 0xc0000004
    1a90:	97184006 	ldrls	r4, [r8, -r6]
    1a94:	13011942 	movwne	r1, #6466	; 0x1942
    1a98:	05030000 	streq	r0, [r3, #-0]
    1a9c:	3a0e0300 	bcc	3826a4 <_bsl_base_address+0x1806a4>
    1aa0:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1aa4:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    1aa8:	1742b717 	smlaldne	fp, r2, r7, r7
    1aac:	34040000 	strcc	r0, [r4], #-0
    1ab0:	3a080300 	bcc	2026b8 <_bsl_base_address+0x6b8>
    1ab4:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1ab8:	3f13490b 	svccc	0x0013490b
    1abc:	00193c19 	andseq	r3, r9, r9, lsl ip
    1ac0:	00340500 	eorseq	r0, r4, r0, lsl #10
    1ac4:	0b3a0e03 	bleq	e852d8 <_bsl_base_address+0xc832d8>
    1ac8:	0b390b3b 	bleq	e447bc <_bsl_base_address+0xc427bc>
    1acc:	18021349 	stmdane	r2, {r0, r3, r6, r8, r9, ip}
    1ad0:	34060000 	strcc	r0, [r6], #-0
    1ad4:	3a0e0300 	bcc	3826dc <_bsl_base_address+0x1806dc>
    1ad8:	390b3b0b 	stmdbcc	fp, {r0, r1, r3, r8, r9, fp, ip, sp}
    1adc:	0213490b 	andseq	r4, r3, #180224	; 0x2c000
    1ae0:	1742b717 	smlaldne	fp, r2, r7, r7
    1ae4:	0f070000 	svceq	0x00070000
    1ae8:	000b0b00 	andeq	r0, fp, r0, lsl #22
    1aec:	00240800 	eoreq	r0, r4, r0, lsl #16
    1af0:	0b3e0b0b 	bleq	f84724 <_bsl_base_address+0xd82724>
    1af4:	00000803 	andeq	r0, r0, r3, lsl #16
    1af8:	0b002409 	bleq	ab24 <__data_load__+0x94f4>
    1afc:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1b00:	0a00000e 	beq	1b40 <__data_load__+0x510>
    1b04:	0b0b000f 	bleq	2c1b48 <_bsl_base_address+0xbfb48>
    1b08:	00001349 	andeq	r1, r0, r9, asr #6
    1b0c:	01110100 	tsteq	r1, r0, lsl #2
    1b10:	0b130e25 	bleq	4c53ac <_bsl_base_address+0x2c33ac>
    1b14:	0e1b0e03 	cdpeq	14, 1, cr0, cr11, cr3, {0}
    1b18:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1b1c:	00001710 	andeq	r1, r0, r0, lsl r7
    1b20:	0b002402 	bleq	ab30 <__data_load__+0x9500>
    1b24:	030b3e0b 	movweq	r3, #48651	; 0xbe0b
    1b28:	0300000e 	movweq	r0, #14
    1b2c:	0b0b0024 	bleq	2c1bc4 <_bsl_base_address+0xbfbc4>
    1b30:	08030b3e 	stmdaeq	r3, {r1, r2, r3, r4, r5, r8, r9, fp}
    1b34:	2e040000 	cdpcs	0, 0, cr0, cr4, cr0, {0}
    1b38:	03193f01 	tsteq	r9, #1, 30
    1b3c:	3b0b3a0e 	blcc	2d037c <_bsl_base_address+0xce37c>
    1b40:	270b390b 	strcs	r3, [fp, -fp, lsl #18]
    1b44:	19018719 	stmdbne	r1, {r0, r3, r4, r8, r9, sl, pc}
    1b48:	06120111 			; <UNDEFINED> instruction: 0x06120111
    1b4c:	42971840 	addsmi	r1, r7, #64, 16	; 0x400000
    1b50:	05000019 	streq	r0, [r0, #-25]	; 0xffffffe7
    1b54:	08030005 	stmdaeq	r3, {r0, r2}
    1b58:	0b3b0b3a 	bleq	ec4848 <_bsl_base_address+0xcc2848>
    1b5c:	13490b39 	movtne	r0, #39737	; 0x9b39
    1b60:	42b71702 	adcsmi	r1, r7, #524288	; 0x80000
    1b64:	06000017 			; <UNDEFINED> instruction: 0x06000017
    1b68:	08030034 	stmdaeq	r3, {r2, r4, r5}
    1b6c:	0b3b0b3a 	bleq	ec485c <_bsl_base_address+0xcc285c>
    1b70:	13490b39 	movtne	r0, #39737	; 0x9b39
    1b74:	Address 0x0000000000001b74 is out of bounds.


Disassembly of section .debug_aranges:

00000000 <.debug_aranges>:
   0:	0000001c 	andeq	r0, r0, ip, lsl r0
   4:	00000002 	andeq	r0, r0, r2
   8:	00040000 	andeq	r0, r4, r0
   c:	00000000 	andeq	r0, r0, r0
  10:	000000dc 	ldrdeq	r0, [r0], -ip
  14:	00000128 	andeq	r0, r0, r8, lsr #2
	...
  20:	0000001c 	andeq	r0, r0, ip, lsl r0
  24:	00260002 	eoreq	r0, r6, r2
  28:	00040000 	andeq	r0, r4, r0
  2c:	00000000 	andeq	r0, r0, r0
  30:	00000370 	andeq	r0, r0, r0, ror r3
  34:	00000020 	andeq	r0, r0, r0, lsr #32
	...
  40:	0000001c 	andeq	r0, r0, ip, lsl r0
  44:	01260002 			; <UNDEFINED> instruction: 0x01260002
  48:	00040000 	andeq	r0, r4, r0
  4c:	00000000 	andeq	r0, r0, r0
  50:	00000390 	muleq	r0, r0, r3
  54:	00000034 	andeq	r0, r0, r4, lsr r0
	...
  60:	0000001c 	andeq	r0, r0, ip, lsl r0
  64:	0a8f0002 	beq	fe3c0074 <__stack+0xde3bf79c>
  68:	00040000 	andeq	r0, r4, r0
  6c:	00000000 	andeq	r0, r0, r0
  70:	000003c4 	andeq	r0, r0, r4, asr #7
  74:	00000044 	andeq	r0, r0, r4, asr #32
	...
  80:	00000014 	andeq	r0, r0, r4, lsl r0
  84:	0b910002 	bleq	fe440094 <__stack+0xde43f7bc>
  88:	00040000 	andeq	r0, r4, r0
	...
  98:	0000001c 	andeq	r0, r0, ip, lsl r0
  9c:	14bb0002 	ldrtne	r0, [fp], #2
  a0:	00040000 	andeq	r0, r4, r0
  a4:	00000000 	andeq	r0, r0, r0
  a8:	00000408 	andeq	r0, r0, r8, lsl #8
  ac:	00000088 	andeq	r0, r0, r8, lsl #1
	...
  b8:	0000001c 	andeq	r0, r0, ip, lsl r0
  bc:	15d50002 	ldrbne	r0, [r5, #2]
  c0:	00040000 	andeq	r0, r4, r0
  c4:	00000000 	andeq	r0, r0, r0
  c8:	00000490 	muleq	r0, r0, r4
  cc:	00000040 	andeq	r0, r0, r0, asr #32
	...
  d8:	0000001c 	andeq	r0, r0, ip, lsl r0
  dc:	1f6d0002 	svcne	0x006d0002
  e0:	00040000 	andeq	r0, r4, r0
  e4:	00000000 	andeq	r0, r0, r0
  e8:	000004d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
  ec:	000007f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
	...
  f8:	0000001c 	andeq	r0, r0, ip, lsl r0
  fc:	2e140002 	cdpcs	0, 1, cr0, cr4, cr2, {0}
 100:	00040000 	andeq	r0, r4, r0
 104:	00000000 	andeq	r0, r0, r0
 108:	00000cc0 	andeq	r0, r0, r0, asr #25
 10c:	0000011c 	andeq	r0, r0, ip, lsl r1
	...
 118:	0000001c 	andeq	r0, r0, ip, lsl r0
 11c:	2f510002 	svccs	0x00510002
 120:	00040000 	andeq	r0, r4, r0
 124:	00000000 	andeq	r0, r0, r0
 128:	00000ddc 	ldrdeq	r0, [r0], -ip
 12c:	00000008 	andeq	r0, r0, r8
	...
 138:	0000001c 	andeq	r0, r0, ip, lsl r0
 13c:	38930002 	ldmcc	r3, {r1}
 140:	00040000 	andeq	r0, r4, r0
 144:	00000000 	andeq	r0, r0, r0
 148:	00000de4 	andeq	r0, r0, r4, ror #27
 14c:	00000044 	andeq	r0, r0, r4, asr #32
	...
 158:	0000001c 	andeq	r0, r0, ip, lsl r0
 15c:	42210002 	eormi	r0, r1, #2
 160:	00040000 	andeq	r0, r4, r0
 164:	00000000 	andeq	r0, r0, r0
 168:	00000e28 	andeq	r0, r0, r8, lsr #28
 16c:	0000008c 	andeq	r0, r0, ip, lsl #1
	...
 178:	00000024 	andeq	r0, r0, r4, lsr #32
 17c:	4bd10002 	blmi	ff44018c <__stack+0xdf43f8b4>
 180:	00040000 	andeq	r0, r4, r0
 184:	00000000 	andeq	r0, r0, r0
 188:	00000eb4 			; <UNDEFINED> instruction: 0x00000eb4
 18c:	00000118 	andeq	r0, r0, r8, lsl r1
 190:	00001560 	andeq	r1, r0, r0, ror #10
 194:	00000028 	andeq	r0, r0, r8, lsr #32
	...
 1a0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1a4:	560a0002 	strpl	r0, [sl], -r2
 1a8:	00040000 	andeq	r0, r4, r0
 1ac:	00000000 	andeq	r0, r0, r0
 1b0:	00000fcc 	andeq	r0, r0, ip, asr #31
 1b4:	000003ec 	andeq	r0, r0, ip, ror #7
	...
 1c0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1c4:	62ef0002 	rscvs	r0, pc, #2
 1c8:	00040000 	andeq	r0, r4, r0
 1cc:	00000000 	andeq	r0, r0, r0
 1d0:	000013b8 			; <UNDEFINED> instruction: 0x000013b8
 1d4:	00000178 	andeq	r0, r0, r8, ror r1
	...
 1e0:	0000001c 	andeq	r0, r0, ip, lsl r0
 1e4:	6ed00002 	cdpvs	0, 13, cr0, cr0, cr2, {0}
 1e8:	00040000 	andeq	r0, r4, r0
 1ec:	00000000 	andeq	r0, r0, r0
 1f0:	00001530 	andeq	r1, r0, r0, lsr r5
 1f4:	0000002c 	andeq	r0, r0, ip, lsr #32
	...
 200:	0000001c 	andeq	r0, r0, ip, lsl r0
 204:	6f6d0002 	svcvs	0x006d0002
 208:	00040000 	andeq	r0, r4, r0
 20c:	00000000 	andeq	r0, r0, r0
 210:	0000155c 	andeq	r1, r0, ip, asr r5
 214:	00000004 	andeq	r0, r0, r4
	...

Disassembly of section .debug_str:

00000000 <.debug_str>:
   0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
   4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
   8:	2f2e2e2f 	svccs	0x002e2e2f
   c:	6c2f2e2e 	stcvs	14, cr2, [pc], #-184	; ffffff5c <__stack+0xdffff684>
  10:	6c676269 	sfmvs	f6, 2, [r7], #-420	; 0xfffffe5c
  14:	2f73736f 	svccs	0x0073736f
  18:	2f6d7261 	svccs	0x006d7261
  1c:	30747263 	rsbscc	r7, r4, r3, ror #4
  20:	2f00532e 	svccs	0x0000532e
  24:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  28:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
  2c:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
  30:	3342702d 	movtcc	r7, #8237	; 0x202d
  34:	2f656430 	svccs	0x00656430
  38:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
  3c:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
  40:	302e332e 	eorcc	r3, lr, lr, lsr #6
  44:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
  48:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
  4c:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
  50:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
  54:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
  58:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
  5c:	736f6c67 	cmnvc	pc, #26368	; 0x6700
  60:	72612f73 	rsbvc	r2, r1, #460	; 0x1cc
  64:	65732f6d 	ldrbvs	r2, [r3, #-3949]!	; 0xfffff093
  68:	7668696d 	strbtvc	r6, [r8], -sp, ror #18
  6c:	47006d32 	smladxmi	r0, r2, sp, r6
  70:	4120554e 			; <UNDEFINED> instruction: 0x4120554e
  74:	2e322053 	mrccs	0, 1, r2, cr2, cr3, {2}
  78:	6c003733 	stcvs	7, cr3, [r0], {51}	; 0x33
  7c:	20676e6f 	rsbcs	r6, r7, pc, ror #28
  80:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
  84:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
  88:	6f687300 	svcvs	0x00687300
  8c:	75207472 	strvc	r7, [r0, #-1138]!	; 0xfffffb8e
  90:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
  94:	2064656e 	rsbcs	r6, r4, lr, ror #10
  98:	00746e69 	rsbseq	r6, r4, r9, ror #28
  9c:	74615f5f 	strbtvc	r5, [r1], #-3935	; 0xfffff0a1
  a0:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
  a4:	7079745f 	rsbsvc	r7, r9, pc, asr r4
  a8:	2e007365 	cdpcs	3, 0, cr7, cr0, cr5, {3}
  ac:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
  b0:	2f2e2e2f 	svccs	0x002e2e2f
  b4:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
  b8:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xfffff0d2
  bc:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
  c0:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
  c4:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
  c8:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
  cc:	6574612f 	ldrbvs	r6, [r4, #-303]!	; 0xfffffed1
  d0:	2e746978 			; <UNDEFINED> instruction: 0x2e746978
  d4:	622f0063 	eorvs	r0, pc, #99	; 0x63
  d8:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
  dc:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
  e0:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
  e4:	30334270 	eorscc	r4, r3, r0, ror r2
  e8:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
  ec:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
  f0:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
  f4:	2f302e33 	svccs	0x00302e33
  f8:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
  fc:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
 100:	6f6e2d6d 	svcvs	0x006e2d6d
 104:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 108:	2f696261 	svccs	0x00696261
 10c:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 110:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; ffffff74 <__stack+0xdffff69c>
 114:	2f636269 	svccs	0x00636269
 118:	6c647473 	cfstrdvs	mvd7, [r4], #-460	; 0xfffffe34
 11c:	6c006269 	sfmvs	f6, 4, [r0], {105}	; 0x69
 120:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 124:	676e6f6c 	strbvs	r6, [lr, -ip, ror #30]!
 128:	736e7520 	cmnvc	lr, #32, 10	; 0x8000000
 12c:	656e6769 	strbvs	r6, [lr, #-1897]!	; 0xfffff897
 130:	6e692064 	cdpvs	0, 6, cr2, cr9, cr4, {3}
 134:	5f5f0074 	svcpl	0x005f0074
 138:	635f7465 	cmpvs	pc, #1694498816	; 0x65000000
 13c:	75006178 	strvc	r6, [r0, #-376]	; 0xfffffe88
 140:	6769736e 	strbvs	r7, [r9, -lr, ror #6]!
 144:	2064656e 	rsbcs	r6, r4, lr, ror #10
 148:	72616863 	rsbvc	r6, r1, #6488064	; 0x630000
 14c:	725f5f00 	subsvc	r5, pc, #0, 30
 150:	73696765 	cmnvc	r9, #26476544	; 0x1940000
 154:	5f726574 	svcpl	0x00726574
 158:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 15c:	636f7270 	cmnvs	pc, #112, 4
 160:	554e4700 	strbpl	r4, [lr, #-1792]	; 0xfffff900
 164:	37314320 	ldrcc	r4, [r1, -r0, lsr #6]!
 168:	2e303120 	rsfcssp	f3, f0, f0
 16c:	20312e33 	eorscs	r2, r1, r3, lsr lr
 170:	31323032 	teqcc	r2, r2, lsr r0
 174:	31323630 	teqcc	r2, r0, lsr r6
 178:	65722820 	ldrbvs	r2, [r2, #-2080]!	; 0xfffff7e0
 17c:	7361656c 	cmnvc	r1, #108, 10	; 0x1b000000
 180:	2d202965 			; <UNDEFINED> instruction: 0x2d202965
 184:	7570636d 	ldrbvc	r6, [r0, #-877]!	; 0xfffffc93
 188:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 18c:	6d647437 	cfstrdvs	mvd7, [r4, #-220]!	; 0xffffff24
 190:	6d2d2069 	stcvs	0, cr2, [sp, #-420]!	; 0xfffffe5c
 194:	616f6c66 	cmnvs	pc, r6, ror #24
 198:	62612d74 	rsbvs	r2, r1, #116, 26	; 0x1d00
 19c:	6f733d69 	svcvs	0x00733d69
 1a0:	2d207466 	cfstrscs	mvf7, [r0, #-408]!	; 0xfffffe68
 1a4:	6d72616d 	ldfvse	f6, [r2, #-436]!	; 0xfffffe4c
 1a8:	616d2d20 	cmnvs	sp, r0, lsr #26
 1ac:	3d686372 	stclcc	3, cr6, [r8, #-456]!	; 0xfffffe38
 1b0:	766d7261 	strbtvc	r7, [sp], -r1, ror #4
 1b4:	2d207434 	cfstrscs	mvf7, [r0, #-208]!	; 0xffffff30
 1b8:	4f2d2067 	svcmi	0x002d2067
 1bc:	662d2032 			; <UNDEFINED> instruction: 0x662d2032
 1c0:	622d6f6e 	eorvs	r6, sp, #440	; 0x1b8
 1c4:	746c6975 	strbtvc	r6, [ip], #-2421	; 0xfffff68b
 1c8:	6c006e69 	stcvs	14, cr6, [r0], {105}	; 0x69
 1cc:	20676e6f 	rsbcs	r6, r7, pc, ror #28
 1d0:	62756f64 	rsbsvs	r6, r5, #100, 30	; 0x190
 1d4:	7300656c 	movwvc	r6, #1388	; 0x56c
 1d8:	74726f68 	ldrbtvc	r6, [r2], #-3944	; 0xfffff098
 1dc:	746e6920 	strbtvc	r6, [lr], #-2336	; 0xfffff6e0
 1e0:	655f5f00 	ldrbvs	r5, [pc, #-3840]	; fffff2e8 <__stack+0xdfffea10>
 1e4:	74615f74 	strbtvc	r5, [r1], #-3956	; 0xfffff08c
 1e8:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 1ec:	655f5f00 	ldrbvs	r5, [pc, #-3840]	; fffff2f4 <__stack+0xdfffea1c>
 1f0:	6e6f5f74 	mcrvs	15, 3, r5, cr15, cr4, {3}
 1f4:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 1f8:	73645f00 	cmnvc	r4, #0, 30
 1fc:	61685f6f 	cmnvs	r8, pc, ror #30
 200:	656c646e 	strbvs	r6, [ip, #-1134]!	; 0xfffffb92
 204:	61725f00 	cmnvs	r2, r0, lsl #30
 208:	3834646e 	ldmdacc	r4!, {r1, r2, r3, r5, r6, sl, sp, lr}
 20c:	6d655f00 	stclvs	15, cr5, [r5, #-0]
 210:	65677265 	strbvs	r7, [r7, #-613]!	; 0xfffffd9b
 214:	0079636e 	rsbseq	r6, r9, lr, ror #6
 218:	7263775f 	rsbvc	r7, r3, #24903680	; 0x17c0000
 21c:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
 220:	6174735f 	cmnvs	r4, pc, asr r3
 224:	5f006574 	svcpl	0x00006574
 228:	72736377 	rsbsvc	r6, r3, #-603979775	; 0xdc000001
 22c:	626d6f74 	rsbvs	r6, sp, #116, 30	; 0x1d0
 230:	74735f73 	ldrbtvc	r5, [r3], #-3955	; 0xfffff08d
 234:	00657461 	rsbeq	r7, r5, r1, ror #8
 238:	66626c5f 			; <UNDEFINED> instruction: 0x66626c5f
 23c:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 240:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
 244:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
 248:	00745f65 	rsbseq	r5, r4, r5, ror #30
 24c:	72626d5f 	rsbvc	r6, r2, #6080	; 0x17c0
 250:	63776f74 	cmnvs	r7, #116, 30	; 0x1d0
 254:	6174735f 	cmnvs	r4, pc, asr r3
 258:	5f006574 	svcpl	0x00006574
 25c:	6f746377 	svcvs	0x00746377
 260:	735f626d 	cmpvc	pc, #-805306362	; 0xd0000006
 264:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 268:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 270 <main+0x6c>
 26c:	65735f6d 	ldrbvs	r5, [r3, #-3949]!	; 0xfffff093
 270:	655f0063 	ldrbvs	r0, [pc, #-99]	; 215 <main+0x11>
 274:	00746978 	rsbseq	r6, r4, r8, ror r9
 278:	7562755f 	strbvc	r7, [r2, #-1375]!	; 0xfffffaa1
 27c:	5f5f0066 	svcpl	0x005f0066
 280:	685f6d74 	ldmdavs	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
 284:	0072756f 	rsbseq	r7, r2, pc, ror #10
 288:	66735f5f 	uhsaxvs	r5, r3, pc	; <UNPREDICTABLE>
 28c:	6e6f5f00 	cdpvs	15, 6, cr5, cr15, cr0, {0}
 290:	6978655f 	ldmdbvs	r8!, {r0, r1, r2, r3, r4, r6, r8, sl, sp, lr}^
 294:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
 298:	5f007367 	svcpl	0x00007367
 29c:	6b6f6f63 	blvs	1bdc030 <_bsl_base_address+0x19da030>
 2a0:	5f006569 	svcpl	0x00006569
 2a4:	6c67735f 	stclvs	3, cr7, [r7], #-380	; 0xfffffe84
 2a8:	5f006575 	svcpl	0x00006575
 2ac:	67616c66 	strbvs	r6, [r1, -r6, ror #24]!
 2b0:	695f0073 	ldmdbvs	pc, {r0, r1, r4, r5, r6}^	; <UNPREDICTABLE>
 2b4:	78635f73 	stmdavc	r3!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, ip, lr}^
 2b8:	735f0061 	cmpvc	pc, #97	; 0x61
 2bc:	6e696474 	mcrvs	4, 3, r6, cr9, cr4, {3}
 2c0:	6c625f00 	stclvs	15, cr5, [r2], #-0
 2c4:	7a69736b 	bvc	1a5d078 <_bsl_base_address+0x185b078>
 2c8:	635f0065 	cmpvs	pc, #101	; 0x65
 2cc:	75627476 	strbvc	r7, [r2, #-1142]!	; 0xfffffb8a
 2d0:	6f5f0066 	svcvs	0x005f0066
 2d4:	65736666 	ldrbvs	r6, [r3, #-1638]!	; 0xfffff99a
 2d8:	6d5f0074 	ldclvs	0, cr0, [pc, #-464]	; 110 <_stack_init+0x34>
 2dc:	74727362 	ldrbtvc	r7, [r2], #-866	; 0xfffffc9e
 2e0:	7363776f 	cmnvc	r3, #29097984	; 0x1bc0000
 2e4:	6174735f 	cmnvs	r4, pc, asr r3
 2e8:	5f006574 	svcpl	0x00006574
 2ec:	6c72626d 	lfmvs	f6, 2, [r2], #-436	; 0xfffffe4c
 2f0:	735f6e65 	cmpvc	pc, #1616	; 0x650
 2f4:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 2f8:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 2fc:	73677261 	cmnvc	r7, #268435462	; 0x10000006
 300:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 304:	735f0073 	cmpvc	pc, #115	; 0x73
 308:	006e6769 	rsbeq	r6, lr, r9, ror #14
 30c:	6f6c665f 	svcvs	0x006c665f
 310:	745f6b63 	ldrbvc	r6, [pc], #-2915	; 318 <func+0x78>
 314:	74735f00 	ldrbtvc	r5, [r3], #-3840	; 0xfffff100
 318:	72726564 	rsbsvc	r6, r2, #100, 10	; 0x19000000
 31c:	69425f00 	stmdbvs	r2, {r8, r9, sl, fp, ip, lr}^
 320:	746e6967 	strbtvc	r6, [lr], #-2407	; 0xfffff699
 324:	61675f00 	cmnvs	r7, r0, lsl #30
 328:	5f616d6d 	svcpl	0x00616d6d
 32c:	6e676973 			; <UNDEFINED> instruction: 0x6e676973
 330:	006d6167 	rsbeq	r6, sp, r7, ror #2
 334:	6165725f 	cmnvs	r5, pc, asr r2
 338:	725f0064 	subsvc	r0, pc, #100	; 0x64
 33c:	6c757365 	ldclvs	3, cr7, [r5], #-404	; 0xfffffe6c
 340:	006b5f74 	rsbeq	r5, fp, r4, ror pc
 344:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 348:	775f5f00 	ldrbvc	r5, [pc, -r0, lsl #30]
 34c:	00626863 	rsbeq	r6, r2, r3, ror #16
 350:	6474735f 	ldrbtvs	r7, [r4], #-863	; 0xfffffca1
 354:	0074756f 	rsbseq	r7, r4, pc, ror #10
 358:	7476635f 	ldrbtvc	r6, [r6], #-863	; 0xfffffca1
 35c:	006e656c 	rsbeq	r6, lr, ip, ror #10
 360:	6c69665f 	stclvs	6, cr6, [r9], #-380	; 0xfffffe84
 364:	6e5f0065 	cdpvs	0, 5, cr0, cr15, cr5, {3}
 368:	73626f69 	cmnvc	r2, #420	; 0x1a4
 36c:	74615f00 	strbtvc	r5, [r1], #-3840	; 0xfffff100
 370:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 374:	735f0030 	cmpvc	pc, #48	; 0x30
 378:	616e6769 	cmnvs	lr, r9, ror #14
 37c:	75625f6c 	strbvc	r5, [r2, #-3948]!	; 0xfffff094
 380:	615f0066 	cmpvs	pc, r6, rrx
 384:	69746373 	ldmdbvs	r4!, {r0, r1, r4, r5, r6, r8, r9, sp, lr}^
 388:	625f656d 	subsvs	r6, pc, #457179136	; 0x1b400000
 38c:	5f006675 	svcpl	0x00006675
 390:	75736572 	ldrbvc	r6, [r3, #-1394]!	; 0xfffffa8e
 394:	5f00746c 	svcpl	0x0000746c
 398:	6863775f 	stmdavs	r3!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 39c:	6e697700 	cdpvs	7, 6, cr7, cr9, cr0, {0}
 3a0:	00745f74 	rsbseq	r5, r4, r4, ror pc
 3a4:	616c665f 	cmnvs	ip, pc, asr r6
 3a8:	00327367 	eorseq	r7, r2, r7, ror #6
 3ac:	6972775f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, r8, r9, sl, ip, sp, lr}^
 3b0:	5f006574 	svcpl	0x00006574
 3b4:	5f6d745f 	svcpl	0x006d745f
 3b8:	72616579 	rsbvc	r6, r1, #507510784	; 0x1e400000
 3bc:	656e5f00 	strbvs	r5, [lr, #-3840]!	; 0xfffff100
 3c0:	00667478 	rsbeq	r7, r6, r8, ror r4
 3c4:	6d745f5f 	ldclvs	15, cr5, [r4, #-380]!	; 0xfffffe84
 3c8:	6e6f6d5f 	mcrvs	13, 3, r6, cr15, cr15, {2}
 3cc:	735f5f00 	cmpvc	pc, #0, 30
 3d0:	69646964 	stmdbvs	r4!, {r2, r5, r6, r8, fp, sp, lr}^
 3d4:	0074696e 	rsbseq	r6, r4, lr, ror #18
 3d8:	66666f5f 	uqsaxvs	r6, r6, pc	; <UNPREDICTABLE>
 3dc:	5f00745f 	svcpl	0x0000745f
 3e0:	6c61635f 	stclvs	3, cr6, [r1], #-380	; 0xfffffe84
 3e4:	78655f6c 	stmdavc	r5!, {r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 3e8:	72707469 	rsbsvc	r7, r0, #1761607680	; 0x69000000
 3ec:	0073636f 	rsbseq	r6, r3, pc, ror #6
 3f0:	6572665f 	ldrbvs	r6, [r2, #-1631]!	; 0xfffff9a1
 3f4:	73696c65 	cmnvc	r9, #25856	; 0x6500
 3f8:	4c5f0074 	mrrcmi	0, 7, r0, pc, cr4	; <UNPREDICTABLE>
 3fc:	5f4b434f 	svcpl	0x004b434f
 400:	55434552 	strbpl	r4, [r3, #-1362]	; 0xfffffaae
 404:	56495352 			; <UNDEFINED> instruction: 0x56495352
 408:	00545f45 	subseq	r5, r4, r5, asr #30
 40c:	77656e5f 			; <UNDEFINED> instruction: 0x77656e5f
 410:	5f685f00 	svcpl	0x00685f00
 414:	6e727265 	cdpvs	2, 7, cr7, cr2, cr5, {3}
 418:	5f5f006f 	svcpl	0x005f006f
 41c:	795f6d74 	ldmdbvc	pc, {r2, r4, r5, r6, r8, sl, fp, sp, lr}^	; <UNPREDICTABLE>
 420:	00796164 	rsbseq	r6, r9, r4, ror #2
 424:	62735f5f 	rsbsvs	r5, r3, #380	; 0x17c
 428:	5f006675 	svcpl	0x00006675
 42c:	73626f69 	cmnvc	r2, #420	; 0x1a4
 430:	465f5f00 	ldrbmi	r5, [pc], -r0, lsl #30
 434:	00454c49 	subeq	r4, r5, r9, asr #24
 438:	73626d5f 	cmnvc	r2, #6080	; 0x17c0
 43c:	65746174 	ldrbvs	r6, [r4, #-372]!	; 0xfffffe8c
 440:	5f00745f 	svcpl	0x0000745f
 444:	4946735f 	stmdbmi	r6, {r0, r1, r2, r3, r4, r6, r8, r9, ip, sp, lr}^
 448:	5f00454c 	svcpl	0x0000454c
 44c:	7473626d 	ldrbtvc	r6, [r3], #-621	; 0xfffffd93
 450:	00657461 	rsbeq	r7, r5, r1, ror #8
 454:	6e61725f 	mcrvs	2, 3, r7, cr1, cr15, {2}
 458:	656e5f64 	strbvs	r5, [lr, #-3940]!	; 0xfffff09c
 45c:	5f007478 	svcpl	0x00007478
 460:	656c626d 	strbvs	r6, [ip, #-621]!	; 0xfffffd93
 464:	74735f6e 	ldrbtvc	r5, [r3], #-3950	; 0xfffff092
 468:	00657461 	rsbeq	r7, r5, r1, ror #8
 46c:	636e695f 	cmnvs	lr, #1556480	; 0x17c000
 470:	6e695f00 	cdpvs	15, 6, cr5, cr9, cr0, {0}
 474:	6c5f0064 	mrrcvs	0, 6, r0, pc, cr4	; <UNPREDICTABLE>
 478:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
 47c:	5f5f0065 	svcpl	0x005f0065
 480:	61656c63 	cmnvs	r5, r3, ror #24
 484:	0070756e 	rsbseq	r7, r0, lr, ror #10
 488:	736e755f 	cmnvc	lr, #398458880	; 0x17c00000
 48c:	69636570 	stmdbvs	r3!, {r4, r5, r6, r8, sl, sp, lr}^
 490:	64656966 	strbtvs	r6, [r5], #-2406	; 0xfffff69a
 494:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 498:	5f656c61 	svcpl	0x00656c61
 49c:	6f666e69 	svcvs	0x00666e69
 4a0:	616d5f00 	cmnvs	sp, r0, lsl #30
 4a4:	73647778 	cmnvc	r4, #120, 14	; 0x1e00000
 4a8:	65735f00 	ldrbvs	r5, [r3, #-3840]!	; 0xfffff100
 4ac:	5f006465 	svcpl	0x00006465
 4b0:	756f635f 	strbvc	r6, [pc, #-863]!	; 159 <_stack_init+0x7d>
 4b4:	5f00746e 	svcpl	0x0000746e
 4b8:	6c61765f 	stclvs	6, cr7, [r1], #-380	; 0xfffffe84
 4bc:	5f006575 	svcpl	0x00006575
 4c0:	6b656573 	blvs	1959a94 <_bsl_base_address+0x1757a94>
 4c4:	70665f00 	rsbvc	r5, r6, r0, lsl #30
 4c8:	745f736f 	ldrbvc	r7, [pc], #-879	; 4d0 <_malloc_r>
 4cc:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 4d4 <_malloc_r+0x4>
 4d0:	696d5f6d 	stmdbvs	sp!, {r0, r2, r3, r5, r6, r8, r9, sl, fp, ip, lr}^
 4d4:	6d5f006e 	ldclvs	0, cr0, [pc, #-440]	; 324 <func+0x84>
 4d8:	00746c75 	rsbseq	r6, r4, r5, ror ip
 4dc:	7274735f 	rsbsvc	r7, r4, #2080374785	; 0x7c000001
 4e0:	5f6b6f74 	svcpl	0x006b6f74
 4e4:	7473616c 	ldrbtvc	r6, [r3], #-364	; 0xfffffe94
 4e8:	6e665f00 	cdpvs	15, 6, cr5, cr6, cr0, {0}
 4ec:	65707974 	ldrbvs	r7, [r0, #-2420]!	; 0xfffff68c
 4f0:	615f0073 	cmpvs	pc, r3, ror r0	; <UNPREDICTABLE>
 4f4:	5f006464 	svcpl	0x00006464
 4f8:	6f4c555f 	svcvs	0x004c555f
 4fc:	5f00676e 	svcpl	0x0000676e
 500:	64746567 	ldrbtvs	r6, [r4], #-1383	; 0xfffffa99
 504:	5f657461 	svcpl	0x00657461
 508:	00727265 	rsbseq	r7, r2, r5, ror #4
 50c:	6f6c675f 	svcvs	0x006c675f
 510:	5f6c6162 	svcpl	0x006c6162
 514:	75706d69 	ldrbvc	r6, [r0, #-3433]!	; 0xfffff297
 518:	705f6572 	subsvc	r6, pc, r2, ror r5	; <UNPREDICTABLE>
 51c:	63007274 	movwvs	r7, #628	; 0x274
 520:	0065646f 	rsbeq	r6, r5, pc, ror #8
 524:	756e755f 	strbvc	r7, [lr, #-1375]!	; 0xfffffaa1
 528:	5f646573 	svcpl	0x00646573
 52c:	646e6172 	strbtvs	r6, [lr], #-370	; 0xfffffe8e
 530:	64775f00 	ldrbtvs	r5, [r7], #-3840	; 0xfffff100
 534:	5f5f0073 	svcpl	0x005f0073
 538:	775f6d74 			; <UNDEFINED> instruction: 0x775f6d74
 53c:	00796164 	rsbseq	r6, r9, r4, ror #2
 540:	616d6e5f 	cmnvs	sp, pc, asr lr
 544:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 548:	366c5f00 	strbtcc	r5, [ip], -r0, lsl #30
 54c:	625f6134 	subsvs	r6, pc, #52, 2
 550:	5f006675 	svcpl	0x00006675
 554:	5f676973 	svcpl	0x00676973
 558:	636e7566 	cmnvs	lr, #427819008	; 0x19800000
 55c:	626e5f00 	rsbvs	r5, lr, #0, 30
 560:	5f006675 	svcpl	0x00006675
 564:	73756e75 	cmnvc	r5, #1872	; 0x750
 568:	5f006465 	svcpl	0x00006465
 56c:	5f6d745f 	svcpl	0x006d745f
 570:	73647369 	cmnvc	r4, #-1543503871	; 0xa4000001
 574:	6c5f0074 	mrrcvs	0, 7, r0, pc, cr4	; <UNPREDICTABLE>
 578:	6c61636f 	stclvs	3, cr6, [r1], #-444	; 0xfffffe44
 57c:	656d6974 	strbvs	r6, [sp, #-2420]!	; 0xfffff68c
 580:	6675625f 			; <UNDEFINED> instruction: 0x6675625f
 584:	6c635f00 	stclvs	15, cr5, [r3], #-0
 588:	0065736f 	rsbeq	r7, r5, pc, ror #6
 58c:	3834725f 	ldmdacc	r4!, {r0, r1, r2, r3, r4, r6, r9, ip, sp, lr}
 590:	2f2e2e00 	svccs	0x002e2e00
 594:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 598:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 59c:	2f2e2e2f 	svccs	0x002e2e2f
 5a0:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 5a4:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 408 <__libc_init_array>
 5a8:	2f636269 	svccs	0x00636269
 5ac:	6c647473 	cfstrdvs	mvd7, [r4], #-460	; 0xfffffe34
 5b0:	652f6269 	strvs	r6, [pc, #-617]!	; 34f <func+0xaf>
 5b4:	2e746978 			; <UNDEFINED> instruction: 0x2e746978
 5b8:	6d5f0063 	ldclvs	0, cr0, [pc, #-396]	; 434 <__libc_init_array+0x2c>
 5bc:	776f7462 	strbvc	r7, [pc, -r2, ror #8]!
 5c0:	74735f63 	ldrbtvc	r5, [r3], #-3939	; 0xfffff09d
 5c4:	00657461 	rsbeq	r7, r5, r1, ror #8
 5c8:	7335705f 	teqvc	r5, #95	; 0x5f
 5cc:	745f5f00 	ldrbvc	r5, [pc], #-3840	; 5d4 <_malloc_r+0x104>
 5d0:	646d5f6d 	strbtvs	r5, [sp], #-3949	; 0xfffff093
 5d4:	73007961 	movwvc	r7, #2401	; 0x961
 5d8:	5f657a69 	svcpl	0x00657a69
 5dc:	5f5f0074 	svcpl	0x005f0074
 5e0:	696e6966 	stmdbvs	lr!, {r1, r2, r5, r6, r8, fp, sp, lr}^
 5e4:	7272615f 	rsbsvc	r6, r2, #-1073741801	; 0xc0000017
 5e8:	735f7961 	cmpvc	pc, #1589248	; 0x184000
 5ec:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 5f0:	665f5f00 	ldrbvs	r5, [pc], -r0, lsl #30
 5f4:	5f696e69 	svcpl	0x00696e69
 5f8:	61727261 	cmnvs	r2, r1, ror #4
 5fc:	6e655f79 	mcrvs	15, 3, r5, cr5, cr9, {3}
 600:	5f5f0064 	svcpl	0x005f0064
 604:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
 608:	6e69665f 	mcrvs	6, 3, r6, cr9, cr15, {2}
 60c:	72615f69 	rsbvc	r5, r1, #420	; 0x1a4
 610:	00796172 	rsbseq	r6, r9, r2, ror r1
 614:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 618:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 61c:	2f2e2e2f 	svccs	0x002e2e2f
 620:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
 624:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 628:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
 62c:	6d2f6362 	stcvs	3, cr6, [pc, #-392]!	; 4ac <malloc+0x1c>
 630:	2f637369 	svccs	0x00637369
 634:	696e6966 	stmdbvs	lr!, {r1, r2, r5, r6, r8, fp, sp, lr}^
 638:	2f00632e 	svccs	0x0000632e
 63c:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 640:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
 644:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
 648:	3342702d 	movtcc	r7, #8237	; 0x202d
 64c:	2f656430 	svccs	0x00656430
 650:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 654:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
 658:	302e332e 	eorcc	r3, lr, lr, lsr #6
 65c:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
 660:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
 664:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 668:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 66c:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 670:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
 674:	2f62696c 	svccs	0x0062696c
 678:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
 67c:	73696d2f 	cmnvc	r9, #3008	; 0xbc0
 680:	622f0063 	eorvs	r0, pc, #99	; 0x63
 684:	646c6975 	strbtvs	r6, [ip], #-2421	; 0xfffff68b
 688:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
 68c:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
 690:	30334270 	eorscc	r4, r3, r0, ror r2
 694:	6e2f6564 	cfsh64vs	mvdx6, mvdx15, #52
 698:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 69c:	2e332d62 	cdpcs	13, 3, cr2, cr3, cr2, {3}
 6a0:	2f302e33 	svccs	0x00302e33
 6a4:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 6a8:	72612f64 	rsbvc	r2, r1, #100, 30	; 0x190
 6ac:	6f6e2d6d 	svcvs	0x006e2d6d
 6b0:	652d656e 	strvs	r6, [sp, #-1390]!	; 0xfffffa92
 6b4:	2f696261 	svccs	0x00696261
 6b8:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 6bc:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 520 <_malloc_r+0x50>
 6c0:	2f636269 	svccs	0x00636269
 6c4:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
 6c8:	6d690074 	stclvs	0, cr0, [r9, #-464]!	; 0xfffffe30
 6cc:	65727570 	ldrbvs	r7, [r2, #-1392]!	; 0xfffffa90
 6d0:	7461645f 	strbtvc	r6, [r1], #-1119	; 0xfffffba1
 6d4:	2e2e0061 	cdpcs	0, 2, cr0, cr14, cr1, {3}
 6d8:	2f2e2e2f 	svccs	0x002e2e2f
 6dc:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 6e0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 6e4:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
 6e8:	2f62696c 	svccs	0x0062696c
 6ec:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
 6f0:	6565722f 	strbvs	r7, [r5, #-559]!	; 0xfffffdd1
 6f4:	692f746e 	stmdbvs	pc!, {r1, r2, r3, r5, r6, sl, ip, sp, lr}	; <UNPREDICTABLE>
 6f8:	7275706d 	rsbsvc	r7, r5, #109	; 0x6d
 6fc:	00632e65 	rsbeq	r2, r3, r5, ror #28
 700:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
 704:	615f7469 	cmpvs	pc, r9, ror #8
 708:	79617272 	stmdbvc	r1!, {r1, r4, r5, r6, r9, ip, sp, lr}^
 70c:	6174735f 	cmnvs	r4, pc, asr r3
 710:	5f007472 	svcpl	0x00007472
 714:	62696c5f 	rsbvs	r6, r9, #24320	; 0x5f00
 718:	6e695f63 	cdpvs	15, 6, cr5, cr9, cr3, {3}
 71c:	615f7469 	cmpvs	pc, r9, ror #8
 720:	79617272 	stmdbvc	r1!, {r1, r4, r5, r6, r9, ip, sp, lr}^
 724:	2f2e2e00 	svccs	0x002e2e00
 728:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 72c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 730:	2f2e2e2f 	svccs	0x002e2e2f
 734:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 738:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 59c <_malloc_r+0xcc>
 73c:	2f636269 	svccs	0x00636269
 740:	6373696d 	cmnvs	r3, #1785856	; 0x1b4000
 744:	696e692f 	stmdbvs	lr!, {r0, r1, r2, r3, r5, r8, fp, sp, lr}^
 748:	00632e74 	rsbeq	r2, r3, r4, ror lr
 74c:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
 750:	696e6965 	stmdbvs	lr!, {r0, r2, r5, r6, r8, fp, sp, lr}^
 754:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
 758:	5f796172 	svcpl	0x00796172
 75c:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 760:	695f0074 	ldmdbvs	pc, {r2, r4, r5, r6}^	; <UNPREDICTABLE>
 764:	0074696e 	rsbseq	r6, r4, lr, ror #18
 768:	72705f5f 	rsbsvc	r5, r0, #380	; 0x17c
 76c:	696e6965 	stmdbvs	lr!, {r0, r2, r5, r6, r8, fp, sp, lr}^
 770:	72615f74 	rsbvc	r5, r1, #116, 30	; 0x1d0
 774:	5f796172 	svcpl	0x00796172
 778:	00646e65 	rsbeq	r6, r4, r5, ror #28
 77c:	6e695f5f 	mcrvs	15, 3, r5, cr9, cr15, {2}
 780:	615f7469 	cmpvs	pc, r9, ror #8
 784:	79617272 	stmdbvc	r1!, {r1, r4, r5, r6, r9, ip, sp, lr}^
 788:	646e655f 	strbtvs	r6, [lr], #-1375	; 0xfffffaa1
 78c:	74706100 	ldrbtvc	r6, [r0], #-256	; 0xffffff00
 790:	72660072 	rsbvc	r0, r6, #114	; 0x72
 794:	2e006565 	cfsh32cs	mvfx6, mvfx0, #53
 798:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 79c:	2f2e2e2f 	svccs	0x002e2e2f
 7a0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 7a4:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xfffff0d2
 7a8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
 7ac:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 7b0:	74732f63 	ldrbtvc	r2, [r3], #-3939	; 0xfffff09d
 7b4:	62696c64 	rsbvs	r6, r9, #100, 24	; 0x6400
 7b8:	6c616d2f 	stclvs	13, cr6, [r1], #-188	; 0xffffff44
 7bc:	2e636f6c 	cdpcs	15, 6, cr6, cr3, cr12, {3}
 7c0:	626e0063 	rsbvs	r0, lr, #99	; 0x63
 7c4:	73657479 	cmnvc	r5, #2030043136	; 0x79000000
 7c8:	72665f00 	rsbvc	r5, r6, #0, 30
 7cc:	725f6565 	subsvc	r6, pc, #423624704	; 0x19400000
 7d0:	616d5f00 	cmnvs	sp, r0, lsl #30
 7d4:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 7d8:	7000725f 	andvc	r7, r0, pc, asr r2
 7dc:	5f766572 	svcpl	0x00766572
 7e0:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 7e4:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 7ec <_malloc_r+0x31c>
 7e8:	6f6c6c61 	svcvs	0x006c6c61
 7ec:	6f745f63 	svcvs	0x00745f63
 7f0:	61705f70 	cmnvs	r0, r0, ror pc
 7f4:	62680064 	rsbvs	r0, r8, #100	; 0x64
 7f8:	00736b6c 	rsbseq	r6, r3, ip, ror #22
 7fc:	74636976 	strbtvc	r6, [r3], #-2422	; 0xfffff68a
 800:	61006d69 	tstvs	r0, r9, ror #26
 804:	616e6572 	smcvs	58962	; 0xe652
 808:	6d657200 	sfmvs	f7, 2, [r5, #-0]
 80c:	646e6961 	strbtvs	r6, [lr], #-2401	; 0xfffff69f
 810:	735f7265 	cmpvc	pc, #1342177286	; 0x50000006
 814:	00657a69 	rsbeq	r7, r5, r9, ror #20
 818:	5f646c6f 	svcpl	0x00646c6f
 81c:	00646e65 	rsbeq	r6, r4, r5, ror #28
 820:	636f6c62 	cmnvs	pc, #25088	; 0x6200
 824:	5f5f006b 	svcpl	0x005f006b
 828:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
 82c:	755f636f 	ldrbvc	r6, [pc, #-879]	; 4c5 <free+0x15>
 830:	636f6c6e 	cmnvs	pc, #28160	; 0x6e00
 834:	626d006b 	rsbvs	r0, sp, #107	; 0x6b
 838:	74706e69 	ldrbtvc	r6, [r0], #-3689	; 0xfffff197
 83c:	656e0072 	strbvs	r0, [lr, #-114]!	; 0xffffff8e
 840:	72625f77 	rsbvc	r5, r2, #476	; 0x1dc
 844:	616d006b 	cmnvs	sp, fp, rrx
 848:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 84c:	7478655f 	ldrbtvc	r6, [r8], #-1375	; 0xfffffaa1
 850:	5f646e65 	svcpl	0x00646e65
 854:	00706f74 	rsbseq	r6, r0, r4, ror pc
 858:	64726f66 	ldrbtvs	r6, [r2], #-3942	; 0xfffff09a
 85c:	736b6c62 	cmnvc	fp, #25088	; 0x6200
 860:	6f726600 	svcvs	0x00726600
 864:	6d5f746e 	cfldrdvs	mvd7, [pc, #-440]	; 6b4 <_malloc_r+0x1e4>
 868:	6c617369 	stclvs	3, cr7, [r1], #-420	; 0xfffffe5c
 86c:	006e6769 	rsbeq	r6, lr, r9, ror #14
 870:	616d5f5f 	cmnvs	sp, pc, asr pc
 874:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 878:	636f6c5f 	cmnvs	pc, #24320	; 0x5f00
 87c:	5f5f006b 	svcpl	0x005f006b
 880:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
 884:	6d5f636f 	ldclvs	3, cr6, [pc, #-444]	; 6d0 <_malloc_r+0x200>
 888:	735f7861 	cmpvc	pc, #6356992	; 0x610000
 88c:	656b7262 	strbvs	r7, [fp, #-610]!	; 0xfffffd9e
 890:	656d5f64 	strbvs	r5, [sp, #-3940]!	; 0xfffff09c
 894:	6f75006d 	svcvs	0x0075006d
 898:	6c626472 	cfstrdvs	mvd6, [r2], #-456	; 0xfffffe38
 89c:	7300736b 	movwvc	r7, #875	; 0x36b
 8a0:	5f6b7262 	svcpl	0x006b7262
 8a4:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 8a8:	2f2e2e00 	svccs	0x002e2e00
 8ac:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 8b0:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 8b4:	2f2e2e2f 	svccs	0x002e2e2f
 8b8:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 8bc:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 720 <_malloc_r+0x250>
 8c0:	2f636269 	svccs	0x00636269
 8c4:	6c647473 	cfstrdvs	mvd7, [r4], #-460	; 0xfffffe34
 8c8:	6d2f6269 	sfmvs	f6, 4, [pc, #-420]!	; 72c <_malloc_r+0x25c>
 8cc:	6f6c6c61 	svcvs	0x006c6c61
 8d0:	632e7263 			; <UNDEFINED> instruction: 0x632e7263
 8d4:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 8dc <_malloc_r+0x40c>
 8d8:	6f6c6c61 	svcvs	0x006c6c61
 8dc:	616d5f63 	cmnvs	sp, r3, ror #30
 8e0:	6f745f78 	svcvs	0x00745f78
 8e4:	5f6c6174 	svcpl	0x006c6174
 8e8:	006d656d 	rsbeq	r6, sp, sp, ror #10
 8ec:	72617473 	rsbvc	r7, r1, #1929379840	; 0x73000000
 8f0:	78646974 	stmdavc	r4!, {r2, r4, r5, r6, r8, fp, sp, lr}^
 8f4:	63697600 	cmnvs	r9, #0, 12
 8f8:	5f6d6974 	svcpl	0x006d6974
 8fc:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 900:	6d736600 	ldclvs	6, cr6, [r3, #-0]
 904:	736b6c62 	cmnvc	fp, #25088	; 0x6200
 908:	6c616d00 	stclvs	13, cr6, [r1], #-0
 90c:	5f636f6c 	svcpl	0x00636f6c
 910:	6e756863 	cdpvs	8, 7, cr6, cr5, cr3, {3}
 914:	5f5f006b 	svcpl	0x005f006b
 918:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
 91c:	745f636f 	ldrbvc	r6, [pc], #-879	; 924 <_malloc_r+0x454>
 920:	5f6d6972 	svcpl	0x006d6972
 924:	65726874 	ldrbvs	r6, [r2, #-2164]!	; 0xfffff78c
 928:	6c6f6873 	stclvs	8, cr6, [pc], #-460	; 764 <_malloc_r+0x294>
 92c:	73750064 	cmnvc	r5, #100	; 0x64
 930:	6b6c626d 	blvs	1b192ec <_bsl_base_address+0x19172ec>
 934:	61700073 	cmnvs	r0, r3, ror r0
 938:	7a736567 	bvc	1cd9edc <_bsl_base_address+0x1ad7edc>
 93c:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 944 <_malloc_r+0x474>
 940:	6f6c6c61 	svcvs	0x006c6c61
 944:	75635f63 	strbvc	r5, [r3, #-3939]!	; 0xfffff09d
 948:	6e657272 	mcrvs	2, 3, r7, cr5, cr2, {3}
 94c:	616d5f74 	smcvs	54772	; 0xd5f4
 950:	6e696c6c 	cdpvs	12, 6, cr6, cr9, cr12, {3}
 954:	72006f66 	andvc	r6, r0, #408	; 0x198
 958:	69616d65 	stmdbvs	r1!, {r0, r2, r5, r6, r8, sl, fp, sp, lr}^
 95c:	7265646e 	rsbvc	r6, r5, #1845493760	; 0x6e000000
 960:	646c6f00 	strbtvs	r6, [ip], #-3840	; 0xfffff100
 964:	706f745f 	rsbvc	r7, pc, pc, asr r4	; <UNPREDICTABLE>
 968:	6d5f5f00 	ldclvs	15, cr5, [pc, #-0]	; 970 <_malloc_r+0x4a0>
 96c:	6f6c6c61 	svcvs	0x006c6c61
 970:	76615f63 	strbtvc	r5, [r1], -r3, ror #30
 974:	6572005f 	ldrbvs	r0, [r2, #-95]!	; 0xffffffa1
 978:	5f746e65 	svcpl	0x00746e65
 97c:	00727470 	rsbseq	r7, r2, r0, ror r4
 980:	7262735f 	rsbvc	r7, r2, #2080374785	; 0x7c000001
 984:	00725f6b 	rsbseq	r5, r2, fp, ror #30
 988:	616d6572 	smcvs	54866	; 0xd652
 98c:	65646e69 	strbvs	r6, [r4, #-3689]!	; 0xfffff197
 990:	6e695f72 	mcrvs	15, 3, r5, cr9, cr2, {3}
 994:	00786564 	rsbseq	r6, r8, r4, ror #10
 998:	72726f63 	rsbsvc	r6, r2, #396	; 0x18c
 99c:	69746365 	ldmdbvs	r4!, {r0, r2, r5, r6, r8, r9, sp, lr}^
 9a0:	665f6e6f 	ldrbvs	r6, [pc], -pc, ror #28
 9a4:	656c6961 	strbvs	r6, [ip, #-2401]!	; 0xfffff69f
 9a8:	636d0064 	cmnvs	sp, #100	; 0x64
 9ac:	6b6e7568 	blvs	1b9df54 <_bsl_base_address+0x199bf54>
 9b0:	00727470 	rsbseq	r7, r2, r0, ror r4
 9b4:	5f646c6f 	svcpl	0x00646c6f
 9b8:	5f706f74 	svcpl	0x00706f74
 9bc:	657a6973 	ldrbvs	r6, [sl, #-2419]!	; 0xfffff68d
 9c0:	65656b00 	strbvs	r6, [r5, #-2816]!	; 0xfffff500
 9c4:	736f6370 	cmnvc	pc, #112, 6	; 0xc0000001
 9c8:	5f5f0074 	svcpl	0x005f0074
 9cc:	6c6c616d 	stfvse	f6, [ip], #-436	; 0xfffffe4c
 9d0:	735f636f 	cmpvc	pc, #-1140850687	; 0xbc000001
 9d4:	5f6b7262 	svcpl	0x006b7262
 9d8:	65736162 	ldrbvs	r6, [r3, #-354]!	; 0xfffffe9e
 9dc:	726f6300 	rsbvc	r6, pc, #0, 6
 9e0:	74636572 	strbtvc	r6, [r3], #-1394	; 0xfffffa8e
 9e4:	006e6f69 	rsbeq	r6, lr, r9, ror #30
 9e8:	6b6c6268 	blvs	1b19390 <_bsl_base_address+0x1917390>
 9ec:	2f006468 	svccs	0x00006468
 9f0:	6c697562 	cfstr64vs	mvdx7, [r9], #-392	; 0xfffffe78
 9f4:	656e2f64 	strbvs	r2, [lr, #-3940]!	; 0xfffff09c
 9f8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
 9fc:	3342702d 	movtcc	r7, #8237	; 0x202d
 a00:	2f656430 	svccs	0x00656430
 a04:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 a08:	332d6269 			; <UNDEFINED> instruction: 0x332d6269
 a0c:	302e332e 	eorcc	r3, lr, lr, lsr #6
 a10:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
 a14:	612f646c 			; <UNDEFINED> instruction: 0x612f646c
 a18:	6e2d6d72 	mcrvs	13, 1, r6, cr13, cr2, {3}
 a1c:	2d656e6f 	stclcs	14, cr6, [r5, #-444]!	; 0xfffffe44
 a20:	69626165 	stmdbvs	r2!, {r0, r2, r5, r6, r8, sp, lr}^
 a24:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
 a28:	2f62696c 	svccs	0x0062696c
 a2c:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
 a30:	7274732f 	rsbsvc	r7, r4, #-1140850688	; 0xbc000000
 a34:	00676e69 	rsbeq	r6, r7, r9, ror #28
 a38:	67696c61 	strbvs	r6, [r9, -r1, ror #24]!
 a3c:	5f64656e 	svcpl	0x0064656e
 a40:	72646461 	rsbvc	r6, r4, #1627389952	; 0x61000000
 a44:	2f2e2e00 	svccs	0x002e2e00
 a48:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 a4c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 a50:	2f2e2e2f 	svccs	0x002e2e2f
 a54:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 a58:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 8bc <_malloc_r+0x3ec>
 a5c:	2f636269 	svccs	0x00636269
 a60:	69727473 	ldmdbvs	r2!, {r0, r1, r4, r5, r6, sl, ip, sp, lr}^
 a64:	6d2f676e 	stcvs	7, cr6, [pc, #-440]!	; 8b4 <_malloc_r+0x3e4>
 a68:	65736d65 	ldrbvs	r6, [r3, #-3429]!	; 0xfffff29b
 a6c:	00632e74 	rsbeq	r2, r3, r4, ror lr
 a70:	736d656d 	cmnvc	sp, #457179136	; 0x1b400000
 a74:	62007465 	andvs	r7, r0, #1694498816	; 0x65000000
 a78:	65666675 	strbvs	r6, [r6, #-1653]!	; 0xfffff98b
 a7c:	2e2e0072 	mcrcs	0, 1, r0, cr14, cr2, {3}
 a80:	2f2e2e2f 	svccs	0x002e2e2f
 a84:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 a88:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 a8c:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
 a90:	2f62696c 	svccs	0x0062696c
 a94:	6362696c 	cmnvs	r2, #108, 18	; 0x1b0000
 a98:	6474732f 	ldrbtvs	r7, [r4], #-815	; 0xfffffcd1
 a9c:	2f62696c 	svccs	0x0062696c
 aa0:	636f6c6d 	cmnvs	pc, #27904	; 0x6d00
 aa4:	00632e6b 	rsbeq	r2, r3, fp, ror #28
 aa8:	616d5f5f 	cmnvs	sp, pc, asr pc
 aac:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 ab0:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
 ab4:	69737275 	ldmdbvs	r3!, {r0, r2, r4, r5, r6, r9, ip, sp, lr}^
 ab8:	6d5f6576 	cfldr64vs	mvdx6, [pc, #-472]	; 8e8 <_malloc_r+0x418>
 abc:	78657475 	stmdavc	r5!, {r0, r2, r4, r5, r6, sl, ip, sp, lr}^
 ac0:	636e6900 	cmnvs	lr, #0, 18
 ac4:	74700072 	ldrbtvc	r0, [r0], #-114	; 0xffffff8e
 ac8:	66696472 			; <UNDEFINED> instruction: 0x66696472
 acc:	00745f66 	rsbseq	r5, r4, r6, ror #30
 ad0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 ad4:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 ad8:	2f2e2e2f 	svccs	0x002e2e2f
 adc:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
 ae0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 ae4:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
 ae8:	722f6362 	eorvc	r6, pc, #-2013265919	; 0x88000001
 aec:	746e6565 	strbtvc	r6, [lr], #-1381	; 0xfffffa9b
 af0:	7262732f 	rsbvc	r7, r2, #-1140850688	; 0xbc000000
 af4:	632e726b 			; <UNDEFINED> instruction: 0x632e726b
 af8:	62735f00 	rsbsvs	r5, r3, #0, 30
 afc:	74006b72 	strvc	r6, [r0], #-2930	; 0xfffff48e
 b00:	00657079 	rsbeq	r7, r5, r9, ror r0
 b04:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 b08:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 b0c:	2f2e2e2f 	svccs	0x002e2e2f
 b10:	6e2f2e2e 	cdpvs	14, 2, cr2, cr15, cr14, {1}
 b14:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 b18:	696c2f62 	stmdbvs	ip!, {r1, r5, r6, r8, r9, sl, fp, sp}^
 b1c:	732f6362 			; <UNDEFINED> instruction: 0x732f6362
 b20:	696c6474 	stmdbvs	ip!, {r2, r4, r5, r6, sl, sp, lr}^
 b24:	5f5f2f62 	svcpl	0x005f2f62
 b28:	78657461 	stmdavc	r5!, {r0, r5, r6, sl, ip, sp, lr}^
 b2c:	632e7469 			; <UNDEFINED> instruction: 0x632e7469
 b30:	6c5f5f00 	mrrcvs	15, 0, r5, pc, cr0	; <UNPREDICTABLE>
 b34:	5f636269 	svcpl	0x00636269
 b38:	696e6966 	stmdbvs	lr!, {r1, r2, r5, r6, r8, fp, sp, lr}^
 b3c:	73657200 	cmnvc	r5, #0, 4
 b40:	74726174 	ldrbtvc	r6, [r2], #-372	; 0xfffffe8c
 b44:	2f2e2e00 	svccs	0x002e2e00
 b48:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 b4c:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 b50:	2f2e2e2f 	svccs	0x002e2e2f
 b54:	6c77656e 	cfldr64vs	mvdx6, [r7], #-440	; 0xfffffe48
 b58:	6c2f6269 	sfmvs	f6, 4, [pc], #-420	; 9bc <_malloc_r+0x4ec>
 b5c:	2f636269 	svccs	0x00636269
 b60:	6c647473 	cfstrdvs	mvd7, [r4], #-460	; 0xfffffe34
 b64:	5f2f6269 	svcpl	0x002f6269
 b68:	6c61635f 	stclvs	3, cr6, [r1], #-380	; 0xfffffe84
 b6c:	74615f6c 	strbtvc	r5, [r1], #-3948	; 0xfffff094
 b70:	74697865 	strbtvc	r7, [r9], #-2149	; 0xfffff79b
 b74:	7200632e 	andvc	r6, r0, #-1207959552	; 0xb8000000
 b78:	73696765 	cmnvc	r9, #26476544	; 0x1940000
 b7c:	5f726574 	svcpl	0x00726574
 b80:	696e6966 	stmdbvs	lr!, {r1, r2, r5, r6, r8, fp, sp, lr}^
 b84:	73616c00 	cmnvc	r1, #0, 24
 b88:	5f007074 	svcpl	0x00007074
 b8c:	6574615f 	ldrbvs	r6, [r4, #-351]!	; 0xfffffea1
 b90:	5f746978 	svcpl	0x00746978
 b94:	75636572 	strbvc	r6, [r3, #-1394]!	; 0xfffffa8e
 b98:	76697372 			; <UNDEFINED> instruction: 0x76697372
 b9c:	756d5f65 	strbvc	r5, [sp, #-3941]!	; 0xfffff09b
 ba0:	00786574 	rsbseq	r6, r8, r4, ror r5
 ba4:	72747865 	rsbsvc	r7, r4, #6619136	; 0x650000
 ba8:	73690061 	cmnvc	r9, #97	; 0x61
 bac:	6300726c 	movwvs	r7, #620	; 0x26c
 bb0:	65727275 	ldrbvs	r7, [r2, #-629]!	; 0xfffffd8b
 bb4:	625f746e 	subsvs	r7, pc, #1845493760	; 0x6e000000
 bb8:	6e006b72 	vmovvs.16	d0[1], r6
 bbc:	73747865 	cmnvc	r4, #6619136	; 0x650000
 bc0:	7270007a 	rsbsvc	r0, r0, #122	; 0x7a
 bc4:	7a737665 	bvc	1cde560 <_bsl_base_address+0x1adc560>
 bc8:	616d5f00 	cmnvs	sp, r0, lsl #30
 bcc:	636f6c6c 	cmnvs	pc, #108, 24	; 0x6c00
 bd0:	6972745f 	ldmdbvs	r2!, {r0, r1, r2, r3, r4, r6, sl, ip, sp, lr}^
 bd4:	00725f6d 	rsbseq	r5, r2, sp, ror #30
 bd8:	6365725f 	cmnvs	r5, #-268435451	; 0xf0000005
 bdc:	6d69616c 	stfvse	f6, [r9, #-432]!	; 0xfffffe50
 be0:	6565725f 	strbvs	r7, [r5, #-607]!	; 0xfffffda1
 be4:	2e00746e 	cdpcs	4, 0, cr7, cr0, cr14, {3}
 be8:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 bec:	2f2e2e2f 	svccs	0x002e2e2f
 bf0:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 bf4:	656e2f2e 	strbvs	r2, [lr, #-3886]!	; 0xfffff0d2
 bf8:	62696c77 	rsbvs	r6, r9, #30464	; 0x7700
 bfc:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 c00:	65722f63 	ldrbvs	r2, [r2, #-3939]!	; 0xfffff09d
 c04:	2f746e65 	svccs	0x00746e65
 c08:	6e656572 	mcrvs	5, 3, r6, cr5, cr2, {3}
 c0c:	00632e74 	rsbeq	r2, r3, r4, ror lr
 c10:	73696874 	cmnvc	r9, #116, 16	; 0x740000
 c14:	00656e6f 	rsbeq	r6, r5, pc, ror #28
 c18:	61656c63 	cmnvs	r5, r3, ror #24
 c1c:	5f70756e 	svcpl	0x0070756e
 c20:	65756c67 	ldrbvs	r6, [r5, #-3175]!	; 0xfffff399
 c24:	78656e00 	stmdavc	r5!, {r9, sl, fp, sp, lr}^
 c28:	656e6f74 	strbvs	r6, [lr, #-3956]!	; 0xfffff08c
 c2c:	2f2e2e00 	svccs	0x002e2e00
 c30:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 c34:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 c38:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 c3c:	736f6c67 	cmnvc	pc, #26368	; 0x6700
 c40:	696c2f73 	stmdbvs	ip!, {r0, r1, r4, r5, r6, r8, r9, sl, fp, sp}^
 c44:	736f6e62 	cmnvc	pc, #1568	; 0x620
 c48:	732f7379 			; <UNDEFINED> instruction: 0x732f7379
 c4c:	2e6b7262 	cdpcs	2, 6, cr7, cr11, cr2, {3}
 c50:	4e470063 	cdpmi	0, 4, cr0, cr7, cr3, {3}
 c54:	31432055 	qdaddcc	r2, r5, r3
 c58:	30312037 	eorscc	r2, r1, r7, lsr r0
 c5c:	312e332e 			; <UNDEFINED> instruction: 0x312e332e
 c60:	32303220 	eorscc	r3, r0, #32, 4
 c64:	32363031 	eorscc	r3, r6, #49	; 0x31
 c68:	72282031 	eorvc	r2, r8, #49	; 0x31
 c6c:	61656c65 	cmnvs	r5, r5, ror #24
 c70:	20296573 	eorcs	r6, r9, r3, ror r5
 c74:	70636d2d 	rsbvc	r6, r3, sp, lsr #26
 c78:	72613d75 	rsbvc	r3, r1, #7488	; 0x1d40
 c7c:	6474376d 	ldrbtvs	r3, [r4], #-1901	; 0xfffff893
 c80:	2d20696d 			; <UNDEFINED> instruction: 0x2d20696d
 c84:	6f6c666d 	svcvs	0x006c666d
 c88:	612d7461 			; <UNDEFINED> instruction: 0x612d7461
 c8c:	733d6962 	teqvc	sp, #1605632	; 0x188000
 c90:	2074666f 	rsbscs	r6, r4, pc, ror #12
 c94:	72616d2d 	rsbvc	r6, r1, #2880	; 0xb40
 c98:	6d2d206d 	stcvs	0, cr2, [sp, #-436]!	; 0xfffffe4c
 c9c:	68637261 	stmdavs	r3!, {r0, r5, r6, r9, ip, sp, lr}^
 ca0:	6d72613d 	ldfvse	f6, [r2, #-244]!	; 0xffffff0c
 ca4:	20743476 	rsbscs	r3, r4, r6, ror r4
 ca8:	2d20672d 	stccs	7, cr6, [r0, #-180]!	; 0xffffff4c
 cac:	4f2d2067 	svcmi	0x002d2067
 cb0:	4f2d2032 	svcmi	0x002d2032
 cb4:	4f2d2032 	svcmi	0x002d2032
 cb8:	72700032 	rsbsvc	r0, r0, #50	; 0x32
 cbc:	685f7665 	ldmdavs	pc, {r0, r2, r5, r6, r9, sl, ip, sp, lr}^	; <UNPREDICTABLE>
 cc0:	5f706165 	svcpl	0x00706165
 cc4:	00646e65 	rsbeq	r6, r4, r5, ror #28
 cc8:	6975622f 	ldmdbvs	r5!, {r0, r1, r2, r3, r5, r9, sp, lr}^
 ccc:	6e2f646c 	cdpvs	4, 2, cr6, cr15, cr12, {3}
 cd0:	696c7765 	stmdbvs	ip!, {r0, r2, r5, r6, r8, r9, sl, ip, sp, lr}^
 cd4:	42702d62 	rsbsmi	r2, r0, #6272	; 0x1880
 cd8:	65643033 	strbvs	r3, [r4, #-51]!	; 0xffffffcd
 cdc:	77656e2f 	strbvc	r6, [r5, -pc, lsr #28]!
 ce0:	2d62696c 			; <UNDEFINED> instruction: 0x2d62696c
 ce4:	2e332e33 	mrccs	14, 1, r2, cr3, cr3, {1}
 ce8:	75622f30 	strbvc	r2, [r2, #-3888]!	; 0xfffff0d0
 cec:	2f646c69 	svccs	0x00646c69
 cf0:	2d6d7261 	sfmcs	f7, 2, [sp, #-388]!	; 0xfffffe7c
 cf4:	656e6f6e 	strbvs	r6, [lr, #-3950]!	; 0xfffff092
 cf8:	6261652d 	rsbvs	r6, r1, #188743680	; 0xb400000
 cfc:	696c2f69 	stmdbvs	ip!, {r0, r3, r5, r6, r8, r9, sl, fp, sp}^
 d00:	6f6c6762 	svcvs	0x006c6762
 d04:	6c2f7373 	stcvs	3, cr7, [pc], #-460	; b40 <_malloc_r+0x670>
 d08:	6f6e6269 	svcvs	0x006e6269
 d0c:	00737973 	rsbseq	r7, r3, r3, ror r9
 d10:	2e2f2e2e 	cdpcs	14, 2, cr2, cr15, cr14, {1}
 d14:	2e2e2f2e 	cdpcs	15, 2, cr2, cr14, cr14, {1}
 d18:	2f2e2e2f 	svccs	0x002e2e2f
 d1c:	6762696c 	strbvs	r6, [r2, -ip, ror #18]!
 d20:	73736f6c 	cmnvc	r3, #108, 30	; 0x1b0
 d24:	62696c2f 	rsbvs	r6, r9, #12032	; 0x2f00
 d28:	79736f6e 	ldmdbvc	r3!, {r1, r2, r3, r5, r6, r8, r9, sl, fp, sp, lr}^
 d2c:	655f2f73 	ldrbvs	r2, [pc, #-3955]	; fffffdc1 <__stack+0xdffff4e9>
 d30:	2e746978 			; <UNDEFINED> instruction: 0x2e746978
 d34:	Address 0x0000000000000d34 is out of bounds.


Disassembly of section .debug_loc:

00000000 <.debug_loc>:
	...
       8:	00140000 	andseq	r0, r4, r0
       c:	00010000 	andeq	r0, r1, r0
      10:	00001450 	andeq	r1, r0, r0, asr r4
      14:	00001700 	andeq	r1, r0, r0, lsl #14
      18:	51000100 	mrspl	r0, (UNDEF: 16)
      1c:	00000017 	andeq	r0, r0, r7, lsl r0
      20:	00000020 	andeq	r0, r0, r0, lsr #32
      24:	01f30004 	mvnseq	r0, r4
      28:	00009f50 	andeq	r9, r0, r0, asr pc
	...
      38:	000f0000 	andeq	r0, pc, r0
      3c:	00010000 	andeq	r0, r1, r0
      40:	00000f50 	andeq	r0, r0, r0, asr pc
      44:	00003400 	andeq	r3, r0, r0, lsl #8
      48:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
      58:	00000010 	andeq	r0, r0, r0, lsl r0
      5c:	00000014 	andeq	r0, r0, r4, lsl r0
      60:	00740005 	rsbseq	r0, r4, r5
      64:	149f2632 	ldrne	r2, [pc], #1586	; 6c <__do_global_dtors_aux+0x8>
      68:	18000000 	stmdane	r0, {}	; <UNPREDICTABLE>
      6c:	01000000 	mrseq	r0, (UNDEF: 0)
      70:	00005400 	andeq	r5, r0, r0, lsl #8
      74:	00000000 	andeq	r0, r0, r0
      78:	00010000 	andeq	r0, r1, r0
      7c:	01000000 	mrseq	r0, (UNDEF: 0)
      80:	00100001 	andseq	r0, r0, r1
      84:	00140000 	andseq	r0, r4, r0
      88:	00050000 	andeq	r0, r5, r0
      8c:	26320074 			; <UNDEFINED> instruction: 0x26320074
      90:	0000149f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
      94:	00002000 	andeq	r2, r0, r0
      98:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
      9c:	00000020 	andeq	r0, r0, r0, lsr #32
      a0:	00000028 	andeq	r0, r0, r8, lsr #32
      a4:	01740003 	cmneq	r4, r3
      a8:	0000289f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
      ac:	00003800 	andeq	r3, r0, r0, lsl #16
      b0:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
      c0:	00000001 	andeq	r0, r0, r1
      c4:	00000010 	andeq	r0, r0, r0, lsl r0
      c8:	00000014 	andeq	r0, r0, r4, lsl r0
      cc:	00760005 	rsbseq	r0, r6, r5
      d0:	149f2632 	ldrne	r2, [pc], #1586	; d8 <frame_dummy+0x30>
      d4:	3c000000 	stccc	0, cr0, [r0], {-0}
      d8:	01000000 	mrseq	r0, (UNDEF: 0)
      dc:	00485600 	subeq	r5, r8, r0, lsl #12
      e0:	004c0000 	subeq	r0, ip, r0
      e4:	00050000 	andeq	r0, r5, r0
      e8:	26320076 			; <UNDEFINED> instruction: 0x26320076
      ec:	00004c9f 	muleq	r0, pc, ip	; <UNPREDICTABLE>
      f0:	00007400 	andeq	r7, r0, r0, lsl #8
      f4:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
     100:	00000001 	andeq	r0, r0, r1
     104:	00010100 	andeq	r0, r1, r0, lsl #2
     108:	00000002 	andeq	r0, r0, r2
     10c:	00010100 	andeq	r0, r1, r0, lsl #2
     110:	00000010 	andeq	r0, r0, r0, lsl r0
     114:	00000020 	andeq	r0, r0, r0, lsr #32
     118:	9f300002 	svcls	0x00300002
     11c:	00000020 	andeq	r0, r0, r0, lsr #32
     120:	00000028 	andeq	r0, r0, r8, lsr #32
     124:	28540001 	ldmdacs	r4, {r0}^
     128:	30000000 	andcc	r0, r0, r0
     12c:	03000000 	movweq	r0, #0
     130:	9f7f7400 	svcls	0x007f7400
     134:	00000030 	andeq	r0, r0, r0, lsr r0
     138:	00000038 	andeq	r0, r0, r8, lsr r0
     13c:	48540001 	ldmdami	r4, {r0}^
     140:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
     144:	02000000 	andeq	r0, r0, #0
     148:	589f3000 	ldmpl	pc, {ip, sp}	; <UNPREDICTABLE>
     14c:	60000000 	andvs	r0, r0, r0
     150:	01000000 	mrseq	r0, (UNDEF: 0)
     154:	00605400 	rsbeq	r5, r0, r0, lsl #8
     158:	00680000 	rsbeq	r0, r8, r0
     15c:	00030000 	andeq	r0, r3, r0
     160:	689f7f74 	ldmvs	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, sp, lr}	; <UNPREDICTABLE>
     164:	70000000 	andvc	r0, r0, r0
     168:	01000000 	mrseq	r0, (UNDEF: 0)
     16c:	00005400 	andeq	r5, r0, r0, lsl #8
	...
     17c:	00000020 	andeq	r0, r0, r0, lsr #32
     180:	00000030 	andeq	r0, r0, r0, lsr r0
     184:	30500001 	subscc	r0, r0, r1
     188:	33000000 	movwcc	r0, #0
     18c:	01000000 	mrseq	r0, (UNDEF: 0)
     190:	00335100 	eorseq	r5, r3, r0, lsl #2
     194:	00400000 	subeq	r0, r0, r0
     198:	00040000 	andeq	r0, r4, r0
     19c:	9f5001f3 	svcls	0x005001f3
	...
     1b0:	00100000 	andseq	r0, r0, r0
     1b4:	00010000 	andeq	r0, r1, r0
     1b8:	00001050 	andeq	r1, r0, r0, asr r0
     1bc:	00001300 	andeq	r1, r0, r0, lsl #6
     1c0:	51000100 	mrspl	r0, (UNDEF: 16)
     1c4:	00000013 	andeq	r0, r0, r3, lsl r0
     1c8:	00000020 	andeq	r0, r0, r0, lsr #32
     1cc:	01f30004 	mvnseq	r0, r4
     1d0:	00009f50 	andeq	r9, r0, r0, asr pc
	...
     1f8:	00000023 	andeq	r0, r0, r3, lsr #32
     1fc:	23500001 	cmpcs	r0, #1
     200:	88000000 	stmdahi	r0, {}	; <UNPREDICTABLE>
     204:	01000000 	mrseq	r0, (UNDEF: 0)
     208:	00885700 	addeq	r5, r8, r0, lsl #14
     20c:	008c0000 	addeq	r0, ip, r0
     210:	00040000 	andeq	r0, r4, r0
     214:	9f5001f3 	svcls	0x005001f3
     218:	0000008c 	andeq	r0, r0, ip, lsl #1
     21c:	000000a7 	andeq	r0, r0, r7, lsr #1
     220:	a7500001 	ldrbge	r0, [r0, -r1]
     224:	1c000000 	stcne	0, cr0, [r0], {-0}
     228:	01000001 	tsteq	r0, r1
     22c:	011c5700 	tsteq	ip, r0, lsl #14
     230:	01280000 			; <UNDEFINED> instruction: 0x01280000
     234:	00010000 	andeq	r0, r1, r0
     238:	00012850 	andeq	r2, r1, r0, asr r8
     23c:	00013400 	andeq	r3, r1, r0, lsl #8
     240:	57000100 	strpl	r0, [r0, -r0, lsl #2]
     244:	00000134 	andeq	r0, r0, r4, lsr r1
     248:	00000138 	andeq	r0, r0, r8, lsr r1
     24c:	01f30004 	mvnseq	r0, r4
     250:	01389f50 	teqeq	r8, r0, asr pc
     254:	048c0000 	streq	r0, [ip], #0
     258:	00010000 	andeq	r0, r1, r0
     25c:	00048c57 	andeq	r8, r4, r7, asr ip
     260:	00049000 	andeq	r9, r4, r0
     264:	f3000400 	vshl.u8	d0, d0, d0
     268:	909f5001 	addsls	r5, pc, r1
     26c:	c8000004 	stmdagt	r0, {r2}
     270:	01000004 	tsteq	r0, r4
     274:	04c85700 	strbeq	r5, [r8], #1792	; 0x700
     278:	04cc0000 	strbeq	r0, [ip], #0
     27c:	00040000 	andeq	r0, r4, r0
     280:	9f5001f3 	svcls	0x005001f3
     284:	000004cc 	andeq	r0, r0, ip, asr #9
     288:	000007f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     28c:	00570001 	subseq	r0, r7, r1
	...
     2a4:	00002300 	andeq	r2, r0, r0, lsl #6
     2a8:	51000100 	mrspl	r0, (UNDEF: 16)
     2ac:	00000023 	andeq	r0, r0, r3, lsr #32
     2b0:	0000008c 	andeq	r0, r0, ip, lsl #1
     2b4:	01f30004 	mvnseq	r0, r4
     2b8:	008c9f51 	addeq	r9, ip, r1, asr pc
     2bc:	00980000 	addseq	r0, r8, r0
     2c0:	00010000 	andeq	r0, r1, r0
     2c4:	00009851 	andeq	r9, r0, r1, asr r8
     2c8:	0000a000 	andeq	sl, r0, r0
     2cc:	73000300 	movwvc	r0, #768	; 0x300
     2d0:	00a09f75 	adceq	r9, r0, r5, ror pc
     2d4:	07f00000 	ldrbeq	r0, [r0, r0]!
     2d8:	00040000 	andeq	r0, r4, r0
     2dc:	9f5101f3 	svcls	0x005101f3
	...
     2e8:	01000000 	mrseq	r0, (UNDEF: 0)
     2ec:	00000001 	andeq	r0, r0, r1
	...
     2f8:	00010000 	andeq	r0, r1, r0
	...
     314:	003c0000 	eorseq	r0, ip, r0
     318:	00780000 	rsbseq	r0, r8, r0
     31c:	00010000 	andeq	r0, r1, r0
     320:	00007854 	andeq	r7, r0, r4, asr r8
     324:	00007c00 	andeq	r7, r0, r0, lsl #24
     328:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
     32c:	00e09f78 	rsceq	r9, r0, r8, ror pc
     330:	011c0000 	tsteq	ip, r0
     334:	00010000 	andeq	r0, r1, r0
     338:	00013853 	andeq	r3, r1, r3, asr r8
     33c:	00014800 	andeq	r4, r1, r0, lsl #16
     340:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
     344:	0000014c 	andeq	r0, r0, ip, asr #2
     348:	000001d4 	ldrdeq	r0, [r0], -r4
     34c:	84540001 	ldrbhi	r0, [r4], #-1
     350:	b0000003 	andlt	r0, r0, r3
     354:	01000003 	tsteq	r0, r3
     358:	03c05400 	biceq	r5, r0, #0, 8
     35c:	043c0000 	ldrteq	r0, [ip], #-0
     360:	00010000 	andeq	r0, r1, r0
     364:	00043c56 	andeq	r3, r4, r6, asr ip
     368:	00045800 	andeq	r5, r4, r0, lsl #16
     36c:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
     370:	00000458 	andeq	r0, r0, r8, asr r4
     374:	0000045c 	andeq	r0, r0, ip, asr r4
     378:	78740003 	ldmdavc	r4!, {r0, r1}^
     37c:	00045c9f 	muleq	r4, pc, ip	; <UNPREDICTABLE>
     380:	00047400 	andeq	r7, r4, r0, lsl #8
     384:	03000500 	movweq	r0, #1280	; 0x500
     388:	20000468 	andcs	r0, r0, r8, ror #8
     38c:	00000490 	muleq	r0, r0, r4
     390:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
     394:	b0530001 	subslt	r0, r3, r1
     398:	c8000004 	stmdagt	r0, {r2}
     39c:	03000004 	movweq	r0, #4
     3a0:	9f787400 	svcls	0x00787400
     3a4:	000004c8 	andeq	r0, r0, r8, asr #9
     3a8:	000004cc 	andeq	r0, r0, ip, asr #9
     3ac:	78700003 	ldmdavc	r0!, {r0, r1}^
     3b0:	0004cc9f 	muleq	r4, pc, ip	; <UNPREDICTABLE>
     3b4:	00053800 	andeq	r3, r5, r0, lsl #16
     3b8:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
     3bc:	0000055c 	andeq	r0, r0, ip, asr r5
     3c0:	000005a0 	andeq	r0, r0, r0, lsr #11
     3c4:	ac560001 	mrrcge	0, 0, r0, r6, cr1
     3c8:	e0000005 	and	r0, r0, r5
     3cc:	01000005 	tsteq	r0, r5
     3d0:	05e05400 	strbeq	r5, [r0, #1024]!	; 0x400
     3d4:	05e40000 	strbeq	r0, [r4, #0]!
     3d8:	00030000 	andeq	r0, r3, r0
     3dc:	e49f7874 	ldr	r7, [pc], #2164	; 3e4 <__libc_fini_array+0x20>
     3e0:	f8000005 			; <UNDEFINED> instruction: 0xf8000005
     3e4:	01000005 	tsteq	r0, r5
     3e8:	06605400 	strbteq	r5, [r0], -r0, lsl #8
     3ec:	06c40000 	strbeq	r0, [r4], r0
     3f0:	00010000 	andeq	r0, r1, r0
     3f4:	0006f456 	andeq	pc, r6, r6, asr r4	; <UNPREDICTABLE>
     3f8:	00072800 	andeq	r2, r7, r0, lsl #16
     3fc:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
     400:	0000074c 	andeq	r0, r0, ip, asr #14
     404:	00000768 	andeq	r0, r0, r8, ror #14
     408:	a4540001 	ldrbge	r0, [r4], #-1
     40c:	c8000007 	stmdagt	r0, {r0, r1, r2}
     410:	01000007 	tsteq	r0, r7
     414:	07d85400 	ldrbeq	r5, [r8, r0, lsl #8]
     418:	07f00000 	ldrbeq	r0, [r0, r0]!
     41c:	00010000 	andeq	r0, r1, r0
     420:	00000056 	andeq	r0, r0, r6, asr r0
	...
     454:	58000000 	stmdapl	r0, {}	; <UNPREDICTABLE>
     458:	5c000000 	stcpl	0, cr0, [r0], {-0}
     45c:	01000000 	mrseq	r0, (UNDEF: 0)
     460:	005c5300 	subseq	r5, ip, r0, lsl #6
     464:	00740000 	rsbseq	r0, r4, r0
     468:	00070000 	andeq	r0, r7, r0
     46c:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     470:	ec9f1afc 	vldmia	pc, {s2-s253}
     474:	00000000 	andeq	r0, r0, r0
     478:	01000001 	tsteq	r0, r1
     47c:	01085200 	mrseq	r5, R8_fiq
     480:	011c0000 	tsteq	ip, r0
     484:	00010000 	andeq	r0, r1, r0
     488:	00016452 	andeq	r6, r1, r2, asr r4
     48c:	00019c00 	andeq	r9, r1, r0, lsl #24
     490:	51000100 	mrspl	r0, (UNDEF: 16)
     494:	0000019c 	muleq	r0, ip, r1
     498:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
     49c:	04740007 	ldrbteq	r0, [r4], #-7
     4a0:	1afc0906 	bne	fff028c0 <__stack+0xdff01fe8>
     4a4:	0003cc9f 	muleq	r3, pc, ip	; <UNPREDICTABLE>
     4a8:	0003e000 	andeq	lr, r3, r0
     4ac:	53000100 	movwpl	r0, #256	; 0x100
     4b0:	000003e8 	andeq	r0, r0, r8, ror #7
     4b4:	00000433 	andeq	r0, r0, r3, lsr r4
     4b8:	3c530001 	mrrccc	0, 0, r0, r3, cr1
     4bc:	40000004 	andmi	r0, r0, r4
     4c0:	01000004 	tsteq	r0, r4
     4c4:	04405100 	strbeq	r5, [r0], #-256	; 0xffffff00
     4c8:	04500000 	ldrbeq	r0, [r0], #-0
     4cc:	00070000 	andeq	r0, r7, r0
     4d0:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     4d4:	909f1afc 			; <UNDEFINED> instruction: 0x909f1afc
     4d8:	9c000004 	stcls	0, cr0, [r0], {4}
     4dc:	01000004 	tsteq	r0, r4
     4e0:	049c5200 	ldreq	r5, [ip], #512	; 0x200
     4e4:	04b00000 	ldrteq	r0, [r0], #0
     4e8:	00070000 	andeq	r0, r7, r0
     4ec:	09060473 	stmdbeq	r6, {r0, r1, r4, r5, r6, sl}
     4f0:	b09f1afc 			; <UNDEFINED> instruction: 0xb09f1afc
     4f4:	b8000004 	stmdalt	r0, {r2}
     4f8:	07000004 	streq	r0, [r0, -r4]
     4fc:	067c7400 	ldrbteq	r7, [ip], -r0, lsl #8
     500:	9f1afc09 	svcls	0x001afc09
     504:	000004cc 	andeq	r0, r0, ip, asr #9
     508:	00000524 	andeq	r0, r0, r4, lsr #10
     50c:	70510001 	subsvc	r0, r1, r1
     510:	78000005 	stmdavc	r0, {r0, r2}
     514:	01000005 	tsteq	r0, r5
     518:	05785300 	ldrbeq	r5, [r8, #-768]!	; 0xfffffd00
     51c:	05880000 	streq	r0, [r8]
     520:	00070000 	andeq	r0, r7, r0
     524:	09060476 	stmdbeq	r6, {r1, r2, r4, r5, r6, sl}
     528:	ac9f1afc 	vldmiage	pc, {s2-s253}
     52c:	db000005 	blle	548 <_malloc_r+0x78>
     530:	01000005 	tsteq	r0, r5
     534:	05e45100 	strbeq	r5, [r4, #256]!	; 0x100
     538:	05f80000 	ldrbeq	r0, [r8, #0]!
     53c:	00010000 	andeq	r0, r1, r0
     540:	0006f451 	andeq	pc, r6, r1, asr r4	; <UNPREDICTABLE>
     544:	0006f800 	andeq	pc, r6, r0, lsl #16
     548:	51000100 	mrspl	r0, (UNDEF: 16)
     54c:	000006f8 	strdeq	r0, [r0], -r8
     550:	00000708 	andeq	r0, r0, r8, lsl #14
     554:	04740007 	ldrbteq	r0, [r4], #-7
     558:	1afc0906 	bne	fff02978 <__stack+0xdff020a0>
     55c:	00070c9f 	muleq	r7, pc, ip	; <UNPREDICTABLE>
     560:	00072800 	andeq	r2, r7, r0, lsl #16
     564:	51000100 	mrspl	r0, (UNDEF: 16)
     568:	0000074c 	andeq	r0, r0, ip, asr #14
     56c:	00000768 	andeq	r0, r0, r8, ror #14
     570:	a4510001 	ldrbge	r0, [r1], #-1
     574:	c8000007 	stmdagt	r0, {r0, r1, r2}
     578:	01000007 	tsteq	r0, r7
     57c:	00005100 	andeq	r5, r0, r0, lsl #2
	...
     598:	00010100 	andeq	r0, r1, r0, lsl #2
	...
     5a8:	00d00000 	sbcseq	r0, r0, r0
     5ac:	01180000 	tsteq	r8, r0
     5b0:	00010000 	andeq	r0, r1, r0
     5b4:	0001485e 	andeq	r4, r1, lr, asr r8
     5b8:	0001d400 	andeq	sp, r1, r0, lsl #8
     5bc:	5c000100 	stfpls	f0, [r0], {-0}
     5c0:	00000384 	andeq	r0, r0, r4, lsl #7
     5c4:	00000394 	muleq	r0, r4, r3
     5c8:	9c5c0001 	mrrcls	0, 0, r0, ip, cr1
     5cc:	bc000003 	stclt	0, cr0, [r0], {3}
     5d0:	01000003 	tsteq	r0, r3
     5d4:	03bc5c00 			; <UNDEFINED> instruction: 0x03bc5c00
     5d8:	03f80000 	mvnseq	r0, #0
     5dc:	00010000 	andeq	r0, r1, r0
     5e0:	00043c54 	andeq	r3, r4, r4, asr ip
     5e4:	00045300 	andeq	r5, r4, r0, lsl #6
     5e8:	5c000100 	stfpls	f0, [r0], {-0}
     5ec:	00000490 	muleq	r0, r0, r4
     5f0:	000004bb 			; <UNDEFINED> instruction: 0x000004bb
     5f4:	cc5e0001 	mrrcgt	0, 0, r0, lr, cr1
     5f8:	38000004 	stmdacc	r0, {r2}
     5fc:	01000005 	tsteq	r0, r5
     600:	055c5c00 	ldrbeq	r5, [ip, #-3072]	; 0xfffff400
     604:	05600000 	strbeq	r0, [r0, #-0]!
     608:	00010000 	andeq	r0, r1, r0
     60c:	00056054 	andeq	r6, r5, r4, asr r0
     610:	00056800 	andeq	r6, r5, r0, lsl #16
     614:	74000300 	strvc	r0, [r0], #-768	; 0xfffffd00
     618:	05689f7f 	strbeq	r9, [r8, #-3967]!	; 0xfffff081
     61c:	05740000 	ldrbeq	r0, [r4, #-0]!
     620:	00010000 	andeq	r0, r1, r0
     624:	0005ac54 	andeq	sl, r5, r4, asr ip
     628:	0005b400 	andeq	fp, r5, r0, lsl #8
     62c:	5c000100 	stfpls	f0, [r0], {-0}
     630:	000005e4 	andeq	r0, r0, r4, ror #11
     634:	000005f8 	strdeq	r0, [r0], -r8
     638:	605c0001 	subsvs	r0, ip, r1
     63c:	c4000006 	strgt	r0, [r0], #-6
     640:	01000006 	tsteq	r0, r6
     644:	06f45400 	ldrbteq	r5, [r4], r0, lsl #8
     648:	07280000 	streq	r0, [r8, -r0]!
     64c:	00010000 	andeq	r0, r1, r0
     650:	00074c5c 	andeq	r4, r7, ip, asr ip
     654:	00076800 	andeq	r6, r7, r0, lsl #16
     658:	5c000100 	stfpls	f0, [r0], {-0}
     65c:	000007a4 	andeq	r0, r0, r4, lsr #15
     660:	000007c8 	andeq	r0, r0, r8, asr #15
     664:	d85c0001 	ldmdale	ip, {r0}^
     668:	f0000007 			; <UNDEFINED> instruction: 0xf0000007
     66c:	01000007 	tsteq	r0, r7
     670:	00005400 	andeq	r5, r0, r0, lsl #8
	...
     688:	000000e0 	andeq	r0, r0, r0, ror #1
     68c:	0000011c 	andeq	r0, r0, ip, lsl r1
     690:	b4500001 	ldrblt	r0, [r0], #-1
     694:	bc000003 	stclt	0, cr0, [r0], {3}
     698:	01000003 	tsteq	r0, r3
     69c:	03bc5900 			; <UNDEFINED> instruction: 0x03bc5900
     6a0:	04200000 	strteq	r0, [r0], #-0
     6a4:	00010000 	andeq	r0, r1, r0
     6a8:	00049050 	andeq	r9, r4, r0, asr r0
     6ac:	0004b400 	andeq	fp, r4, r0, lsl #8
     6b0:	50000100 	andpl	r0, r0, r0, lsl #2
     6b4:	0000055c 	andeq	r0, r0, ip, asr r5
     6b8:	00000590 	muleq	r0, r0, r5
     6bc:	60500001 	subsvs	r0, r0, r1
     6c0:	c4000006 	strgt	r0, [r0], #-6
     6c4:	01000006 	tsteq	r0, r6
     6c8:	07d85000 	ldrbeq	r5, [r8, r0]
     6cc:	07f00000 	ldrbeq	r0, [r0, r0]!
     6d0:	00010000 	andeq	r0, r1, r0
     6d4:	00000050 	andeq	r0, r0, r0, asr r0
	...
     6e0:	00040000 	andeq	r0, r4, r0
     6e4:	00043300 	andeq	r3, r4, r0, lsl #6
     6e8:	51000100 	mrspl	r0, (UNDEF: 16)
     6ec:	000005b0 			; <UNDEFINED> instruction: 0x000005b0
     6f0:	000005db 	ldrdeq	r0, [r0], -fp
     6f4:	00520001 	subseq	r0, r2, r1
	...
     73c:	ec000000 	stc	0, cr0, [r0], {-0}
     740:	00000000 	andeq	r0, r0, r0
     744:	01000001 	tsteq	r0, r1
     748:	010c5100 	mrseq	r5, (UNDEF: 28)
     74c:	011c0000 	tsteq	ip, r0
     750:	00010000 	andeq	r0, r1, r0
     754:	00016851 	andeq	r6, r1, r1, asr r8
     758:	00019400 	andeq	r9, r1, r0, lsl #8
     75c:	53000100 	movwpl	r0, #256	; 0x100
     760:	00000194 	muleq	r0, r4, r1
     764:	0000019c 	muleq	r0, ip, r1
     768:	00710006 	rsbseq	r0, r1, r6
     76c:	9f1c0075 	svcls	0x001c0075
     770:	0000019c 	muleq	r0, ip, r1
     774:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
     778:	0474000a 	ldrbteq	r0, [r4], #-10
     77c:	1afc0906 	bne	fff02b9c <__stack+0xdff022c4>
     780:	9f1c0075 	svcls	0x001c0075
     784:	000001f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     788:	00000204 	andeq	r0, r0, r4, lsl #4
     78c:	04530001 	ldrbeq	r0, [r3], #-1
     790:	48000002 	stmdami	r0, {r1}
     794:	06000003 	streq	r0, [r0], -r3
     798:	75007600 	strvc	r7, [r0, #-1536]	; 0xfffffa00
     79c:	489f1c00 	ldmmi	pc, {sl, fp, ip}	; <UNPREDICTABLE>
     7a0:	64000003 	strvs	r0, [r0], #-3
     7a4:	01000003 	tsteq	r0, r3
     7a8:	03cc5300 	biceq	r5, ip, #0, 6
     7ac:	03e00000 	mvneq	r0, #0
     7b0:	00010000 	andeq	r0, r1, r0
     7b4:	0003ec52 	andeq	lr, r3, r2, asr ip
     7b8:	00043300 	andeq	r3, r4, r0, lsl #6
     7bc:	52000100 	andpl	r0, r0, #0, 2
     7c0:	0000043c 	andeq	r0, r0, ip, lsr r4
     7c4:	00000444 	andeq	r0, r0, r4, asr #8
     7c8:	44530001 	ldrbmi	r0, [r3], #-1
     7cc:	50000004 	andpl	r0, r0, r4
     7d0:	0a000004 	beq	7e8 <_malloc_r+0x318>
     7d4:	06047400 	streq	r7, [r4], -r0, lsl #8
     7d8:	751afc09 	ldrvc	pc, [sl, #-3081]	; 0xfffff3f7
     7dc:	5c9f1c00 	ldcpl	12, cr1, [pc], {0}
     7e0:	64000004 	strvs	r0, [r0], #-4
     7e4:	01000004 	tsteq	r0, r4
     7e8:	04905300 	ldreq	r5, [r0], #768	; 0x300
     7ec:	04940000 	ldreq	r0, [r4], #0
     7f0:	00010000 	andeq	r0, r1, r0
     7f4:	00049451 	andeq	r9, r4, r1, asr r4
     7f8:	00049c00 	andeq	r9, r4, r0, lsl #24
     7fc:	72000600 	andvc	r0, r0, #0, 12
     800:	1c007500 	cfstr32ne	mvfx7, [r0], {-0}
     804:	00049c9f 	muleq	r4, pc, ip	; <UNPREDICTABLE>
     808:	0004b000 	andeq	fp, r4, r0
     80c:	73000a00 	movwvc	r0, #2560	; 0xa00
     810:	fc090604 	stc2	6, cr0, [r9], {4}
     814:	1c00751a 	cfstr32ne	mvfx7, [r0], {26}
     818:	0004b09f 	muleq	r4, pc, r0	; <UNPREDICTABLE>
     81c:	0004b800 	andeq	fp, r4, r0, lsl #16
     820:	74000a00 	strvc	r0, [r0], #-2560	; 0xfffff600
     824:	fc09067c 	stc2	6, cr0, [r9], {124}	; 0x7c
     828:	1c00751a 	cfstr32ne	mvfx7, [r0], {26}
     82c:	0004cc9f 	muleq	r4, pc, ip	; <UNPREDICTABLE>
     830:	0004d400 	andeq	sp, r4, r0, lsl #8
     834:	53000100 	movwpl	r0, #256	; 0x100
     838:	000004d4 	ldrdeq	r0, [r0], -r4
     83c:	00000524 	andeq	r0, r0, r4, lsr #10
     840:	00710006 	rsbseq	r0, r1, r6
     844:	9f1c0075 	svcls	0x001c0075
     848:	00000570 	andeq	r0, r0, r0, ror r5
     84c:	0000057c 	andeq	r0, r0, ip, ror r5
     850:	7c520001 	mrrcvc	0, 0, r0, r2, cr1
     854:	88000005 	stmdahi	r0, {r0, r2}
     858:	0a000005 	beq	874 <_malloc_r+0x3a4>
     85c:	06047600 	streq	r7, [r4], -r0, lsl #12
     860:	751afc09 	ldrvc	pc, [sl, #-3081]	; 0xfffff3f7
     864:	ac9f1c00 	ldcge	12, cr1, [pc], {0}
     868:	db000005 	blle	884 <_malloc_r+0x3b4>
     86c:	01000005 	tsteq	r0, r5
     870:	05e45300 	strbeq	r5, [r4, #768]!	; 0x300
     874:	05f80000 	ldrbeq	r0, [r8, #0]!
     878:	00060000 	andeq	r0, r6, r0
     87c:	00750071 	rsbseq	r0, r5, r1, ror r0
     880:	06089f1c 			; <UNDEFINED> instruction: 0x06089f1c
     884:	06600000 	strbteq	r0, [r0], -r0
     888:	00060000 	andeq	r0, r6, r0
     88c:	00750076 	rsbseq	r0, r5, r6, ror r0
     890:	06c49f1c 			; <UNDEFINED> instruction: 0x06c49f1c
     894:	06f40000 	ldrbteq	r0, [r4], r0
     898:	00060000 	andeq	r0, r6, r0
     89c:	00750076 	rsbseq	r0, r5, r6, ror r0
     8a0:	06f49f1c 	usateq	r9, #20, ip, lsl #30
     8a4:	06f80000 	ldrbteq	r0, [r8], r0
     8a8:	00060000 	andeq	r0, r6, r0
     8ac:	00750071 	rsbseq	r0, r5, r1, ror r0
     8b0:	06f89f1c 	usateq	r9, #24, ip, lsl #30
     8b4:	07080000 	streq	r0, [r8, -r0]
     8b8:	000a0000 	andeq	r0, sl, r0
     8bc:	09060474 	stmdbeq	r6, {r2, r4, r5, r6, sl}
     8c0:	00751afc 	ldrshteq	r1, [r5], #-172	; 0xffffff54
     8c4:	070c9f1c 	smladeq	ip, ip, pc, r9	; <UNPREDICTABLE>
     8c8:	07280000 	streq	r0, [r8, -r0]!
     8cc:	00060000 	andeq	r0, r6, r0
     8d0:	00750071 	rsbseq	r0, r5, r1, ror r0
     8d4:	07449f1c 	smlaldeq	r9, r4, ip, pc	; <UNPREDICTABLE>
     8d8:	074c0000 	strbeq	r0, [ip, -r0]
     8dc:	00060000 	andeq	r0, r6, r0
     8e0:	00750076 	rsbseq	r0, r5, r6, ror r0
     8e4:	074c9f1c 	smlaldeq	r9, ip, ip, pc	; <UNPREDICTABLE>
     8e8:	07680000 	strbeq	r0, [r8, -r0]!
     8ec:	00060000 	andeq	r0, r6, r0
     8f0:	00750071 	rsbseq	r0, r5, r1, ror r0
     8f4:	07889f1c 	usada8eq	r8, ip, pc, r9	; <UNPREDICTABLE>
     8f8:	07a40000 	streq	r0, [r4, r0]!
     8fc:	00060000 	andeq	r0, r6, r0
     900:	00750076 	rsbseq	r0, r5, r6, ror r0
     904:	07a49f1c 			; <UNDEFINED> instruction: 0x07a49f1c
     908:	07c80000 	strbeq	r0, [r8, r0]
     90c:	00060000 	andeq	r0, r6, r0
     910:	00750071 	rsbseq	r0, r5, r1, ror r0
     914:	00009f1c 	andeq	r9, r0, ip, lsl pc
	...
     924:	01940000 	orrseq	r0, r4, r0
     928:	01980000 	orrseq	r0, r8, r0
     92c:	00010000 	andeq	r0, r1, r0
     930:	00019853 	andeq	r9, r1, r3, asr r8
     934:	0001c000 	andeq	ip, r1, r0
     938:	73000300 	movwvc	r0, #768	; 0x300
     93c:	04ec9f7f 	strbteq	r9, [ip], #3967	; 0xf7f
     940:	05000000 	streq	r0, [r0, #-0]
     944:	00010000 	andeq	r0, r1, r0
     948:	0006f453 	andeq	pc, r6, r3, asr r4	; <UNPREDICTABLE>
     94c:	00070000 	andeq	r0, r7, r0
     950:	53000100 	movwpl	r0, #256	; 0x100
	...
     960:	00010100 	andeq	r0, r1, r0, lsl #2
     964:	00000001 	andeq	r0, r0, r1
     968:	00020200 	andeq	r0, r2, r0, lsl #4
     96c:	00010000 	andeq	r0, r1, r0
     970:	01cc0000 	biceq	r0, ip, r0
     974:	022c0000 	eoreq	r0, ip, #0
     978:	00010000 	andeq	r0, r1, r0
     97c:	00038451 	andeq	r8, r3, r1, asr r4
     980:	00039000 	andeq	r9, r3, r0
     984:	51000100 	mrspl	r0, (UNDEF: 16)
     988:	00000390 	muleq	r0, r0, r3
     98c:	0000039c 	muleq	r0, ip, r3
     990:	73310005 	teqvc	r1, #5
     994:	9c9f2400 	cfldrsls	mvf2, [pc], {0}
     998:	a4000003 	strge	r0, [r0], #-3
     99c:	01000003 	tsteq	r0, r3
     9a0:	03ac5100 			; <UNDEFINED> instruction: 0x03ac5100
     9a4:	04000000 	streq	r0, [r0], #-0
     9a8:	00010000 	andeq	r0, r1, r0
     9ac:	00055c51 	andeq	r5, r5, r1, asr ip
     9b0:	00058400 	andeq	r8, r5, r0, lsl #8
     9b4:	51000100 	mrspl	r0, (UNDEF: 16)
     9b8:	00000660 	andeq	r0, r0, r0, ror #12
     9bc:	00000684 	andeq	r0, r0, r4, lsl #13
     9c0:	84510001 	ldrbhi	r0, [r1], #-1
     9c4:	88000006 	stmdahi	r0, {r1, r2}
     9c8:	05000006 	streq	r0, [r0, #-6]
     9cc:	31007100 	mrscc	r7, (UNDEF: 16)
     9d0:	06889f24 	streq	r9, [r8], r4, lsr #30
     9d4:	06b00000 	ldrteq	r0, [r0], r0
     9d8:	00010000 	andeq	r0, r1, r0
     9dc:	0006b851 	andeq	fp, r6, r1, asr r8
     9e0:	0006c400 	andeq	ip, r6, r0, lsl #8
     9e4:	51000100 	mrspl	r0, (UNDEF: 16)
     9e8:	000007d8 	ldrdeq	r0, [r0], -r8
     9ec:	000007f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     9f0:	00510001 	subseq	r0, r1, r1
     9f4:	00000000 	andeq	r0, r0, r0
     9f8:	02000000 	andeq	r0, r0, #0
     9fc:	00000000 	andeq	r0, r0, r0
     a00:	b0000000 	andlt	r0, r0, r0
     a04:	fc000003 	stc2	0, cr0, [r0], {3}
     a08:	01000003 	tsteq	r0, r3
     a0c:	055c5c00 	ldrbeq	r5, [ip, #-3072]	; 0xfffff400
     a10:	059b0000 	ldreq	r0, [fp]
     a14:	00010000 	andeq	r0, r1, r0
     a18:	0006605c 	andeq	r6, r6, ip, asr r0
     a1c:	0006c000 	andeq	ip, r6, r0
     a20:	5c000100 	stfpls	f0, [r0], {-0}
     a24:	000007d8 	ldrdeq	r0, [r0], -r8
     a28:	000007f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
     a2c:	005c0001 	subseq	r0, ip, r1
     a30:	00000000 	andeq	r0, r0, r0
     a34:	02000000 	andeq	r0, r0, #0
     a38:	02000200 	andeq	r0, r0, #0, 4
     a3c:	01000000 	mrseq	r0, (UNDEF: 0)
     a40:	00000000 	andeq	r0, r0, r0
     a44:	00005800 	andeq	r5, r0, r0, lsl #16
     a48:	00007b00 	andeq	r7, r0, r0, lsl #22
     a4c:	51000100 	mrspl	r0, (UNDEF: 16)
     a50:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
     a54:	000001c0 	andeq	r0, r0, r0, asr #3
     a58:	08510001 	ldmdaeq	r1, {r0}^
     a5c:	38000004 	stmdacc	r0, {r2}
     a60:	01000004 	tsteq	r0, r4
     a64:	04985400 	ldreq	r5, [r8], #1024	; 0x400
     a68:	04bb0000 	ldrteq	r0, [fp], #0
     a6c:	00010000 	andeq	r0, r1, r0
     a70:	0004f85c 	andeq	pc, r4, ip, asr r8	; <UNPREDICTABLE>
     a74:	00053800 	andeq	r3, r5, r0, lsl #16
     a78:	50000100 	andpl	r0, r0, r0, lsl #2
     a7c:	0000058c 	andeq	r0, r0, ip, lsl #11
     a80:	0000059b 	muleq	r0, fp, r5
     a84:	f4530001 			; <UNDEFINED> instruction: 0xf4530001
     a88:	0c000006 	stceq	0, cr0, [r0], {6}
     a8c:	01000007 	tsteq	r0, r7
     a90:	00005000 	andeq	r5, r0, r0
     a94:	00000000 	andeq	r0, r0, r0
     a98:	00010000 	andeq	r0, r1, r0
     a9c:	00010000 	andeq	r0, r1, r0
	...
     aa8:	00000001 	andeq	r0, r0, r1
     aac:	00000058 	andeq	r0, r0, r8, asr r0
     ab0:	00000068 	andeq	r0, r0, r8, rrx
     ab4:	68520001 	ldmdavs	r2, {r0}^
     ab8:	7b000000 	blvc	ac0 <_malloc_r+0x5f0>
     abc:	02000000 	andeq	r0, r0, #0
     ac0:	080c7100 	stmdaeq	ip, {r8, ip, sp, lr}
     ac4:	14000004 	strne	r0, [r0], #-4
     ac8:	01000004 	tsteq	r0, r4
     acc:	04145c00 	ldreq	r5, [r4], #-3072	; 0xfffff400
     ad0:	04180000 	ldreq	r0, [r8], #-0
     ad4:	00020000 	andeq	r0, r2, r0
     ad8:	04940c74 	ldreq	r0, [r4], #3188	; 0xc74
     adc:	04a80000 	strteq	r0, [r8], #0
     ae0:	00010000 	andeq	r0, r1, r0
     ae4:	0004a851 	andeq	sl, r4, r1, asr r8
     ae8:	0004bb00 	andeq	fp, r4, r0, lsl #22
     aec:	7c000200 	sfmvc	f0, 4, [r0], {-0}
     af0:	0004f80c 	andeq	pc, r4, ip, lsl #16
     af4:	00053800 	andeq	r3, r5, r0, lsl #16
     af8:	52000100 	andpl	r0, r0, #0, 2
     afc:	00000588 	andeq	r0, r0, r8, lsl #11
     b00:	0000059b 	muleq	r0, fp, r5
     b04:	f4510001 			; <UNDEFINED> instruction: 0xf4510001
     b08:	0c000006 	stceq	0, cr0, [r0], {6}
     b0c:	01000007 	tsteq	r0, r7
     b10:	00005200 	andeq	r5, r0, r0, lsl #4
	...
     b1c:	01000000 	mrseq	r0, (UNDEF: 0)
     b20:	00000001 	andeq	r0, r0, r1
     b24:	00000000 	andeq	r0, r0, r0
     b28:	01000100 	mrseq	r0, (UNDEF: 16)
     b2c:	00000038 	andeq	r0, r0, r8, lsr r0
     b30:	00000040 	andeq	r0, r0, r0, asr #32
     b34:	78720003 	ldmdavc	r2!, {r0, r1}^
     b38:	0000409f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     b3c:	00004800 	andeq	r4, r0, r0, lsl #16
     b40:	53000100 	movwpl	r0, #256	; 0x100
     b44:	00000138 	andeq	r0, r0, r8, lsr r1
     b48:	00000138 	andeq	r0, r0, r8, lsr r1
     b4c:	38530001 	ldmdacc	r3, {r0}^
     b50:	48000001 	stmdami	r0, {r0}
     b54:	01000001 	tsteq	r0, r1
     b58:	03b45200 			; <UNDEFINED> instruction: 0x03b45200
     b5c:	043c0000 	ldrteq	r0, [ip], #-0
     b60:	00010000 	andeq	r0, r1, r0
     b64:	00055c59 	andeq	r5, r5, r9, asr ip
     b68:	0005a000 	andeq	sl, r5, r0
     b6c:	59000100 	stmdbpl	r0, {r8}
     b70:	00000660 	andeq	r0, r0, r0, ror #12
     b74:	00000664 	andeq	r0, r0, r4, ror #12
     b78:	64590001 	ldrbvs	r0, [r9], #-1
     b7c:	6c000006 	stcvs	0, cr0, [r0], {6}
     b80:	03000006 	movweq	r0, #6
     b84:	9f087900 	svcls	0x00087900
     b88:	00000670 	andeq	r0, r0, r0, ror r6
     b8c:	00000684 	andeq	r0, r0, r4, lsl #13
     b90:	00590001 	subseq	r0, r9, r1
	...
     bb0:	00001800 	andeq	r1, r0, r0, lsl #16
     bb4:	00003000 	andeq	r3, r0, r0
     bb8:	40000200 	andmi	r0, r0, r0, lsl #4
     bbc:	0000909f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
     bc0:	00011c00 	andeq	r1, r1, r0, lsl #24
     bc4:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
     bc8:	00000374 	andeq	r0, r0, r4, ror r3
     bcc:	00000384 	andeq	r0, r0, r4, lsl #7
     bd0:	90550001 	subsls	r0, r5, r1
     bd4:	c8000004 	stmdagt	r0, {r2}
     bd8:	01000004 	tsteq	r0, r4
     bdc:	04c85500 	strbeq	r5, [r8], #1280	; 0x500
     be0:	04cc0000 	strbeq	r0, [ip], #0
     be4:	00090000 	andeq	r0, r9, r0
     be8:	235101f3 	cmpcs	r1, #-1073741764	; 0xc000003c
     bec:	1af8090b 	bne	ffe03020 <__stack+0xdfe02748>
     bf0:	0005389f 	muleq	r5, pc, r8	; <UNPREDICTABLE>
     bf4:	00055c00 	andeq	r5, r5, r0, lsl #24
     bf8:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
     bfc:	000005a0 	andeq	r0, r0, r0, lsr #11
     c00:	000005ac 	andeq	r0, r0, ip, lsr #11
     c04:	f8550001 			; <UNDEFINED> instruction: 0xf8550001
     c08:	08000005 	stmdaeq	r0, {r0, r2}
     c0c:	01000006 	tsteq	r0, r6
     c10:	07285500 	streq	r5, [r8, -r0, lsl #10]!
     c14:	07440000 	strbeq	r0, [r4, -r0]
     c18:	00010000 	andeq	r0, r1, r0
     c1c:	00076855 	andeq	r6, r7, r5, asr r8
     c20:	00078800 	andeq	r8, r7, r0, lsl #16
     c24:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
     c28:	000007c8 	andeq	r0, r0, r8, asr #15
     c2c:	000007d8 	ldrdeq	r0, [r0], -r8
     c30:	00550001 	subseq	r0, r5, r1
     c34:	00000000 	andeq	r0, r0, r0
     c38:	01000000 	mrseq	r0, (UNDEF: 0)
     c3c:	00000001 	andeq	r0, r0, r1
     c40:	00000000 	andeq	r0, r0, r0
     c44:	00020000 	andeq	r0, r2, r0
     c48:	00034000 	andeq	r4, r3, r0
     c4c:	57000100 	strpl	r0, [r0, -r0, lsl #2]
     c50:	00000608 	andeq	r0, r0, r8, lsl #12
     c54:	00000660 	andeq	r0, r0, r0, ror #12
     c58:	c4570001 	ldrbgt	r0, [r7], #-1
     c5c:	f4000006 	vst4.8	{d0-d3}, [r0], r6
     c60:	01000006 	tsteq	r0, r6
     c64:	07445700 	strbeq	r5, [r4, -r0, lsl #14]
     c68:	074c0000 	strbeq	r0, [ip, -r0]
     c6c:	00010000 	andeq	r0, r1, r0
     c70:	00078857 	andeq	r8, r7, r7, asr r8
     c74:	0007a400 	andeq	sl, r7, r0, lsl #8
     c78:	57000100 	strpl	r0, [r0, -r0, lsl #2]
	...
     c84:	00000005 	andeq	r0, r0, r5
	...
     c90:	02400000 	subeq	r0, r0, #0
     c94:	029c0000 	addseq	r0, ip, #0
     c98:	00010000 	andeq	r0, r1, r0
     c9c:	00029c50 	andeq	r9, r2, r0, asr ip
     ca0:	0002a700 	andeq	sl, r2, r0, lsl #14
     ca4:	52000100 	andpl	r0, r0, #0, 2
     ca8:	000002a7 	andeq	r0, r0, r7, lsr #5
     cac:	000002b8 			; <UNDEFINED> instruction: 0x000002b8
     cb0:	48910002 	ldmmi	r1, {r1}
     cb4:	00000608 	andeq	r0, r0, r8, lsl #12
     cb8:	00000610 	andeq	r0, r0, r0, lsl r6
     cbc:	10500001 	subsne	r0, r0, r1
     cc0:	3b000006 	blcc	ce0 <memset+0x20>
     cc4:	01000006 	tsteq	r0, r6
     cc8:	063b5200 	ldrteq	r5, [fp], -r0, lsl #4
     ccc:	06600000 	strbteq	r0, [r0], -r0
     cd0:	00020000 	andeq	r0, r2, r0
     cd4:	06c44c91 			; <UNDEFINED> instruction: 0x06c44c91
     cd8:	06f40000 	ldrbteq	r0, [r4], r0
     cdc:	00010000 	andeq	r0, r1, r0
     ce0:	00000050 	andeq	r0, r0, r0, asr r0
     ce4:	00000000 	andeq	r0, r0, r0
     ce8:	00000200 	andeq	r0, r0, r0, lsl #4
     cec:	00000000 	andeq	r0, r0, r0
     cf0:	78000000 	stmdavc	r0, {}	; <UNPREDICTABLE>
     cf4:	80000002 	andhi	r0, r0, r2
     cf8:	05000002 	streq	r0, [r0, #-2]
     cfc:	37007000 	strcc	r7, [r0, -r0]
     d00:	02809f1a 	addeq	r9, r0, #26, 30	; 0x68
     d04:	02a70000 	adceq	r0, r7, #0
     d08:	00010000 	andeq	r0, r1, r0
     d0c:	0002a753 	andeq	sl, r2, r3, asr r7
     d10:	0002b800 	andeq	fp, r2, r0, lsl #16
     d14:	91000200 	mrsls	r0, R8_usr
     d18:	0006084c 	andeq	r0, r6, ip, asr #16
     d1c:	00063b00 	andeq	r3, r6, r0, lsl #22
     d20:	53000100 	movwpl	r0, #256	; 0x100
     d24:	0000063b 	andeq	r0, r0, fp, lsr r6
     d28:	00000660 	andeq	r0, r0, r0, ror #12
     d2c:	48910002 	ldmmi	r1, {r1}
	...
     d38:	00010100 	andeq	r0, r1, r0, lsl #2
	...
     d44:	01000001 	tsteq	r0, r1
     d48:	02840001 	addeq	r0, r4, #1
     d4c:	02840000 	addeq	r0, r4, #0
     d50:	00020000 	andeq	r0, r2, r0
     d54:	02849f30 	addeq	r9, r4, #48, 30	; 0xc0
     d58:	02940000 	addseq	r0, r4, #0
     d5c:	000e0000 	andeq	r0, lr, r0
     d60:	7010000a 	andsvc	r0, r0, sl
     d64:	22007900 	andcs	r7, r0, #0, 18
     d68:	1a0fff0a 	bne	400998 <_bsl_base_address+0x1fe998>
     d6c:	02949f1c 	addseq	r9, r4, #28, 30	; 0x70
     d70:	02980000 	addseq	r0, r8, #0
     d74:	00070000 	andeq	r0, r7, r0
     d78:	ff0a0071 			; <UNDEFINED> instruction: 0xff0a0071
     d7c:	989f1a0f 	ldmls	pc, {r0, r1, r2, r3, r9, fp, ip}	; <UNPREDICTABLE>
     d80:	9c000002 	stcls	0, cr0, [r0], {2}
     d84:	0b000002 	bleq	d94 <memset+0xd4>
     d88:	1f007000 	svcne	0x00007000
     d8c:	0a1c0079 	beq	700f78 <_bsl_base_address+0x4fef78>
     d90:	9f1a0fff 	svcls	0x001a0fff
     d94:	0000029c 	muleq	r0, ip, r2
     d98:	000002a7 	andeq	r0, r0, r7, lsr #5
     d9c:	0072000b 	rsbseq	r0, r2, fp
     da0:	1c00791f 			; <UNDEFINED> instruction: 0x1c00791f
     da4:	1a0fff0a 	bne	4009d4 <_bsl_base_address+0x1fe9d4>
     da8:	0002a79f 	muleq	r2, pc, r7	; <UNPREDICTABLE>
     dac:	0002b800 	andeq	fp, r2, r0, lsl #16
     db0:	91000c00 	tstls	r0, r0, lsl #24
     db4:	791f0648 	ldmdbvc	pc, {r3, r6, r9, sl}	; <UNPREDICTABLE>
     db8:	ff0a1c00 			; <UNDEFINED> instruction: 0xff0a1c00
     dbc:	089f1a0f 	ldmeq	pc, {r0, r1, r2, r3, r9, fp, ip}	; <UNPREDICTABLE>
     dc0:	34000006 	strcc	r0, [r0], #-6
     dc4:	05000006 	streq	r0, [r0, #-6]
     dc8:	00733800 	rsbseq	r3, r3, r0, lsl #16
     dcc:	06349f1c 	shadd16eq	r9, r4, ip
     dd0:	06340000 	ldrteq	r0, [r4], -r0
     dd4:	000e0000 	andeq	r0, lr, r0
     dd8:	7310080a 	tstvc	r0, #655360	; 0xa0000
     ddc:	00791c00 	rsbseq	r1, r9, r0, lsl #24
     de0:	1a0fff0a 	bne	400a10 <_bsl_base_address+0x1fea10>
     de4:	064c9f1c 			; <UNDEFINED> instruction: 0x064c9f1c
     de8:	06600000 	strbteq	r0, [r0], -r0
     dec:	00020000 	andeq	r0, r2, r0
     df0:	00009f30 	andeq	r9, r0, r0, lsr pc
     df4:	00000000 	andeq	r0, r0, r0
     df8:	00060000 	andeq	r0, r6, r0
     dfc:	00020200 	andeq	r0, r2, r0, lsl #4
     e00:	02000000 	andeq	r0, r0, #0
     e04:	02c00000 	sbceq	r0, r0, #0
     e08:	00020000 	andeq	r0, r2, r0
     e0c:	06089f30 			; <UNDEFINED> instruction: 0x06089f30
     e10:	064c0000 	strbeq	r0, [ip], -r0
     e14:	00020000 	andeq	r0, r2, r0
     e18:	064c9f30 			; <UNDEFINED> instruction: 0x064c9f30
     e1c:	06600000 	strbteq	r0, [r0], -r0
     e20:	00020000 	andeq	r0, r2, r0
     e24:	06c49f31 			; <UNDEFINED> instruction: 0x06c49f31
     e28:	06f40000 	ldrbteq	r0, [r4], r0
     e2c:	00020000 	andeq	r0, r2, r0
     e30:	00009f30 	andeq	r9, r0, r0, lsr pc
	...
     e3c:	05030300 	streq	r0, [r3, #-768]	; 0xfffffd00
     e40:	02a80005 	adceq	r0, r8, #5
     e44:	02c00000 	sbceq	r0, r0, #0
     e48:	00010000 	andeq	r0, r1, r0
     e4c:	00063c50 	andeq	r3, r6, r0, asr ip
     e50:	00064c00 	andeq	r4, r6, r0, lsl #24
     e54:	50000100 	andpl	r0, r0, r0, lsl #2
     e58:	0000064c 	andeq	r0, r0, ip, asr #12
     e5c:	0000064c 	andeq	r0, r0, ip, asr #12
     e60:	4c590001 	mrrcmi	0, 0, r0, r9, cr1
     e64:	54000006 	strpl	r0, [r0], #-6
     e68:	09000006 	stmdbeq	r0, {r1, r2}
     e6c:	91007900 	tstls	r0, r0, lsl #18
     e70:	38220648 	stmdacc	r2!, {r3, r6, r9, sl}
     e74:	00009f1c 	andeq	r9, r0, ip, lsl pc
     e78:	00000000 	andeq	r0, r0, r0
     e7c:	00010000 	andeq	r0, r1, r0
     e80:	00000000 	andeq	r0, r0, r0
     e84:	000006d4 	ldrdeq	r0, [r0], -r4
     e88:	000006dc 	ldrdeq	r0, [r0], -ip
     e8c:	00760006 	rsbseq	r0, r6, r6
     e90:	9f220079 	svcls	0x00220079
     e94:	000006dc 	ldrdeq	r0, [r0], -ip
     e98:	000006e0 	andeq	r0, r0, r0, ror #13
     e9c:	e0530001 	subs	r0, r3, r1
     ea0:	e8000006 	stmda	r0, {r1, r2}
     ea4:	06000006 	streq	r0, [r0], -r6
     ea8:	79007600 	stmdbvc	r0, {r9, sl, ip, sp, lr}
     eac:	009f2200 	addseq	r2, pc, r0, lsl #4
     eb0:	00000000 	andeq	r0, r0, r0
     eb4:	09000000 	stmdbeq	r0, {}	; <UNPREDICTABLE>
	...
     ec4:	24000002 	strcs	r0, [r0], #-2
     ec8:	01000003 	tsteq	r0, r3
     ecc:	06085400 	streq	r5, [r8], -r0, lsl #8
     ed0:	06600000 	strbteq	r0, [r0], -r0
     ed4:	00010000 	andeq	r0, r1, r0
     ed8:	0006c454 	andeq	ip, r6, r4, asr r4
     edc:	0006d800 	andeq	sp, r6, r0, lsl #16
     ee0:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
     ee4:	000006e8 	andeq	r0, r0, r8, ror #13
     ee8:	000006ec 	andeq	r0, r0, ip, ror #13
     eec:	44540001 	ldrbmi	r0, [r4], #-1
     ef0:	48000007 	stmdami	r0, {r0, r1, r2}
     ef4:	01000007 	tsteq	r0, r7
     ef8:	07885400 	streq	r5, [r8, r0, lsl #8]
     efc:	07980000 	ldreq	r0, [r8, r0]
     f00:	00010000 	andeq	r0, r1, r0
     f04:	00000054 	andeq	r0, r0, r4, asr r0
     f08:	00000000 	andeq	r0, r0, r0
     f0c:	00000a00 	andeq	r0, r0, r0, lsl #20
	...
     f1c:	00000002 	andeq	r0, r0, r2
     f20:	01000003 	tsteq	r0, r3
     f24:	03005600 	movweq	r5, #1536	; 0x600
     f28:	03100000 	tsteq	r0, #0
     f2c:	00010000 	andeq	r0, r1, r0
     f30:	00031053 	andeq	r1, r3, r3, asr r0
     f34:	00032800 	andeq	r2, r3, r0, lsl #16
     f38:	76000600 	strvc	r0, [r0], -r0, lsl #12
     f3c:	1af80974 	bne	ffe03514 <__stack+0xdfe02c3c>
     f40:	0006089f 	muleq	r6, pc, r8	; <UNPREDICTABLE>
     f44:	00066000 	andeq	r6, r6, r0
     f48:	56000100 	strpl	r0, [r0], -r0, lsl #2
     f4c:	000006c4 	andeq	r0, r0, r4, asr #13
     f50:	000006f4 	strdeq	r0, [r0], -r4
     f54:	44560001 	ldrbmi	r0, [r6], #-1
     f58:	4c000007 	stcmi	0, cr0, [r0], {7}
     f5c:	01000007 	tsteq	r0, r7
     f60:	07885600 	streq	r5, [r8, r0, lsl #12]
     f64:	07a40000 	streq	r0, [r4, r0]!
     f68:	00060000 	andeq	r0, r6, r0
     f6c:	f8097476 			; <UNDEFINED> instruction: 0xf8097476
     f70:	00009f1a 	andeq	r9, r0, sl, lsl pc
	...
     f84:	02400000 	subeq	r0, r0, #0
     f88:	02700000 	rsbseq	r0, r0, #0
     f8c:	00010000 	andeq	r0, r1, r0
     f90:	0002705b 	andeq	r7, r2, fp, asr r0
     f94:	00032400 	andeq	r2, r3, r0, lsl #8
     f98:	74000600 	strvc	r0, [r0], #-1536	; 0xfffffa00
     f9c:	22007600 	andcs	r7, r0, #0, 12
     fa0:	0006089f 	muleq	r6, pc, r8	; <UNPREDICTABLE>
     fa4:	00066000 	andeq	r6, r6, r0
     fa8:	74000600 	strvc	r0, [r0], #-1536	; 0xfffffa00
     fac:	22007600 	andcs	r7, r0, #0, 12
     fb0:	0006c49f 	muleq	r6, pc, r4	; <UNPREDICTABLE>
     fb4:	0006f400 	andeq	pc, r6, r0, lsl #8
     fb8:	5b000100 	blpl	13c0 <cleanup_glue+0x8>
     fbc:	00000744 	andeq	r0, r0, r4, asr #14
     fc0:	00000748 	andeq	r0, r0, r8, asr #14
     fc4:	00740006 	rsbseq	r0, r4, r6
     fc8:	9f220076 	svcls	0x00220076
     fcc:	00000788 	andeq	r0, r0, r8, lsl #15
     fd0:	00000798 	muleq	r0, r8, r7
     fd4:	00740006 	rsbseq	r0, r4, r6
     fd8:	9f220076 	svcls	0x00220076
	...
     fe4:	00000004 	andeq	r0, r0, r4
     fe8:	02400000 	subeq	r0, r0, #0
     fec:	02b80000 	adcseq	r0, r8, #0
     ff0:	00010000 	andeq	r0, r1, r0
     ff4:	00060859 	andeq	r0, r6, r9, asr r8
     ff8:	00061800 	andeq	r1, r6, r0, lsl #16
     ffc:	59000100 	stmdbpl	r0, {r8}
    1000:	000006c4 	andeq	r0, r0, r4, asr #13
    1004:	000006f4 	strdeq	r0, [r0], -r4
    1008:	00590001 	subseq	r0, r9, r1
    100c:	00000000 	andeq	r0, r0, r0
    1010:	02000000 	andeq	r0, r0, #0
	...
    101c:	00024000 	andeq	r4, r2, r0
    1020:	00037400 	andeq	r7, r3, r0, lsl #8
    1024:	0a000400 	beq	202c <__data_load__+0x9fc>
    1028:	089f1000 	ldmeq	pc, {ip}	; <UNPREDICTABLE>
    102c:	60000006 	andvs	r0, r0, r6
    1030:	04000006 	streq	r0, [r0], #-6
    1034:	10000a00 	andne	r0, r0, r0, lsl #20
    1038:	0006c49f 	muleq	r6, pc, r4	; <UNPREDICTABLE>
    103c:	0006f400 	andeq	pc, r6, r0, lsl #8
    1040:	0a000400 	beq	2048 <__data_load__+0xa18>
    1044:	449f1000 	ldrmi	r1, [pc], #0	; 104c <_malloc_trim_r+0x80>
    1048:	4c000007 	stcmi	0, cr0, [r0], {7}
    104c:	04000007 	streq	r0, [r0], #-7
    1050:	10000a00 	andne	r0, r0, r0, lsl #20
    1054:	0007889f 	muleq	r7, pc, r8	; <UNPREDICTABLE>
    1058:	0007a400 	andeq	sl, r7, r0, lsl #8
    105c:	0a000400 	beq	2064 <__data_load__+0xa34>
    1060:	009f1000 	addseq	r1, pc, r0
	...
    1078:	0000cc00 	andeq	ip, r0, r0, lsl #24
    107c:	51000100 	mrspl	r0, (UNDEF: 16)
    1080:	000000cc 	andeq	r0, r0, ip, asr #1
    1084:	000000e4 	andeq	r0, r0, r4, ror #1
    1088:	01f30004 	mvnseq	r0, r4
    108c:	00e49f51 	rsceq	r9, r4, r1, asr pc
    1090:	00f00000 	rscseq	r0, r0, r0
    1094:	00010000 	andeq	r0, r1, r0
    1098:	0000f051 	andeq	pc, r0, r1, asr r0	; <UNPREDICTABLE>
    109c:	00010400 	andeq	r0, r1, r0, lsl #8
    10a0:	f3000400 	vshl.u8	d0, d0, d0
    10a4:	049f5101 	ldreq	r5, [pc], #257	; 10ac <_malloc_trim_r+0xe0>
    10a8:	1c000001 	stcne	0, cr0, [r0], {1}
    10ac:	01000001 	tsteq	r0, r1
    10b0:	00005100 	andeq	r5, r0, r0, lsl #2
	...
    10c0:	00010000 	andeq	r0, r1, r0
    10c4:	01000000 	mrseq	r0, (UNDEF: 0)
    10c8:	00000001 	andeq	r0, r0, r1
    10cc:	00000000 	andeq	r0, r0, r0
    10d0:	00000010 	andeq	r0, r0, r0, lsl r0
    10d4:	10520001 	subsne	r0, r2, r1
    10d8:	20000000 	andcs	r0, r0, r0
    10dc:	01000000 	mrseq	r0, (UNDEF: 0)
    10e0:	00205200 	eoreq	r5, r0, r0, lsl #4
    10e4:	00240000 	eoreq	r0, r4, r0
    10e8:	00030000 	andeq	r0, r3, r0
    10ec:	249f7f72 	ldrcs	r7, [pc], #3954	; 10f4 <_free_r+0x28>
    10f0:	2c000000 	stccs	0, cr0, [r0], {-0}
    10f4:	01000000 	mrseq	r0, (UNDEF: 0)
    10f8:	002c5200 	eoreq	r5, ip, r0, lsl #4
    10fc:	00380000 	eorseq	r0, r8, r0
    1100:	00030000 	andeq	r0, r3, r0
    1104:	9c9f7f72 	ldcls	15, cr7, [pc], {114}	; 0x72
    1108:	a0000000 	andge	r0, r0, r0
    110c:	01000000 	mrseq	r0, (UNDEF: 0)
    1110:	00c05200 	sbceq	r5, r0, r0, lsl #4
    1114:	00c00000 	sbceq	r0, r0, r0
    1118:	00010000 	andeq	r0, r1, r0
    111c:	0000c052 	andeq	ip, r0, r2, asr r0
    1120:	0000d000 	andeq	sp, r0, r0
    1124:	72000300 	andvc	r0, r0, #0, 6
    1128:	01049f7f 	tsteq	r4, pc, ror pc
    112c:	01140000 	tsteq	r4, r0
    1130:	00010000 	andeq	r0, r1, r0
    1134:	00000052 	andeq	r0, r0, r2, asr r0
    1138:	00000000 	andeq	r0, r0, r0
    113c:	00000200 	andeq	r0, r0, r0, lsl #4
    1140:	00000202 	andeq	r0, r0, r2, lsl #4
    1144:	01010000 	mrseq	r0, (UNDEF: 1)
    1148:	01010000 	mrseq	r0, (UNDEF: 1)
	...
    1154:	20000000 	andcs	r0, r0, r0
    1158:	01000000 	mrseq	r0, (UNDEF: 0)
    115c:	00205000 	eoreq	r5, r0, r0
    1160:	002c0000 	eoreq	r0, ip, r0
    1164:	00010000 	andeq	r0, r1, r0
    1168:	00002c53 	andeq	r2, r0, r3, asr ip
    116c:	00003000 	andeq	r3, r0, r0
    1170:	73000300 	movwvc	r0, #768	; 0x300
    1174:	00309f01 	eorseq	r9, r0, r1, lsl #30
    1178:	00a40000 	adceq	r0, r4, r0
    117c:	00010000 	andeq	r0, r1, r0
    1180:	0000c053 	andeq	ip, r0, r3, asr r0
    1184:	0000d000 	andeq	sp, r0, r0
    1188:	53000100 	movwpl	r0, #256	; 0x100
    118c:	000000d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1190:	000000d4 	ldrdeq	r0, [r0], -r4
    1194:	01730003 	cmneq	r3, r3
    1198:	0000d49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
    119c:	0000f400 	andeq	pc, r0, r0, lsl #8
    11a0:	53000100 	movwpl	r0, #256	; 0x100
    11a4:	000000f4 	strdeq	r0, [r0], -r4
    11a8:	000000f8 	strdeq	r0, [r0], -r8
    11ac:	01730003 	cmneq	r3, r3
    11b0:	0000f89f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
    11b4:	00010800 	andeq	r0, r1, r0, lsl #16
    11b8:	53000100 	movwpl	r0, #256	; 0x100
    11bc:	0000010c 	andeq	r0, r0, ip, lsl #2
    11c0:	00000114 	andeq	r0, r0, r4, lsl r1
    11c4:	14500001 	ldrbne	r0, [r0], #-1
    11c8:	1c000001 	stcne	0, cr0, [r0], {1}
    11cc:	01000001 	tsteq	r0, r1
    11d0:	00005300 	andeq	r5, r0, r0, lsl #6
    11d4:	00000000 	andeq	r0, r0, r0
    11d8:	00010000 	andeq	r0, r1, r0
    11dc:	00000000 	andeq	r0, r0, r0
    11e0:	00000054 	andeq	r0, r0, r4, asr r0
    11e4:	000000e4 	andeq	r0, r0, r4, ror #1
    11e8:	20080003 	andcs	r0, r8, r3
    11ec:	0001049f 	muleq	r1, pc, r4	; <UNPREDICTABLE>
    11f0:	00010c00 	andeq	r0, r1, r0, lsl #24
    11f4:	08000300 	stmdaeq	r0, {r8, r9}
    11f8:	01149f20 	tsteq	r4, r0, lsr #30
    11fc:	011c0000 	tsteq	ip, r0
    1200:	00030000 	andeq	r0, r3, r0
    1204:	009f2008 	addseq	r2, pc, r8
	...
    1214:	4c000000 	stcmi	0, cr0, [r0], {-0}
    1218:	e0000000 	and	r0, r0, r0
    121c:	01000000 	mrseq	r0, (UNDEF: 0)
    1220:	00e05e00 	rsceq	r5, r0, r0, lsl #28
    1224:	00e40000 	rsceq	r0, r4, r0
    1228:	00220000 	eoreq	r0, r2, r0
    122c:	085101f3 	ldmdaeq	r1, {r0, r1, r4, r5, r6, r7, r8}^
    1230:	01f31aff 	ldrsheq	r1, [r3, #175]!	; 0xaf
    1234:	1aff0851 	bne	fffc3380 <__stack+0xdffc2aa8>
    1238:	f3212438 	vqshl.u32	d2, d24, d1
    123c:	ff085101 			; <UNDEFINED> instruction: 0xff085101
    1240:	5101f31a 	tstpl	r1, sl, lsl r3	; <UNPREDICTABLE>
    1244:	381aff08 	ldmdacc	sl, {r3, r8, r9, sl, fp, ip, sp, lr, pc}
    1248:	24402124 	strbcs	r2, [r0], #-292	; 0xfffffedc
    124c:	01049f21 	tsteq	r4, r1, lsr #30
    1250:	010c0000 	mrseq	r0, (UNDEF: 12)
    1254:	00010000 	andeq	r0, r1, r0
    1258:	0001145e 	andeq	r1, r1, lr, asr r4
    125c:	00011c00 	andeq	r1, r1, r0, lsl #24
    1260:	5e000100 	adfpls	f0, f0, f0
	...
    126c:	01010001 	tsteq	r1, r1
    1270:	01010101 	tsteq	r1, r1, lsl #2
    1274:	00000001 	andeq	r0, r0, r1
    1278:	01000000 	mrseq	r0, (UNDEF: 0)
    127c:	00000001 	andeq	r0, r0, r1
    1280:	00000000 	andeq	r0, r0, r0
    1284:	00000048 	andeq	r0, r0, r8, asr #32
    1288:	00000070 	andeq	r0, r0, r0, ror r0
    128c:	70530001 	subsvc	r0, r3, r1
    1290:	74000000 	strvc	r0, [r0], #-0
    1294:	03000000 	movweq	r0, #0
    1298:	9f747c00 	svcls	0x00747c00
    129c:	00000074 	andeq	r0, r0, r4, ror r0
    12a0:	00000078 	andeq	r0, r0, r8, ror r0
    12a4:	787c0003 	ldmdavc	ip!, {r0, r1}^
    12a8:	0000789f 	muleq	r0, pc, r8	; <UNPREDICTABLE>
    12ac:	00007c00 	andeq	r7, r0, r0, lsl #24
    12b0:	7c000300 	stcvc	3, cr0, [r0], {-0}
    12b4:	007c9f7c 	rsbseq	r9, ip, ip, ror pc
    12b8:	00840000 	addeq	r0, r4, r0
    12bc:	00010000 	andeq	r0, r1, r0
    12c0:	0000845c 	andeq	r8, r0, ip, asr r4
    12c4:	00009000 	andeq	r9, r0, r0
    12c8:	7c000300 	stcvc	3, cr0, [r0], {-0}
    12cc:	009c9f70 	addseq	r9, ip, r0, ror pc
    12d0:	00a00000 	adceq	r0, r0, r0
    12d4:	00010000 	andeq	r0, r1, r0
    12d8:	0000b05c 	andeq	fp, r0, ip, asr r0
    12dc:	0000b000 	andeq	fp, r0, r0
    12e0:	5c000100 	stfpls	f0, [r0], {-0}
    12e4:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
    12e8:	000000b4 	strheq	r0, [r0], -r4
    12ec:	047c0003 	ldrbteq	r0, [ip], #-3
    12f0:	0000b49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
    12f4:	0000e400 	andeq	lr, r0, r0, lsl #8
    12f8:	5c000100 	stfpls	f0, [r0], {-0}
    12fc:	00000104 	andeq	r0, r0, r4, lsl #2
    1300:	0000010c 	andeq	r0, r0, ip, lsl #2
    1304:	145c0001 	ldrbne	r0, [ip], #-1
    1308:	1c000001 	stcne	0, cr0, [r0], {1}
    130c:	01000001 	tsteq	r0, r1
    1310:	00005300 	andeq	r5, r0, r0, lsl #6
    1314:	00000000 	andeq	r0, r0, r0
    1318:	00060000 	andeq	r0, r6, r0
	...
    1328:	000000cc 	andeq	r0, r0, ip, asr #1
    132c:	00710006 	rsbseq	r0, r1, r6
    1330:	9f1aff08 	svcls	0x001aff08
    1334:	000000cc 	andeq	r0, r0, ip, asr #1
    1338:	000000e4 	andeq	r0, r0, r4, ror #1
    133c:	01f30007 	mvnseq	r0, r7
    1340:	1aff0851 	bne	fffc348c <__stack+0xdffc2bb4>
    1344:	0000e49f 	muleq	r0, pc, r4	; <UNPREDICTABLE>
    1348:	0000f000 	andeq	pc, r0, r0
    134c:	71000600 	tstvc	r0, r0, lsl #12
    1350:	1aff0800 	bne	fffc3358 <__stack+0xdffc2a80>
    1354:	0000f09f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    1358:	00010400 	andeq	r0, r1, r0, lsl #8
    135c:	f3000700 	vabd.u8	d0, d0, d0
    1360:	ff085101 			; <UNDEFINED> instruction: 0xff085101
    1364:	01049f1a 	tsteq	r4, sl, lsl pc
    1368:	011c0000 	tsteq	ip, r0
    136c:	00060000 	andeq	r0, r6, r0
    1370:	ff080071 			; <UNDEFINED> instruction: 0xff080071
    1374:	00009f1a 	andeq	r9, r0, sl, lsl pc
	...
    138c:	00000014 	andeq	r0, r0, r4, lsl r0
    1390:	14500001 	ldrbne	r0, [r0], #-1
    1394:	28000000 	stmdacs	r0, {}	; <UNPREDICTABLE>
    1398:	01000000 	mrseq	r0, (UNDEF: 0)
    139c:	00285400 	eoreq	r5, r8, r0, lsl #8
    13a0:	002c0000 	eoreq	r0, ip, r0
    13a4:	00040000 	andeq	r0, r4, r0
    13a8:	9f5001f3 	svcls	0x005001f3
    13ac:	0000002c 	andeq	r0, r0, ip, lsr #32
    13b0:	0000003c 	andeq	r0, r0, ip, lsr r0
    13b4:	3c540001 	mrrccc	0, 0, r0, r4, cr1
    13b8:	44000000 	strmi	r0, [r0], #-0
    13bc:	04000000 	streq	r0, [r0], #-0
    13c0:	5001f300 	andpl	pc, r1, r0, lsl #6
    13c4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
    13d4:	00001b00 	andeq	r1, r0, r0, lsl #22
    13d8:	51000100 	mrspl	r0, (UNDEF: 16)
    13dc:	0000001b 	andeq	r0, r0, fp, lsl r0
    13e0:	00000044 	andeq	r0, r0, r4, asr #32
    13e4:	01f30004 	mvnseq	r0, r4
    13e8:	00009f51 	andeq	r9, r0, r1, asr pc
	...
    13f4:	0000001c 	andeq	r0, r0, ip, lsl r0
    13f8:	00000044 	andeq	r0, r0, r4, asr #32
    13fc:	00500001 	subseq	r0, r0, r1
	...
    1414:	30000000 	andcc	r0, r0, r0
    1418:	01000000 	mrseq	r0, (UNDEF: 0)
    141c:	00305000 	eorseq	r5, r0, r0
    1420:	004c0000 	subeq	r0, ip, r0
    1424:	00040000 	andeq	r0, r4, r0
    1428:	9f5001f3 	svcls	0x005001f3
    142c:	0000004c 	andeq	r0, r0, ip, asr #32
    1430:	00000054 	andeq	r0, r0, r4, asr r0
    1434:	54500001 	ldrbpl	r0, [r0], #-1
    1438:	80000000 	andhi	r0, r0, r0
    143c:	04000000 	streq	r0, [r0], #-0
    1440:	5001f300 	andpl	pc, r1, r0, lsl #6
    1444:	0000809f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    1448:	00008400 	andeq	r8, r0, r0, lsl #8
    144c:	50000100 	andpl	r0, r0, r0, lsl #2
    1450:	00000084 	andeq	r0, r0, r4, lsl #1
    1454:	0000008c 	andeq	r0, r0, ip, lsl #1
    1458:	01f30004 	mvnseq	r0, r4
    145c:	00009f50 	andeq	r9, r0, r0, asr pc
	...
    1474:	00300000 	eorseq	r0, r0, r0
    1478:	00010000 	andeq	r0, r1, r0
    147c:	00003052 	andeq	r3, r0, r2, asr r0
    1480:	00004c00 	andeq	r4, r0, r0, lsl #24
    1484:	f3000400 	vshl.u8	d0, d0, d0
    1488:	4c9f5201 	lfmmi	f5, 4, [pc], {1}
    148c:	60000000 	andvs	r0, r0, r0
    1490:	01000000 	mrseq	r0, (UNDEF: 0)
    1494:	00605200 	rsbeq	r5, r0, r0, lsl #4
    1498:	006c0000 	rsbeq	r0, ip, r0
    149c:	00030000 	andeq	r0, r3, r0
    14a0:	6c018874 	stcvs	8, cr8, [r1], {116}	; 0x74
    14a4:	80000000 	andhi	r0, r0, r0
    14a8:	04000000 	streq	r0, [r0], #-0
    14ac:	5201f300 	andpl	pc, r1, #0, 6
    14b0:	0000809f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
    14b4:	00008c00 	andeq	r8, r0, r0, lsl #24
    14b8:	52000100 	andpl	r0, r0, #0, 2
	...
    14d4:	00000030 	andeq	r0, r0, r0, lsr r0
    14d8:	30530001 	subscc	r0, r3, r1
    14dc:	4c000000 	stcmi	0, cr0, [r0], {-0}
    14e0:	04000000 	streq	r0, [r0], #-0
    14e4:	5301f300 	movwpl	pc, #4864	; 0x1300	; <UNPREDICTABLE>
    14e8:	00004c9f 	muleq	r0, pc, ip	; <UNPREDICTABLE>
    14ec:	00007400 	andeq	r7, r0, r0, lsl #8
    14f0:	53000100 	movwpl	r0, #256	; 0x100
    14f4:	00000074 	andeq	r0, r0, r4, ror r0
    14f8:	0000007c 	andeq	r0, r0, ip, ror r0
    14fc:	88740003 	ldmdahi	r4!, {r0, r1}^
    1500:	00007c02 	andeq	r7, r0, r2, lsl #24
    1504:	00008000 	andeq	r8, r0, r0
    1508:	f3000400 	vshl.u8	d0, d0, d0
    150c:	809f5301 	addshi	r5, pc, r1, lsl #6
    1510:	8c000000 	stchi	0, cr0, [r0], {-0}
    1514:	01000000 	mrseq	r0, (UNDEF: 0)
    1518:	00005300 	andeq	r5, r0, r0, lsl #6
    151c:	00000000 	andeq	r0, r0, r0
    1520:	00010000 	andeq	r0, r1, r0
    1524:	0000004c 	andeq	r0, r0, ip, asr #32
    1528:	00000080 	andeq	r0, r0, r0, lsl #1
    152c:	887c0004 	ldmdahi	ip!, {r2}^
    1530:	00009f01 	andeq	r9, r0, r1, lsl #30
	...
    153c:	00000010 	andeq	r0, r0, r0, lsl r0
    1540:	0000008c 	andeq	r0, r0, ip, lsl #1
    1544:	005c0001 	subseq	r0, ip, r1
	...
    1550:	b4000000 	strlt	r0, [r0], #-0
    1554:	e000000e 	and	r0, r0, lr
    1558:	0100000e 	tsteq	r0, lr
    155c:	0ee05000 	cdpeq	0, 14, cr5, cr0, cr0, {0}
    1560:	0fcc0000 	svceq	0x00cc0000
    1564:	00020000 	andeq	r0, r2, r0
    1568:	00004c91 	muleq	r0, r1, ip
	...
    1578:	0eb40000 	cdpeq	0, 11, cr0, cr4, cr0, {0}
    157c:	0ee00000 	cdpeq	0, 14, cr0, cr0, cr0, {0}
    1580:	00010000 	andeq	r0, r1, r0
    1584:	000ee051 	andeq	lr, lr, r1, asr r0
    1588:	000f7c00 	andeq	r7, pc, r0, lsl #24
    158c:	5b000100 	blpl	1994 <__data_load__+0x364>
    1590:	00000f7c 	andeq	r0, r0, ip, ror pc
    1594:	00000f88 	andeq	r0, r0, r8, lsl #31
    1598:	01f30004 	mvnseq	r0, r4
    159c:	0f889f51 	svceq	0x00889f51
    15a0:	0fcc0000 	svceq	0x00cc0000
    15a4:	00010000 	andeq	r0, r1, r0
    15a8:	0000005b 	andeq	r0, r0, fp, asr r0
	...
    15b4:	c4000000 	strgt	r0, [r0], #-0
    15b8:	7400000e 	strvc	r0, [r0], #-14
    15bc:	0100000f 	tsteq	r0, pc
    15c0:	0f885600 	svceq	0x00885600
    15c4:	0fb40000 	svceq	0x00b40000
    15c8:	00010000 	andeq	r0, r1, r0
    15cc:	000fb856 	andeq	fp, pc, r6, asr r8	; <UNPREDICTABLE>
    15d0:	000fcc00 	andeq	ip, pc, r0, lsl #24
    15d4:	56000100 	strpl	r0, [r0], -r0, lsl #2
	...
    15e0:	0ec40001 	cdpeq	0, 12, cr0, cr4, cr1, {0}
    15e4:	0ee00000 	cdpeq	0, 14, cr0, cr0, cr0, {0}
    15e8:	00040000 	andeq	r0, r4, r0
    15ec:	9f02c877 	svcls	0x0002c877
	...
    15f8:	00000002 	andeq	r0, r0, r2
    15fc:	0ee00000 	cdpeq	0, 14, cr0, cr0, cr0, {0}
    1600:	0f740000 	svceq	0x00740000
    1604:	00040000 	andeq	r0, r4, r0
    1608:	9f018876 	svcls	0x00018876
    160c:	00000f88 	andeq	r0, r0, r8, lsl #31
    1610:	00000fb4 			; <UNDEFINED> instruction: 0x00000fb4
    1614:	88760004 	ldmdahi	r6!, {r2}^
    1618:	0fb89f01 	svceq	0x00b89f01
    161c:	0fcc0000 	svceq	0x00cc0000
    1620:	00040000 	andeq	r0, r4, r0
    1624:	9f018876 	svcls	0x00018876
	...
    1634:	0ee40000 	cdpeq	0, 14, cr0, cr4, cr0, {0}
    1638:	0ee80000 	cdpeq	0, 14, cr0, cr8, cr0, {0}
    163c:	00030000 	andeq	r0, r3, r0
    1640:	e89f7f74 	ldm	pc, {r2, r4, r5, r6, r8, r9, sl, fp, ip, sp, lr}	; <UNPREDICTABLE>
    1644:	7c00000e 	stcvc	0, cr0, [r0], {14}
    1648:	0100000f 	tsteq	r0, pc
    164c:	0f885500 	svceq	0x00885500
    1650:	0fcc0000 	svceq	0x00cc0000
    1654:	00010000 	andeq	r0, r1, r0
    1658:	00000055 	andeq	r0, r0, r5, asr r0
	...
    1664:	00000200 	andeq	r0, r0, r0, lsl #4
    1668:	000ef800 	andeq	pc, lr, r0, lsl #16
    166c:	000efc00 	andeq	pc, lr, r0, lsl #24
    1670:	31000500 	tstcc	r0, r0, lsl #10
    1674:	9f240075 	svcls	0x00240075
    1678:	00000efc 	strdeq	r0, [r0], -ip
    167c:	00000f08 	andeq	r0, r0, r8, lsl #30
    1680:	75310005 	ldrvc	r0, [r1, #-5]!
    1684:	089f2401 	ldmeq	pc, {r0, sl, sp}	; <UNPREDICTABLE>
    1688:	7c00000f 	stcvc	0, cr0, [r0], {15}
    168c:	0500000f 	streq	r0, [r0, #-15]
    1690:	00753100 	rsbseq	r3, r5, r0, lsl #2
    1694:	0f889f24 	svceq	0x00889f24
    1698:	0fcc0000 	svceq	0x00cc0000
    169c:	00050000 	andeq	r0, r5, r0
    16a0:	24007531 	strcs	r7, [r0], #-1329	; 0xfffffacf
    16a4:	0000009f 	muleq	r0, pc, r0	; <UNPREDICTABLE>
	...
    16b0:	24000000 	strcs	r0, [r0], #-0
    16b4:	5700000f 	strpl	r0, [r0, -pc]
    16b8:	0100000f 	tsteq	r0, pc
    16bc:	0f885200 	svceq	0x00885200
    16c0:	0fa30000 	svceq	0x00a30000
    16c4:	00010000 	andeq	r0, r1, r0
    16c8:	000fb852 	andeq	fp, pc, r2, asr r8	; <UNPREDICTABLE>
    16cc:	000fc300 	andeq	ip, pc, r0, lsl #6
    16d0:	52000100 	andpl	r0, r0, #0, 2
	...
    16e0:	00000f4c 	andeq	r0, r0, ip, asr #30
    16e4:	00000f7c 	andeq	r0, r0, ip, ror pc
    16e8:	885a0001 	ldmdahi	sl, {r0}^
    16ec:	cc00000f 	stcgt	0, cr0, [r0], {15}
    16f0:	0100000f 	tsteq	r0, pc
    16f4:	00005a00 	andeq	r5, r0, r0, lsl #20
	...
    170c:	00130000 	andseq	r0, r3, r0
    1710:	00010000 	andeq	r0, r1, r0
    1714:	00001350 	andeq	r1, r0, r0, asr r3
    1718:	00006c00 	andeq	r6, r0, r0, lsl #24
    171c:	56000100 	strpl	r0, [r0], -r0, lsl #2
    1720:	0000006c 	andeq	r0, r0, ip, rrx
    1724:	00000070 	andeq	r0, r0, r0, ror r0
    1728:	01f30004 	mvnseq	r0, r4
    172c:	00709f50 	rsbseq	r9, r0, r0, asr pc
    1730:	00b40000 	adcseq	r0, r4, r0
    1734:	00010000 	andeq	r0, r1, r0
    1738:	0000b456 	andeq	fp, r0, r6, asr r4
    173c:	0000b800 	andeq	fp, r0, r0, lsl #16
    1740:	f3000400 	vshl.u8	d0, d0, d0
    1744:	b89f5001 	ldmlt	pc, {r0, ip, lr}	; <UNPREDICTABLE>
    1748:	00000000 	andeq	r0, r0, r0
    174c:	01000001 	tsteq	r0, r1
    1750:	00005600 	andeq	r5, r0, r0, lsl #12
	...
    1764:	00000013 	andeq	r0, r0, r3, lsl r0
    1768:	13510001 	cmpne	r1, #1
    176c:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    1770:	01000000 	mrseq	r0, (UNDEF: 0)
    1774:	00385400 	eorseq	r5, r8, r0, lsl #8
    1778:	01000000 	mrseq	r0, (UNDEF: 0)
    177c:	00040000 	andeq	r0, r4, r0
    1780:	9f5101f3 	svcls	0x005101f3
	...
    1794:	00240000 	eoreq	r0, r4, r0
    1798:	005c0000 	subseq	r0, ip, r0
    179c:	00010000 	andeq	r0, r1, r0
    17a0:	00007055 	andeq	r7, r0, r5, asr r0
    17a4:	00009000 	andeq	r9, r0, r0
    17a8:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    17ac:	000000b8 	strheq	r0, [r0], -r8
    17b0:	000000cc 	andeq	r0, r0, ip, asr #1
    17b4:	cc550001 	mrrcgt	0, 0, r0, r5, cr1
    17b8:	d8000000 	stmdale	r0, {}	; <UNPREDICTABLE>
    17bc:	01000000 	mrseq	r0, (UNDEF: 0)
    17c0:	00d85300 	sbcseq	r5, r8, r0, lsl #6
    17c4:	00ec0000 	rsceq	r0, ip, r0
    17c8:	00060000 	andeq	r0, r6, r0
    17cc:	00720070 	rsbseq	r0, r2, r0, ror r0
    17d0:	00009f1c 	andeq	r9, r0, ip, lsl pc
	...
    17e0:	00000038 	andeq	r0, r0, r8, lsr r0
    17e4:	0000006c 	andeq	r0, r0, ip, rrx
    17e8:	70540001 	subsvc	r0, r4, r1
    17ec:	b4000000 	strlt	r0, [r0], #-0
    17f0:	01000000 	mrseq	r0, (UNDEF: 0)
    17f4:	00b85400 	adcseq	r5, r8, r0, lsl #8
    17f8:	01000000 	mrseq	r0, (UNDEF: 0)
    17fc:	00010000 	andeq	r0, r1, r0
    1800:	00000054 	andeq	r0, r0, r4, asr r0
	...
    180c:	4c000000 	stcmi	0, cr0, [r0], {-0}
    1810:	5c000000 	stcpl	0, cr0, [r0], {-0}
    1814:	01000000 	mrseq	r0, (UNDEF: 0)
    1818:	00705000 	rsbseq	r5, r0, r0
    181c:	00740000 	rsbseq	r0, r4, r0
    1820:	00010000 	andeq	r0, r1, r0
    1824:	0000c850 	andeq	ip, r0, r0, asr r8
    1828:	0000ec00 	andeq	lr, r0, r0, lsl #24
    182c:	50000100 	andpl	r0, r0, r0, lsl #2
	...
    183c:	0000007c 	andeq	r0, r0, ip, ror r0
    1840:	000000a0 	andeq	r0, r0, r0, lsr #1
    1844:	b8500001 	ldmdalt	r0, {r0}^
    1848:	c0000000 	andgt	r0, r0, r0
    184c:	01000000 	mrseq	r0, (UNDEF: 0)
    1850:	00005000 	andeq	r5, r0, r0
	...
    185c:	00010100 	andeq	r0, r1, r0, lsl #2
    1860:	01000000 	mrseq	r0, (UNDEF: 0)
    1864:	01130000 	tsteq	r3, r0
    1868:	00010000 	andeq	r0, r1, r0
    186c:	00011350 	andeq	r1, r1, r0, asr r3
    1870:	0001d400 	andeq	sp, r1, r0, lsl #8
    1874:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    1878:	000001d4 	ldrdeq	r0, [r0], -r4
    187c:	000001dc 	ldrdeq	r0, [r0], -ip
    1880:	01f30004 	mvnseq	r0, r4
    1884:	01dc9f50 	bicseq	r9, ip, r0, asr pc
    1888:	03ec0000 	mvneq	r0, #0
    188c:	00010000 	andeq	r0, r1, r0
    1890:	00000055 	andeq	r0, r0, r5, asr r0
	...
    18ac:	13000001 	movwne	r0, #1
    18b0:	01000001 	tsteq	r0, r1
    18b4:	01135100 	tsteq	r3, r0, lsl #2
    18b8:	015c0000 	cmpeq	ip, r0
    18bc:	00010000 	andeq	r0, r1, r0
    18c0:	00015c54 	andeq	r5, r1, r4, asr ip
    18c4:	0001dc00 	andeq	sp, r1, r0, lsl #24
    18c8:	f3000400 	vshl.u8	d0, d0, d0
    18cc:	dc9f5101 	ldfles	f5, [pc], {1}
    18d0:	f4000001 	vst4.8	{d0-d3}, [r0], r1
    18d4:	01000001 	tsteq	r0, r1
    18d8:	01f45400 	mvnseq	r5, r0, lsl #8
    18dc:	021c0000 	andseq	r0, ip, #0
    18e0:	00040000 	andeq	r0, r4, r0
    18e4:	9f5101f3 	svcls	0x005101f3
    18e8:	0000021c 	andeq	r0, r0, ip, lsl r2
    18ec:	00000230 	andeq	r0, r0, r0, lsr r2
    18f0:	30540001 	subscc	r0, r4, r1
    18f4:	d4000002 	strle	r0, [r0], #-2
    18f8:	04000002 	streq	r0, [r0], #-2
    18fc:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
    1900:	0002d49f 	muleq	r2, pc, r4	; <UNPREDICTABLE>
    1904:	00032c00 	andeq	r2, r3, r0, lsl #24
    1908:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
    190c:	0000032c 	andeq	r0, r0, ip, lsr #6
    1910:	000003ec 	andeq	r0, r0, ip, ror #7
    1914:	01f30004 	mvnseq	r0, r4
    1918:	00009f51 	andeq	r9, r0, r1, asr pc
	...
    1928:	00000120 	andeq	r0, r0, r0, lsr #2
    192c:	000001cc 	andeq	r0, r0, ip, asr #3
    1930:	dc5c0001 	mrrcle	0, 0, r0, ip, cr1
    1934:	27000001 	strcs	r0, [r0, -r1]
    1938:	01000003 	tsteq	r0, r3
    193c:	032c5c00 			; <UNDEFINED> instruction: 0x032c5c00
    1940:	03ec0000 	mvneq	r0, #0
    1944:	00010000 	andeq	r0, r1, r0
    1948:	0000005c 	andeq	r0, r0, ip, asr r0
    194c:	00000000 	andeq	r0, r0, r0
    1950:	00000100 	andeq	r0, r0, r0, lsl #2
    1954:	00000000 	andeq	r0, r0, r0
    1958:	00012000 	andeq	r2, r1, r0
    195c:	00014c00 	andeq	r4, r1, r0, lsl #24
    1960:	50000100 	andpl	r0, r0, r0, lsl #2
    1964:	000001dc 	ldrdeq	r0, [r0], -ip
    1968:	000001e0 	andeq	r0, r0, r0, ror #3
    196c:	d4500001 	ldrble	r0, [r0], #-1
    1970:	ec000002 	stc	0, cr0, [r0], {2}
    1974:	01000002 	tsteq	r0, r2
    1978:	02ec5000 	rsceq	r5, ip, #0
    197c:	03040000 	movweq	r0, #16384	; 0x4000
    1980:	00020000 	andeq	r0, r2, r0
    1984:	00007c74 	andeq	r7, r0, r4, ror ip
	...
    199c:	01280000 			; <UNDEFINED> instruction: 0x01280000
    19a0:	01a40000 			; <UNDEFINED> instruction: 0x01a40000
    19a4:	00010000 	andeq	r0, r1, r0
    19a8:	0001dc51 	andeq	sp, r1, r1, asr ip
    19ac:	00028000 	andeq	r8, r2, r0
    19b0:	51000100 	mrspl	r0, (UNDEF: 16)
    19b4:	00000294 	muleq	r0, r4, r2
    19b8:	000002b4 			; <UNDEFINED> instruction: 0x000002b4
    19bc:	b4510001 	ldrblt	r0, [r1], #-1
    19c0:	d4000002 	strle	r0, [r0], #-2
    19c4:	01000002 	tsteq	r0, r2
    19c8:	02d45300 	sbcseq	r5, r4, #0, 6
    19cc:	02dc0000 	sbcseq	r0, ip, #0
    19d0:	00010000 	andeq	r0, r1, r0
    19d4:	0002dc51 	andeq	sp, r2, r1, asr ip
    19d8:	00031c00 	andeq	r1, r3, r0, lsl #24
    19dc:	53000100 	movwpl	r0, #256	; 0x100
    19e0:	0000032c 	andeq	r0, r0, ip, lsr #6
    19e4:	00000370 	andeq	r0, r0, r0, ror r3
    19e8:	80510001 	subshi	r0, r1, r1
    19ec:	ec000003 	stc	0, cr0, [r0], {3}
    19f0:	01000003 	tsteq	r0, r3
    19f4:	00005100 	andeq	r5, r0, r0, lsl #2
	...
    1a04:	01a00000 	moveq	r0, r0
    1a08:	01a80000 			; <UNDEFINED> instruction: 0x01a80000
    1a0c:	00010000 	andeq	r0, r1, r0
    1a10:	0001a853 	andeq	sl, r1, r3, asr r8
    1a14:	0001cc00 	andeq	ip, r1, r0, lsl #24
    1a18:	73000300 	movwvc	r0, #768	; 0x300
    1a1c:	024c9f7f 	subeq	r9, ip, #508	; 0x1fc
    1a20:	02800000 	addeq	r0, r0, #0
    1a24:	00010000 	andeq	r0, r1, r0
    1a28:	0003685e 	andeq	r6, r3, lr, asr r8
    1a2c:	00037400 	andeq	r7, r3, r0, lsl #8
    1a30:	5e000100 	adfpls	f0, f0, f0
	...
    1a48:	012c0000 			; <UNDEFINED> instruction: 0x012c0000
    1a4c:	01980000 	orrseq	r0, r8, r0
    1a50:	00010000 	andeq	r0, r1, r0
    1a54:	0001dc5e 	andeq	sp, r1, lr, asr ip
    1a58:	00024800 	andeq	r4, r2, r0, lsl #16
    1a5c:	5e000100 	adfpls	f0, f0, f0
    1a60:	00000294 	muleq	r0, r4, r2
    1a64:	00000327 	andeq	r0, r0, r7, lsr #6
    1a68:	2c5e0001 	mrrccs	0, 0, r0, lr, cr1
    1a6c:	48000003 	stmdami	r0, {r0, r1}
    1a70:	01000003 	tsteq	r0, r3
    1a74:	03505e00 	cmpeq	r0, #0, 28
    1a78:	03600000 	cmneq	r0, #0
    1a7c:	00010000 	andeq	r0, r1, r0
    1a80:	0003805e 	andeq	r8, r3, lr, asr r0
    1a84:	0003b000 	andeq	fp, r3, r0
    1a88:	5e000100 	adfpls	f0, f0, f0
    1a8c:	000003b8 			; <UNDEFINED> instruction: 0x000003b8
    1a90:	000003d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
    1a94:	005e0001 	subseq	r0, lr, r1
	...
    1ab4:	38000000 	stmdacc	r0, {}	; <UNPREDICTABLE>
    1ab8:	84000001 	strhi	r0, [r0], #-1
    1abc:	01000001 	tsteq	r0, r1
    1ac0:	01845300 	orreq	r5, r4, r0, lsl #6
    1ac4:	01880000 	orreq	r0, r8, r0
    1ac8:	00020000 	andeq	r0, r2, r0
    1acc:	01dc047e 	bicseq	r0, ip, lr, ror r4
    1ad0:	01f80000 	mvnseq	r0, r0
    1ad4:	00010000 	andeq	r0, r1, r0
    1ad8:	0001f853 	andeq	pc, r1, r3, asr r8	; <UNPREDICTABLE>
    1adc:	00021400 	andeq	r1, r2, r0, lsl #8
    1ae0:	7e000200 	cdpvc	2, 0, cr0, cr0, cr0, {0}
    1ae4:	00021c04 	andeq	r1, r2, r4, lsl #24
    1ae8:	00022000 	andeq	r2, r2, r0
    1aec:	53000100 	movwpl	r0, #256	; 0x100
    1af0:	00000220 	andeq	r0, r0, r0, lsr #4
    1af4:	00000228 	andeq	r0, r0, r8, lsr #4
    1af8:	047e0002 	ldrbteq	r0, [lr], #-2
    1afc:	00000294 	muleq	r0, r4, r2
    1b00:	000002a4 	andeq	r0, r0, r4, lsr #5
    1b04:	a4530001 	ldrbge	r0, [r3], #-1
    1b08:	a8000002 	stmdage	r0, {r1}
    1b0c:	02000002 	andeq	r0, r0, #2
    1b10:	d4047e00 	strle	r7, [r4], #-3584	; 0xfffff200
    1b14:	dc000002 	stcle	0, cr0, [r0], {2}
    1b18:	01000002 	tsteq	r0, r2
    1b1c:	02dc5300 	sbcseq	r5, ip, #0, 6
    1b20:	03040000 	movweq	r0, #16384	; 0x4000
    1b24:	00070000 	andeq	r0, r7, r0
    1b28:	0906047e 	stmdbeq	r6, {r1, r2, r3, r4, r5, r6, sl}
    1b2c:	509f1afc 			; <UNDEFINED> instruction: 0x509f1afc
    1b30:	58000003 	stmdapl	r0, {r0, r1}
    1b34:	01000003 	tsteq	r0, r3
    1b38:	03805300 	orreq	r5, r0, #0, 6
    1b3c:	03900000 	orrseq	r0, r0, #0
    1b40:	00020000 	andeq	r0, r2, r0
    1b44:	0000047e 	andeq	r0, r0, lr, ror r4
	...
    1b5c:	0000014c 	andeq	r0, r0, ip, asr #2
    1b60:	00000158 	andeq	r0, r0, r8, asr r1
    1b64:	58500001 	ldmdapl	r0, {r0}^
    1b68:	5c000001 	stcpl	0, cr0, [r0], {1}
    1b6c:	02000001 	andeq	r0, r0, #1
    1b70:	5c787400 	cfldrdpl	mvd7, [r8], #-0
    1b74:	8c000001 	stchi	0, cr0, [r0], {1}
    1b78:	05000001 	streq	r0, [r0, #-1]
    1b7c:	5101f300 	mrspl	pc, SP_irq	; <UNPREDICTABLE>
    1b80:	02941c38 	addseq	r1, r4, #56, 24	; 0x3800
    1b84:	02ac0000 	adceq	r0, ip, #0
    1b88:	00050000 	andeq	r0, r5, r0
    1b8c:	385101f3 	ldmdacc	r1, {r0, r1, r4, r5, r6, r7, r8}^
    1b90:	0002e41c 	andeq	lr, r2, ip, lsl r4
    1b94:	0002f400 	andeq	pc, r2, r0, lsl #8
    1b98:	51000100 	mrspl	r0, (UNDEF: 16)
    1b9c:	000002f4 	strdeq	r0, [r0], -r4
    1ba0:	000002fc 	strdeq	r0, [r0], -ip
    1ba4:	78740002 	ldmdavc	r4!, {r1}^
    1ba8:	00000350 	andeq	r0, r0, r0, asr r3
    1bac:	00000358 	andeq	r0, r0, r8, asr r3
    1bb0:	01f30005 	mvnseq	r0, r5
    1bb4:	001c3851 	andseq	r3, ip, r1, asr r8
	...
    1bc0:	00000001 	andeq	r0, r0, r1
	...
    1bcc:	00017400 	andeq	r7, r1, r0, lsl #8
    1bd0:	00018c00 	andeq	r8, r1, r0, lsl #24
    1bd4:	56000100 	strpl	r0, [r0], -r0, lsl #2
    1bd8:	000001b8 			; <UNDEFINED> instruction: 0x000001b8
    1bdc:	000001bc 			; <UNDEFINED> instruction: 0x000001bc
    1be0:	78710003 	ldmdavc	r1!, {r0, r1}^
    1be4:	0001bc9f 	muleq	r1, pc, ip	; <UNPREDICTABLE>
    1be8:	0001cc00 	andeq	ip, r1, r0, lsl #24
    1bec:	51000100 	mrspl	r0, (UNDEF: 16)
    1bf0:	00000204 	andeq	r0, r0, r4, lsl #4
    1bf4:	0000021c 	andeq	r0, r0, ip, lsl r2
    1bf8:	58500001 	ldmdapl	r0, {r0}^
    1bfc:	94000002 	strls	r0, [r0], #-2
    1c00:	01000002 	tsteq	r0, r2
    1c04:	03505000 	cmpeq	r0, #0
    1c08:	03580000 	cmpeq	r8, #0
    1c0c:	00010000 	andeq	r0, r1, r0
    1c10:	00036856 	andeq	r6, r3, r6, asr r8
    1c14:	00038000 	andeq	r8, r3, r0
    1c18:	50000100 	andpl	r0, r0, r0, lsl #2
	...
    1c24:	00010101 	andeq	r0, r1, r1, lsl #2
    1c28:	00000001 	andeq	r0, r0, r1
    1c2c:	00000001 	andeq	r0, r0, r1
    1c30:	00000000 	andeq	r0, r0, r0
    1c34:	01740000 	cmneq	r4, r0
    1c38:	018c0000 	orreq	r0, ip, r0
    1c3c:	00010000 	andeq	r0, r1, r0
    1c40:	0001b850 	andeq	fp, r1, r0, asr r8
    1c44:	0001cc00 	andeq	ip, r1, r0, lsl #24
    1c48:	50000100 	andpl	r0, r0, r0, lsl #2
    1c4c:	00000204 	andeq	r0, r0, r4, lsl #4
    1c50:	00000210 	andeq	r0, r0, r0, lsl r2
    1c54:	10530001 	subsne	r0, r3, r1
    1c58:	1c000002 	stcne	0, cr0, [r0], {2}
    1c5c:	02000002 	andeq	r0, r0, #2
    1c60:	58087000 	stmdapl	r8, {ip, sp, lr}
    1c64:	94000002 	strls	r0, [r0], #-2
    1c68:	01000002 	tsteq	r0, r2
    1c6c:	02bc5300 	adcseq	r5, ip, #0, 6
    1c70:	02d40000 	sbcseq	r0, r4, #0
    1c74:	00010000 	andeq	r0, r1, r0
    1c78:	0002f451 	andeq	pc, r2, r1, asr r4	; <UNPREDICTABLE>
    1c7c:	0002fc00 	andeq	pc, r2, r0, lsl #24
    1c80:	50000100 	andpl	r0, r0, r0, lsl #2
    1c84:	00000350 	andeq	r0, r0, r0, asr r3
    1c88:	00000358 	andeq	r0, r0, r8, asr r3
    1c8c:	68500001 	ldmdavs	r0, {r0}^
    1c90:	80000003 	andhi	r0, r0, r3
    1c94:	01000003 	tsteq	r0, r3
    1c98:	00005300 	andeq	r5, r0, r0, lsl #6
    1c9c:	00000000 	andeq	r0, r0, r0
    1ca0:	01010000 	mrseq	r0, (UNDEF: 1)
    1ca4:	00000100 	andeq	r0, r0, r0, lsl #2
    1ca8:	01000000 	mrseq	r0, (UNDEF: 0)
    1cac:	01440001 	cmpeq	r4, r1
    1cb0:	018c0000 	orreq	r0, ip, r0
    1cb4:	00020000 	andeq	r0, r2, r0
    1cb8:	01dc9f30 	bicseq	r9, ip, r0, lsr pc
    1cbc:	022c0000 	eoreq	r0, ip, #0
    1cc0:	00020000 	andeq	r0, r2, r0
    1cc4:	02949f30 	addseq	r9, r4, #48, 30	; 0xc0
    1cc8:	02d40000 	sbcseq	r0, r4, #0
    1ccc:	00020000 	andeq	r0, r2, r0
    1cd0:	03509f31 	cmpeq	r0, #49, 30	; 0xc4
    1cd4:	03580000 	cmpeq	r8, #0
    1cd8:	00020000 	andeq	r0, r2, r0
    1cdc:	03809f30 	orreq	r9, r0, #48, 30	; 0xc0
    1ce0:	03800000 	orreq	r0, r0, #0
    1ce4:	00020000 	andeq	r0, r2, r0
    1ce8:	03809f30 	orreq	r9, r0, #48, 30	; 0xc0
    1cec:	039c0000 	orrseq	r0, ip, #0
    1cf0:	00020000 	andeq	r0, r2, r0
    1cf4:	00009f31 	andeq	r9, r0, r1, lsr pc
	...
    1d04:	00000074 	andeq	r0, r0, r4, ror r0
    1d08:	0000009c 	muleq	r0, ip, r0
    1d0c:	9c500001 	mrrcls	0, 0, r0, r0, cr1	; <UNPREDICTABLE>
    1d10:	70000000 	andvc	r0, r0, r0
    1d14:	01000001 	tsteq	r0, r1
    1d18:	01705500 	cmneq	r0, r0, lsl #10
    1d1c:	01780000 	cmneq	r8, r0
    1d20:	00040000 	andeq	r0, r4, r0
    1d24:	9f5001f3 	svcls	0x005001f3
	...
    1d30:	00000001 	andeq	r0, r0, r1
    1d34:	000000a8 	andeq	r0, r0, r8, lsr #1
    1d38:	000000b0 	strheq	r0, [r0], -r0	; <UNPREDICTABLE>
    1d3c:	b0540001 	subslt	r0, r4, r1
    1d40:	b7000000 	strlt	r0, [r0, -r0]
    1d44:	01000000 	mrseq	r0, (UNDEF: 0)
    1d48:	00005100 	andeq	r5, r0, r0, lsl #2
	...
    1d54:	000000a0 	andeq	r0, r0, r0, lsr #1
    1d58:	000000d8 	ldrdeq	r0, [r0], -r8
    1d5c:	00540001 	subseq	r0, r4, r1
	...
    1d68:	00010000 	andeq	r0, r1, r0
    1d6c:	00011800 	andeq	r1, r1, r0, lsl #16
    1d70:	54000100 	strpl	r0, [r0], #-256	; 0xffffff00
	...
    1d7c:	00000001 	andeq	r0, r0, r1
    1d80:	00000100 	andeq	r0, r0, r0, lsl #2
    1d84:	00000108 	andeq	r0, r0, r8, lsl #2
    1d88:	08540001 	ldmdaeq	r4, {r0}^
    1d8c:	0f000001 	svceq	0x00000001
    1d90:	01000001 	tsteq	r0, r1
    1d94:	00005100 	andeq	r5, r0, r0, lsl #2
    1d98:	00000000 	andeq	r0, r0, r0
    1d9c:	00010000 	andeq	r0, r1, r0
    1da0:	00000150 	andeq	r0, r0, r0, asr r1
    1da4:	0000016c 	andeq	r0, r0, ip, ror #2
    1da8:	00540001 	subseq	r0, r4, r1
    1dac:	00000000 	andeq	r0, r0, r0
    1db0:	01000000 	mrseq	r0, (UNDEF: 0)
    1db4:	00015000 	andeq	r5, r1, r0
    1db8:	00016c00 	andeq	r6, r1, r0, lsl #24
    1dbc:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
	...
    1dd0:	003b0000 	eorseq	r0, fp, r0
    1dd4:	00010000 	andeq	r0, r1, r0
    1dd8:	00003b50 	andeq	r3, r0, r0, asr fp
    1ddc:	00007000 	andeq	r7, r0, r0
    1de0:	55000100 	strpl	r0, [r0, #-256]	; 0xffffff00
    1de4:	00000070 	andeq	r0, r0, r0, ror r0
    1de8:	00000074 	andeq	r0, r0, r4, ror r0
    1dec:	01f30004 	mvnseq	r0, r4
    1df0:	00009f50 	andeq	r9, r0, r0, asr pc
	...
    1e04:	00000034 	andeq	r0, r0, r4, lsr r0
    1e08:	34510001 	ldrbcc	r0, [r1], #-1
    1e0c:	70000000 	andvc	r0, r0, r0
    1e10:	01000000 	mrseq	r0, (UNDEF: 0)
    1e14:	00705400 	rsbseq	r5, r0, r0, lsl #8
    1e18:	00740000 	rsbseq	r0, r4, r0
    1e1c:	00040000 	andeq	r0, r4, r0
    1e20:	9f5101f3 	svcls	0x005101f3
	...
    1e2c:	00180001 	andseq	r0, r8, r1
    1e30:	00600000 	rsbeq	r0, r0, r0
    1e34:	00010000 	andeq	r0, r1, r0
    1e38:	00000056 	andeq	r0, r0, r6, asr r0
    1e3c:	00000000 	andeq	r0, r0, r0
    1e40:	00000100 	andeq	r0, r0, r0, lsl #2
    1e44:	00001800 	andeq	r1, r0, r0, lsl #16
    1e48:	00003b00 	andeq	r3, r0, r0, lsl #22
    1e4c:	50000100 	andpl	r0, r0, r0, lsl #2
    1e50:	0000003b 	andeq	r0, r0, fp, lsr r0
    1e54:	00000060 	andeq	r0, r0, r0, rrx
    1e58:	00550001 	subseq	r0, r5, r1
    1e5c:	00000000 	andeq	r0, r0, r0
    1e60:	01000000 	mrseq	r0, (UNDEF: 0)
    1e64:	00002400 	andeq	r2, r0, r0, lsl #8
    1e68:	00005400 	andeq	r5, r0, r0, lsl #8
    1e6c:	57000100 	strpl	r0, [r0, -r0, lsl #2]
	...
    1e78:	00000001 	andeq	r0, r0, r1
    1e7c:	00000024 	andeq	r0, r0, r4, lsr #32
    1e80:	0000003b 	andeq	r0, r0, fp, lsr r0
    1e84:	3b500001 	blcc	1401e90 <_bsl_base_address+0x11ffe90>
    1e88:	54000000 	strpl	r0, [r0], #-0
    1e8c:	01000000 	mrseq	r0, (UNDEF: 0)
    1e90:	00005500 	andeq	r5, r0, r0, lsl #10
    1e94:	00000000 	andeq	r0, r0, r0
    1e98:	00010000 	andeq	r0, r1, r0
    1e9c:	00000030 	andeq	r0, r0, r0, lsr r0
    1ea0:	00000048 	andeq	r0, r0, r8, asr #32
    1ea4:	00580001 	subseq	r0, r8, r1
    1ea8:	00000000 	andeq	r0, r0, r0
    1eac:	01000000 	mrseq	r0, (UNDEF: 0)
    1eb0:	30000000 	andcc	r0, r0, r0
    1eb4:	3b000000 	blcc	1ebc <__data_load__+0x88c>
    1eb8:	01000000 	mrseq	r0, (UNDEF: 0)
    1ebc:	003b5000 	eorseq	r5, fp, r0
    1ec0:	00480000 	subeq	r0, r8, r0
    1ec4:	00010000 	andeq	r0, r1, r0
    1ec8:	00000055 	andeq	r0, r0, r5, asr r0
	...
    1ed8:	00001800 	andeq	r1, r0, r0, lsl #16
    1edc:	50000100 	andpl	r0, r0, r0, lsl #2
    1ee0:	00000018 	andeq	r0, r0, r8, lsl r0
    1ee4:	0000002c 	andeq	r0, r0, ip, lsr #32
    1ee8:	01f30004 	mvnseq	r0, r4
    1eec:	00009f50 	andeq	r9, r0, r0, asr pc
    1ef0:	00000000 	andeq	r0, r0, r0
    1ef4:	00010000 	andeq	r0, r1, r0
    1ef8:	00000014 	andeq	r0, r0, r4, lsl r0
    1efc:	0000001c 	andeq	r0, r0, ip, lsl r0
    1f00:	d0030005 	andle	r0, r3, r5
    1f04:	00200008 	eoreq	r0, r0, r8
    1f08:	00000000 	andeq	r0, r0, r0
    1f0c:	01000000 	mrseq	r0, (UNDEF: 0)
    1f10:	00000000 	andeq	r0, r0, r0
    1f14:	00000400 	andeq	r0, r0, r0, lsl #8
    1f18:	50000100 	andpl	r0, r0, r0, lsl #2
	...

Disassembly of section .debug_frame:

00000000 <.debug_frame>:
   0:	0000000c 	andeq	r0, r0, ip
   4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
   8:	7c020001 	stcvc	0, cr0, [r2], {1}
   c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  10:	00000018 	andeq	r0, r0, r8, lsl r0
  14:	00000000 	andeq	r0, r0, r0
  18:	00000370 	andeq	r0, r0, r0, ror r3
  1c:	00000020 	andeq	r0, r0, r0, lsr #32
  20:	84080e44 	strhi	r0, [r8], #-3652	; 0xfffff1bc
  24:	4a018e02 	bmi	63834 <__data_load__+0x62204>
  28:	000ec4ce 	andeq	ip, lr, lr, asr #9
  2c:	0000000c 	andeq	r0, r0, ip
  30:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  34:	7c020001 	stcvc	0, cr0, [r2], {1}
  38:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  3c:	00000014 	andeq	r0, r0, r4, lsl r0
  40:	0000002c 	andeq	r0, r0, ip, lsr #32
  44:	00000390 	muleq	r0, r0, r3
  48:	00000034 	andeq	r0, r0, r4, lsr r0
  4c:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  50:	00018e02 	andeq	r8, r1, r2, lsl #28
  54:	0000000c 	andeq	r0, r0, ip
  58:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  5c:	7c020001 	stcvc	0, cr0, [r2], {1}
  60:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  64:	00000020 	andeq	r0, r0, r0, lsr #32
  68:	00000054 	andeq	r0, r0, r4, asr r0
  6c:	000003c4 	andeq	r0, r0, r4, asr #7
  70:	00000044 	andeq	r0, r0, r4, asr #32
  74:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
  78:	86038504 	strhi	r8, [r3], -r4, lsl #10
  7c:	5a018e02 	bpl	6388c <__data_load__+0x6225c>
  80:	c4c5c6ce 	strbgt	ip, [r5], #1742	; 0x6ce
  84:	0000000e 	andeq	r0, r0, lr
  88:	0000000c 	andeq	r0, r0, ip
  8c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  90:	7c020001 	stcvc	0, cr0, [r2], {1}
  94:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  98:	00000020 	andeq	r0, r0, r0, lsr #32
  9c:	00000088 	andeq	r0, r0, r8, lsl #1
  a0:	00000408 	andeq	r0, r0, r8, lsl #8
  a4:	00000088 	andeq	r0, r0, r8, lsl #1
  a8:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
  ac:	86038504 	strhi	r8, [r3], -r4, lsl #10
  b0:	78018e02 	stmdavc	r1, {r1, r9, sl, fp, pc}
  b4:	c4c5c6ce 	strbgt	ip, [r5], #1742	; 0x6ce
  b8:	0000000e 	andeq	r0, r0, lr
  bc:	0000000c 	andeq	r0, r0, ip
  c0:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
  c4:	7c020001 	stcvc	0, cr0, [r2], {1}
  c8:	000d0c0e 	andeq	r0, sp, lr, lsl #24
  cc:	00000018 	andeq	r0, r0, r8, lsl r0
  d0:	000000bc 	strheq	r0, [r0], -ip
  d4:	00000490 	muleq	r0, r0, r4
  d8:	00000020 	andeq	r0, r0, r0, lsr #32
  dc:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  e0:	4a018e02 	bmi	638f0 <__data_load__+0x622c0>
  e4:	000ec4ce 	andeq	ip, lr, lr, asr #9
  e8:	00000018 	andeq	r0, r0, r8, lsl r0
  ec:	000000bc 	strheq	r0, [r0], -ip
  f0:	000004b0 			; <UNDEFINED> instruction: 0x000004b0
  f4:	00000020 	andeq	r0, r0, r0, lsr #32
  f8:	84080e42 	strhi	r0, [r8], #-3650	; 0xfffff1be
  fc:	4a018e02 	bmi	6390c <__data_load__+0x622dc>
 100:	000ec4ce 	andeq	ip, lr, lr, asr #9
 104:	0000000c 	andeq	r0, r0, ip
 108:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 10c:	7c020001 	stcvc	0, cr0, [r2], {1}
 110:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 114:	00000070 	andeq	r0, r0, r0, ror r0
 118:	00000104 	andeq	r0, r0, r4, lsl #2
 11c:	000004d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 120:	000007f0 	strdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 124:	84240e42 	strthi	r0, [r4], #-3650	; 0xfffff1be
 128:	86088509 	strhi	r8, [r8], -r9, lsl #10
 12c:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 130:	8a048905 	bhi	12254c <__data_load__+0x120f1c>
 134:	8e028b03 	vmlahi.f64	d8, d2, d3
 138:	300e4801 	andcc	r4, lr, r1, lsl #16
 13c:	240e0a78 	strcs	r0, [lr], #-2680	; 0xfffff588
 140:	cacbce42 	bgt	ff2f3a50 <__stack+0xdf2f3178>
 144:	c6c7c8c9 	strbgt	ip, [r7], r9, asr #17
 148:	000ec4c5 	andeq	ip, lr, r5, asr #9
 14c:	52020b42 	andpl	r0, r2, #67584	; 0x10800
 150:	42240e0a 	eormi	r0, r4, #10, 28	; 0xa0
 154:	c9cacbce 	stmibgt	sl, {r1, r2, r3, r6, r7, r8, r9, fp, lr, pc}^
 158:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 15c:	42000ec4 	andmi	r0, r0, #196, 28	; 0xc40
 160:	01a8030b 			; <UNDEFINED> instruction: 0x01a8030b
 164:	42240e0a 	eormi	r0, r4, #10, 28	; 0xa0
 168:	c9cacbce 	stmibgt	sl, {r1, r2, r3, r6, r7, r8, r9, fp, lr, pc}^
 16c:	c5c6c7c8 	strbgt	ip, [r6, #1992]	; 0x7c8
 170:	42000ec4 	andmi	r0, r0, #196, 28	; 0xc40
 174:	0e0a5a0b 	vmlaeq.f32	s10, s20, s22
 178:	cbce4224 	blgt	ff390a10 <__stack+0xdf390138>
 17c:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 180:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
 184:	000b4200 	andeq	r4, fp, r0, lsl #4
 188:	0000000c 	andeq	r0, r0, ip
 18c:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 190:	7c020001 	stcvc	0, cr0, [r2], {1}
 194:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 198:	00000034 	andeq	r0, r0, r4, lsr r0
 19c:	00000188 	andeq	r0, r0, r8, lsl #3
 1a0:	00000cc0 	andeq	r0, r0, r0, asr #25
 1a4:	0000011c 	andeq	r0, r0, ip, lsl r1
 1a8:	840c0e62 	strhi	r0, [ip], #-3682	; 0xfffff19e
 1ac:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 1b0:	ce4e0201 	cdpgt	2, 4, cr0, cr14, cr1, {0}
 1b4:	000ec4c5 	andeq	ip, lr, r5, asr #9
 1b8:	840c0e52 	strhi	r0, [ip], #-3666	; 0xfffff1ae
 1bc:	8e028503 	cfsh32hi	mvfx8, mvfx2, #3
 1c0:	000e4401 	andeq	r4, lr, r1, lsl #8
 1c4:	44cec5c4 	strbmi	ip, [lr], #1476	; 0x5c4
 1c8:	03840c0e 	orreq	r0, r4, #3584	; 0xe00
 1cc:	018e0285 	orreq	r0, lr, r5, lsl #5
 1d0:	0000000c 	andeq	r0, r0, ip
 1d4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 1d8:	7c020001 	stcvc	0, cr0, [r2], {1}
 1dc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 1e0:	0000000c 	andeq	r0, r0, ip
 1e4:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 1e8:	00000ddc 	ldrdeq	r0, [r0], -ip
 1ec:	00000004 	andeq	r0, r0, r4
 1f0:	0000000c 	andeq	r0, r0, ip
 1f4:	000001d0 	ldrdeq	r0, [r0], -r0	; <UNPREDICTABLE>
 1f8:	00000de0 	andeq	r0, r0, r0, ror #27
 1fc:	00000004 	andeq	r0, r0, r4
 200:	0000000c 	andeq	r0, r0, ip
 204:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 208:	7c020001 	stcvc	0, cr0, [r2], {1}
 20c:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 210:	00000028 	andeq	r0, r0, r8, lsr #32
 214:	00000200 	andeq	r0, r0, r0, lsl #4
 218:	00000de4 	andeq	r0, r0, r4, ror #27
 21c:	00000044 	andeq	r0, r0, r4, asr #32
 220:	84100e44 	ldrhi	r0, [r0], #-3652	; 0xfffff1bc
 224:	86038504 	strhi	r8, [r3], -r4, lsl #10
 228:	50018e02 	andpl	r8, r1, r2, lsl #28
 22c:	c5c6ce0a 	strbgt	ip, [r6, #3594]	; 0xe0a
 230:	42000ec4 	andmi	r0, r0, #196, 28	; 0xc40
 234:	c6ce480b 	strbgt	r4, [lr], fp, lsl #16
 238:	000ec4c5 	andeq	ip, lr, r5, asr #9
 23c:	0000000c 	andeq	r0, r0, ip
 240:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 244:	7c020001 	stcvc	0, cr0, [r2], {1}
 248:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 24c:	0000001c 	andeq	r0, r0, ip, lsl r0
 250:	0000023c 	andeq	r0, r0, ip, lsr r2
 254:	00000e28 	andeq	r0, r0, r8, lsr #28
 258:	0000008c 	andeq	r0, r0, ip, lsl #1
 25c:	84080e44 	strhi	r0, [r8], #-3652	; 0xfffff1bc
 260:	60018e02 	andvs	r8, r1, r2, lsl #28
 264:	0ec4ce0a 	cdpeq	14, 12, cr12, cr4, cr10, {0}
 268:	000b4200 	andeq	r4, fp, r0, lsl #4
 26c:	0000000c 	andeq	r0, r0, ip
 270:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 274:	7c020001 	stcvc	0, cr0, [r2], {1}
 278:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 27c:	00000018 	andeq	r0, r0, r8, lsl r0
 280:	0000026c 	andeq	r0, r0, ip, ror #4
 284:	00001560 	andeq	r1, r0, r0, ror #10
 288:	00000028 	andeq	r0, r0, r8, lsr #32
 28c:	84080e48 	strhi	r0, [r8], #-3656	; 0xfffff1b8
 290:	46018e02 	strmi	r8, [r1], -r2, lsl #28
 294:	000ec4ce 	andeq	ip, lr, lr, asr #9
 298:	00000038 	andeq	r0, r0, r8, lsr r0
 29c:	0000026c 	andeq	r0, r0, ip, ror #4
 2a0:	00000eb4 			; <UNDEFINED> instruction: 0x00000eb4
 2a4:	00000118 	andeq	r0, r0, r8, lsl r1
 2a8:	84240e44 	strthi	r0, [r4], #-3652	; 0xfffff1bc
 2ac:	86088509 	strhi	r8, [r8], -r9, lsl #10
 2b0:	88068707 	stmdahi	r6, {r0, r1, r2, r8, r9, sl, pc}
 2b4:	8a048905 	bhi	1226d0 <__data_load__+0x1210a0>
 2b8:	8e028b03 	vmlahi.f64	d8, d2, d3
 2bc:	300e4601 	andcc	r4, lr, r1, lsl #12
 2c0:	0e0a5c02 	cdpeq	12, 0, cr5, cr10, cr2, {0}
 2c4:	cbce4224 	blgt	ff390b5c <__stack+0xdf390284>
 2c8:	c7c8c9ca 	strbgt	ip, [r8, sl, asr #19]
 2cc:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
 2d0:	000b4200 	andeq	r4, fp, r0, lsl #4
 2d4:	0000000c 	andeq	r0, r0, ip
 2d8:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 2dc:	7c020001 	stcvc	0, cr0, [r2], {1}
 2e0:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 2e4:	00000034 	andeq	r0, r0, r4, lsr r0
 2e8:	000002d4 	ldrdeq	r0, [r0], -r4
 2ec:	00000fcc 	andeq	r0, r0, ip, asr #31
 2f0:	00000100 	andeq	r0, r0, r0, lsl #2
 2f4:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 2f8:	86058506 	strhi	r8, [r5], -r6, lsl #10
 2fc:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 300:	74018e02 	strvc	r8, [r1], #-3586	; 0xfffff1fe
 304:	c7c8ce0a 	strbgt	ip, [r8, sl, lsl #28]
 308:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
 30c:	620b4200 	andvs	r4, fp, #0, 4
 310:	c7c8ce0a 	strbgt	ip, [r8, sl, lsl #28]
 314:	0ec4c5c6 	cdpeq	5, 12, cr12, cr4, cr6, {6}
 318:	000b4200 	andeq	r4, fp, r0, lsl #4
 31c:	00000024 	andeq	r0, r0, r4, lsr #32
 320:	000002d4 	ldrdeq	r0, [r0], -r4
 324:	000010cc 	andeq	r1, r0, ip, asr #1
 328:	000002ec 	andeq	r0, r0, ip, ror #5
 32c:	84100e42 	ldrhi	r0, [r0], #-3650	; 0xfffff1be
 330:	86038504 	strhi	r8, [r3], -r4, lsl #10
 334:	02018e02 	andeq	r8, r1, #2, 28
 338:	c6ce0a6a 	strbgt	r0, [lr], sl, ror #20
 33c:	000ec4c5 	andeq	ip, lr, r5, asr #9
 340:	00000b42 	andeq	r0, r0, r2, asr #22
 344:	0000000c 	andeq	r0, r0, ip
 348:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 34c:	7c020001 	stcvc	0, cr0, [r2], {1}
 350:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 354:	00000024 	andeq	r0, r0, r4, lsr #32
 358:	00000344 	andeq	r0, r0, r4, asr #6
 35c:	000013b8 			; <UNDEFINED> instruction: 0x000013b8
 360:	00000074 	andeq	r0, r0, r4, ror r0
 364:	84180e42 	ldrhi	r0, [r8], #-3650	; 0xfffff1be
 368:	86058506 	strhi	r8, [r5], -r6, lsl #10
 36c:	88038704 	stmdahi	r3, {r2, r8, r9, sl, pc}
 370:	76018e02 	strvc	r8, [r1], -r2, lsl #28
 374:	c6c7c8ce 	strbgt	ip, [r7], lr, asr #17
 378:	000ec4c5 	andeq	ip, lr, r5, asr #9
 37c:	00000020 	andeq	r0, r0, r0, lsr #32
 380:	00000344 	andeq	r0, r0, r4, asr #6
 384:	0000142c 	andeq	r1, r0, ip, lsr #8
 388:	00000104 	andeq	r0, r0, r4, lsl #2
 38c:	84100e4e 	ldrhi	r0, [r0], #-3662	; 0xfffff1b2
 390:	86038504 	strhi	r8, [r3], -r4, lsl #10
 394:	02018e02 	andeq	r8, r1, #2, 28
 398:	c5c6ce70 	strbgt	ip, [r6, #3696]	; 0xe70
 39c:	00000ec4 	andeq	r0, r0, r4, asr #29
 3a0:	0000000c 	andeq	r0, r0, ip
 3a4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3a8:	7c020001 	stcvc	0, cr0, [r2], {1}
 3ac:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3b0:	0000000c 	andeq	r0, r0, ip
 3b4:	000003a0 	andeq	r0, r0, r0, lsr #7
 3b8:	00001530 	andeq	r1, r0, r0, lsr r5
 3bc:	0000002c 	andeq	r0, r0, ip, lsr #32
 3c0:	0000000c 	andeq	r0, r0, ip
 3c4:	ffffffff 			; <UNDEFINED> instruction: 0xffffffff
 3c8:	7c020001 	stcvc	0, cr0, [r2], {1}
 3cc:	000d0c0e 	andeq	r0, sp, lr, lsl #24
 3d0:	0000000c 	andeq	r0, r0, ip
 3d4:	000003c0 	andeq	r0, r0, r0, asr #7
 3d8:	0000155c 	andeq	r1, r0, ip, asr r5
 3dc:	00000004 	andeq	r0, r0, r4

Disassembly of section .debug_ranges:

00000000 <.debug_ranges>:
   0:	00000200 	andeq	r0, r0, r0, lsl #4
   4:	00000320 	andeq	r0, r0, r0, lsr #6
   8:	00000328 	andeq	r0, r0, r8, lsr #6
   c:	00000340 	andeq	r0, r0, r0, asr #6
  10:	00000608 	andeq	r0, r0, r8, lsl #12
  14:	00000660 	andeq	r0, r0, r0, ror #12
  18:	000006c4 	andeq	r0, r0, r4, asr #13
  1c:	000006e8 	andeq	r0, r0, r8, ror #13
  20:	00000744 	andeq	r0, r0, r4, asr #14
  24:	0000074c 	andeq	r0, r0, ip, asr #14
  28:	00000788 	andeq	r0, r0, r8, lsl #15
  2c:	00000794 	muleq	r0, r4, r7
  30:	00000798 	muleq	r0, r8, r7
  34:	0000079c 	muleq	r0, ip, r7
	...
  40:	0000156c 	andeq	r1, r0, ip, ror #10
  44:	0000156c 	andeq	r1, r0, ip, ror #10
  48:	00001570 	andeq	r1, r0, r0, ror r5
  4c:	00001578 	andeq	r1, r0, r8, ror r5
	...
  58:	00000ed8 	ldrdeq	r0, [r0], -r8
  5c:	00000ee0 	andeq	r0, r0, r0, ror #29
  60:	00000f08 	andeq	r0, r0, r8, lsl #30
  64:	00000f74 	andeq	r0, r0, r4, ror pc
  68:	00000f88 	andeq	r0, r0, r8, lsl #31
  6c:	00000fb0 			; <UNDEFINED> instruction: 0x00000fb0
  70:	00000fb8 			; <UNDEFINED> instruction: 0x00000fb8
  74:	00000fcc 	andeq	r0, r0, ip, asr #31
	...
  80:	00000eb4 			; <UNDEFINED> instruction: 0x00000eb4
  84:	00000fcc 	andeq	r0, r0, ip, asr #31
  88:	00001560 	andeq	r1, r0, r0, ror #10
  8c:	00001588 	andeq	r1, r0, r8, lsl #11
	...
