
_build/build.elf:	file format elf32-littlearm

Disassembly of section .text:

00000000 <$d>:
       0: 00 80 01 20  	.word	0x20018000
       4: f5 0f 00 00  	.word	0x00000ff5
       8: d1 0f 00 00  	.word	0x00000fd1
       c: d1 0f 00 00  	.word	0x00000fd1
      10: d1 0f 00 00  	.word	0x00000fd1
      14: d1 0f 00 00  	.word	0x00000fd1
      18: d1 0f 00 00  	.word	0x00000fd1
      1c: 00 00 00 00  	.word	0x00000000
      20: 00 00 00 00  	.word	0x00000000
      24: 00 00 00 00  	.word	0x00000000
      28: 00 00 00 00  	.word	0x00000000
      2c: 71 52 00 00  	.word	0x00005271
      30: d1 0f 00 00  	.word	0x00000fd1
      34: 00 00 00 00  	.word	0x00000000
      38: 81 53 00 00  	.word	0x00005381
      3c: e9 53 00 00  	.word	0x000053e9
      40: d1 0f 00 00  	.word	0x00000fd1
      44: d5 26 00 00  	.word	0x000026d5
      48: d1 0f 00 00  	.word	0x00000fd1
      4c: 01 3a 00 00  	.word	0x00003a01
      50: e9 28 00 00  	.word	0x000028e9
      54: d1 0f 00 00  	.word	0x00000fd1
      58: e1 2d 00 00  	.word	0x00002de1
      5c: 91 3d 00 00  	.word	0x00003d91
      60: d1 0f 00 00  	.word	0x00000fd1
      64: d1 0f 00 00  	.word	0x00000fd1
      68: a9 3e 00 00  	.word	0x00003ea9
      6c: 3d 2b 00 00  	.word	0x00002b3d
      70: d1 0f 00 00  	.word	0x00000fd1
      74: d1 0f 00 00  	.word	0x00000fd1
      78: d1 0f 00 00  	.word	0x00000fd1
      7c: d1 0f 00 00  	.word	0x00000fd1
      80: d1 0f 00 00  	.word	0x00000fd1
      84: d1 0f 00 00  	.word	0x00000fd1
      88: d1 0f 00 00  	.word	0x00000fd1
      8c: d1 0f 00 00  	.word	0x00000fd1
      90: d1 0f 00 00  	.word	0x00000fd1
      94: d1 0f 00 00  	.word	0x00000fd1
      98: d1 0f 00 00  	.word	0x00000fd1
      9c: d1 0f 00 00  	.word	0x00000fd1
      a0: d1 0f 00 00  	.word	0x00000fd1
      a4: d1 0f 00 00  	.word	0x00000fd1
      a8: d1 0f 00 00  	.word	0x00000fd1
      ac: c9 39 00 00  	.word	0x000039c9
      b0: d1 0f 00 00  	.word	0x00000fd1
      b4: d1 0f 00 00  	.word	0x00000fd1
      b8: 00 00 00 00  	.word	0x00000000
      bc: 00 00 00 00  	.word	0x00000000
      c0: d1 0f 00 00  	.word	0x00000fd1
      c4: d1 0f 00 00  	.word	0x00000fd1
      c8: d1 0f 00 00  	.word	0x00000fd1
      cc: d1 0f 00 00  	.word	0x00000fd1
      d0: d1 0f 00 00  	.word	0x00000fd1
      d4: d1 0f 00 00  	.word	0x00000fd1
      d8: d1 0f 00 00  	.word	0x00000fd1
      dc: d1 0f 00 00  	.word	0x00000fd1
      e0: d1 0f 00 00  	.word	0x00000fd1
      e4: 00 00 00 00  	.word	0x00000000
      e8: 00 00 00 00  	.word	0x00000000
      ec: 00 00 00 00  	.word	0x00000000
      f0: 00 00 00 00  	.word	0x00000000
      f4: d1 0f 00 00  	.word	0x00000fd1
      f8: 00 00 00 00  	.word	0x00000000
      fc: dd 30 00 00  	.word	0x000030dd

00000100 <deregister_tm_clones>:
; deregister_tm_clones():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:35
;     printf("\r\n");
     100: 4803         	ldr	r0, [pc, #12]           @ 0x110 <$d>
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:36
;     printf("Tensor 3 type: %d, buffer: %d\r\n", ((Tensor_3 *)get_tensor(tensors, 3))->type, ((Tensor_3 *)get_tensor(tensors, 3))->buffer);
     102: 4b04         	ldr	r3, [pc, #16]           @ 0x114 <$d+0x4>
     104: 4283         	cmp	r3, r0
     106: d002         	beq	0x10e <deregister_tm_clones+0xe> @ imm = #4
     108: 4b03         	ldr	r3, [pc, #12]           @ 0x118 <$d+0x8>
     10a: b103         	cbz	r3, 0x10e <deregister_tm_clones+0xe> @ imm = #0
     10c: 4718         	bx	r3
     10e: 4770         	bx	lr

00000110 <$d>:
     110: 10 00 00 20  	.word	0x20000010
     114: 10 00 00 20  	.word	0x20000010
     118: 00 00 00 00  	.word	0x00000000

0000011c <register_tm_clones>:
; register_tm_clones():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:36
     11c: 4805         	ldr	r0, [pc, #20]           @ 0x134 <$d>
     11e: 4b06         	ldr	r3, [pc, #24]           @ 0x138 <$d+0x4>
     120: 1a1b         	subs	r3, r3, r0
     122: 0fd9         	lsrs	r1, r3, #31
     124: eb01 01a3    	add.w	r1, r1, r3, asr #2
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:37
;     printf("Tensor 3 shape: \r\n", 3);
     128: 1049         	asrs	r1, r1, #1
     12a: d002         	beq	0x132 <register_tm_clones+0x16> @ imm = #4
     12c: 4b03         	ldr	r3, [pc, #12]           @ 0x13c <$d+0x8>
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:38
;     printf("%d ", ((Tensor_3 *)get_tensor(tensors, 3))->shape[0]);
     12e: b103         	cbz	r3, 0x132 <register_tm_clones+0x16> @ imm = #0
     130: 4718         	bx	r3
     132: 4770         	bx	lr

00000134 <$d>:
     134: 10 00 00 20  	.word	0x20000010
     138: 10 00 00 20  	.word	0x20000010
     13c: 00 00 00 00  	.word	0x00000000

00000140 <__do_global_dtors_aux>:
; __do_global_dtors_aux():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:38
     140: b510         	push	{r4, lr}
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:39
;     printf("\r\n");
     142: 4c06         	ldr	r4, [pc, #24]           @ 0x15c <$d>
     144: 7823         	ldrb	r3, [r4]
     146: b943         	cbnz	r3, 0x15a <__do_global_dtors_aux+0x1a> @ imm = #16
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:40
;     printf("Tensor 4 type: %d, buffer: %d\r\n", ((Tensor_4 *)get_tensor(tensors, 4))->type, ((Tensor_4 *)get_tensor(tensors, 4))->buffer);
     148: f7ff ffda    	bl	0x100 <deregister_tm_clones> @ imm = #-76
     14c: 4b04         	ldr	r3, [pc, #16]           @ 0x160 <$d+0x4>
     14e: b113         	cbz	r3, 0x156 <__do_global_dtors_aux+0x16> @ imm = #4
     150: 4804         	ldr	r0, [pc, #16]           @ 0x164 <$d+0x8>
     152: f3af 8000    	nop.w
     156: 2301         	movs	r3, #1
     158: 7023         	strb	r3, [r4]
     15a: bd10         	pop	{r4, pc}

0000015c <$d>:
     15c: 2c 09 00 20  	.word	0x2000092c
     160: 00 00 00 00  	.word	0x00000000
     164: b0 84 00 00  	.word	0x000084b0

00000168 <frame_dummy>:
; frame_dummy():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:40
     168: b508         	push	{r3, lr}
     16a: 4b05         	ldr	r3, [pc, #20]           @ 0x180 <$d>
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:41
;     printf("Tensor 4 shape: \r\n", 4);
     16c: b11b         	cbz	r3, 0x176 <frame_dummy+0xe> @ imm = #6
     16e: 4905         	ldr	r1, [pc, #20]           @ 0x184 <$d+0x4>
     170: 4805         	ldr	r0, [pc, #20]           @ 0x188 <$d+0x8>
     172: f3af 8000    	nop.w
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:42
;     printf("%d ", ((Tensor_4 *)get_tensor(tensors, 4))->shape[0]);
     176: e8bd 4008    	pop.w	{r3, lr}
     17a: f7ff bfcf    	b.w	0x11c <register_tm_clones> @ imm = #-98
     17e: bf00         	nop

00000180 <$d>:
     180: 00 00 00 00  	.word	0x00000000
     184: 30 09 00 20  	.word	0x20000930
     188: b0 84 00 00  	.word	0x000084b0

0000018c <riotee_gpio_get_port>:
; riotee_gpio_get_port():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:43
;     printf("%d ", ((Tensor_4 *)get_tensor(tensors, 4))->shape[1]);
     18c: b480         	push	{r7}
     18e: b083         	sub	sp, #12
     190: af00         	add	r7, sp, #0
     192: 6078         	str	r0, [r7, #4]
     194: 687b         	ldr	r3, [r7, #4]
     196: 2b29         	cmp	r3, #41
     198: d901         	bls	0x19e <riotee_gpio_get_port+0x12> @ imm = #2
     19a: 2300         	movs	r3, #0
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:44
;     printf("\r\n");
     19c: e006         	b	0x1ac <riotee_gpio_get_port+0x20> @ imm = #12
     19e: 687b         	ldr	r3, [r7, #4]
     1a0: 2b1f         	cmp	r3, #31
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:45
;     printf("Tensor 5 type: %d, buffer: %d\r\n", ((Tensor_5 *)get_tensor(tensors, 5))->type, ((Tensor_5 *)get_tensor(tensors, 5))->buffer);
     1a2: d901         	bls	0x1a8 <riotee_gpio_get_port+0x1c> @ imm = #2
     1a4: 4b04         	ldr	r3, [pc, #16]           @ 0x1b8 <$d>
     1a6: e001         	b	0x1ac <riotee_gpio_get_port+0x20> @ imm = #2
     1a8: f04f 43a0    	mov.w	r3, #1342177280
     1ac: 4618         	mov	r0, r3
     1ae: 370c         	adds	r7, #12
     1b0: 46bd         	mov	sp, r7
     1b2: f85d 7b04    	ldr	r7, [sp], #4
     1b6: 4770         	bx	lr

000001b8 <$d>:
     1b8: 00 03 00 50  	.word	0x50000300

000001bc <riotee_gpio_get_pin_idx>:
; riotee_gpio_get_pin_idx():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:45
     1bc: b480         	push	{r7}
     1be: b083         	sub	sp, #12
     1c0: af00         	add	r7, sp, #0
     1c2: 6078         	str	r0, [r7, #4]
     1c4: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:46
;     printf("Tensor 5 shape: \r\n", 5);
     1c6: 2b1f         	cmp	r3, #31
     1c8: d902         	bls	0x1d0 <riotee_gpio_get_pin_idx+0x14> @ imm = #4
     1ca: 687b         	ldr	r3, [r7, #4]
     1cc: 3b20         	subs	r3, #32
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:47
;     printf("%d ", ((Tensor_5 *)get_tensor(tensors, 5))->shape[0]);
     1ce: e000         	b	0x1d2 <riotee_gpio_get_pin_idx+0x16> @ imm = #0
     1d0: 687b         	ldr	r3, [r7, #4]
     1d2: 4618         	mov	r0, r3
     1d4: 370c         	adds	r7, #12
     1d6: 46bd         	mov	sp, r7
     1d8: f85d 7b04    	ldr	r7, [sp], #4
     1dc: 4770         	bx	lr

000001de <riotee_gpio_cfg_output>:
; riotee_gpio_cfg_output():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:47
     1de: b580         	push	{r7, lr}
     1e0: b084         	sub	sp, #16
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:48
;     printf("\r\n");
     1e2: af00         	add	r7, sp, #0
     1e4: 6078         	str	r0, [r7, #4]
     1e6: 6878         	ldr	r0, [r7, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:49
;     printf("Tensor 6 type: %d, buffer: %d\r\n", ((Tensor_6 *)get_tensor(tensors, 6))->type, ((Tensor_6 *)get_tensor(tensors, 6))->buffer);
     1e8: f7ff ffd0    	bl	0x18c <riotee_gpio_get_port> @ imm = #-96
     1ec: 60f8         	str	r0, [r7, #12]
     1ee: 6878         	ldr	r0, [r7, #4]
     1f0: f7ff ffe4    	bl	0x1bc <riotee_gpio_get_pin_idx> @ imm = #-56
     1f4: 60b8         	str	r0, [r7, #8]
     1f6: 68fb         	ldr	r3, [r7, #12]
     1f8: 68ba         	ldr	r2, [r7, #8]
     1fa: f502 72e0    	add.w	r2, r2, #448
     1fe: 2103         	movs	r1, #3
     200: f843 1022    	str.w	r1, [r3, r2, lsl #2]
     204: bf00         	nop
     206: 3710         	adds	r7, #16
     208: 46bd         	mov	sp, r7
     20a: bd80         	pop	{r7, pc}

0000020c <riotee_gpio_set>:
; riotee_gpio_set():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:50
;     printf("Tensor 6 shape: \r\n", 6);
     20c: b580         	push	{r7, lr}
     20e: b084         	sub	sp, #16
     210: af00         	add	r7, sp, #0
     212: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:51
;     printf("%d ", ((Tensor_6 *)get_tensor(tensors, 6))->shape[0]);
     214: 6878         	ldr	r0, [r7, #4]
     216: f7ff ffb9    	bl	0x18c <riotee_gpio_get_port> @ imm = #-142
     21a: 60f8         	str	r0, [r7, #12]
     21c: 6878         	ldr	r0, [r7, #4]
     21e: f7ff ffcd    	bl	0x1bc <riotee_gpio_get_pin_idx> @ imm = #-102
     222: 60b8         	str	r0, [r7, #8]
     224: 2201         	movs	r2, #1
     226: 68bb         	ldr	r3, [r7, #8]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:52
;     printf("%d ", ((Tensor_6 *)get_tensor(tensors, 6))->shape[1]);
     228: 409a         	lsls	r2, r3
     22a: 68fb         	ldr	r3, [r7, #12]
     22c: f8c3 2508    	str.w	r2, [r3, #1288]
     230: bf00         	nop
     232: 3710         	adds	r7, #16
     234: 46bd         	mov	sp, r7
     236: bd80         	pop	{r7, pc}

00000238 <startup_callback>:
; startup_callback():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:52
     238: b580         	push	{r7, lr}
     23a: af00         	add	r7, sp, #0
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:53
;     printf("\r\n");
     23c: 201a         	movs	r0, #26
     23e: f7ff ffce    	bl	0x1de <riotee_gpio_cfg_output> @ imm = #-100
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:54
;     printf("Tensor 7 type: %d, buffer: %d\r\n", ((Tensor_7 *)get_tensor(tensors, 7))->type, ((Tensor_7 *)get_tensor(tensors, 7))->buffer);
     242: 201a         	movs	r0, #26
     244: f7ff ffe2    	bl	0x20c <riotee_gpio_set> @ imm = #-60
     248: bf00         	nop
     24a: bd80         	pop	{r7, pc}

0000024c <reset_callback>:
; reset_callback():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:54
     24c: b590         	push	{r4, r7, lr}
     24e: b085         	sub	sp, #20
     250: af00         	add	r7, sp, #0
     252: 2003         	movs	r0, #3
     254: f7ff ffc3    	bl	0x1de <riotee_gpio_cfg_output> @ imm = #-122
     258: 4909         	ldr	r1, [pc, #36]           @ 0x280 <$d>
     25a: 2008         	movs	r0, #8
     25c: f002 fefa    	bl	0x3054 <riotee_uart_init> @ imm = #11764
     260: f003 fde4    	bl	0x3e2c <riotee_adc_init> @ imm = #15304
     264: 4b07         	ldr	r3, [pc, #28]           @ 0x284 <$d+0x4>
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:55
;     printf("Tensor 7 shape: \r\n", 7);
     266: 463c         	mov	r4, r7
     268: cb0f         	ldm	r3, {r0, r1, r2, r3}
     26a: e884 000f    	stm.w	r4, {r0, r1, r2, r3}
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:56
;     printf("%d ", ((Tensor_7 *)get_tensor(tensors, 7))->shape[0]);
     26e: 463b         	mov	r3, r7
     270: 4618         	mov	r0, r3
     272: f003 fee1    	bl	0x4038 <vm1010_init>    @ imm = #15810
     276: bf00         	nop
     278: 3714         	adds	r7, #20
     27a: 46bd         	mov	sp, r7
     27c: bd90         	pop	{r4, r7, pc}
     27e: bf00         	nop

00000280 <$d>:
     280: 00 e0 d7 01  	.word	0x01d7e000
     284: 98 79 00 00  	.word	0x00007998

00000288 <main>:
; main():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:57
;     printf("%d ", ((Tensor_7 *)get_tensor(tensors, 7))->shape[1]);
     288: b580         	push	{r7, lr}
     28a: b082         	sub	sp, #8
     28c: af00         	add	r7, sp, #0
     28e: ed9f 0a08    	vldr	s0, [pc, #32]           @ 0x2b0 <$d>
     292: f000 f80f    	bl	0x2b4 <run_model>       @ imm = #30
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:58
;     printf("\r\n");
     296: 2300         	movs	r3, #0
     298: 607b         	str	r3, [r7, #4]
     29a: 2301         	movs	r3, #1
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:59
;     printf("Tensor 8 type: %d, buffer: %d\r\n", ((Tensor_8 *)get_tensor(tensors, 8))->type, ((Tensor_8 *)get_tensor(tensors, 8))->buffer);
     29c: 607b         	str	r3, [r7, #4]
     29e: 687b         	ldr	r3, [r7, #4]
     2a0: 3301         	adds	r3, #1
     2a2: 607b         	str	r3, [r7, #4]
     2a4: 687b         	ldr	r3, [r7, #4]
     2a6: 005b         	lsls	r3, r3, #1
     2a8: 607b         	str	r3, [r7, #4]
     2aa: bf00         	nop
     2ac: e7fd         	b	0x2aa <main+0x22>       @ imm = #-6
     2ae: bf00         	nop

000002b0 <$d>:
     2b0: b8 1e 45 3f  	.word	0x3f451eb8

000002b4 <run_model>:
; run_model():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:59
     2b4: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
     2b8: b0be         	sub	sp, #248
     2ba: af08         	add	r7, sp, #32
     2bc: ed87 0a03    	vstr	s0, [r7, #12]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:60
;     printf("Tensor 8 shape: \r\n", 8);
     2c0: 4bc9         	ldr	r3, [pc, #804]          @ 0x5e8 <$d>
     2c2: f8c7 30cc    	str.w	r3, [r7, #204]
     2c6: 2300         	movs	r3, #0
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:61
;     printf("%d ", ((Tensor_8 *)get_tensor(tensors, 8))->shape[0]);
     2c8: 66fb         	str	r3, [r7, #108]
     2ca: 2300         	movs	r3, #0
     2cc: 673b         	str	r3, [r7, #112]
     2ce: f8d7 30cc    	ldr.w	r3, [r7, #204]
     2d2: f503 7347    	add.w	r3, r3, #796
     2d6: 2100         	movs	r1, #0
     2d8: 4618         	mov	r0, r3
     2da: f000 facf    	bl	0x87c <get_operator>    @ imm = #1438
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:62
;     printf("%d ", ((Tensor_8 *)get_tensor(tensors, 8))->shape[1]);
     2de: f8c7 00c8    	str.w	r0, [r7, #200]
     2e2: f8d7 30cc    	ldr.w	r3, [r7, #204]
     2e6: f503 7347    	add.w	r3, r3, #796
     2ea: 2101         	movs	r1, #1
     2ec: 4618         	mov	r0, r3
     2ee: f000 fac5    	bl	0x87c <get_operator>    @ imm = #1418
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:63
;     printf("\r\n");
     2f2: f8c7 00c4    	str.w	r0, [r7, #196]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:64
;     printf("Tensor 9 type: %d, buffer: %d\r\n", ((Tensor_9 *)get_tensor(tensors, 9))->type, ((Tensor_9 *)get_tensor(tensors, 9))->buffer);
     2f6: f8d7 30cc    	ldr.w	r3, [r7, #204]
     2fa: f503 7347    	add.w	r3, r3, #796
     2fe: 2102         	movs	r1, #2
     300: 4618         	mov	r0, r3
     302: f000 fabb    	bl	0x87c <get_operator>    @ imm = #1398
     306: f8c7 00c0    	str.w	r0, [r7, #192]
     30a: f8d7 30cc    	ldr.w	r3, [r7, #204]
     30e: f503 7304    	add.w	r3, r3, #528
     312: 2100         	movs	r1, #0
     314: 4618         	mov	r0, r3
     316: f000 facd    	bl	0x8b4 <get_tensor>      @ imm = #1434
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:65
;     printf("Tensor 9 shape: \r\n", 9);
     31a: f8c7 00bc    	str.w	r0, [r7, #188]
     31e: f8d7 30cc    	ldr.w	r3, [r7, #204]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:66
;     printf("%d ", ((Tensor_9 *)get_tensor(tensors, 9))->shape[0]);
     322: f503 7304    	add.w	r3, r3, #528
     326: 2106         	movs	r1, #6
     328: 4618         	mov	r0, r3
     32a: f000 fac3    	bl	0x8b4 <get_tensor>      @ imm = #1414
     32e: f8c7 00b8    	str.w	r0, [r7, #184]
     332: f8d7 30cc    	ldr.w	r3, [r7, #204]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:67
;     printf("%d ", ((Tensor_9 *)get_tensor(tensors, 9))->shape[1]);
     336: f503 7304    	add.w	r3, r3, #528
     33a: 2107         	movs	r1, #7
     33c: 4618         	mov	r0, r3
     33e: f000 fab9    	bl	0x8b4 <get_tensor>      @ imm = #1394
     342: f8c7 00b4    	str.w	r0, [r7, #180]
     346: 68f8         	ldr	r0, [r7, #12]
     348: f006 fcd4    	bl	0x6cf4 <__extendsfdf2>  @ imm = #27048
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:68
;     printf("\r\n");
     34c: 4602         	mov	r2, r0
     34e: 460b         	mov	r3, r1
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:69
; }
     350: 48a6         	ldr	r0, [pc, #664]          @ 0x5ec <$d+0x4>
     352: f002 f92f    	bl	0x25b4 <printf_>        @ imm = #8798
     356: f8d7 30bc    	ldr.w	r3, [r7, #188]
     35a: 691e         	ldr	r6, [r3, #16]
     35c: 4633         	mov	r3, r6
     35e: 461e         	mov	r6, r3
     360: f8d7 10bc    	ldr.w	r1, [r7, #188]
     364: 694a         	ldr	r2, [r1, #20]
     366: 698b         	ldr	r3, [r1, #24]
     368: f107 0384    	add.w	r3, r7, #132
     36c: 4619         	mov	r1, r3
     36e: edd7 0a03    	vldr	s1, [r7, #12]
     372: 4610         	mov	r0, r2
     374: ee00 6a10    	vmov	s0, r6
     378: f000 fbd2    	bl	0xb20 <quantizeInt8>    @ imm = #1956
     37c: f8d7 30c8    	ldr.w	r3, [r7, #200]
     380: 7d1e         	ldrb	r6, [r3, #20]
     382: f8d7 30bc    	ldr.w	r3, [r7, #188]
     386: f893 c000    	ldrb.w	r12, [r3]
     38a: f8d7 10bc    	ldr.w	r1, [r7, #188]
     38e: 694a         	ldr	r2, [r1, #20]
     390: 698b         	ldr	r3, [r1, #24]
     392: 4692         	mov	r10, r2
     394: f8d7 30bc    	ldr.w	r3, [r7, #188]
     398: f8d3 e010    	ldr.w	lr, [r3, #16]
     39c: 4673         	mov	r3, lr
     39e: 469e         	mov	lr, r3
     3a0: f8d7 10b4    	ldr.w	r1, [r7, #180]
     3a4: 694a         	ldr	r2, [r1, #20]
     3a6: 698b         	ldr	r3, [r1, #24]
     3a8: 4613         	mov	r3, r2
     3aa: f107 0058    	add.w	r0, r7, #88
     3ae: 9300         	str	r3, [sp]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:43
;     fill_fc_params(
     3b0: ee00 ea10    	vmov	s0, lr
     3b4: 4653         	mov	r3, r10
     3b6: 4662         	mov	r2, r12
     3b8: 4631         	mov	r1, r6
     3ba: f000 faee    	bl	0x99a <fill_fc_params>  @ imm = #1500
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:52
;     fill_quant_params(
     3be: f8d7 30bc    	ldr.w	r3, [r7, #188]
     3c2: 691a         	ldr	r2, [r3, #16]
     3c4: 4613         	mov	r3, r2
     3c6: 461a         	mov	r2, r3
     3c8: f8d7 30b8    	ldr.w	r3, [r7, #184]
     3cc: 6919         	ldr	r1, [r3, #16]
     3ce: 460b         	mov	r3, r1
     3d0: 4619         	mov	r1, r3
     3d2: f8d7 30b4    	ldr.w	r3, [r7, #180]
     3d6: 6918         	ldr	r0, [r3, #16]
     3d8: 4603         	mov	r3, r0
     3da: 4618         	mov	r0, r3
     3dc: f107 0350    	add.w	r3, r7, #80
     3e0: ee01 0a10    	vmov	s2, r0
     3e4: ee00 1a90    	vmov	s1, r1
     3e8: ee00 2a10    	vmov	s0, r2
     3ec: 4618         	mov	r0, r3
     3ee: f000 fafb    	bl	0x9e8 <fill_quant_params> @ imm = #1526
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:62
;     fill_dims(
     3f2: f8d7 30b8    	ldr.w	r3, [r7, #184]
     3f6: 3304         	adds	r3, #4
     3f8: f8d7 20b4    	ldr.w	r2, [r7, #180]
     3fc: 3204         	adds	r2, #4
     3fe: f107 0c10    	add.w	r12, r7, #16
     402: f107 0620    	add.w	r6, r7, #32
     406: f107 0130    	add.w	r1, r7, #48
     40a: f107 0040    	add.w	r0, r7, #64
     40e: 2402         	movs	r4, #2
     410: 9403         	str	r4, [sp, #12]
     412: 9202         	str	r2, [sp, #8]
     414: 2202         	movs	r2, #2
     416: 9201         	str	r2, [sp, #4]
     418: 9300         	str	r3, [sp]
     41a: 4663         	mov	r3, r12
     41c: 4632         	mov	r2, r6
     41e: f000 fa69    	bl	0x8f4 <fill_dims>       @ imm = #1234
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:79
;         (int8_t *)((Buffer_7 *)get_buffer(&model->buffers, 7))->data,
     422: f8d7 30cc    	ldr.w	r3, [r7, #204]
     426: 3304         	adds	r3, #4
     428: 2107         	movs	r1, #7
     42a: 4618         	mov	r0, r3
     42c: f000 fa06    	bl	0x83c <get_buffer>      @ imm = #1036
     430: 4603         	mov	r3, r0
     432: 461d         	mov	r5, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:81
;         (int32_t *)((Buffer_6 *)get_buffer(&model->buffers, 6))->data,
     434: f8d7 30cc    	ldr.w	r3, [r7, #204]
     438: 3304         	adds	r3, #4
     43a: 2106         	movs	r1, #6
     43c: 4618         	mov	r0, r3
     43e: f000 f9fd    	bl	0x83c <get_buffer>      @ imm = #1018
     442: 4603         	mov	r3, r0
     444: 461c         	mov	r4, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:72
;     arm_cmsis_nn_status status = arm_fully_connected_s8(
     446: f107 0640    	add.w	r6, r7, #64
     44a: f107 0250    	add.w	r2, r7, #80
     44e: f107 0158    	add.w	r1, r7, #88
     452: f107 006c    	add.w	r0, r7, #108
     456: f107 0374    	add.w	r3, r7, #116
     45a: 9306         	str	r3, [sp, #24]
     45c: f107 0310    	add.w	r3, r7, #16
     460: 9305         	str	r3, [sp, #20]
     462: 9404         	str	r4, [sp, #16]
     464: f107 0320    	add.w	r3, r7, #32
     468: 9303         	str	r3, [sp, #12]
     46a: 9502         	str	r5, [sp, #8]
     46c: f107 0330    	add.w	r3, r7, #48
     470: 9301         	str	r3, [sp, #4]
     472: f107 0384    	add.w	r3, r7, #132
     476: 9300         	str	r3, [sp]
     478: 4633         	mov	r3, r6
     47a: f004 ffe3    	bl	0x5444 <arm_fully_connected_s8> @ imm = #20422
     47e: 4603         	mov	r3, r0
     480: f887 30b3    	strb.w	r3, [r7, #179]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:85
;     printf("Status: %d\r\n", status);
     484: f997 30b3    	ldrsb.w	r3, [r7, #179]
     488: 4619         	mov	r1, r3
     48a: 4859         	ldr	r0, [pc, #356]          @ 0x5f0 <$d+0x8>
     48c: f002 f892    	bl	0x25b4 <printf_>        @ imm = #8484
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:87
;     Tensor_7 *input2 = (Tensor_7 *)get_tensor(&model->tensors, 7);
     490: f8d7 30cc    	ldr.w	r3, [r7, #204]
     494: f503 7304    	add.w	r3, r3, #528
     498: 2107         	movs	r1, #7
     49a: 4618         	mov	r0, r3
     49c: f000 fa0a    	bl	0x8b4 <get_tensor>      @ imm = #1044
     4a0: f8c7 00ac    	str.w	r0, [r7, #172]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:88
;     Tensor_4 *weights2 = (Tensor_4 *)get_tensor(&model->tensors, 4);
     4a4: f8d7 30cc    	ldr.w	r3, [r7, #204]
     4a8: f503 7304    	add.w	r3, r3, #528
     4ac: 2104         	movs	r1, #4
     4ae: 4618         	mov	r0, r3
     4b0: f000 fa00    	bl	0x8b4 <get_tensor>      @ imm = #1024
     4b4: f8c7 00a8    	str.w	r0, [r7, #168]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:89
;     Tensor_8 *output2 = (Tensor_8 *)get_tensor(&model->tensors, 8);
     4b8: f8d7 30cc    	ldr.w	r3, [r7, #204]
     4bc: f503 7304    	add.w	r3, r3, #528
     4c0: 2108         	movs	r1, #8
     4c2: 4618         	mov	r0, r3
     4c4: f000 f9f6    	bl	0x8b4 <get_tensor>      @ imm = #1004
     4c8: f8c7 00a4    	str.w	r0, [r7, #164]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:91
;     fill_fc_params(
     4cc: f8d7 30c4    	ldr.w	r3, [r7, #196]
     4d0: 7d1e         	ldrb	r6, [r3, #20]
     4d2: f8d7 30ac    	ldr.w	r3, [r7, #172]
     4d6: f893 c000    	ldrb.w	r12, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:95
;         input2->quantization.zero_point[0],
     4da: f8d7 10ac    	ldr.w	r1, [r7, #172]
     4de: 694a         	ldr	r2, [r1, #20]
     4e0: 698b         	ldr	r3, [r1, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:91
;     fill_fc_params(
     4e2: 4692         	mov	r10, r2
     4e4: f8d7 30ac    	ldr.w	r3, [r7, #172]
     4e8: f8d3 e010    	ldr.w	lr, [r3, #16]
     4ec: 4673         	mov	r3, lr
     4ee: 469e         	mov	lr, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:97
;         output2->quantization.zero_point[0]);
     4f0: f8d7 10a4    	ldr.w	r1, [r7, #164]
     4f4: 694a         	ldr	r2, [r1, #20]
     4f6: 698b         	ldr	r3, [r1, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:91
;     fill_fc_params(
     4f8: 4613         	mov	r3, r2
     4fa: f107 0058    	add.w	r0, r7, #88
     4fe: 9300         	str	r3, [sp]
     500: ee00 ea10    	vmov	s0, lr
     504: 4653         	mov	r3, r10
     506: 4662         	mov	r2, r12
     508: 4631         	mov	r1, r6
     50a: f000 fa46    	bl	0x99a <fill_fc_params>  @ imm = #1164
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:99
;     fill_quant_params(
     50e: f8d7 30ac    	ldr.w	r3, [r7, #172]
     512: 691a         	ldr	r2, [r3, #16]
     514: 4613         	mov	r3, r2
     516: 461a         	mov	r2, r3
     518: f8d7 30a8    	ldr.w	r3, [r7, #168]
     51c: 6919         	ldr	r1, [r3, #16]
     51e: 460b         	mov	r3, r1
     520: 4619         	mov	r1, r3
     522: f8d7 30a4    	ldr.w	r3, [r7, #164]
     526: 6918         	ldr	r0, [r3, #16]
     528: 4603         	mov	r3, r0
     52a: 4618         	mov	r0, r3
     52c: f107 0350    	add.w	r3, r7, #80
     530: ee01 0a10    	vmov	s2, r0
     534: ee00 1a90    	vmov	s1, r1
     538: ee00 2a10    	vmov	s0, r2
     53c: 4618         	mov	r0, r3
     53e: f000 fa53    	bl	0x9e8 <fill_quant_params> @ imm = #1190
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:104
;     fill_dims(
     542: f8d7 30a8    	ldr.w	r3, [r7, #168]
     546: 3304         	adds	r3, #4
     548: f8d7 20a4    	ldr.w	r2, [r7, #164]
     54c: 3204         	adds	r2, #4
     54e: f107 0c10    	add.w	r12, r7, #16
     552: f107 0620    	add.w	r6, r7, #32
     556: f107 0130    	add.w	r1, r7, #48
     55a: f107 0040    	add.w	r0, r7, #64
     55e: 2402         	movs	r4, #2
     560: 9403         	str	r4, [sp, #12]
     562: 9202         	str	r2, [sp, #8]
     564: 2202         	movs	r2, #2
     566: 9201         	str	r2, [sp, #4]
     568: 9300         	str	r3, [sp]
     56a: 4663         	mov	r3, r12
     56c: 4632         	mov	r2, r6
     56e: f000 f9c1    	bl	0x8f4 <fill_dims>       @ imm = #898
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:121
;         (int8_t *)((Buffer_5 *)get_buffer(&model->buffers, 5))->data,
     572: f8d7 30cc    	ldr.w	r3, [r7, #204]
     576: 3304         	adds	r3, #4
     578: 2105         	movs	r1, #5
     57a: 4618         	mov	r0, r3
     57c: f000 f95e    	bl	0x83c <get_buffer>      @ imm = #700
     580: 4603         	mov	r3, r0
     582: 461d         	mov	r5, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:123
;         (int32_t *)((Buffer_4 *)get_buffer(&model->buffers, 4))->data,
     584: f8d7 30cc    	ldr.w	r3, [r7, #204]
     588: 3304         	adds	r3, #4
     58a: 2104         	movs	r1, #4
     58c: 4618         	mov	r0, r3
     58e: f000 f955    	bl	0x83c <get_buffer>      @ imm = #682
     592: 4603         	mov	r3, r0
     594: 461c         	mov	r4, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:114
;     status = arm_fully_connected_s8(
     596: f107 0640    	add.w	r6, r7, #64
     59a: f107 0250    	add.w	r2, r7, #80
     59e: f107 0158    	add.w	r1, r7, #88
     5a2: f107 006c    	add.w	r0, r7, #108
     5a6: f107 0384    	add.w	r3, r7, #132
     5aa: 9306         	str	r3, [sp, #24]
     5ac: f107 0310    	add.w	r3, r7, #16
     5b0: 9305         	str	r3, [sp, #20]
     5b2: 9404         	str	r4, [sp, #16]
     5b4: f107 0320    	add.w	r3, r7, #32
     5b8: 9303         	str	r3, [sp, #12]
     5ba: 9502         	str	r5, [sp, #8]
     5bc: f107 0330    	add.w	r3, r7, #48
     5c0: 9301         	str	r3, [sp, #4]
     5c2: f107 0374    	add.w	r3, r7, #116
     5c6: 9300         	str	r3, [sp]
     5c8: 4633         	mov	r3, r6
     5ca: f004 ff3b    	bl	0x5444 <arm_fully_connected_s8> @ imm = #20086
     5ce: 4603         	mov	r3, r0
     5d0: f887 30b3    	strb.w	r3, [r7, #179]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:127
;     printf("Status2: %d\r\n", status);
     5d4: f997 30b3    	ldrsb.w	r3, [r7, #179]
     5d8: 4619         	mov	r1, r3
     5da: 4806         	ldr	r0, [pc, #24]           @ 0x5f4 <$d+0xc>
     5dc: f001 ffea    	bl	0x25b4 <printf_>        @ imm = #8148
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:128
;     for (int i = 0; i < 16; i++)
     5e0: 2300         	movs	r3, #0
     5e2: f8c7 30d4    	str.w	r3, [r7, #212]
     5e6: e017         	b	0x618 <$t+0x20>         @ imm = #46

000005e8 <$d>:
     5e8: 90 7a 00 00  	.word	0x00007a90
     5ec: a8 79 00 00  	.word	0x000079a8
     5f0: b4 79 00 00  	.word	0x000079b4
     5f4: c4 79 00 00  	.word	0x000079c4

000005f8 <$t>:
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:130
;         printf("%d, ", first_layer.layer_2_output[i]);
     5f8: f107 0284    	add.w	r2, r7, #132
     5fc: f8d7 30d4    	ldr.w	r3, [r7, #212]
     600: 4413         	add	r3, r2
     602: f993 3000    	ldrsb.w	r3, [r3]
     606: 4619         	mov	r1, r3
     608: 4886         	ldr	r0, [pc, #536]          @ 0x824 <$d>
     60a: f001 ffd3    	bl	0x25b4 <printf_>        @ imm = #8102
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:128
;     for (int i = 0; i < 16; i++)
     60e: f8d7 30d4    	ldr.w	r3, [r7, #212]
     612: 3301         	adds	r3, #1
     614: f8c7 30d4    	str.w	r3, [r7, #212]
     618: f8d7 30d4    	ldr.w	r3, [r7, #212]
     61c: 2b0f         	cmp	r3, #15
     61e: ddeb         	ble	0x5f8 <$t>              @ imm = #-42
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:134
;     Tensor_8 *input3 = (Tensor_8 *)get_tensor(&model->tensors, 8);
     620: f8d7 30cc    	ldr.w	r3, [r7, #204]
     624: f503 7304    	add.w	r3, r3, #528
     628: 2108         	movs	r1, #8
     62a: 4618         	mov	r0, r3
     62c: f000 f942    	bl	0x8b4 <get_tensor>      @ imm = #644
     630: f8c7 00a0    	str.w	r0, [r7, #160]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:135
;     Tensor_2 *weights3 = (Tensor_2 *)get_tensor(&model->tensors, 2);
     634: f8d7 30cc    	ldr.w	r3, [r7, #204]
     638: f503 7304    	add.w	r3, r3, #528
     63c: 2102         	movs	r1, #2
     63e: 4618         	mov	r0, r3
     640: f000 f938    	bl	0x8b4 <get_tensor>      @ imm = #624
     644: f8c7 009c    	str.w	r0, [r7, #156]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:136
;     Tensor_9 *output3 = (Tensor_9 *)get_tensor(&model->tensors, 9);
     648: f8d7 30cc    	ldr.w	r3, [r7, #204]
     64c: f503 7304    	add.w	r3, r3, #528
     650: 2109         	movs	r1, #9
     652: 4618         	mov	r0, r3
     654: f000 f92e    	bl	0x8b4 <get_tensor>      @ imm = #604
     658: f8c7 0098    	str.w	r0, [r7, #152]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:138
;     fill_fc_params(
     65c: f8d7 30c0    	ldr.w	r3, [r7, #192]
     660: 7d1e         	ldrb	r6, [r3, #20]
     662: f8d7 30a0    	ldr.w	r3, [r7, #160]
     666: f893 c000    	ldrb.w	r12, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:142
;         input3->quantization.zero_point[0],
     66a: f8d7 10a0    	ldr.w	r1, [r7, #160]
     66e: 694a         	ldr	r2, [r1, #20]
     670: 698b         	ldr	r3, [r1, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:138
;     fill_fc_params(
     672: 4692         	mov	r10, r2
     674: f8d7 30a0    	ldr.w	r3, [r7, #160]
     678: f8d3 e010    	ldr.w	lr, [r3, #16]
     67c: 4673         	mov	r3, lr
     67e: 469e         	mov	lr, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:144
;         output3->quantization.zero_point[0]);
     680: f8d7 1098    	ldr.w	r1, [r7, #152]
     684: 694a         	ldr	r2, [r1, #20]
     686: 698b         	ldr	r3, [r1, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:138
;     fill_fc_params(
     688: 4613         	mov	r3, r2
     68a: f107 0058    	add.w	r0, r7, #88
     68e: 9300         	str	r3, [sp]
     690: ee00 ea10    	vmov	s0, lr
     694: 4653         	mov	r3, r10
     696: 4662         	mov	r2, r12
     698: 4631         	mov	r1, r6
     69a: f000 f97e    	bl	0x99a <fill_fc_params>  @ imm = #764
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:146
;     fill_quant_params(
     69e: f8d7 30a0    	ldr.w	r3, [r7, #160]
     6a2: 691a         	ldr	r2, [r3, #16]
     6a4: 4613         	mov	r3, r2
     6a6: 461a         	mov	r2, r3
     6a8: f8d7 309c    	ldr.w	r3, [r7, #156]
     6ac: 6919         	ldr	r1, [r3, #16]
     6ae: 460b         	mov	r3, r1
     6b0: 4619         	mov	r1, r3
     6b2: f8d7 3098    	ldr.w	r3, [r7, #152]
     6b6: 6918         	ldr	r0, [r3, #16]
     6b8: 4603         	mov	r3, r0
     6ba: 4618         	mov	r0, r3
     6bc: f107 0350    	add.w	r3, r7, #80
     6c0: ee01 0a10    	vmov	s2, r0
     6c4: ee00 1a90    	vmov	s1, r1
     6c8: ee00 2a10    	vmov	s0, r2
     6cc: 4618         	mov	r0, r3
     6ce: f000 f98b    	bl	0x9e8 <fill_quant_params> @ imm = #790
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:157
;         weights3->shape,
     6d2: f8d7 309c    	ldr.w	r3, [r7, #156]
     6d6: 3304         	adds	r3, #4
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:159
;         output3->shape,
     6d8: f8d7 2098    	ldr.w	r2, [r7, #152]
     6dc: 3204         	adds	r2, #4
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:152
;     fill_dims(
     6de: f107 0c10    	add.w	r12, r7, #16
     6e2: f107 0620    	add.w	r6, r7, #32
     6e6: f107 0130    	add.w	r1, r7, #48
     6ea: f107 0040    	add.w	r0, r7, #64
     6ee: 2402         	movs	r4, #2
     6f0: 9403         	str	r4, [sp, #12]
     6f2: 9202         	str	r2, [sp, #8]
     6f4: 2202         	movs	r2, #2
     6f6: 9201         	str	r2, [sp, #4]
     6f8: 9300         	str	r3, [sp]
     6fa: 4663         	mov	r3, r12
     6fc: 4632         	mov	r2, r6
     6fe: f000 f8f9    	bl	0x8f4 <fill_dims>       @ imm = #498
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:169
;         (int8_t *)((Buffer_3 *)get_buffer(&model->buffers, 3))->data,
     702: f8d7 30cc    	ldr.w	r3, [r7, #204]
     706: 3304         	adds	r3, #4
     708: 2103         	movs	r1, #3
     70a: 4618         	mov	r0, r3
     70c: f000 f896    	bl	0x83c <get_buffer>      @ imm = #300
     710: 4603         	mov	r3, r0
     712: 461d         	mov	r5, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:171
;         (int32_t *)((Buffer_2 *)get_buffer(&model->buffers, 2))->data,
     714: f8d7 30cc    	ldr.w	r3, [r7, #204]
     718: 3304         	adds	r3, #4
     71a: 2102         	movs	r1, #2
     71c: 4618         	mov	r0, r3
     71e: f000 f88d    	bl	0x83c <get_buffer>      @ imm = #282
     722: 4603         	mov	r3, r0
     724: 461c         	mov	r4, r3
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:162
;     status = arm_fully_connected_s8(
     726: f107 0640    	add.w	r6, r7, #64
     72a: f107 0250    	add.w	r2, r7, #80
     72e: f107 0158    	add.w	r1, r7, #88
     732: f107 006c    	add.w	r0, r7, #108
     736: f107 0374    	add.w	r3, r7, #116
     73a: 9306         	str	r3, [sp, #24]
     73c: f107 0310    	add.w	r3, r7, #16
     740: 9305         	str	r3, [sp, #20]
     742: 9404         	str	r4, [sp, #16]
     744: f107 0320    	add.w	r3, r7, #32
     748: 9303         	str	r3, [sp, #12]
     74a: 9502         	str	r5, [sp, #8]
     74c: f107 0330    	add.w	r3, r7, #48
     750: 9301         	str	r3, [sp, #4]
     752: f107 0384    	add.w	r3, r7, #132
     756: 9300         	str	r3, [sp]
     758: 4633         	mov	r3, r6
     75a: f004 fe73    	bl	0x5444 <arm_fully_connected_s8> @ imm = #19686
     75e: 4603         	mov	r3, r0
     760: f887 30b3    	strb.w	r3, [r7, #179]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:175
;     printf("Status3: %d\r\n", status);
     764: f997 30b3    	ldrsb.w	r3, [r7, #179]
     768: 4619         	mov	r1, r3
     76a: 482f         	ldr	r0, [pc, #188]          @ 0x828 <$d+0x4>
     76c: f001 ff22    	bl	0x25b4 <printf_>        @ imm = #7748
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:176
;     for (int i = 0; i < output_dims.c; i++)
     770: 2300         	movs	r3, #0
     772: f8c7 30d0    	str.w	r3, [r7, #208]
     776: e00f         	b	0x798 <$t+0x1a0>        @ imm = #30
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:178
;         printf("%d, ", second_layer.layer_3_output[i]);
     778: f107 0274    	add.w	r2, r7, #116
     77c: f8d7 30d0    	ldr.w	r3, [r7, #208]
     780: 4413         	add	r3, r2
     782: f993 3000    	ldrsb.w	r3, [r3]
     786: 4619         	mov	r1, r3
     788: 4826         	ldr	r0, [pc, #152]          @ 0x824 <$d>
     78a: f001 ff13    	bl	0x25b4 <printf_>        @ imm = #7718
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:176
;     for (int i = 0; i < output_dims.c; i++)
     78e: f8d7 30d0    	ldr.w	r3, [r7, #208]
     792: 3301         	adds	r3, #1
     794: f8c7 30d0    	str.w	r3, [r7, #208]
     798: 69fb         	ldr	r3, [r7, #28]
     79a: f8d7 20d0    	ldr.w	r2, [r7, #208]
     79e: 429a         	cmp	r2, r3
     7a0: dbea         	blt	0x778 <$t+0x180>        @ imm = #-44
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:180
;     printf("\r\n");
     7a2: 4822         	ldr	r0, [pc, #136]          @ 0x82c <$d+0x8>
     7a4: f001 ff06    	bl	0x25b4 <printf_>        @ imm = #7692
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:182
;     float y_pred = (second_layer.layer_3_output[0] - output3->quantization.zero_point[0]) * output3->quantization.scale[0];
     7a8: f997 3074    	ldrsb.w	r3, [r7, #116]
     7ac: b25b         	sxtb	r3, r3
     7ae: 17da         	asrs	r2, r3, #31
     7b0: 603b         	str	r3, [r7]
     7b2: 607a         	str	r2, [r7, #4]
     7b4: f8d7 1098    	ldr.w	r1, [r7, #152]
     7b8: 694a         	ldr	r2, [r1, #20]
     7ba: 698b         	ldr	r3, [r1, #24]
     7bc: e9d7 4500    	ldrd	r4, r5, [r7]
     7c0: 4621         	mov	r1, r4
     7c2: ebb1 0802    	subs.w	r8, r1, r2
     7c6: 4629         	mov	r1, r5
     7c8: eb61 0903    	sbc.w	r9, r1, r3
     7cc: 4640         	mov	r0, r8
     7ce: 4649         	mov	r1, r9
     7d0: f006 feea    	bl	0x75a8 <__floatdisf>    @ imm = #28116
     7d4: ee07 0a90    	vmov	s15, r0
     7d8: f8d7 3098    	ldr.w	r3, [r7, #152]
     7dc: 691b         	ldr	r3, [r3, #16]
     7de: ee07 3a10    	vmov	s14, r3
     7e2: ee67 7a87    	vmul.f32	s15, s15, s14
     7e6: edc7 7a25    	vstr	s15, [r7, #148]
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:183
;     printf("Prediction: %f\r\n", y_pred);
     7ea: f8d7 0094    	ldr.w	r0, [r7, #148]
     7ee: f006 fa81    	bl	0x6cf4 <__extendsfdf2>  @ imm = #25858
     7f2: 4602         	mov	r2, r0
     7f4: 460b         	mov	r3, r1
     7f6: 480e         	ldr	r0, [pc, #56]           @ 0x830 <$d+0xc>
     7f8: f001 fedc    	bl	0x25b4 <printf_>        @ imm = #7608
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:184
;     printf("Expected: %f\r\n", sinf(0.77f));
     7fc: ed9f 0a0d    	vldr	s0, [pc, #52]           @ 0x834 <$d+0x10>
     800: f005 fa1a    	bl	0x5c38 <sinf>           @ imm = #21556
     804: ee10 3a10    	vmov	r3, s0
     808: 4618         	mov	r0, r3
     80a: f006 fa73    	bl	0x6cf4 <__extendsfdf2>  @ imm = #25830
     80e: 4602         	mov	r2, r0
     810: 460b         	mov	r3, r1
     812: 4809         	ldr	r0, [pc, #36]           @ 0x838 <$d+0x14>
     814: f001 fece    	bl	0x25b4 <printf_>        @ imm = #7580
; /Users/janstiefel/code/Riotee_AppTemplate/src/run_model.c:185
; }
     818: bf00         	nop
     81a: 37d8         	adds	r7, #216
     81c: 46bd         	mov	sp, r7
     81e: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
     822: bf00         	nop

00000824 <$d>:
     824: d4 79 00 00  	.word	0x000079d4
     828: dc 79 00 00  	.word	0x000079dc
     82c: ec 79 00 00  	.word	0x000079ec
     830: f0 79 00 00  	.word	0x000079f0
     834: b8 1e 45 3f  	.word	0x3f451eb8
     838: 04 7a 00 00  	.word	0x00007a04

0000083c <get_buffer>:
; get_buffer():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/buffer.c:6
; uint8_t *get_buffer(Buffers *buffers, int index){
     83c: b4b0         	push	{r4, r5, r7}
     83e: b091         	sub	sp, #68
     840: af00         	add	r7, sp, #0
     842: 6078         	str	r0, [r7, #4]
     844: 6039         	str	r1, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/buffer.c:7
;     uint32_t sizes[13] = {0,
     846: 4b0c         	ldr	r3, [pc, #48]           @ 0x878 <$d>
     848: f107 040c    	add.w	r4, r7, #12
     84c: 461d         	mov	r5, r3
     84e: cd0f         	ldm	r5!, {r0, r1, r2, r3}
     850: c40f         	stm	r4!, {r0, r1, r2, r3}
     852: cd0f         	ldm	r5!, {r0, r1, r2, r3}
     854: c40f         	stm	r4!, {r0, r1, r2, r3}
     856: cd0f         	ldm	r5!, {r0, r1, r2, r3}
     858: c40f         	stm	r4!, {r0, r1, r2, r3}
     85a: 682b         	ldr	r3, [r5]
     85c: 6023         	str	r3, [r4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/buffer.c:20
;     return (uint8_t *)buffers + sizes[index];
     85e: 683b         	ldr	r3, [r7]
     860: 009b         	lsls	r3, r3, #2
     862: 3340         	adds	r3, #64
     864: 443b         	add	r3, r7
     866: f853 3c34    	ldr	r3, [r3, #-52]
     86a: 687a         	ldr	r2, [r7, #4]
     86c: 4413         	add	r3, r2
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/buffer.c:21
; }
     86e: 4618         	mov	r0, r3
     870: 3744         	adds	r7, #68
     872: 46bd         	mov	sp, r7
     874: bcb0         	pop	{r4, r5, r7}
     876: 4770         	bx	lr

00000878 <$d>:
     878: 14 7a 00 00  	.word	0x00007a14

0000087c <get_operator>:
; get_operator():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/operator.c:5
; uint8_t *get_operator(Operators *operators, int index){
     87c: b480         	push	{r7}
     87e: b087         	sub	sp, #28
     880: af00         	add	r7, sp, #0
     882: 6078         	str	r0, [r7, #4]
     884: 6039         	str	r1, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/operator.c:6
;     uint32_t sizes[3] = {0,
     886: 4a0a         	ldr	r2, [pc, #40]           @ 0x8b0 <$d>
     888: f107 030c    	add.w	r3, r7, #12
     88c: ca07         	ldm	r2, {r0, r1, r2}
     88e: e883 0007    	stm.w	r3, {r0, r1, r2}
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/operator.c:9
;     return (uint8_t *)operators + sizes[index];
     892: 683b         	ldr	r3, [r7]
     894: 009b         	lsls	r3, r3, #2
     896: 3318         	adds	r3, #24
     898: 443b         	add	r3, r7
     89a: f853 3c0c    	ldr	r3, [r3, #-12]
     89e: 687a         	ldr	r2, [r7, #4]
     8a0: 4413         	add	r3, r2
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/operator.c:10
; }
     8a2: 4618         	mov	r0, r3
     8a4: 371c         	adds	r7, #28
     8a6: 46bd         	mov	sp, r7
     8a8: f85d 7b04    	ldr	r7, [sp], #4
     8ac: 4770         	bx	lr
     8ae: bf00         	nop

000008b0 <$d>:
     8b0: f8 7d 00 00  	.word	0x00007df8

000008b4 <get_tensor>:
; get_tensor():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:7
; uint8_t *get_tensor(Tensors *tensors, int index){
     8b4: b4b0         	push	{r4, r5, r7}
     8b6: b08d         	sub	sp, #52
     8b8: af00         	add	r7, sp, #0
     8ba: 6078         	str	r0, [r7, #4]
     8bc: 6039         	str	r1, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:8
;     uint32_t sizes[10] = {0,
     8be: 4b0c         	ldr	r3, [pc, #48]           @ 0x8f0 <$d>
     8c0: f107 0408    	add.w	r4, r7, #8
     8c4: 461d         	mov	r5, r3
     8c6: cd0f         	ldm	r5!, {r0, r1, r2, r3}
     8c8: c40f         	stm	r4!, {r0, r1, r2, r3}
     8ca: cd0f         	ldm	r5!, {r0, r1, r2, r3}
     8cc: c40f         	stm	r4!, {r0, r1, r2, r3}
     8ce: e895 0003    	ldm.w	r5, {r0, r1}
     8d2: e884 0003    	stm.w	r4, {r0, r1}
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:18
;     return (uint8_t *)tensors + sizes[index];
     8d6: 683b         	ldr	r3, [r7]
     8d8: 009b         	lsls	r3, r3, #2
     8da: 3330         	adds	r3, #48
     8dc: 443b         	add	r3, r7
     8de: f853 3c28    	ldr	r3, [r3, #-40]
     8e2: 687a         	ldr	r2, [r7, #4]
     8e4: 4413         	add	r3, r2
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/tensor.c:19
; }
     8e6: 4618         	mov	r0, r3
     8e8: 3734         	adds	r7, #52
     8ea: 46bd         	mov	sp, r7
     8ec: bcb0         	pop	{r4, r5, r7}
     8ee: 4770         	bx	lr

000008f0 <$d>:
     8f0: 04 7e 00 00  	.word	0x00007e04

000008f4 <fill_dims>:
; fill_dims():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:8
; {
     8f4: b580         	push	{r7, lr}
     8f6: b088         	sub	sp, #32
     8f8: af00         	add	r7, sp, #0
     8fa: 60f8         	str	r0, [r7, #12]
     8fc: 60b9         	str	r1, [r7, #8]
     8fe: 607a         	str	r2, [r7, #4]
     900: 603b         	str	r3, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:9
;     int32_t batches = flatSizeSkipDim(weights_size, weights, 0);
     902: 2200         	movs	r2, #0
     904: 6ab9         	ldr	r1, [r7, #40]
     906: 6af8         	ldr	r0, [r7, #44]
     908: f000 f889    	bl	0xa1e <flatSizeSkipDim> @ imm = #274
     90c: 61f8         	str	r0, [r7, #28]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:10
;     int32_t accum_depth = weights[weights_size - 1];
     90e: 6afb         	ldr	r3, [r7, #44]
     910: f103 4380    	add.w	r3, r3, #1073741824
     914: 3b01         	subs	r3, #1
     916: 009b         	lsls	r3, r3, #2
     918: 6aba         	ldr	r2, [r7, #40]
     91a: 4413         	add	r3, r2
     91c: 681b         	ldr	r3, [r3]
     91e: 61bb         	str	r3, [r7, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:11
;     int32_t output_depth = output[output_size - 1];
     920: 6b7b         	ldr	r3, [r7, #52]
     922: f103 4380    	add.w	r3, r3, #1073741824
     926: 3b01         	subs	r3, #1
     928: 009b         	lsls	r3, r3, #2
     92a: 6b3a         	ldr	r2, [r7, #48]
     92c: 4413         	add	r3, r2
     92e: 681b         	ldr	r3, [r3]
     930: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:13
;     input_dims->n = batches;
     932: 68fb         	ldr	r3, [r7, #12]
     934: 69fa         	ldr	r2, [r7, #28]
     936: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:14
;     input_dims->h = 1;
     938: 68fb         	ldr	r3, [r7, #12]
     93a: 2201         	movs	r2, #1
     93c: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:15
;     input_dims->w = 1;
     93e: 68fb         	ldr	r3, [r7, #12]
     940: 2201         	movs	r2, #1
     942: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:16
;     input_dims->c = accum_depth;
     944: 68fb         	ldr	r3, [r7, #12]
     946: 69ba         	ldr	r2, [r7, #24]
     948: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:18
;     filter_dims->n = accum_depth;
     94a: 68bb         	ldr	r3, [r7, #8]
     94c: 69ba         	ldr	r2, [r7, #24]
     94e: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:19
;     filter_dims->h = 1;
     950: 68bb         	ldr	r3, [r7, #8]
     952: 2201         	movs	r2, #1
     954: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:20
;     filter_dims->w = 1;
     956: 68bb         	ldr	r3, [r7, #8]
     958: 2201         	movs	r2, #1
     95a: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:21
;     filter_dims->c = output_depth;
     95c: 68bb         	ldr	r3, [r7, #8]
     95e: 697a         	ldr	r2, [r7, #20]
     960: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:23
;     bias_dims->n = 1;
     962: 687b         	ldr	r3, [r7, #4]
     964: 2201         	movs	r2, #1
     966: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:24
;     bias_dims->h = 1;
     968: 687b         	ldr	r3, [r7, #4]
     96a: 2201         	movs	r2, #1
     96c: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:25
;     bias_dims->w = 1;
     96e: 687b         	ldr	r3, [r7, #4]
     970: 2201         	movs	r2, #1
     972: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:26
;     bias_dims->c = output_depth;
     974: 687b         	ldr	r3, [r7, #4]
     976: 697a         	ldr	r2, [r7, #20]
     978: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:28
;     output_dims->n = batches;
     97a: 683b         	ldr	r3, [r7]
     97c: 69fa         	ldr	r2, [r7, #28]
     97e: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:29
;     output_dims->h = 1;
     980: 683b         	ldr	r3, [r7]
     982: 2201         	movs	r2, #1
     984: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:30
;     output_dims->w = 1;
     986: 683b         	ldr	r3, [r7]
     988: 2201         	movs	r2, #1
     98a: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:31
;     output_dims->c = output_depth;
     98c: 683b         	ldr	r3, [r7]
     98e: 697a         	ldr	r2, [r7, #20]
     990: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:32
; }
     992: bf00         	nop
     994: 3720         	adds	r7, #32
     996: 46bd         	mov	sp, r7
     998: bd80         	pop	{r7, pc}

0000099a <fill_fc_params>:
; fill_fc_params():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:35
; {
     99a: b580         	push	{r7, lr}
     99c: b086         	sub	sp, #24
     99e: af02         	add	r7, sp, #8
     9a0: 60f8         	str	r0, [r7, #12]
     9a2: 607b         	str	r3, [r7, #4]
     9a4: ed87 0a00    	vstr	s0, [r7]
     9a8: 460b         	mov	r3, r1
     9aa: 72fb         	strb	r3, [r7, #11]
     9ac: 4613         	mov	r3, r2
     9ae: 72bb         	strb	r3, [r7, #10]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:36
;     fc_params->input_offset = -(input_zero_point);
     9b0: 687b         	ldr	r3, [r7, #4]
     9b2: 425a         	rsbs	r2, r3, #0
     9b4: 68fb         	ldr	r3, [r7, #12]
     9b6: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:37
;     fc_params->filter_offset = 0;
     9b8: 68fb         	ldr	r3, [r7, #12]
     9ba: 2200         	movs	r2, #0
     9bc: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:38
;     fc_params->output_offset = output_zero_point;
     9be: 68fb         	ldr	r3, [r7, #12]
     9c0: 69ba         	ldr	r2, [r7, #24]
     9c2: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:39
;     calculateActivationRangeQuantized(activation, input_type, input_scale, input_zero_point, &fc_params->activation.min, &fc_params->activation.max);
     9c4: 68fb         	ldr	r3, [r7, #12]
     9c6: f103 020c    	add.w	r2, r3, #12
     9ca: 68fb         	ldr	r3, [r7, #12]
     9cc: 3310         	adds	r3, #16
     9ce: 7ab9         	ldrb	r1, [r7, #10]
     9d0: 7af8         	ldrb	r0, [r7, #11]
     9d2: 9300         	str	r3, [sp]
     9d4: 4613         	mov	r3, r2
     9d6: 687a         	ldr	r2, [r7, #4]
     9d8: ed97 0a00    	vldr	s0, [r7]
     9dc: f000 f8c0    	bl	0xb60 <calculateActivationRangeQuantized> @ imm = #384
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:40
; }
     9e0: bf00         	nop
     9e2: 3710         	adds	r7, #16
     9e4: 46bd         	mov	sp, r7
     9e6: bd80         	pop	{r7, pc}

000009e8 <fill_quant_params>:
; fill_quant_params():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:43
; {
     9e8: b580         	push	{r7, lr}
     9ea: b084         	sub	sp, #16
     9ec: af00         	add	r7, sp, #0
     9ee: 60f8         	str	r0, [r7, #12]
     9f0: ed87 0a02    	vstr	s0, [r7, #8]
     9f4: edc7 0a01    	vstr	s1, [r7, #4]
     9f8: ed87 1a00    	vstr	s2, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:44
;     quantizeMultiplier(&quant_params->multiplier, &quant_params->shift, input_scale, weights_scale, output_scale);
     9fc: 68fa         	ldr	r2, [r7, #12]
     9fe: 68fb         	ldr	r3, [r7, #12]
     a00: 3304         	adds	r3, #4
     a02: ed97 1a00    	vldr	s2, [r7]
     a06: edd7 0a01    	vldr	s1, [r7, #4]
     a0a: ed97 0a02    	vldr	s0, [r7, #8]
     a0e: 4619         	mov	r1, r3
     a10: 4610         	mov	r0, r2
     a12: f000 f9ab    	bl	0xd6c <quantizeMultiplier> @ imm = #854
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/fully_connected_utils.c:45
; }
     a16: bf00         	nop
     a18: 3710         	adds	r7, #16
     a1a: 46bd         	mov	sp, r7
     a1c: bd80         	pop	{r7, pc}

00000a1e <flatSizeSkipDim>:
; flatSizeSkipDim():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:9
; {
     a1e: b480         	push	{r7}
     a20: b087         	sub	sp, #28
     a22: af00         	add	r7, sp, #0
     a24: 60f8         	str	r0, [r7, #12]
     a26: 60b9         	str	r1, [r7, #8]
     a28: 607a         	str	r2, [r7, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:10
;     int32_t flat_size = 1;
     a2a: 2301         	movs	r3, #1
     a2c: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:11
;     for (int32_t i = 0; i < dims; ++i)
     a2e: 2300         	movs	r3, #0
     a30: 613b         	str	r3, [r7, #16]
     a32: e011         	b	0xa58 <flatSizeSkipDim+0x3a> @ imm = #34
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:13
;         flat_size *= (i == skip_dim) ? 1 : dims_data[i];
     a34: 693a         	ldr	r2, [r7, #16]
     a36: 687b         	ldr	r3, [r7, #4]
     a38: 429a         	cmp	r2, r3
     a3a: d005         	beq	0xa48 <flatSizeSkipDim+0x2a> @ imm = #10
     a3c: 693b         	ldr	r3, [r7, #16]
     a3e: 009b         	lsls	r3, r3, #2
     a40: 68ba         	ldr	r2, [r7, #8]
     a42: 4413         	add	r3, r2
     a44: 681b         	ldr	r3, [r3]
     a46: e000         	b	0xa4a <flatSizeSkipDim+0x2c> @ imm = #0
     a48: 2301         	movs	r3, #1
     a4a: 697a         	ldr	r2, [r7, #20]
     a4c: fb02 f303    	mul	r3, r2, r3
     a50: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:11
;     for (int32_t i = 0; i < dims; ++i)
     a52: 693b         	ldr	r3, [r7, #16]
     a54: 3301         	adds	r3, #1
     a56: 613b         	str	r3, [r7, #16]
     a58: 693a         	ldr	r2, [r7, #16]
     a5a: 68fb         	ldr	r3, [r7, #12]
     a5c: 429a         	cmp	r2, r3
     a5e: dbe9         	blt	0xa34 <flatSizeSkipDim+0x16> @ imm = #-46
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:15
;     return flat_size;
     a60: 697b         	ldr	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:16
; }
     a62: 4618         	mov	r0, r3
     a64: 371c         	adds	r7, #28
     a66: 46bd         	mov	sp, r7
     a68: f85d 7b04    	ldr	r7, [sp], #4
     a6c: 4770         	bx	lr
     a6e: 0000         	movs	r0, r0

00000a70 <quantize>:
; quantize():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:19
; {
     a70: b580         	push	{r7, lr}
     a72: b086         	sub	sp, #24
     a74: af00         	add	r7, sp, #0
     a76: ed87 0a03    	vstr	s0, [r7, #12]
     a7a: 60b8         	str	r0, [r7, #8]
     a7c: edc7 0a01    	vstr	s1, [r7, #4]
     a80: 6039         	str	r1, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:20
;     const float tmp = round(f / scale);
     a82: ed97 7a01    	vldr	s14, [r7, #4]
     a86: edd7 7a03    	vldr	s15, [r7, #12]
     a8a: eec7 6a27    	vdiv.f32	s13, s14, s15
     a8e: ee16 0a90    	vmov	r0, s13
     a92: f006 f92f    	bl	0x6cf4 <__extendsfdf2>  @ imm = #25182
     a96: 4602         	mov	r2, r0
     a98: 460b         	mov	r3, r1
     a9a: ec43 2b10    	vmov	d0, r2, r3
     a9e: f005 fa01    	bl	0x5ea4 <round>          @ imm = #21506
     aa2: ec53 2b10    	vmov	r2, r3, d0
     aa6: 4610         	mov	r0, r2
     aa8: 4619         	mov	r1, r3
     aaa: f006 fc5d    	bl	0x7368 <__truncdfsf2>   @ imm = #26810
     aae: 4603         	mov	r3, r0
     ab0: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:21
;     const bool no_integer_overflow_from_quantization = (tmp >= (float)INT_MIN && tmp <= (float)INT_MAX);
     ab2: edd7 7a05    	vldr	s15, [r7, #20]
     ab6: ed9f 7a18    	vldr	s14, [pc, #96]          @ 0xb18 <$d>
     aba: eef4 7ac7    	vcmpe.f32	s15, s14
     abe: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ac2: db0a         	blt	0xada <quantize+0x6a>   @ imm = #20
     ac4: edd7 7a05    	vldr	s15, [r7, #20]
     ac8: ed9f 7a14    	vldr	s14, [pc, #80]          @ 0xb1c <$d+0x4>
     acc: eef4 7ac7    	vcmpe.f32	s15, s14
     ad0: eef1 fa10    	vmrs	APSR_nzcv, fpscr
     ad4: d801         	bhi	0xada <quantize+0x6a>   @ imm = #2
     ad6: 2301         	movs	r3, #1
     ad8: e000         	b	0xadc <quantize+0x6c>   @ imm = #0
     ada: 2300         	movs	r3, #0
     adc: 74fb         	strb	r3, [r7, #19]
     ade: 7cfb         	ldrb	r3, [r7, #19]
     ae0: f003 0301    	and	r3, r3, #1
     ae4: 74fb         	strb	r3, [r7, #19]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:22
;     if (!no_integer_overflow_from_quantization)
     ae6: 7cfb         	ldrb	r3, [r7, #19]
     ae8: f083 0301    	eor	r3, r3, #1
     aec: b2db         	uxtb	r3, r3
     aee: 2b00         	cmp	r3, #0
     af0: d002         	beq	0xaf8 <quantize+0x88>   @ imm = #4
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:24
;         return -1;
     af2: f04f 33ff    	mov.w	r3, #4294967295
     af6: e00a         	b	0xb0e <quantize+0x9e>   @ imm = #20
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:27
;     *q = ((int32_t)(tmp)) + zero_point;
     af8: edd7 7a05    	vldr	s15, [r7, #20]
     afc: eefd 7ae7    	vcvt.s32.f32	s15, s15
     b00: ee17 2a90    	vmov	r2, s15
     b04: 68bb         	ldr	r3, [r7, #8]
     b06: 441a         	add	r2, r3
     b08: 683b         	ldr	r3, [r7]
     b0a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:29
;     return 0;
     b0c: 2300         	movs	r3, #0
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:30
; }
     b0e: 4618         	mov	r0, r3
     b10: 3718         	adds	r7, #24
     b12: 46bd         	mov	sp, r7
     b14: bd80         	pop	{r7, pc}
     b16: bf00         	nop

00000b18 <$d>:
     b18: 00 00 00 cf  	.word	0xcf000000
     b1c: 00 00 00 4f  	.word	0x4f000000

00000b20 <quantizeInt8>:
; quantizeInt8():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:33
; {
     b20: b580         	push	{r7, lr}
     b22: b086         	sub	sp, #24
     b24: af00         	add	r7, sp, #0
     b26: ed87 0a03    	vstr	s0, [r7, #12]
     b2a: 60b8         	str	r0, [r7, #8]
     b2c: edc7 0a01    	vstr	s1, [r7, #4]
     b30: 6039         	str	r1, [r7]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:35
;     int ret = quantize(scale, zero_point, f, &tmp_q);
     b32: f107 0310    	add.w	r3, r7, #16
     b36: 4619         	mov	r1, r3
     b38: edd7 0a01    	vldr	s1, [r7, #4]
     b3c: 68b8         	ldr	r0, [r7, #8]
     b3e: ed97 0a03    	vldr	s0, [r7, #12]
     b42: f7ff ff95    	bl	0xa70 <quantize>        @ imm = #-214
     b46: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:36
;     if (ret == 0)
     b48: 697b         	ldr	r3, [r7, #20]
     b4a: 2b00         	cmp	r3, #0
     b4c: d103         	bne	0xb56 <quantizeInt8+0x36> @ imm = #6
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:38
;         *q = (int8_t)tmp_q;
     b4e: 693b         	ldr	r3, [r7, #16]
     b50: b25a         	sxtb	r2, r3
     b52: 683b         	ldr	r3, [r7]
     b54: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:40
;     return ret;
     b56: 697b         	ldr	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:41
; }
     b58: 4618         	mov	r0, r3
     b5a: 3718         	adds	r7, #24
     b5c: 46bd         	mov	sp, r7
     b5e: bd80         	pop	{r7, pc}

00000b60 <calculateActivationRangeQuantized>:
; calculateActivationRangeQuantized():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:49
; {
     b60: b5b0         	push	{r4, r5, r7, lr}
     b62: b088         	sub	sp, #32
     b64: af00         	add	r7, sp, #0
     b66: ed87 0a02    	vstr	s0, [r7, #8]
     b6a: 607a         	str	r2, [r7, #4]
     b6c: 603b         	str	r3, [r7]
     b6e: 4603         	mov	r3, r0
     b70: 73fb         	strb	r3, [r7, #15]
     b72: 460b         	mov	r3, r1
     b74: 73bb         	strb	r3, [r7, #14]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:50
;     int32_t qmin = 0;
     b76: 2300         	movs	r3, #0
     b78: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:51
;     int32_t qmax = 0;
     b7a: 2300         	movs	r3, #0
     b7c: 61bb         	str	r3, [r7, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:52
;     if (type == UINT8)
     b7e: 7bbb         	ldrb	r3, [r7, #14]
     b80: 2b03         	cmp	r3, #3
     b82: d104         	bne	0xb8e <calculateActivationRangeQuantized+0x2e> @ imm = #8
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:54
;         qmin = 0;
     b84: 2300         	movs	r3, #0
     b86: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:55
;         qmax = UINT8_MAX;
     b88: 23ff         	movs	r3, #255
     b8a: 61bb         	str	r3, [r7, #24]
     b8c: e014         	b	0xbb8 <calculateActivationRangeQuantized+0x58> @ imm = #40
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:57
;     else if (type == INT8)
     b8e: 7bbb         	ldrb	r3, [r7, #14]
     b90: 2b09         	cmp	r3, #9
     b92: d105         	bne	0xba0 <calculateActivationRangeQuantized+0x40> @ imm = #10
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:59
;         qmin = INT8_MIN;
     b94: f06f 037f    	mvn	r3, #127
     b98: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:60
;         qmax = INT8_MAX;
     b9a: 237f         	movs	r3, #127
     b9c: 61bb         	str	r3, [r7, #24]
     b9e: e00b         	b	0xbb8 <calculateActivationRangeQuantized+0x58> @ imm = #22
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:62
;     else if (type == INT16)
     ba0: 7bbb         	ldrb	r3, [r7, #14]
     ba2: 2b07         	cmp	r3, #7
     ba4: d105         	bne	0xbb2 <calculateActivationRangeQuantized+0x52> @ imm = #10
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:64
;         qmin = INT16_MIN;
     ba6: 4b6f         	ldr	r3, [pc, #444]          @ 0xd64 <$d>
     ba8: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:65
;         qmax = INT16_MAX;
     baa: f647 73ff    	movw	r3, #32767
     bae: 61bb         	str	r3, [r7, #24]
     bb0: e002         	b	0xbb8 <calculateActivationRangeQuantized+0x58> @ imm = #4
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:69
;         return -1;
     bb2: f04f 33ff    	mov.w	r3, #4294967295
     bb6: e0d0         	b	0xd5a <calculateActivationRangeQuantized+0x1fa> @ imm = #416
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:73
;     int ret = 0;
     bb8: 2300         	movs	r3, #0
     bba: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:74
;     if (activation == NONE)
     bbc: 7bfb         	ldrb	r3, [r7, #15]
     bbe: 2b00         	cmp	r3, #0
     bc0: d128         	bne	0xc14 <calculateActivationRangeQuantized+0xb4> @ imm = #80
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:76
;         ret = quantize(scale, zero_point, 0.0, &tmp_q);
     bc2: f107 0310    	add.w	r3, r7, #16
     bc6: 4619         	mov	r1, r3
     bc8: eddf 0a67    	vldr	s1, [pc, #412]          @ 0xd68 <$d+0x4>
     bcc: 6878         	ldr	r0, [r7, #4]
     bce: ed97 0a02    	vldr	s0, [r7, #8]
     bd2: f7ff ff4d    	bl	0xa70 <quantize>        @ imm = #-358
     bd6: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:77
;         *act_min = fmax(qmin, tmp_q);
     bd8: 69f8         	ldr	r0, [r7, #28]
     bda: f006 f879    	bl	0x6cd0 <__floatsidf>    @ imm = #24818
     bde: 4604         	mov	r4, r0
     be0: 460d         	mov	r5, r1
     be2: 693b         	ldr	r3, [r7, #16]
     be4: 4618         	mov	r0, r3
     be6: f006 f873    	bl	0x6cd0 <__floatsidf>    @ imm = #24806
     bea: 4602         	mov	r2, r0
     bec: 460b         	mov	r3, r1
     bee: ec43 2b11    	vmov	d1, r2, r3
     bf2: ec45 4b10    	vmov	d0, r4, r5
     bf6: f005 f9a5    	bl	0x5f44 <fmax>           @ imm = #21322
     bfa: ec53 2b10    	vmov	r2, r3, d0
     bfe: 4610         	mov	r0, r2
     c00: 4619         	mov	r1, r3
     c02: f006 fb69    	bl	0x72d8 <__fixdfsi>      @ imm = #26322
     c06: 4602         	mov	r2, r0
     c08: 683b         	ldr	r3, [r7]
     c0a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:78
;         *act_max = qmax;
     c0c: 6b3b         	ldr	r3, [r7, #48]
     c0e: 69ba         	ldr	r2, [r7, #24]
     c10: 601a         	str	r2, [r3]
     c12: e0a1         	b	0xd58 <calculateActivationRangeQuantized+0x1f8> @ imm = #322
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:80
;     else if (activation == RELU6)
     c14: 7bfb         	ldrb	r3, [r7, #15]
     c16: 2b03         	cmp	r3, #3
     c18: d14a         	bne	0xcb0 <calculateActivationRangeQuantized+0x150> @ imm = #148
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:82
;         ret = quantize(scale, zero_point, 6.0, &tmp_q);
     c1a: f107 0310    	add.w	r3, r7, #16
     c1e: 4619         	mov	r1, r3
     c20: eef1 0a08    	vmov.f32	s1, #6.000000e+00
     c24: 6878         	ldr	r0, [r7, #4]
     c26: ed97 0a02    	vldr	s0, [r7, #8]
     c2a: f7ff ff21    	bl	0xa70 <quantize>        @ imm = #-446
     c2e: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:83
;         *act_min = fmax(qmin, tmp_q);
     c30: 69f8         	ldr	r0, [r7, #28]
     c32: f006 f84d    	bl	0x6cd0 <__floatsidf>    @ imm = #24730
     c36: 4604         	mov	r4, r0
     c38: 460d         	mov	r5, r1
     c3a: 693b         	ldr	r3, [r7, #16]
     c3c: 4618         	mov	r0, r3
     c3e: f006 f847    	bl	0x6cd0 <__floatsidf>    @ imm = #24718
     c42: 4602         	mov	r2, r0
     c44: 460b         	mov	r3, r1
     c46: ec43 2b11    	vmov	d1, r2, r3
     c4a: ec45 4b10    	vmov	d0, r4, r5
     c4e: f005 f979    	bl	0x5f44 <fmax>           @ imm = #21234
     c52: ec53 2b10    	vmov	r2, r3, d0
     c56: 4610         	mov	r0, r2
     c58: 4619         	mov	r1, r3
     c5a: f006 fb3d    	bl	0x72d8 <__fixdfsi>      @ imm = #26234
     c5e: 4602         	mov	r2, r0
     c60: 683b         	ldr	r3, [r7]
     c62: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:84
;         ret = quantize(scale, zero_point, 6.0, &tmp_q);
     c64: f107 0310    	add.w	r3, r7, #16
     c68: 4619         	mov	r1, r3
     c6a: eef1 0a08    	vmov.f32	s1, #6.000000e+00
     c6e: 6878         	ldr	r0, [r7, #4]
     c70: ed97 0a02    	vldr	s0, [r7, #8]
     c74: f7ff fefc    	bl	0xa70 <quantize>        @ imm = #-520
     c78: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:85
;         *act_max = fmin(qmax, tmp_q);
     c7a: 69b8         	ldr	r0, [r7, #24]
     c7c: f006 f828    	bl	0x6cd0 <__floatsidf>    @ imm = #24656
     c80: 4604         	mov	r4, r0
     c82: 460d         	mov	r5, r1
     c84: 693b         	ldr	r3, [r7, #16]
     c86: 4618         	mov	r0, r3
     c88: f006 f822    	bl	0x6cd0 <__floatsidf>    @ imm = #24644
     c8c: 4602         	mov	r2, r0
     c8e: 460b         	mov	r3, r1
     c90: ec43 2b11    	vmov	d1, r2, r3
     c94: ec45 4b10    	vmov	d0, r4, r5
     c98: f004 ff78    	bl	0x5b8c <fmin>           @ imm = #20208
     c9c: ec53 2b10    	vmov	r2, r3, d0
     ca0: 4610         	mov	r0, r2
     ca2: 4619         	mov	r1, r3
     ca4: f006 fb18    	bl	0x72d8 <__fixdfsi>      @ imm = #26160
     ca8: 4602         	mov	r2, r0
     caa: 6b3b         	ldr	r3, [r7, #48]
     cac: 601a         	str	r2, [r3]
     cae: e053         	b	0xd58 <calculateActivationRangeQuantized+0x1f8> @ imm = #166
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:87
;     else if (activation == RELU_N1_TO_1)
     cb0: 7bfb         	ldrb	r3, [r7, #15]
     cb2: 2b02         	cmp	r3, #2
     cb4: d14a         	bne	0xd4c <calculateActivationRangeQuantized+0x1ec> @ imm = #148
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:89
;         ret = quantize(scale, zero_point, -1.0, &tmp_q);
     cb6: f107 0310    	add.w	r3, r7, #16
     cba: 4619         	mov	r1, r3
     cbc: eeff 0a00    	vmov.f32	s1, #-1.000000e+00
     cc0: 6878         	ldr	r0, [r7, #4]
     cc2: ed97 0a02    	vldr	s0, [r7, #8]
     cc6: f7ff fed3    	bl	0xa70 <quantize>        @ imm = #-602
     cca: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:90
;         *act_min = fmax(qmin, tmp_q);
     ccc: 69f8         	ldr	r0, [r7, #28]
     cce: f005 ffff    	bl	0x6cd0 <__floatsidf>    @ imm = #24574
     cd2: 4604         	mov	r4, r0
     cd4: 460d         	mov	r5, r1
     cd6: 693b         	ldr	r3, [r7, #16]
     cd8: 4618         	mov	r0, r3
     cda: f005 fff9    	bl	0x6cd0 <__floatsidf>    @ imm = #24562
     cde: 4602         	mov	r2, r0
     ce0: 460b         	mov	r3, r1
     ce2: ec43 2b11    	vmov	d1, r2, r3
     ce6: ec45 4b10    	vmov	d0, r4, r5
     cea: f005 f92b    	bl	0x5f44 <fmax>           @ imm = #21078
     cee: ec53 2b10    	vmov	r2, r3, d0
     cf2: 4610         	mov	r0, r2
     cf4: 4619         	mov	r1, r3
     cf6: f006 faef    	bl	0x72d8 <__fixdfsi>      @ imm = #26078
     cfa: 4602         	mov	r2, r0
     cfc: 683b         	ldr	r3, [r7]
     cfe: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:91
;         ret = quantize(scale, zero_point, 1.0, &tmp_q);
     d00: f107 0310    	add.w	r3, r7, #16
     d04: 4619         	mov	r1, r3
     d06: eef7 0a00    	vmov.f32	s1, #1.000000e+00
     d0a: 6878         	ldr	r0, [r7, #4]
     d0c: ed97 0a02    	vldr	s0, [r7, #8]
     d10: f7ff feae    	bl	0xa70 <quantize>        @ imm = #-676
     d14: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:92
;         *act_max = fmin(qmax, tmp_q);
     d16: 69b8         	ldr	r0, [r7, #24]
     d18: f005 ffda    	bl	0x6cd0 <__floatsidf>    @ imm = #24500
     d1c: 4604         	mov	r4, r0
     d1e: 460d         	mov	r5, r1
     d20: 693b         	ldr	r3, [r7, #16]
     d22: 4618         	mov	r0, r3
     d24: f005 ffd4    	bl	0x6cd0 <__floatsidf>    @ imm = #24488
     d28: 4602         	mov	r2, r0
     d2a: 460b         	mov	r3, r1
     d2c: ec43 2b11    	vmov	d1, r2, r3
     d30: ec45 4b10    	vmov	d0, r4, r5
     d34: f004 ff2a    	bl	0x5b8c <fmin>           @ imm = #20052
     d38: ec53 2b10    	vmov	r2, r3, d0
     d3c: 4610         	mov	r0, r2
     d3e: 4619         	mov	r1, r3
     d40: f006 faca    	bl	0x72d8 <__fixdfsi>      @ imm = #26004
     d44: 4602         	mov	r2, r0
     d46: 6b3b         	ldr	r3, [r7, #48]
     d48: 601a         	str	r2, [r3]
     d4a: e005         	b	0xd58 <calculateActivationRangeQuantized+0x1f8> @ imm = #10
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:96
;         *act_min = qmin;
     d4c: 683b         	ldr	r3, [r7]
     d4e: 69fa         	ldr	r2, [r7, #28]
     d50: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:97
;         *act_max = qmax;
     d52: 6b3b         	ldr	r3, [r7, #48]
     d54: 69ba         	ldr	r2, [r7, #24]
     d56: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:99
;     return ret;
     d58: 697b         	ldr	r3, [r7, #20]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:100
; }
     d5a: 4618         	mov	r0, r3
     d5c: 3720         	adds	r7, #32
     d5e: 46bd         	mov	sp, r7
     d60: bdb0         	pop	{r4, r5, r7, pc}
     d62: bf00         	nop

00000d64 <$d>:
     d64: 00 80 ff ff  	.word	0xffff8000
     d68: 00 00 00 00  	.word	0x00000000

00000d6c <quantizeMultiplier>:
; quantizeMultiplier():
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:107
; {
     d6c: e92d 43b0    	push.w	{r4, r5, r7, r8, r9, lr}
     d70: b08c         	sub	sp, #48
     d72: af00         	add	r7, sp, #0
     d74: 6178         	str	r0, [r7, #20]
     d76: 6139         	str	r1, [r7, #16]
     d78: ed87 0a03    	vstr	s0, [r7, #12]
     d7c: edc7 0a02    	vstr	s1, [r7, #8]
     d80: ed87 1a01    	vstr	s2, [r7, #4]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:108
;     double double_multiplier = ((double)input_scale) * ((double)filter_scale) / ((double)output_scale);
     d84: 68f8         	ldr	r0, [r7, #12]
     d86: f005 ffb5    	bl	0x6cf4 <__extendsfdf2>  @ imm = #24426
     d8a: 4680         	mov	r8, r0
     d8c: 4689         	mov	r9, r1
     d8e: 68b8         	ldr	r0, [r7, #8]
     d90: f005 ffb0    	bl	0x6cf4 <__extendsfdf2>  @ imm = #24416
     d94: 4602         	mov	r2, r0
     d96: 460b         	mov	r3, r1
     d98: 4640         	mov	r0, r8
     d9a: 4649         	mov	r1, r9
     d9c: f006 f802    	bl	0x6da4 <__muldf3>       @ imm = #24580
     da0: 4602         	mov	r2, r0
     da2: 460b         	mov	r3, r1
     da4: 4690         	mov	r8, r2
     da6: 4699         	mov	r9, r3
     da8: 6878         	ldr	r0, [r7, #4]
     daa: f005 ffa3    	bl	0x6cf4 <__extendsfdf2>  @ imm = #24390
     dae: 4602         	mov	r2, r0
     db0: 460b         	mov	r3, r1
     db2: 4640         	mov	r0, r8
     db4: 4649         	mov	r1, r9
     db6: f006 f91f    	bl	0x6ff8 <__divdf3>       @ imm = #25150
     dba: 4602         	mov	r2, r0
     dbc: 460b         	mov	r3, r1
     dbe: e9c7 2308    	strd	r2, r3, [r7, #32]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:109
;     if (double_multiplier == 0.)
     dc2: f04f 0200    	mov.w	r2, #0
     dc6: f04f 0300    	mov.w	r3, #0
     dca: e9d7 0108    	ldrd	r0, r1, [r7, #32]
     dce: f006 fa51    	bl	0x7274 <__aeabi_dcmpeq> @ imm = #25762
     dd2: 4603         	mov	r3, r0
     dd4: 2b00         	cmp	r3, #0
     dd6: d006         	beq	0xde6 <quantizeMultiplier+0x7a> @ imm = #12
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:111
;         *quantized_multiplier = 0;
     dd8: 697b         	ldr	r3, [r7, #20]
     dda: 2200         	movs	r2, #0
     ddc: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:112
;         *shift = 0;
     dde: 693b         	ldr	r3, [r7, #16]
     de0: 2200         	movs	r2, #0
     de2: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:113
;         return;
     de4: e052         	b	0xe8c <quantizeMultiplier+0x120> @ imm = #164
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:116
;     const double q = frexp(double_multiplier, shift);
     de6: 6938         	ldr	r0, [r7, #16]
     de8: ed97 0b08    	vldr	d0, [r7, #32]
     dec: f004 ff5e    	bl	0x5cac <frexp>          @ imm = #20156
     df0: ed87 0b06    	vstr	d0, [r7, #24]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:117
;     int64_t q_fixed = (int64_t)(round(q * (1LL << 31)));
     df4: f04f 0200    	mov.w	r2, #0
     df8: 4b26         	ldr	r3, [pc, #152]          @ 0xe94 <$d>
     dfa: e9d7 0106    	ldrd	r0, r1, [r7, #24]
     dfe: f005 ffd1    	bl	0x6da4 <__muldf3>       @ imm = #24482
     e02: 4602         	mov	r2, r0
     e04: 460b         	mov	r3, r1
     e06: ec43 2b17    	vmov	d7, r2, r3
     e0a: eeb0 0a47    	vmov.f32	s0, s14
     e0e: eef0 0a67    	vmov.f32	s1, s15
     e12: f005 f847    	bl	0x5ea4 <round>          @ imm = #20622
     e16: ec53 2b10    	vmov	r2, r3, d0
     e1a: 4610         	mov	r0, r2
     e1c: 4619         	mov	r1, r3
     e1e: f006 fc19    	bl	0x7654 <__fixdfdi>      @ imm = #26674
     e22: 4602         	mov	r2, r0
     e24: 460b         	mov	r3, r1
     e26: e9c7 230a    	strd	r2, r3, [r7, #40]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:118
;     if (q_fixed == (1LL << 31))
     e2a: e9d7 230a    	ldrd	r2, r3, [r7, #40]
     e2e: f102 4100    	add.w	r1, r2, #2147483648
     e32: 430b         	orrs	r3, r1
     e34: d119         	bne	0xe6a <quantizeMultiplier+0xfe> @ imm = #50
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:120
;         q_fixed /= 2;
     e36: e9d7 230a    	ldrd	r2, r3, [r7, #40]
     e3a: f04f 0000    	mov.w	r0, #0
     e3e: f04f 0100    	mov.w	r1, #0
     e42: 0fd8         	lsrs	r0, r3, #31
     e44: 2100         	movs	r1, #0
     e46: 1884         	adds	r4, r0, r2
     e48: eb41 0503    	adc.w	r5, r1, r3
     e4c: f04f 0200    	mov.w	r2, #0
     e50: f04f 0300    	mov.w	r3, #0
     e54: 0862         	lsrs	r2, r4, #1
     e56: ea42 72c5    	orr.w	r2, r2, r5, lsl #31
     e5a: 106b         	asrs	r3, r5, #1
     e5c: e9c7 230a    	strd	r2, r3, [r7, #40]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:121
;         ++*shift;
     e60: 693b         	ldr	r3, [r7, #16]
     e62: 681b         	ldr	r3, [r3]
     e64: 1c5a         	adds	r2, r3, #1
     e66: 693b         	ldr	r3, [r7, #16]
     e68: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:124
;     if (*shift < -31)
     e6a: 693b         	ldr	r3, [r7, #16]
     e6c: 681b         	ldr	r3, [r3]
     e6e: f113 0f1f    	cmn.w	r3, #31
     e72: da08         	bge	0xe86 <quantizeMultiplier+0x11a> @ imm = #16
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:126
;         *shift = 0;
     e74: 693b         	ldr	r3, [r7, #16]
     e76: 2200         	movs	r2, #0
     e78: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:127
;         q_fixed = 0;
     e7a: f04f 0200    	mov.w	r2, #0
     e7e: f04f 0300    	mov.w	r3, #0
     e82: e9c7 230a    	strd	r2, r3, [r7, #40]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:129
;     *quantized_multiplier = (int32_t)(q_fixed);
     e86: 6aba         	ldr	r2, [r7, #40]
     e88: 697b         	ldr	r3, [r7, #20]
     e8a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/Riotee_AppTemplate/src/model/utils.c:130
; }
     e8c: 3730         	adds	r7, #48
     e8e: 46bd         	mov	sp, r7
     e90: e8bd 83b0    	pop.w	{r4, r5, r7, r8, r9, pc}

00000e94 <$d>:
     e94: 00 00 e0 41  	.word	0x41e00000

00000e98 <nrf_gpio_pin_port_decode>:
; nrf_gpio_pin_port_decode():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:582
; {
     e98: b580         	push	{r7, lr}
     e9a: b082         	sub	sp, #8
     e9c: af00         	add	r7, sp, #0
     e9e: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:585
;     switch (nrf_gpio_pin_port_number_extract(p_pin))
     ea0: 6878         	ldr	r0, [r7, #4]
     ea2: f000 f862    	bl	0xf6a <nrf_gpio_pin_port_number_extract> @ imm = #196
     ea6: 4603         	mov	r3, r0
     ea8: 2b01         	cmp	r3, #1
     eaa: d002         	beq	0xeb2 <nrf_gpio_pin_port_decode+0x1a> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:591
;         case 0: return NRF_P0;
     eac: f04f 43a0    	mov.w	r3, #1342177280
     eb0: e000         	b	0xeb4 <nrf_gpio_pin_port_decode+0x1c> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:595
;         case 1: return NRF_P1;
     eb2: 4b02         	ldr	r3, [pc, #8]            @ 0xebc <$d>
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:598
; }
     eb4: 4618         	mov	r0, r3
     eb6: 3708         	adds	r7, #8
     eb8: 46bd         	mov	sp, r7
     eba: bd80         	pop	{r7, pc}

00000ebc <$d>:
     ebc: 00 03 00 50  	.word	0x50000300

00000ec0 <nrf_gpio_cfg>:
; nrf_gpio_cfg():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:628
; {
     ec0: b580         	push	{r7, lr}
     ec2: b084         	sub	sp, #16
     ec4: af00         	add	r7, sp, #0
     ec6: 6078         	str	r0, [r7, #4]
     ec8: 4608         	mov	r0, r1
     eca: 4611         	mov	r1, r2
     ecc: 461a         	mov	r2, r3
     ece: 4603         	mov	r3, r0
     ed0: 70fb         	strb	r3, [r7, #3]
     ed2: 460b         	mov	r3, r1
     ed4: 70bb         	strb	r3, [r7, #2]
     ed6: 4613         	mov	r3, r2
     ed8: 707b         	strb	r3, [r7, #1]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:629
;     NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);
     eda: 1d3b         	adds	r3, r7, #4
     edc: 4618         	mov	r0, r3
     ede: f7ff ffdb    	bl	0xe98 <nrf_gpio_pin_port_decode> @ imm = #-74
     ee2: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:635
;     uint32_t cnf = 0;
     ee4: 2300         	movs	r3, #0
     ee6: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:637
;     cnf |= ((uint32_t)dir << GPIO_PIN_CNF_DIR_Pos)     |
     ee8: 78fa         	ldrb	r2, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:638
;            ((uint32_t)input << GPIO_PIN_CNF_INPUT_Pos) |
     eea: 78bb         	ldrb	r3, [r7, #2]
     eec: 005b         	lsls	r3, r3, #1
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:637
;     cnf |= ((uint32_t)dir << GPIO_PIN_CNF_DIR_Pos)     |
     eee: 431a         	orrs	r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:639
;            ((uint32_t)pull << GPIO_PIN_CNF_PULL_Pos)   |
     ef0: 787b         	ldrb	r3, [r7, #1]
     ef2: 009b         	lsls	r3, r3, #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:638
;            ((uint32_t)input << GPIO_PIN_CNF_INPUT_Pos) |
     ef4: 431a         	orrs	r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:640
;            ((uint32_t)drive << GPIO_PIN_CNF_DRIVE_Pos) |
     ef6: 7e3b         	ldrb	r3, [r7, #24]
     ef8: 021b         	lsls	r3, r3, #8
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:639
;            ((uint32_t)pull << GPIO_PIN_CNF_PULL_Pos)   |
     efa: 431a         	orrs	r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:641
;            ((uint32_t)sense << GPIO_PIN_CNF_SENSE_Pos);
     efc: 7f3b         	ldrb	r3, [r7, #28]
     efe: 041b         	lsls	r3, r3, #16
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:640
;            ((uint32_t)drive << GPIO_PIN_CNF_DRIVE_Pos) |
     f00: 4313         	orrs	r3, r2
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:637
;     cnf |= ((uint32_t)dir << GPIO_PIN_CNF_DIR_Pos)     |
     f02: 68ba         	ldr	r2, [r7, #8]
     f04: 4313         	orrs	r3, r2
     f06: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:643
;     reg->PIN_CNF[pin_number] = cnf;
     f08: 687a         	ldr	r2, [r7, #4]
     f0a: 68fb         	ldr	r3, [r7, #12]
     f0c: f502 72e0    	add.w	r2, r2, #448
     f10: 68b9         	ldr	r1, [r7, #8]
     f12: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:644
; }
     f16: bf00         	nop
     f18: 3710         	adds	r7, #16
     f1a: 46bd         	mov	sp, r7
     f1c: bd80         	pop	{r7, pc}

00000f1e <nrf_gpio_cfg_input>:
; nrf_gpio_cfg_input():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:685
; {
     f1e: b580         	push	{r7, lr}
     f20: b084         	sub	sp, #16
     f22: af02         	add	r7, sp, #8
     f24: 6078         	str	r0, [r7, #4]
     f26: 460b         	mov	r3, r1
     f28: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:686
;     nrf_gpio_cfg(
     f2a: 78fb         	ldrb	r3, [r7, #3]
     f2c: 2200         	movs	r2, #0
     f2e: 9201         	str	r2, [sp, #4]
     f30: 2200         	movs	r2, #0
     f32: 9200         	str	r2, [sp]
     f34: 2200         	movs	r2, #0
     f36: 2100         	movs	r1, #0
     f38: 6878         	ldr	r0, [r7, #4]
     f3a: f7ff ffc1    	bl	0xec0 <nrf_gpio_cfg>    @ imm = #-126
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:693
; }
     f3e: bf00         	nop
     f40: 3708         	adds	r7, #8
     f42: 46bd         	mov	sp, r7
     f44: bd80         	pop	{r7, pc}

00000f46 <nrf_gpio_cfg_default>:
; nrf_gpio_cfg_default():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:697
; {
     f46: b580         	push	{r7, lr}
     f48: b084         	sub	sp, #16
     f4a: af02         	add	r7, sp, #8
     f4c: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:698
;     nrf_gpio_cfg(
     f4e: 2300         	movs	r3, #0
     f50: 9301         	str	r3, [sp, #4]
     f52: 2300         	movs	r3, #0
     f54: 9300         	str	r3, [sp]
     f56: 2300         	movs	r3, #0
     f58: 2201         	movs	r2, #1
     f5a: 2100         	movs	r1, #0
     f5c: 6878         	ldr	r0, [r7, #4]
     f5e: f7ff ffaf    	bl	0xec0 <nrf_gpio_cfg>    @ imm = #-162
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:705
; }
     f62: bf00         	nop
     f64: 3708         	adds	r7, #8
     f66: 46bd         	mov	sp, r7
     f68: bd80         	pop	{r7, pc}

00000f6a <nrf_gpio_pin_port_number_extract>:
; nrf_gpio_pin_port_number_extract():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1025
; {
     f6a: b480         	push	{r7}
     f6c: b085         	sub	sp, #20
     f6e: af00         	add	r7, sp, #0
     f70: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1026
;     uint32_t pin_number = *p_pin;
     f72: 687b         	ldr	r3, [r7, #4]
     f74: 681b         	ldr	r3, [r3]
     f76: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1027
;     *p_pin = pin_number & 0x1F;
     f78: 68fb         	ldr	r3, [r7, #12]
     f7a: f003 021f    	and	r2, r3, #31
     f7e: 687b         	ldr	r3, [r7, #4]
     f80: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1029
;     return pin_number >> 5;
     f82: 68fb         	ldr	r3, [r7, #12]
     f84: 095b         	lsrs	r3, r3, #5
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1030
; }
     f86: 4618         	mov	r0, r3
     f88: 3714         	adds	r7, #20
     f8a: 46bd         	mov	sp, r7
     f8c: f85d 7b04    	ldr	r7, [sp], #4
     f90: 4770         	bx	lr

00000f92 <prvGetRegistersFromStack>:
; prvGetRegistersFromStack():
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:151
; void prvGetRegistersFromStack(uint32_t *pulFaultStackAddress) {
     f92: b480         	push	{r7}
     f94: b08b         	sub	sp, #44
     f96: af00         	add	r7, sp, #0
     f98: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:165
;   r0 = pulFaultStackAddress[0];
     f9a: 687b         	ldr	r3, [r7, #4]
     f9c: 681b         	ldr	r3, [r3]
     f9e: 627b         	str	r3, [r7, #36]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:166
;   r1 = pulFaultStackAddress[1];
     fa0: 687b         	ldr	r3, [r7, #4]
     fa2: 685b         	ldr	r3, [r3, #4]
     fa4: 623b         	str	r3, [r7, #32]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:167
;   r2 = pulFaultStackAddress[2];
     fa6: 687b         	ldr	r3, [r7, #4]
     fa8: 689b         	ldr	r3, [r3, #8]
     faa: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:168
;   r3 = pulFaultStackAddress[3];
     fac: 687b         	ldr	r3, [r7, #4]
     fae: 68db         	ldr	r3, [r3, #12]
     fb0: 61bb         	str	r3, [r7, #24]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:170
;   r12 = pulFaultStackAddress[4];
     fb2: 687b         	ldr	r3, [r7, #4]
     fb4: 691b         	ldr	r3, [r3, #16]
     fb6: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:171
;   lr = pulFaultStackAddress[5];
     fb8: 687b         	ldr	r3, [r7, #4]
     fba: 695b         	ldr	r3, [r3, #20]
     fbc: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:172
;   pc = pulFaultStackAddress[6];
     fbe: 687b         	ldr	r3, [r7, #4]
     fc0: 699b         	ldr	r3, [r3, #24]
     fc2: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:173
;   psr = pulFaultStackAddress[7];
     fc4: 687b         	ldr	r3, [r7, #4]
     fc6: 69db         	ldr	r3, [r3, #28]
     fc8: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:176
;   for (;;)
     fca: bf00         	nop
     fcc: e7fd         	b	0xfca <prvGetRegistersFromStack+0x38> @ imm = #-6
     fce: 0000         	movs	r0, r0

00000fd0 <WDT_IRQHandler>:
; COMP_LPCOMP_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:180
; void Default_Handler(void) {
     fd0: b480         	push	{r7}
     fd2: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:181
;   asm volatile(
     fd4: f01e 0f04    	tst.w	lr, #4
     fd8: bf0c         	ite	eq
     fda: f3ef 8008    	mrseq	r0, msp
     fde: f3ef 8009    	mrsne	r0, psp
     fe2: 6981         	ldr	r1, [r0, #24]
     fe4: 4a02         	ldr	r2, [pc, #8]            @ 0xff0 <$d>
     fe6: 4710         	bx	r2
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:189
;   asm volatile("bkpt");
     fe8: be00         	bkpt	#0
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:191
;     __NOP();
     fea: bf00         	nop
     fec: e7fd         	b	0xfea <WDT_IRQHandler+0x1a> @ imm = #-6

00000fee <$d>:
     fee: 00 00        	.short	0x0000

00000ff0 <$d>:
     ff0: 93 0f 00 00  	.word	0x00000f93

00000ff4 <c_startup>:
; c_startup():
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:231
; void c_startup(void) {
     ff4: b580         	push	{r7, lr}
     ff6: b082         	sub	sp, #8
     ff8: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:235
;   NRF_NVMC->CONFIG = NVMC_CONFIG_WEN_Wen << NVMC_CONFIG_WEN_Pos;
     ffa: 4b4f         	ldr	r3, [pc, #316]          @ 0x1138 <$d>
     ffc: 2201         	movs	r2, #1
     ffe: f8c3 2504    	str.w	r2, [r3, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:236
;   while (NRF_NVMC->READY == NVMC_READY_READY_Busy) {
    1002: bf00         	nop
    1004: 4b4c         	ldr	r3, [pc, #304]          @ 0x1138 <$d>
    1006: f8d3 3400    	ldr.w	r3, [r3, #1024]
    100a: 2b00         	cmp	r3, #0
    100c: d0fa         	beq	0x1004 <c_startup+0x10> @ imm = #-12
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:238
;   NRF_UICR->NFCPINS = 0x0;
    100e: f04f 2310    	mov.w	r3, #268439552
    1012: 2200         	movs	r2, #0
    1014: f8c3 220c    	str.w	r2, [r3, #524]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:239
;   while (NRF_NVMC->READY == NVMC_READY_READY_Busy) {
    1018: bf00         	nop
    101a: 4b47         	ldr	r3, [pc, #284]          @ 0x1138 <$d>
    101c: f8d3 3400    	ldr.w	r3, [r3, #1024]
    1020: 2b00         	cmp	r3, #0
    1022: d0fa         	beq	0x101a <c_startup+0x26> @ imm = #-12
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:241
;   NRF_NVMC->CONFIG = NVMC_CONFIG_WEN_Ren << NVMC_CONFIG_WEN_Pos;
    1024: 4b44         	ldr	r3, [pc, #272]          @ 0x1138 <$d>
    1026: 2200         	movs	r2, #0
    1028: f8c3 2504    	str.w	r2, [r3, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:244
;   nrf_gpio_cfg_input(PIN_C2C_MOSI, NRF_GPIO_PIN_PULLDOWN);
    102c: 2101         	movs	r1, #1
    102e: 2011         	movs	r0, #17
    1030: f7ff ff75    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-278
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:245
;   nrf_gpio_cfg_input(PIN_C2C_CLK, NRF_GPIO_PIN_PULLDOWN);
    1034: 2101         	movs	r1, #1
    1036: 2012         	movs	r0, #18
    1038: f7ff ff71    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-286
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:246
;   nrf_gpio_cfg_input(PIN_C2C_CS, NRF_GPIO_PIN_PULLDOWN);
    103c: 2101         	movs	r1, #1
    103e: 2016         	movs	r0, #22
    1040: f7ff ff6d    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-294
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:247
;   nrf_gpio_cfg_input(PIN_C2C_MISO, NRF_GPIO_PIN_PULLDOWN);
    1044: 2101         	movs	r1, #1
    1046: 200e         	movs	r0, #14
    1048: f7ff ff69    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-302
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:249
;   riotee_thresholds_low_set(THR_LOW_3V1);
    104c: 2006         	movs	r0, #6
    104e: f000 f8e1    	bl	0x1214 <riotee_thresholds_low_set> @ imm = #450
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:250
;   riotee_thresholds_high_set(THR_HIGH_4V6);
    1052: 2008         	movs	r0, #8
    1054: f000 f920    	bl	0x1298 <riotee_thresholds_high_set> @ imm = #576
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:252
;   nrf_gpio_cfg_input(PIN_D0, NRF_GPIO_PIN_PULLDOWN);
    1058: 2101         	movs	r1, #1
    105a: 2015         	movs	r0, #21
    105c: f7ff ff5f    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-322
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:253
;   nrf_gpio_cfg_input(PIN_D1, NRF_GPIO_PIN_PULLDOWN);
    1060: 2101         	movs	r1, #1
    1062: 2008         	movs	r0, #8
    1064: f7ff ff5b    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-330
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:255
;   nrf_gpio_cfg_input(PIN_D4, NRF_GPIO_PIN_PULLDOWN);
    1068: 2101         	movs	r1, #1
    106a: 2029         	movs	r0, #41
    106c: f7ff ff57    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-338
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:256
;   nrf_gpio_cfg_input(PIN_D5, NRF_GPIO_PIN_PULLDOWN);
    1070: 2101         	movs	r1, #1
    1072: 201a         	movs	r0, #26
    1074: f7ff ff53    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-346
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:257
;   nrf_gpio_cfg_input(PIN_D6, NRF_GPIO_PIN_PULLDOWN);
    1078: 2101         	movs	r1, #1
    107a: 2023         	movs	r0, #35
    107c: f7ff ff4f    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-354
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:258
;   nrf_gpio_cfg_input(PIN_D7, NRF_GPIO_PIN_PULLDOWN);
    1080: 2101         	movs	r1, #1
    1082: 200b         	movs	r0, #11
    1084: f7ff ff4b    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-362
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:259
;   nrf_gpio_cfg_input(PIN_D8, NRF_GPIO_PIN_PULLDOWN);
    1088: 2101         	movs	r1, #1
    108a: 200d         	movs	r0, #13
    108c: f7ff ff47    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-370
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:260
;   nrf_gpio_cfg_input(PIN_D9, NRF_GPIO_PIN_PULLDOWN);
    1090: 2101         	movs	r1, #1
    1092: 2010         	movs	r0, #16
    1094: f7ff ff43    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-378
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:261
;   nrf_gpio_cfg_input(PIN_D10, NRF_GPIO_PIN_PULLDOWN);
    1098: 2101         	movs	r1, #1
    109a: 200c         	movs	r0, #12
    109c: f7ff ff3f    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-386
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:262
;   nrf_gpio_cfg_input(PIN_LED_CTRL, NRF_GPIO_PIN_PULLDOWN);
    10a0: 2101         	movs	r1, #1
    10a2: 2003         	movs	r0, #3
    10a4: f7ff ff3b    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-394
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:263
;   nrf_gpio_cfg_input(PIN_MAX_INT, NRF_GPIO_PIN_PULLDOWN);
    10a8: 2101         	movs	r1, #1
    10aa: 2019         	movs	r0, #25
    10ac: f7ff ff37    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-402
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:264
;   nrf_gpio_cfg_input(PIN_RTC_INT, NRF_GPIO_PIN_PULLDOWN);
    10b0: 2101         	movs	r1, #1
    10b2: 201e         	movs	r0, #30
    10b4: f7ff ff33    	bl	0xf1e <nrf_gpio_cfg_input> @ imm = #-410
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:266
;   nrf_gpio_cfg_default(PIN_VCAP_SENSE);
    10b8: 201d         	movs	r0, #29
    10ba: f7ff ff44    	bl	0xf46 <nrf_gpio_cfg_default> @ imm = #-376
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:269
;   *(volatile uint32_t *)0x4007AC84ul = 0x00000002ul;
    10be: 4b1f         	ldr	r3, [pc, #124]          @ 0x113c <$d+0x4>
    10c0: 2202         	movs	r2, #2
    10c2: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:272
;   riotee_i2c_init();
    10c4: f001 fc8d    	bl	0x29e2 <riotee_i2c_init> @ imm = #6426
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:273
;   riotee_max20361_init();
    10c8: f001 fcf7    	bl	0x2aba <riotee_max20361_init> @ imm = #6638
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:274
;   startup_callback();
    10cc: f7ff f8b4    	bl	0x238 <startup_callback> @ imm = #-3736
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:281
;   src = &__etext;
    10d0: 4b1b         	ldr	r3, [pc, #108]          @ 0x1140 <$d+0x8>
    10d2: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:282
;   dst = &__data_start__;
    10d4: 4b1b         	ldr	r3, [pc, #108]          @ 0x1144 <$d+0xc>
    10d6: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:283
;   while (dst < &__data_end__)
    10d8: e007         	b	0x10ea <c_startup+0xf6> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:284
;     *(dst++) = *(src++);
    10da: 687a         	ldr	r2, [r7, #4]
    10dc: 1d13         	adds	r3, r2, #4
    10de: 607b         	str	r3, [r7, #4]
    10e0: 683b         	ldr	r3, [r7]
    10e2: 1d19         	adds	r1, r3, #4
    10e4: 6039         	str	r1, [r7]
    10e6: 6812         	ldr	r2, [r2]
    10e8: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:283
;   while (dst < &__data_end__)
    10ea: 683b         	ldr	r3, [r7]
    10ec: 4a16         	ldr	r2, [pc, #88]           @ 0x1148 <$d+0x10>
    10ee: 4293         	cmp	r3, r2
    10f0: d3f3         	blo	0x10da <c_startup+0xe6> @ imm = #-26
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:287
;   src = &__bss_start__;
    10f2: 4b16         	ldr	r3, [pc, #88]           @ 0x114c <$d+0x14>
    10f4: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:288
;   while (src < &__bss_end__)
    10f6: e004         	b	0x1102 <c_startup+0x10e> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:289
;     *(src++) = 0;
    10f8: 687b         	ldr	r3, [r7, #4]
    10fa: 1d1a         	adds	r2, r3, #4
    10fc: 607a         	str	r2, [r7, #4]
    10fe: 2200         	movs	r2, #0
    1100: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:288
;   while (src < &__bss_end__)
    1102: 687b         	ldr	r3, [r7, #4]
    1104: 4a12         	ldr	r2, [pc, #72]           @ 0x1150 <$d+0x18>
    1106: 4293         	cmp	r3, r2
    1108: d3f6         	blo	0x10f8 <c_startup+0x104> @ imm = #-20
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:293
;   SCB->CPACR |= (3UL << 20) | (3UL << 22);
    110a: 4b12         	ldr	r3, [pc, #72]           @ 0x1154 <$d+0x1c>
    110c: f8d3 3088    	ldr.w	r3, [r3, #136]
    1110: 4a10         	ldr	r2, [pc, #64]           @ 0x1154 <$d+0x1c>
    1112: f443 0370    	orr	r3, r3, #15728640
    1116: f8c2 3088    	str.w	r3, [r2, #136]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h:277
;   __ASM volatile ("dsb 0xF":::"memory");
    111a: f3bf 8f4f    	dsb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h:278
; }
    111e: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h:266
;   __ASM volatile ("isb 0xF":::"memory");
    1120: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h:267
; }
    1124: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:299
;   __libc_init_array();
    1126: f005 fc4f    	bl	0x69c8 <__libc_init_array> @ imm = #22686
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:300
;   runtime_start();
    112a: f002 fafb    	bl	0x3724 <runtime_start>  @ imm = #9718
; /Users/janstiefel/code/fork/Riotee_SDK/core/startup.c:301
; }
    112e: bf00         	nop
    1130: 3708         	adds	r7, #8
    1132: 46bd         	mov	sp, r7
    1134: bd80         	pop	{r7, pc}
    1136: bf00         	nop

00001138 <$d>:
    1138: 00 e0 01 40  	.word	0x4001e000
    113c: 84 ac 07 40  	.word	0x4007ac84
    1140: e4 84 00 00  	.word	0x000084e4
    1144: 00 00 00 20  	.word	0x20000000
    1148: 10 00 00 20  	.word	0x20000010
    114c: 10 00 00 20  	.word	0x20000010
    1150: 58 09 00 20  	.word	0x20000958
    1154: 00 ed 00 e0  	.word	0xe000ed00

00001158 <nrf_gpio_pin_port_decode>:
; nrf_gpio_pin_port_decode():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:582
; {
    1158: b580         	push	{r7, lr}
    115a: b082         	sub	sp, #8
    115c: af00         	add	r7, sp, #0
    115e: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:585
;     switch (nrf_gpio_pin_port_number_extract(p_pin))
    1160: 6878         	ldr	r0, [r7, #4]
    1162: f000 f80d    	bl	0x1180 <nrf_gpio_pin_port_number_extract> @ imm = #26
    1166: 4603         	mov	r3, r0
    1168: 2b01         	cmp	r3, #1
    116a: d002         	beq	0x1172 <nrf_gpio_pin_port_decode+0x1a> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:591
;         case 0: return NRF_P0;
    116c: f04f 43a0    	mov.w	r3, #1342177280
    1170: e000         	b	0x1174 <nrf_gpio_pin_port_decode+0x1c> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:595
;         case 1: return NRF_P1;
    1172: 4b02         	ldr	r3, [pc, #8]            @ 0x117c <$d>
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:598
; }
    1174: 4618         	mov	r0, r3
    1176: 3708         	adds	r7, #8
    1178: 46bd         	mov	sp, r7
    117a: bd80         	pop	{r7, pc}

0000117c <$d>:
    117c: 00 03 00 50  	.word	0x50000300

00001180 <nrf_gpio_pin_port_number_extract>:
; nrf_gpio_pin_port_number_extract():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1025
; {
    1180: b480         	push	{r7}
    1182: b085         	sub	sp, #20
    1184: af00         	add	r7, sp, #0
    1186: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1026
;     uint32_t pin_number = *p_pin;
    1188: 687b         	ldr	r3, [r7, #4]
    118a: 681b         	ldr	r3, [r3]
    118c: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1027
;     *p_pin = pin_number & 0x1F;
    118e: 68fb         	ldr	r3, [r7, #12]
    1190: f003 021f    	and	r2, r3, #31
    1194: 687b         	ldr	r3, [r7, #4]
    1196: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1029
;     return pin_number >> 5;
    1198: 68fb         	ldr	r3, [r7, #12]
    119a: 095b         	lsrs	r3, r3, #5
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1030
; }
    119c: 4618         	mov	r0, r3
    119e: 3714         	adds	r7, #20
    11a0: 46bd         	mov	sp, r7
    11a2: f85d 7b04    	ldr	r7, [sp], #4
    11a6: 4770         	bx	lr

000011a8 <gpio_set>:
; gpio_set():
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:18
; static int gpio_set(uint32_t pin, gpio_state_t gpio_state) {
    11a8: b580         	push	{r7, lr}
    11aa: b084         	sub	sp, #16
    11ac: af00         	add	r7, sp, #0
    11ae: 6078         	str	r0, [r7, #4]
    11b0: 460b         	mov	r3, r1
    11b2: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:19
;   NRF_GPIO_Type *reg = nrf_gpio_pin_port_decode(&pin);
    11b4: 1d3b         	adds	r3, r7, #4
    11b6: 4618         	mov	r0, r3
    11b8: f7ff ffce    	bl	0x1158 <nrf_gpio_pin_port_decode> @ imm = #-100
    11bc: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:21
;   if (gpio_state == Z) {
    11be: 78fb         	ldrb	r3, [r7, #3]
    11c0: 2b01         	cmp	r3, #1
    11c2: d107         	bne	0x11d4 <gpio_set+0x2c>  @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:22
;     reg->PIN_CNF[pin] = (GPIO_PIN_CNF_INPUT_Disconnect << GPIO_PIN_CNF_INPUT_Pos);
    11c4: 687a         	ldr	r2, [r7, #4]
    11c6: 68fb         	ldr	r3, [r7, #12]
    11c8: f502 72e0    	add.w	r2, r2, #448
    11cc: 2102         	movs	r1, #2
    11ce: f843 1022    	str.w	r1, [r3, r2, lsl #2]
    11d2: e01a         	b	0x120a <gpio_set+0x62>  @ imm = #52
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:24
;     if (gpio_state == LOW)
    11d4: 78fb         	ldrb	r3, [r7, #3]
    11d6: 2b00         	cmp	r3, #0
    11d8: d108         	bne	0x11ec <gpio_set+0x44>  @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:25
;       reg->OUTCLR = (1 << pin);
    11da: 687b         	ldr	r3, [r7, #4]
    11dc: 2201         	movs	r2, #1
    11de: fa02 f303    	lsl.w	r3, r2, r3
    11e2: 461a         	mov	r2, r3
    11e4: 68fb         	ldr	r3, [r7, #12]
    11e6: f8c3 250c    	str.w	r2, [r3, #1292]
    11ea: e007         	b	0x11fc <gpio_set+0x54>  @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:27
;       reg->OUTSET = (1 << pin);
    11ec: 687b         	ldr	r3, [r7, #4]
    11ee: 2201         	movs	r2, #1
    11f0: fa02 f303    	lsl.w	r3, r2, r3
    11f4: 461a         	mov	r2, r3
    11f6: 68fb         	ldr	r3, [r7, #12]
    11f8: f8c3 2508    	str.w	r2, [r3, #1288]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:29
;     reg->PIN_CNF[pin] = (GPIO_PIN_CNF_DIR_Output << GPIO_PIN_CNF_DIR_Pos);
    11fc: 687a         	ldr	r2, [r7, #4]
    11fe: 68fb         	ldr	r3, [r7, #12]
    1200: f502 72e0    	add.w	r2, r2, #448
    1204: 2101         	movs	r1, #1
    1206: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:31
;   return 0;
    120a: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:32
; }
    120c: 4618         	mov	r0, r3
    120e: 3710         	adds	r7, #16
    1210: 46bd         	mov	sp, r7
    1212: bd80         	pop	{r7, pc}

00001214 <riotee_thresholds_low_set>:
; riotee_thresholds_low_set():
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:34
; void riotee_thresholds_low_set(thr_low_t thr) {
    1214: b580         	push	{r7, lr}
    1216: b084         	sub	sp, #16
    1218: af00         	add	r7, sp, #0
    121a: 4603         	mov	r3, r0
    121c: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:36
;   switch (thr) {
    121e: 79fb         	ldrb	r3, [r7, #7]
    1220: 2b08         	cmp	r3, #8
    1222: d834         	bhi	0x128e <$t+0x3e>        @ imm = #104
    1224: a201         	adr	r2, #4 <riotee_thresholds_low_set+0x15>
    1226: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]
    122a: bf00         	nop

0000122c <$d>:
    122c: 51 12 00 00  	.word	0x00001251
    1230: 8f 12 00 00  	.word	0x0000128f
    1234: 5b 12 00 00  	.word	0x0000125b
    1238: 8f 12 00 00  	.word	0x0000128f
    123c: 8f 12 00 00  	.word	0x0000128f
    1240: 8f 12 00 00  	.word	0x0000128f
    1244: 65 12 00 00  	.word	0x00001265
    1248: 8f 12 00 00  	.word	0x0000128f
    124c: 6f 12 00 00  	.word	0x0000126f

00001250 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:38
;       gpio_states[0] = LOW;
    1250: 2300         	movs	r3, #0
    1252: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:39
;       gpio_states[1] = LOW;
    1254: 2300         	movs	r3, #0
    1256: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:40
;       break;
    1258: e00e         	b	0x1278 <$t+0x28>        @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:42
;       gpio_states[0] = HIGH;
    125a: 2302         	movs	r3, #2
    125c: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:43
;       gpio_states[1] = LOW;
    125e: 2300         	movs	r3, #0
    1260: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:44
;       break;
    1262: e009         	b	0x1278 <$t+0x28>        @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:46
;       gpio_states[0] = LOW;
    1264: 2300         	movs	r3, #0
    1266: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:47
;       gpio_states[1] = HIGH;
    1268: 2302         	movs	r3, #2
    126a: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:48
;       break;
    126c: e004         	b	0x1278 <$t+0x28>        @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:50
;       gpio_states[0] = HIGH;
    126e: 2302         	movs	r3, #2
    1270: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:51
;       gpio_states[1] = HIGH;
    1272: 2302         	movs	r3, #2
    1274: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:52
;       break;
    1276: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:56
;   gpio_set(PIN_THRCTL_L0, gpio_states[0]);
    1278: 7b3b         	ldrb	r3, [r7, #12]
    127a: 4619         	mov	r1, r3
    127c: 2027         	movs	r0, #39
    127e: f7ff ff93    	bl	0x11a8 <gpio_set>       @ imm = #-218
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:57
;   gpio_set(PIN_THRCTL_L1, gpio_states[1]);
    1282: 7b7b         	ldrb	r3, [r7, #13]
    1284: 4619         	mov	r1, r3
    1286: 2024         	movs	r0, #36
    1288: f7ff ff8e    	bl	0x11a8 <gpio_set>       @ imm = #-228
    128c: e000         	b	0x1290 <$t+0x40>        @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:54
;       return;
    128e: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:58
; }
    1290: 3710         	adds	r7, #16
    1292: 46bd         	mov	sp, r7
    1294: bd80         	pop	{r7, pc}
    1296: bf00         	nop

00001298 <riotee_thresholds_high_set>:
; riotee_thresholds_high_set():
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:59
; void riotee_thresholds_high_set(thr_high_t thr) {
    1298: b580         	push	{r7, lr}
    129a: b084         	sub	sp, #16
    129c: af00         	add	r7, sp, #0
    129e: 4603         	mov	r3, r0
    12a0: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:61
;   switch (thr) {
    12a2: 79fb         	ldrb	r3, [r7, #7]
    12a4: 2b08         	cmp	r3, #8
    12a6: d852         	bhi	0x134e <$t+0x7a>        @ imm = #164
    12a8: a201         	adr	r2, #4 <riotee_thresholds_high_set+0x15>
    12aa: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]
    12ae: bf00         	nop

000012b0 <$d>:
    12b0: d5 12 00 00  	.word	0x000012d5
    12b4: df 12 00 00  	.word	0x000012df
    12b8: e9 12 00 00  	.word	0x000012e9
    12bc: f3 12 00 00  	.word	0x000012f3
    12c0: fd 12 00 00  	.word	0x000012fd
    12c4: 07 13 00 00  	.word	0x00001307
    12c8: 11 13 00 00  	.word	0x00001311
    12cc: 1b 13 00 00  	.word	0x0000131b
    12d0: 25 13 00 00  	.word	0x00001325

000012d4 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:63
;       gpio_states[0] = LOW;
    12d4: 2300         	movs	r3, #0
    12d6: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:64
;       gpio_states[1] = LOW;
    12d8: 2300         	movs	r3, #0
    12da: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:65
;       break;
    12dc: e027         	b	0x132e <$t+0x5a>        @ imm = #78
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:67
;       gpio_states[0] = Z;
    12de: 2301         	movs	r3, #1
    12e0: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:68
;       gpio_states[1] = LOW;
    12e2: 2300         	movs	r3, #0
    12e4: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:69
;       break;
    12e6: e022         	b	0x132e <$t+0x5a>        @ imm = #68
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:71
;       gpio_states[0] = HIGH;
    12e8: 2302         	movs	r3, #2
    12ea: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:72
;       gpio_states[1] = LOW;
    12ec: 2300         	movs	r3, #0
    12ee: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:73
;       break;
    12f0: e01d         	b	0x132e <$t+0x5a>        @ imm = #58
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:75
;       gpio_states[0] = LOW;
    12f2: 2300         	movs	r3, #0
    12f4: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:76
;       gpio_states[1] = Z;
    12f6: 2301         	movs	r3, #1
    12f8: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:77
;       break;
    12fa: e018         	b	0x132e <$t+0x5a>        @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:79
;       gpio_states[0] = Z;
    12fc: 2301         	movs	r3, #1
    12fe: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:80
;       gpio_states[1] = Z;
    1300: 2301         	movs	r3, #1
    1302: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:81
;       break;
    1304: e013         	b	0x132e <$t+0x5a>        @ imm = #38
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:83
;       gpio_states[0] = HIGH;
    1306: 2302         	movs	r3, #2
    1308: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:84
;       gpio_states[1] = Z;
    130a: 2301         	movs	r3, #1
    130c: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:85
;       break;
    130e: e00e         	b	0x132e <$t+0x5a>        @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:87
;       gpio_states[0] = LOW;
    1310: 2300         	movs	r3, #0
    1312: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:88
;       gpio_states[1] = HIGH;
    1314: 2302         	movs	r3, #2
    1316: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:89
;       break;
    1318: e009         	b	0x132e <$t+0x5a>        @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:91
;       gpio_states[0] = Z;
    131a: 2301         	movs	r3, #1
    131c: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:92
;       gpio_states[1] = HIGH;
    131e: 2302         	movs	r3, #2
    1320: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:93
;       break;
    1322: e004         	b	0x132e <$t+0x5a>        @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:95
;       gpio_states[0] = HIGH;
    1324: 2302         	movs	r3, #2
    1326: 733b         	strb	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:96
;       gpio_states[1] = HIGH;
    1328: 2302         	movs	r3, #2
    132a: 737b         	strb	r3, [r7, #13]
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:97
;       break;
    132c: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:101
;   gpio_set(PIN_THRCTL_H0, gpio_states[0]);
    132e: 7b3b         	ldrb	r3, [r7, #12]
    1330: 4619         	mov	r1, r3
    1332: 2009         	movs	r0, #9
    1334: f7ff ff38    	bl	0x11a8 <gpio_set>       @ imm = #-400
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:103
;   gpio_set(PIN_NFC2, gpio_states[0]);
    1338: 7b3b         	ldrb	r3, [r7, #12]
    133a: 4619         	mov	r1, r3
    133c: 200a         	movs	r0, #10
    133e: f7ff ff33    	bl	0x11a8 <gpio_set>       @ imm = #-410
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:105
;   gpio_set(PIN_THRCTL_H1, gpio_states[1]);
    1342: 7b7b         	ldrb	r3, [r7, #13]
    1344: 4619         	mov	r1, r3
    1346: 2022         	movs	r0, #34
    1348: f7ff ff2e    	bl	0x11a8 <gpio_set>       @ imm = #-420
    134c: e000         	b	0x1350 <$t+0x7c>        @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:99
;       return;
    134e: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/thresholds.c:106
; }
    1350: 3710         	adds	r7, #16
    1352: 46bd         	mov	sp, r7
    1354: bd80         	pop	{r7, pc}
    1356: bf00         	nop

00001358 <_out_null>:
; _out_null():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:110
; static inline void _out_null(char character, void* buffer, size_t idx, size_t maxlen) {
    1358: b480         	push	{r7}
    135a: b085         	sub	sp, #20
    135c: af00         	add	r7, sp, #0
    135e: 60b9         	str	r1, [r7, #8]
    1360: 607a         	str	r2, [r7, #4]
    1362: 603b         	str	r3, [r7]
    1364: 4603         	mov	r3, r0
    1366: 73fb         	strb	r3, [r7, #15]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:115
; }
    1368: bf00         	nop
    136a: 3714         	adds	r7, #20
    136c: 46bd         	mov	sp, r7
    136e: f85d 7b04    	ldr	r7, [sp], #4
    1372: 4770         	bx	lr

00001374 <_out_char>:
; _out_char():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:118
; static inline void _out_char(char character, void* buffer, size_t idx, size_t maxlen) {
    1374: b580         	push	{r7, lr}
    1376: b084         	sub	sp, #16
    1378: af00         	add	r7, sp, #0
    137a: 60b9         	str	r1, [r7, #8]
    137c: 607a         	str	r2, [r7, #4]
    137e: 603b         	str	r3, [r7]
    1380: 4603         	mov	r3, r0
    1382: 73fb         	strb	r3, [r7, #15]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:122
;   if (character) {
    1384: 7bfb         	ldrb	r3, [r7, #15]
    1386: 2b00         	cmp	r3, #0
    1388: d003         	beq	0x1392 <_out_char+0x1e> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:123
;     _putchar(character);
    138a: 7bfb         	ldrb	r3, [r7, #15]
    138c: 4618         	mov	r0, r3
    138e: f001 fe79    	bl	0x3084 <_putchar>       @ imm = #7410
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:125
; }
    1392: bf00         	nop
    1394: 3710         	adds	r7, #16
    1396: 46bd         	mov	sp, r7
    1398: bd80         	pop	{r7, pc}

0000139a <_strnlen_s>:
; _strnlen_s():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:139
; static inline unsigned int _strnlen_s(const char* str, size_t maxsize) {
    139a: b480         	push	{r7}
    139c: b085         	sub	sp, #20
    139e: af00         	add	r7, sp, #0
    13a0: 6078         	str	r0, [r7, #4]
    13a2: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:141
;   for (s = str; *s && maxsize--; ++s)
    13a4: 687b         	ldr	r3, [r7, #4]
    13a6: 60fb         	str	r3, [r7, #12]
    13a8: e002         	b	0x13b0 <_strnlen_s+0x16> @ imm = #4
    13aa: 68fb         	ldr	r3, [r7, #12]
    13ac: 3301         	adds	r3, #1
    13ae: 60fb         	str	r3, [r7, #12]
    13b0: 68fb         	ldr	r3, [r7, #12]
    13b2: 781b         	ldrb	r3, [r3]
    13b4: 2b00         	cmp	r3, #0
    13b6: d004         	beq	0x13c2 <_strnlen_s+0x28> @ imm = #8
    13b8: 683b         	ldr	r3, [r7]
    13ba: 1e5a         	subs	r2, r3, #1
    13bc: 603a         	str	r2, [r7]
    13be: 2b00         	cmp	r3, #0
    13c0: d1f3         	bne	0x13aa <_strnlen_s+0x10> @ imm = #-26
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:143
;   return (unsigned int)(s - str);
    13c2: 68fa         	ldr	r2, [r7, #12]
    13c4: 687b         	ldr	r3, [r7, #4]
    13c6: 1ad3         	subs	r3, r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:144
; }
    13c8: 4618         	mov	r0, r3
    13ca: 3714         	adds	r7, #20
    13cc: 46bd         	mov	sp, r7
    13ce: f85d 7b04    	ldr	r7, [sp], #4
    13d2: 4770         	bx	lr

000013d4 <_is_digit>:
; _is_digit():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:148
; static inline bool _is_digit(char ch) {
    13d4: b480         	push	{r7}
    13d6: b083         	sub	sp, #12
    13d8: af00         	add	r7, sp, #0
    13da: 4603         	mov	r3, r0
    13dc: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:149
;   return (ch >= '0') && (ch <= '9');
    13de: 79fb         	ldrb	r3, [r7, #7]
    13e0: 2b2f         	cmp	r3, #47
    13e2: d904         	bls	0x13ee <_is_digit+0x1a> @ imm = #8
    13e4: 79fb         	ldrb	r3, [r7, #7]
    13e6: 2b39         	cmp	r3, #57
    13e8: d801         	bhi	0x13ee <_is_digit+0x1a> @ imm = #2
    13ea: 2301         	movs	r3, #1
    13ec: e000         	b	0x13f0 <_is_digit+0x1c> @ imm = #0
    13ee: 2300         	movs	r3, #0
    13f0: f003 0301    	and	r3, r3, #1
    13f4: b2db         	uxtb	r3, r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:150
; }
    13f6: 4618         	mov	r0, r3
    13f8: 370c         	adds	r7, #12
    13fa: 46bd         	mov	sp, r7
    13fc: f85d 7b04    	ldr	r7, [sp], #4
    1400: 4770         	bx	lr

00001402 <_atoi>:
; _atoi():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:153
; static unsigned int _atoi(const char** str) {
    1402: b580         	push	{r7, lr}
    1404: b084         	sub	sp, #16
    1406: af00         	add	r7, sp, #0
    1408: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:154
;   unsigned int i = 0U;
    140a: 2300         	movs	r3, #0
    140c: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:155
;   while (_is_digit(**str)) {
    140e: e00e         	b	0x142e <_atoi+0x2c>     @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:156
;     i = i * 10U + (unsigned int)(*((*str)++) - '0');
    1410: 68fa         	ldr	r2, [r7, #12]
    1412: 4613         	mov	r3, r2
    1414: 009b         	lsls	r3, r3, #2
    1416: 4413         	add	r3, r2
    1418: 005b         	lsls	r3, r3, #1
    141a: 4618         	mov	r0, r3
    141c: 687b         	ldr	r3, [r7, #4]
    141e: 681b         	ldr	r3, [r3]
    1420: 1c59         	adds	r1, r3, #1
    1422: 687a         	ldr	r2, [r7, #4]
    1424: 6011         	str	r1, [r2]
    1426: 781b         	ldrb	r3, [r3]
    1428: 4403         	add	r3, r0
    142a: 3b30         	subs	r3, #48
    142c: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:155
;   while (_is_digit(**str)) {
    142e: 687b         	ldr	r3, [r7, #4]
    1430: 681b         	ldr	r3, [r3]
    1432: 781b         	ldrb	r3, [r3]
    1434: 4618         	mov	r0, r3
    1436: f7ff ffcd    	bl	0x13d4 <_is_digit>      @ imm = #-102
    143a: 4603         	mov	r3, r0
    143c: 2b00         	cmp	r3, #0
    143e: d1e7         	bne	0x1410 <_atoi+0xe>      @ imm = #-50
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:158
;   return i;
    1440: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:159
; }
    1442: 4618         	mov	r0, r3
    1444: 3710         	adds	r7, #16
    1446: 46bd         	mov	sp, r7
    1448: bd80         	pop	{r7, pc}

0000144a <_ntoa_format>:
; _ntoa_format():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:164
;                            unsigned int flags) {
    144a: b590         	push	{r4, r7, lr}
    144c: b089         	sub	sp, #36
    144e: af00         	add	r7, sp, #0
    1450: 60f8         	str	r0, [r7, #12]
    1452: 60b9         	str	r1, [r7, #8]
    1454: 607a         	str	r2, [r7, #4]
    1456: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:165
;   const size_t start_idx = idx;
    1458: 687b         	ldr	r3, [r7, #4]
    145a: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:168
;   if (!(flags & FLAGS_LEFT)) {
    145c: 6cbb         	ldr	r3, [r7, #72]
    145e: f003 0302    	and	r3, r3, #2
    1462: 2b00         	cmp	r3, #0
    1464: d136         	bne	0x14d4 <_ntoa_format+0x8a> @ imm = #108
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:169
;     if (width && (flags & FLAGS_ZEROPAD) && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
    1466: 6c7b         	ldr	r3, [r7, #68]
    1468: 2b00         	cmp	r3, #0
    146a: d018         	beq	0x149e <_ntoa_format+0x54> @ imm = #48
    146c: 6cbb         	ldr	r3, [r7, #72]
    146e: f003 0301    	and	r3, r3, #1
    1472: 2b00         	cmp	r3, #0
    1474: d013         	beq	0x149e <_ntoa_format+0x54> @ imm = #38
    1476: f897 3038    	ldrb.w	r3, [r7, #56]
    147a: 2b00         	cmp	r3, #0
    147c: d104         	bne	0x1488 <_ntoa_format+0x3e> @ imm = #8
    147e: 6cbb         	ldr	r3, [r7, #72]
    1480: f003 030c    	and	r3, r3, #12
    1484: 2b00         	cmp	r3, #0
    1486: d00a         	beq	0x149e <_ntoa_format+0x54> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:170
;       width--;
    1488: 6c7b         	ldr	r3, [r7, #68]
    148a: 3b01         	subs	r3, #1
    148c: 647b         	str	r3, [r7, #68]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:172
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    148e: e006         	b	0x149e <_ntoa_format+0x54> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:173
;       buf[len++] = '0';
    1490: 6b7b         	ldr	r3, [r7, #52]
    1492: 1c5a         	adds	r2, r3, #1
    1494: 637a         	str	r2, [r7, #52]
    1496: 6b3a         	ldr	r2, [r7, #48]
    1498: 4413         	add	r3, r2
    149a: 2230         	movs	r2, #48
    149c: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:172
;     while ((len < prec) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    149e: 6b7a         	ldr	r2, [r7, #52]
    14a0: 6c3b         	ldr	r3, [r7, #64]
    14a2: 429a         	cmp	r2, r3
    14a4: d20a         	bhs	0x14bc <_ntoa_format+0x72> @ imm = #20
    14a6: 6b7b         	ldr	r3, [r7, #52]
    14a8: 2b1f         	cmp	r3, #31
    14aa: d9f1         	bls	0x1490 <_ntoa_format+0x46> @ imm = #-30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:175
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    14ac: e006         	b	0x14bc <_ntoa_format+0x72> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:176
;       buf[len++] = '0';
    14ae: 6b7b         	ldr	r3, [r7, #52]
    14b0: 1c5a         	adds	r2, r3, #1
    14b2: 637a         	str	r2, [r7, #52]
    14b4: 6b3a         	ldr	r2, [r7, #48]
    14b6: 4413         	add	r3, r2
    14b8: 2230         	movs	r2, #48
    14ba: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:175
;     while ((flags & FLAGS_ZEROPAD) && (len < width) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    14bc: 6cbb         	ldr	r3, [r7, #72]
    14be: f003 0301    	and	r3, r3, #1
    14c2: 2b00         	cmp	r3, #0
    14c4: d006         	beq	0x14d4 <_ntoa_format+0x8a> @ imm = #12
    14c6: 6b7a         	ldr	r2, [r7, #52]
    14c8: 6c7b         	ldr	r3, [r7, #68]
    14ca: 429a         	cmp	r2, r3
    14cc: d202         	bhs	0x14d4 <_ntoa_format+0x8a> @ imm = #4
    14ce: 6b7b         	ldr	r3, [r7, #52]
    14d0: 2b1f         	cmp	r3, #31
    14d2: d9ec         	bls	0x14ae <_ntoa_format+0x64> @ imm = #-40
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:181
;   if (flags & FLAGS_HASH) {
    14d4: 6cbb         	ldr	r3, [r7, #72]
    14d6: f003 0310    	and	r3, r3, #16
    14da: 2b00         	cmp	r3, #0
    14dc: d058         	beq	0x1590 <_ntoa_format+0x146> @ imm = #176
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:182
;     if (!(flags & FLAGS_PRECISION) && len && ((len == prec) || (len == width))) {
    14de: 6cbb         	ldr	r3, [r7, #72]
    14e0: f403 6380    	and	r3, r3, #1024
    14e4: 2b00         	cmp	r3, #0
    14e6: d116         	bne	0x1516 <_ntoa_format+0xcc> @ imm = #44
    14e8: 6b7b         	ldr	r3, [r7, #52]
    14ea: 2b00         	cmp	r3, #0
    14ec: d013         	beq	0x1516 <_ntoa_format+0xcc> @ imm = #38
    14ee: 6b7a         	ldr	r2, [r7, #52]
    14f0: 6c3b         	ldr	r3, [r7, #64]
    14f2: 429a         	cmp	r2, r3
    14f4: d003         	beq	0x14fe <_ntoa_format+0xb4> @ imm = #6
    14f6: 6b7a         	ldr	r2, [r7, #52]
    14f8: 6c7b         	ldr	r3, [r7, #68]
    14fa: 429a         	cmp	r2, r3
    14fc: d10b         	bne	0x1516 <_ntoa_format+0xcc> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:183
;       len--;
    14fe: 6b7b         	ldr	r3, [r7, #52]
    1500: 3b01         	subs	r3, #1
    1502: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:184
;       if (len && (base == 16U)) {
    1504: 6b7b         	ldr	r3, [r7, #52]
    1506: 2b00         	cmp	r3, #0
    1508: d005         	beq	0x1516 <_ntoa_format+0xcc> @ imm = #10
    150a: 6bfb         	ldr	r3, [r7, #60]
    150c: 2b10         	cmp	r3, #16
    150e: d102         	bne	0x1516 <_ntoa_format+0xcc> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:185
;         len--;
    1510: 6b7b         	ldr	r3, [r7, #52]
    1512: 3b01         	subs	r3, #1
    1514: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:188
;     if ((base == 16U) && !(flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    1516: 6bfb         	ldr	r3, [r7, #60]
    1518: 2b10         	cmp	r3, #16
    151a: d10f         	bne	0x153c <_ntoa_format+0xf2> @ imm = #30
    151c: 6cbb         	ldr	r3, [r7, #72]
    151e: f003 0320    	and	r3, r3, #32
    1522: 2b00         	cmp	r3, #0
    1524: d10a         	bne	0x153c <_ntoa_format+0xf2> @ imm = #20
    1526: 6b7b         	ldr	r3, [r7, #52]
    1528: 2b1f         	cmp	r3, #31
    152a: d807         	bhi	0x153c <_ntoa_format+0xf2> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:189
;       buf[len++] = 'x';
    152c: 6b7b         	ldr	r3, [r7, #52]
    152e: 1c5a         	adds	r2, r3, #1
    1530: 637a         	str	r2, [r7, #52]
    1532: 6b3a         	ldr	r2, [r7, #48]
    1534: 4413         	add	r3, r2
    1536: 2278         	movs	r2, #120
    1538: 701a         	strb	r2, [r3]
    153a: e01f         	b	0x157c <_ntoa_format+0x132> @ imm = #62
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:190
;     } else if ((base == 16U) && (flags & FLAGS_UPPERCASE) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    153c: 6bfb         	ldr	r3, [r7, #60]
    153e: 2b10         	cmp	r3, #16
    1540: d10f         	bne	0x1562 <_ntoa_format+0x118> @ imm = #30
    1542: 6cbb         	ldr	r3, [r7, #72]
    1544: f003 0320    	and	r3, r3, #32
    1548: 2b00         	cmp	r3, #0
    154a: d00a         	beq	0x1562 <_ntoa_format+0x118> @ imm = #20
    154c: 6b7b         	ldr	r3, [r7, #52]
    154e: 2b1f         	cmp	r3, #31
    1550: d807         	bhi	0x1562 <_ntoa_format+0x118> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:191
;       buf[len++] = 'X';
    1552: 6b7b         	ldr	r3, [r7, #52]
    1554: 1c5a         	adds	r2, r3, #1
    1556: 637a         	str	r2, [r7, #52]
    1558: 6b3a         	ldr	r2, [r7, #48]
    155a: 4413         	add	r3, r2
    155c: 2258         	movs	r2, #88
    155e: 701a         	strb	r2, [r3]
    1560: e00c         	b	0x157c <_ntoa_format+0x132> @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:192
;     } else if ((base == 2U) && (len < PRINTF_NTOA_BUFFER_SIZE)) {
    1562: 6bfb         	ldr	r3, [r7, #60]
    1564: 2b02         	cmp	r3, #2
    1566: d109         	bne	0x157c <_ntoa_format+0x132> @ imm = #18
    1568: 6b7b         	ldr	r3, [r7, #52]
    156a: 2b1f         	cmp	r3, #31
    156c: d806         	bhi	0x157c <_ntoa_format+0x132> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:193
;       buf[len++] = 'b';
    156e: 6b7b         	ldr	r3, [r7, #52]
    1570: 1c5a         	adds	r2, r3, #1
    1572: 637a         	str	r2, [r7, #52]
    1574: 6b3a         	ldr	r2, [r7, #48]
    1576: 4413         	add	r3, r2
    1578: 2262         	movs	r2, #98
    157a: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:195
;     if (len < PRINTF_NTOA_BUFFER_SIZE) {
    157c: 6b7b         	ldr	r3, [r7, #52]
    157e: 2b1f         	cmp	r3, #31
    1580: d806         	bhi	0x1590 <_ntoa_format+0x146> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:196
;       buf[len++] = '0';
    1582: 6b7b         	ldr	r3, [r7, #52]
    1584: 1c5a         	adds	r2, r3, #1
    1586: 637a         	str	r2, [r7, #52]
    1588: 6b3a         	ldr	r2, [r7, #48]
    158a: 4413         	add	r3, r2
    158c: 2230         	movs	r2, #48
    158e: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:200
;   if (len < PRINTF_NTOA_BUFFER_SIZE) {
    1590: 6b7b         	ldr	r3, [r7, #52]
    1592: 2b1f         	cmp	r3, #31
    1594: d824         	bhi	0x15e0 <_ntoa_format+0x196> @ imm = #72
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:201
;     if (negative) {
    1596: f897 3038    	ldrb.w	r3, [r7, #56]
    159a: 2b00         	cmp	r3, #0
    159c: d007         	beq	0x15ae <_ntoa_format+0x164> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:202
;       buf[len++] = '-';
    159e: 6b7b         	ldr	r3, [r7, #52]
    15a0: 1c5a         	adds	r2, r3, #1
    15a2: 637a         	str	r2, [r7, #52]
    15a4: 6b3a         	ldr	r2, [r7, #48]
    15a6: 4413         	add	r3, r2
    15a8: 222d         	movs	r2, #45
    15aa: 701a         	strb	r2, [r3]
    15ac: e018         	b	0x15e0 <_ntoa_format+0x196> @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:203
;     } else if (flags & FLAGS_PLUS) {
    15ae: 6cbb         	ldr	r3, [r7, #72]
    15b0: f003 0304    	and	r3, r3, #4
    15b4: 2b00         	cmp	r3, #0
    15b6: d007         	beq	0x15c8 <_ntoa_format+0x17e> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:204
;       buf[len++] = '+';  // ignore the space if the '+' exists
    15b8: 6b7b         	ldr	r3, [r7, #52]
    15ba: 1c5a         	adds	r2, r3, #1
    15bc: 637a         	str	r2, [r7, #52]
    15be: 6b3a         	ldr	r2, [r7, #48]
    15c0: 4413         	add	r3, r2
    15c2: 222b         	movs	r2, #43
    15c4: 701a         	strb	r2, [r3]
    15c6: e00b         	b	0x15e0 <_ntoa_format+0x196> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:205
;     } else if (flags & FLAGS_SPACE) {
    15c8: 6cbb         	ldr	r3, [r7, #72]
    15ca: f003 0308    	and	r3, r3, #8
    15ce: 2b00         	cmp	r3, #0
    15d0: d006         	beq	0x15e0 <_ntoa_format+0x196> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:206
;       buf[len++] = ' ';
    15d2: 6b7b         	ldr	r3, [r7, #52]
    15d4: 1c5a         	adds	r2, r3, #1
    15d6: 637a         	str	r2, [r7, #52]
    15d8: 6b3a         	ldr	r2, [r7, #48]
    15da: 4413         	add	r3, r2
    15dc: 2220         	movs	r2, #32
    15de: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:211
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
    15e0: 6cbb         	ldr	r3, [r7, #72]
    15e2: f003 0302    	and	r3, r3, #2
    15e6: 2b00         	cmp	r3, #0
    15e8: d116         	bne	0x1618 <_ntoa_format+0x1ce> @ imm = #44
    15ea: 6cbb         	ldr	r3, [r7, #72]
    15ec: f003 0301    	and	r3, r3, #1
    15f0: 2b00         	cmp	r3, #0
    15f2: d111         	bne	0x1618 <_ntoa_format+0x1ce> @ imm = #34
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:212
;     for (size_t i = len; i < width; i++) {
    15f4: 6b7b         	ldr	r3, [r7, #52]
    15f6: 61fb         	str	r3, [r7, #28]
    15f8: e00a         	b	0x1610 <_ntoa_format+0x1c6> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:213
;       out(' ', buffer, idx++, maxlen);
    15fa: 687a         	ldr	r2, [r7, #4]
    15fc: 1c53         	adds	r3, r2, #1
    15fe: 607b         	str	r3, [r7, #4]
    1600: 68fc         	ldr	r4, [r7, #12]
    1602: 683b         	ldr	r3, [r7]
    1604: 68b9         	ldr	r1, [r7, #8]
    1606: 2020         	movs	r0, #32
    1608: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:212
;     for (size_t i = len; i < width; i++) {
    160a: 69fb         	ldr	r3, [r7, #28]
    160c: 3301         	adds	r3, #1
    160e: 61fb         	str	r3, [r7, #28]
    1610: 69fa         	ldr	r2, [r7, #28]
    1612: 6c7b         	ldr	r3, [r7, #68]
    1614: 429a         	cmp	r2, r3
    1616: d3f0         	blo	0x15fa <_ntoa_format+0x1b0> @ imm = #-32
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:218
;   for (size_t i = 0U; i < len; i++) {
    1618: 2300         	movs	r3, #0
    161a: 61bb         	str	r3, [r7, #24]
    161c: e010         	b	0x1640 <_ntoa_format+0x1f6> @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:219
;     out(buf[len - i - 1U], buffer, idx++, maxlen);
    161e: 6b7a         	ldr	r2, [r7, #52]
    1620: 69bb         	ldr	r3, [r7, #24]
    1622: 1ad3         	subs	r3, r2, r3
    1624: 3b01         	subs	r3, #1
    1626: 6b3a         	ldr	r2, [r7, #48]
    1628: 4413         	add	r3, r2
    162a: 7818         	ldrb	r0, [r3]
    162c: 687a         	ldr	r2, [r7, #4]
    162e: 1c53         	adds	r3, r2, #1
    1630: 607b         	str	r3, [r7, #4]
    1632: 68fc         	ldr	r4, [r7, #12]
    1634: 683b         	ldr	r3, [r7]
    1636: 68b9         	ldr	r1, [r7, #8]
    1638: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:218
;   for (size_t i = 0U; i < len; i++) {
    163a: 69bb         	ldr	r3, [r7, #24]
    163c: 3301         	adds	r3, #1
    163e: 61bb         	str	r3, [r7, #24]
    1640: 69ba         	ldr	r2, [r7, #24]
    1642: 6b7b         	ldr	r3, [r7, #52]
    1644: 429a         	cmp	r2, r3
    1646: d3ea         	blo	0x161e <_ntoa_format+0x1d4> @ imm = #-44
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:223
;   if (flags & FLAGS_LEFT) {
    1648: 6cbb         	ldr	r3, [r7, #72]
    164a: f003 0302    	and	r3, r3, #2
    164e: 2b00         	cmp	r3, #0
    1650: d00e         	beq	0x1670 <_ntoa_format+0x226> @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:224
;     while (idx - start_idx < width) {
    1652: e007         	b	0x1664 <_ntoa_format+0x21a> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:225
;       out(' ', buffer, idx++, maxlen);
    1654: 687a         	ldr	r2, [r7, #4]
    1656: 1c53         	adds	r3, r2, #1
    1658: 607b         	str	r3, [r7, #4]
    165a: 68fc         	ldr	r4, [r7, #12]
    165c: 683b         	ldr	r3, [r7]
    165e: 68b9         	ldr	r1, [r7, #8]
    1660: 2020         	movs	r0, #32
    1662: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:224
;     while (idx - start_idx < width) {
    1664: 687a         	ldr	r2, [r7, #4]
    1666: 697b         	ldr	r3, [r7, #20]
    1668: 1ad3         	subs	r3, r2, r3
    166a: 6c7a         	ldr	r2, [r7, #68]
    166c: 429a         	cmp	r2, r3
    166e: d8f1         	bhi	0x1654 <_ntoa_format+0x20a> @ imm = #-30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:229
;   return idx;
    1670: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:230
; }
    1672: 4618         	mov	r0, r3
    1674: 3724         	adds	r7, #36
    1676: 46bd         	mov	sp, r7
    1678: bd90         	pop	{r4, r7, pc}

0000167a <_ntoa_long>:
; _ntoa_long():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:234
;                          unsigned long base, unsigned int prec, unsigned int width, unsigned int flags) {
    167a: b580         	push	{r7, lr}
    167c: b096         	sub	sp, #88
    167e: af08         	add	r7, sp, #32
    1680: 60f8         	str	r0, [r7, #12]
    1682: 60b9         	str	r1, [r7, #8]
    1684: 607a         	str	r2, [r7, #4]
    1686: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:236
;   size_t len = 0U;
    1688: 2300         	movs	r3, #0
    168a: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:239
;   if (!value) {
    168c: 6c3b         	ldr	r3, [r7, #64]
    168e: 2b00         	cmp	r3, #0
    1690: d103         	bne	0x169a <_ntoa_long+0x20> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:240
;     flags &= ~FLAGS_HASH;
    1692: 6d7b         	ldr	r3, [r7, #84]
    1694: f023 0310    	bic	r3, r3, #16
    1698: 657b         	str	r3, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:244
;   if (!(flags & FLAGS_PRECISION) || value) {
    169a: 6d7b         	ldr	r3, [r7, #84]
    169c: f403 6380    	and	r3, r3, #1024
    16a0: 2b00         	cmp	r3, #0
    16a2: d002         	beq	0x16aa <_ntoa_long+0x30> @ imm = #4
    16a4: 6c3b         	ldr	r3, [r7, #64]
    16a6: 2b00         	cmp	r3, #0
    16a8: d032         	beq	0x1710 <_ntoa_long+0x96> @ imm = #100
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:246
;       const char digit = (char)(value % base);
    16aa: 6c3b         	ldr	r3, [r7, #64]
    16ac: 6cba         	ldr	r2, [r7, #72]
    16ae: fbb3 f2f2    	udiv	r2, r3, r2
    16b2: 6cb9         	ldr	r1, [r7, #72]
    16b4: fb01 f202    	mul	r2, r1, r2
    16b8: 1a9b         	subs	r3, r3, r2
    16ba: f887 3033    	strb.w	r3, [r7, #51]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:247
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    16be: f897 3033    	ldrb.w	r3, [r7, #51]
    16c2: 2b09         	cmp	r3, #9
    16c4: d804         	bhi	0x16d0 <_ntoa_long+0x56> @ imm = #8
    16c6: f897 3033    	ldrb.w	r3, [r7, #51]
    16ca: 3330         	adds	r3, #48
    16cc: b2da         	uxtb	r2, r3
    16ce: e00d         	b	0x16ec <_ntoa_long+0x72> @ imm = #26
    16d0: 6d7b         	ldr	r3, [r7, #84]
    16d2: f003 0320    	and	r3, r3, #32
    16d6: 2b00         	cmp	r3, #0
    16d8: d001         	beq	0x16de <_ntoa_long+0x64> @ imm = #2
    16da: 2241         	movs	r2, #65
    16dc: e000         	b	0x16e0 <_ntoa_long+0x66> @ imm = #0
    16de: 2261         	movs	r2, #97
    16e0: f897 3033    	ldrb.w	r3, [r7, #51]
    16e4: 4413         	add	r3, r2
    16e6: b2db         	uxtb	r3, r3
    16e8: 3b0a         	subs	r3, #10
    16ea: b2da         	uxtb	r2, r3
    16ec: 6b7b         	ldr	r3, [r7, #52]
    16ee: 1c59         	adds	r1, r3, #1
    16f0: 6379         	str	r1, [r7, #52]
    16f2: 3338         	adds	r3, #56
    16f4: 443b         	add	r3, r7
    16f6: f803 2c28    	strb	r2, [r3, #-40]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:248
;       value /= base;
    16fa: 6c3a         	ldr	r2, [r7, #64]
    16fc: 6cbb         	ldr	r3, [r7, #72]
    16fe: fbb2 f3f3    	udiv	r3, r2, r3
    1702: 643b         	str	r3, [r7, #64]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:249
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    1704: 6c3b         	ldr	r3, [r7, #64]
    1706: 2b00         	cmp	r3, #0
    1708: d002         	beq	0x1710 <_ntoa_long+0x96> @ imm = #4
    170a: 6b7b         	ldr	r3, [r7, #52]
    170c: 2b1f         	cmp	r3, #31
    170e: d9cc         	bls	0x16aa <_ntoa_long+0x30> @ imm = #-104
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:252
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    1710: 6d7b         	ldr	r3, [r7, #84]
    1712: 9306         	str	r3, [sp, #24]
    1714: 6d3b         	ldr	r3, [r7, #80]
    1716: 9305         	str	r3, [sp, #20]
    1718: 6cfb         	ldr	r3, [r7, #76]
    171a: 9304         	str	r3, [sp, #16]
    171c: 6cbb         	ldr	r3, [r7, #72]
    171e: 9303         	str	r3, [sp, #12]
    1720: f897 3044    	ldrb.w	r3, [r7, #68]
    1724: 9302         	str	r3, [sp, #8]
    1726: 6b7b         	ldr	r3, [r7, #52]
    1728: 9301         	str	r3, [sp, #4]
    172a: f107 0310    	add.w	r3, r7, #16
    172e: 9300         	str	r3, [sp]
    1730: 683b         	ldr	r3, [r7]
    1732: 687a         	ldr	r2, [r7, #4]
    1734: 68b9         	ldr	r1, [r7, #8]
    1736: 68f8         	ldr	r0, [r7, #12]
    1738: f7ff fe87    	bl	0x144a <_ntoa_format>   @ imm = #-754
    173c: 4603         	mov	r3, r0
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:253
; }
    173e: 4618         	mov	r0, r3
    1740: 3738         	adds	r7, #56
    1742: 46bd         	mov	sp, r7
    1744: bd80         	pop	{r7, pc}

00001746 <_ntoa_long_long>:
; _ntoa_long_long():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:259
;                               unsigned int flags) {
    1746: b580         	push	{r7, lr}
    1748: b096         	sub	sp, #88
    174a: af08         	add	r7, sp, #32
    174c: 60f8         	str	r0, [r7, #12]
    174e: 60b9         	str	r1, [r7, #8]
    1750: 607a         	str	r2, [r7, #4]
    1752: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:261
;   size_t len = 0U;
    1754: 2300         	movs	r3, #0
    1756: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:264
;   if (!value) {
    1758: e9d7 2310    	ldrd	r2, r3, [r7, #64]
    175c: 4313         	orrs	r3, r2
    175e: d103         	bne	0x1768 <_ntoa_long_long+0x22> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:265
;     flags &= ~FLAGS_HASH;
    1760: 6e3b         	ldr	r3, [r7, #96]
    1762: f023 0310    	bic	r3, r3, #16
    1766: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:269
;   if (!(flags & FLAGS_PRECISION) || value) {
    1768: 6e3b         	ldr	r3, [r7, #96]
    176a: f403 6380    	and	r3, r3, #1024
    176e: 2b00         	cmp	r3, #0
    1770: d003         	beq	0x177a <_ntoa_long_long+0x34> @ imm = #6
    1772: e9d7 2310    	ldrd	r2, r3, [r7, #64]
    1776: 4313         	orrs	r3, r2
    1778: d037         	beq	0x17ea <_ntoa_long_long+0xa4> @ imm = #110
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:271
;       const char digit = (char)(value % base);
    177a: e9d7 0110    	ldrd	r0, r1, [r7, #64]
    177e: e9d7 2314    	ldrd	r2, r3, [r7, #80]
    1782: f005 ff4f    	bl	0x7624 <__aeabi_uldivmod> @ imm = #24222
    1786: 4613         	mov	r3, r2
    1788: f887 3033    	strb.w	r3, [r7, #51]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:272
;       buf[len++] = digit < 10 ? '0' + digit : (flags & FLAGS_UPPERCASE ? 'A' : 'a') + digit - 10;
    178c: f897 3033    	ldrb.w	r3, [r7, #51]
    1790: 2b09         	cmp	r3, #9
    1792: d804         	bhi	0x179e <_ntoa_long_long+0x58> @ imm = #8
    1794: f897 3033    	ldrb.w	r3, [r7, #51]
    1798: 3330         	adds	r3, #48
    179a: b2da         	uxtb	r2, r3
    179c: e00d         	b	0x17ba <_ntoa_long_long+0x74> @ imm = #26
    179e: 6e3b         	ldr	r3, [r7, #96]
    17a0: f003 0320    	and	r3, r3, #32
    17a4: 2b00         	cmp	r3, #0
    17a6: d001         	beq	0x17ac <_ntoa_long_long+0x66> @ imm = #2
    17a8: 2241         	movs	r2, #65
    17aa: e000         	b	0x17ae <_ntoa_long_long+0x68> @ imm = #0
    17ac: 2261         	movs	r2, #97
    17ae: f897 3033    	ldrb.w	r3, [r7, #51]
    17b2: 4413         	add	r3, r2
    17b4: b2db         	uxtb	r3, r3
    17b6: 3b0a         	subs	r3, #10
    17b8: b2da         	uxtb	r2, r3
    17ba: 6b7b         	ldr	r3, [r7, #52]
    17bc: 1c59         	adds	r1, r3, #1
    17be: 6379         	str	r1, [r7, #52]
    17c0: 3338         	adds	r3, #56
    17c2: 443b         	add	r3, r7
    17c4: f803 2c28    	strb	r2, [r3, #-40]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:273
;       value /= base;
    17c8: e9d7 2314    	ldrd	r2, r3, [r7, #80]
    17cc: e9d7 0110    	ldrd	r0, r1, [r7, #64]
    17d0: f005 ff28    	bl	0x7624 <__aeabi_uldivmod> @ imm = #24144
    17d4: 4602         	mov	r2, r0
    17d6: 460b         	mov	r3, r1
    17d8: e9c7 2310    	strd	r2, r3, [r7, #64]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:274
;     } while (value && (len < PRINTF_NTOA_BUFFER_SIZE));
    17dc: e9d7 2310    	ldrd	r2, r3, [r7, #64]
    17e0: 4313         	orrs	r3, r2
    17e2: d002         	beq	0x17ea <_ntoa_long_long+0xa4> @ imm = #4
    17e4: 6b7b         	ldr	r3, [r7, #52]
    17e6: 2b1f         	cmp	r3, #31
    17e8: d9c7         	bls	0x177a <_ntoa_long_long+0x34> @ imm = #-114
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:277
;   return _ntoa_format(out, buffer, idx, maxlen, buf, len, negative, (unsigned int)base, prec, width, flags);
    17ea: 6d3b         	ldr	r3, [r7, #80]
    17ec: 6e3a         	ldr	r2, [r7, #96]
    17ee: 9206         	str	r2, [sp, #24]
    17f0: 6dfa         	ldr	r2, [r7, #92]
    17f2: 9205         	str	r2, [sp, #20]
    17f4: 6dba         	ldr	r2, [r7, #88]
    17f6: 9204         	str	r2, [sp, #16]
    17f8: 9303         	str	r3, [sp, #12]
    17fa: f897 3048    	ldrb.w	r3, [r7, #72]
    17fe: 9302         	str	r3, [sp, #8]
    1800: 6b7b         	ldr	r3, [r7, #52]
    1802: 9301         	str	r3, [sp, #4]
    1804: f107 0310    	add.w	r3, r7, #16
    1808: 9300         	str	r3, [sp]
    180a: 683b         	ldr	r3, [r7]
    180c: 687a         	ldr	r2, [r7, #4]
    180e: 68b9         	ldr	r1, [r7, #8]
    1810: 68f8         	ldr	r0, [r7, #12]
    1812: f7ff fe1a    	bl	0x144a <_ntoa_format>   @ imm = #-972
    1816: 4603         	mov	r3, r0
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:278
; }
    1818: 4618         	mov	r0, r3
    181a: 3738         	adds	r7, #56
    181c: 46bd         	mov	sp, r7
    181e: bd80         	pop	{r7, pc}

00001820 <_ftoa>:
; _ftoa():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:283
;                     unsigned int width, unsigned int flags) {
    1820: b590         	push	{r4, r7, lr}
    1822: b09d         	sub	sp, #116
    1824: af00         	add	r7, sp, #0
    1826: 6178         	str	r0, [r7, #20]
    1828: 6139         	str	r1, [r7, #16]
    182a: 60fa         	str	r2, [r7, #12]
    182c: 60bb         	str	r3, [r7, #8]
    182e: ed87 0b00    	vstr	d0, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:284
;   const size_t start_idx = idx;
    1832: 68fb         	ldr	r3, [r7, #12]
    1834: 653b         	str	r3, [r7, #80]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:287
;   size_t len = 0U;
    1836: 2300         	movs	r3, #0
    1838: 66fb         	str	r3, [r7, #108]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:288
;   double diff = 0.0;
    183a: f04f 0200    	mov.w	r2, #0
    183e: f04f 0300    	mov.w	r3, #0
    1842: e9c7 2312    	strd	r2, r3, [r7, #72]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:291
;   const double thres_max = (double)0x7FFFFFFF;
    1846: a3ea         	adr	r3, #936 <_ftoa+0x114>
    1848: e9d3 2300    	ldrd	r2, r3, [r3]
    184c: e9c7 2310    	strd	r2, r3, [r7, #64]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:297
;   if (value != value) {
    1850: e9d7 2300    	ldrd	r2, r3, [r7]
    1854: e9d7 0100    	ldrd	r0, r1, [r7]
    1858: f005 fd0c    	bl	0x7274 <__aeabi_dcmpeq> @ imm = #23064
    185c: 4603         	mov	r3, r0
    185e: 2b00         	cmp	r3, #0
    1860: d119         	bne	0x1896 <_ftoa+0x76>     @ imm = #50
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:298
;     out('n', buffer, idx++, maxlen);
    1862: 68fa         	ldr	r2, [r7, #12]
    1864: 1c53         	adds	r3, r2, #1
    1866: 60fb         	str	r3, [r7, #12]
    1868: 697c         	ldr	r4, [r7, #20]
    186a: 68bb         	ldr	r3, [r7, #8]
    186c: 6939         	ldr	r1, [r7, #16]
    186e: 206e         	movs	r0, #110
    1870: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:299
;     out('a', buffer, idx++, maxlen);
    1872: 68fa         	ldr	r2, [r7, #12]
    1874: 1c53         	adds	r3, r2, #1
    1876: 60fb         	str	r3, [r7, #12]
    1878: 697c         	ldr	r4, [r7, #20]
    187a: 68bb         	ldr	r3, [r7, #8]
    187c: 6939         	ldr	r1, [r7, #16]
    187e: 2061         	movs	r0, #97
    1880: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:300
;     out('n', buffer, idx++, maxlen);
    1882: 68fa         	ldr	r2, [r7, #12]
    1884: 1c53         	adds	r3, r2, #1
    1886: 60fb         	str	r3, [r7, #12]
    1888: 697c         	ldr	r4, [r7, #20]
    188a: 68bb         	ldr	r3, [r7, #8]
    188c: 6939         	ldr	r1, [r7, #16]
    188e: 206e         	movs	r0, #110
    1890: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:301
;     return idx;
    1892: 68fb         	ldr	r3, [r7, #12]
    1894: e20d         	b	0x1cb2 <$t+0xba>        @ imm = #1050
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:305
;   bool negative = false;
    1896: 2300         	movs	r3, #0
    1898: f887 306b    	strb.w	r3, [r7, #107]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:306
;   if (value < 0) {
    189c: f04f 0200    	mov.w	r2, #0
    18a0: f04f 0300    	mov.w	r3, #0
    18a4: e9d7 0100    	ldrd	r0, r1, [r7]
    18a8: f005 fcee    	bl	0x7288 <__aeabi_dcmplt> @ imm = #23004
    18ac: 4603         	mov	r3, r0
    18ae: 2b00         	cmp	r3, #0
    18b0: d00e         	beq	0x18d0 <_ftoa+0xb0>     @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:307
;     negative = true;
    18b2: 2301         	movs	r3, #1
    18b4: f887 306b    	strb.w	r3, [r7, #107]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:308
;     value = 0 - value;
    18b8: e9d7 2300    	ldrd	r2, r3, [r7]
    18bc: f04f 0000    	mov.w	r0, #0
    18c0: f04f 0100    	mov.w	r1, #0
    18c4: f005 f8b6    	bl	0x6a34 <__subdf3>       @ imm = #20844
    18c8: 4602         	mov	r2, r0
    18ca: 460b         	mov	r3, r1
    18cc: e9c7 2300    	strd	r2, r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:312
;   if (!(flags & FLAGS_PRECISION)) {
    18d0: f8d7 3088    	ldr.w	r3, [r7, #136]
    18d4: f403 6380    	and	r3, r3, #1024
    18d8: 2b00         	cmp	r3, #0
    18da: d110         	bne	0x18fe <_ftoa+0xde>     @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:313
;     prec = 6U;
    18dc: 2306         	movs	r3, #6
    18de: f8c7 3080    	str.w	r3, [r7, #128]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:316
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
    18e2: e00c         	b	0x18fe <_ftoa+0xde>     @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:317
;     buf[len++] = '0';
    18e4: 6efb         	ldr	r3, [r7, #108]
    18e6: 1c5a         	adds	r2, r3, #1
    18e8: 66fa         	str	r2, [r7, #108]
    18ea: 3370         	adds	r3, #112
    18ec: 443b         	add	r3, r7
    18ee: 2230         	movs	r2, #48
    18f0: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:318
;     prec--;
    18f4: f8d7 3080    	ldr.w	r3, [r7, #128]
    18f8: 3b01         	subs	r3, #1
    18fa: f8c7 3080    	str.w	r3, [r7, #128]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:316
;   while ((len < PRINTF_FTOA_BUFFER_SIZE) && (prec > 9U)) {
    18fe: 6efb         	ldr	r3, [r7, #108]
    1900: 2b1f         	cmp	r3, #31
    1902: d803         	bhi	0x190c <_ftoa+0xec>     @ imm = #6
    1904: f8d7 3080    	ldr.w	r3, [r7, #128]
    1908: 2b09         	cmp	r3, #9
    190a: d8eb         	bhi	0x18e4 <_ftoa+0xc4>     @ imm = #-42
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:321
;   int whole = (int)value;
    190c: e9d7 0100    	ldrd	r0, r1, [r7]
    1910: f005 fce2    	bl	0x72d8 <__fixdfsi>      @ imm = #22980
    1914: 4603         	mov	r3, r0
    1916: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:322
;   double tmp = (value - whole) * pow10[prec];
    1918: 6e78         	ldr	r0, [r7, #100]
    191a: f005 f9d9    	bl	0x6cd0 <__floatsidf>    @ imm = #21426
    191e: 4602         	mov	r2, r0
    1920: 460b         	mov	r3, r1
    1922: e9d7 0100    	ldrd	r0, r1, [r7]
    1926: f005 f885    	bl	0x6a34 <__subdf3>       @ imm = #20746
    192a: 4602         	mov	r2, r0
    192c: 460b         	mov	r3, r1
    192e: 4610         	mov	r0, r2
    1930: 4619         	mov	r1, r3
    1932: 4aab         	ldr	r2, [pc, #684]          @ 0x1be0 <$d>
    1934: f8d7 3080    	ldr.w	r3, [r7, #128]
    1938: 00db         	lsls	r3, r3, #3
    193a: 4413         	add	r3, r2
    193c: e9d3 2300    	ldrd	r2, r3, [r3]
    1940: f005 fa30    	bl	0x6da4 <__muldf3>       @ imm = #21600
    1944: 4602         	mov	r2, r0
    1946: 460b         	mov	r3, r1
    1948: e9c7 230e    	strd	r2, r3, [r7, #56]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:323
;   unsigned long frac = (unsigned long)tmp;
    194c: e9d7 010e    	ldrd	r0, r1, [r7, #56]
    1950: f005 fcea    	bl	0x7328 <__fixunsdfsi>   @ imm = #22996
    1954: 4603         	mov	r3, r0
    1956: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:324
;   diff = tmp - frac;
    1958: 6e38         	ldr	r0, [r7, #96]
    195a: f005 f9a9    	bl	0x6cb0 <__floatunsidf>  @ imm = #21330
    195e: 4602         	mov	r2, r0
    1960: 460b         	mov	r3, r1
    1962: e9d7 010e    	ldrd	r0, r1, [r7, #56]
    1966: f005 f865    	bl	0x6a34 <__subdf3>       @ imm = #20682
    196a: 4602         	mov	r2, r0
    196c: 460b         	mov	r3, r1
    196e: e9c7 2312    	strd	r2, r3, [r7, #72]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:326
;   if (diff > 0.5) {
    1972: f04f 0200    	mov.w	r2, #0
    1976: 4b9b         	ldr	r3, [pc, #620]          @ 0x1be4 <$d+0x4>
    1978: e9d7 0112    	ldrd	r0, r1, [r7, #72]
    197c: f005 fca2    	bl	0x72c4 <__aeabi_dcmpgt> @ imm = #22852
    1980: 4603         	mov	r3, r0
    1982: 2b00         	cmp	r3, #0
    1984: d017         	beq	0x19b6 <_ftoa+0x196>    @ imm = #46
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:327
;     ++frac;
    1986: 6e3b         	ldr	r3, [r7, #96]
    1988: 3301         	adds	r3, #1
    198a: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:329
;     if (frac >= pow10[prec]) {
    198c: 6e38         	ldr	r0, [r7, #96]
    198e: f005 f98f    	bl	0x6cb0 <__floatunsidf>  @ imm = #21278
    1992: 4a93         	ldr	r2, [pc, #588]          @ 0x1be0 <$d>
    1994: f8d7 3080    	ldr.w	r3, [r7, #128]
    1998: 00db         	lsls	r3, r3, #3
    199a: 4413         	add	r3, r2
    199c: e9d3 2300    	ldrd	r2, r3, [r3]
    19a0: f005 fc86    	bl	0x72b0 <__aeabi_dcmpge> @ imm = #22796
    19a4: 4603         	mov	r3, r0
    19a6: 2b00         	cmp	r3, #0
    19a8: d01a         	beq	0x19e0 <_ftoa+0x1c0>    @ imm = #52
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:330
;       frac = 0;
    19aa: 2300         	movs	r3, #0
    19ac: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:331
;       ++whole;
    19ae: 6e7b         	ldr	r3, [r7, #100]
    19b0: 3301         	adds	r3, #1
    19b2: 667b         	str	r3, [r7, #100]
    19b4: e014         	b	0x19e0 <_ftoa+0x1c0>    @ imm = #40
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:333
;   } else if (diff < 0.5) {
    19b6: f04f 0200    	mov.w	r2, #0
    19ba: 4b8a         	ldr	r3, [pc, #552]          @ 0x1be4 <$d+0x4>
    19bc: e9d7 0112    	ldrd	r0, r1, [r7, #72]
    19c0: f005 fc62    	bl	0x7288 <__aeabi_dcmplt> @ imm = #22724
    19c4: 4603         	mov	r3, r0
    19c6: 2b00         	cmp	r3, #0
    19c8: d10a         	bne	0x19e0 <_ftoa+0x1c0>    @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:334
;   } else if ((frac == 0U) || (frac & 1U)) {
    19ca: 6e3b         	ldr	r3, [r7, #96]
    19cc: 2b00         	cmp	r3, #0
    19ce: d004         	beq	0x19da <_ftoa+0x1ba>    @ imm = #8
    19d0: 6e3b         	ldr	r3, [r7, #96]
    19d2: f003 0301    	and	r3, r3, #1
    19d6: 2b00         	cmp	r3, #0
    19d8: d002         	beq	0x19e0 <_ftoa+0x1c0>    @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:336
;     ++frac;
    19da: 6e3b         	ldr	r3, [r7, #96]
    19dc: 3301         	adds	r3, #1
    19de: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:342
;   if (value > thres_max) {
    19e0: e9d7 2310    	ldrd	r2, r3, [r7, #64]
    19e4: e9d7 0100    	ldrd	r0, r1, [r7]
    19e8: f005 fc6c    	bl	0x72c4 <__aeabi_dcmpgt> @ imm = #22744
    19ec: 4603         	mov	r3, r0
    19ee: 2b00         	cmp	r3, #0
    19f0: d001         	beq	0x19f6 <_ftoa+0x1d6>    @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:343
;     return 0U;
    19f2: 2300         	movs	r3, #0
    19f4: e15d         	b	0x1cb2 <$t+0xba>        @ imm = #698
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:346
;   if (prec == 0U) {
    19f6: f8d7 3080    	ldr.w	r3, [r7, #128]
    19fa: 2b00         	cmp	r3, #0
    19fc: d133         	bne	0x1a66 <_ftoa+0x246>    @ imm = #102
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:347
;     diff = value - (double)whole;
    19fe: 6e78         	ldr	r0, [r7, #100]
    1a00: f005 f966    	bl	0x6cd0 <__floatsidf>    @ imm = #21196
    1a04: 4602         	mov	r2, r0
    1a06: 460b         	mov	r3, r1
    1a08: e9d7 0100    	ldrd	r0, r1, [r7]
    1a0c: f005 f812    	bl	0x6a34 <__subdf3>       @ imm = #20516
    1a10: 4602         	mov	r2, r0
    1a12: 460b         	mov	r3, r1
    1a14: e9c7 2312    	strd	r2, r3, [r7, #72]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:348
;     if ((!(diff < 0.5) || (diff > 0.5)) && (whole & 1)) {
    1a18: 2301         	movs	r3, #1
    1a1a: 461c         	mov	r4, r3
    1a1c: f04f 0200    	mov.w	r2, #0
    1a20: 4b70         	ldr	r3, [pc, #448]          @ 0x1be4 <$d+0x4>
    1a22: e9d7 0112    	ldrd	r0, r1, [r7, #72]
    1a26: f005 fc2f    	bl	0x7288 <__aeabi_dcmplt> @ imm = #22622
    1a2a: 4603         	mov	r3, r0
    1a2c: 2b00         	cmp	r3, #0
    1a2e: d101         	bne	0x1a34 <_ftoa+0x214>    @ imm = #2
    1a30: 2300         	movs	r3, #0
    1a32: 461c         	mov	r4, r3
    1a34: b2e3         	uxtb	r3, r4
    1a36: f083 0301    	eor	r3, r3, #1
    1a3a: b2db         	uxtb	r3, r3
    1a3c: 2b00         	cmp	r3, #0
    1a3e: d109         	bne	0x1a54 <_ftoa+0x234>    @ imm = #18
    1a40: f04f 0200    	mov.w	r2, #0
    1a44: 4b67         	ldr	r3, [pc, #412]          @ 0x1be4 <$d+0x4>
    1a46: e9d7 0112    	ldrd	r0, r1, [r7, #72]
    1a4a: f005 fc3b    	bl	0x72c4 <__aeabi_dcmpgt> @ imm = #22646
    1a4e: 4603         	mov	r3, r0
    1a50: 2b00         	cmp	r3, #0
    1a52: d04d         	beq	0x1af0 <_ftoa+0x2d0>    @ imm = #154
    1a54: 6e7b         	ldr	r3, [r7, #100]
    1a56: f003 0301    	and	r3, r3, #1
    1a5a: 2b00         	cmp	r3, #0
    1a5c: d06a         	beq	0x1b34 <_ftoa+0x314>    @ imm = #212
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:351
;       ++whole;
    1a5e: 6e7b         	ldr	r3, [r7, #100]
    1a60: 3301         	adds	r3, #1
    1a62: 667b         	str	r3, [r7, #100]
    1a64: e066         	b	0x1b34 <_ftoa+0x314>    @ imm = #204
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:354
;     unsigned int count = prec;
    1a66: f8d7 3080    	ldr.w	r3, [r7, #128]
    1a6a: 65fb         	str	r3, [r7, #92]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:356
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
    1a6c: e01f         	b	0x1aae <_ftoa+0x28e>    @ imm = #62
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:357
;       --count;
    1a6e: 6dfb         	ldr	r3, [r7, #92]
    1a70: 3b01         	subs	r3, #1
    1a72: 65fb         	str	r3, [r7, #92]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:358
;       buf[len++] = (char)(48U + (frac % 10U));
    1a74: 6e39         	ldr	r1, [r7, #96]
    1a76: 4b5c         	ldr	r3, [pc, #368]          @ 0x1be8 <$d+0x8>
    1a78: fba3 2301    	umull	r2, r3, r3, r1
    1a7c: 08da         	lsrs	r2, r3, #3
    1a7e: 4613         	mov	r3, r2
    1a80: 009b         	lsls	r3, r3, #2
    1a82: 4413         	add	r3, r2
    1a84: 005b         	lsls	r3, r3, #1
    1a86: 1aca         	subs	r2, r1, r3
    1a88: b2d2         	uxtb	r2, r2
    1a8a: 6efb         	ldr	r3, [r7, #108]
    1a8c: 1c59         	adds	r1, r3, #1
    1a8e: 66f9         	str	r1, [r7, #108]
    1a90: 3230         	adds	r2, #48
    1a92: b2d2         	uxtb	r2, r2
    1a94: 3370         	adds	r3, #112
    1a96: 443b         	add	r3, r7
    1a98: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:359
;       if (!(frac /= 10U)) {
    1a9c: 6e3b         	ldr	r3, [r7, #96]
    1a9e: 4a52         	ldr	r2, [pc, #328]          @ 0x1be8 <$d+0x8>
    1aa0: fba2 2303    	umull	r2, r3, r2, r3
    1aa4: 08db         	lsrs	r3, r3, #3
    1aa6: 663b         	str	r3, [r7, #96]
    1aa8: 6e3b         	ldr	r3, [r7, #96]
    1aaa: 2b00         	cmp	r3, #0
    1aac: d003         	beq	0x1ab6 <_ftoa+0x296>    @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:356
;     while (len < PRINTF_FTOA_BUFFER_SIZE) {
    1aae: 6efb         	ldr	r3, [r7, #108]
    1ab0: 2b1f         	cmp	r3, #31
    1ab2: d9dc         	bls	0x1a6e <_ftoa+0x24e>    @ imm = #-72
    1ab4: e009         	b	0x1aca <_ftoa+0x2aa>    @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:360
;         break;
    1ab6: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:364
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
    1ab8: e007         	b	0x1aca <_ftoa+0x2aa>    @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:365
;       buf[len++] = '0';
    1aba: 6efb         	ldr	r3, [r7, #108]
    1abc: 1c5a         	adds	r2, r3, #1
    1abe: 66fa         	str	r2, [r7, #108]
    1ac0: 3370         	adds	r3, #112
    1ac2: 443b         	add	r3, r7
    1ac4: 2230         	movs	r2, #48
    1ac6: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:364
;     while ((len < PRINTF_FTOA_BUFFER_SIZE) && (count-- > 0U)) {
    1aca: 6efb         	ldr	r3, [r7, #108]
    1acc: 2b1f         	cmp	r3, #31
    1ace: d804         	bhi	0x1ada <_ftoa+0x2ba>    @ imm = #8
    1ad0: 6dfb         	ldr	r3, [r7, #92]
    1ad2: 1e5a         	subs	r2, r3, #1
    1ad4: 65fa         	str	r2, [r7, #92]
    1ad6: 2b00         	cmp	r3, #0
    1ad8: d1ef         	bne	0x1aba <_ftoa+0x29a>    @ imm = #-34
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:367
;     if (len < PRINTF_FTOA_BUFFER_SIZE) {
    1ada: 6efb         	ldr	r3, [r7, #108]
    1adc: 2b1f         	cmp	r3, #31
    1ade: d829         	bhi	0x1b34 <_ftoa+0x314>    @ imm = #82
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:369
;       buf[len++] = '.';
    1ae0: 6efb         	ldr	r3, [r7, #108]
    1ae2: 1c5a         	adds	r2, r3, #1
    1ae4: 66fa         	str	r2, [r7, #108]
    1ae6: 3370         	adds	r3, #112
    1ae8: 443b         	add	r3, r7
    1aea: 222e         	movs	r2, #46
    1aec: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:374
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
    1af0: e020         	b	0x1b34 <_ftoa+0x314>    @ imm = #64
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:375
;     buf[len++] = (char)(48 + (whole % 10));
    1af2: 6e7a         	ldr	r2, [r7, #100]
    1af4: 4b3d         	ldr	r3, [pc, #244]          @ 0x1bec <$d+0xc>
    1af6: fb83 1302    	smull	r1, r3, r3, r2
    1afa: 1099         	asrs	r1, r3, #2
    1afc: 17d3         	asrs	r3, r2, #31
    1afe: 1ac9         	subs	r1, r1, r3
    1b00: 460b         	mov	r3, r1
    1b02: 009b         	lsls	r3, r3, #2
    1b04: 440b         	add	r3, r1
    1b06: 005b         	lsls	r3, r3, #1
    1b08: 1ad1         	subs	r1, r2, r3
    1b0a: b2ca         	uxtb	r2, r1
    1b0c: 6efb         	ldr	r3, [r7, #108]
    1b0e: 1c59         	adds	r1, r3, #1
    1b10: 66f9         	str	r1, [r7, #108]
    1b12: 3230         	adds	r2, #48
    1b14: b2d2         	uxtb	r2, r2
    1b16: 3370         	adds	r3, #112
    1b18: 443b         	add	r3, r7
    1b1a: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:376
;     if (!(whole /= 10)) {
    1b1e: 6e7b         	ldr	r3, [r7, #100]
    1b20: 4a32         	ldr	r2, [pc, #200]          @ 0x1bec <$d+0xc>
    1b22: fb82 1203    	smull	r1, r2, r2, r3
    1b26: 1092         	asrs	r2, r2, #2
    1b28: 17db         	asrs	r3, r3, #31
    1b2a: 1ad3         	subs	r3, r2, r3
    1b2c: 667b         	str	r3, [r7, #100]
    1b2e: 6e7b         	ldr	r3, [r7, #100]
    1b30: 2b00         	cmp	r3, #0
    1b32: d003         	beq	0x1b3c <_ftoa+0x31c>    @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:374
;   while (len < PRINTF_FTOA_BUFFER_SIZE) {
    1b34: 6efb         	ldr	r3, [r7, #108]
    1b36: 2b1f         	cmp	r3, #31
    1b38: d9db         	bls	0x1af2 <_ftoa+0x2d2>    @ imm = #-74
    1b3a: e000         	b	0x1b3e <_ftoa+0x31e>    @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:377
;       break;
    1b3c: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:382
;   if (!(flags & FLAGS_LEFT) && (flags & FLAGS_ZEROPAD)) {
    1b3e: f8d7 3088    	ldr.w	r3, [r7, #136]
    1b42: f003 0302    	and	r3, r3, #2
    1b46: 2b00         	cmp	r3, #0
    1b48: d129         	bne	0x1b9e <_ftoa+0x37e>    @ imm = #82
    1b4a: f8d7 3088    	ldr.w	r3, [r7, #136]
    1b4e: f003 0301    	and	r3, r3, #1
    1b52: 2b00         	cmp	r3, #0
    1b54: d023         	beq	0x1b9e <_ftoa+0x37e>    @ imm = #70
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:383
;     if (width && (negative || (flags & (FLAGS_PLUS | FLAGS_SPACE)))) {
    1b56: f8d7 3084    	ldr.w	r3, [r7, #132]
    1b5a: 2b00         	cmp	r3, #0
    1b5c: d017         	beq	0x1b8e <_ftoa+0x36e>    @ imm = #46
    1b5e: f897 306b    	ldrb.w	r3, [r7, #107]
    1b62: 2b00         	cmp	r3, #0
    1b64: d105         	bne	0x1b72 <_ftoa+0x352>    @ imm = #10
    1b66: f8d7 3088    	ldr.w	r3, [r7, #136]
    1b6a: f003 030c    	and	r3, r3, #12
    1b6e: 2b00         	cmp	r3, #0
    1b70: d00d         	beq	0x1b8e <_ftoa+0x36e>    @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:384
;       width--;
    1b72: f8d7 3084    	ldr.w	r3, [r7, #132]
    1b76: 3b01         	subs	r3, #1
    1b78: f8c7 3084    	str.w	r3, [r7, #132]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:386
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
    1b7c: e007         	b	0x1b8e <_ftoa+0x36e>    @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:387
;       buf[len++] = '0';
    1b7e: 6efb         	ldr	r3, [r7, #108]
    1b80: 1c5a         	adds	r2, r3, #1
    1b82: 66fa         	str	r2, [r7, #108]
    1b84: 3370         	adds	r3, #112
    1b86: 443b         	add	r3, r7
    1b88: 2230         	movs	r2, #48
    1b8a: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:386
;     while ((len < width) && (len < PRINTF_FTOA_BUFFER_SIZE)) {
    1b8e: 6efa         	ldr	r2, [r7, #108]
    1b90: f8d7 3084    	ldr.w	r3, [r7, #132]
    1b94: 429a         	cmp	r2, r3
    1b96: d202         	bhs	0x1b9e <_ftoa+0x37e>    @ imm = #4
    1b98: 6efb         	ldr	r3, [r7, #108]
    1b9a: 2b1f         	cmp	r3, #31
    1b9c: d9ef         	bls	0x1b7e <_ftoa+0x35e>    @ imm = #-34
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:391
;   if (len < PRINTF_FTOA_BUFFER_SIZE) {
    1b9e: 6efb         	ldr	r3, [r7, #108]
    1ba0: 2b1f         	cmp	r3, #31
    1ba2: d837         	bhi	0x1c14 <$t+0x1c>        @ imm = #110
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:392
;     if (negative) {
    1ba4: f897 306b    	ldrb.w	r3, [r7, #107]
    1ba8: 2b00         	cmp	r3, #0
    1baa: d008         	beq	0x1bbe <_ftoa+0x39e>    @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:393
;       buf[len++] = '-';
    1bac: 6efb         	ldr	r3, [r7, #108]
    1bae: 1c5a         	adds	r2, r3, #1
    1bb0: 66fa         	str	r2, [r7, #108]
    1bb2: 3370         	adds	r3, #112
    1bb4: 443b         	add	r3, r7
    1bb6: 222d         	movs	r2, #45
    1bb8: f803 2c58    	strb	r2, [r3, #-88]
    1bbc: e02a         	b	0x1c14 <$t+0x1c>        @ imm = #84
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:394
;     } else if (flags & FLAGS_PLUS) {
    1bbe: f8d7 3088    	ldr.w	r3, [r7, #136]
    1bc2: f003 0304    	and	r3, r3, #4
    1bc6: 2b00         	cmp	r3, #0
    1bc8: d016         	beq	0x1bf8 <$t>             @ imm = #44
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:395
;       buf[len++] = '+';  // ignore the space if the '+' exists
    1bca: 6efb         	ldr	r3, [r7, #108]
    1bcc: 1c5a         	adds	r2, r3, #1
    1bce: 66fa         	str	r2, [r7, #108]
    1bd0: 3370         	adds	r3, #112
    1bd2: 443b         	add	r3, r7
    1bd4: 222b         	movs	r2, #43
    1bd6: f803 2c58    	strb	r2, [r3, #-88]
    1bda: e01b         	b	0x1c14 <$t+0x1c>        @ imm = #54
    1bdc: f3af 8000    	nop.w

00001be0 <$d>:
    1be0: 40 80 00 00  	.word	0x00008040
    1be4: 00 00 e0 3f  	.word	0x3fe00000
    1be8: cd cc cc cc  	.word	0xcccccccd
    1bec: 67 66 66 66  	.word	0x66666667
    1bf0: 00 00 c0 ff  	.word	0xffc00000
    1bf4: ff ff df 41  	.word	0x41dfffff

00001bf8 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:396
;     } else if (flags & FLAGS_SPACE) {
    1bf8: f8d7 3088    	ldr.w	r3, [r7, #136]
    1bfc: f003 0308    	and	r3, r3, #8
    1c00: 2b00         	cmp	r3, #0
    1c02: d007         	beq	0x1c14 <$t+0x1c>        @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:397
;       buf[len++] = ' ';
    1c04: 6efb         	ldr	r3, [r7, #108]
    1c06: 1c5a         	adds	r2, r3, #1
    1c08: 66fa         	str	r2, [r7, #108]
    1c0a: 3370         	adds	r3, #112
    1c0c: 443b         	add	r3, r7
    1c0e: 2220         	movs	r2, #32
    1c10: f803 2c58    	strb	r2, [r3, #-88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:402
;   if (!(flags & FLAGS_LEFT) && !(flags & FLAGS_ZEROPAD)) {
    1c14: f8d7 3088    	ldr.w	r3, [r7, #136]
    1c18: f003 0302    	and	r3, r3, #2
    1c1c: 2b00         	cmp	r3, #0
    1c1e: d118         	bne	0x1c52 <$t+0x5a>        @ imm = #48
    1c20: f8d7 3088    	ldr.w	r3, [r7, #136]
    1c24: f003 0301    	and	r3, r3, #1
    1c28: 2b00         	cmp	r3, #0
    1c2a: d112         	bne	0x1c52 <$t+0x5a>        @ imm = #36
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:403
;     for (size_t i = len; i < width; i++) {
    1c2c: 6efb         	ldr	r3, [r7, #108]
    1c2e: 65bb         	str	r3, [r7, #88]
    1c30: e00a         	b	0x1c48 <$t+0x50>        @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:404
;       out(' ', buffer, idx++, maxlen);
    1c32: 68fa         	ldr	r2, [r7, #12]
    1c34: 1c53         	adds	r3, r2, #1
    1c36: 60fb         	str	r3, [r7, #12]
    1c38: 697c         	ldr	r4, [r7, #20]
    1c3a: 68bb         	ldr	r3, [r7, #8]
    1c3c: 6939         	ldr	r1, [r7, #16]
    1c3e: 2020         	movs	r0, #32
    1c40: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:403
;     for (size_t i = len; i < width; i++) {
    1c42: 6dbb         	ldr	r3, [r7, #88]
    1c44: 3301         	adds	r3, #1
    1c46: 65bb         	str	r3, [r7, #88]
    1c48: 6dba         	ldr	r2, [r7, #88]
    1c4a: f8d7 3084    	ldr.w	r3, [r7, #132]
    1c4e: 429a         	cmp	r2, r3
    1c50: d3ef         	blo	0x1c32 <$t+0x3a>        @ imm = #-34
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:409
;   for (size_t i = 0U; i < len; i++) {
    1c52: 2300         	movs	r3, #0
    1c54: 657b         	str	r3, [r7, #84]
    1c56: e011         	b	0x1c7c <$t+0x84>        @ imm = #34
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:410
;     out(buf[len - i - 1U], buffer, idx++, maxlen);
    1c58: 6efa         	ldr	r2, [r7, #108]
    1c5a: 6d7b         	ldr	r3, [r7, #84]
    1c5c: 1ad3         	subs	r3, r2, r3
    1c5e: 3b01         	subs	r3, #1
    1c60: 3370         	adds	r3, #112
    1c62: 443b         	add	r3, r7
    1c64: f813 0c58    	ldrb	r0, [r3, #-88]
    1c68: 68fa         	ldr	r2, [r7, #12]
    1c6a: 1c53         	adds	r3, r2, #1
    1c6c: 60fb         	str	r3, [r7, #12]
    1c6e: 697c         	ldr	r4, [r7, #20]
    1c70: 68bb         	ldr	r3, [r7, #8]
    1c72: 6939         	ldr	r1, [r7, #16]
    1c74: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:409
;   for (size_t i = 0U; i < len; i++) {
    1c76: 6d7b         	ldr	r3, [r7, #84]
    1c78: 3301         	adds	r3, #1
    1c7a: 657b         	str	r3, [r7, #84]
    1c7c: 6d7a         	ldr	r2, [r7, #84]
    1c7e: 6efb         	ldr	r3, [r7, #108]
    1c80: 429a         	cmp	r2, r3
    1c82: d3e9         	blo	0x1c58 <$t+0x60>        @ imm = #-46
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:414
;   if (flags & FLAGS_LEFT) {
    1c84: f8d7 3088    	ldr.w	r3, [r7, #136]
    1c88: f003 0302    	and	r3, r3, #2
    1c8c: 2b00         	cmp	r3, #0
    1c8e: d00f         	beq	0x1cb0 <$t+0xb8>        @ imm = #30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:415
;     while (idx - start_idx < width) {
    1c90: e007         	b	0x1ca2 <$t+0xaa>        @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:416
;       out(' ', buffer, idx++, maxlen);
    1c92: 68fa         	ldr	r2, [r7, #12]
    1c94: 1c53         	adds	r3, r2, #1
    1c96: 60fb         	str	r3, [r7, #12]
    1c98: 697c         	ldr	r4, [r7, #20]
    1c9a: 68bb         	ldr	r3, [r7, #8]
    1c9c: 6939         	ldr	r1, [r7, #16]
    1c9e: 2020         	movs	r0, #32
    1ca0: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:415
;     while (idx - start_idx < width) {
    1ca2: 68fa         	ldr	r2, [r7, #12]
    1ca4: 6d3b         	ldr	r3, [r7, #80]
    1ca6: 1ad3         	subs	r3, r2, r3
    1ca8: f8d7 2084    	ldr.w	r2, [r7, #132]
    1cac: 429a         	cmp	r2, r3
    1cae: d8f0         	bhi	0x1c92 <$t+0x9a>        @ imm = #-32
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:420
;   return idx;
    1cb0: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:421
; }
    1cb2: 4618         	mov	r0, r3
    1cb4: 3774         	adds	r7, #116
    1cb6: 46bd         	mov	sp, r7
    1cb8: bd90         	pop	{r4, r7, pc}
    1cba: bf00         	nop

00001cbc <_vsnprintf>:
; _vsnprintf():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:425
; static int _vsnprintf(out_fct_type out, char* buffer, const size_t maxlen, const char* format, va_list va) {
    1cbc: e92d 4fb0    	push.w	{r4, r5, r7, r8, r9, r10, r11, lr}
    1cc0: b0a4         	sub	sp, #144
    1cc2: af0a         	add	r7, sp, #40
    1cc4: 61f8         	str	r0, [r7, #28]
    1cc6: 61b9         	str	r1, [r7, #24]
    1cc8: 617a         	str	r2, [r7, #20]
    1cca: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:427
;   size_t idx = 0U;
    1ccc: 2300         	movs	r3, #0
    1cce: 657b         	str	r3, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:429
;   if (!buffer) {
    1cd0: 69bb         	ldr	r3, [r7, #24]
    1cd2: 2b00         	cmp	r3, #0
    1cd4: f040 8456    	bne.w	0x2584 <$t+0x518>       @ imm = #2220
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:431
;     out = _out_null;
    1cd8: 4ba3         	ldr	r3, [pc, #652]          @ 0x1f68 <$d>
    1cda: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:434
;   while (*format) {
    1cdc: f000 bc52    	b.w	0x2584 <$t+0x518>       @ imm = #2212
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:436
;     if (*format != '%') {
    1ce0: 693b         	ldr	r3, [r7, #16]
    1ce2: 781b         	ldrb	r3, [r3]
    1ce4: 2b25         	cmp	r3, #37
    1ce6: d00d         	beq	0x1d04 <_vsnprintf+0x48> @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:438
;       out(*format, buffer, idx++, maxlen);
    1ce8: 693b         	ldr	r3, [r7, #16]
    1cea: 7818         	ldrb	r0, [r3]
    1cec: 6d7a         	ldr	r2, [r7, #84]
    1cee: 1c53         	adds	r3, r2, #1
    1cf0: 657b         	str	r3, [r7, #84]
    1cf2: 69fc         	ldr	r4, [r7, #28]
    1cf4: 697b         	ldr	r3, [r7, #20]
    1cf6: 69b9         	ldr	r1, [r7, #24]
    1cf8: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:439
;       format++;
    1cfa: 693b         	ldr	r3, [r7, #16]
    1cfc: 3301         	adds	r3, #1
    1cfe: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:440
;       continue;
    1d00: f000 bc40    	b.w	0x2584 <$t+0x518>       @ imm = #2176
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:443
;       format++;
    1d04: 693b         	ldr	r3, [r7, #16]
    1d06: 3301         	adds	r3, #1
    1d08: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:447
;     flags = 0U;
    1d0a: 2300         	movs	r3, #0
    1d0c: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:449
;       switch (*format) {
    1d0e: 693b         	ldr	r3, [r7, #16]
    1d10: 781b         	ldrb	r3, [r3]
    1d12: 3b20         	subs	r3, #32
    1d14: 2b10         	cmp	r3, #16
    1d16: d857         	bhi	0x1dc8 <$t+0x64>        @ imm = #174
    1d18: a201         	adr	r2, #4 <_vsnprintf+0x61>
    1d1a: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]
    1d1e: bf00         	nop

00001d20 <$d>:
    1d20: a1 1d 00 00  	.word	0x00001da1
    1d24: c9 1d 00 00  	.word	0x00001dc9
    1d28: c9 1d 00 00  	.word	0x00001dc9
    1d2c: b5 1d 00 00  	.word	0x00001db5
    1d30: c9 1d 00 00  	.word	0x00001dc9
    1d34: c9 1d 00 00  	.word	0x00001dc9
    1d38: c9 1d 00 00  	.word	0x00001dc9
    1d3c: c9 1d 00 00  	.word	0x00001dc9
    1d40: c9 1d 00 00  	.word	0x00001dc9
    1d44: c9 1d 00 00  	.word	0x00001dc9
    1d48: c9 1d 00 00  	.word	0x00001dc9
    1d4c: 8d 1d 00 00  	.word	0x00001d8d
    1d50: c9 1d 00 00  	.word	0x00001dc9
    1d54: 79 1d 00 00  	.word	0x00001d79
    1d58: c9 1d 00 00  	.word	0x00001dc9
    1d5c: c9 1d 00 00  	.word	0x00001dc9
    1d60: 65 1d 00 00  	.word	0x00001d65

00001d64 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:451
;           flags |= FLAGS_ZEROPAD;
    1d64: 6e7b         	ldr	r3, [r7, #100]
    1d66: f043 0301    	orr	r3, r3, #1
    1d6a: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:452
;           format++;
    1d6c: 693b         	ldr	r3, [r7, #16]
    1d6e: 3301         	adds	r3, #1
    1d70: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:453
;           n = 1U;
    1d72: 2301         	movs	r3, #1
    1d74: 65bb         	str	r3, [r7, #88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:454
;           break;
    1d76: e02a         	b	0x1dce <$t+0x6a>        @ imm = #84
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:456
;           flags |= FLAGS_LEFT;
    1d78: 6e7b         	ldr	r3, [r7, #100]
    1d7a: f043 0302    	orr	r3, r3, #2
    1d7e: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:457
;           format++;
    1d80: 693b         	ldr	r3, [r7, #16]
    1d82: 3301         	adds	r3, #1
    1d84: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:458
;           n = 1U;
    1d86: 2301         	movs	r3, #1
    1d88: 65bb         	str	r3, [r7, #88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:459
;           break;
    1d8a: e020         	b	0x1dce <$t+0x6a>        @ imm = #64
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:461
;           flags |= FLAGS_PLUS;
    1d8c: 6e7b         	ldr	r3, [r7, #100]
    1d8e: f043 0304    	orr	r3, r3, #4
    1d92: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:462
;           format++;
    1d94: 693b         	ldr	r3, [r7, #16]
    1d96: 3301         	adds	r3, #1
    1d98: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:463
;           n = 1U;
    1d9a: 2301         	movs	r3, #1
    1d9c: 65bb         	str	r3, [r7, #88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:464
;           break;
    1d9e: e016         	b	0x1dce <$t+0x6a>        @ imm = #44
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:466
;           flags |= FLAGS_SPACE;
    1da0: 6e7b         	ldr	r3, [r7, #100]
    1da2: f043 0308    	orr	r3, r3, #8
    1da6: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:467
;           format++;
    1da8: 693b         	ldr	r3, [r7, #16]
    1daa: 3301         	adds	r3, #1
    1dac: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:468
;           n = 1U;
    1dae: 2301         	movs	r3, #1
    1db0: 65bb         	str	r3, [r7, #88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:469
;           break;
    1db2: e00c         	b	0x1dce <$t+0x6a>        @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:471
;           flags |= FLAGS_HASH;
    1db4: 6e7b         	ldr	r3, [r7, #100]
    1db6: f043 0310    	orr	r3, r3, #16
    1dba: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:472
;           format++;
    1dbc: 693b         	ldr	r3, [r7, #16]
    1dbe: 3301         	adds	r3, #1
    1dc0: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:473
;           n = 1U;
    1dc2: 2301         	movs	r3, #1
    1dc4: 65bb         	str	r3, [r7, #88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:474
;           break;
    1dc6: e002         	b	0x1dce <$t+0x6a>        @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:476
;           n = 0U;
    1dc8: 2300         	movs	r3, #0
    1dca: 65bb         	str	r3, [r7, #88]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:477
;           break;
    1dcc: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:479
;     } while (n);
    1dce: 6dbb         	ldr	r3, [r7, #88]
    1dd0: 2b00         	cmp	r3, #0
    1dd2: d19c         	bne	0x1d0e <_vsnprintf+0x52> @ imm = #-200
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:482
;     width = 0U;
    1dd4: 2300         	movs	r3, #0
    1dd6: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:483
;     if (_is_digit(*format)) {
    1dd8: 693b         	ldr	r3, [r7, #16]
    1dda: 781b         	ldrb	r3, [r3]
    1ddc: 4618         	mov	r0, r3
    1dde: f7ff faf9    	bl	0x13d4 <_is_digit>      @ imm = #-2574
    1de2: 4603         	mov	r3, r0
    1de4: 2b00         	cmp	r3, #0
    1de6: d006         	beq	0x1df6 <$t+0x92>        @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:484
;       width = _atoi(&format);
    1de8: f107 0310    	add.w	r3, r7, #16
    1dec: 4618         	mov	r0, r3
    1dee: f7ff fb08    	bl	0x1402 <_atoi>          @ imm = #-2544
    1df2: 6638         	str	r0, [r7, #96]
    1df4: e01a         	b	0x1e2c <$t+0xc8>        @ imm = #52
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:485
;     } else if (*format == '*') {
    1df6: 693b         	ldr	r3, [r7, #16]
    1df8: 781b         	ldrb	r3, [r3]
    1dfa: 2b2a         	cmp	r3, #42
    1dfc: d116         	bne	0x1e2c <$t+0xc8>        @ imm = #44
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:486
;       const int w = va_arg(va, int);
    1dfe: f8d7 3088    	ldr.w	r3, [r7, #136]
    1e02: 1d1a         	adds	r2, r3, #4
    1e04: f8c7 2088    	str.w	r2, [r7, #136]
    1e08: 681b         	ldr	r3, [r3]
    1e0a: 643b         	str	r3, [r7, #64]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:487
;       if (w < 0) {
    1e0c: 6c3b         	ldr	r3, [r7, #64]
    1e0e: 2b00         	cmp	r3, #0
    1e10: da07         	bge	0x1e22 <$t+0xbe>        @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:488
;         flags |= FLAGS_LEFT;  // reverse padding
    1e12: 6e7b         	ldr	r3, [r7, #100]
    1e14: f043 0302    	orr	r3, r3, #2
    1e18: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:489
;         width = (unsigned int)-w;
    1e1a: 6c3b         	ldr	r3, [r7, #64]
    1e1c: 425b         	rsbs	r3, r3, #0
    1e1e: 663b         	str	r3, [r7, #96]
    1e20: e001         	b	0x1e26 <$t+0xc2>        @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:491
;         width = (unsigned int)w;
    1e22: 6c3b         	ldr	r3, [r7, #64]
    1e24: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:493
;       format++;
    1e26: 693b         	ldr	r3, [r7, #16]
    1e28: 3301         	adds	r3, #1
    1e2a: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:497
;     precision = 0U;
    1e2c: 2300         	movs	r3, #0
    1e2e: 65fb         	str	r3, [r7, #92]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:498
;     if (*format == '.') {
    1e30: 693b         	ldr	r3, [r7, #16]
    1e32: 781b         	ldrb	r3, [r3]
    1e34: 2b2e         	cmp	r3, #46
    1e36: d127         	bne	0x1e88 <$t+0x124>       @ imm = #78
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:499
;       flags |= FLAGS_PRECISION;
    1e38: 6e7b         	ldr	r3, [r7, #100]
    1e3a: f443 6380    	orr	r3, r3, #1024
    1e3e: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:500
;       format++;
    1e40: 693b         	ldr	r3, [r7, #16]
    1e42: 3301         	adds	r3, #1
    1e44: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:501
;       if (_is_digit(*format)) {
    1e46: 693b         	ldr	r3, [r7, #16]
    1e48: 781b         	ldrb	r3, [r3]
    1e4a: 4618         	mov	r0, r3
    1e4c: f7ff fac2    	bl	0x13d4 <_is_digit>      @ imm = #-2684
    1e50: 4603         	mov	r3, r0
    1e52: 2b00         	cmp	r3, #0
    1e54: d006         	beq	0x1e64 <$t+0x100>       @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:502
;         precision = _atoi(&format);
    1e56: f107 0310    	add.w	r3, r7, #16
    1e5a: 4618         	mov	r0, r3
    1e5c: f7ff fad1    	bl	0x1402 <_atoi>          @ imm = #-2654
    1e60: 65f8         	str	r0, [r7, #92]
    1e62: e011         	b	0x1e88 <$t+0x124>       @ imm = #34
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:503
;       } else if (*format == '*') {
    1e64: 693b         	ldr	r3, [r7, #16]
    1e66: 781b         	ldrb	r3, [r3]
    1e68: 2b2a         	cmp	r3, #42
    1e6a: d10d         	bne	0x1e88 <$t+0x124>       @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:504
;         const int prec = (int)va_arg(va, int);
    1e6c: f8d7 3088    	ldr.w	r3, [r7, #136]
    1e70: 1d1a         	adds	r2, r3, #4
    1e72: f8c7 2088    	str.w	r2, [r7, #136]
    1e76: 681b         	ldr	r3, [r3]
    1e78: 63fb         	str	r3, [r7, #60]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:505
;         precision = prec > 0 ? (unsigned int)prec : 0U;
    1e7a: 6bfb         	ldr	r3, [r7, #60]
    1e7c: ea23 73e3    	bic.w	r3, r3, r3, asr #31
    1e80: 65fb         	str	r3, [r7, #92]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:506
;         format++;
    1e82: 693b         	ldr	r3, [r7, #16]
    1e84: 3301         	adds	r3, #1
    1e86: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:511
;     switch (*format) {
    1e88: 693b         	ldr	r3, [r7, #16]
    1e8a: 781b         	ldrb	r3, [r3]
    1e8c: 3b68         	subs	r3, #104
    1e8e: 2b12         	cmp	r3, #18
    1e90: d866         	bhi	0x1f60 <$t+0x7c>        @ imm = #204
    1e92: a201         	adr	r2, #4 <$t+0x133>
    1e94: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]

00001e98 <$d>:
    1e98: 0b 1f 00 00  	.word	0x00001f0b
    1e9c: 61 1f 00 00  	.word	0x00001f61
    1ea0: 41 1f 00 00  	.word	0x00001f41
    1ea4: 61 1f 00 00  	.word	0x00001f61
    1ea8: e5 1e 00 00  	.word	0x00001ee5
    1eac: 61 1f 00 00  	.word	0x00001f61
    1eb0: 61 1f 00 00  	.word	0x00001f61
    1eb4: 61 1f 00 00  	.word	0x00001f61
    1eb8: 61 1f 00 00  	.word	0x00001f61
    1ebc: 61 1f 00 00  	.word	0x00001f61
    1ec0: 61 1f 00 00  	.word	0x00001f61
    1ec4: 61 1f 00 00  	.word	0x00001f61
    1ec8: 31 1f 00 00  	.word	0x00001f31
    1ecc: 61 1f 00 00  	.word	0x00001f61
    1ed0: 61 1f 00 00  	.word	0x00001f61
    1ed4: 61 1f 00 00  	.word	0x00001f61
    1ed8: 61 1f 00 00  	.word	0x00001f61
    1edc: 61 1f 00 00  	.word	0x00001f61
    1ee0: 51 1f 00 00  	.word	0x00001f51

00001ee4 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:513
;         flags |= FLAGS_LONG;
    1ee4: 6e7b         	ldr	r3, [r7, #100]
    1ee6: f443 7380    	orr	r3, r3, #256
    1eea: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:514
;         format++;
    1eec: 693b         	ldr	r3, [r7, #16]
    1eee: 3301         	adds	r3, #1
    1ef0: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:515
;         if (*format == 'l') {
    1ef2: 693b         	ldr	r3, [r7, #16]
    1ef4: 781b         	ldrb	r3, [r3]
    1ef6: 2b6c         	cmp	r3, #108
    1ef8: d134         	bne	0x1f64 <$t+0x80>        @ imm = #104
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:516
;           flags |= FLAGS_LONG_LONG;
    1efa: 6e7b         	ldr	r3, [r7, #100]
    1efc: f443 7300    	orr	r3, r3, #512
    1f00: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:517
;           format++;
    1f02: 693b         	ldr	r3, [r7, #16]
    1f04: 3301         	adds	r3, #1
    1f06: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:519
;         break;
    1f08: e02c         	b	0x1f64 <$t+0x80>        @ imm = #88
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:521
;         flags |= FLAGS_SHORT;
    1f0a: 6e7b         	ldr	r3, [r7, #100]
    1f0c: f043 0380    	orr	r3, r3, #128
    1f10: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:522
;         format++;
    1f12: 693b         	ldr	r3, [r7, #16]
    1f14: 3301         	adds	r3, #1
    1f16: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:523
;         if (*format == 'h') {
    1f18: 693b         	ldr	r3, [r7, #16]
    1f1a: 781b         	ldrb	r3, [r3]
    1f1c: 2b68         	cmp	r3, #104
    1f1e: d125         	bne	0x1f6c <$t>             @ imm = #74
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:524
;           flags |= FLAGS_CHAR;
    1f20: 6e7b         	ldr	r3, [r7, #100]
    1f22: f043 0340    	orr	r3, r3, #64
    1f26: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:525
;           format++;
    1f28: 693b         	ldr	r3, [r7, #16]
    1f2a: 3301         	adds	r3, #1
    1f2c: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:527
;         break;
    1f2e: e01d         	b	0x1f6c <$t>             @ imm = #58
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:530
;         flags |= (sizeof(ptrdiff_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    1f30: 6e7b         	ldr	r3, [r7, #100]
    1f32: f443 7380    	orr	r3, r3, #256
    1f36: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:531
;         format++;
    1f38: 693b         	ldr	r3, [r7, #16]
    1f3a: 3301         	adds	r3, #1
    1f3c: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:532
;         break;
    1f3e: e016         	b	0x1f6e <$t+0x2>         @ imm = #44
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:535
;         flags |= (sizeof(intmax_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    1f40: 6e7b         	ldr	r3, [r7, #100]
    1f42: f443 7300    	orr	r3, r3, #512
    1f46: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:536
;         format++;
    1f48: 693b         	ldr	r3, [r7, #16]
    1f4a: 3301         	adds	r3, #1
    1f4c: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:537
;         break;
    1f4e: e00e         	b	0x1f6e <$t+0x2>         @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:539
;         flags |= (sizeof(size_t) == sizeof(long) ? FLAGS_LONG : FLAGS_LONG_LONG);
    1f50: 6e7b         	ldr	r3, [r7, #100]
    1f52: f443 7380    	orr	r3, r3, #256
    1f56: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:540
;         format++;
    1f58: 693b         	ldr	r3, [r7, #16]
    1f5a: 3301         	adds	r3, #1
    1f5c: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:541
;         break;
    1f5e: e006         	b	0x1f6e <$t+0x2>         @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:543
;         break;
    1f60: bf00         	nop
    1f62: e004         	b	0x1f6e <$t+0x2>         @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:519
;         break;
    1f64: bf00         	nop
    1f66: e002         	b	0x1f6e <$t+0x2>         @ imm = #4

00001f68 <$d>:
    1f68: 59 13 00 00  	.word	0x00001359

00001f6c <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:527
;         break;
    1f6c: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:547
;     switch (*format) {
    1f6e: 693b         	ldr	r3, [r7, #16]
    1f70: 781b         	ldrb	r3, [r3]
    1f72: 2b78         	cmp	r3, #120
    1f74: f300 82f9    	bgt.w	0x256a <$t+0x4fe>       @ imm = #1522
    1f78: 2b69         	cmp	r3, #105
    1f7a: da0b         	bge	0x1f94 <$t+0x28>        @ imm = #22
    1f7c: 2b25         	cmp	r3, #37
    1f7e: f000 82e8    	beq.w	0x2552 <$t+0x4e6>       @ imm = #1488
    1f82: 2b25         	cmp	r3, #37
    1f84: f2c0 82f1    	blt.w	0x256a <$t+0x4fe>       @ imm = #1506
    1f88: 2b66         	cmp	r3, #102
    1f8a: f300 82ee    	bgt.w	0x256a <$t+0x4fe>       @ imm = #1500
    1f8e: 2b46         	cmp	r3, #70
    1f90: da23         	bge	0x1fda <$t+0x6e>        @ imm = #70
    1f92: e2ea         	b	0x256a <$t+0x4fe>       @ imm = #1492
    1f94: 3b69         	subs	r3, #105
    1f96: 2201         	movs	r2, #1
    1f98: fa02 f303    	lsl.w	r3, r2, r3
    1f9c: f249 0241    	movw	r2, #36929
    1fa0: 401a         	ands	r2, r3
    1fa2: 2a00         	cmp	r2, #0
    1fa4: bf14         	ite	ne
    1fa6: 2201         	movne	r2, #1
    1fa8: 2200         	moveq	r2, #0
    1faa: b2d2         	uxtb	r2, r2
    1fac: 2a00         	cmp	r2, #0
    1fae: d15d         	bne	0x206c <$t>             @ imm = #186
    1fb0: f003 0280    	and	r2, r3, #128
    1fb4: 2a00         	cmp	r2, #0
    1fb6: bf14         	ite	ne
    1fb8: 2201         	movne	r2, #1
    1fba: 2200         	moveq	r2, #0
    1fbc: b2d2         	uxtb	r2, r2
    1fbe: 2a00         	cmp	r2, #0
    1fc0: f040 8279    	bne.w	0x24b6 <$t+0x44a>       @ imm = #1266
    1fc4: f403 6380    	and	r3, r3, #1024
    1fc8: 2b00         	cmp	r3, #0
    1fca: bf14         	ite	ne
    1fcc: 2301         	movne	r3, #1
    1fce: 2300         	moveq	r3, #0
    1fd0: b2db         	uxtb	r3, r3
    1fd2: 2b00         	cmp	r3, #0
    1fd4: f040 820b    	bne.w	0x23ee <$t+0x382>       @ imm = #1046
    1fd8: e2c7         	b	0x256a <$t+0x4fe>       @ imm = #1422
    1fda: 3b46         	subs	r3, #70
    1fdc: 2b20         	cmp	r3, #32
    1fde: f200 82c4    	bhi.w	0x256a <$t+0x4fe>       @ imm = #1416
    1fe2: a201         	adr	r2, #4 <$t+0x7b>
    1fe4: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]

00001fe8 <$d>:
    1fe8: 37 23 00 00  	.word	0x00002337
    1fec: 6b 25 00 00  	.word	0x0000256b
    1ff0: 6b 25 00 00  	.word	0x0000256b
    1ff4: 6b 25 00 00  	.word	0x0000256b
    1ff8: 6b 25 00 00  	.word	0x0000256b
    1ffc: 6b 25 00 00  	.word	0x0000256b
    2000: 6b 25 00 00  	.word	0x0000256b
    2004: 6b 25 00 00  	.word	0x0000256b
    2008: 6b 25 00 00  	.word	0x0000256b
    200c: 6b 25 00 00  	.word	0x0000256b
    2010: 6b 25 00 00  	.word	0x0000256b
    2014: 6b 25 00 00  	.word	0x0000256b
    2018: 6b 25 00 00  	.word	0x0000256b
    201c: 6b 25 00 00  	.word	0x0000256b
    2020: 6b 25 00 00  	.word	0x0000256b
    2024: 6b 25 00 00  	.word	0x0000256b
    2028: 6b 25 00 00  	.word	0x0000256b
    202c: 6b 25 00 00  	.word	0x0000256b
    2030: 6d 20 00 00  	.word	0x0000206d
    2034: 6b 25 00 00  	.word	0x0000256b
    2038: 6b 25 00 00  	.word	0x0000256b
    203c: 6b 25 00 00  	.word	0x0000256b
    2040: 6b 25 00 00  	.word	0x0000256b
    2044: 6b 25 00 00  	.word	0x0000256b
    2048: 6b 25 00 00  	.word	0x0000256b
    204c: 6b 25 00 00  	.word	0x0000256b
    2050: 6b 25 00 00  	.word	0x0000256b
    2054: 6b 25 00 00  	.word	0x0000256b
    2058: 6d 20 00 00  	.word	0x0000206d
    205c: 77 23 00 00  	.word	0x00002377
    2060: 6d 20 00 00  	.word	0x0000206d
    2064: 6b 25 00 00  	.word	0x0000256b
    2068: 37 23 00 00  	.word	0x00002337

0000206c <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:557
;         if (*format == 'x' || *format == 'X') {
    206c: 693b         	ldr	r3, [r7, #16]
    206e: 781b         	ldrb	r3, [r3]
    2070: 2b78         	cmp	r3, #120
    2072: d003         	beq	0x207c <$t+0x10>        @ imm = #6
    2074: 693b         	ldr	r3, [r7, #16]
    2076: 781b         	ldrb	r3, [r3]
    2078: 2b58         	cmp	r3, #88
    207a: d102         	bne	0x2082 <$t+0x16>        @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:558
;           base = 16U;
    207c: 2310         	movs	r3, #16
    207e: 653b         	str	r3, [r7, #80]
    2080: e013         	b	0x20aa <$t+0x3e>        @ imm = #38
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:559
;         } else if (*format == 'o') {
    2082: 693b         	ldr	r3, [r7, #16]
    2084: 781b         	ldrb	r3, [r3]
    2086: 2b6f         	cmp	r3, #111
    2088: d102         	bne	0x2090 <$t+0x24>        @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:560
;           base = 8U;
    208a: 2308         	movs	r3, #8
    208c: 653b         	str	r3, [r7, #80]
    208e: e00c         	b	0x20aa <$t+0x3e>        @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:561
;         } else if (*format == 'b') {
    2090: 693b         	ldr	r3, [r7, #16]
    2092: 781b         	ldrb	r3, [r3]
    2094: 2b62         	cmp	r3, #98
    2096: d102         	bne	0x209e <$t+0x32>        @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:562
;           base = 2U;
    2098: 2302         	movs	r3, #2
    209a: 653b         	str	r3, [r7, #80]
    209c: e005         	b	0x20aa <$t+0x3e>        @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:564
;           base = 10U;
    209e: 230a         	movs	r3, #10
    20a0: 653b         	str	r3, [r7, #80]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:565
;           flags &= ~FLAGS_HASH;  // no hash for dec format
    20a2: 6e7b         	ldr	r3, [r7, #100]
    20a4: f023 0310    	bic	r3, r3, #16
    20a8: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:568
;         if (*format == 'X') {
    20aa: 693b         	ldr	r3, [r7, #16]
    20ac: 781b         	ldrb	r3, [r3]
    20ae: 2b58         	cmp	r3, #88
    20b0: d103         	bne	0x20ba <$t+0x4e>        @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:569
;           flags |= FLAGS_UPPERCASE;
    20b2: 6e7b         	ldr	r3, [r7, #100]
    20b4: f043 0320    	orr	r3, r3, #32
    20b8: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:573
;         if ((*format != 'i') && (*format != 'd')) {
    20ba: 693b         	ldr	r3, [r7, #16]
    20bc: 781b         	ldrb	r3, [r3]
    20be: 2b69         	cmp	r3, #105
    20c0: d007         	beq	0x20d2 <$t+0x66>        @ imm = #14
    20c2: 693b         	ldr	r3, [r7, #16]
    20c4: 781b         	ldrb	r3, [r3]
    20c6: 2b64         	cmp	r3, #100
    20c8: d003         	beq	0x20d2 <$t+0x66>        @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:574
;           flags &= ~(FLAGS_PLUS | FLAGS_SPACE);
    20ca: 6e7b         	ldr	r3, [r7, #100]
    20cc: f023 030c    	bic	r3, r3, #12
    20d0: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:578
;         if (flags & FLAGS_PRECISION) {
    20d2: 6e7b         	ldr	r3, [r7, #100]
    20d4: f403 6380    	and	r3, r3, #1024
    20d8: 2b00         	cmp	r3, #0
    20da: d003         	beq	0x20e4 <$t+0x78>        @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:579
;           flags &= ~FLAGS_ZEROPAD;
    20dc: 6e7b         	ldr	r3, [r7, #100]
    20de: f023 0301    	bic	r3, r3, #1
    20e2: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:583
;         if ((*format == 'i') || (*format == 'd')) {
    20e4: 693b         	ldr	r3, [r7, #16]
    20e6: 781b         	ldrb	r3, [r3]
    20e8: 2b69         	cmp	r3, #105
    20ea: d004         	beq	0x20f6 <$t+0x8a>        @ imm = #8
    20ec: 693b         	ldr	r3, [r7, #16]
    20ee: 781b         	ldrb	r3, [r3]
    20f0: 2b64         	cmp	r3, #100
    20f2: f040 80a0    	bne.w	0x2236 <$t+0x1ca>       @ imm = #320
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:585
;           if (flags & FLAGS_LONG_LONG) {
    20f6: 6e7b         	ldr	r3, [r7, #100]
    20f8: f403 7300    	and	r3, r3, #512
    20fc: 2b00         	cmp	r3, #0
    20fe: d039         	beq	0x2174 <$t+0x108>       @ imm = #114
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:587
;             const long long value = va_arg(va, long long);
    2100: f8d7 3088    	ldr.w	r3, [r7, #136]
    2104: 3307         	adds	r3, #7
    2106: f023 0307    	bic	r3, r3, #7
    210a: f103 0208    	add.w	r2, r3, #8
    210e: f8c7 2088    	str.w	r2, [r7, #136]
    2112: e9d3 2300    	ldrd	r2, r3, [r3]
    2116: e9c7 2308    	strd	r2, r3, [r7, #32]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:588
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, (unsigned long long)(value > 0 ? value : 0 - value),
    211a: e9d7 2308    	ldrd	r2, r3, [r7, #32]
    211e: 2b00         	cmp	r3, #0
    2120: da06         	bge	0x2130 <$t+0xc4>        @ imm = #12
    2122: 2100         	movs	r1, #0
    2124: f1d2 0800    	rsbs.w	r8, r2, #0
    2128: eb61 0903    	sbc.w	r9, r1, r3
    212c: 4642         	mov	r2, r8
    212e: 464b         	mov	r3, r9
    2130: 4614         	mov	r4, r2
    2132: 461d         	mov	r5, r3
    2134: e9d7 0108    	ldrd	r0, r1, [r7, #32]
    2138: f04f 0200    	mov.w	r2, #0
    213c: f04f 0300    	mov.w	r3, #0
    2140: 0fca         	lsrs	r2, r1, #31
    2142: 2300         	movs	r3, #0
    2144: b2d3         	uxtb	r3, r2
    2146: 6d3a         	ldr	r2, [r7, #80]
    2148: 2100         	movs	r1, #0
    214a: 4692         	mov	r10, r2
    214c: 468b         	mov	r11, r1
    214e: 6e7a         	ldr	r2, [r7, #100]
    2150: 9208         	str	r2, [sp, #32]
    2152: 6e3a         	ldr	r2, [r7, #96]
    2154: 9207         	str	r2, [sp, #28]
    2156: 6dfa         	ldr	r2, [r7, #92]
    2158: 9206         	str	r2, [sp, #24]
    215a: e9cd ab04    	strd	r10, r11, [sp, #16]
    215e: 9302         	str	r3, [sp, #8]
    2160: e9cd 4500    	strd	r4, r5, [sp]
    2164: 697b         	ldr	r3, [r7, #20]
    2166: 6d7a         	ldr	r2, [r7, #84]
    2168: 69b9         	ldr	r1, [r7, #24]
    216a: 69f8         	ldr	r0, [r7, #28]
    216c: f7ff faeb    	bl	0x1746 <_ntoa_long_long> @ imm = #-2602
    2170: 6578         	str	r0, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:585
;           if (flags & FLAGS_LONG_LONG) {
    2172: e0dc         	b	0x232e <$t+0x2c2>       @ imm = #440
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:591
;           } else if (flags & FLAGS_LONG) {
    2174: 6e7b         	ldr	r3, [r7, #100]
    2176: f403 7380    	and	r3, r3, #256
    217a: 2b00         	cmp	r3, #0
    217c: d020         	beq	0x21c0 <$t+0x154>       @ imm = #64
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:592
;             const long value = va_arg(va, long);
    217e: f8d7 3088    	ldr.w	r3, [r7, #136]
    2182: 1d1a         	adds	r2, r3, #4
    2184: f8c7 2088    	str.w	r2, [r7, #136]
    2188: 681b         	ldr	r3, [r3]
    218a: 62fb         	str	r3, [r7, #44]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:593
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)(value > 0 ? value : 0 - value), value < 0, base,
    218c: 6afb         	ldr	r3, [r7, #44]
    218e: 2b00         	cmp	r3, #0
    2190: bfb8         	it	lt
    2192: 425b         	rsblt	r3, r3, #0
    2194: 4619         	mov	r1, r3
    2196: 6afb         	ldr	r3, [r7, #44]
    2198: 0fdb         	lsrs	r3, r3, #31
    219a: b2db         	uxtb	r3, r3
    219c: 6e7a         	ldr	r2, [r7, #100]
    219e: 9205         	str	r2, [sp, #20]
    21a0: 6e3a         	ldr	r2, [r7, #96]
    21a2: 9204         	str	r2, [sp, #16]
    21a4: 6dfa         	ldr	r2, [r7, #92]
    21a6: 9203         	str	r2, [sp, #12]
    21a8: 6d3a         	ldr	r2, [r7, #80]
    21aa: 9202         	str	r2, [sp, #8]
    21ac: 9301         	str	r3, [sp, #4]
    21ae: 9100         	str	r1, [sp]
    21b0: 697b         	ldr	r3, [r7, #20]
    21b2: 6d7a         	ldr	r2, [r7, #84]
    21b4: 69b9         	ldr	r1, [r7, #24]
    21b6: 69f8         	ldr	r0, [r7, #28]
    21b8: f7ff fa5f    	bl	0x167a <_ntoa_long>     @ imm = #-2882
    21bc: 6578         	str	r0, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:585
;           if (flags & FLAGS_LONG_LONG) {
    21be: e0b6         	b	0x232e <$t+0x2c2>       @ imm = #364
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:596
;             const int value = (flags & FLAGS_CHAR)    ? (char)va_arg(va, int)
    21c0: 6e7b         	ldr	r3, [r7, #100]
    21c2: f003 0340    	and	r3, r3, #64
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:597
;                               : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int)
    21c6: 2b00         	cmp	r3, #0
    21c8: d007         	beq	0x21da <$t+0x16e>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:596
;             const int value = (flags & FLAGS_CHAR)    ? (char)va_arg(va, int)
    21ca: f8d7 3088    	ldr.w	r3, [r7, #136]
    21ce: 1d1a         	adds	r2, r3, #4
    21d0: f8c7 2088    	str.w	r2, [r7, #136]
    21d4: 681b         	ldr	r3, [r3]
    21d6: b2db         	uxtb	r3, r3
    21d8: e012         	b	0x2200 <$t+0x194>       @ imm = #36
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:597
;                               : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int)
    21da: 6e7b         	ldr	r3, [r7, #100]
    21dc: f003 0380    	and	r3, r3, #128
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:598
;                                                       : va_arg(va, int);
    21e0: 2b00         	cmp	r3, #0
    21e2: d007         	beq	0x21f4 <$t+0x188>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:597
;                               : (flags & FLAGS_SHORT) ? (short int)va_arg(va, int)
    21e4: f8d7 3088    	ldr.w	r3, [r7, #136]
    21e8: 1d1a         	adds	r2, r3, #4
    21ea: f8c7 2088    	str.w	r2, [r7, #136]
    21ee: 681b         	ldr	r3, [r3]
    21f0: b21b         	sxth	r3, r3
    21f2: e005         	b	0x2200 <$t+0x194>       @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:598
;                                                       : va_arg(va, int);
    21f4: f8d7 3088    	ldr.w	r3, [r7, #136]
    21f8: 1d1a         	adds	r2, r3, #4
    21fa: f8c7 2088    	str.w	r2, [r7, #136]
    21fe: 681b         	ldr	r3, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:596
;             const int value = (flags & FLAGS_CHAR)    ? (char)va_arg(va, int)
    2200: 633b         	str	r3, [r7, #48]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:599
;             idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned int)(value > 0 ? value : 0 - value), value < 0, base,
    2202: 6b3b         	ldr	r3, [r7, #48]
    2204: 2b00         	cmp	r3, #0
    2206: bfb8         	it	lt
    2208: 425b         	rsblt	r3, r3, #0
    220a: 4619         	mov	r1, r3
    220c: 6b3b         	ldr	r3, [r7, #48]
    220e: 0fdb         	lsrs	r3, r3, #31
    2210: b2db         	uxtb	r3, r3
    2212: 6e7a         	ldr	r2, [r7, #100]
    2214: 9205         	str	r2, [sp, #20]
    2216: 6e3a         	ldr	r2, [r7, #96]
    2218: 9204         	str	r2, [sp, #16]
    221a: 6dfa         	ldr	r2, [r7, #92]
    221c: 9203         	str	r2, [sp, #12]
    221e: 6d3a         	ldr	r2, [r7, #80]
    2220: 9202         	str	r2, [sp, #8]
    2222: 9301         	str	r3, [sp, #4]
    2224: 9100         	str	r1, [sp]
    2226: 697b         	ldr	r3, [r7, #20]
    2228: 6d7a         	ldr	r2, [r7, #84]
    222a: 69b9         	ldr	r1, [r7, #24]
    222c: 69f8         	ldr	r0, [r7, #28]
    222e: f7ff fa24    	bl	0x167a <_ntoa_long>     @ imm = #-3000
    2232: 6578         	str	r0, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:585
;           if (flags & FLAGS_LONG_LONG) {
    2234: e07b         	b	0x232e <$t+0x2c2>       @ imm = #246
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:604
;           if (flags & FLAGS_LONG_LONG) {
    2236: 6e7b         	ldr	r3, [r7, #100]
    2238: f403 7300    	and	r3, r3, #512
    223c: 2b00         	cmp	r3, #0
    223e: d024         	beq	0x228a <$t+0x21e>       @ imm = #72
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:606
;             idx = _ntoa_long_long(out, buffer, idx, maxlen, va_arg(va, unsigned long long), false, base, precision,
    2240: f8d7 3088    	ldr.w	r3, [r7, #136]
    2244: 3307         	adds	r3, #7
    2246: f023 0307    	bic	r3, r3, #7
    224a: f103 0208    	add.w	r2, r3, #8
    224e: f8c7 2088    	str.w	r2, [r7, #136]
    2252: e9d3 2300    	ldrd	r2, r3, [r3]
    2256: 6d39         	ldr	r1, [r7, #80]
    2258: 2000         	movs	r0, #0
    225a: 60b9         	str	r1, [r7, #8]
    225c: 60f8         	str	r0, [r7, #12]
    225e: 6e79         	ldr	r1, [r7, #100]
    2260: 9108         	str	r1, [sp, #32]
    2262: 6e39         	ldr	r1, [r7, #96]
    2264: 9107         	str	r1, [sp, #28]
    2266: 6df9         	ldr	r1, [r7, #92]
    2268: 9106         	str	r1, [sp, #24]
    226a: e9d7 0102    	ldrd	r0, r1, [r7, #8]
    226e: e9cd 0104    	strd	r0, r1, [sp, #16]
    2272: 2100         	movs	r1, #0
    2274: 9102         	str	r1, [sp, #8]
    2276: e9cd 2300    	strd	r2, r3, [sp]
    227a: 697b         	ldr	r3, [r7, #20]
    227c: 6d7a         	ldr	r2, [r7, #84]
    227e: 69b9         	ldr	r1, [r7, #24]
    2280: 69f8         	ldr	r0, [r7, #28]
    2282: f7ff fa60    	bl	0x1746 <_ntoa_long_long> @ imm = #-2880
    2286: 6578         	str	r0, [r7, #84]
    2288: e051         	b	0x232e <$t+0x2c2>       @ imm = #162
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:609
;           } else if (flags & FLAGS_LONG) {
    228a: 6e7b         	ldr	r3, [r7, #100]
    228c: f403 7380    	and	r3, r3, #256
    2290: 2b00         	cmp	r3, #0
    2292: d018         	beq	0x22c6 <$t+0x25a>       @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:610
;             idx = _ntoa_long(out, buffer, idx, maxlen, va_arg(va, unsigned long), false, base, precision, width, flags);
    2294: f8d7 3088    	ldr.w	r3, [r7, #136]
    2298: 1d1a         	adds	r2, r3, #4
    229a: f8c7 2088    	str.w	r2, [r7, #136]
    229e: 681b         	ldr	r3, [r3]
    22a0: 6e7a         	ldr	r2, [r7, #100]
    22a2: 9205         	str	r2, [sp, #20]
    22a4: 6e3a         	ldr	r2, [r7, #96]
    22a6: 9204         	str	r2, [sp, #16]
    22a8: 6dfa         	ldr	r2, [r7, #92]
    22aa: 9203         	str	r2, [sp, #12]
    22ac: 6d3a         	ldr	r2, [r7, #80]
    22ae: 9202         	str	r2, [sp, #8]
    22b0: 2200         	movs	r2, #0
    22b2: 9201         	str	r2, [sp, #4]
    22b4: 9300         	str	r3, [sp]
    22b6: 697b         	ldr	r3, [r7, #20]
    22b8: 6d7a         	ldr	r2, [r7, #84]
    22ba: 69b9         	ldr	r1, [r7, #24]
    22bc: 69f8         	ldr	r0, [r7, #28]
    22be: f7ff f9dc    	bl	0x167a <_ntoa_long>     @ imm = #-3144
    22c2: 6578         	str	r0, [r7, #84]
    22c4: e033         	b	0x232e <$t+0x2c2>       @ imm = #102
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:612
;             const unsigned int value = (flags & FLAGS_CHAR)    ? (unsigned char)va_arg(va, unsigned int)
    22c6: 6e7b         	ldr	r3, [r7, #100]
    22c8: f003 0340    	and	r3, r3, #64
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:613
;                                        : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int)
    22cc: 2b00         	cmp	r3, #0
    22ce: d007         	beq	0x22e0 <$t+0x274>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:612
;             const unsigned int value = (flags & FLAGS_CHAR)    ? (unsigned char)va_arg(va, unsigned int)
    22d0: f8d7 3088    	ldr.w	r3, [r7, #136]
    22d4: 1d1a         	adds	r2, r3, #4
    22d6: f8c7 2088    	str.w	r2, [r7, #136]
    22da: 681b         	ldr	r3, [r3]
    22dc: b2db         	uxtb	r3, r3
    22de: e012         	b	0x2306 <$t+0x29a>       @ imm = #36
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:613
;                                        : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int)
    22e0: 6e7b         	ldr	r3, [r7, #100]
    22e2: f003 0380    	and	r3, r3, #128
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:614
;                                                                : va_arg(va, unsigned int);
    22e6: 2b00         	cmp	r3, #0
    22e8: d007         	beq	0x22fa <$t+0x28e>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:613
;                                        : (flags & FLAGS_SHORT) ? (unsigned short int)va_arg(va, unsigned int)
    22ea: f8d7 3088    	ldr.w	r3, [r7, #136]
    22ee: 1d1a         	adds	r2, r3, #4
    22f0: f8c7 2088    	str.w	r2, [r7, #136]
    22f4: 681b         	ldr	r3, [r3]
    22f6: b29b         	uxth	r3, r3
    22f8: e005         	b	0x2306 <$t+0x29a>       @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:614
;                                                                : va_arg(va, unsigned int);
    22fa: f8d7 3088    	ldr.w	r3, [r7, #136]
    22fe: 1d1a         	adds	r2, r3, #4
    2300: f8c7 2088    	str.w	r2, [r7, #136]
    2304: 681b         	ldr	r3, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:612
;             const unsigned int value = (flags & FLAGS_CHAR)    ? (unsigned char)va_arg(va, unsigned int)
    2306: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:615
;             idx = _ntoa_long(out, buffer, idx, maxlen, value, false, base, precision, width, flags);
    2308: 6e7b         	ldr	r3, [r7, #100]
    230a: 9305         	str	r3, [sp, #20]
    230c: 6e3b         	ldr	r3, [r7, #96]
    230e: 9304         	str	r3, [sp, #16]
    2310: 6dfb         	ldr	r3, [r7, #92]
    2312: 9303         	str	r3, [sp, #12]
    2314: 6d3b         	ldr	r3, [r7, #80]
    2316: 9302         	str	r3, [sp, #8]
    2318: 2300         	movs	r3, #0
    231a: 9301         	str	r3, [sp, #4]
    231c: 6b7b         	ldr	r3, [r7, #52]
    231e: 9300         	str	r3, [sp]
    2320: 697b         	ldr	r3, [r7, #20]
    2322: 6d7a         	ldr	r2, [r7, #84]
    2324: 69b9         	ldr	r1, [r7, #24]
    2326: 69f8         	ldr	r0, [r7, #28]
    2328: f7ff f9a7    	bl	0x167a <_ntoa_long>     @ imm = #-3250
    232c: 6578         	str	r0, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:618
;         format++;
    232e: 693b         	ldr	r3, [r7, #16]
    2330: 3301         	adds	r3, #1
    2332: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:619
;         break;
    2334: e126         	b	0x2584 <$t+0x518>       @ imm = #588
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:624
;         idx = _ftoa(out, buffer, idx, maxlen, va_arg(va, double), precision, width, flags);
    2336: f8d7 3088    	ldr.w	r3, [r7, #136]
    233a: 3307         	adds	r3, #7
    233c: f023 0307    	bic	r3, r3, #7
    2340: f103 0208    	add.w	r2, r3, #8
    2344: f8c7 2088    	str.w	r2, [r7, #136]
    2348: ed93 7b00    	vldr	d7, [r3]
    234c: 6e7b         	ldr	r3, [r7, #100]
    234e: 9302         	str	r3, [sp, #8]
    2350: 6e3b         	ldr	r3, [r7, #96]
    2352: 9301         	str	r3, [sp, #4]
    2354: 6dfb         	ldr	r3, [r7, #92]
    2356: 9300         	str	r3, [sp]
    2358: eeb0 0a47    	vmov.f32	s0, s14
    235c: eef0 0a67    	vmov.f32	s1, s15
    2360: 697b         	ldr	r3, [r7, #20]
    2362: 6d7a         	ldr	r2, [r7, #84]
    2364: 69b9         	ldr	r1, [r7, #24]
    2366: 69f8         	ldr	r0, [r7, #28]
    2368: f7ff fa5a    	bl	0x1820 <_ftoa>          @ imm = #-2892
    236c: 6578         	str	r0, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:625
;         format++;
    236e: 693b         	ldr	r3, [r7, #16]
    2370: 3301         	adds	r3, #1
    2372: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:626
;         break;
    2374: e106         	b	0x2584 <$t+0x518>       @ imm = #524
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:629
;         unsigned int l = 1U;
    2376: 2301         	movs	r3, #1
    2378: 64fb         	str	r3, [r7, #76]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:631
;         if (!(flags & FLAGS_LEFT)) {
    237a: 6e7b         	ldr	r3, [r7, #100]
    237c: f003 0302    	and	r3, r3, #2
    2380: 2b00         	cmp	r3, #0
    2382: d10e         	bne	0x23a2 <$t+0x336>       @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:632
;           while (l++ < width) {
    2384: e007         	b	0x2396 <$t+0x32a>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:633
;             out(' ', buffer, idx++, maxlen);
    2386: 6d7a         	ldr	r2, [r7, #84]
    2388: 1c53         	adds	r3, r2, #1
    238a: 657b         	str	r3, [r7, #84]
    238c: 69fc         	ldr	r4, [r7, #28]
    238e: 697b         	ldr	r3, [r7, #20]
    2390: 69b9         	ldr	r1, [r7, #24]
    2392: 2020         	movs	r0, #32
    2394: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:632
;           while (l++ < width) {
    2396: 6cfb         	ldr	r3, [r7, #76]
    2398: 1c5a         	adds	r2, r3, #1
    239a: 64fa         	str	r2, [r7, #76]
    239c: 6e3a         	ldr	r2, [r7, #96]
    239e: 429a         	cmp	r2, r3
    23a0: d8f1         	bhi	0x2386 <$t+0x31a>       @ imm = #-30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:637
;         out((char)va_arg(va, int), buffer, idx++, maxlen);
    23a2: f8d7 3088    	ldr.w	r3, [r7, #136]
    23a6: 1d1a         	adds	r2, r3, #4
    23a8: f8c7 2088    	str.w	r2, [r7, #136]
    23ac: 681b         	ldr	r3, [r3]
    23ae: b2d8         	uxtb	r0, r3
    23b0: 6d7a         	ldr	r2, [r7, #84]
    23b2: 1c53         	adds	r3, r2, #1
    23b4: 657b         	str	r3, [r7, #84]
    23b6: 69fc         	ldr	r4, [r7, #28]
    23b8: 697b         	ldr	r3, [r7, #20]
    23ba: 69b9         	ldr	r1, [r7, #24]
    23bc: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:639
;         if (flags & FLAGS_LEFT) {
    23be: 6e7b         	ldr	r3, [r7, #100]
    23c0: f003 0302    	and	r3, r3, #2
    23c4: 2b00         	cmp	r3, #0
    23c6: d00e         	beq	0x23e6 <$t+0x37a>       @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:640
;           while (l++ < width) {
    23c8: e007         	b	0x23da <$t+0x36e>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:641
;             out(' ', buffer, idx++, maxlen);
    23ca: 6d7a         	ldr	r2, [r7, #84]
    23cc: 1c53         	adds	r3, r2, #1
    23ce: 657b         	str	r3, [r7, #84]
    23d0: 69fc         	ldr	r4, [r7, #28]
    23d2: 697b         	ldr	r3, [r7, #20]
    23d4: 69b9         	ldr	r1, [r7, #24]
    23d6: 2020         	movs	r0, #32
    23d8: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:640
;           while (l++ < width) {
    23da: 6cfb         	ldr	r3, [r7, #76]
    23dc: 1c5a         	adds	r2, r3, #1
    23de: 64fa         	str	r2, [r7, #76]
    23e0: 6e3a         	ldr	r2, [r7, #96]
    23e2: 429a         	cmp	r2, r3
    23e4: d8f1         	bhi	0x23ca <$t+0x35e>       @ imm = #-30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:644
;         format++;
    23e6: 693b         	ldr	r3, [r7, #16]
    23e8: 3301         	adds	r3, #1
    23ea: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:645
;         break;
    23ec: e0ca         	b	0x2584 <$t+0x518>       @ imm = #404
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:649
;         const char* p = va_arg(va, char*);
    23ee: f8d7 3088    	ldr.w	r3, [r7, #136]
    23f2: 1d1a         	adds	r2, r3, #4
    23f4: f8c7 2088    	str.w	r2, [r7, #136]
    23f8: 681b         	ldr	r3, [r3]
    23fa: 64bb         	str	r3, [r7, #72]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:650
;         unsigned int l = _strnlen_s(p, precision ? precision : (size_t)-1);
    23fc: 6dfb         	ldr	r3, [r7, #92]
    23fe: 2b00         	cmp	r3, #0
    2400: d001         	beq	0x2406 <$t+0x39a>       @ imm = #2
    2402: 6dfb         	ldr	r3, [r7, #92]
    2404: e001         	b	0x240a <$t+0x39e>       @ imm = #2
    2406: f04f 33ff    	mov.w	r3, #4294967295
    240a: 4619         	mov	r1, r3
    240c: 6cb8         	ldr	r0, [r7, #72]
    240e: f7fe ffc4    	bl	0x139a <_strnlen_s>     @ imm = #-4216
    2412: 6478         	str	r0, [r7, #68]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:652
;         if (flags & FLAGS_PRECISION) {
    2414: 6e7b         	ldr	r3, [r7, #100]
    2416: f403 6380    	and	r3, r3, #1024
    241a: 2b00         	cmp	r3, #0
    241c: d005         	beq	0x242a <$t+0x3be>       @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:653
;           l = (l < precision ? l : precision);
    241e: 6c7a         	ldr	r2, [r7, #68]
    2420: 6dfb         	ldr	r3, [r7, #92]
    2422: 4293         	cmp	r3, r2
    2424: bf28         	it	hs
    2426: 4613         	movhs	r3, r2
    2428: 647b         	str	r3, [r7, #68]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:655
;         if (!(flags & FLAGS_LEFT)) {
    242a: 6e7b         	ldr	r3, [r7, #100]
    242c: f003 0302    	and	r3, r3, #2
    2430: 2b00         	cmp	r3, #0
    2432: d11a         	bne	0x246a <$t+0x3fe>       @ imm = #52
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:656
;           while (l++ < width) {
    2434: e007         	b	0x2446 <$t+0x3da>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:657
;             out(' ', buffer, idx++, maxlen);
    2436: 6d7a         	ldr	r2, [r7, #84]
    2438: 1c53         	adds	r3, r2, #1
    243a: 657b         	str	r3, [r7, #84]
    243c: 69fc         	ldr	r4, [r7, #28]
    243e: 697b         	ldr	r3, [r7, #20]
    2440: 69b9         	ldr	r1, [r7, #24]
    2442: 2020         	movs	r0, #32
    2444: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:656
;           while (l++ < width) {
    2446: 6c7b         	ldr	r3, [r7, #68]
    2448: 1c5a         	adds	r2, r3, #1
    244a: 647a         	str	r2, [r7, #68]
    244c: 6e3a         	ldr	r2, [r7, #96]
    244e: 429a         	cmp	r2, r3
    2450: d8f1         	bhi	0x2436 <$t+0x3ca>       @ imm = #-30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:661
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    2452: e00a         	b	0x246a <$t+0x3fe>       @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:662
;           out(*(p++), buffer, idx++, maxlen);
    2454: 6cbb         	ldr	r3, [r7, #72]
    2456: 1c5a         	adds	r2, r3, #1
    2458: 64ba         	str	r2, [r7, #72]
    245a: 7818         	ldrb	r0, [r3]
    245c: 6d7a         	ldr	r2, [r7, #84]
    245e: 1c53         	adds	r3, r2, #1
    2460: 657b         	str	r3, [r7, #84]
    2462: 69fc         	ldr	r4, [r7, #28]
    2464: 697b         	ldr	r3, [r7, #20]
    2466: 69b9         	ldr	r1, [r7, #24]
    2468: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:661
;         while ((*p != 0) && (!(flags & FLAGS_PRECISION) || precision--)) {
    246a: 6cbb         	ldr	r3, [r7, #72]
    246c: 781b         	ldrb	r3, [r3]
    246e: 2b00         	cmp	r3, #0
    2470: d009         	beq	0x2486 <$t+0x41a>       @ imm = #18
    2472: 6e7b         	ldr	r3, [r7, #100]
    2474: f403 6380    	and	r3, r3, #1024
    2478: 2b00         	cmp	r3, #0
    247a: d0eb         	beq	0x2454 <$t+0x3e8>       @ imm = #-42
    247c: 6dfb         	ldr	r3, [r7, #92]
    247e: 1e5a         	subs	r2, r3, #1
    2480: 65fa         	str	r2, [r7, #92]
    2482: 2b00         	cmp	r3, #0
    2484: d1e6         	bne	0x2454 <$t+0x3e8>       @ imm = #-52
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:665
;         if (flags & FLAGS_LEFT) {
    2486: 6e7b         	ldr	r3, [r7, #100]
    2488: f003 0302    	and	r3, r3, #2
    248c: 2b00         	cmp	r3, #0
    248e: d00e         	beq	0x24ae <$t+0x442>       @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:666
;           while (l++ < width) {
    2490: e007         	b	0x24a2 <$t+0x436>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:667
;             out(' ', buffer, idx++, maxlen);
    2492: 6d7a         	ldr	r2, [r7, #84]
    2494: 1c53         	adds	r3, r2, #1
    2496: 657b         	str	r3, [r7, #84]
    2498: 69fc         	ldr	r4, [r7, #28]
    249a: 697b         	ldr	r3, [r7, #20]
    249c: 69b9         	ldr	r1, [r7, #24]
    249e: 2020         	movs	r0, #32
    24a0: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:666
;           while (l++ < width) {
    24a2: 6c7b         	ldr	r3, [r7, #68]
    24a4: 1c5a         	adds	r2, r3, #1
    24a6: 647a         	str	r2, [r7, #68]
    24a8: 6e3a         	ldr	r2, [r7, #96]
    24aa: 429a         	cmp	r2, r3
    24ac: d8f1         	bhi	0x2492 <$t+0x426>       @ imm = #-30
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:670
;         format++;
    24ae: 693b         	ldr	r3, [r7, #16]
    24b0: 3301         	adds	r3, #1
    24b2: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:671
;         break;
    24b4: e066         	b	0x2584 <$t+0x518>       @ imm = #204
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:675
;         width = sizeof(void*) * 2U;
    24b6: 2308         	movs	r3, #8
    24b8: 663b         	str	r3, [r7, #96]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:676
;         flags |= FLAGS_ZEROPAD | FLAGS_UPPERCASE;
    24ba: 6e7b         	ldr	r3, [r7, #100]
    24bc: f043 0321    	orr	r3, r3, #33
    24c0: 667b         	str	r3, [r7, #100]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:678
;         const bool is_ll = sizeof(uintptr_t) == sizeof(long long);
    24c2: 2300         	movs	r3, #0
    24c4: f887 303b    	strb.w	r3, [r7, #59]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:679
;         if (is_ll) {
    24c8: f897 303b    	ldrb.w	r3, [r7, #59]
    24cc: 2b00         	cmp	r3, #0
    24ce: d023         	beq	0x2518 <$t+0x4ac>       @ imm = #70
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:680
;           idx = _ntoa_long_long(out, buffer, idx, maxlen, (uintptr_t)va_arg(va, void*), false, 16U, precision, width,
    24d0: f8d7 3088    	ldr.w	r3, [r7, #136]
    24d4: 1d1a         	adds	r2, r3, #4
    24d6: f8c7 2088    	str.w	r2, [r7, #136]
    24da: 681b         	ldr	r3, [r3]
    24dc: 461a         	mov	r2, r3
    24de: 2300         	movs	r3, #0
    24e0: 603a         	str	r2, [r7]
    24e2: 607b         	str	r3, [r7, #4]
    24e4: 6e7b         	ldr	r3, [r7, #100]
    24e6: 9308         	str	r3, [sp, #32]
    24e8: 6e3b         	ldr	r3, [r7, #96]
    24ea: 9307         	str	r3, [sp, #28]
    24ec: 6dfb         	ldr	r3, [r7, #92]
    24ee: 9306         	str	r3, [sp, #24]
    24f0: f04f 0210    	mov.w	r2, #16
    24f4: f04f 0300    	mov.w	r3, #0
    24f8: e9cd 2304    	strd	r2, r3, [sp, #16]
    24fc: 2300         	movs	r3, #0
    24fe: 9302         	str	r3, [sp, #8]
    2500: e9d7 3400    	ldrd	r3, r4, [r7]
    2504: e9cd 3400    	strd	r3, r4, [sp]
    2508: 697b         	ldr	r3, [r7, #20]
    250a: 6d7a         	ldr	r2, [r7, #84]
    250c: 69b9         	ldr	r1, [r7, #24]
    250e: 69f8         	ldr	r0, [r7, #28]
    2510: f7ff f919    	bl	0x1746 <_ntoa_long_long> @ imm = #-3534
    2514: 6578         	str	r0, [r7, #84]
    2516: e018         	b	0x254a <$t+0x4de>       @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:684
;           idx = _ntoa_long(out, buffer, idx, maxlen, (unsigned long)((uintptr_t)va_arg(va, void*)), false, 16U,
    2518: f8d7 3088    	ldr.w	r3, [r7, #136]
    251c: 1d1a         	adds	r2, r3, #4
    251e: f8c7 2088    	str.w	r2, [r7, #136]
    2522: 681b         	ldr	r3, [r3]
    2524: 461a         	mov	r2, r3
    2526: 6e7b         	ldr	r3, [r7, #100]
    2528: 9305         	str	r3, [sp, #20]
    252a: 6e3b         	ldr	r3, [r7, #96]
    252c: 9304         	str	r3, [sp, #16]
    252e: 6dfb         	ldr	r3, [r7, #92]
    2530: 9303         	str	r3, [sp, #12]
    2532: 2310         	movs	r3, #16
    2534: 9302         	str	r3, [sp, #8]
    2536: 2300         	movs	r3, #0
    2538: 9301         	str	r3, [sp, #4]
    253a: 9200         	str	r2, [sp]
    253c: 697b         	ldr	r3, [r7, #20]
    253e: 6d7a         	ldr	r2, [r7, #84]
    2540: 69b9         	ldr	r1, [r7, #24]
    2542: 69f8         	ldr	r0, [r7, #28]
    2544: f7ff f899    	bl	0x167a <_ntoa_long>     @ imm = #-3790
    2548: 6578         	str	r0, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:689
;         format++;
    254a: 693b         	ldr	r3, [r7, #16]
    254c: 3301         	adds	r3, #1
    254e: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:690
;         break;
    2550: e018         	b	0x2584 <$t+0x518>       @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:694
;         out('%', buffer, idx++, maxlen);
    2552: 6d7a         	ldr	r2, [r7, #84]
    2554: 1c53         	adds	r3, r2, #1
    2556: 657b         	str	r3, [r7, #84]
    2558: 69fc         	ldr	r4, [r7, #28]
    255a: 697b         	ldr	r3, [r7, #20]
    255c: 69b9         	ldr	r1, [r7, #24]
    255e: 2025         	movs	r0, #37
    2560: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:695
;         format++;
    2562: 693b         	ldr	r3, [r7, #16]
    2564: 3301         	adds	r3, #1
    2566: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:696
;         break;
    2568: e00c         	b	0x2584 <$t+0x518>       @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:699
;         out(*format, buffer, idx++, maxlen);
    256a: 693b         	ldr	r3, [r7, #16]
    256c: 7818         	ldrb	r0, [r3]
    256e: 6d7a         	ldr	r2, [r7, #84]
    2570: 1c53         	adds	r3, r2, #1
    2572: 657b         	str	r3, [r7, #84]
    2574: 69fc         	ldr	r4, [r7, #28]
    2576: 697b         	ldr	r3, [r7, #20]
    2578: 69b9         	ldr	r1, [r7, #24]
    257a: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:700
;         format++;
    257c: 693b         	ldr	r3, [r7, #16]
    257e: 3301         	adds	r3, #1
    2580: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:701
;         break;
    2582: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:434
;   while (*format) {
    2584: 693b         	ldr	r3, [r7, #16]
    2586: 781b         	ldrb	r3, [r3]
    2588: 2b00         	cmp	r3, #0
    258a: f47f aba9    	bne.w	0x1ce0 <_vsnprintf+0x24> @ imm = #-2222
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:706
;   out((char)0, buffer, idx < maxlen ? idx : maxlen - 1U, maxlen);
    258e: 6d7a         	ldr	r2, [r7, #84]
    2590: 697b         	ldr	r3, [r7, #20]
    2592: 429a         	cmp	r2, r3
    2594: d302         	blo	0x259c <$t+0x530>       @ imm = #4
    2596: 697b         	ldr	r3, [r7, #20]
    2598: 1e5a         	subs	r2, r3, #1
    259a: e000         	b	0x259e <$t+0x532>       @ imm = #0
    259c: 6d7a         	ldr	r2, [r7, #84]
    259e: 69fc         	ldr	r4, [r7, #28]
    25a0: 697b         	ldr	r3, [r7, #20]
    25a2: 69b9         	ldr	r1, [r7, #24]
    25a4: 2000         	movs	r0, #0
    25a6: 47a0         	blx	r4
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:709
;   return (int)idx;
    25a8: 6d7b         	ldr	r3, [r7, #84]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:710
; }
    25aa: 4618         	mov	r0, r3
    25ac: 3768         	adds	r7, #104
    25ae: 46bd         	mov	sp, r7
    25b0: e8bd 8fb0    	pop.w	{r4, r5, r7, r8, r9, r10, r11, pc}

000025b4 <printf_>:
; printf_():
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:714
; int printf_(const char* format, ...) {
    25b4: b40f         	push	{r0, r1, r2, r3}
    25b6: b580         	push	{r7, lr}
    25b8: b086         	sub	sp, #24
    25ba: af02         	add	r7, sp, #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:716
;   va_start(va, format);
    25bc: f107 031c    	add.w	r3, r7, #28
    25c0: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:718
;   const int ret = _vsnprintf(_out_char, buffer, (size_t)-1, format, va);
    25c2: 1d39         	adds	r1, r7, #4
    25c4: 68bb         	ldr	r3, [r7, #8]
    25c6: 9300         	str	r3, [sp]
    25c8: 69bb         	ldr	r3, [r7, #24]
    25ca: f04f 32ff    	mov.w	r2, #4294967295
    25ce: 4806         	ldr	r0, [pc, #24]           @ 0x25e8 <$d>
    25d0: f7ff fb74    	bl	0x1cbc <_vsnprintf>     @ imm = #-2328
    25d4: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:720
;   return ret;
    25d6: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/printf.c:721
; }
    25d8: 4618         	mov	r0, r3
    25da: 3710         	adds	r7, #16
    25dc: 46bd         	mov	sp, r7
    25de: e8bd 4080    	pop.w	{r7, lr}
    25e2: b004         	add	sp, #16
    25e4: 4770         	bx	lr
    25e6: bf00         	nop

000025e8 <$d>:
    25e8: 75 13 00 00  	.word	0x00001375

000025ec <radio_stop>:
; radio_stop():
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:24
; void radio_stop() {
    25ec: b480         	push	{r7}
    25ee: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:25
;   NRF_RADIO->TASKS_DISABLE = 1;
    25f0: 4b05         	ldr	r3, [pc, #20]           @ 0x2608 <$d>
    25f2: 2201         	movs	r2, #1
    25f4: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:26
;   NRF_CLOCK->TASKS_HFCLKSTOP = 1;
    25f6: f04f 4380    	mov.w	r3, #1073741824
    25fa: 2201         	movs	r2, #1
    25fc: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:27
; }
    25fe: bf00         	nop
    2600: 46bd         	mov	sp, r7
    2602: f85d 7b04    	ldr	r7, [sp], #4
    2606: 4770         	bx	lr

00002608 <$d>:
    2608: 00 10 00 40  	.word	0x40001000

0000260c <radio_cb_unregister>:
; radio_cb_unregister():
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:67
; int radio_cb_unregister(radio_evt_t evt) {
    260c: b480         	push	{r7}
    260e: b083         	sub	sp, #12
    2610: af00         	add	r7, sp, #0
    2612: 4603         	mov	r3, r0
    2614: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:68
;   switch (evt) {
    2616: 79fb         	ldrb	r3, [r7, #7]
    2618: 2b05         	cmp	r3, #5
    261a: d843         	bhi	0x26a4 <$t+0x68>        @ imm = #134
    261c: a201         	adr	r2, #4 <radio_cb_unregister+0x15>
    261e: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]
    2622: bf00         	nop

00002624 <$d>:
    2624: 3d 26 00 00  	.word	0x0000263d
    2628: 5f 26 00 00  	.word	0x0000265f
    262c: 4d 26 00 00  	.word	0x0000264d
    2630: 71 26 00 00  	.word	0x00002671
    2634: 83 26 00 00  	.word	0x00002683
    2638: 95 26 00 00  	.word	0x00002695

0000263c <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:70
;       cb_disabled = NULL;
    263c: 4b1e         	ldr	r3, [pc, #120]          @ 0x26b8 <$d>
    263e: 2200         	movs	r2, #0
    2640: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:71
;       NRF_RADIO->INTENCLR = RADIO_INTENCLR_DISABLED_Msk;
    2642: 4b1e         	ldr	r3, [pc, #120]          @ 0x26bc <$d+0x4>
    2644: 2210         	movs	r2, #16
    2646: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:72
;       break;
    264a: e02e         	b	0x26aa <$t+0x6e>        @ imm = #92
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:74
;       cb_rxready = NULL;
    264c: 4b1c         	ldr	r3, [pc, #112]          @ 0x26c0 <$d+0x8>
    264e: 2200         	movs	r2, #0
    2650: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:75
;       NRF_RADIO->INTENCLR = RADIO_INTENCLR_RXREADY_Msk;
    2652: 4b1a         	ldr	r3, [pc, #104]          @ 0x26bc <$d+0x4>
    2654: f44f 0280    	mov.w	r2, #4194304
    2658: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:76
;       break;
    265c: e025         	b	0x26aa <$t+0x6e>        @ imm = #74
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:78
;       cb_txready = NULL;
    265e: 4b19         	ldr	r3, [pc, #100]          @ 0x26c4 <$d+0xc>
    2660: 2200         	movs	r2, #0
    2662: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:79
;       NRF_RADIO->INTENCLR = RADIO_INTENCLR_TXREADY_Msk;
    2664: 4b15         	ldr	r3, [pc, #84]           @ 0x26bc <$d+0x4>
    2666: f44f 1200    	mov.w	r2, #2097152
    266a: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:80
;       break;
    266e: e01c         	b	0x26aa <$t+0x6e>        @ imm = #56
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:82
;       cb_crcok = NULL;
    2670: 4b15         	ldr	r3, [pc, #84]           @ 0x26c8 <$d+0x10>
    2672: 2200         	movs	r2, #0
    2674: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:83
;       NRF_RADIO->INTENCLR = RADIO_INTENCLR_CRCOK_Msk;
    2676: 4b11         	ldr	r3, [pc, #68]           @ 0x26bc <$d+0x4>
    2678: f44f 5280    	mov.w	r2, #4096
    267c: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:84
;       break;
    2680: e013         	b	0x26aa <$t+0x6e>        @ imm = #38
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:86
;       cb_crcerr = NULL;
    2682: 4b12         	ldr	r3, [pc, #72]           @ 0x26cc <$d+0x14>
    2684: 2200         	movs	r2, #0
    2686: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:87
;       NRF_RADIO->INTENCLR = RADIO_INTENCLR_CRCERROR_Msk;
    2688: 4b0c         	ldr	r3, [pc, #48]           @ 0x26bc <$d+0x4>
    268a: f44f 5200    	mov.w	r2, #8192
    268e: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:88
;       break;
    2692: e00a         	b	0x26aa <$t+0x6e>        @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:90
;       cb_address = NULL;
    2694: 4b0e         	ldr	r3, [pc, #56]           @ 0x26d0 <$d+0x18>
    2696: 2200         	movs	r2, #0
    2698: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:91
;       NRF_RADIO->INTENCLR = RADIO_INTENCLR_ADDRESS_Msk;
    269a: 4b08         	ldr	r3, [pc, #32]           @ 0x26bc <$d+0x4>
    269c: 2202         	movs	r2, #2
    269e: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:92
;       break;
    26a2: e002         	b	0x26aa <$t+0x6e>        @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:94
;       return -1;
    26a4: f04f 33ff    	mov.w	r3, #4294967295
    26a8: e000         	b	0x26ac <$t+0x70>        @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:96
;   return 0;
    26aa: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:97
; }
    26ac: 4618         	mov	r0, r3
    26ae: 370c         	adds	r7, #12
    26b0: 46bd         	mov	sp, r7
    26b2: f85d 7b04    	ldr	r7, [sp], #4
    26b6: 4770         	bx	lr

000026b8 <$d>:
    26b8: 5c 08 00 20  	.word	0x2000085c
    26bc: 00 10 00 40  	.word	0x40001000
    26c0: 64 08 00 20  	.word	0x20000864
    26c4: 60 08 00 20  	.word	0x20000860
    26c8: 68 08 00 20  	.word	0x20000868
    26cc: 6c 08 00 20  	.word	0x2000086c
    26d0: 70 08 00 20  	.word	0x20000870

000026d4 <RADIO_IRQHandler>:
; RADIO_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:99
; void RADIO_IRQHandler(void) {
    26d4: b580         	push	{r7, lr}
    26d6: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:100
;   if (NRF_RADIO->EVENTS_DISABLED == 1) {
    26d8: 4b30         	ldr	r3, [pc, #192]          @ 0x279c <$d>
    26da: f8d3 3110    	ldr.w	r3, [r3, #272]
    26de: 2b01         	cmp	r3, #1
    26e0: d10a         	bne	0x26f8 <RADIO_IRQHandler+0x24> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:101
;     NRF_RADIO->EVENTS_DISABLED = 0;
    26e2: 4b2e         	ldr	r3, [pc, #184]          @ 0x279c <$d>
    26e4: 2200         	movs	r2, #0
    26e6: f8c3 2110    	str.w	r2, [r3, #272]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:102
;     if (cb_disabled != NULL)
    26ea: 4b2d         	ldr	r3, [pc, #180]          @ 0x27a0 <$d+0x4>
    26ec: 681b         	ldr	r3, [r3]
    26ee: 2b00         	cmp	r3, #0
    26f0: d002         	beq	0x26f8 <RADIO_IRQHandler+0x24> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:103
;       cb_disabled();
    26f2: 4b2b         	ldr	r3, [pc, #172]          @ 0x27a0 <$d+0x4>
    26f4: 681b         	ldr	r3, [r3]
    26f6: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:105
;   if (NRF_RADIO->EVENTS_RXREADY == 1) {
    26f8: 4b28         	ldr	r3, [pc, #160]          @ 0x279c <$d>
    26fa: f8d3 3158    	ldr.w	r3, [r3, #344]
    26fe: 2b01         	cmp	r3, #1
    2700: d10a         	bne	0x2718 <RADIO_IRQHandler+0x44> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:106
;     NRF_RADIO->EVENTS_RXREADY = 0;
    2702: 4b26         	ldr	r3, [pc, #152]          @ 0x279c <$d>
    2704: 2200         	movs	r2, #0
    2706: f8c3 2158    	str.w	r2, [r3, #344]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:107
;     if (cb_rxready != NULL)
    270a: 4b26         	ldr	r3, [pc, #152]          @ 0x27a4 <$d+0x8>
    270c: 681b         	ldr	r3, [r3]
    270e: 2b00         	cmp	r3, #0
    2710: d002         	beq	0x2718 <RADIO_IRQHandler+0x44> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:108
;       cb_rxready();
    2712: 4b24         	ldr	r3, [pc, #144]          @ 0x27a4 <$d+0x8>
    2714: 681b         	ldr	r3, [r3]
    2716: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:110
;   if (NRF_RADIO->EVENTS_TXREADY == 1) {
    2718: 4b20         	ldr	r3, [pc, #128]          @ 0x279c <$d>
    271a: f8d3 3154    	ldr.w	r3, [r3, #340]
    271e: 2b01         	cmp	r3, #1
    2720: d10a         	bne	0x2738 <RADIO_IRQHandler+0x64> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:111
;     NRF_RADIO->EVENTS_TXREADY = 0;
    2722: 4b1e         	ldr	r3, [pc, #120]          @ 0x279c <$d>
    2724: 2200         	movs	r2, #0
    2726: f8c3 2154    	str.w	r2, [r3, #340]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:112
;     if (cb_txready != NULL)
    272a: 4b1f         	ldr	r3, [pc, #124]          @ 0x27a8 <$d+0xc>
    272c: 681b         	ldr	r3, [r3]
    272e: 2b00         	cmp	r3, #0
    2730: d002         	beq	0x2738 <RADIO_IRQHandler+0x64> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:113
;       cb_txready();
    2732: 4b1d         	ldr	r3, [pc, #116]          @ 0x27a8 <$d+0xc>
    2734: 681b         	ldr	r3, [r3]
    2736: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:115
;   if (NRF_RADIO->EVENTS_CRCOK == 1) {
    2738: 4b18         	ldr	r3, [pc, #96]           @ 0x279c <$d>
    273a: f8d3 3130    	ldr.w	r3, [r3, #304]
    273e: 2b01         	cmp	r3, #1
    2740: d10a         	bne	0x2758 <RADIO_IRQHandler+0x84> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:116
;     NRF_RADIO->EVENTS_CRCOK = 0;
    2742: 4b16         	ldr	r3, [pc, #88]           @ 0x279c <$d>
    2744: 2200         	movs	r2, #0
    2746: f8c3 2130    	str.w	r2, [r3, #304]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:117
;     if (cb_crcok != NULL)
    274a: 4b18         	ldr	r3, [pc, #96]           @ 0x27ac <$d+0x10>
    274c: 681b         	ldr	r3, [r3]
    274e: 2b00         	cmp	r3, #0
    2750: d002         	beq	0x2758 <RADIO_IRQHandler+0x84> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:118
;       cb_crcok();
    2752: 4b16         	ldr	r3, [pc, #88]           @ 0x27ac <$d+0x10>
    2754: 681b         	ldr	r3, [r3]
    2756: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:120
;   if (NRF_RADIO->EVENTS_CRCERROR == 1) {
    2758: 4b10         	ldr	r3, [pc, #64]           @ 0x279c <$d>
    275a: f8d3 3134    	ldr.w	r3, [r3, #308]
    275e: 2b01         	cmp	r3, #1
    2760: d10a         	bne	0x2778 <RADIO_IRQHandler+0xa4> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:121
;     NRF_RADIO->EVENTS_CRCERROR = 0;
    2762: 4b0e         	ldr	r3, [pc, #56]           @ 0x279c <$d>
    2764: 2200         	movs	r2, #0
    2766: f8c3 2134    	str.w	r2, [r3, #308]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:122
;     if (cb_crcerr != NULL)
    276a: 4b11         	ldr	r3, [pc, #68]           @ 0x27b0 <$d+0x14>
    276c: 681b         	ldr	r3, [r3]
    276e: 2b00         	cmp	r3, #0
    2770: d002         	beq	0x2778 <RADIO_IRQHandler+0xa4> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:123
;       cb_crcerr();
    2772: 4b0f         	ldr	r3, [pc, #60]           @ 0x27b0 <$d+0x14>
    2774: 681b         	ldr	r3, [r3]
    2776: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:125
;   if (NRF_RADIO->EVENTS_ADDRESS == 1) {
    2778: 4b08         	ldr	r3, [pc, #32]           @ 0x279c <$d>
    277a: f8d3 3104    	ldr.w	r3, [r3, #260]
    277e: 2b01         	cmp	r3, #1
    2780: d10a         	bne	0x2798 <RADIO_IRQHandler+0xc4> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:126
;     NRF_RADIO->EVENTS_ADDRESS = 0;
    2782: 4b06         	ldr	r3, [pc, #24]           @ 0x279c <$d>
    2784: 2200         	movs	r2, #0
    2786: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:127
;     if (cb_address != NULL)
    278a: 4b0a         	ldr	r3, [pc, #40]           @ 0x27b4 <$d+0x18>
    278c: 681b         	ldr	r3, [r3]
    278e: 2b00         	cmp	r3, #0
    2790: d002         	beq	0x2798 <RADIO_IRQHandler+0xc4> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:128
;       cb_address();
    2792: 4b08         	ldr	r3, [pc, #32]           @ 0x27b4 <$d+0x18>
    2794: 681b         	ldr	r3, [r3]
    2796: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/radio.c:130
; }
    2798: bf00         	nop
    279a: bd80         	pop	{r7, pc}

0000279c <$d>:
    279c: 00 10 00 40  	.word	0x40001000
    27a0: 5c 08 00 20  	.word	0x2000085c
    27a4: 64 08 00 20  	.word	0x20000864
    27a8: 60 08 00 20  	.word	0x20000860
    27ac: 68 08 00 20  	.word	0x20000868
    27b0: 6c 08 00 20  	.word	0x2000086c
    27b4: 70 08 00 20  	.word	0x20000870

000027b8 <__NVIC_EnableIRQ>:
; __NVIC_EnableIRQ():
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1685
; {
    27b8: b480         	push	{r7}
    27ba: b083         	sub	sp, #12
    27bc: af00         	add	r7, sp, #0
    27be: 4603         	mov	r3, r0
    27c0: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1686
;   if ((int32_t)(IRQn) >= 0)
    27c2: f997 3007    	ldrsb.w	r3, [r7, #7]
    27c6: 2b00         	cmp	r3, #0
    27c8: db0b         	blt	0x27e2 <__NVIC_EnableIRQ+0x2a> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1689
;     NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    27ca: 79fb         	ldrb	r3, [r7, #7]
    27cc: f003 021f    	and	r2, r3, #31
    27d0: 4907         	ldr	r1, [pc, #28]           @ 0x27f0 <$d>
    27d2: f997 3007    	ldrsb.w	r3, [r7, #7]
    27d6: 095b         	lsrs	r3, r3, #5
    27d8: 2001         	movs	r0, #1
    27da: fa00 f202    	lsl.w	r2, r0, r2
    27de: f841 2023    	str.w	r2, [r1, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1692
; }
    27e2: bf00         	nop
    27e4: 370c         	adds	r7, #12
    27e6: 46bd         	mov	sp, r7
    27e8: f85d 7b04    	ldr	r7, [sp], #4
    27ec: 4770         	bx	lr
    27ee: bf00         	nop

000027f0 <$d>:
    27f0: 00 e1 00 e0  	.word	0xe000e100

000027f4 <nrf_gpio_pin_port_decode>:
; nrf_gpio_pin_port_decode():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:582
; {
    27f4: b580         	push	{r7, lr}
    27f6: b082         	sub	sp, #8
    27f8: af00         	add	r7, sp, #0
    27fa: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:585
;     switch (nrf_gpio_pin_port_number_extract(p_pin))
    27fc: 6878         	ldr	r0, [r7, #4]
    27fe: f000 f850    	bl	0x28a2 <nrf_gpio_pin_port_number_extract> @ imm = #160
    2802: 4603         	mov	r3, r0
    2804: 2b01         	cmp	r3, #1
    2806: d002         	beq	0x280e <nrf_gpio_pin_port_decode+0x1a> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:591
;         case 0: return NRF_P0;
    2808: f04f 43a0    	mov.w	r3, #1342177280
    280c: e000         	b	0x2810 <nrf_gpio_pin_port_decode+0x1c> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:595
;         case 1: return NRF_P1;
    280e: 4b02         	ldr	r3, [pc, #8]            @ 0x2818 <$d>
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:598
; }
    2810: 4618         	mov	r0, r3
    2812: 3708         	adds	r7, #8
    2814: 46bd         	mov	sp, r7
    2816: bd80         	pop	{r7, pc}

00002818 <$d>:
    2818: 00 03 00 50  	.word	0x50000300

0000281c <nrf_gpio_cfg>:
; nrf_gpio_cfg():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:628
; {
    281c: b580         	push	{r7, lr}
    281e: b084         	sub	sp, #16
    2820: af00         	add	r7, sp, #0
    2822: 6078         	str	r0, [r7, #4]
    2824: 4608         	mov	r0, r1
    2826: 4611         	mov	r1, r2
    2828: 461a         	mov	r2, r3
    282a: 4603         	mov	r3, r0
    282c: 70fb         	strb	r3, [r7, #3]
    282e: 460b         	mov	r3, r1
    2830: 70bb         	strb	r3, [r7, #2]
    2832: 4613         	mov	r3, r2
    2834: 707b         	strb	r3, [r7, #1]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:629
;     NRF_GPIO_Type * reg = nrf_gpio_pin_port_decode(&pin_number);
    2836: 1d3b         	adds	r3, r7, #4
    2838: 4618         	mov	r0, r3
    283a: f7ff ffdb    	bl	0x27f4 <nrf_gpio_pin_port_decode> @ imm = #-74
    283e: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:635
;     uint32_t cnf = 0;
    2840: 2300         	movs	r3, #0
    2842: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:637
;     cnf |= ((uint32_t)dir << GPIO_PIN_CNF_DIR_Pos)     |
    2844: 78fa         	ldrb	r2, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:638
;            ((uint32_t)input << GPIO_PIN_CNF_INPUT_Pos) |
    2846: 78bb         	ldrb	r3, [r7, #2]
    2848: 005b         	lsls	r3, r3, #1
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:637
;     cnf |= ((uint32_t)dir << GPIO_PIN_CNF_DIR_Pos)     |
    284a: 431a         	orrs	r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:639
;            ((uint32_t)pull << GPIO_PIN_CNF_PULL_Pos)   |
    284c: 787b         	ldrb	r3, [r7, #1]
    284e: 009b         	lsls	r3, r3, #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:638
;            ((uint32_t)input << GPIO_PIN_CNF_INPUT_Pos) |
    2850: 431a         	orrs	r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:640
;            ((uint32_t)drive << GPIO_PIN_CNF_DRIVE_Pos) |
    2852: 7e3b         	ldrb	r3, [r7, #24]
    2854: 021b         	lsls	r3, r3, #8
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:639
;            ((uint32_t)pull << GPIO_PIN_CNF_PULL_Pos)   |
    2856: 431a         	orrs	r2, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:641
;            ((uint32_t)sense << GPIO_PIN_CNF_SENSE_Pos);
    2858: 7f3b         	ldrb	r3, [r7, #28]
    285a: 041b         	lsls	r3, r3, #16
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:640
;            ((uint32_t)drive << GPIO_PIN_CNF_DRIVE_Pos) |
    285c: 4313         	orrs	r3, r2
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:637
;     cnf |= ((uint32_t)dir << GPIO_PIN_CNF_DIR_Pos)     |
    285e: 68ba         	ldr	r2, [r7, #8]
    2860: 4313         	orrs	r3, r2
    2862: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:643
;     reg->PIN_CNF[pin_number] = cnf;
    2864: 687a         	ldr	r2, [r7, #4]
    2866: 68fb         	ldr	r3, [r7, #12]
    2868: f502 72e0    	add.w	r2, r2, #448
    286c: 68b9         	ldr	r1, [r7, #8]
    286e: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:644
; }
    2872: bf00         	nop
    2874: 3710         	adds	r7, #16
    2876: 46bd         	mov	sp, r7
    2878: bd80         	pop	{r7, pc}

0000287a <nrf_gpio_cfg_input>:
; nrf_gpio_cfg_input():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:685
; {
    287a: b580         	push	{r7, lr}
    287c: b084         	sub	sp, #16
    287e: af02         	add	r7, sp, #8
    2880: 6078         	str	r0, [r7, #4]
    2882: 460b         	mov	r3, r1
    2884: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:686
;     nrf_gpio_cfg(
    2886: 78fb         	ldrb	r3, [r7, #3]
    2888: 2200         	movs	r2, #0
    288a: 9201         	str	r2, [sp, #4]
    288c: 2200         	movs	r2, #0
    288e: 9200         	str	r2, [sp]
    2890: 2200         	movs	r2, #0
    2892: 2100         	movs	r1, #0
    2894: 6878         	ldr	r0, [r7, #4]
    2896: f7ff ffc1    	bl	0x281c <nrf_gpio_cfg>   @ imm = #-126
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:693
; }
    289a: bf00         	nop
    289c: 3708         	adds	r7, #8
    289e: 46bd         	mov	sp, r7
    28a0: bd80         	pop	{r7, pc}

000028a2 <nrf_gpio_pin_port_number_extract>:
; nrf_gpio_pin_port_number_extract():
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1025
; {
    28a2: b480         	push	{r7}
    28a4: b085         	sub	sp, #20
    28a6: af00         	add	r7, sp, #0
    28a8: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1026
;     uint32_t pin_number = *p_pin;
    28aa: 687b         	ldr	r3, [r7, #4]
    28ac: 681b         	ldr	r3, [r3]
    28ae: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1027
;     *p_pin = pin_number & 0x1F;
    28b0: 68fb         	ldr	r3, [r7, #12]
    28b2: f003 021f    	and	r2, r3, #31
    28b6: 687b         	ldr	r3, [r7, #4]
    28b8: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1029
;     return pin_number >> 5;
    28ba: 68fb         	ldr	r3, [r7, #12]
    28bc: 095b         	lsrs	r3, r3, #5
; /Users/janstiefel/code/fork/Riotee_SDK/external/nrfx/hal/nrf_gpio.h:1030
; }
    28be: 4618         	mov	r0, r3
    28c0: 3714         	adds	r7, #20
    28c2: 46bd         	mov	sp, r7
    28c4: f85d 7b04    	ldr	r7, [sp], #4
    28c8: 4770         	bx	lr

000028ca <riotee_i2c_set_freq>:
; riotee_i2c_set_freq():
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:30
; void riotee_i2c_set_freq(riotee_i2c_freq_t freq) {
    28ca: b480         	push	{r7}
    28cc: b083         	sub	sp, #12
    28ce: af00         	add	r7, sp, #0
    28d0: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:31
;   NRF_TWIM1->FREQUENCY = freq;
    28d2: f04f 2240    	mov.w	r2, #1073758208
    28d6: 687b         	ldr	r3, [r7, #4]
    28d8: f8c2 3524    	str.w	r3, [r2, #1316]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:32
; }
    28dc: bf00         	nop
    28de: 370c         	adds	r7, #12
    28e0: 46bd         	mov	sp, r7
    28e2: f85d 7b04    	ldr	r7, [sp], #4
    28e6: 4770         	bx	lr

000028e8 <SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler>:
; SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:34
; void SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler(void) {
    28e8: b580         	push	{r7, lr}
    28ea: b084         	sub	sp, #16
    28ec: af02         	add	r7, sp, #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:35
;   BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    28ee: 2300         	movs	r3, #0
    28f0: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:37
;   if (NRF_TWIM1->EVENTS_ERROR == 1) {
    28f2: f04f 2340    	mov.w	r3, #1073758208
    28f6: f8d3 3124    	ldr.w	r3, [r3, #292]
    28fa: 2b01         	cmp	r3, #1
    28fc: d114         	bne	0x2928 <SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler+0x40> @ imm = #40
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:38
;     NRF_TWIM1->EVENTS_ERROR = 0;
    28fe: f04f 2340    	mov.w	r3, #1073758208
    2902: 2200         	movs	r2, #0
    2904: f8c3 2124    	str.w	r2, [r3, #292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:39
;     NRF_TWIM1->TASKS_STOP = 1;
    2908: f04f 2340    	mov.w	r3, #1073758208
    290c: 2201         	movs	r2, #1
    290e: 615a         	str	r2, [r3, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:40
;     xTaskNotifyIndexedFromISR(usr_task_handle, 1, EVT_I2C_ERROR, eSetBits, &xHigherPriorityTaskWoken);
    2910: 4b1c         	ldr	r3, [pc, #112]          @ 0x2984 <$d>
    2912: 6818         	ldr	r0, [r3]
    2914: 1d3b         	adds	r3, r7, #4
    2916: 9301         	str	r3, [sp, #4]
    2918: 2300         	movs	r3, #0
    291a: 9300         	str	r3, [sp]
    291c: 2301         	movs	r3, #1
    291e: 4a1a         	ldr	r2, [pc, #104]          @ 0x2988 <$d+0x4>
    2920: 2101         	movs	r1, #1
    2922: f002 fa99    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #9522
    2926: e016         	b	0x2956 <SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler+0x6e> @ imm = #44
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:42
;   } else if (NRF_TWIM1->EVENTS_STOPPED == 1) {
    2928: f04f 2340    	mov.w	r3, #1073758208
    292c: f8d3 3104    	ldr.w	r3, [r3, #260]
    2930: 2b01         	cmp	r3, #1
    2932: d110         	bne	0x2956 <SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler+0x6e> @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:43
;     NRF_TWIM1->EVENTS_STOPPED = 0;
    2934: f04f 2340    	mov.w	r3, #1073758208
    2938: 2200         	movs	r2, #0
    293a: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:44
;     xTaskNotifyIndexedFromISR(usr_task_handle, 1, EVT_I2C_STOPPED, eSetBits, &xHigherPriorityTaskWoken);
    293e: 4b11         	ldr	r3, [pc, #68]           @ 0x2984 <$d>
    2940: 6818         	ldr	r0, [r3]
    2942: 1d3b         	adds	r3, r7, #4
    2944: 9301         	str	r3, [sp, #4]
    2946: 2300         	movs	r3, #0
    2948: 9300         	str	r3, [sp]
    294a: 2301         	movs	r3, #1
    294c: f44f 0280    	mov.w	r2, #4194304
    2950: 2101         	movs	r1, #1
    2952: f002 fa81    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #9474
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:46
;   NRF_TWIM1->ENABLE = TWIM_ENABLE_ENABLE_Disabled << TWIM_ENABLE_ENABLE_Pos;
    2956: f04f 2340    	mov.w	r3, #1073758208
    295a: 2200         	movs	r2, #0
    295c: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:47
;   i2c_teardown_ptr = NULL;
    2960: 4b0a         	ldr	r3, [pc, #40]           @ 0x298c <$d+0x8>
    2962: 2200         	movs	r2, #0
    2964: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:48
;   portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    2966: 687b         	ldr	r3, [r7, #4]
    2968: 2b00         	cmp	r3, #0
    296a: d007         	beq	0x297c <SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQHandler+0x94> @ imm = #14
    296c: 4b08         	ldr	r3, [pc, #32]           @ 0x2990 <$d+0xc>
    296e: f04f 5280    	mov.w	r2, #268435456
    2972: 601a         	str	r2, [r3]
    2974: f3bf 8f4f    	dsb	sy
    2978: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:49
; }
    297c: bf00         	nop
    297e: 3708         	adds	r7, #8
    2980: 46bd         	mov	sp, r7
    2982: bd80         	pop	{r7, pc}

00002984 <$d>:
    2984: 54 07 00 20  	.word	0x20000754
    2988: 01 00 40 00  	.word	0x00400001
    298c: 48 09 00 20  	.word	0x20000948
    2990: 04 ed 00 e0  	.word	0xe000ed04

00002994 <i2c_init>:
; i2c_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:51
; static void i2c_init(unsigned int pin_sda, unsigned int pin_scl) {
    2994: b580         	push	{r7, lr}
    2996: b082         	sub	sp, #8
    2998: af00         	add	r7, sp, #0
    299a: 6078         	str	r0, [r7, #4]
    299c: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:52
;   NRF_TWIM1->PSEL.SCL = pin_scl;
    299e: f04f 2240    	mov.w	r2, #1073758208
    29a2: 683b         	ldr	r3, [r7]
    29a4: f8c2 3508    	str.w	r3, [r2, #1288]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:53
;   NRF_TWIM1->PSEL.SDA = pin_sda;
    29a8: f04f 2240    	mov.w	r2, #1073758208
    29ac: 687b         	ldr	r3, [r7, #4]
    29ae: f8c2 350c    	str.w	r3, [r2, #1292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:56
;   nrf_gpio_cfg_input(pin_scl, NRF_GPIO_PIN_PULLUP);
    29b2: 2103         	movs	r1, #3
    29b4: 6838         	ldr	r0, [r7]
    29b6: f7ff ff60    	bl	0x287a <nrf_gpio_cfg_input> @ imm = #-320
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:57
;   nrf_gpio_cfg_input(pin_sda, NRF_GPIO_PIN_PULLUP);
    29ba: 2103         	movs	r1, #3
    29bc: 6878         	ldr	r0, [r7, #4]
    29be: f7ff ff5c    	bl	0x287a <nrf_gpio_cfg_input> @ imm = #-328
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:59
;   riotee_i2c_set_freq(RIOTEE_I2C_FREQ_250K);
    29c2: f04f 6080    	mov.w	r0, #67108864
    29c6: f7ff ff80    	bl	0x28ca <riotee_i2c_set_freq> @ imm = #-256
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:60
;   NRF_TWIM1->SHORTS = 0;
    29ca: f04f 2340    	mov.w	r3, #1073758208
    29ce: 2200         	movs	r2, #0
    29d0: f8c3 2200    	str.w	r2, [r3, #512]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:62
;   NVIC_EnableIRQ(SPIM1_SPIS1_TWIM1_TWIS1_SPI1_TWI1_IRQn);
    29d4: 2004         	movs	r0, #4
    29d6: f7ff feef    	bl	0x27b8 <__NVIC_EnableIRQ> @ imm = #-546
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:63
; }
    29da: bf00         	nop
    29dc: 3708         	adds	r7, #8
    29de: 46bd         	mov	sp, r7
    29e0: bd80         	pop	{r7, pc}

000029e2 <riotee_i2c_init>:
; riotee_i2c_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:65
; void riotee_i2c_init(void) {
    29e2: b580         	push	{r7, lr}
    29e4: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:66
;   i2c_init(PIN_SYS_SDA, PIN_SYS_SCL);
    29e6: 2128         	movs	r1, #40
    29e8: 2006         	movs	r0, #6
    29ea: f7ff ffd3    	bl	0x2994 <i2c_init>       @ imm = #-90
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:67
; }
    29ee: bf00         	nop
    29f0: bd80         	pop	{r7, pc}

000029f2 <riotee_i2c_write_atomic>:
; riotee_i2c_write_atomic():
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:150
; riotee_rc_t riotee_i2c_write_atomic(uint8_t dev_addr, uint8_t *data, size_t n_data) {
    29f2: b580         	push	{r7, lr}
    29f4: b086         	sub	sp, #24
    29f6: af00         	add	r7, sp, #0
    29f8: 4603         	mov	r3, r0
    29fa: 60b9         	str	r1, [r7, #8]
    29fc: 607a         	str	r2, [r7, #4]
    29fe: 73fb         	strb	r3, [r7, #15]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:151
;   taskENTER_CRITICAL();
    2a00: f002 fc8a    	bl	0x5318 <vPortEnterCritical> @ imm = #10516
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:153
;   NRF_TWIM1->ENABLE = TWIM_ENABLE_ENABLE_Enabled << TWIM_ENABLE_ENABLE_Pos;
    2a04: f04f 2340    	mov.w	r3, #1073758208
    2a08: 2206         	movs	r2, #6
    2a0a: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:154
;   NRF_TWIM1->SHORTS = TWIM_SHORTS_LASTTX_STOP_Msk;
    2a0e: f04f 2340    	mov.w	r3, #1073758208
    2a12: f44f 7200    	mov.w	r2, #512
    2a16: f8c3 2200    	str.w	r2, [r3, #512]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:156
;   NRF_TWIM1->ADDRESS = dev_addr;
    2a1a: f04f 2240    	mov.w	r2, #1073758208
    2a1e: 7bfb         	ldrb	r3, [r7, #15]
    2a20: f8c2 3588    	str.w	r3, [r2, #1416]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:158
;   NRF_TWIM1->TXD.MAXCNT = n_data;
    2a24: f04f 2240    	mov.w	r2, #1073758208
    2a28: 687b         	ldr	r3, [r7, #4]
    2a2a: f8c2 3548    	str.w	r3, [r2, #1352]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:159
;   NRF_TWIM1->RXD.MAXCNT = 0;
    2a2e: f04f 2340    	mov.w	r3, #1073758208
    2a32: 2200         	movs	r2, #0
    2a34: f8c3 2538    	str.w	r2, [r3, #1336]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:160
;   NRF_TWIM1->TXD.PTR = (uint32_t)data;
    2a38: f04f 2240    	mov.w	r2, #1073758208
    2a3c: 68bb         	ldr	r3, [r7, #8]
    2a3e: f8c2 3544    	str.w	r3, [r2, #1348]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:163
;   NRF_TWIM1->INTENCLR = 0xFFFFFFFF;
    2a42: f04f 2340    	mov.w	r3, #1073758208
    2a46: f04f 32ff    	mov.w	r2, #4294967295
    2a4a: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:165
;   NRF_TWIM1->EVENTS_STOPPED = 0;
    2a4e: f04f 2340    	mov.w	r3, #1073758208
    2a52: 2200         	movs	r2, #0
    2a54: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:166
;   NRF_TWIM1->EVENTS_ERROR = 0;
    2a58: f04f 2340    	mov.w	r3, #1073758208
    2a5c: 2200         	movs	r2, #0
    2a5e: f8c3 2124    	str.w	r2, [r3, #292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:168
;   NRF_TWIM1->TASKS_STARTTX = 1;
    2a62: f04f 2340    	mov.w	r3, #1073758208
    2a66: 2201         	movs	r2, #1
    2a68: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:171
;     if (NRF_TWIM1->EVENTS_STOPPED == 1) {
    2a6a: f04f 2340    	mov.w	r3, #1073758208
    2a6e: f8d3 3104    	ldr.w	r3, [r3, #260]
    2a72: 2b01         	cmp	r3, #1
    2a74: d107         	bne	0x2a86 <riotee_i2c_write_atomic+0x94> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:172
;       NRF_TWIM1->EVENTS_STOPPED = 0;
    2a76: f04f 2340    	mov.w	r3, #1073758208
    2a7a: 2200         	movs	r2, #0
    2a7c: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:173
;       rc = RIOTEE_SUCCESS;
    2a80: 2300         	movs	r3, #0
    2a82: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:174
;       break;
    2a84: e00d         	b	0x2aa2 <riotee_i2c_write_atomic+0xb0> @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:176
;     if (NRF_TWIM1->EVENTS_ERROR == 1) {
    2a86: f04f 2340    	mov.w	r3, #1073758208
    2a8a: f8d3 3124    	ldr.w	r3, [r3, #292]
    2a8e: 2b01         	cmp	r3, #1
    2a90: d1eb         	bne	0x2a6a <riotee_i2c_write_atomic+0x78> @ imm = #-42
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:177
;       NRF_TWIM1->EVENTS_ERROR = 0;
    2a92: f04f 2340    	mov.w	r3, #1073758208
    2a96: 2200         	movs	r2, #0
    2a98: f8c3 2124    	str.w	r2, [r3, #292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:178
;       rc = RIOTEE_ERR_COMMI2C;
    2a9c: f06f 7300    	mvn	r3, #33554432
    2aa0: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:182
;   NRF_TWIM1->ENABLE = TWIM_ENABLE_ENABLE_Disabled << TWIM_ENABLE_ENABLE_Pos;
    2aa2: f04f 2340    	mov.w	r3, #1073758208
    2aa6: 2200         	movs	r2, #0
    2aa8: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:183
;   taskEXIT_CRITICAL();
    2aac: f002 fc4e    	bl	0x534c <vPortExitCritical> @ imm = #10396
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:184
;   return rc;
    2ab0: 697b         	ldr	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/i2c.c:185
; }
    2ab2: 4618         	mov	r0, r3
    2ab4: 3718         	adds	r7, #24
    2ab6: 46bd         	mov	sp, r7
    2ab8: bd80         	pop	{r7, pc}

00002aba <riotee_max20361_init>:
; riotee_max20361_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:55
; int riotee_max20361_init() {
    2aba: b580         	push	{r7, lr}
    2abc: b082         	sub	sp, #8
    2abe: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:60
;   tx_buf[0] = MAX20361_REG_DEV_CNTL;
    2ac0: 2308         	movs	r3, #8
    2ac2: 703b         	strb	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:61
;   tx_buf[1] = MAX_DEVCNTL_FRCWAKE_HIGH_Msk;
    2ac4: 2304         	movs	r3, #4
    2ac6: 707b         	strb	r3, [r7, #1]
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:62
;   if ((rc = riotee_i2c_write_atomic(I2C_DEVICE_ADDRESS, tx_buf, 2)) != 0)
    2ac8: 463b         	mov	r3, r7
    2aca: 2202         	movs	r2, #2
    2acc: 4619         	mov	r1, r3
    2ace: 2015         	movs	r0, #21
    2ad0: f7ff ff8f    	bl	0x29f2 <riotee_i2c_write_atomic> @ imm = #-226
    2ad4: 6078         	str	r0, [r7, #4]
    2ad6: 687b         	ldr	r3, [r7, #4]
    2ad8: 2b00         	cmp	r3, #0
    2ada: d001         	beq	0x2ae0 <riotee_max20361_init+0x26> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:63
;     return rc;
    2adc: 687b         	ldr	r3, [r7, #4]
    2ade: e00a         	b	0x2af6 <riotee_max20361_init+0x3c> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:66
;   tx_buf[0] = MAX20361_REG_SYS_REG_CFG;
    2ae0: 2304         	movs	r3, #4
    2ae2: 703b         	strb	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:67
;   tx_buf[1] = (MAX_SYSREGCFG_SYSREG_4750MV << MAX_SYSREGCFG_SYSREG_Pos);
    2ae4: 230f         	movs	r3, #15
    2ae6: 707b         	strb	r3, [r7, #1]
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:68
;   return riotee_i2c_write_atomic(I2C_DEVICE_ADDRESS, tx_buf, 2);
    2ae8: 463b         	mov	r3, r7
    2aea: 2202         	movs	r2, #2
    2aec: 4619         	mov	r1, r3
    2aee: 2015         	movs	r0, #21
    2af0: f7ff ff7f    	bl	0x29f2 <riotee_i2c_write_atomic> @ imm = #-258
    2af4: 4603         	mov	r3, r0
; /Users/janstiefel/code/fork/Riotee_SDK/core/max20361.c:69
; }
    2af6: 4618         	mov	r0, r3
    2af8: 3708         	adds	r7, #8
    2afa: 46bd         	mov	sp, r7
    2afc: bd80         	pop	{r7, pc}
    2afe: 0000         	movs	r0, r0

00002b00 <__NVIC_EnableIRQ>:
; __NVIC_EnableIRQ():
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1685
; {
    2b00: b480         	push	{r7}
    2b02: b083         	sub	sp, #12
    2b04: af00         	add	r7, sp, #0
    2b06: 4603         	mov	r3, r0
    2b08: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1686
;   if ((int32_t)(IRQn) >= 0)
    2b0a: f997 3007    	ldrsb.w	r3, [r7, #7]
    2b0e: 2b00         	cmp	r3, #0
    2b10: db0b         	blt	0x2b2a <__NVIC_EnableIRQ+0x2a> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1689
;     NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    2b12: 79fb         	ldrb	r3, [r7, #7]
    2b14: f003 021f    	and	r2, r3, #31
    2b18: 4907         	ldr	r1, [pc, #28]           @ 0x2b38 <$d>
    2b1a: f997 3007    	ldrsb.w	r3, [r7, #7]
    2b1e: 095b         	lsrs	r3, r3, #5
    2b20: 2001         	movs	r0, #1
    2b22: fa00 f202    	lsl.w	r2, r0, r2
    2b26: f841 2023    	str.w	r2, [r1, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1692
; }
    2b2a: bf00         	nop
    2b2c: 370c         	adds	r7, #12
    2b2e: 46bd         	mov	sp, r7
    2b30: f85d 7b04    	ldr	r7, [sp], #4
    2b34: 4770         	bx	lr
    2b36: bf00         	nop

00002b38 <$d>:
    2b38: 00 e1 00 e0  	.word	0xe000e100

00002b3c <RTC0_IRQHandler>:
; RTC0_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:25
; void RTC0_IRQHandler(void) {
    2b3c: b580         	push	{r7, lr}
    2b3e: b084         	sub	sp, #16
    2b40: af02         	add	r7, sp, #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:26
;   BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    2b42: 2300         	movs	r3, #0
    2b44: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:28
;   if ((NRF_RTC0->INTENSET & RTC_INTENSET_COMPARE0_Msk) && (NRF_RTC0->EVENTS_COMPARE[0] == 1)) {
    2b46: 4b34         	ldr	r3, [pc, #208]          @ 0x2c18 <$d>
    2b48: f8d3 3304    	ldr.w	r3, [r3, #772]
    2b4c: f403 3380    	and	r3, r3, #65536
    2b50: 2b00         	cmp	r3, #0
    2b52: d01e         	beq	0x2b92 <RTC0_IRQHandler+0x56> @ imm = #60
    2b54: 4b30         	ldr	r3, [pc, #192]          @ 0x2c18 <$d>
    2b56: f8d3 3140    	ldr.w	r3, [r3, #320]
    2b5a: 2b01         	cmp	r3, #1
    2b5c: d119         	bne	0x2b92 <RTC0_IRQHandler+0x56> @ imm = #50
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:29
;     NRF_RTC0->EVENTS_COMPARE[0] = 0;
    2b5e: 4b2e         	ldr	r3, [pc, #184]          @ 0x2c18 <$d>
    2b60: 2200         	movs	r2, #0
    2b62: f8c3 2140    	str.w	r2, [r3, #320]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:30
;     NRF_RTC0->EVTENCLR = RTC_EVTENCLR_COMPARE0_Msk;
    2b66: 4b2c         	ldr	r3, [pc, #176]          @ 0x2c18 <$d>
    2b68: f44f 3280    	mov.w	r2, #65536
    2b6c: f8c3 2348    	str.w	r2, [r3, #840]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:31
;     NRF_RTC0->INTENCLR = RTC_INTENCLR_COMPARE0_Msk;
    2b70: 4b29         	ldr	r3, [pc, #164]          @ 0x2c18 <$d>
    2b72: f44f 3280    	mov.w	r2, #65536
    2b76: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:33
;     xTaskNotifyIndexedFromISR(usr_task_handle, 1, EVT_RTC_BASE, eSetBits, &xHigherPriorityTaskWoken);
    2b7a: 4b28         	ldr	r3, [pc, #160]          @ 0x2c1c <$d+0x4>
    2b7c: 6818         	ldr	r0, [r3]
    2b7e: 1d3b         	adds	r3, r7, #4
    2b80: 9301         	str	r3, [sp, #4]
    2b82: 2300         	movs	r3, #0
    2b84: 9300         	str	r3, [sp]
    2b86: 2301         	movs	r3, #1
    2b88: f04f 6200    	mov.w	r2, #134217728
    2b8c: 2101         	movs	r1, #1
    2b8e: f002 f963    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #8902
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:35
;   if ((NRF_RTC0->INTENSET & RTC_INTENSET_COMPARE1_Msk) && (NRF_RTC0->EVENTS_COMPARE[1] == 1)) {
    2b92: 4b21         	ldr	r3, [pc, #132]          @ 0x2c18 <$d>
    2b94: f8d3 3304    	ldr.w	r3, [r3, #772]
    2b98: f403 3300    	and	r3, r3, #131072
    2b9c: 2b00         	cmp	r3, #0
    2b9e: d01e         	beq	0x2bde <RTC0_IRQHandler+0xa2> @ imm = #60
    2ba0: 4b1d         	ldr	r3, [pc, #116]          @ 0x2c18 <$d>
    2ba2: f8d3 3144    	ldr.w	r3, [r3, #324]
    2ba6: 2b01         	cmp	r3, #1
    2ba8: d119         	bne	0x2bde <RTC0_IRQHandler+0xa2> @ imm = #50
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:36
;     NRF_RTC0->EVENTS_COMPARE[1] = 0;
    2baa: 4b1b         	ldr	r3, [pc, #108]          @ 0x2c18 <$d>
    2bac: 2200         	movs	r2, #0
    2bae: f8c3 2144    	str.w	r2, [r3, #324]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:37
;     NRF_RTC0->EVTENCLR = RTC_EVTENCLR_COMPARE1_Msk;
    2bb2: 4b19         	ldr	r3, [pc, #100]          @ 0x2c18 <$d>
    2bb4: f44f 3200    	mov.w	r2, #131072
    2bb8: f8c3 2348    	str.w	r2, [r3, #840]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:38
;     NRF_RTC0->INTENCLR = RTC_INTENCLR_COMPARE1_Msk;
    2bbc: 4b16         	ldr	r3, [pc, #88]           @ 0x2c18 <$d>
    2bbe: f44f 3200    	mov.w	r2, #131072
    2bc2: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:40
;     xTaskNotifyIndexedFromISR(sys_task_handle, 1, EVT_RTC_BASE, eSetBits, &xHigherPriorityTaskWoken);
    2bc6: 4b16         	ldr	r3, [pc, #88]           @ 0x2c20 <$d+0x8>
    2bc8: 6818         	ldr	r0, [r3]
    2bca: 1d3b         	adds	r3, r7, #4
    2bcc: 9301         	str	r3, [sp, #4]
    2bce: 2300         	movs	r3, #0
    2bd0: 9300         	str	r3, [sp]
    2bd2: 2301         	movs	r3, #1
    2bd4: f04f 6200    	mov.w	r2, #134217728
    2bd8: 2101         	movs	r1, #1
    2bda: f002 f93d    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #8826
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:42
;   if ((NRF_RTC0->EVENTS_OVRFLW == 1)) {
    2bde: 4b0e         	ldr	r3, [pc, #56]           @ 0x2c18 <$d>
    2be0: f8d3 3104    	ldr.w	r3, [r3, #260]
    2be4: 2b01         	cmp	r3, #1
    2be6: d108         	bne	0x2bfa <RTC0_IRQHandler+0xbe> @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:43
;     NRF_RTC0->EVENTS_OVRFLW = 0;
    2be8: 4b0b         	ldr	r3, [pc, #44]           @ 0x2c18 <$d>
    2bea: 2200         	movs	r2, #0
    2bec: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:44
;     overflow_counter++;
    2bf0: 4b0c         	ldr	r3, [pc, #48]           @ 0x2c24 <$d+0xc>
    2bf2: 681b         	ldr	r3, [r3]
    2bf4: 3301         	adds	r3, #1
    2bf6: 4a0b         	ldr	r2, [pc, #44]           @ 0x2c24 <$d+0xc>
    2bf8: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:47
;   portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    2bfa: 687b         	ldr	r3, [r7, #4]
    2bfc: 2b00         	cmp	r3, #0
    2bfe: d007         	beq	0x2c10 <RTC0_IRQHandler+0xd4> @ imm = #14
    2c00: 4b09         	ldr	r3, [pc, #36]           @ 0x2c28 <$d+0x10>
    2c02: f04f 5280    	mov.w	r2, #268435456
    2c06: 601a         	str	r2, [r3]
    2c08: f3bf 8f4f    	dsb	sy
    2c0c: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:48
; }
    2c10: bf00         	nop
    2c12: 3708         	adds	r7, #8
    2c14: 46bd         	mov	sp, r7
    2c16: bd80         	pop	{r7, pc}

00002c18 <$d>:
    2c18: 00 b0 00 40  	.word	0x4000b000
    2c1c: 54 07 00 20  	.word	0x20000754
    2c20: 50 07 00 20  	.word	0x20000750
    2c24: 10 00 00 20  	.word	0x20000010
    2c28: 04 ed 00 e0  	.word	0xe000ed04

00002c2c <sys_setup_timer>:
; sys_setup_timer():
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:76
; void sys_setup_timer(unsigned int ticks) {
    2c2c: b480         	push	{r7}
    2c2e: b083         	sub	sp, #12
    2c30: af00         	add	r7, sp, #0
    2c32: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:77
;   NRF_RTC0->CC[1] = (NRF_RTC0->COUNTER + ticks) % (1 << 24);
    2c34: 4b0e         	ldr	r3, [pc, #56]           @ 0x2c70 <$d>
    2c36: f8d3 2504    	ldr.w	r2, [r3, #1284]
    2c3a: 687b         	ldr	r3, [r7, #4]
    2c3c: 4413         	add	r3, r2
    2c3e: 4a0c         	ldr	r2, [pc, #48]           @ 0x2c70 <$d>
    2c40: f023 437f    	bic	r3, r3, #4278190080
    2c44: f8c2 3544    	str.w	r3, [r2, #1348]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:78
;   NRF_RTC0->EVENTS_COMPARE[1] = 0;
    2c48: 4b09         	ldr	r3, [pc, #36]           @ 0x2c70 <$d>
    2c4a: 2200         	movs	r2, #0
    2c4c: f8c3 2144    	str.w	r2, [r3, #324]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:79
;   NRF_RTC0->EVTENSET = RTC_EVTENSET_COMPARE1_Msk;
    2c50: 4b07         	ldr	r3, [pc, #28]           @ 0x2c70 <$d>
    2c52: f44f 3200    	mov.w	r2, #131072
    2c56: f8c3 2344    	str.w	r2, [r3, #836]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:80
;   NRF_RTC0->INTENSET = RTC_INTENSET_COMPARE1_Msk;
    2c5a: 4b05         	ldr	r3, [pc, #20]           @ 0x2c70 <$d>
    2c5c: f44f 3200    	mov.w	r2, #131072
    2c60: f8c3 2304    	str.w	r2, [r3, #772]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:81
; }
    2c64: bf00         	nop
    2c66: 370c         	adds	r7, #12
    2c68: 46bd         	mov	sp, r7
    2c6a: f85d 7b04    	ldr	r7, [sp], #4
    2c6e: 4770         	bx	lr

00002c70 <$d>:
    2c70: 00 b0 00 40  	.word	0x4000b000

00002c74 <sys_cancel_timer>:
; sys_cancel_timer():
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:83
; void sys_cancel_timer(void) {
    2c74: b480         	push	{r7}
    2c76: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:84
;   NRF_RTC0->EVTENCLR = RTC_EVTENSET_COMPARE1_Msk;
    2c78: 4b09         	ldr	r3, [pc, #36]           @ 0x2ca0 <$d>
    2c7a: f44f 3200    	mov.w	r2, #131072
    2c7e: f8c3 2348    	str.w	r2, [r3, #840]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:85
;   NRF_RTC0->INTENCLR = RTC_INTENCLR_COMPARE1_Msk;
    2c82: 4b07         	ldr	r3, [pc, #28]           @ 0x2ca0 <$d>
    2c84: f44f 3200    	mov.w	r2, #131072
    2c88: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:87
;   NRF_RTC0->EVENTS_COMPARE[1] = 0;
    2c8c: 4b04         	ldr	r3, [pc, #16]           @ 0x2ca0 <$d>
    2c8e: 2200         	movs	r2, #0
    2c90: f8c3 2144    	str.w	r2, [r3, #324]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:88
; }
    2c94: bf00         	nop
    2c96: 46bd         	mov	sp, r7
    2c98: f85d 7b04    	ldr	r7, [sp], #4
    2c9c: 4770         	bx	lr
    2c9e: bf00         	nop

00002ca0 <$d>:
    2ca0: 00 b0 00 40  	.word	0x4000b000

00002ca4 <riotee_timing_init>:
; riotee_timing_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:90
; void riotee_timing_init(void) {
    2ca4: b580         	push	{r7, lr}
    2ca6: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:91
;   NRF_CLOCK->LFCLKSRC = CLOCK_LFCLKSRC_SRC_Xtal;
    2ca8: f04f 4380    	mov.w	r3, #1073741824
    2cac: 2201         	movs	r2, #1
    2cae: f8c3 2518    	str.w	r2, [r3, #1304]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:93
;   NRF_CLOCK->TASKS_LFCLKSTART = 1;
    2cb2: f04f 4380    	mov.w	r3, #1073741824
    2cb6: 2201         	movs	r2, #1
    2cb8: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:95
;   NRF_RTC0->EVTENSET = RTC_EVTENSET_OVRFLW_Msk;
    2cba: 4b0d         	ldr	r3, [pc, #52]           @ 0x2cf0 <$d>
    2cbc: 2202         	movs	r2, #2
    2cbe: f8c3 2344    	str.w	r2, [r3, #836]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:96
;   NRF_RTC0->INTENSET = RTC_INTENSET_OVRFLW_Msk;
    2cc2: 4b0b         	ldr	r3, [pc, #44]           @ 0x2cf0 <$d>
    2cc4: 2202         	movs	r2, #2
    2cc6: f8c3 2304    	str.w	r2, [r3, #772]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:98
;   NVIC_EnableIRQ(RTC0_IRQn);
    2cca: 200b         	movs	r0, #11
    2ccc: f7ff ff18    	bl	0x2b00 <__NVIC_EnableIRQ> @ imm = #-464
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:100
;   NRF_RTC0->PRESCALER = 0;
    2cd0: 4b07         	ldr	r3, [pc, #28]           @ 0x2cf0 <$d>
    2cd2: 2200         	movs	r2, #0
    2cd4: f8c3 2508    	str.w	r2, [r3, #1288]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:101
;   NRF_RTC0->TASKS_CLEAR = 1;
    2cd8: 4b05         	ldr	r3, [pc, #20]           @ 0x2cf0 <$d>
    2cda: 2201         	movs	r2, #1
    2cdc: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:102
;   NRF_RTC0->TASKS_START = 1;
    2cde: 4b04         	ldr	r3, [pc, #16]           @ 0x2cf0 <$d>
    2ce0: 2201         	movs	r2, #1
    2ce2: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:104
;   n_reset = runtime_stats.n_reset;
    2ce4: 4b03         	ldr	r3, [pc, #12]           @ 0x2cf4 <$d+0x4>
    2ce6: 681b         	ldr	r3, [r3]
    2ce8: 4a03         	ldr	r2, [pc, #12]           @ 0x2cf8 <$d+0x8>
    2cea: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/timing.c:105
; }
    2cec: bf00         	nop
    2cee: bd80         	pop	{r7, pc}

00002cf0 <$d>:
    2cf0: 00 b0 00 40  	.word	0x4000b000
    2cf4: 10 e0 01 20  	.word	0x2001e010
    2cf8: 14 00 00 20  	.word	0x20000014

00002cfc <__NVIC_EnableIRQ>:
; __NVIC_EnableIRQ():
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1685
; {
    2cfc: b480         	push	{r7}
    2cfe: b083         	sub	sp, #12
    2d00: af00         	add	r7, sp, #0
    2d02: 4603         	mov	r3, r0
    2d04: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1686
;   if ((int32_t)(IRQn) >= 0)
    2d06: f997 3007    	ldrsb.w	r3, [r7, #7]
    2d0a: 2b00         	cmp	r3, #0
    2d0c: db0b         	blt	0x2d26 <__NVIC_EnableIRQ+0x2a> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1689
;     NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    2d0e: 79fb         	ldrb	r3, [r7, #7]
    2d10: f003 021f    	and	r2, r3, #31
    2d14: 4907         	ldr	r1, [pc, #28]           @ 0x2d34 <$d>
    2d16: f997 3007    	ldrsb.w	r3, [r7, #7]
    2d1a: 095b         	lsrs	r3, r3, #5
    2d1c: 2001         	movs	r0, #1
    2d1e: fa00 f202    	lsl.w	r2, r0, r2
    2d22: f841 2023    	str.w	r2, [r1, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1692
; }
    2d26: bf00         	nop
    2d28: 370c         	adds	r7, #12
    2d2a: 46bd         	mov	sp, r7
    2d2c: f85d 7b04    	ldr	r7, [sp], #4
    2d30: 4770         	bx	lr
    2d32: bf00         	nop

00002d34 <$d>:
    2d34: 00 e1 00 e0  	.word	0xe000e100

00002d38 <__NVIC_SetPriority>:
; __NVIC_SetPriority():
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1815
; {
    2d38: b480         	push	{r7}
    2d3a: b083         	sub	sp, #12
    2d3c: af00         	add	r7, sp, #0
    2d3e: 4603         	mov	r3, r0
    2d40: 6039         	str	r1, [r7]
    2d42: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1816
;   if ((int32_t)(IRQn) >= 0)
    2d44: f997 3007    	ldrsb.w	r3, [r7, #7]
    2d48: 2b00         	cmp	r3, #0
    2d4a: db0a         	blt	0x2d62 <__NVIC_SetPriority+0x2a> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1818
;     NVIC->IP[((uint32_t)IRQn)]               = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    2d4c: 683b         	ldr	r3, [r7]
    2d4e: b2da         	uxtb	r2, r3
    2d50: 490c         	ldr	r1, [pc, #48]           @ 0x2d84 <$d>
    2d52: f997 3007    	ldrsb.w	r3, [r7, #7]
    2d56: 0152         	lsls	r2, r2, #5
    2d58: b2d2         	uxtb	r2, r2
    2d5a: 440b         	add	r3, r1
    2d5c: f883 2300    	strb.w	r2, [r3, #768]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1824
; }
    2d60: e00a         	b	0x2d78 <__NVIC_SetPriority+0x40> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1822
;     SCB->SHP[(((uint32_t)IRQn) & 0xFUL)-4UL] = (uint8_t)((priority << (8U - __NVIC_PRIO_BITS)) & (uint32_t)0xFFUL);
    2d62: 683b         	ldr	r3, [r7]
    2d64: b2da         	uxtb	r2, r3
    2d66: 4908         	ldr	r1, [pc, #32]           @ 0x2d88 <$d+0x4>
    2d68: 79fb         	ldrb	r3, [r7, #7]
    2d6a: f003 030f    	and	r3, r3, #15
    2d6e: 3b04         	subs	r3, #4
    2d70: 0152         	lsls	r2, r2, #5
    2d72: b2d2         	uxtb	r2, r2
    2d74: 440b         	add	r3, r1
    2d76: 761a         	strb	r2, [r3, #24]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1824
; }
    2d78: bf00         	nop
    2d7a: 370c         	adds	r7, #12
    2d7c: 46bd         	mov	sp, r7
    2d7e: f85d 7b04    	ldr	r7, [sp], #4
    2d82: 4770         	bx	lr

00002d84 <$d>:
    2d84: 00 e1 00 e0  	.word	0xe000e100
    2d88: 00 ed 00 e0  	.word	0xe000ed00

00002d8c <riotee_gpio_get_port>:
; riotee_gpio_get_port():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:87
; static inline riotee_gpio_port_t* riotee_gpio_get_port(unsigned int pin) {
    2d8c: b480         	push	{r7}
    2d8e: b083         	sub	sp, #12
    2d90: af00         	add	r7, sp, #0
    2d92: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:88
;   if (pin > 41)
    2d94: 687b         	ldr	r3, [r7, #4]
    2d96: 2b29         	cmp	r3, #41
    2d98: d901         	bls	0x2d9e <riotee_gpio_get_port+0x12> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:89
;     return NULL;
    2d9a: 2300         	movs	r3, #0
    2d9c: e006         	b	0x2dac <riotee_gpio_get_port+0x20> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:90
;   if (pin > 31) {
    2d9e: 687b         	ldr	r3, [r7, #4]
    2da0: 2b1f         	cmp	r3, #31
    2da2: d901         	bls	0x2da8 <riotee_gpio_get_port+0x1c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:91
;     return NRF_PORT1;
    2da4: 4b04         	ldr	r3, [pc, #16]           @ 0x2db8 <$d>
    2da6: e001         	b	0x2dac <riotee_gpio_get_port+0x20> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:93
;   return NRF_PORT0;
    2da8: f04f 43a0    	mov.w	r3, #1342177280
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:94
; }
    2dac: 4618         	mov	r0, r3
    2dae: 370c         	adds	r7, #12
    2db0: 46bd         	mov	sp, r7
    2db2: f85d 7b04    	ldr	r7, [sp], #4
    2db6: 4770         	bx	lr

00002db8 <$d>:
    2db8: 00 03 00 50  	.word	0x50000300

00002dbc <riotee_gpio_get_pin_idx>:
; riotee_gpio_get_pin_idx():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:96
; static inline int riotee_gpio_get_pin_idx(unsigned int pin) {
    2dbc: b480         	push	{r7}
    2dbe: b083         	sub	sp, #12
    2dc0: af00         	add	r7, sp, #0
    2dc2: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:97
;   if (pin > 31) {
    2dc4: 687b         	ldr	r3, [r7, #4]
    2dc6: 2b1f         	cmp	r3, #31
    2dc8: d902         	bls	0x2dd0 <riotee_gpio_get_pin_idx+0x14> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:98
;     return pin - 32;
    2dca: 687b         	ldr	r3, [r7, #4]
    2dcc: 3b20         	subs	r3, #32
    2dce: e000         	b	0x2dd2 <riotee_gpio_get_pin_idx+0x16> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:100
;   return pin;
    2dd0: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:101
; }
    2dd2: 4618         	mov	r0, r3
    2dd4: 370c         	adds	r7, #12
    2dd6: 46bd         	mov	sp, r7
    2dd8: f85d 7b04    	ldr	r7, [sp], #4
    2ddc: 4770         	bx	lr
    2dde: 0000         	movs	r0, r0

00002de0 <GPIOTE_IRQHandler>:
; GPIOTE_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:12
; void GPIOTE_IRQHandler(void) {
    2de0: b580         	push	{r7, lr}
    2de2: b084         	sub	sp, #16
    2de4: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:13
;   if (NRF_GPIOTE->EVENTS_PORT == 1) {
    2de6: 4b20         	ldr	r3, [pc, #128]          @ 0x2e68 <$d>
    2de8: f8d3 317c    	ldr.w	r3, [r3, #380]
    2dec: 2b01         	cmp	r3, #1
    2dee: d138         	bne	0x2e62 <GPIOTE_IRQHandler+0x82> @ imm = #112
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:14
;     for (uint32_t i = 0; i < 42; i++) {
    2df0: 2300         	movs	r3, #0
    2df2: 60fb         	str	r3, [r7, #12]
    2df4: e032         	b	0x2e5c <GPIOTE_IRQHandler+0x7c> @ imm = #100
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:15
;       GPINT_CALLBACK cb = registry[i];
    2df6: 4a1d         	ldr	r2, [pc, #116]          @ 0x2e6c <$d+0x4>
    2df8: 68fb         	ldr	r3, [r7, #12]
    2dfa: f852 3023    	ldr.w	r3, [r2, r3, lsl #2]
    2dfe: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:16
;       riotee_gpio_port_t *reg = riotee_gpio_get_port(i);
    2e00: 68f8         	ldr	r0, [r7, #12]
    2e02: f7ff ffc3    	bl	0x2d8c <riotee_gpio_get_port> @ imm = #-122
    2e06: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:17
;       int pin_idx = riotee_gpio_get_pin_idx(i);
    2e08: 68f8         	ldr	r0, [r7, #12]
    2e0a: f7ff ffd7    	bl	0x2dbc <riotee_gpio_get_pin_idx> @ imm = #-82
    2e0e: 6038         	str	r0, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:18
;       if ((cb != NULL) && (reg->LATCH & (1 << pin_idx))) {
    2e10: 68bb         	ldr	r3, [r7, #8]
    2e12: 2b00         	cmp	r3, #0
    2e14: d01f         	beq	0x2e56 <GPIOTE_IRQHandler+0x76> @ imm = #62
    2e16: 687b         	ldr	r3, [r7, #4]
    2e18: f8d3 3520    	ldr.w	r3, [r3, #1312]
    2e1c: 2101         	movs	r1, #1
    2e1e: 683a         	ldr	r2, [r7]
    2e20: fa01 f202    	lsl.w	r2, r1, r2
    2e24: 4013         	ands	r3, r2
    2e26: 2b00         	cmp	r3, #0
    2e28: d015         	beq	0x2e56 <GPIOTE_IRQHandler+0x76> @ imm = #42
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:19
;         gpint_unregister(i);
    2e2a: 68f8         	ldr	r0, [r7, #12]
    2e2c: f000 f87e    	bl	0x2f2c <gpint_unregister> @ imm = #252
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:20
;         reg->LATCH |= (1 << pin_idx);
    2e30: 687b         	ldr	r3, [r7, #4]
    2e32: f8d3 3520    	ldr.w	r3, [r3, #1312]
    2e36: 2101         	movs	r1, #1
    2e38: 683a         	ldr	r2, [r7]
    2e3a: fa01 f202    	lsl.w	r2, r1, r2
    2e3e: 431a         	orrs	r2, r3
    2e40: 687b         	ldr	r3, [r7, #4]
    2e42: f8c3 2520    	str.w	r2, [r3, #1312]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:21
;         NRF_GPIOTE->EVENTS_PORT = 0;
    2e46: 4b08         	ldr	r3, [pc, #32]           @ 0x2e68 <$d>
    2e48: 2200         	movs	r2, #0
    2e4a: f8c3 217c    	str.w	r2, [r3, #380]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:22
;         cb(i);
    2e4e: 68bb         	ldr	r3, [r7, #8]
    2e50: 68f8         	ldr	r0, [r7, #12]
    2e52: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:23
;         return;
    2e54: e005         	b	0x2e62 <GPIOTE_IRQHandler+0x82> @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:14
;     for (uint32_t i = 0; i < 42; i++) {
    2e56: 68fb         	ldr	r3, [r7, #12]
    2e58: 3301         	adds	r3, #1
    2e5a: 60fb         	str	r3, [r7, #12]
    2e5c: 68fb         	ldr	r3, [r7, #12]
    2e5e: 2b29         	cmp	r3, #41
    2e60: d9c9         	bls	0x2df6 <GPIOTE_IRQHandler+0x16> @ imm = #-110
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:27
; }
    2e62: 3710         	adds	r7, #16
    2e64: 46bd         	mov	sp, r7
    2e66: bd80         	pop	{r7, pc}

00002e68 <$d>:
    2e68: 00 60 00 40  	.word	0x40006000
    2e6c: 84 08 00 20  	.word	0x20000884

00002e70 <gpint_register>:
; gpint_register():
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:29
; int gpint_register(unsigned int pin, riotee_gpio_level_t level, riotee_gpio_in_pull_t pull, GPINT_CALLBACK cb) {
    2e70: b580         	push	{r7, lr}
    2e72: b086         	sub	sp, #24
    2e74: af00         	add	r7, sp, #0
    2e76: 60f8         	str	r0, [r7, #12]
    2e78: 607b         	str	r3, [r7, #4]
    2e7a: 460b         	mov	r3, r1
    2e7c: 72fb         	strb	r3, [r7, #11]
    2e7e: 4613         	mov	r3, r2
    2e80: 72bb         	strb	r3, [r7, #10]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:30
;   riotee_gpio_port_t *reg = riotee_gpio_get_port(pin);
    2e82: 68f8         	ldr	r0, [r7, #12]
    2e84: f7ff ff82    	bl	0x2d8c <riotee_gpio_get_port> @ imm = #-252
    2e88: 6178         	str	r0, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:31
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    2e8a: 68f8         	ldr	r0, [r7, #12]
    2e8c: f7ff ff96    	bl	0x2dbc <riotee_gpio_get_pin_idx> @ imm = #-212
    2e90: 6138         	str	r0, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:33
;   if (pin > 41)
    2e92: 68fb         	ldr	r3, [r7, #12]
    2e94: 2b29         	cmp	r3, #41
    2e96: d901         	bls	0x2e9c <gpint_register+0x2c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:34
;     return RIOTEE_GPIO_ERR_UNSUPPORTED;
    2e98: 2303         	movs	r3, #3
    2e9a: e040         	b	0x2f1e <gpint_register+0xae> @ imm = #128
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:36
;   if (registry[pin] != NULL)
    2e9c: 4a22         	ldr	r2, [pc, #136]          @ 0x2f28 <$d>
    2e9e: 68fb         	ldr	r3, [r7, #12]
    2ea0: f852 3023    	ldr.w	r3, [r2, r3, lsl #2]
    2ea4: 2b00         	cmp	r3, #0
    2ea6: d001         	beq	0x2eac <gpint_register+0x3c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:37
;     return RIOTEE_GPIO_ERR_BUSY;
    2ea8: 2302         	movs	r3, #2
    2eaa: e038         	b	0x2f1e <gpint_register+0xae> @ imm = #112
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:38
;   registry[pin] = cb;
    2eac: 491e         	ldr	r1, [pc, #120]          @ 0x2f28 <$d>
    2eae: 68fb         	ldr	r3, [r7, #12]
    2eb0: 687a         	ldr	r2, [r7, #4]
    2eb2: f841 2023    	str.w	r2, [r1, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:40
;   reg->PIN_CNF[pin_idx] = (GPIO_PIN_CNF_INPUT_Connect << GPIO_PIN_CNF_INPUT_Pos) | (pull << GPIO_PIN_CNF_PULL_Pos);
    2eb6: 7abb         	ldrb	r3, [r7, #10]
    2eb8: 0099         	lsls	r1, r3, #2
    2eba: 697b         	ldr	r3, [r7, #20]
    2ebc: 693a         	ldr	r2, [r7, #16]
    2ebe: f502 72e0    	add.w	r2, r2, #448
    2ec2: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:41
;   reg->LATCH |= (1 << pin_idx);
    2ec6: 697b         	ldr	r3, [r7, #20]
    2ec8: f8d3 3520    	ldr.w	r3, [r3, #1312]
    2ecc: 2101         	movs	r1, #1
    2ece: 693a         	ldr	r2, [r7, #16]
    2ed0: fa01 f202    	lsl.w	r2, r1, r2
    2ed4: 431a         	orrs	r2, r3
    2ed6: 697b         	ldr	r3, [r7, #20]
    2ed8: f8c3 2520    	str.w	r2, [r3, #1312]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:44
;   if (level == RIOTEE_GPIO_LEVEL_HIGH) {
    2edc: 7afb         	ldrb	r3, [r7, #11]
    2ede: 2b01         	cmp	r3, #1
    2ee0: d10e         	bne	0x2f00 <gpint_register+0x90> @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:45
;     reg->PIN_CNF[pin_idx] |= (GPIO_PIN_CNF_SENSE_High << GPIO_PIN_CNF_SENSE_Pos);
    2ee2: 697b         	ldr	r3, [r7, #20]
    2ee4: 693a         	ldr	r2, [r7, #16]
    2ee6: f502 72e0    	add.w	r2, r2, #448
    2eea: f853 3022    	ldr.w	r3, [r3, r2, lsl #2]
    2eee: f443 3100    	orr	r1, r3, #131072
    2ef2: 697b         	ldr	r3, [r7, #20]
    2ef4: 693a         	ldr	r2, [r7, #16]
    2ef6: f502 72e0    	add.w	r2, r2, #448
    2efa: f843 1022    	str.w	r1, [r3, r2, lsl #2]
    2efe: e00d         	b	0x2f1c <gpint_register+0xac> @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:47
;     reg->PIN_CNF[pin_idx] |= (GPIO_PIN_CNF_SENSE_Low << GPIO_PIN_CNF_SENSE_Pos);
    2f00: 697b         	ldr	r3, [r7, #20]
    2f02: 693a         	ldr	r2, [r7, #16]
    2f04: f502 72e0    	add.w	r2, r2, #448
    2f08: f853 3022    	ldr.w	r3, [r3, r2, lsl #2]
    2f0c: f443 3140    	orr	r1, r3, #196608
    2f10: 697b         	ldr	r3, [r7, #20]
    2f12: 693a         	ldr	r2, [r7, #16]
    2f14: f502 72e0    	add.w	r2, r2, #448
    2f18: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:49
;   return RIOTEE_GPIO_ERR_OK;
    2f1c: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:50
; }
    2f1e: 4618         	mov	r0, r3
    2f20: 3718         	adds	r7, #24
    2f22: 46bd         	mov	sp, r7
    2f24: bd80         	pop	{r7, pc}
    2f26: bf00         	nop

00002f28 <$d>:
    2f28: 84 08 00 20  	.word	0x20000884

00002f2c <gpint_unregister>:
; gpint_unregister():
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:52
; int gpint_unregister(unsigned int pin) {
    2f2c: b580         	push	{r7, lr}
    2f2e: b084         	sub	sp, #16
    2f30: af00         	add	r7, sp, #0
    2f32: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:53
;   if (registry[pin] == NULL)
    2f34: 4a13         	ldr	r2, [pc, #76]           @ 0x2f84 <$d>
    2f36: 687b         	ldr	r3, [r7, #4]
    2f38: f852 3023    	ldr.w	r3, [r2, r3, lsl #2]
    2f3c: 2b00         	cmp	r3, #0
    2f3e: d101         	bne	0x2f44 <gpint_unregister+0x18> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:54
;     return RIOTEE_GPIO_ERR_GENERIC;
    2f40: 2301         	movs	r3, #1
    2f42: e01b         	b	0x2f7c <gpint_unregister+0x50> @ imm = #54
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:56
;   riotee_gpio_port_t *reg = riotee_gpio_get_port(pin);
    2f44: 6878         	ldr	r0, [r7, #4]
    2f46: f7ff ff21    	bl	0x2d8c <riotee_gpio_get_port> @ imm = #-446
    2f4a: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:57
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    2f4c: 6878         	ldr	r0, [r7, #4]
    2f4e: f7ff ff35    	bl	0x2dbc <riotee_gpio_get_pin_idx> @ imm = #-406
    2f52: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:59
;   reg->PIN_CNF[pin_idx] &= ~GPIO_PIN_CNF_SENSE_Msk;
    2f54: 68fb         	ldr	r3, [r7, #12]
    2f56: 68ba         	ldr	r2, [r7, #8]
    2f58: f502 72e0    	add.w	r2, r2, #448
    2f5c: f853 3022    	ldr.w	r3, [r3, r2, lsl #2]
    2f60: f423 3140    	bic	r1, r3, #196608
    2f64: 68fb         	ldr	r3, [r7, #12]
    2f66: 68ba         	ldr	r2, [r7, #8]
    2f68: f502 72e0    	add.w	r2, r2, #448
    2f6c: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:61
;   registry[pin] = NULL;
    2f70: 4a04         	ldr	r2, [pc, #16]           @ 0x2f84 <$d>
    2f72: 687b         	ldr	r3, [r7, #4]
    2f74: 2100         	movs	r1, #0
    2f76: f842 1023    	str.w	r1, [r2, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:62
;   return RIOTEE_GPIO_ERR_OK;
    2f7a: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:63
; }
    2f7c: 4618         	mov	r0, r3
    2f7e: 3710         	adds	r7, #16
    2f80: 46bd         	mov	sp, r7
    2f82: bd80         	pop	{r7, pc}

00002f84 <$d>:
    2f84: 84 08 00 20  	.word	0x20000884

00002f88 <riotee_gpio_init>:
; riotee_gpio_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:65
; void riotee_gpio_init(void) {
    2f88: b580         	push	{r7, lr}
    2f8a: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:66
;   NRF_P0->DETECTMODE = GPIO_DETECTMODE_DETECTMODE_LDETECT;
    2f8c: f04f 43a0    	mov.w	r3, #1342177280
    2f90: 2201         	movs	r2, #1
    2f92: f8c3 2524    	str.w	r2, [r3, #1316]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:67
;   NRF_P1->DETECTMODE = GPIO_DETECTMODE_DETECTMODE_LDETECT;
    2f96: 4b0b         	ldr	r3, [pc, #44]           @ 0x2fc4 <$d>
    2f98: 2201         	movs	r2, #1
    2f9a: f8c3 2524    	str.w	r2, [r3, #1316]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:68
;   NRF_GPIOTE->EVENTS_PORT = 0;
    2f9e: 4b0a         	ldr	r3, [pc, #40]           @ 0x2fc8 <$d+0x4>
    2fa0: 2200         	movs	r2, #0
    2fa2: f8c3 217c    	str.w	r2, [r3, #380]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:70
;   NRF_GPIOTE->INTENSET = GPIOTE_INTENSET_PORT_Msk;
    2fa6: 4b08         	ldr	r3, [pc, #32]           @ 0x2fc8 <$d+0x4>
    2fa8: f04f 4200    	mov.w	r2, #2147483648
    2fac: f8c3 2304    	str.w	r2, [r3, #772]
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:71
;   NVIC_EnableIRQ(GPIOTE_IRQn);
    2fb0: 2006         	movs	r0, #6
    2fb2: f7ff fea3    	bl	0x2cfc <__NVIC_EnableIRQ> @ imm = #-698
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:72
;   NVIC_SetPriority(GPIOTE_IRQn, 1);
    2fb6: 2101         	movs	r1, #1
    2fb8: 2006         	movs	r0, #6
    2fba: f7ff febd    	bl	0x2d38 <__NVIC_SetPriority> @ imm = #-646
; /Users/janstiefel/code/fork/Riotee_SDK/core/gpio.c:73
; }
    2fbe: bf00         	nop
    2fc0: bd80         	pop	{r7, pc}
    2fc2: bf00         	nop

00002fc4 <$d>:
    2fc4: 00 03 00 50  	.word	0x50000300
    2fc8: 00 60 00 40  	.word	0x40006000

00002fcc <riotee_gpio_get_port>:
; riotee_gpio_get_port():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:87
; static inline riotee_gpio_port_t* riotee_gpio_get_port(unsigned int pin) {
    2fcc: b480         	push	{r7}
    2fce: b083         	sub	sp, #12
    2fd0: af00         	add	r7, sp, #0
    2fd2: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:88
;   if (pin > 41)
    2fd4: 687b         	ldr	r3, [r7, #4]
    2fd6: 2b29         	cmp	r3, #41
    2fd8: d901         	bls	0x2fde <riotee_gpio_get_port+0x12> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:89
;     return NULL;
    2fda: 2300         	movs	r3, #0
    2fdc: e006         	b	0x2fec <riotee_gpio_get_port+0x20> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:90
;   if (pin > 31) {
    2fde: 687b         	ldr	r3, [r7, #4]
    2fe0: 2b1f         	cmp	r3, #31
    2fe2: d901         	bls	0x2fe8 <riotee_gpio_get_port+0x1c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:91
;     return NRF_PORT1;
    2fe4: 4b04         	ldr	r3, [pc, #16]           @ 0x2ff8 <$d>
    2fe6: e001         	b	0x2fec <riotee_gpio_get_port+0x20> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:93
;   return NRF_PORT0;
    2fe8: f04f 43a0    	mov.w	r3, #1342177280
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:94
; }
    2fec: 4618         	mov	r0, r3
    2fee: 370c         	adds	r7, #12
    2ff0: 46bd         	mov	sp, r7
    2ff2: f85d 7b04    	ldr	r7, [sp], #4
    2ff6: 4770         	bx	lr

00002ff8 <$d>:
    2ff8: 00 03 00 50  	.word	0x50000300

00002ffc <riotee_gpio_get_pin_idx>:
; riotee_gpio_get_pin_idx():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:96
; static inline int riotee_gpio_get_pin_idx(unsigned int pin) {
    2ffc: b480         	push	{r7}
    2ffe: b083         	sub	sp, #12
    3000: af00         	add	r7, sp, #0
    3002: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:97
;   if (pin > 31) {
    3004: 687b         	ldr	r3, [r7, #4]
    3006: 2b1f         	cmp	r3, #31
    3008: d902         	bls	0x3010 <riotee_gpio_get_pin_idx+0x14> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:98
;     return pin - 32;
    300a: 687b         	ldr	r3, [r7, #4]
    300c: 3b20         	subs	r3, #32
    300e: e000         	b	0x3012 <riotee_gpio_get_pin_idx+0x16> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:100
;   return pin;
    3010: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:101
; }
    3012: 4618         	mov	r0, r3
    3014: 370c         	adds	r7, #12
    3016: 46bd         	mov	sp, r7
    3018: f85d 7b04    	ldr	r7, [sp], #4
    301c: 4770         	bx	lr

0000301e <riotee_gpio_cfg_input>:
; riotee_gpio_cfg_input():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:124
; static inline void riotee_gpio_cfg_input(unsigned int pin, riotee_gpio_in_pull_t pull) {
    301e: b580         	push	{r7, lr}
    3020: b084         	sub	sp, #16
    3022: af00         	add	r7, sp, #0
    3024: 6078         	str	r0, [r7, #4]
    3026: 460b         	mov	r3, r1
    3028: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:125
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    302a: 6878         	ldr	r0, [r7, #4]
    302c: f7ff ffce    	bl	0x2fcc <riotee_gpio_get_port> @ imm = #-100
    3030: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:126
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    3032: 6878         	ldr	r0, [r7, #4]
    3034: f7ff ffe2    	bl	0x2ffc <riotee_gpio_get_pin_idx> @ imm = #-60
    3038: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:129
;   reg->PIN_CNF[pin_idx] = (pull << 2);
    303a: 78fb         	ldrb	r3, [r7, #3]
    303c: 0099         	lsls	r1, r3, #2
    303e: 68fb         	ldr	r3, [r7, #12]
    3040: 68ba         	ldr	r2, [r7, #8]
    3042: f502 72e0    	add.w	r2, r2, #448
    3046: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:130
; }
    304a: bf00         	nop
    304c: 3710         	adds	r7, #16
    304e: 46bd         	mov	sp, r7
    3050: bd80         	pop	{r7, pc}
    3052: 0000         	movs	r0, r0

00003054 <riotee_uart_init>:
; riotee_uart_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:10
; void riotee_uart_init(uint32_t pseltxd, riotee_uart_baudrate_t baudrate) {
    3054: b580         	push	{r7, lr}
    3056: b082         	sub	sp, #8
    3058: af00         	add	r7, sp, #0
    305a: 6078         	str	r0, [r7, #4]
    305c: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:11
;   NRF_UART0->PSEL.TXD = pseltxd;
    305e: 4a08         	ldr	r2, [pc, #32]           @ 0x3080 <$d>
    3060: 687b         	ldr	r3, [r7, #4]
    3062: f8c2 350c    	str.w	r3, [r2, #1292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:12
;   riotee_gpio_cfg_input(pseltxd, RIOTEE_GPIO_IN_PULLUP);
    3066: 2103         	movs	r1, #3
    3068: 6878         	ldr	r0, [r7, #4]
    306a: f7ff ffd8    	bl	0x301e <riotee_gpio_cfg_input> @ imm = #-80
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:13
;   NRF_UART0->BAUDRATE = baudrate;
    306e: 4a04         	ldr	r2, [pc, #16]           @ 0x3080 <$d>
    3070: 683b         	ldr	r3, [r7]
    3072: f8c2 3524    	str.w	r3, [r2, #1316]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:14
; }
    3076: bf00         	nop
    3078: 3708         	adds	r7, #8
    307a: 46bd         	mov	sp, r7
    307c: bd80         	pop	{r7, pc}
    307e: bf00         	nop

00003080 <$d>:
    3080: 00 20 00 40  	.word	0x40002000

00003084 <_putchar>:
; _putchar():
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:20
; void _putchar(char character) {
    3084: b580         	push	{r7, lr}
    3086: b082         	sub	sp, #8
    3088: af00         	add	r7, sp, #0
    308a: 4603         	mov	r3, r0
    308c: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:21
;   taskENTER_CRITICAL();
    308e: f002 f943    	bl	0x5318 <vPortEnterCritical> @ imm = #8838
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:22
;   NRF_UART0->ENABLE = UART_ENABLE_ENABLE_Enabled;
    3092: 4b11         	ldr	r3, [pc, #68]           @ 0x30d8 <$d>
    3094: 2204         	movs	r2, #4
    3096: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:23
;   NRF_UART0->TXD = character;
    309a: 4a0f         	ldr	r2, [pc, #60]           @ 0x30d8 <$d>
    309c: 79fb         	ldrb	r3, [r7, #7]
    309e: f8c2 351c    	str.w	r3, [r2, #1308]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:24
;   NRF_UART0->TASKS_STARTTX = 1UL;
    30a2: 4b0d         	ldr	r3, [pc, #52]           @ 0x30d8 <$d>
    30a4: 2201         	movs	r2, #1
    30a6: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:25
;   while (NRF_UART0->EVENTS_TXDRDY == 0) {
    30a8: bf00         	nop
    30aa: 4b0b         	ldr	r3, [pc, #44]           @ 0x30d8 <$d>
    30ac: f8d3 311c    	ldr.w	r3, [r3, #284]
    30b0: 2b00         	cmp	r3, #0
    30b2: d0fa         	beq	0x30aa <_putchar+0x26>  @ imm = #-12
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:27
;   NRF_UART0->EVENTS_TXDRDY = 0;
    30b4: 4b08         	ldr	r3, [pc, #32]           @ 0x30d8 <$d>
    30b6: 2200         	movs	r2, #0
    30b8: f8c3 211c    	str.w	r2, [r3, #284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:28
;   NRF_UART0->TASKS_STOPTX = 1UL;
    30bc: 4b06         	ldr	r3, [pc, #24]           @ 0x30d8 <$d>
    30be: 2201         	movs	r2, #1
    30c0: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:29
;   NRF_UART0->ENABLE = UART_ENABLE_ENABLE_Disabled;
    30c2: 4b05         	ldr	r3, [pc, #20]           @ 0x30d8 <$d>
    30c4: 2200         	movs	r2, #0
    30c6: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:30
;   taskEXIT_CRITICAL();
    30ca: f002 f93f    	bl	0x534c <vPortExitCritical> @ imm = #8830
; /Users/janstiefel/code/fork/Riotee_SDK/core/uart.c:31
; }
    30ce: bf00         	nop
    30d0: 3708         	adds	r7, #8
    30d2: 46bd         	mov	sp, r7
    30d4: bd80         	pop	{r7, pc}
    30d6: bf00         	nop

000030d8 <$d>:
    30d8: 00 20 00 40  	.word	0x40002000

000030dc <SPIM3_IRQHandler>:
; SPIM3_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:66
; void SPIM3_IRQHandler(void) {
    30dc: b580         	push	{r7, lr}
    30de: b084         	sub	sp, #16
    30e0: af02         	add	r7, sp, #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:67
;   BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    30e2: 2300         	movs	r3, #0
    30e4: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:69
;   if (NRF_SPIM3->EVENTS_END == 1) {
    30e6: 4b15         	ldr	r3, [pc, #84]           @ 0x313c <$d>
    30e8: f8d3 3118    	ldr.w	r3, [r3, #280]
    30ec: 2b01         	cmp	r3, #1
    30ee: d115         	bne	0x311c <SPIM3_IRQHandler+0x40> @ imm = #42
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:70
;     NRF_SPIM3->EVENTS_END = 0;
    30f0: 4b12         	ldr	r3, [pc, #72]           @ 0x313c <$d>
    30f2: 2200         	movs	r2, #0
    30f4: f8c3 2118    	str.w	r2, [r3, #280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:71
;     NRF_SPIM3->TASKS_STOP = 1;
    30f8: 4b10         	ldr	r3, [pc, #64]           @ 0x313c <$d>
    30fa: 2201         	movs	r2, #1
    30fc: 615a         	str	r2, [r3, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:72
;     xTaskNotifyIndexedFromISR(usr_task_handle, 1, EVT_SPIC_BASE, eSetBits, &xHigherPriorityTaskWoken);
    30fe: 4b10         	ldr	r3, [pc, #64]           @ 0x3140 <$d+0x4>
    3100: 6818         	ldr	r0, [r3]
    3102: 1d3b         	adds	r3, r7, #4
    3104: 9301         	str	r3, [sp, #4]
    3106: 2300         	movs	r3, #0
    3108: 9300         	str	r3, [sp]
    310a: 2301         	movs	r3, #1
    310c: f44f 0200    	mov.w	r2, #8388608
    3110: 2101         	movs	r1, #1
    3112: f001 fea1    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #7490
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:73
;     spic_teardown_ptr = NULL;
    3116: 4b0b         	ldr	r3, [pc, #44]           @ 0x3144 <$d+0x8>
    3118: 2200         	movs	r2, #0
    311a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:75
;   portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    311c: 687b         	ldr	r3, [r7, #4]
    311e: 2b00         	cmp	r3, #0
    3120: d007         	beq	0x3132 <SPIM3_IRQHandler+0x56> @ imm = #14
    3122: 4b09         	ldr	r3, [pc, #36]           @ 0x3148 <$d+0xc>
    3124: f04f 5280    	mov.w	r2, #268435456
    3128: 601a         	str	r2, [r3]
    312a: f3bf 8f4f    	dsb	sy
    312e: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/core/spic.c:76
; }
    3132: bf00         	nop
    3134: 3708         	adds	r7, #8
    3136: 46bd         	mov	sp, r7
    3138: bd80         	pop	{r7, pc}
    313a: bf00         	nop

0000313c <$d>:
    313c: 00 f0 02 40  	.word	0x4002f000
    3140: 54 07 00 20  	.word	0x20000754
    3144: 4c 09 00 20  	.word	0x2000094c
    3148: 04 ed 00 e0  	.word	0xe000ed04

0000314c <suspend_callback>:
; suspend_callback():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:67
; __attribute__((weak)) void suspend_callback(void){};
    314c: b480         	push	{r7}
    314e: af00         	add	r7, sp, #0
    3150: bf00         	nop
    3152: 46bd         	mov	sp, r7
    3154: f85d 7b04    	ldr	r7, [sp], #4
    3158: 4770         	bx	lr

0000315a <resume_callback>:
; resume_callback():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:69
; __attribute__((weak)) void resume_callback(void){};
    315a: b480         	push	{r7}
    315c: af00         	add	r7, sp, #0
    315e: bf00         	nop
    3160: 46bd         	mov	sp, r7
    3162: f85d 7b04    	ldr	r7, [sp], #4
    3166: 4770         	bx	lr

00003168 <bootstrap_callback>:
; bootstrap_callback():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:71
; __attribute__((weak)) void bootstrap_callback(void){};
    3168: b480         	push	{r7}
    316a: af00         	add	r7, sp, #0
    316c: bf00         	nop
    316e: 46bd         	mov	sp, r7
    3170: f85d 7b04    	ldr	r7, [sp], #4
    3174: 4770         	bx	lr
    3176: 0000         	movs	r0, r0

00003178 <check_fresh_start>:
; check_fresh_start():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:78
; static bool check_fresh_start() {
    3178: b480         	push	{r7}
    317a: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:80
;   if (fresh_marker == 0x8BADF00D) {
    317c: 4b06         	ldr	r3, [pc, #24]           @ 0x3198 <$d>
    317e: 681b         	ldr	r3, [r3]
    3180: 4a06         	ldr	r2, [pc, #24]           @ 0x319c <$d+0x4>
    3182: 4293         	cmp	r3, r2
    3184: d101         	bne	0x318a <check_fresh_start+0x12> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:81
;     return true;
    3186: 2301         	movs	r3, #1
    3188: e000         	b	0x318c <check_fresh_start+0x14> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:83
;   return false;
    318a: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:84
; }
    318c: 4618         	mov	r0, r3
    318e: 46bd         	mov	sp, r7
    3190: f85d 7b04    	ldr	r7, [sp], #4
    3194: 4770         	bx	lr
    3196: bf00         	nop

00003198 <$d>:
    3198: 00 00 00 20  	.word	0x20000000
    319c: 0d f0 ad 8b  	.word	0x8badf00d

000031a0 <overwrite_marker>:
; overwrite_marker():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:87
; static void overwrite_marker() {
    31a0: b480         	push	{r7}
    31a2: b083         	sub	sp, #12
    31a4: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:89
;   unsigned long *marker_nvm_addr = &__etext + (&fresh_marker - &__data_start__);
    31a6: 4a15         	ldr	r2, [pc, #84]           @ 0x31fc <$d>
    31a8: 4b15         	ldr	r3, [pc, #84]           @ 0x3200 <$d+0x4>
    31aa: 1ad3         	subs	r3, r2, r3
    31ac: 461a         	mov	r2, r3
    31ae: 4b15         	ldr	r3, [pc, #84]           @ 0x3204 <$d+0x8>
    31b0: 4413         	add	r3, r2
    31b2: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:92
;   NRF_NVMC->CONFIG |= NVMC_CONFIG_WEN_Msk;
    31b4: 4b14         	ldr	r3, [pc, #80]           @ 0x3208 <$d+0xc>
    31b6: f8d3 3504    	ldr.w	r3, [r3, #1284]
    31ba: 4a13         	ldr	r2, [pc, #76]           @ 0x3208 <$d+0xc>
    31bc: f043 0303    	orr	r3, r3, #3
    31c0: f8c2 3504    	str.w	r3, [r2, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:94
;   while (NRF_NVMC->READY == 0)
    31c4: e000         	b	0x31c8 <overwrite_marker+0x28> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:95
;     __NOP();
    31c6: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:94
;   while (NRF_NVMC->READY == 0)
    31c8: 4b0f         	ldr	r3, [pc, #60]           @ 0x3208 <$d+0xc>
    31ca: f8d3 3400    	ldr.w	r3, [r3, #1024]
    31ce: 2b00         	cmp	r3, #0
    31d0: d0f9         	beq	0x31c6 <overwrite_marker+0x26> @ imm = #-14
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:97
;   *marker_nvm_addr = 0x0;
    31d2: 687b         	ldr	r3, [r7, #4]
    31d4: 2200         	movs	r2, #0
    31d6: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h:288
;   __ASM volatile ("dmb 0xF":::"memory");
    31d8: f3bf 8f5f    	dmb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/cmsis_gcc.h:289
; }
    31dc: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:100
;   NRF_NVMC->CONFIG &= ~NVMC_CONFIG_WEN_Msk;
    31de: 4b0a         	ldr	r3, [pc, #40]           @ 0x3208 <$d+0xc>
    31e0: f8d3 3504    	ldr.w	r3, [r3, #1284]
    31e4: 4a08         	ldr	r2, [pc, #32]           @ 0x3208 <$d+0xc>
    31e6: f023 0303    	bic	r3, r3, #3
    31ea: f8c2 3504    	str.w	r3, [r2, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:101
; }
    31ee: bf00         	nop
    31f0: 370c         	adds	r7, #12
    31f2: 46bd         	mov	sp, r7
    31f4: f85d 7b04    	ldr	r7, [sp], #4
    31f8: 4770         	bx	lr
    31fa: bf00         	nop

000031fc <$d>:
    31fc: 00 00 00 20  	.word	0x20000000
    3200: 00 00 00 20  	.word	0x20000000
    3204: e4 84 00 00  	.word	0x000084e4
    3208: 00 e0 01 40  	.word	0x4001e000

0000320c <checkpoint_store>:
; checkpoint_store():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:114
; static int checkpoint_store() {
    320c: b580         	push	{r7, lr}
    320e: b088         	sub	sp, #32
    3210: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:118
;   hdr.top_of_stack = *(uint32_t *)&usr_task_tcb;
    3212: 4b38         	ldr	r3, [pc, #224]          @ 0x32f4 <$d>
    3214: 681b         	ldr	r3, [r3]
    3216: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:120
;   hdr.stack_size = ((unsigned int)&usr_task_stack[USR_STACK_SIZE_WORDS - 1] - hdr.top_of_stack) / sizeof(StackType_t);
    3218: 4a37         	ldr	r2, [pc, #220]          @ 0x32f8 <$d+0x4>
    321a: 68fb         	ldr	r3, [r7, #12]
    321c: 1ad3         	subs	r3, r2, r3
    321e: 089b         	lsrs	r3, r3, #2
    3220: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:122
;   hdr.data_size = (unsigned int)&__data_retained_end__ - (unsigned int)&__data_retained_start__;
    3222: 4a36         	ldr	r2, [pc, #216]          @ 0x32fc <$d+0x8>
    3224: 4b36         	ldr	r3, [pc, #216]          @ 0x3300 <$d+0xc>
    3226: 1ad3         	subs	r3, r2, r3
    3228: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:124
;   hdr.bss_size = (unsigned int)&__bss_retained_end__ - (unsigned int)&__bss_retained_start__;
    322a: 4a36         	ldr	r2, [pc, #216]          @ 0x3304 <$d+0x10>
    322c: 4b36         	ldr	r3, [pc, #216]          @ 0x3308 <$d+0x14>
    322e: 1ad3         	subs	r3, r2, r3
    3230: 61bb         	str	r3, [r7, #24]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:128
;   hdr.signature = NVM_SIG_INVALID;
    3232: 4b36         	ldr	r3, [pc, #216]          @ 0x330c <$d+0x18>
    3234: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:130
;   if ((rc = nvm_begin_write(0x0)) != 0)
    3236: 2000         	movs	r0, #0
    3238: f000 fcc5    	bl	0x3bc6 <nvm_begin_write> @ imm = #2442
    323c: 61f8         	str	r0, [r7, #28]
    323e: 69fb         	ldr	r3, [r7, #28]
    3240: 2b00         	cmp	r3, #0
    3242: d001         	beq	0x3248 <checkpoint_store+0x3c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:131
;     return rc;
    3244: 69fb         	ldr	r3, [r7, #28]
    3246: e051         	b	0x32ec <checkpoint_store+0xe0> @ imm = #162
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:132
;   if ((rc = nvm_write((uint8_t *)&hdr, sizeof(checkpoint_header))) != 0)
    3248: f107 0308    	add.w	r3, r7, #8
    324c: 2114         	movs	r1, #20
    324e: 4618         	mov	r0, r3
    3250: f000 fce8    	bl	0x3c24 <nvm_write>      @ imm = #2512
    3254: 61f8         	str	r0, [r7, #28]
    3256: 69fb         	ldr	r3, [r7, #28]
    3258: 2b00         	cmp	r3, #0
    325a: d001         	beq	0x3260 <checkpoint_store+0x54> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:133
;     return rc;
    325c: 69fb         	ldr	r3, [r7, #28]
    325e: e045         	b	0x32ec <checkpoint_store+0xe0> @ imm = #138
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:134
;   if ((rc = nvm_write((uint8_t *)hdr.top_of_stack, hdr.stack_size * sizeof(StackType_t))) != 0)
    3260: 68fb         	ldr	r3, [r7, #12]
    3262: 461a         	mov	r2, r3
    3264: 693b         	ldr	r3, [r7, #16]
    3266: 009b         	lsls	r3, r3, #2
    3268: 4619         	mov	r1, r3
    326a: 4610         	mov	r0, r2
    326c: f000 fcda    	bl	0x3c24 <nvm_write>      @ imm = #2484
    3270: 61f8         	str	r0, [r7, #28]
    3272: 69fb         	ldr	r3, [r7, #28]
    3274: 2b00         	cmp	r3, #0
    3276: d001         	beq	0x327c <checkpoint_store+0x70> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:135
;     return rc;
    3278: 69fb         	ldr	r3, [r7, #28]
    327a: e037         	b	0x32ec <checkpoint_store+0xe0> @ imm = #110
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:136
;   if ((rc = nvm_write((uint8_t *)&__data_retained_start__, hdr.data_size)) != 0)
    327c: 697b         	ldr	r3, [r7, #20]
    327e: 4619         	mov	r1, r3
    3280: 481f         	ldr	r0, [pc, #124]          @ 0x3300 <$d+0xc>
    3282: f000 fccf    	bl	0x3c24 <nvm_write>      @ imm = #2462
    3286: 61f8         	str	r0, [r7, #28]
    3288: 69fb         	ldr	r3, [r7, #28]
    328a: 2b00         	cmp	r3, #0
    328c: d001         	beq	0x3292 <checkpoint_store+0x86> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:137
;     return rc;
    328e: 69fb         	ldr	r3, [r7, #28]
    3290: e02c         	b	0x32ec <checkpoint_store+0xe0> @ imm = #88
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:138
;   if ((rc = nvm_write((uint8_t *)&__bss_retained_start__, hdr.bss_size)) != 0)
    3292: 69bb         	ldr	r3, [r7, #24]
    3294: 4619         	mov	r1, r3
    3296: 481c         	ldr	r0, [pc, #112]          @ 0x3308 <$d+0x14>
    3298: f000 fcc4    	bl	0x3c24 <nvm_write>      @ imm = #2440
    329c: 61f8         	str	r0, [r7, #28]
    329e: 69fb         	ldr	r3, [r7, #28]
    32a0: 2b00         	cmp	r3, #0
    32a2: d001         	beq	0x32a8 <checkpoint_store+0x9c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:139
;     return rc;
    32a4: 69fb         	ldr	r3, [r7, #28]
    32a6: e021         	b	0x32ec <checkpoint_store+0xe0> @ imm = #66
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:141
;   nvm_end();
    32a8: f000 fc9c    	bl	0x3be4 <nvm_end>        @ imm = #2360
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:144
;   if ((rc = nvm_begin_write(0x0)) != 0)
    32ac: 2000         	movs	r0, #0
    32ae: f000 fc8a    	bl	0x3bc6 <nvm_begin_write> @ imm = #2324
    32b2: 61f8         	str	r0, [r7, #28]
    32b4: 69fb         	ldr	r3, [r7, #28]
    32b6: 2b00         	cmp	r3, #0
    32b8: d001         	beq	0x32be <checkpoint_store+0xb2> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:145
;     return rc;
    32ba: 69fb         	ldr	r3, [r7, #28]
    32bc: e016         	b	0x32ec <checkpoint_store+0xe0> @ imm = #44
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:146
;   uint32_t signature = NVM_SIG_VALID;
    32be: 4b14         	ldr	r3, [pc, #80]           @ 0x3310 <$d+0x1c>
    32c0: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:147
;   if ((rc = nvm_write((uint8_t *)&signature, sizeof(signature))) != 0)
    32c2: 1d3b         	adds	r3, r7, #4
    32c4: 2104         	movs	r1, #4
    32c6: 4618         	mov	r0, r3
    32c8: f000 fcac    	bl	0x3c24 <nvm_write>      @ imm = #2392
    32cc: 61f8         	str	r0, [r7, #28]
    32ce: 69fb         	ldr	r3, [r7, #28]
    32d0: 2b00         	cmp	r3, #0
    32d2: d001         	beq	0x32d8 <checkpoint_store+0xcc> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:148
;     return rc;
    32d4: 69fb         	ldr	r3, [r7, #28]
    32d6: e009         	b	0x32ec <checkpoint_store+0xe0> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:149
;   nvm_end();
    32d8: f000 fc84    	bl	0x3be4 <nvm_end>        @ imm = #2312
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:152
;   if (check_fresh_start()) {
    32dc: f7ff ff4c    	bl	0x3178 <check_fresh_start> @ imm = #-360
    32e0: 4603         	mov	r3, r0
    32e2: 2b00         	cmp	r3, #0
    32e4: d001         	beq	0x32ea <checkpoint_store+0xde> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:153
;     overwrite_marker();
    32e6: f7ff ff5b    	bl	0x31a0 <overwrite_marker> @ imm = #-330
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:156
;   return 0;
    32ea: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:157
; }
    32ec: 4618         	mov	r0, r3
    32ee: 3720         	adds	r7, #32
    32f0: 46bd         	mov	sp, r7
    32f2: bd80         	pop	{r7, pc}

000032f4 <$d>:
    32f4: 18 00 00 20  	.word	0x20000018
    32f8: 1c e8 01 20  	.word	0x2001e81c
    32fc: 10 e0 01 20  	.word	0x2001e010
    3300: 00 e0 01 20  	.word	0x2001e000
    3304: 20 e0 01 20  	.word	0x2001e020
    3308: 10 e0 01 20  	.word	0x2001e010
    330c: 0d f0 ad 8b  	.word	0x8badf00d
    3310: 0d d0 fe ca  	.word	0xcafed00d

00003314 <checkpoint_load>:
; checkpoint_load():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:160
; static int checkpoint_load() {
    3314: b580         	push	{r7, lr}
    3316: b086         	sub	sp, #24
    3318: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:164
;   if ((rc = nvm_begin_read(0x0)) != 0)
    331a: 2000         	movs	r0, #0
    331c: f000 fc46    	bl	0x3bac <nvm_begin_read> @ imm = #2188
    3320: 6178         	str	r0, [r7, #20]
    3322: 697b         	ldr	r3, [r7, #20]
    3324: 2b00         	cmp	r3, #0
    3326: d001         	beq	0x332c <checkpoint_load+0x18> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:165
;     return rc;
    3328: 697b         	ldr	r3, [r7, #20]
    332a: e041         	b	0x33b0 <checkpoint_load+0x9c> @ imm = #130
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:166
;   if ((rc = nvm_read((uint8_t *)&hdr, sizeof(checkpoint_header))) != 0)
    332c: 463b         	mov	r3, r7
    332e: 2114         	movs	r1, #20
    3330: 4618         	mov	r0, r3
    3332: f000 fcb1    	bl	0x3c98 <nvm_read>       @ imm = #2402
    3336: 6178         	str	r0, [r7, #20]
    3338: 697b         	ldr	r3, [r7, #20]
    333a: 2b00         	cmp	r3, #0
    333c: d001         	beq	0x3342 <checkpoint_load+0x2e> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:167
;     return rc;
    333e: 697b         	ldr	r3, [r7, #20]
    3340: e036         	b	0x33b0 <checkpoint_load+0x9c> @ imm = #108
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:170
;   if (hdr.signature != NVM_SIG_VALID) {
    3342: 683b         	ldr	r3, [r7]
    3344: 4a1c         	ldr	r2, [pc, #112]          @ 0x33b8 <$d>
    3346: 4293         	cmp	r3, r2
    3348: d004         	beq	0x3354 <checkpoint_load+0x40> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:171
;     nvm_end();
    334a: f000 fc4b    	bl	0x3be4 <nvm_end>        @ imm = #2198
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:172
;     return -1;
    334e: f04f 33ff    	mov.w	r3, #4294967295
    3352: e02d         	b	0x33b0 <checkpoint_load+0x9c> @ imm = #90
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:176
;   if ((rc = nvm_read((uint8_t *)hdr.top_of_stack, hdr.stack_size * sizeof(StackType_t))) != 0)
    3354: 687b         	ldr	r3, [r7, #4]
    3356: 461a         	mov	r2, r3
    3358: 68bb         	ldr	r3, [r7, #8]
    335a: 009b         	lsls	r3, r3, #2
    335c: 4619         	mov	r1, r3
    335e: 4610         	mov	r0, r2
    3360: f000 fc9a    	bl	0x3c98 <nvm_read>       @ imm = #2356
    3364: 6178         	str	r0, [r7, #20]
    3366: 697b         	ldr	r3, [r7, #20]
    3368: 2b00         	cmp	r3, #0
    336a: d001         	beq	0x3370 <checkpoint_load+0x5c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:177
;     return rc;
    336c: 697b         	ldr	r3, [r7, #20]
    336e: e01f         	b	0x33b0 <checkpoint_load+0x9c> @ imm = #62
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:179
;   if ((rc = nvm_read((uint8_t *)&__data_retained_start__, hdr.data_size)) != 0)
    3370: 68fb         	ldr	r3, [r7, #12]
    3372: 4619         	mov	r1, r3
    3374: 4811         	ldr	r0, [pc, #68]           @ 0x33bc <$d+0x4>
    3376: f000 fc8f    	bl	0x3c98 <nvm_read>       @ imm = #2334
    337a: 6178         	str	r0, [r7, #20]
    337c: 697b         	ldr	r3, [r7, #20]
    337e: 2b00         	cmp	r3, #0
    3380: d001         	beq	0x3386 <checkpoint_load+0x72> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:180
;     return rc;
    3382: 697b         	ldr	r3, [r7, #20]
    3384: e014         	b	0x33b0 <checkpoint_load+0x9c> @ imm = #40
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:181
;   if ((rc = nvm_read((uint8_t *)&__bss_retained_start__, hdr.bss_size)) != 0)
    3386: 693b         	ldr	r3, [r7, #16]
    3388: 4619         	mov	r1, r3
    338a: 480d         	ldr	r0, [pc, #52]           @ 0x33c0 <$d+0x8>
    338c: f000 fc84    	bl	0x3c98 <nvm_read>       @ imm = #2312
    3390: 6178         	str	r0, [r7, #20]
    3392: 697b         	ldr	r3, [r7, #20]
    3394: 2b00         	cmp	r3, #0
    3396: d001         	beq	0x339c <checkpoint_load+0x88> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:182
;     return rc;
    3398: 697b         	ldr	r3, [r7, #20]
    339a: e009         	b	0x33b0 <checkpoint_load+0x9c> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:183
;   nvm_end();
    339c: f000 fc22    	bl	0x3be4 <nvm_end>        @ imm = #2116
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:186
;   memcpy(&usr_task_tcb, &hdr.top_of_stack, sizeof(uint32_t));
    33a0: 463b         	mov	r3, r7
    33a2: 3304         	adds	r3, #4
    33a4: 2204         	movs	r2, #4
    33a6: 4619         	mov	r1, r3
    33a8: 4806         	ldr	r0, [pc, #24]           @ 0x33c4 <$d+0xc>
    33aa: f003 fb31    	bl	0x6a10 <memcpy>         @ imm = #13922
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:187
;   return 0;
    33ae: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:188
; }
    33b0: 4618         	mov	r0, r3
    33b2: 3718         	adds	r7, #24
    33b4: 46bd         	mov	sp, r7
    33b6: bd80         	pop	{r7, pc}

000033b8 <$d>:
    33b8: 0d d0 fe ca  	.word	0xcafed00d
    33bc: 00 e0 01 20  	.word	0x2001e000
    33c0: 10 e0 01 20  	.word	0x2001e010
    33c4: 18 00 00 20  	.word	0x20000018

000033c8 <vPortSetupTimerInterrupt>:
; vPortSetupTimerInterrupt():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:191
; void vPortSetupTimerInterrupt(void) {
    33c8: b480         	push	{r7}
    33ca: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:192
;   return;
    33cc: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:193
; }
    33ce: 46bd         	mov	sp, r7
    33d0: f85d 7b04    	ldr	r7, [sp], #4
    33d4: 4770         	bx	lr

000033d6 <vApplicationIdleHook>:
; vApplicationIdleHook():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:196
; void vApplicationIdleHook(void) {
    33d6: b480         	push	{r7}
    33d8: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:12
;   __WFE();
    33da: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:13
;   __SEV();
    33dc: bf40         	sev
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:14
;   __WFE();
    33de: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:15
; }
    33e0: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:198
;   return;
    33e2: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:199
; }
    33e4: 46bd         	mov	sp, r7
    33e6: f85d 7b04    	ldr	r7, [sp], #4
    33ea: 4770         	bx	lr

000033ec <vApplicationGetIdleTaskMemory>:
; vApplicationGetIdleTaskMemory():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:203
;                                    uint32_t *pulIdleTaskStackSize) {
    33ec: b480         	push	{r7}
    33ee: b085         	sub	sp, #20
    33f0: af00         	add	r7, sp, #0
    33f2: 60f8         	str	r0, [r7, #12]
    33f4: 60b9         	str	r1, [r7, #8]
    33f6: 607a         	str	r2, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:204
;   *ppxIdleTaskTCBBuffer = &xIdleTaskTCB;
    33f8: 68fb         	ldr	r3, [r7, #12]
    33fa: 4a07         	ldr	r2, [pc, #28]           @ 0x3418 <$d>
    33fc: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:205
;   *ppxIdleTaskStackBuffer = uxIdleTaskStack;
    33fe: 68bb         	ldr	r3, [r7, #8]
    3400: 4a06         	ldr	r2, [pc, #24]           @ 0x341c <$d+0x4>
    3402: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:206
;   *pulIdleTaskStackSize = configMINIMAL_STACK_SIZE;
    3404: 687b         	ldr	r3, [r7, #4]
    3406: 2280         	movs	r2, #128
    3408: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:207
; }
    340a: bf00         	nop
    340c: 3714         	adds	r7, #20
    340e: 46bd         	mov	sp, r7
    3410: f85d 7b04    	ldr	r7, [sp], #4
    3414: 4770         	bx	lr
    3416: bf00         	nop

00003418 <$d>:
    3418: 80 00 00 20  	.word	0x20000080
    341c: e8 00 00 20  	.word	0x200000e8

00003420 <vApplicationStackOverflowHook>:
; vApplicationStackOverflowHook():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:209
; void vApplicationStackOverflowHook(TaskHandle_t xTask, char *pcTaskName) {
    3420: b580         	push	{r7, lr}
    3422: b082         	sub	sp, #8
    3424: af00         	add	r7, sp, #0
    3426: 6078         	str	r0, [r7, #4]
    3428: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:210
;   printf("\r\nPANIC: Stack has overflowed!\r\n");
    342a: 4804         	ldr	r0, [pc, #16]           @ 0x343c <$d>
    342c: f7ff f8c2    	bl	0x25b4 <printf_>        @ imm = #-3708
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:12
;   __WFE();
    3430: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:13
;   __SEV();
    3432: bf40         	sev
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:14
;   __WFE();
    3434: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:15
; }
    3436: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:212
;     enter_low_power();
    3438: bf00         	nop
    343a: e7f9         	b	0x3430 <vApplicationStackOverflowHook+0x10> @ imm = #-14

0000343c <$d>:
    343c: 90 80 00 00  	.word	0x00008090

00003440 <threshold_callback>:
; threshold_callback():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:215
; static void threshold_callback(unsigned int pin_no) {
    3440: b580         	push	{r7, lr}
    3442: b086         	sub	sp, #24
    3444: af02         	add	r7, sp, #8
    3446: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:216
;   BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    3448: 2300         	movs	r3, #0
    344a: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:218
;   if (pin_no == PIN_PWRGD_L) {
    344c: 687b         	ldr	r3, [r7, #4]
    344e: 2b17         	cmp	r3, #23
    3450: d10d         	bne	0x346e <threshold_callback+0x2e> @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:219
;     xTaskNotifyIndexedFromISR(sys_task_handle, 1, EVT_RUNTIME_PWRGD_L, eSetValueWithOverwrite,
    3452: 4b16         	ldr	r3, [pc, #88]           @ 0x34ac <$d>
    3454: 6818         	ldr	r0, [r3]
    3456: f107 030c    	add.w	r3, r7, #12
    345a: 9301         	str	r3, [sp, #4]
    345c: 2300         	movs	r3, #0
    345e: 9300         	str	r3, [sp]
    3460: 2303         	movs	r3, #3
    3462: f04f 5280    	mov.w	r2, #268435456
    3466: 2101         	movs	r1, #1
    3468: f001 fcf6    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #6636
    346c: e00e         	b	0x348c <threshold_callback+0x4c> @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:221
;   } else if (pin_no == PIN_PWRGD_H) {
    346e: 687b         	ldr	r3, [r7, #4]
    3470: 2b07         	cmp	r3, #7
    3472: d10b         	bne	0x348c <threshold_callback+0x4c> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:222
;     xTaskNotifyIndexedFromISR(sys_task_handle, 1, EVT_RUNTIME_PWRGD_H, eSetValueWithOverwrite,
    3474: 4b0d         	ldr	r3, [pc, #52]           @ 0x34ac <$d>
    3476: 6818         	ldr	r0, [r3]
    3478: f107 030c    	add.w	r3, r7, #12
    347c: 9301         	str	r3, [sp, #4]
    347e: 2300         	movs	r3, #0
    3480: 9300         	str	r3, [sp]
    3482: 2303         	movs	r3, #3
    3484: 4a0a         	ldr	r2, [pc, #40]           @ 0x34b0 <$d+0x4>
    3486: 2101         	movs	r1, #1
    3488: f001 fce6    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #6604
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:225
;   portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    348c: 68fb         	ldr	r3, [r7, #12]
    348e: 2b00         	cmp	r3, #0
    3490: d008         	beq	0x34a4 <threshold_callback+0x64> @ imm = #16
    3492: 4b08         	ldr	r3, [pc, #32]           @ 0x34b4 <$d+0x8>
    3494: f04f 5280    	mov.w	r2, #268435456
    3498: 601a         	str	r2, [r3]
    349a: f3bf 8f4f    	dsb	sy
    349e: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:226
;   return;
    34a2: bf00         	nop
    34a4: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:227
; }
    34a6: 3710         	adds	r7, #16
    34a8: 46bd         	mov	sp, r7
    34aa: bd80         	pop	{r7, pc}

000034ac <$d>:
    34ac: 50 07 00 20  	.word	0x20000750
    34b0: 01 00 00 10  	.word	0x10000001
    34b4: 04 ed 00 e0  	.word	0xe000ed04

000034b8 <initialize_retained>:
; initialize_retained():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:230
; static void initialize_retained(void) {
    34b8: b580         	push	{r7, lr}
    34ba: b082         	sub	sp, #8
    34bc: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:233
;   src = &__etext + (&__data_end__ - &__data_start__);
    34be: 4a14         	ldr	r2, [pc, #80]           @ 0x3510 <$d>
    34c0: 4b14         	ldr	r3, [pc, #80]           @ 0x3514 <$d+0x4>
    34c2: 1ad3         	subs	r3, r2, r3
    34c4: 461a         	mov	r2, r3
    34c6: 4b14         	ldr	r3, [pc, #80]           @ 0x3518 <$d+0x8>
    34c8: 4413         	add	r3, r2
    34ca: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:234
;   dst = &__data_retained_start__;
    34cc: 4b13         	ldr	r3, [pc, #76]           @ 0x351c <$d+0xc>
    34ce: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:235
;   while (dst < &__data_retained_end__)
    34d0: e007         	b	0x34e2 <initialize_retained+0x2a> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:236
;     *(dst++) = *(src++);
    34d2: 687a         	ldr	r2, [r7, #4]
    34d4: 1d13         	adds	r3, r2, #4
    34d6: 607b         	str	r3, [r7, #4]
    34d8: 683b         	ldr	r3, [r7]
    34da: 1d19         	adds	r1, r3, #4
    34dc: 6039         	str	r1, [r7]
    34de: 6812         	ldr	r2, [r2]
    34e0: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:235
;   while (dst < &__data_retained_end__)
    34e2: 683b         	ldr	r3, [r7]
    34e4: 4a0e         	ldr	r2, [pc, #56]           @ 0x3520 <$d+0x10>
    34e6: 4293         	cmp	r3, r2
    34e8: d3f3         	blo	0x34d2 <initialize_retained+0x1a> @ imm = #-26
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:238
;   src = &__bss_retained_start__;
    34ea: 4b0e         	ldr	r3, [pc, #56]           @ 0x3524 <$d+0x14>
    34ec: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:239
;   while (src < &__bss_retained_end__)
    34ee: e004         	b	0x34fa <initialize_retained+0x42> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:240
;     *(src++) = 0;
    34f0: 687b         	ldr	r3, [r7, #4]
    34f2: 1d1a         	adds	r2, r3, #4
    34f4: 607a         	str	r2, [r7, #4]
    34f6: 2200         	movs	r2, #0
    34f8: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:239
;   while (src < &__bss_retained_end__)
    34fa: 687b         	ldr	r3, [r7, #4]
    34fc: 4a0a         	ldr	r2, [pc, #40]           @ 0x3528 <$d+0x18>
    34fe: 4293         	cmp	r3, r2
    3500: d3f6         	blo	0x34f0 <initialize_retained+0x38> @ imm = #-20
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:243
;   __libc_init_array();
    3502: f003 fa61    	bl	0x69c8 <__libc_init_array> @ imm = #13506
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:244
; }
    3506: bf00         	nop
    3508: 3708         	adds	r7, #8
    350a: 46bd         	mov	sp, r7
    350c: bd80         	pop	{r7, pc}
    350e: bf00         	nop

00003510 <$d>:
    3510: 10 00 00 20  	.word	0x20000010
    3514: 00 00 00 20  	.word	0x20000000
    3518: e4 84 00 00  	.word	0x000084e4
    351c: 00 e0 01 20  	.word	0x2001e000
    3520: 10 e0 01 20  	.word	0x2001e010
    3524: 10 e0 01 20  	.word	0x2001e010
    3528: 20 e0 01 20  	.word	0x2001e020

0000352c <teardown>:
; teardown():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:255
; static void teardown(void) {
    352c: b580         	push	{r7, lr}
    352e: b082         	sub	sp, #8
    3530: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:259
;   for (fn_addr = &__teardown_start__; fn_addr < &__teardown_end__; fn_addr++) {
    3532: 4b0b         	ldr	r3, [pc, #44]           @ 0x3560 <$d>
    3534: 607b         	str	r3, [r7, #4]
    3536: e00a         	b	0x354e <teardown+0x22>  @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:260
;     fn_teardown = (void (*)(void)) * fn_addr;
    3538: 687b         	ldr	r3, [r7, #4]
    353a: 681b         	ldr	r3, [r3]
    353c: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:261
;     if (fn_teardown != NULL)
    353e: 683b         	ldr	r3, [r7]
    3540: 2b00         	cmp	r3, #0
    3542: d001         	beq	0x3548 <teardown+0x1c>  @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:262
;       fn_teardown();
    3544: 683b         	ldr	r3, [r7]
    3546: 4798         	blx	r3
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:259
;   for (fn_addr = &__teardown_start__; fn_addr < &__teardown_end__; fn_addr++) {
    3548: 687b         	ldr	r3, [r7, #4]
    354a: 3304         	adds	r3, #4
    354c: 607b         	str	r3, [r7, #4]
    354e: 687b         	ldr	r3, [r7, #4]
    3550: 4a04         	ldr	r2, [pc, #16]           @ 0x3564 <$d+0x4>
    3552: 4293         	cmp	r3, r2
    3554: d3f0         	blo	0x3538 <teardown+0xc>   @ imm = #-32
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:264
; }
    3556: bf00         	nop
    3558: bf00         	nop
    355a: 3708         	adds	r7, #8
    355c: 46bd         	mov	sp, r7
    355e: bd80         	pop	{r7, pc}

00003560 <$d>:
    3560: 48 09 00 20  	.word	0x20000948
    3564: 58 09 00 20  	.word	0x20000958

00003568 <sys_task>:
; sys_task():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:267
; static void sys_task(void *pvParameter) {
    3568: b580         	push	{r7, lr}
    356a: b086         	sub	sp, #24
    356c: af02         	add	r7, sp, #8
    356e: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:273
;   vTaskSuspend(usr_task_handle);
    3570: 4b61         	ldr	r3, [pc, #388]          @ 0x36f8 <$d>
    3572: 681b         	ldr	r3, [r3]
    3574: 4618         	mov	r0, r3
    3576: f000 ff89    	bl	0x448c <vTaskSuspend>   @ imm = #3858
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:280
;   if (check_fresh_start()) {
    357a: f7ff fdfd    	bl	0x3178 <check_fresh_start> @ imm = #-1030
    357e: 4603         	mov	r3, r0
    3580: 2b00         	cmp	r3, #0
    3582: d004         	beq	0x358e <sys_task+0x26>  @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:281
;     initialize_retained();
    3584: f7ff ff98    	bl	0x34b8 <initialize_retained> @ imm = #-208
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:282
;     bootstrap_callback();
    3588: f7ff fdee    	bl	0x3168 <bootstrap_callback> @ imm = #-1060
    358c: e018         	b	0x35c0 <sys_task+0x58>  @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:285
;     if (checkpoint_load() == 0) {
    358e: f7ff fec1    	bl	0x3314 <checkpoint_load> @ imm = #-638
    3592: 4603         	mov	r3, r0
    3594: 2b00         	cmp	r3, #0
    3596: d10f         	bne	0x35b8 <sys_task+0x50>  @ imm = #30
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:287
;       xTaskNotifyIndexed(usr_task_handle, 1, EVT_RESET, eSetBits);
    3598: 4b57         	ldr	r3, [pc, #348]          @ 0x36f8 <$d>
    359a: 6818         	ldr	r0, [r3]
    359c: 2300         	movs	r3, #0
    359e: 9300         	str	r3, [sp]
    35a0: 2301         	movs	r3, #1
    35a2: f04f 4280    	mov.w	r2, #1073741824
    35a6: 2101         	movs	r1, #1
    35a8: f001 fb72    	bl	0x4c90 <xTaskGenericNotify> @ imm = #5860
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:288
;       runtime_stats.n_reset++;
    35ac: 4b53         	ldr	r3, [pc, #332]          @ 0x36fc <$d+0x4>
    35ae: 681b         	ldr	r3, [r3]
    35b0: 3301         	adds	r3, #1
    35b2: 4a52         	ldr	r2, [pc, #328]          @ 0x36fc <$d+0x4>
    35b4: 6013         	str	r3, [r2]
    35b6: e003         	b	0x35c0 <sys_task+0x58>  @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:290
;       initialize_retained();
    35b8: f7ff ff7e    	bl	0x34b8 <initialize_retained> @ imm = #-260
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:292
;       bootstrap_callback();
    35bc: f7ff fdd4    	bl	0x3168 <bootstrap_callback> @ imm = #-1112
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:296
;   reset_callback();
    35c0: f7fc fe44    	bl	0x24c <reset_callback>  @ imm = #-13176
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:299
;     resume_callback();
    35c4: f7ff fdc9    	bl	0x315a <resume_callback> @ imm = #-1134
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:300
;     vTaskResume(usr_task_handle);
    35c8: 4b4b         	ldr	r3, [pc, #300]          @ 0x36f8 <$d>
    35ca: 681b         	ldr	r3, [r3]
    35cc: 4618         	mov	r0, r3
    35ce: f000 fff3    	bl	0x45b8 <vTaskResume>    @ imm = #4070
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:303
;     vTaskSuspend(sys_task_handle);
    35d2: 4b4b         	ldr	r3, [pc, #300]          @ 0x3700 <$d+0x8>
    35d4: 681b         	ldr	r3, [r3]
    35d6: 4618         	mov	r0, r3
    35d8: f000 ff58    	bl	0x448c <vTaskSuspend>   @ imm = #3760
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:307
;     gpint_register(PIN_PWRGD_L, RIOTEE_GPIO_LEVEL_LOW, RIOTEE_GPIO_IN_NOPULL, threshold_callback);
    35dc: 4b49         	ldr	r3, [pc, #292]          @ 0x3704 <$d+0xc>
    35de: 2200         	movs	r2, #0
    35e0: 2100         	movs	r1, #0
    35e2: 2017         	movs	r0, #23
    35e4: f7ff fc44    	bl	0x2e70 <gpint_register> @ imm = #-1912
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:308
;     xTaskNotifyWaitIndexed(1, 0xFFFFFFFF, 0xFFFFFFFF, &notification_value, portMAX_DELAY);
    35e8: f107 030c    	add.w	r3, r7, #12
    35ec: f04f 32ff    	mov.w	r2, #4294967295
    35f0: 9200         	str	r2, [sp]
    35f2: f04f 32ff    	mov.w	r2, #4294967295
    35f6: f04f 31ff    	mov.w	r1, #4294967295
    35fa: 2001         	movs	r0, #1
    35fc: f001 fad6    	bl	0x4bac <xTaskGenericNotifyWait> @ imm = #5548
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:310
;     vTaskSuspend(usr_task_handle);
    3600: 4b3d         	ldr	r3, [pc, #244]          @ 0x36f8 <$d>
    3602: 681b         	ldr	r3, [r3]
    3604: 4618         	mov	r0, r3
    3606: f000 ff41    	bl	0x448c <vTaskSuspend>   @ imm = #3714
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:311
;     teardown();
    360a: f7ff ff8f    	bl	0x352c <teardown>       @ imm = #-226
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:313
;     suspend_callback();
    360e: f7ff fd9d    	bl	0x314c <suspend_callback> @ imm = #-1222
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:315
;     runtime_stats.n_suspend++;
    3612: 4b3a         	ldr	r3, [pc, #232]          @ 0x36fc <$d+0x4>
    3614: 685b         	ldr	r3, [r3, #4]
    3616: 3301         	adds	r3, #1
    3618: 4a38         	ldr	r2, [pc, #224]          @ 0x36fc <$d+0x4>
    361a: 6053         	str	r3, [r2, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:319
;     if (gpint_unregister(PIN_PWRGD_H) == RIOTEE_GPIO_ERR_OK)
    361c: 2007         	movs	r0, #7
    361e: f7ff fc85    	bl	0x2f2c <gpint_unregister> @ imm = #-1782
    3622: 4603         	mov	r3, r0
    3624: 2b00         	cmp	r3, #0
    3626: d109         	bne	0x363c <sys_task+0xd4>  @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:320
;       xTaskNotifyIndexed(usr_task_handle, 1, EVT_GPIO_BASE, eSetBits);
    3628: 4b33         	ldr	r3, [pc, #204]          @ 0x36f8 <$d>
    362a: 6818         	ldr	r0, [r3]
    362c: 2300         	movs	r3, #0
    362e: 9300         	str	r3, [sp]
    3630: 2301         	movs	r3, #1
    3632: f04f 7200    	mov.w	r2, #33554432
    3636: 2101         	movs	r1, #1
    3638: f001 fb2a    	bl	0x4c90 <xTaskGenericNotify> @ imm = #5716
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:321
;     gpint_register(PIN_PWRGD_H, RIOTEE_GPIO_LEVEL_HIGH, RIOTEE_GPIO_IN_NOPULL, threshold_callback);
    363c: 4b31         	ldr	r3, [pc, #196]          @ 0x3704 <$d+0xc>
    363e: 2200         	movs	r2, #0
    3640: 2101         	movs	r1, #1
    3642: 2007         	movs	r0, #7
    3644: f7ff fc14    	bl	0x2e70 <gpint_register> @ imm = #-2008
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:324
;     sys_setup_timer(3277);
    3648: f640 40cd    	movw	r0, #3277
    364c: f7ff faee    	bl	0x2c2c <sys_setup_timer> @ imm = #-2596
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:326
;     xTaskNotifyWaitIndexed(1, 0xFFFFFFFF, 0xFFFFFFFF, &notification_value, portMAX_DELAY);
    3650: f107 030c    	add.w	r3, r7, #12
    3654: f04f 32ff    	mov.w	r2, #4294967295
    3658: 9200         	str	r2, [sp]
    365a: f04f 32ff    	mov.w	r2, #4294967295
    365e: f04f 31ff    	mov.w	r1, #4294967295
    3662: 2001         	movs	r0, #1
    3664: f001 faa2    	bl	0x4bac <xTaskGenericNotifyWait> @ imm = #5444
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:328
;     if (notification_value == EVT_RUNTIME_PWRGD_H) {
    3668: 68fb         	ldr	r3, [r7, #12]
    366a: 4a27         	ldr	r2, [pc, #156]          @ 0x3708 <$d+0x10>
    366c: 4293         	cmp	r3, r2
    366e: d109         	bne	0x3684 <sys_task+0x11c> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:329
;       sys_cancel_timer();
    3670: f7ff fb00    	bl	0x2c74 <sys_cancel_timer> @ imm = #-2560
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:330
;       xTaskNotifyStateClearIndexed(xTaskGetCurrentTaskHandle(), 1);
    3674: f001 fa8a    	bl	0x4b8c <xTaskGetCurrentTaskHandle> @ imm = #5396
    3678: 4603         	mov	r3, r0
    367a: 2101         	movs	r1, #1
    367c: 4618         	mov	r0, r3
    367e: f001 fd09    	bl	0x5094 <xTaskGenericNotifyStateClear> @ imm = #6674
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:331
;       continue;
    3682: e038         	b	0x36f6 <sys_task+0x18e> @ imm = #112
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:335
;     if ((NRF_P0->IN & (1 << PIN_PWRGD_L)) == 0) {
    3684: f04f 43a0    	mov.w	r3, #1342177280
    3688: f8d3 3510    	ldr.w	r3, [r3, #1296]
    368c: f403 0300    	and	r3, r3, #8388608
    3690: 2b00         	cmp	r3, #0
    3692: d108         	bne	0x36a6 <sys_task+0x13e> @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:337
;       if (checkpoint_store() != 0)
    3694: f7ff fdba    	bl	0x320c <checkpoint_store> @ imm = #-1164
    3698: 4603         	mov	r3, r0
    369a: 2b00         	cmp	r3, #0
    369c: d009         	beq	0x36b2 <sys_task+0x14a> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:338
;         printf("Checkpointing failed!");
    369e: 481b         	ldr	r0, [pc, #108]          @ 0x370c <$d+0x14>
    36a0: f7fe ff88    	bl	0x25b4 <printf_>        @ imm = #-4336
    36a4: e005         	b	0x36b2 <sys_task+0x14a> @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:342
;       gpint_register(PIN_PWRGD_L, RIOTEE_GPIO_LEVEL_LOW, RIOTEE_GPIO_IN_NOPULL, threshold_callback);
    36a6: 4b17         	ldr	r3, [pc, #92]           @ 0x3704 <$d+0xc>
    36a8: 2200         	movs	r2, #0
    36aa: 2100         	movs	r1, #0
    36ac: 2017         	movs	r0, #23
    36ae: f7ff fbdf    	bl	0x2e70 <gpint_register> @ imm = #-2114
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:346
;     xTaskNotifyWaitIndexed(1, 0xFFFFFFFF, 0xFFFFFFFF, &notification_value, portMAX_DELAY);
    36b2: f107 030c    	add.w	r3, r7, #12
    36b6: f04f 32ff    	mov.w	r2, #4294967295
    36ba: 9200         	str	r2, [sp]
    36bc: f04f 32ff    	mov.w	r2, #4294967295
    36c0: f04f 31ff    	mov.w	r1, #4294967295
    36c4: 2001         	movs	r0, #1
    36c6: f001 fa71    	bl	0x4bac <xTaskGenericNotifyWait> @ imm = #5346
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:348
;     if (notification_value == EVT_RUNTIME_PWRGD_H) {
    36ca: 68fb         	ldr	r3, [r7, #12]
    36cc: 4a0e         	ldr	r2, [pc, #56]           @ 0x3708 <$d+0x10>
    36ce: 4293         	cmp	r3, r2
    36d0: d103         	bne	0x36da <sys_task+0x172> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:349
;       gpint_unregister(PIN_PWRGD_L);
    36d2: 2017         	movs	r0, #23
    36d4: f7ff fc2a    	bl	0x2f2c <gpint_unregister> @ imm = #-1964
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:350
;       continue;
    36d8: e00d         	b	0x36f6 <sys_task+0x18e> @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:353
;     checkpoint_store();
    36da: f7ff fd97    	bl	0x320c <checkpoint_store> @ imm = #-1234
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:355
;     xTaskNotifyWaitIndexed(1, 0xFFFFFFFF, 0xFFFFFFFF, &notification_value, portMAX_DELAY);
    36de: f107 030c    	add.w	r3, r7, #12
    36e2: f04f 32ff    	mov.w	r2, #4294967295
    36e6: 9200         	str	r2, [sp]
    36e8: f04f 32ff    	mov.w	r2, #4294967295
    36ec: f04f 31ff    	mov.w	r1, #4294967295
    36f0: 2001         	movs	r0, #1
    36f2: f001 fa5b    	bl	0x4bac <xTaskGenericNotifyWait> @ imm = #5302
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:299
;     resume_callback();
    36f6: e765         	b	0x35c4 <sys_task+0x5c>  @ imm = #-310

000036f8 <$d>:
    36f8: 54 07 00 20  	.word	0x20000754
    36fc: 10 e0 01 20  	.word	0x2001e010
    3700: 50 07 00 20  	.word	0x20000750
    3704: 41 34 00 00  	.word	0x00003441
    3708: 01 00 00 10  	.word	0x10000001
    370c: b4 80 00 00  	.word	0x000080b4

00003710 <user_task>:
; user_task():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:361
; void user_task(void *pvParameter) {
    3710: b580         	push	{r7, lr}
    3712: b082         	sub	sp, #8
    3714: af00         	add	r7, sp, #0
    3716: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:363
;   main();
    3718: f7fc fdb6    	bl	0x288 <main>            @ imm = #-13460
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:364
; }
    371c: bf00         	nop
    371e: 3708         	adds	r7, #8
    3720: 46bd         	mov	sp, r7
    3722: bd80         	pop	{r7, pc}

00003724 <runtime_start>:
; runtime_start():
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:366
; void runtime_start(void) {
    3724: b580         	push	{r7, lr}
    3726: b084         	sub	sp, #16
    3728: af04         	add	r7, sp, #16
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:367
;   riotee_uart_init(PIN_D1, RIOTEE_UART_BAUDRATE_1000000);
    372a: f04f 5180    	mov.w	r1, #268435456
    372e: 2008         	movs	r0, #8
    3730: f7ff fc90    	bl	0x3054 <riotee_uart_init> @ imm = #-1760
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:369
;   riotee_gpio_init();
    3734: f7ff fc28    	bl	0x2f88 <riotee_gpio_init> @ imm = #-1968
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:370
;   riotee_timing_init();
    3738: f7ff fab4    	bl	0x2ca4 <riotee_timing_init> @ imm = #-2712
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:372
;   nvm_init();
    373c: f000 f8de    	bl	0x38fc <nvm_init>       @ imm = #444
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:374
;   usr_task_handle = xTaskCreateStatic(user_task, "USR", USR_STACK_SIZE_WORDS, NULL, tskIDLE_PRIORITY + 2,
    3740: 4b12         	ldr	r3, [pc, #72]           @ 0x378c <$d>
    3742: 9302         	str	r3, [sp, #8]
    3744: 4b12         	ldr	r3, [pc, #72]           @ 0x3790 <$d+0x4>
    3746: 9301         	str	r3, [sp, #4]
    3748: 2302         	movs	r3, #2
    374a: 9300         	str	r3, [sp]
    374c: 2300         	movs	r3, #0
    374e: f44f 7200    	mov.w	r2, #512
    3752: 4910         	ldr	r1, [pc, #64]           @ 0x3794 <$d+0x8>
    3754: 4810         	ldr	r0, [pc, #64]           @ 0x3798 <$d+0xc>
    3756: f000 fd67    	bl	0x4228 <xTaskCreateStatic> @ imm = #2766
    375a: 4603         	mov	r3, r0
    375c: 4a0f         	ldr	r2, [pc, #60]           @ 0x379c <$d+0x10>
    375e: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:377
;   sys_task_handle = xTaskCreateStatic(sys_task, "SYS", SYS_STACK_SIZE, NULL, (configMAX_PRIORITIES - 1),
    3760: 4b0f         	ldr	r3, [pc, #60]           @ 0x37a0 <$d+0x14>
    3762: 9302         	str	r3, [sp, #8]
    3764: 4b0f         	ldr	r3, [pc, #60]           @ 0x37a4 <$d+0x18>
    3766: 9301         	str	r3, [sp, #4]
    3768: 2304         	movs	r3, #4
    376a: 9300         	str	r3, [sp]
    376c: 2300         	movs	r3, #0
    376e: f44f 7280    	mov.w	r2, #256
    3772: 490d         	ldr	r1, [pc, #52]           @ 0x37a8 <$d+0x1c>
    3774: 480d         	ldr	r0, [pc, #52]           @ 0x37ac <$d+0x20>
    3776: f000 fd57    	bl	0x4228 <xTaskCreateStatic> @ imm = #2734
    377a: 4603         	mov	r3, r0
    377c: 4a0c         	ldr	r2, [pc, #48]           @ 0x37b0 <$d+0x24>
    377e: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:380
;   vTaskStartScheduler();
    3780: f000 ff92    	bl	0x46a8 <vTaskStartScheduler> @ imm = #3876
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.c:381
; }
    3784: bf00         	nop
    3786: 46bd         	mov	sp, r7
    3788: bd80         	pop	{r7, pc}
    378a: bf00         	nop

0000378c <$d>:
    378c: 18 00 00 20  	.word	0x20000018
    3790: 20 e0 01 20  	.word	0x2001e020
    3794: cc 80 00 00  	.word	0x000080cc
    3798: 11 37 00 00  	.word	0x00003711
    379c: 54 07 00 20  	.word	0x20000754
    37a0: e8 02 00 20  	.word	0x200002e8
    37a4: 50 03 00 20  	.word	0x20000350
    37a8: d0 80 00 00  	.word	0x000080d0
    37ac: 69 35 00 00  	.word	0x00003569
    37b0: 50 07 00 20  	.word	0x20000750

000037b4 <__NVIC_EnableIRQ>:
; __NVIC_EnableIRQ():
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1685
; {
    37b4: b480         	push	{r7}
    37b6: b083         	sub	sp, #12
    37b8: af00         	add	r7, sp, #0
    37ba: 4603         	mov	r3, r0
    37bc: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1686
;   if ((int32_t)(IRQn) >= 0)
    37be: f997 3007    	ldrsb.w	r3, [r7, #7]
    37c2: 2b00         	cmp	r3, #0
    37c4: db0b         	blt	0x37de <__NVIC_EnableIRQ+0x2a> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1689
;     NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    37c6: 79fb         	ldrb	r3, [r7, #7]
    37c8: f003 021f    	and	r2, r3, #31
    37cc: 4907         	ldr	r1, [pc, #28]           @ 0x37ec <$d>
    37ce: f997 3007    	ldrsb.w	r3, [r7, #7]
    37d2: 095b         	lsrs	r3, r3, #5
    37d4: 2001         	movs	r0, #1
    37d6: fa00 f202    	lsl.w	r2, r0, r2
    37da: f841 2023    	str.w	r2, [r1, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1692
; }
    37de: bf00         	nop
    37e0: 370c         	adds	r7, #12
    37e2: 46bd         	mov	sp, r7
    37e4: f85d 7b04    	ldr	r7, [sp], #4
    37e8: 4770         	bx	lr
    37ea: bf00         	nop

000037ec <$d>:
    37ec: 00 e1 00 e0  	.word	0xe000e100

000037f0 <riotee_gpio_get_port>:
; riotee_gpio_get_port():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:87
; static inline riotee_gpio_port_t* riotee_gpio_get_port(unsigned int pin) {
    37f0: b480         	push	{r7}
    37f2: b083         	sub	sp, #12
    37f4: af00         	add	r7, sp, #0
    37f6: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:88
;   if (pin > 41)
    37f8: 687b         	ldr	r3, [r7, #4]
    37fa: 2b29         	cmp	r3, #41
    37fc: d901         	bls	0x3802 <riotee_gpio_get_port+0x12> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:89
;     return NULL;
    37fe: 2300         	movs	r3, #0
    3800: e006         	b	0x3810 <riotee_gpio_get_port+0x20> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:90
;   if (pin > 31) {
    3802: 687b         	ldr	r3, [r7, #4]
    3804: 2b1f         	cmp	r3, #31
    3806: d901         	bls	0x380c <riotee_gpio_get_port+0x1c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:91
;     return NRF_PORT1;
    3808: 4b04         	ldr	r3, [pc, #16]           @ 0x381c <$d>
    380a: e001         	b	0x3810 <riotee_gpio_get_port+0x20> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:93
;   return NRF_PORT0;
    380c: f04f 43a0    	mov.w	r3, #1342177280
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:94
; }
    3810: 4618         	mov	r0, r3
    3812: 370c         	adds	r7, #12
    3814: 46bd         	mov	sp, r7
    3816: f85d 7b04    	ldr	r7, [sp], #4
    381a: 4770         	bx	lr

0000381c <$d>:
    381c: 00 03 00 50  	.word	0x50000300

00003820 <riotee_gpio_get_pin_idx>:
; riotee_gpio_get_pin_idx():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:96
; static inline int riotee_gpio_get_pin_idx(unsigned int pin) {
    3820: b480         	push	{r7}
    3822: b083         	sub	sp, #12
    3824: af00         	add	r7, sp, #0
    3826: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:97
;   if (pin > 31) {
    3828: 687b         	ldr	r3, [r7, #4]
    382a: 2b1f         	cmp	r3, #31
    382c: d902         	bls	0x3834 <riotee_gpio_get_pin_idx+0x14> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:98
;     return pin - 32;
    382e: 687b         	ldr	r3, [r7, #4]
    3830: 3b20         	subs	r3, #32
    3832: e000         	b	0x3836 <riotee_gpio_get_pin_idx+0x16> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:100
;   return pin;
    3834: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:101
; }
    3836: 4618         	mov	r0, r3
    3838: 370c         	adds	r7, #12
    383a: 46bd         	mov	sp, r7
    383c: f85d 7b04    	ldr	r7, [sp], #4
    3840: 4770         	bx	lr

00003842 <riotee_gpio_cfg_output>:
; riotee_gpio_cfg_output():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:109
; static inline void riotee_gpio_cfg_output(unsigned int pin) {
    3842: b580         	push	{r7, lr}
    3844: b084         	sub	sp, #16
    3846: af00         	add	r7, sp, #0
    3848: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:110
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    384a: 6878         	ldr	r0, [r7, #4]
    384c: f7ff ffd0    	bl	0x37f0 <riotee_gpio_get_port> @ imm = #-96
    3850: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:111
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    3852: 6878         	ldr	r0, [r7, #4]
    3854: f7ff ffe4    	bl	0x3820 <riotee_gpio_get_pin_idx> @ imm = #-56
    3858: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:114
;   reg->PIN_CNF[pin_idx] = (1UL << 0) | (1UL << 1);
    385a: 68fb         	ldr	r3, [r7, #12]
    385c: 68ba         	ldr	r2, [r7, #8]
    385e: f502 72e0    	add.w	r2, r2, #448
    3862: 2103         	movs	r1, #3
    3864: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:115
; }
    3868: bf00         	nop
    386a: 3710         	adds	r7, #16
    386c: 46bd         	mov	sp, r7
    386e: bd80         	pop	{r7, pc}

00003870 <riotee_gpio_cfg_input>:
; riotee_gpio_cfg_input():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:124
; static inline void riotee_gpio_cfg_input(unsigned int pin, riotee_gpio_in_pull_t pull) {
    3870: b580         	push	{r7, lr}
    3872: b084         	sub	sp, #16
    3874: af00         	add	r7, sp, #0
    3876: 6078         	str	r0, [r7, #4]
    3878: 460b         	mov	r3, r1
    387a: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:125
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    387c: 6878         	ldr	r0, [r7, #4]
    387e: f7ff ffb7    	bl	0x37f0 <riotee_gpio_get_port> @ imm = #-146
    3882: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:126
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    3884: 6878         	ldr	r0, [r7, #4]
    3886: f7ff ffcb    	bl	0x3820 <riotee_gpio_get_pin_idx> @ imm = #-106
    388a: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:129
;   reg->PIN_CNF[pin_idx] = (pull << 2);
    388c: 78fb         	ldrb	r3, [r7, #3]
    388e: 0099         	lsls	r1, r3, #2
    3890: 68fb         	ldr	r3, [r7, #12]
    3892: 68ba         	ldr	r2, [r7, #8]
    3894: f502 72e0    	add.w	r2, r2, #448
    3898: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:130
; }
    389c: bf00         	nop
    389e: 3710         	adds	r7, #16
    38a0: 46bd         	mov	sp, r7
    38a2: bd80         	pop	{r7, pc}

000038a4 <riotee_gpio_set>:
; riotee_gpio_set():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:151
; static inline void riotee_gpio_set(unsigned int pin) {
    38a4: b580         	push	{r7, lr}
    38a6: b084         	sub	sp, #16
    38a8: af00         	add	r7, sp, #0
    38aa: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:152
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    38ac: 6878         	ldr	r0, [r7, #4]
    38ae: f7ff ff9f    	bl	0x37f0 <riotee_gpio_get_port> @ imm = #-194
    38b2: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:153
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    38b4: 6878         	ldr	r0, [r7, #4]
    38b6: f7ff ffb3    	bl	0x3820 <riotee_gpio_get_pin_idx> @ imm = #-154
    38ba: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:155
;   reg->OUTSET = (1UL << pin_idx);
    38bc: 2201         	movs	r2, #1
    38be: 68bb         	ldr	r3, [r7, #8]
    38c0: 409a         	lsls	r2, r3
    38c2: 68fb         	ldr	r3, [r7, #12]
    38c4: f8c3 2508    	str.w	r2, [r3, #1288]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:156
; }
    38c8: bf00         	nop
    38ca: 3710         	adds	r7, #16
    38cc: 46bd         	mov	sp, r7
    38ce: bd80         	pop	{r7, pc}

000038d0 <riotee_gpio_clear>:
; riotee_gpio_clear():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:164
; static inline void riotee_gpio_clear(unsigned int pin) {
    38d0: b580         	push	{r7, lr}
    38d2: b084         	sub	sp, #16
    38d4: af00         	add	r7, sp, #0
    38d6: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:165
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    38d8: 6878         	ldr	r0, [r7, #4]
    38da: f7ff ff89    	bl	0x37f0 <riotee_gpio_get_port> @ imm = #-238
    38de: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:166
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    38e0: 6878         	ldr	r0, [r7, #4]
    38e2: f7ff ff9d    	bl	0x3820 <riotee_gpio_get_pin_idx> @ imm = #-198
    38e6: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:168
;   reg->OUTCLR = (1UL << pin_idx);
    38e8: 2201         	movs	r2, #1
    38ea: 68bb         	ldr	r3, [r7, #8]
    38ec: 409a         	lsls	r2, r3
    38ee: 68fb         	ldr	r3, [r7, #12]
    38f0: f8c3 250c    	str.w	r2, [r3, #1292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:169
; }
    38f4: bf00         	nop
    38f6: 3710         	adds	r7, #16
    38f8: 46bd         	mov	sp, r7
    38fa: bd80         	pop	{r7, pc}

000038fc <nvm_init>:
; nvm_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:20
; int nvm_init(void) {
    38fc: b580         	push	{r7, lr}
    38fe: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:21
;   NRF_SPIM0->PSEL.SCK = PIN_C2C_CLK;
    3900: 4b2b         	ldr	r3, [pc, #172]          @ 0x39b0 <$d>
    3902: 2212         	movs	r2, #18
    3904: f8c3 2508    	str.w	r2, [r3, #1288]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:22
;   NRF_SPIM0->PSEL.MOSI = PIN_C2C_MOSI;
    3908: 4b29         	ldr	r3, [pc, #164]          @ 0x39b0 <$d>
    390a: 2211         	movs	r2, #17
    390c: f8c3 250c    	str.w	r2, [r3, #1292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:23
;   NRF_SPIM0->PSEL.MISO = PIN_C2C_MISO;
    3910: 4b27         	ldr	r3, [pc, #156]          @ 0x39b0 <$d>
    3912: 220e         	movs	r2, #14
    3914: f8c3 2510    	str.w	r2, [r3, #1296]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:25
;   NRF_SPIM0->PSEL.CSN = 0xFFFFFFFF;
    3918: 4b25         	ldr	r3, [pc, #148]          @ 0x39b0 <$d>
    391a: f04f 32ff    	mov.w	r2, #4294967295
    391e: f8c3 2514    	str.w	r2, [r3, #1300]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:27
;   _pin_cs = PIN_C2C_CS;
    3922: 4b24         	ldr	r3, [pc, #144]          @ 0x39b4 <$d+0x4>
    3924: 2216         	movs	r2, #22
    3926: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:29
;   riotee_gpio_cfg_output(_pin_cs);
    3928: 4b22         	ldr	r3, [pc, #136]          @ 0x39b4 <$d+0x4>
    392a: 681b         	ldr	r3, [r3]
    392c: 4618         	mov	r0, r3
    392e: f7ff ff88    	bl	0x3842 <riotee_gpio_cfg_output> @ imm = #-240
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:30
;   riotee_gpio_set(_pin_cs);
    3932: 4b20         	ldr	r3, [pc, #128]          @ 0x39b4 <$d+0x4>
    3934: 681b         	ldr	r3, [r3]
    3936: 4618         	mov	r0, r3
    3938: f7ff ffb4    	bl	0x38a4 <riotee_gpio_set> @ imm = #-152
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:33
;   riotee_gpio_cfg_input(PIN_C2C_GPIO, RIOTEE_GPIO_IN_NOPULL);
    393c: 2100         	movs	r1, #0
    393e: 200f         	movs	r0, #15
    3940: f7ff ff96    	bl	0x3870 <riotee_gpio_cfg_input> @ imm = #-212
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:35
;   NRF_SPIM0->CONFIG = (SPI_CONFIG_CPHA_Leading << SPI_CONFIG_CPHA_Pos) |
    3944: 4b1a         	ldr	r3, [pc, #104]          @ 0x39b0 <$d>
    3946: 2200         	movs	r2, #0
    3948: f8c3 2554    	str.w	r2, [r3, #1364]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:39
;   NRF_SPIM0->FREQUENCY = SPIM_FREQUENCY_FREQUENCY_M8;
    394c: 4b18         	ldr	r3, [pc, #96]           @ 0x39b0 <$d>
    394e: f04f 4200    	mov.w	r2, #2147483648
    3952: f8c3 2524    	str.w	r2, [r3, #1316]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:41
;   __NVIC_EnableIRQ(SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQn);
    3956: 2003         	movs	r0, #3
    3958: f7ff ff2c    	bl	0x37b4 <__NVIC_EnableIRQ> @ imm = #-424
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:44
;   NRF_TIMER4->PRESCALER = 4;
    395c: 4b16         	ldr	r3, [pc, #88]           @ 0x39b8 <$d+0x8>
    395e: 2204         	movs	r2, #4
    3960: f8c3 2510    	str.w	r2, [r3, #1296]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:47
;   NRF_TIMER4->CC[0] = 15;
    3964: 4b14         	ldr	r3, [pc, #80]           @ 0x39b8 <$d+0x8>
    3966: 220f         	movs	r2, #15
    3968: f8c3 2540    	str.w	r2, [r3, #1344]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:48
;   NRF_PPI->CH[0].EEP = (uint32_t)&NRF_TIMER4->EVENTS_COMPARE[0];
    396c: 4b13         	ldr	r3, [pc, #76]           @ 0x39bc <$d+0xc>
    396e: 4a14         	ldr	r2, [pc, #80]           @ 0x39c0 <$d+0x10>
    3970: f8c3 2510    	str.w	r2, [r3, #1296]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:49
;   NRF_PPI->CH[0].TEP = (uint32_t)&NRF_SPIM0->TASKS_START;
    3974: 4b11         	ldr	r3, [pc, #68]           @ 0x39bc <$d+0xc>
    3976: 4a13         	ldr	r2, [pc, #76]           @ 0x39c4 <$d+0x14>
    3978: f8c3 2514    	str.w	r2, [r3, #1300]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:52
;   NRF_TIMER4->CC[1] = 45;
    397c: 4b0e         	ldr	r3, [pc, #56]           @ 0x39b8 <$d+0x8>
    397e: 222d         	movs	r2, #45
    3980: f8c3 2544    	str.w	r2, [r3, #1348]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:55
;   NRF_TIMER4->CC[2] = NVM_TEARDOWN_US;
    3984: 4b0c         	ldr	r3, [pc, #48]           @ 0x39b8 <$d+0x8>
    3986: 220a         	movs	r2, #10
    3988: f8c3 2548    	str.w	r2, [r3, #1352]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:56
;   NRF_TIMER4->SHORTS = TIMER_SHORTS_COMPARE2_STOP_Msk;
    398c: 4b0a         	ldr	r3, [pc, #40]           @ 0x39b8 <$d+0x8>
    398e: f44f 6280    	mov.w	r2, #1024
    3992: f8c3 2200    	str.w	r2, [r3, #512]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:57
;   NRF_TIMER4->TASKS_CLEAR = 1;
    3996: 4b08         	ldr	r3, [pc, #32]           @ 0x39b8 <$d+0x8>
    3998: 2201         	movs	r2, #1
    399a: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:58
;   NRF_TIMER4->TASKS_START = 1;
    399c: 4b06         	ldr	r3, [pc, #24]           @ 0x39b8 <$d+0x8>
    399e: 2201         	movs	r2, #1
    39a0: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:60
;   __NVIC_EnableIRQ(TIMER4_IRQn);
    39a2: 201b         	movs	r0, #27
    39a4: f7ff ff06    	bl	0x37b4 <__NVIC_EnableIRQ> @ imm = #-500
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:61
;   return 0;
    39a8: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:62
; }
    39aa: 4618         	mov	r0, r3
    39ac: bd80         	pop	{r7, pc}
    39ae: bf00         	nop

000039b0 <$d>:
    39b0: 00 30 00 40  	.word	0x40003000
    39b4: 80 08 00 20  	.word	0x20000880
    39b8: 00 b0 01 40  	.word	0x4001b000
    39bc: 00 f0 01 40  	.word	0x4001f000
    39c0: 40 b1 01 40  	.word	0x4001b140
    39c4: 10 30 00 40  	.word	0x40003010

000039c8 <TIMER4_IRQHandler>:
; TIMER4_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:64
; void TIMER4_IRQHandler(void) {
    39c8: b480         	push	{r7}
    39ca: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:65
;   if (NRF_TIMER4->EVENTS_COMPARE[1] == 1) {
    39cc: 4b09         	ldr	r3, [pc, #36]           @ 0x39f4 <$d>
    39ce: f8d3 3144    	ldr.w	r3, [r3, #324]
    39d2: 2b01         	cmp	r3, #1
    39d4: d109         	bne	0x39ea <TIMER4_IRQHandler+0x22> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:66
;     NRF_TIMER4->EVENTS_COMPARE[1] = 0;
    39d6: 4b07         	ldr	r3, [pc, #28]           @ 0x39f4 <$d>
    39d8: 2200         	movs	r2, #0
    39da: f8c3 2144    	str.w	r2, [r3, #324]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:67
;     NRF_SPIM0->TASKS_STOP = 1;
    39de: 4b06         	ldr	r3, [pc, #24]           @ 0x39f8 <$d+0x4>
    39e0: 2201         	movs	r2, #1
    39e2: 615a         	str	r2, [r3, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:68
;     nvm_event = true;
    39e4: 4b05         	ldr	r3, [pc, #20]           @ 0x39fc <$d+0x8>
    39e6: 2201         	movs	r2, #1
    39e8: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:70
; }
    39ea: bf00         	nop
    39ec: 46bd         	mov	sp, r7
    39ee: f85d 7b04    	ldr	r7, [sp], #4
    39f2: 4770         	bx	lr

000039f4 <$d>:
    39f4: 00 b0 01 40  	.word	0x4001b000
    39f8: 00 30 00 40  	.word	0x40003000
    39fc: 7c 08 00 20  	.word	0x2000087c

00003a00 <SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler>:
; SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:72
; void SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler(void) {
    3a00: b480         	push	{r7}
    3a02: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:73
;   if (NRF_SPIM0->EVENTS_END == 1) {
    3a04: 4b09         	ldr	r3, [pc, #36]           @ 0x3a2c <$d>
    3a06: f8d3 3118    	ldr.w	r3, [r3, #280]
    3a0a: 2b01         	cmp	r3, #1
    3a0c: d109         	bne	0x3a22 <SPIM0_SPIS0_TWIM0_TWIS0_SPI0_TWI0_IRQHandler+0x22> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:74
;     NRF_SPIM0->EVENTS_END = 0;
    3a0e: 4b07         	ldr	r3, [pc, #28]           @ 0x3a2c <$d>
    3a10: 2200         	movs	r2, #0
    3a12: f8c3 2118    	str.w	r2, [r3, #280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:75
;     NRF_SPIM0->TASKS_STOP = 1;
    3a16: 4b05         	ldr	r3, [pc, #20]           @ 0x3a2c <$d>
    3a18: 2201         	movs	r2, #1
    3a1a: 615a         	str	r2, [r3, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:76
;     nvm_event = true;
    3a1c: 4b04         	ldr	r3, [pc, #16]           @ 0x3a30 <$d+0x4>
    3a1e: 2201         	movs	r2, #1
    3a20: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:78
; }
    3a22: bf00         	nop
    3a24: 46bd         	mov	sp, r7
    3a26: f85d 7b04    	ldr	r7, [sp], #4
    3a2a: 4770         	bx	lr

00003a2c <$d>:
    3a2c: 00 30 00 40  	.word	0x40003000
    3a30: 7c 08 00 20  	.word	0x2000087c

00003a34 <is_ready>:
; is_ready():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:80
; static inline int is_ready() {
    3a34: b480         	push	{r7}
    3a36: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:82
;   if ((NRF_P0->IN & (1 << PIN_C2C_GPIO)) == 0)
    3a38: f04f 43a0    	mov.w	r3, #1342177280
    3a3c: f8d3 3510    	ldr.w	r3, [r3, #1296]
    3a40: f403 4300    	and	r3, r3, #32768
    3a44: 2b00         	cmp	r3, #0
    3a46: d102         	bne	0x3a4e <is_ready+0x1a>  @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:83
;     return -1;
    3a48: f04f 33ff    	mov.w	r3, #4294967295
    3a4c: e000         	b	0x3a50 <is_ready+0x1c>  @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:84
;   return 0;
    3a4e: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:85
; }
    3a50: 4618         	mov	r0, r3
    3a52: 46bd         	mov	sp, r7
    3a54: f85d 7b04    	ldr	r7, [sp], #4
    3a58: 4770         	bx	lr
    3a5a: 0000         	movs	r0, r0

00003a5c <prep_xfer>:
; prep_xfer():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:87
; static int prep_xfer(uint8_t* tx_buf, uint8_t* rx_buf, size_t n_tx, size_t n_rx) {
    3a5c: b480         	push	{r7}
    3a5e: b085         	sub	sp, #20
    3a60: af00         	add	r7, sp, #0
    3a62: 60f8         	str	r0, [r7, #12]
    3a64: 60b9         	str	r1, [r7, #8]
    3a66: 607a         	str	r2, [r7, #4]
    3a68: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:89
;   NRF_SPIM0->TXD.MAXCNT = n_tx;
    3a6a: 4a11         	ldr	r2, [pc, #68]           @ 0x3ab0 <$d>
    3a6c: 687b         	ldr	r3, [r7, #4]
    3a6e: f8c2 3548    	str.w	r3, [r2, #1352]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:90
;   NRF_SPIM0->RXD.MAXCNT = n_rx;
    3a72: 4a0f         	ldr	r2, [pc, #60]           @ 0x3ab0 <$d>
    3a74: 683b         	ldr	r3, [r7]
    3a76: f8c2 3538    	str.w	r3, [r2, #1336]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:92
;   NRF_SPIM0->TXD.PTR = (uint32_t)tx_buf;
    3a7a: 4a0d         	ldr	r2, [pc, #52]           @ 0x3ab0 <$d>
    3a7c: 68fb         	ldr	r3, [r7, #12]
    3a7e: f8c2 3544    	str.w	r3, [r2, #1348]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:93
;   NRF_SPIM0->RXD.PTR = (uint32_t)rx_buf;
    3a82: 4a0b         	ldr	r2, [pc, #44]           @ 0x3ab0 <$d>
    3a84: 68bb         	ldr	r3, [r7, #8]
    3a86: f8c2 3534    	str.w	r3, [r2, #1332]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:94
;   NRF_SPIM0->EVENTS_END = 0;
    3a8a: 4b09         	ldr	r3, [pc, #36]           @ 0x3ab0 <$d>
    3a8c: 2200         	movs	r2, #0
    3a8e: f8c3 2118    	str.w	r2, [r3, #280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:95
;   NRF_SPIM0->EVENTS_STOPPED = 0;
    3a92: 4b07         	ldr	r3, [pc, #28]           @ 0x3ab0 <$d>
    3a94: 2200         	movs	r2, #0
    3a96: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:96
;   NRF_SPIM0->ENABLE = (SPIM_ENABLE_ENABLE_Enabled << SPIM_ENABLE_ENABLE_Pos);
    3a9a: 4b05         	ldr	r3, [pc, #20]           @ 0x3ab0 <$d>
    3a9c: 2207         	movs	r2, #7
    3a9e: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:98
;   return 0;
    3aa2: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:99
; }
    3aa4: 4618         	mov	r0, r3
    3aa6: 3714         	adds	r7, #20
    3aa8: 46bd         	mov	sp, r7
    3aaa: f85d 7b04    	ldr	r7, [sp], #4
    3aae: 4770         	bx	lr

00003ab0 <$d>:
    3ab0: 00 30 00 40  	.word	0x40003000

00003ab4 <begin>:
; begin():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:101
; static int begin(nvm_transfer_type_t transfer_type, uint32_t address) {
    3ab4: b580         	push	{r7, lr}
    3ab6: b084         	sub	sp, #16
    3ab8: af00         	add	r7, sp, #0
    3aba: 6078         	str	r0, [r7, #4]
    3abc: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:107
;     NRF_TIMER4->TASKS_CAPTURE[3] = 1;
    3abe: 4b36         	ldr	r3, [pc, #216]          @ 0x3b98 <$d>
    3ac0: 2201         	movs	r2, #1
    3ac2: 64da         	str	r2, [r3, #76]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:108
;   } while (NRF_TIMER4->CC[3] < NVM_TEARDOWN_US);
    3ac4: 4b34         	ldr	r3, [pc, #208]          @ 0x3b98 <$d>
    3ac6: f8d3 354c    	ldr.w	r3, [r3, #1356]
    3aca: 2b09         	cmp	r3, #9
    3acc: d9f7         	bls	0x3abe <begin+0xa>      @ imm = #-18
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:110
;   if ((rc = is_ready()) != 0)
    3ace: f7ff ffb1    	bl	0x3a34 <is_ready>       @ imm = #-158
    3ad2: 60f8         	str	r0, [r7, #12]
    3ad4: 68fb         	ldr	r3, [r7, #12]
    3ad6: 2b00         	cmp	r3, #0
    3ad8: d001         	beq	0x3ade <begin+0x2a>     @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:111
;     return rc;
    3ada: 68fb         	ldr	r3, [r7, #12]
    3adc: e058         	b	0x3b90 <begin+0xdc>     @ imm = #176
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:113
;   riotee_gpio_clear(_pin_cs);
    3ade: 4b2f         	ldr	r3, [pc, #188]          @ 0x3b9c <$d+0x4>
    3ae0: 681b         	ldr	r3, [r3]
    3ae2: 4618         	mov	r0, r3
    3ae4: f7ff fef4    	bl	0x38d0 <riotee_gpio_clear> @ imm = #-536
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:115
;   uint32_t cmd = (address & 0xFFFFF) | transfer_type;
    3ae8: 683b         	ldr	r3, [r7]
    3aea: f3c3 0213    	ubfx	r2, r3, #0, #20
    3aee: 687b         	ldr	r3, [r7, #4]
    3af0: 4313         	orrs	r3, r2
    3af2: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:116
;   prep_xfer((uint8_t*)&cmd, NULL, 3, 0);
    3af4: f107 0008    	add.w	r0, r7, #8
    3af8: 2300         	movs	r3, #0
    3afa: 2203         	movs	r2, #3
    3afc: 2100         	movs	r1, #0
    3afe: f7ff ffad    	bl	0x3a5c <prep_xfer>      @ imm = #-166
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:118
;   nvm_event = false;
    3b02: 4b27         	ldr	r3, [pc, #156]          @ 0x3ba0 <$d+0x8>
    3b04: 2200         	movs	r2, #0
    3b06: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:120
;   NRF_PPI->CHENSET = PPI_CHENSET_CH0_Msk;
    3b08: 4b26         	ldr	r3, [pc, #152]          @ 0x3ba4 <$d+0xc>
    3b0a: 2201         	movs	r2, #1
    3b0c: f8c3 2504    	str.w	r2, [r3, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:121
;   NRF_TIMER4->EVENTS_COMPARE[0] = 0;
    3b10: 4b21         	ldr	r3, [pc, #132]          @ 0x3b98 <$d>
    3b12: 2200         	movs	r2, #0
    3b14: f8c3 2140    	str.w	r2, [r3, #320]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:122
;   NRF_TIMER4->EVENTS_COMPARE[1] = 0;
    3b18: 4b1f         	ldr	r3, [pc, #124]          @ 0x3b98 <$d>
    3b1a: 2200         	movs	r2, #0
    3b1c: f8c3 2144    	str.w	r2, [r3, #324]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:124
;   NRF_TIMER4->INTENSET = TIMER_INTENSET_COMPARE1_Msk;
    3b20: 4b1d         	ldr	r3, [pc, #116]          @ 0x3b98 <$d>
    3b22: f44f 3200    	mov.w	r2, #131072
    3b26: f8c3 2304    	str.w	r2, [r3, #772]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:125
;   NRF_TIMER4->SHORTS = TIMER_SHORTS_COMPARE1_STOP_Msk;
    3b2a: 4b1b         	ldr	r3, [pc, #108]          @ 0x3b98 <$d>
    3b2c: f44f 7200    	mov.w	r2, #512
    3b30: f8c3 2200    	str.w	r2, [r3, #512]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:127
;   NRF_TIMER4->TASKS_CLEAR = 1;
    3b34: 4b18         	ldr	r3, [pc, #96]           @ 0x3b98 <$d>
    3b36: 2201         	movs	r2, #1
    3b38: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:128
;   NRF_TIMER4->TASKS_START = 1;
    3b3a: 4b17         	ldr	r3, [pc, #92]           @ 0x3b98 <$d>
    3b3c: 2201         	movs	r2, #1
    3b3e: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:131
;   while (nvm_event == false) {
    3b40: e003         	b	0x3b4a <begin+0x96>     @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:12
;   __WFE();
    3b42: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:13
;   __SEV();
    3b44: bf40         	sev
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:14
;   __WFE();
    3b46: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:15
; }
    3b48: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:131
;   while (nvm_event == false) {
    3b4a: 4b15         	ldr	r3, [pc, #84]           @ 0x3ba0 <$d+0x8>
    3b4c: 781b         	ldrb	r3, [r3]
    3b4e: b2db         	uxtb	r3, r3
    3b50: f083 0301    	eor	r3, r3, #1
    3b54: b2db         	uxtb	r3, r3
    3b56: 2b00         	cmp	r3, #0
    3b58: d1f3         	bne	0x3b42 <begin+0x8e>     @ imm = #-26
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:134
;   NRF_PPI->CHENCLR = PPI_CHENSET_CH0_Msk;
    3b5a: 4b12         	ldr	r3, [pc, #72]           @ 0x3ba4 <$d+0xc>
    3b5c: 2201         	movs	r2, #1
    3b5e: f8c3 2508    	str.w	r2, [r3, #1288]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:135
;   NRF_TIMER4->INTENCLR = TIMER_INTENCLR_COMPARE1_Msk;
    3b62: 4b0d         	ldr	r3, [pc, #52]           @ 0x3b98 <$d>
    3b64: f44f 3200    	mov.w	r2, #131072
    3b68: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:138
;   while (NRF_SPIM0->EVENTS_STOPPED == 0) {
    3b6c: bf00         	nop
    3b6e: 4b0e         	ldr	r3, [pc, #56]           @ 0x3ba8 <$d+0x10>
    3b70: f8d3 3104    	ldr.w	r3, [r3, #260]
    3b74: 2b00         	cmp	r3, #0
    3b76: d0fa         	beq	0x3b6e <begin+0xba>     @ imm = #-12
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:141
;   NRF_SPIM0->ENABLE = (SPIM_ENABLE_ENABLE_Disabled << SPIM_ENABLE_ENABLE_Pos);
    3b78: 4b0b         	ldr	r3, [pc, #44]           @ 0x3ba8 <$d+0x10>
    3b7a: 2200         	movs	r2, #0
    3b7c: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:142
;   NRF_SPIM0->INTENSET = SPIM_INTENSET_END_Msk;
    3b80: 4b09         	ldr	r3, [pc, #36]           @ 0x3ba8 <$d+0x10>
    3b82: 2240         	movs	r2, #64
    3b84: f8c3 2304    	str.w	r2, [r3, #772]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:144
;   NRF_TIMER4->TASKS_SHUTDOWN = 1;
    3b88: 4b03         	ldr	r3, [pc, #12]           @ 0x3b98 <$d>
    3b8a: 2201         	movs	r2, #1
    3b8c: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:146
;   return 0;
    3b8e: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:147
; }
    3b90: 4618         	mov	r0, r3
    3b92: 3710         	adds	r7, #16
    3b94: 46bd         	mov	sp, r7
    3b96: bd80         	pop	{r7, pc}

00003b98 <$d>:
    3b98: 00 b0 01 40  	.word	0x4001b000
    3b9c: 80 08 00 20  	.word	0x20000880
    3ba0: 7c 08 00 20  	.word	0x2000087c
    3ba4: 00 f0 01 40  	.word	0x4001f000
    3ba8: 00 30 00 40  	.word	0x40003000

00003bac <nvm_begin_read>:
; nvm_begin_read():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:149
; int nvm_begin_read(uint32_t address) {
    3bac: b580         	push	{r7, lr}
    3bae: b082         	sub	sp, #8
    3bb0: af00         	add	r7, sp, #0
    3bb2: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:150
;   return begin(NVM_READ, address);
    3bb4: 6879         	ldr	r1, [r7, #4]
    3bb6: 2000         	movs	r0, #0
    3bb8: f7ff ff7c    	bl	0x3ab4 <begin>          @ imm = #-264
    3bbc: 4603         	mov	r3, r0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:151
; }
    3bbe: 4618         	mov	r0, r3
    3bc0: 3708         	adds	r7, #8
    3bc2: 46bd         	mov	sp, r7
    3bc4: bd80         	pop	{r7, pc}

00003bc6 <nvm_begin_write>:
; nvm_begin_write():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:153
; int nvm_begin_write(uint32_t address) {
    3bc6: b580         	push	{r7, lr}
    3bc8: b082         	sub	sp, #8
    3bca: af00         	add	r7, sp, #0
    3bcc: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:154
;   return begin(NVM_WRITE, address);
    3bce: 6879         	ldr	r1, [r7, #4]
    3bd0: f44f 0000    	mov.w	r0, #8388608
    3bd4: f7ff ff6e    	bl	0x3ab4 <begin>          @ imm = #-292
    3bd8: 4603         	mov	r3, r0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:155
; }
    3bda: 4618         	mov	r0, r3
    3bdc: 3708         	adds	r7, #8
    3bde: 46bd         	mov	sp, r7
    3be0: bd80         	pop	{r7, pc}
    3be2: 0000         	movs	r0, r0

00003be4 <nvm_end>:
; nvm_end():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:157
; int nvm_end(void) {
    3be4: b580         	push	{r7, lr}
    3be6: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:158
;   riotee_gpio_set(_pin_cs);
    3be8: 4b0b         	ldr	r3, [pc, #44]           @ 0x3c18 <$d>
    3bea: 681b         	ldr	r3, [r3]
    3bec: 4618         	mov	r0, r3
    3bee: f7ff fe59    	bl	0x38a4 <riotee_gpio_set> @ imm = #-846
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:161
;   NRF_TIMER4->TASKS_CLEAR = 1;
    3bf2: 4b0a         	ldr	r3, [pc, #40]           @ 0x3c1c <$d+0x4>
    3bf4: 2201         	movs	r2, #1
    3bf6: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:162
;   NRF_TIMER4->TASKS_START = 1;
    3bf8: 4b08         	ldr	r3, [pc, #32]           @ 0x3c1c <$d+0x4>
    3bfa: 2201         	movs	r2, #1
    3bfc: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:163
;   NRF_TIMER4->SHORTS = TIMER_SHORTS_COMPARE2_STOP_Msk;
    3bfe: 4b07         	ldr	r3, [pc, #28]           @ 0x3c1c <$d+0x4>
    3c00: f44f 6280    	mov.w	r2, #1024
    3c04: f8c3 2200    	str.w	r2, [r3, #512]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:165
;   NRF_SPIM0->INTENCLR = SPIM_INTENSET_END_Msk;
    3c08: 4b05         	ldr	r3, [pc, #20]           @ 0x3c20 <$d+0x8>
    3c0a: 2240         	movs	r2, #64
    3c0c: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:167
;   return 0;
    3c10: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:168
; }
    3c12: 4618         	mov	r0, r3
    3c14: bd80         	pop	{r7, pc}
    3c16: bf00         	nop

00003c18 <$d>:
    3c18: 80 08 00 20  	.word	0x20000880
    3c1c: 00 b0 01 40  	.word	0x4001b000
    3c20: 00 30 00 40  	.word	0x40003000

00003c24 <nvm_write>:
; nvm_write():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:170
; int nvm_write(uint8_t* src, size_t size) {
    3c24: b580         	push	{r7, lr}
    3c26: b084         	sub	sp, #16
    3c28: af00         	add	r7, sp, #0
    3c2a: 6078         	str	r0, [r7, #4]
    3c2c: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:172
;   prep_xfer(src, NULL, size, 0);
    3c2e: 2300         	movs	r3, #0
    3c30: 683a         	ldr	r2, [r7]
    3c32: 2100         	movs	r1, #0
    3c34: 6878         	ldr	r0, [r7, #4]
    3c36: f7ff ff11    	bl	0x3a5c <prep_xfer>      @ imm = #-478
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:174
;   if ((rc = is_ready()) != 0)
    3c3a: f7ff fefb    	bl	0x3a34 <is_ready>       @ imm = #-522
    3c3e: 60f8         	str	r0, [r7, #12]
    3c40: 68fb         	ldr	r3, [r7, #12]
    3c42: 2b00         	cmp	r3, #0
    3c44: d001         	beq	0x3c4a <nvm_write+0x26> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:175
;     return rc;
    3c46: 68fb         	ldr	r3, [r7, #12]
    3c48: e01d         	b	0x3c86 <nvm_write+0x62> @ imm = #58
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:177
;   nvm_event = false;
    3c4a: 4b11         	ldr	r3, [pc, #68]           @ 0x3c90 <$d>
    3c4c: 2200         	movs	r2, #0
    3c4e: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:178
;   NRF_SPIM0->TASKS_START = 1;
    3c50: 4b10         	ldr	r3, [pc, #64]           @ 0x3c94 <$d+0x4>
    3c52: 2201         	movs	r2, #1
    3c54: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:179
;   while (nvm_event == false) {
    3c56: e003         	b	0x3c60 <nvm_write+0x3c> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:12
;   __WFE();
    3c58: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:13
;   __SEV();
    3c5a: bf40         	sev
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:14
;   __WFE();
    3c5c: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:15
; }
    3c5e: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:179
;   while (nvm_event == false) {
    3c60: 4b0b         	ldr	r3, [pc, #44]           @ 0x3c90 <$d>
    3c62: 781b         	ldrb	r3, [r3]
    3c64: b2db         	uxtb	r3, r3
    3c66: f083 0301    	eor	r3, r3, #1
    3c6a: b2db         	uxtb	r3, r3
    3c6c: 2b00         	cmp	r3, #0
    3c6e: d1f3         	bne	0x3c58 <nvm_write+0x34> @ imm = #-26
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:183
;   while (NRF_SPIM0->EVENTS_STOPPED == 0) {
    3c70: bf00         	nop
    3c72: 4b08         	ldr	r3, [pc, #32]           @ 0x3c94 <$d+0x4>
    3c74: f8d3 3104    	ldr.w	r3, [r3, #260]
    3c78: 2b00         	cmp	r3, #0
    3c7a: d0fa         	beq	0x3c72 <nvm_write+0x4e> @ imm = #-12
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:185
;   NRF_SPIM0->ENABLE = (SPIM_ENABLE_ENABLE_Disabled << SPIM_ENABLE_ENABLE_Pos);
    3c7c: 4b05         	ldr	r3, [pc, #20]           @ 0x3c94 <$d+0x4>
    3c7e: 2200         	movs	r2, #0
    3c80: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:187
;   return 0;
    3c84: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:188
; }
    3c86: 4618         	mov	r0, r3
    3c88: 3710         	adds	r7, #16
    3c8a: 46bd         	mov	sp, r7
    3c8c: bd80         	pop	{r7, pc}
    3c8e: bf00         	nop

00003c90 <$d>:
    3c90: 7c 08 00 20  	.word	0x2000087c
    3c94: 00 30 00 40  	.word	0x40003000

00003c98 <nvm_read>:
; nvm_read():
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:190
; int nvm_read(uint8_t* dst, size_t size) {
    3c98: b580         	push	{r7, lr}
    3c9a: b084         	sub	sp, #16
    3c9c: af00         	add	r7, sp, #0
    3c9e: 6078         	str	r0, [r7, #4]
    3ca0: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:192
;   prep_xfer(NULL, dst, 0, size);
    3ca2: 683b         	ldr	r3, [r7]
    3ca4: 2200         	movs	r2, #0
    3ca6: 6879         	ldr	r1, [r7, #4]
    3ca8: 2000         	movs	r0, #0
    3caa: f7ff fed7    	bl	0x3a5c <prep_xfer>      @ imm = #-594
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:194
;   if ((rc = is_ready()) != 0)
    3cae: f7ff fec1    	bl	0x3a34 <is_ready>       @ imm = #-638
    3cb2: 60f8         	str	r0, [r7, #12]
    3cb4: 68fb         	ldr	r3, [r7, #12]
    3cb6: 2b00         	cmp	r3, #0
    3cb8: d001         	beq	0x3cbe <nvm_read+0x26>  @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:195
;     return rc;
    3cba: 68fb         	ldr	r3, [r7, #12]
    3cbc: e01d         	b	0x3cfa <nvm_read+0x62>  @ imm = #58
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:197
;   nvm_event = false;
    3cbe: 4b11         	ldr	r3, [pc, #68]           @ 0x3d04 <$d>
    3cc0: 2200         	movs	r2, #0
    3cc2: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:198
;   NRF_SPIM0->TASKS_START = 1;
    3cc4: 4b10         	ldr	r3, [pc, #64]           @ 0x3d08 <$d+0x4>
    3cc6: 2201         	movs	r2, #1
    3cc8: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:199
;   while (nvm_event == false) {
    3cca: e003         	b	0x3cd4 <nvm_read+0x3c>  @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:12
;   __WFE();
    3ccc: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:13
;   __SEV();
    3cce: bf40         	sev
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:14
;   __WFE();
    3cd0: bf20         	wfe
; /Users/janstiefel/code/fork/Riotee_SDK/core/runtime.h:15
; }
    3cd2: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:199
;   while (nvm_event == false) {
    3cd4: 4b0b         	ldr	r3, [pc, #44]           @ 0x3d04 <$d>
    3cd6: 781b         	ldrb	r3, [r3]
    3cd8: b2db         	uxtb	r3, r3
    3cda: f083 0301    	eor	r3, r3, #1
    3cde: b2db         	uxtb	r3, r3
    3ce0: 2b00         	cmp	r3, #0
    3ce2: d1f3         	bne	0x3ccc <nvm_read+0x34>  @ imm = #-26
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:203
;   while (NRF_SPIM0->EVENTS_STOPPED == 0) {
    3ce4: bf00         	nop
    3ce6: 4b08         	ldr	r3, [pc, #32]           @ 0x3d08 <$d+0x4>
    3ce8: f8d3 3104    	ldr.w	r3, [r3, #260]
    3cec: 2b00         	cmp	r3, #0
    3cee: d0fa         	beq	0x3ce6 <nvm_read+0x4e>  @ imm = #-12
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:205
;   NRF_SPIM0->ENABLE = (SPIM_ENABLE_ENABLE_Disabled << SPIM_ENABLE_ENABLE_Pos);
    3cf0: 4b05         	ldr	r3, [pc, #20]           @ 0x3d08 <$d+0x4>
    3cf2: 2200         	movs	r2, #0
    3cf4: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:207
;   return 0;
    3cf8: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/nvm.c:208
; }
    3cfa: 4618         	mov	r0, r3
    3cfc: 3710         	adds	r7, #16
    3cfe: 46bd         	mov	sp, r7
    3d00: bd80         	pop	{r7, pc}
    3d02: bf00         	nop

00003d04 <$d>:
    3d04: 7c 08 00 20  	.word	0x2000087c
    3d08: 00 30 00 40  	.word	0x40003000

00003d0c <__NVIC_EnableIRQ>:
; __NVIC_EnableIRQ():
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1685
; {
    3d0c: b480         	push	{r7}
    3d0e: b083         	sub	sp, #12
    3d10: af00         	add	r7, sp, #0
    3d12: 4603         	mov	r3, r0
    3d14: 71fb         	strb	r3, [r7, #7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1686
;   if ((int32_t)(IRQn) >= 0)
    3d16: f997 3007    	ldrsb.w	r3, [r7, #7]
    3d1a: 2b00         	cmp	r3, #0
    3d1c: db0b         	blt	0x3d36 <__NVIC_EnableIRQ+0x2a> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1689
;     NVIC->ISER[(((uint32_t)IRQn) >> 5UL)] = (uint32_t)(1UL << (((uint32_t)IRQn) & 0x1FUL));
    3d1e: 79fb         	ldrb	r3, [r7, #7]
    3d20: f003 021f    	and	r2, r3, #31
    3d24: 4907         	ldr	r1, [pc, #28]           @ 0x3d44 <$d>
    3d26: f997 3007    	ldrsb.w	r3, [r7, #7]
    3d2a: 095b         	lsrs	r3, r3, #5
    3d2c: 2001         	movs	r0, #1
    3d2e: fa00 f202    	lsl.w	r2, r0, r2
    3d32: f841 2023    	str.w	r2, [r1, r3, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/CMSIS_5/CMSIS/Core/Include/core_cm4.h:1692
; }
    3d36: bf00         	nop
    3d38: 370c         	adds	r7, #12
    3d3a: 46bd         	mov	sp, r7
    3d3c: f85d 7b04    	ldr	r7, [sp], #4
    3d40: 4770         	bx	lr
    3d42: bf00         	nop

00003d44 <$d>:
    3d44: 00 e1 00 e0  	.word	0xe000e100

00003d48 <stop_sampling>:
; stop_sampling():
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:31
; static inline void stop_sampling(void) {
    3d48: b480         	push	{r7}
    3d4a: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:32
;   NRF_SAADC->INTENCLR = SAADC_INTENCLR_END_Msk;
    3d4c: 4b0d         	ldr	r3, [pc, #52]           @ 0x3d84 <$d>
    3d4e: 2202         	movs	r2, #2
    3d50: f8c3 2308    	str.w	r2, [r3, #776]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:34
;   NRF_RTC0->EVTENCLR = RTC_EVTEN_COMPARE2_Msk;
    3d54: 4b0c         	ldr	r3, [pc, #48]           @ 0x3d88 <$d+0x4>
    3d56: f44f 2280    	mov.w	r2, #262144
    3d5a: f8c3 2348    	str.w	r2, [r3, #840]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:35
;   NRF_SAADC->TASKS_STOP = 1;
    3d5e: 4b09         	ldr	r3, [pc, #36]           @ 0x3d84 <$d>
    3d60: 2201         	movs	r2, #1
    3d62: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:36
;   NRF_SAADC->EVENTS_END = 0;
    3d64: 4b07         	ldr	r3, [pc, #28]           @ 0x3d84 <$d>
    3d66: 2200         	movs	r2, #0
    3d68: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:38
;   NRF_SAADC->ENABLE = (SAADC_ENABLE_ENABLE_Disabled << SAADC_ENABLE_ENABLE_Pos);
    3d6c: 4b05         	ldr	r3, [pc, #20]           @ 0x3d84 <$d>
    3d6e: 2200         	movs	r2, #0
    3d70: f8c3 2500    	str.w	r2, [r3, #1280]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:39
;   adc_teardown_ptr = NULL;
    3d74: 4b05         	ldr	r3, [pc, #20]           @ 0x3d8c <$d+0x8>
    3d76: 2200         	movs	r2, #0
    3d78: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:40
; }
    3d7a: bf00         	nop
    3d7c: 46bd         	mov	sp, r7
    3d7e: f85d 7b04    	ldr	r7, [sp], #4
    3d82: 4770         	bx	lr

00003d84 <$d>:
    3d84: 00 70 00 40  	.word	0x40007000
    3d88: 00 b0 00 40  	.word	0x4000b000
    3d8c: 50 09 00 20  	.word	0x20000950

00003d90 <SAADC_IRQHandler>:
; SAADC_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:42
; void SAADC_IRQHandler(void) {
    3d90: b580         	push	{r7, lr}
    3d92: b084         	sub	sp, #16
    3d94: af02         	add	r7, sp, #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:43
;   BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    3d96: 2300         	movs	r3, #0
    3d98: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:45
;   NRF_SAADC->EVENTS_END = 0;
    3d9a: 4b1e         	ldr	r3, [pc, #120]          @ 0x3e14 <$d>
    3d9c: 2200         	movs	r2, #0
    3d9e: f8c3 2104    	str.w	r2, [r3, #260]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:47
;   if (--samples_remaining == 0) {
    3da2: 4b1d         	ldr	r3, [pc, #116]          @ 0x3e18 <$d+0x4>
    3da4: 681b         	ldr	r3, [r3]
    3da6: 3b01         	subs	r3, #1
    3da8: 4a1b         	ldr	r2, [pc, #108]          @ 0x3e18 <$d+0x4>
    3daa: 6013         	str	r3, [r2]
    3dac: 4b1a         	ldr	r3, [pc, #104]          @ 0x3e18 <$d+0x4>
    3dae: 681b         	ldr	r3, [r3]
    3db0: 2b00         	cmp	r3, #0
    3db2: d119         	bne	0x3de8 <SAADC_IRQHandler+0x58> @ imm = #50
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:48
;     stop_sampling();
    3db4: f7ff ffc8    	bl	0x3d48 <stop_sampling>  @ imm = #-112
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:49
;     xTaskNotifyIndexedFromISR(usr_task_handle, 1, EVT_ADC_BASE, eSetBits, &xHigherPriorityTaskWoken);
    3db8: 4b18         	ldr	r3, [pc, #96]           @ 0x3e1c <$d+0x8>
    3dba: 6818         	ldr	r0, [r3]
    3dbc: 1d3b         	adds	r3, r7, #4
    3dbe: 9301         	str	r3, [sp, #4]
    3dc0: 2300         	movs	r3, #0
    3dc2: 9300         	str	r3, [sp]
    3dc4: 2301         	movs	r3, #1
    3dc6: f04f 7280    	mov.w	r2, #16777216
    3dca: 2101         	movs	r1, #1
    3dcc: f001 f844    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #4232
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:50
;     portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    3dd0: 687b         	ldr	r3, [r7, #4]
    3dd2: 2b00         	cmp	r3, #0
    3dd4: d01a         	beq	0x3e0c <SAADC_IRQHandler+0x7c> @ imm = #52
    3dd6: 4b12         	ldr	r3, [pc, #72]           @ 0x3e20 <$d+0xc>
    3dd8: f04f 5280    	mov.w	r2, #268435456
    3ddc: 601a         	str	r2, [r3]
    3dde: f3bf 8f4f    	dsb	sy
    3de2: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:55
; }
    3de6: e011         	b	0x3e0c <SAADC_IRQHandler+0x7c> @ imm = #34
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:52
;     NRF_SAADC->RESULT.PTR += 2;
    3de8: 4b0a         	ldr	r3, [pc, #40]           @ 0x3e14 <$d>
    3dea: f8d3 362c    	ldr.w	r3, [r3, #1580]
    3dee: 4a09         	ldr	r2, [pc, #36]           @ 0x3e14 <$d>
    3df0: 3302         	adds	r3, #2
    3df2: f8c2 362c    	str.w	r3, [r2, #1580]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:53
;     NRF_RTC0->CC[2] = (NRF_RTC0->COUNTER + sample_interval_ticks32) % (1 << 24);
    3df6: 4b0b         	ldr	r3, [pc, #44]           @ 0x3e24 <$d+0x10>
    3df8: f8d3 2504    	ldr.w	r2, [r3, #1284]
    3dfc: 4b0a         	ldr	r3, [pc, #40]           @ 0x3e28 <$d+0x14>
    3dfe: 681b         	ldr	r3, [r3]
    3e00: 4413         	add	r3, r2
    3e02: 4a08         	ldr	r2, [pc, #32]           @ 0x3e24 <$d+0x10>
    3e04: f023 437f    	bic	r3, r3, #4278190080
    3e08: f8c2 3548    	str.w	r3, [r2, #1352]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:55
; }
    3e0c: bf00         	nop
    3e0e: 3708         	adds	r7, #8
    3e10: 46bd         	mov	sp, r7
    3e12: bd80         	pop	{r7, pc}

00003e14 <$d>:
    3e14: 00 70 00 40  	.word	0x40007000
    3e18: 74 08 00 20  	.word	0x20000874
    3e1c: 54 07 00 20  	.word	0x20000754
    3e20: 04 ed 00 e0  	.word	0xe000ed04
    3e24: 00 b0 00 40  	.word	0x4000b000
    3e28: 78 08 00 20  	.word	0x20000878

00003e2c <riotee_adc_init>:
; riotee_adc_init():
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:62
; void riotee_adc_init(void) {
    3e2c: b580         	push	{r7, lr}
    3e2e: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:63
;   NRF_SAADC->RESOLUTION = SAADC_RESOLUTION_VAL_12bit;
    3e30: 4b16         	ldr	r3, [pc, #88]           @ 0x3e8c <$d>
    3e32: 2202         	movs	r2, #2
    3e34: f8c3 25f0    	str.w	r2, [r3, #1520]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:65
;   NRF_PPI->CH[3].EEP = (uint32_t)&NRF_RTC0->EVENTS_COMPARE[2];
    3e38: 4b15         	ldr	r3, [pc, #84]           @ 0x3e90 <$d+0x4>
    3e3a: 4a16         	ldr	r2, [pc, #88]           @ 0x3e94 <$d+0x8>
    3e3c: f8c3 2528    	str.w	r2, [r3, #1320]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:66
;   NRF_PPI->CH[3].TEP = (uint32_t)&NRF_SAADC->TASKS_START;
    3e40: 4b13         	ldr	r3, [pc, #76]           @ 0x3e90 <$d+0x4>
    3e42: 4a12         	ldr	r2, [pc, #72]           @ 0x3e8c <$d>
    3e44: f8c3 252c    	str.w	r2, [r3, #1324]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:67
;   NRF_PPI->CHENSET = PPI_CHENSET_CH3_Msk;
    3e48: 4b11         	ldr	r3, [pc, #68]           @ 0x3e90 <$d+0x4>
    3e4a: 2208         	movs	r2, #8
    3e4c: f8c3 2504    	str.w	r2, [r3, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:69
;   NRF_PPI->CH[4].EEP = (uint32_t)&NRF_SAADC->EVENTS_STARTED;
    3e50: 4b0f         	ldr	r3, [pc, #60]           @ 0x3e90 <$d+0x4>
    3e52: 4a11         	ldr	r2, [pc, #68]           @ 0x3e98 <$d+0xc>
    3e54: f8c3 2530    	str.w	r2, [r3, #1328]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:70
;   NRF_PPI->CH[4].TEP = (uint32_t)&NRF_SAADC->TASKS_SAMPLE;
    3e58: 4b0d         	ldr	r3, [pc, #52]           @ 0x3e90 <$d+0x4>
    3e5a: 4a10         	ldr	r2, [pc, #64]           @ 0x3e9c <$d+0x10>
    3e5c: f8c3 2534    	str.w	r2, [r3, #1332]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:71
;   NRF_PPI->CHENSET = PPI_CHENSET_CH4_Msk;
    3e60: 4b0b         	ldr	r3, [pc, #44]           @ 0x3e90 <$d+0x4>
    3e62: 2210         	movs	r2, #16
    3e64: f8c3 2504    	str.w	r2, [r3, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:73
;   NRF_PPI->CH[5].EEP = (uint32_t)&NRF_SAADC->EVENTS_END;
    3e68: 4b09         	ldr	r3, [pc, #36]           @ 0x3e90 <$d+0x4>
    3e6a: 4a0d         	ldr	r2, [pc, #52]           @ 0x3ea0 <$d+0x14>
    3e6c: f8c3 2538    	str.w	r2, [r3, #1336]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:74
;   NRF_PPI->CH[5].TEP = (uint32_t)&NRF_SAADC->TASKS_STOP;
    3e70: 4b07         	ldr	r3, [pc, #28]           @ 0x3e90 <$d+0x4>
    3e72: 4a0c         	ldr	r2, [pc, #48]           @ 0x3ea4 <$d+0x18>
    3e74: f8c3 253c    	str.w	r2, [r3, #1340]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:75
;   NRF_PPI->CHENSET = PPI_CHENSET_CH5_Msk;
    3e78: 4b05         	ldr	r3, [pc, #20]           @ 0x3e90 <$d+0x4>
    3e7a: 2220         	movs	r2, #32
    3e7c: f8c3 2504    	str.w	r2, [r3, #1284]
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:77
;   NVIC_EnableIRQ(SAADC_IRQn);
    3e80: 2007         	movs	r0, #7
    3e82: f7ff ff43    	bl	0x3d0c <__NVIC_EnableIRQ> @ imm = #-378
; /Users/janstiefel/code/fork/Riotee_SDK/core/adc.c:78
; }
    3e86: bf00         	nop
    3e88: bd80         	pop	{r7, pc}
    3e8a: bf00         	nop

00003e8c <$d>:
    3e8c: 00 70 00 40  	.word	0x40007000
    3e90: 00 f0 01 40  	.word	0x4001f000
    3e94: 48 b1 00 40  	.word	0x4000b148
    3e98: 00 71 00 40  	.word	0x40007100
    3e9c: 04 70 00 40  	.word	0x40007004
    3ea0: 04 71 00 40  	.word	0x40007104
    3ea4: 08 70 00 40  	.word	0x40007008

00003ea8 <TIMER2_IRQHandler>:
; TIMER2_IRQHandler():
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:148
; void TIMER2_IRQHandler(void) {
    3ea8: b580         	push	{r7, lr}
    3eaa: b084         	sub	sp, #16
    3eac: af02         	add	r7, sp, #8
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:149
;   BaseType_t xHigherPriorityTaskWoken = pdFALSE;
    3eae: 2300         	movs	r3, #0
    3eb0: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:151
;   if (NRF_TIMER2->EVENTS_COMPARE[0] == 1) {
    3eb2: 4b16         	ldr	r3, [pc, #88]           @ 0x3f0c <$d>
    3eb4: f8d3 3140    	ldr.w	r3, [r3, #320]
    3eb8: 2b01         	cmp	r3, #1
    3eba: d117         	bne	0x3eec <TIMER2_IRQHandler+0x44> @ imm = #46
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:152
;     NRF_TIMER2->EVENTS_COMPARE[0] = 0;
    3ebc: 4b13         	ldr	r3, [pc, #76]           @ 0x3f0c <$d>
    3ebe: 2200         	movs	r2, #0
    3ec0: f8c3 2140    	str.w	r2, [r3, #320]
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:153
;     radio_cb_unregister(RADIO_EVT_ADDRESS);
    3ec4: 2005         	movs	r0, #5
    3ec6: f7fe fba1    	bl	0x260c <radio_cb_unregister> @ imm = #-6334
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:154
;     radio_stop();
    3eca: f7fe fb8f    	bl	0x25ec <radio_stop>     @ imm = #-6370
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:155
;     stella_teardown_ptr = NULL;
    3ece: 4b10         	ldr	r3, [pc, #64]           @ 0x3f10 <$d+0x4>
    3ed0: 2200         	movs	r2, #0
    3ed2: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:157
;     xTaskNotifyIndexedFromISR(usr_task_handle, 1, EVT_STELLA_TIMEOUT, eSetBits, &xHigherPriorityTaskWoken);
    3ed4: 4b0f         	ldr	r3, [pc, #60]           @ 0x3f14 <$d+0x8>
    3ed6: 6818         	ldr	r0, [r3]
    3ed8: 1d3b         	adds	r3, r7, #4
    3eda: 9301         	str	r3, [sp, #4]
    3edc: 2300         	movs	r3, #0
    3ede: 9300         	str	r3, [sp]
    3ee0: 2301         	movs	r3, #1
    3ee2: f44f 1200    	mov.w	r2, #2097152
    3ee6: 2101         	movs	r1, #1
    3ee8: f000 ffb6    	bl	0x4e58 <xTaskGenericNotifyFromISR> @ imm = #3948
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:159
;   portYIELD_FROM_ISR(xHigherPriorityTaskWoken);
    3eec: 687b         	ldr	r3, [r7, #4]
    3eee: 2b00         	cmp	r3, #0
    3ef0: d007         	beq	0x3f02 <TIMER2_IRQHandler+0x5a> @ imm = #14
    3ef2: 4b09         	ldr	r3, [pc, #36]           @ 0x3f18 <$d+0xc>
    3ef4: f04f 5280    	mov.w	r2, #268435456
    3ef8: 601a         	str	r2, [r3]
    3efa: f3bf 8f4f    	dsb	sy
    3efe: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/core/stella.c:160
; }
    3f02: bf00         	nop
    3f04: 3708         	adds	r7, #8
    3f06: 46bd         	mov	sp, r7
    3f08: bd80         	pop	{r7, pc}
    3f0a: bf00         	nop

00003f0c <$d>:
    3f0c: 00 a0 00 40  	.word	0x4000a000
    3f10: 54 09 00 20  	.word	0x20000954
    3f14: 54 07 00 20  	.word	0x20000754
    3f18: 04 ed 00 e0  	.word	0xe000ed04

00003f1c <riotee_adc_pin2input>:
; riotee_adc_pin2input():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:180
; static inline riotee_rc_t riotee_adc_pin2input(riotee_adc_input_t *input, unsigned int pin) {
    3f1c: b480         	push	{r7}
    3f1e: b083         	sub	sp, #12
    3f20: af00         	add	r7, sp, #0
    3f22: 6078         	str	r0, [r7, #4]
    3f24: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:181
;   switch (pin) {
    3f26: 683b         	ldr	r3, [r7]
    3f28: 2b04         	cmp	r3, #4
    3f2a: d003         	beq	0x3f34 <riotee_adc_pin2input+0x18> @ imm = #6
    3f2c: 683b         	ldr	r3, [r7]
    3f2e: 2b05         	cmp	r3, #5
    3f30: d005         	beq	0x3f3e <riotee_adc_pin2input+0x22> @ imm = #10
    3f32: e009         	b	0x3f48 <riotee_adc_pin2input+0x2c> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:183
;       *input = RIOTEE_ADC_INPUT_A0;
    3f34: 687b         	ldr	r3, [r7, #4]
    3f36: 2203         	movs	r2, #3
    3f38: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:184
;       return RIOTEE_SUCCESS;
    3f3a: 2300         	movs	r3, #0
    3f3c: e006         	b	0x3f4c <riotee_adc_pin2input+0x30> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:186
;       *input = RIOTEE_ADC_INPUT_A1;
    3f3e: 687b         	ldr	r3, [r7, #4]
    3f40: 2204         	movs	r2, #4
    3f42: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:187
;       return RIOTEE_SUCCESS;
    3f44: 2300         	movs	r3, #0
    3f46: e001         	b	0x3f4c <riotee_adc_pin2input+0x30> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:189
;       return RIOTEE_ERR_INVALIDARG;
    3f48: f06f 0301    	mvn	r3, #1
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_adc.h:191
; }
    3f4c: 4618         	mov	r0, r3
    3f4e: 370c         	adds	r7, #12
    3f50: 46bd         	mov	sp, r7
    3f52: f85d 7b04    	ldr	r7, [sp], #4
    3f56: 4770         	bx	lr

00003f58 <riotee_gpio_get_port>:
; riotee_gpio_get_port():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:87
; static inline riotee_gpio_port_t* riotee_gpio_get_port(unsigned int pin) {
    3f58: b480         	push	{r7}
    3f5a: b083         	sub	sp, #12
    3f5c: af00         	add	r7, sp, #0
    3f5e: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:88
;   if (pin > 41)
    3f60: 687b         	ldr	r3, [r7, #4]
    3f62: 2b29         	cmp	r3, #41
    3f64: d901         	bls	0x3f6a <riotee_gpio_get_port+0x12> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:89
;     return NULL;
    3f66: 2300         	movs	r3, #0
    3f68: e006         	b	0x3f78 <riotee_gpio_get_port+0x20> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:90
;   if (pin > 31) {
    3f6a: 687b         	ldr	r3, [r7, #4]
    3f6c: 2b1f         	cmp	r3, #31
    3f6e: d901         	bls	0x3f74 <riotee_gpio_get_port+0x1c> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:91
;     return NRF_PORT1;
    3f70: 4b04         	ldr	r3, [pc, #16]           @ 0x3f84 <$d>
    3f72: e001         	b	0x3f78 <riotee_gpio_get_port+0x20> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:93
;   return NRF_PORT0;
    3f74: f04f 43a0    	mov.w	r3, #1342177280
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:94
; }
    3f78: 4618         	mov	r0, r3
    3f7a: 370c         	adds	r7, #12
    3f7c: 46bd         	mov	sp, r7
    3f7e: f85d 7b04    	ldr	r7, [sp], #4
    3f82: 4770         	bx	lr

00003f84 <$d>:
    3f84: 00 03 00 50  	.word	0x50000300

00003f88 <riotee_gpio_get_pin_idx>:
; riotee_gpio_get_pin_idx():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:96
; static inline int riotee_gpio_get_pin_idx(unsigned int pin) {
    3f88: b480         	push	{r7}
    3f8a: b083         	sub	sp, #12
    3f8c: af00         	add	r7, sp, #0
    3f8e: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:97
;   if (pin > 31) {
    3f90: 687b         	ldr	r3, [r7, #4]
    3f92: 2b1f         	cmp	r3, #31
    3f94: d902         	bls	0x3f9c <riotee_gpio_get_pin_idx+0x14> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:98
;     return pin - 32;
    3f96: 687b         	ldr	r3, [r7, #4]
    3f98: 3b20         	subs	r3, #32
    3f9a: e000         	b	0x3f9e <riotee_gpio_get_pin_idx+0x16> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:100
;   return pin;
    3f9c: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:101
; }
    3f9e: 4618         	mov	r0, r3
    3fa0: 370c         	adds	r7, #12
    3fa2: 46bd         	mov	sp, r7
    3fa4: f85d 7b04    	ldr	r7, [sp], #4
    3fa8: 4770         	bx	lr

00003faa <riotee_gpio_cfg_output>:
; riotee_gpio_cfg_output():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:109
; static inline void riotee_gpio_cfg_output(unsigned int pin) {
    3faa: b580         	push	{r7, lr}
    3fac: b084         	sub	sp, #16
    3fae: af00         	add	r7, sp, #0
    3fb0: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:110
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    3fb2: 6878         	ldr	r0, [r7, #4]
    3fb4: f7ff ffd0    	bl	0x3f58 <riotee_gpio_get_port> @ imm = #-96
    3fb8: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:111
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    3fba: 6878         	ldr	r0, [r7, #4]
    3fbc: f7ff ffe4    	bl	0x3f88 <riotee_gpio_get_pin_idx> @ imm = #-56
    3fc0: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:114
;   reg->PIN_CNF[pin_idx] = (1UL << 0) | (1UL << 1);
    3fc2: 68fb         	ldr	r3, [r7, #12]
    3fc4: 68ba         	ldr	r2, [r7, #8]
    3fc6: f502 72e0    	add.w	r2, r2, #448
    3fca: 2103         	movs	r1, #3
    3fcc: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:115
; }
    3fd0: bf00         	nop
    3fd2: 3710         	adds	r7, #16
    3fd4: 46bd         	mov	sp, r7
    3fd6: bd80         	pop	{r7, pc}

00003fd8 <riotee_gpio_cfg_input>:
; riotee_gpio_cfg_input():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:124
; static inline void riotee_gpio_cfg_input(unsigned int pin, riotee_gpio_in_pull_t pull) {
    3fd8: b580         	push	{r7, lr}
    3fda: b084         	sub	sp, #16
    3fdc: af00         	add	r7, sp, #0
    3fde: 6078         	str	r0, [r7, #4]
    3fe0: 460b         	mov	r3, r1
    3fe2: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:125
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    3fe4: 6878         	ldr	r0, [r7, #4]
    3fe6: f7ff ffb7    	bl	0x3f58 <riotee_gpio_get_port> @ imm = #-146
    3fea: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:126
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    3fec: 6878         	ldr	r0, [r7, #4]
    3fee: f7ff ffcb    	bl	0x3f88 <riotee_gpio_get_pin_idx> @ imm = #-106
    3ff2: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:129
;   reg->PIN_CNF[pin_idx] = (pull << 2);
    3ff4: 78fb         	ldrb	r3, [r7, #3]
    3ff6: 0099         	lsls	r1, r3, #2
    3ff8: 68fb         	ldr	r3, [r7, #12]
    3ffa: 68ba         	ldr	r2, [r7, #8]
    3ffc: f502 72e0    	add.w	r2, r2, #448
    4000: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:130
; }
    4004: bf00         	nop
    4006: 3710         	adds	r7, #16
    4008: 46bd         	mov	sp, r7
    400a: bd80         	pop	{r7, pc}

0000400c <riotee_gpio_clear>:
; riotee_gpio_clear():
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:164
; static inline void riotee_gpio_clear(unsigned int pin) {
    400c: b580         	push	{r7, lr}
    400e: b084         	sub	sp, #16
    4010: af00         	add	r7, sp, #0
    4012: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:165
;   riotee_gpio_port_t* reg = riotee_gpio_get_port(pin);
    4014: 6878         	ldr	r0, [r7, #4]
    4016: f7ff ff9f    	bl	0x3f58 <riotee_gpio_get_port> @ imm = #-194
    401a: 60f8         	str	r0, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:166
;   int pin_idx = riotee_gpio_get_pin_idx(pin);
    401c: 6878         	ldr	r0, [r7, #4]
    401e: f7ff ffb3    	bl	0x3f88 <riotee_gpio_get_pin_idx> @ imm = #-154
    4022: 60b8         	str	r0, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:168
;   reg->OUTCLR = (1UL << pin_idx);
    4024: 2201         	movs	r2, #1
    4026: 68bb         	ldr	r3, [r7, #8]
    4028: 409a         	lsls	r2, r3
    402a: 68fb         	ldr	r3, [r7, #12]
    402c: f8c3 250c    	str.w	r2, [r3, #1292]
; /Users/janstiefel/code/fork/Riotee_SDK/core/include/riotee_gpio.h:169
; }
    4030: bf00         	nop
    4032: 3710         	adds	r7, #16
    4034: 46bd         	mov	sp, r7
    4036: bd80         	pop	{r7, pc}

00004038 <vm1010_init>:
; vm1010_init():
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:23
; int vm1010_init(vm1010_cfg_t *cfg) {
    4038: b580         	push	{r7, lr}
    403a: b084         	sub	sp, #16
    403c: af00         	add	r7, sp, #0
    403e: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:25
;   pin_mode = cfg->pin_mode;
    4040: 687b         	ldr	r3, [r7, #4]
    4042: 681b         	ldr	r3, [r3]
    4044: 4a1a         	ldr	r2, [pc, #104]          @ 0x40b0 <$d>
    4046: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:26
;   pin_dout = cfg->pin_dout;
    4048: 687b         	ldr	r3, [r7, #4]
    404a: 685b         	ldr	r3, [r3, #4]
    404c: 4a19         	ldr	r2, [pc, #100]          @ 0x40b4 <$d+0x4>
    404e: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:28
;   if ((rc = riotee_adc_pin2input(&adc_cfg.input_pos, cfg->pin_vout)) != 0)
    4050: 687b         	ldr	r3, [r7, #4]
    4052: 689b         	ldr	r3, [r3, #8]
    4054: 4619         	mov	r1, r3
    4056: 4818         	ldr	r0, [pc, #96]           @ 0x40b8 <$d+0x8>
    4058: f7ff ff60    	bl	0x3f1c <riotee_adc_pin2input> @ imm = #-320
    405c: 60f8         	str	r0, [r7, #12]
    405e: 68fb         	ldr	r3, [r7, #12]
    4060: 2b00         	cmp	r3, #0
    4062: d001         	beq	0x4068 <vm1010_init+0x30> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:29
;     return rc;
    4064: 68fb         	ldr	r3, [r7, #12]
    4066: e01e         	b	0x40a6 <vm1010_init+0x6e> @ imm = #60
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:31
;   if ((rc = riotee_adc_pin2input(&adc_cfg.input_neg, cfg->pin_vbias)) != 0)
    4068: 687b         	ldr	r3, [r7, #4]
    406a: 68db         	ldr	r3, [r3, #12]
    406c: 4619         	mov	r1, r3
    406e: 4813         	ldr	r0, [pc, #76]           @ 0x40bc <$d+0xc>
    4070: f7ff ff54    	bl	0x3f1c <riotee_adc_pin2input> @ imm = #-344
    4074: 60f8         	str	r0, [r7, #12]
    4076: 68fb         	ldr	r3, [r7, #12]
    4078: 2b00         	cmp	r3, #0
    407a: d001         	beq	0x4080 <vm1010_init+0x48> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:32
;     return rc;
    407c: 68fb         	ldr	r3, [r7, #12]
    407e: e012         	b	0x40a6 <vm1010_init+0x6e> @ imm = #36
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:34
;   riotee_gpio_cfg_output(pin_mode);
    4080: 4b0b         	ldr	r3, [pc, #44]           @ 0x40b0 <$d>
    4082: 681b         	ldr	r3, [r3]
    4084: 4618         	mov	r0, r3
    4086: f7ff ff90    	bl	0x3faa <riotee_gpio_cfg_output> @ imm = #-224
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:35
;   riotee_gpio_clear(pin_mode);
    408a: 4b09         	ldr	r3, [pc, #36]           @ 0x40b0 <$d>
    408c: 681b         	ldr	r3, [r3]
    408e: 4618         	mov	r0, r3
    4090: f7ff ffbc    	bl	0x400c <riotee_gpio_clear> @ imm = #-136
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:36
;   riotee_gpio_cfg_input(pin_dout, RIOTEE_GPIO_IN_NOPULL);
    4094: 4b07         	ldr	r3, [pc, #28]           @ 0x40b4 <$d+0x4>
    4096: 681b         	ldr	r3, [r3]
    4098: 2100         	movs	r1, #0
    409a: 4618         	mov	r0, r3
    409c: f7ff ff9c    	bl	0x3fd8 <riotee_gpio_cfg_input> @ imm = #-200
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:38
;   riotee_adc_init();
    40a0: f7ff fec4    	bl	0x3e2c <riotee_adc_init> @ imm = #-632
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:39
;   return rc;
    40a4: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/drivers/vm1010.c:40
; }
    40a6: 4618         	mov	r0, r3
    40a8: 3710         	adds	r7, #16
    40aa: 46bd         	mov	sp, r7
    40ac: bd80         	pop	{r7, pc}
    40ae: bf00         	nop

000040b0 <$d>:
    40b0: 18 e0 01 20  	.word	0x2001e018
    40b4: 1c e0 01 20  	.word	0x2001e01c
    40b8: 03 e0 01 20  	.word	0x2001e003
    40bc: 04 e0 01 20  	.word	0x2001e004

000040c0 <vListInitialise>:
; vListInitialise():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:51
; {
    40c0: b480         	push	{r7}
    40c2: b083         	sub	sp, #12
    40c4: af00         	add	r7, sp, #0
    40c6: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:55
;     pxList->pxIndex = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
    40c8: 687b         	ldr	r3, [r7, #4]
    40ca: f103 0208    	add.w	r2, r3, #8
    40ce: 687b         	ldr	r3, [r7, #4]
    40d0: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:61
;     pxList->xListEnd.xItemValue = portMAX_DELAY;
    40d2: 687b         	ldr	r3, [r7, #4]
    40d4: f04f 32ff    	mov.w	r2, #4294967295
    40d8: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:65
;     pxList->xListEnd.pxNext = ( ListItem_t * ) &( pxList->xListEnd );     /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
    40da: 687b         	ldr	r3, [r7, #4]
    40dc: f103 0208    	add.w	r2, r3, #8
    40e0: 687b         	ldr	r3, [r7, #4]
    40e2: 60da         	str	r2, [r3, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:66
;     pxList->xListEnd.pxPrevious = ( ListItem_t * ) &( pxList->xListEnd ); /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. */
    40e4: 687b         	ldr	r3, [r7, #4]
    40e6: f103 0208    	add.w	r2, r3, #8
    40ea: 687b         	ldr	r3, [r7, #4]
    40ec: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:77
;     pxList->uxNumberOfItems = ( UBaseType_t ) 0U;
    40ee: 687b         	ldr	r3, [r7, #4]
    40f0: 2200         	movs	r2, #0
    40f2: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:83
; }
    40f4: bf00         	nop
    40f6: 370c         	adds	r7, #12
    40f8: 46bd         	mov	sp, r7
    40fa: f85d 7b04    	ldr	r7, [sp], #4
    40fe: 4770         	bx	lr

00004100 <vListInitialiseItem>:
; vListInitialiseItem():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:87
; {
    4100: b480         	push	{r7}
    4102: b083         	sub	sp, #12
    4104: af00         	add	r7, sp, #0
    4106: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:89
;     pxItem->pxContainer = NULL;
    4108: 687b         	ldr	r3, [r7, #4]
    410a: 2200         	movs	r2, #0
    410c: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:95
; }
    410e: bf00         	nop
    4110: 370c         	adds	r7, #12
    4112: 46bd         	mov	sp, r7
    4114: f85d 7b04    	ldr	r7, [sp], #4
    4118: 4770         	bx	lr

0000411a <vListInsertEnd>:
; vListInsertEnd():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:100
; {
    411a: b480         	push	{r7}
    411c: b085         	sub	sp, #20
    411e: af00         	add	r7, sp, #0
    4120: 6078         	str	r0, [r7, #4]
    4122: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:101
;     ListItem_t * const pxIndex = pxList->pxIndex;
    4124: 687b         	ldr	r3, [r7, #4]
    4126: 685b         	ldr	r3, [r3, #4]
    4128: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:112
;     pxNewListItem->pxNext = pxIndex;
    412a: 683b         	ldr	r3, [r7]
    412c: 68fa         	ldr	r2, [r7, #12]
    412e: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:113
;     pxNewListItem->pxPrevious = pxIndex->pxPrevious;
    4130: 68fb         	ldr	r3, [r7, #12]
    4132: 689a         	ldr	r2, [r3, #8]
    4134: 683b         	ldr	r3, [r7]
    4136: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:118
;     pxIndex->pxPrevious->pxNext = pxNewListItem;
    4138: 68fb         	ldr	r3, [r7, #12]
    413a: 689b         	ldr	r3, [r3, #8]
    413c: 683a         	ldr	r2, [r7]
    413e: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:119
;     pxIndex->pxPrevious = pxNewListItem;
    4140: 68fb         	ldr	r3, [r7, #12]
    4142: 683a         	ldr	r2, [r7]
    4144: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:122
;     pxNewListItem->pxContainer = pxList;
    4146: 683b         	ldr	r3, [r7]
    4148: 687a         	ldr	r2, [r7, #4]
    414a: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:124
;     ( pxList->uxNumberOfItems )++;
    414c: 687b         	ldr	r3, [r7, #4]
    414e: 681b         	ldr	r3, [r3]
    4150: 1c5a         	adds	r2, r3, #1
    4152: 687b         	ldr	r3, [r7, #4]
    4154: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:125
; }
    4156: bf00         	nop
    4158: 3714         	adds	r7, #20
    415a: 46bd         	mov	sp, r7
    415c: f85d 7b04    	ldr	r7, [sp], #4
    4160: 4770         	bx	lr

00004162 <vListInsert>:
; vListInsert():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:130
; {
    4162: b480         	push	{r7}
    4164: b085         	sub	sp, #20
    4166: af00         	add	r7, sp, #0
    4168: 6078         	str	r0, [r7, #4]
    416a: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:132
;     const TickType_t xValueOfInsertion = pxNewListItem->xItemValue;
    416c: 683b         	ldr	r3, [r7]
    416e: 681b         	ldr	r3, [r3]
    4170: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:148
;     if( xValueOfInsertion == portMAX_DELAY )
    4172: 68bb         	ldr	r3, [r7, #8]
    4174: f1b3 3fff    	cmp.w	r3, #4294967295
    4178: d103         	bne	0x4182 <vListInsert+0x20> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:150
;         pxIterator = pxList->xListEnd.pxPrevious;
    417a: 687b         	ldr	r3, [r7, #4]
    417c: 691b         	ldr	r3, [r3, #16]
    417e: 60fb         	str	r3, [r7, #12]
    4180: e00c         	b	0x419c <vListInsert+0x3a> @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:179
;         for( pxIterator = ( ListItem_t * ) &( pxList->xListEnd ); pxIterator->pxNext->xItemValue <= xValueOfInsertion; pxIterator = pxIterator->pxNext ) /*lint !e826 !e740 !e9087 The mini list structure is used as the list end to save RAM.  This is checked and valid. *//*lint !e440 The iterator moves to a different value, not xValueOfInsertion. */
    4182: 687b         	ldr	r3, [r7, #4]
    4184: 3308         	adds	r3, #8
    4186: 60fb         	str	r3, [r7, #12]
    4188: e002         	b	0x4190 <vListInsert+0x2e> @ imm = #4
    418a: 68fb         	ldr	r3, [r7, #12]
    418c: 685b         	ldr	r3, [r3, #4]
    418e: 60fb         	str	r3, [r7, #12]
    4190: 68fb         	ldr	r3, [r7, #12]
    4192: 685b         	ldr	r3, [r3, #4]
    4194: 681b         	ldr	r3, [r3]
    4196: 68ba         	ldr	r2, [r7, #8]
    4198: 429a         	cmp	r2, r3
    419a: d2f6         	bhs	0x418a <vListInsert+0x28> @ imm = #-20
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:186
;     pxNewListItem->pxNext = pxIterator->pxNext;
    419c: 68fb         	ldr	r3, [r7, #12]
    419e: 685a         	ldr	r2, [r3, #4]
    41a0: 683b         	ldr	r3, [r7]
    41a2: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:187
;     pxNewListItem->pxNext->pxPrevious = pxNewListItem;
    41a4: 683b         	ldr	r3, [r7]
    41a6: 685b         	ldr	r3, [r3, #4]
    41a8: 683a         	ldr	r2, [r7]
    41aa: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:188
;     pxNewListItem->pxPrevious = pxIterator;
    41ac: 683b         	ldr	r3, [r7]
    41ae: 68fa         	ldr	r2, [r7, #12]
    41b0: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:189
;     pxIterator->pxNext = pxNewListItem;
    41b2: 68fb         	ldr	r3, [r7, #12]
    41b4: 683a         	ldr	r2, [r7]
    41b6: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:193
;     pxNewListItem->pxContainer = pxList;
    41b8: 683b         	ldr	r3, [r7]
    41ba: 687a         	ldr	r2, [r7, #4]
    41bc: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:195
;     ( pxList->uxNumberOfItems )++;
    41be: 687b         	ldr	r3, [r7, #4]
    41c0: 681b         	ldr	r3, [r3]
    41c2: 1c5a         	adds	r2, r3, #1
    41c4: 687b         	ldr	r3, [r7, #4]
    41c6: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:196
; }
    41c8: bf00         	nop
    41ca: 3714         	adds	r7, #20
    41cc: 46bd         	mov	sp, r7
    41ce: f85d 7b04    	ldr	r7, [sp], #4
    41d2: 4770         	bx	lr

000041d4 <uxListRemove>:
; uxListRemove():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:200
; {
    41d4: b480         	push	{r7}
    41d6: b085         	sub	sp, #20
    41d8: af00         	add	r7, sp, #0
    41da: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:203
;     List_t * const pxList = pxItemToRemove->pxContainer;
    41dc: 687b         	ldr	r3, [r7, #4]
    41de: 691b         	ldr	r3, [r3, #16]
    41e0: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:205
;     pxItemToRemove->pxNext->pxPrevious = pxItemToRemove->pxPrevious;
    41e2: 687b         	ldr	r3, [r7, #4]
    41e4: 685b         	ldr	r3, [r3, #4]
    41e6: 687a         	ldr	r2, [r7, #4]
    41e8: 6892         	ldr	r2, [r2, #8]
    41ea: 609a         	str	r2, [r3, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:206
;     pxItemToRemove->pxPrevious->pxNext = pxItemToRemove->pxNext;
    41ec: 687b         	ldr	r3, [r7, #4]
    41ee: 689b         	ldr	r3, [r3, #8]
    41f0: 687a         	ldr	r2, [r7, #4]
    41f2: 6852         	ldr	r2, [r2, #4]
    41f4: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:212
;     if( pxList->pxIndex == pxItemToRemove )
    41f6: 68fb         	ldr	r3, [r7, #12]
    41f8: 685b         	ldr	r3, [r3, #4]
    41fa: 687a         	ldr	r2, [r7, #4]
    41fc: 429a         	cmp	r2, r3
    41fe: d103         	bne	0x4208 <uxListRemove+0x34> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:214
;         pxList->pxIndex = pxItemToRemove->pxPrevious;
    4200: 687b         	ldr	r3, [r7, #4]
    4202: 689a         	ldr	r2, [r3, #8]
    4204: 68fb         	ldr	r3, [r7, #12]
    4206: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:221
;     pxItemToRemove->pxContainer = NULL;
    4208: 687b         	ldr	r3, [r7, #4]
    420a: 2200         	movs	r2, #0
    420c: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:222
;     ( pxList->uxNumberOfItems )--;
    420e: 68fb         	ldr	r3, [r7, #12]
    4210: 681b         	ldr	r3, [r3]
    4212: 1e5a         	subs	r2, r3, #1
    4214: 68fb         	ldr	r3, [r7, #12]
    4216: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:224
;     return pxList->uxNumberOfItems;
    4218: 68fb         	ldr	r3, [r7, #12]
    421a: 681b         	ldr	r3, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/list.c:225
; }
    421c: 4618         	mov	r0, r3
    421e: 3714         	adds	r7, #20
    4220: 46bd         	mov	sp, r7
    4222: f85d 7b04    	ldr	r7, [sp], #4
    4226: 4770         	bx	lr

00004228 <xTaskCreateStatic>:
; xTaskCreateStatic():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:573
;     {
    4228: b580         	push	{r7, lr}
    422a: b08a         	sub	sp, #40
    422c: af04         	add	r7, sp, #16
    422e: 60f8         	str	r0, [r7, #12]
    4230: 60b9         	str	r1, [r7, #8]
    4232: 607a         	str	r2, [r7, #4]
    4234: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:591
;         if( ( pxTaskBuffer != NULL ) && ( puxStackBuffer != NULL ) )
    4236: 6abb         	ldr	r3, [r7, #40]
    4238: 2b00         	cmp	r3, #0
    423a: d01f         	beq	0x427c <xTaskCreateStatic+0x54> @ imm = #62
    423c: 6a7b         	ldr	r3, [r7, #36]
    423e: 2b00         	cmp	r3, #0
    4240: d01c         	beq	0x427c <xTaskCreateStatic+0x54> @ imm = #56
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:595
;             pxNewTCB = ( TCB_t * ) pxTaskBuffer; /*lint !e740 !e9087 Unusual cast is ok as the structures are designed to have the same alignment, and the size is checked by an assert. */
    4242: 6abb         	ldr	r3, [r7, #40]
    4244: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:596
;             memset( ( void * ) pxNewTCB, 0x00, sizeof( TCB_t ) );
    4246: 2268         	movs	r2, #104
    4248: 2100         	movs	r1, #0
    424a: 6978         	ldr	r0, [r7, #20]
    424c: f002 fbb4    	bl	0x69b8 <memset>         @ imm = #10088
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:597
;             pxNewTCB->pxStack = ( StackType_t * ) puxStackBuffer;
    4250: 697b         	ldr	r3, [r7, #20]
    4252: 6a7a         	ldr	r2, [r7, #36]
    4254: 631a         	str	r2, [r3, #48]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:607
;             prvInitialiseNewTask( pxTaskCode, pcName, ulStackDepth, pvParameters, uxPriority, &xReturn, pxNewTCB, NULL );
    4256: 2300         	movs	r3, #0
    4258: 9303         	str	r3, [sp, #12]
    425a: 697b         	ldr	r3, [r7, #20]
    425c: 9302         	str	r3, [sp, #8]
    425e: f107 0310    	add.w	r3, r7, #16
    4262: 9301         	str	r3, [sp, #4]
    4264: 6a3b         	ldr	r3, [r7, #32]
    4266: 9300         	str	r3, [sp]
    4268: 683b         	ldr	r3, [r7]
    426a: 687a         	ldr	r2, [r7, #4]
    426c: 68b9         	ldr	r1, [r7, #8]
    426e: 68f8         	ldr	r0, [r7, #12]
    4270: f000 f80b    	bl	0x428a <prvInitialiseNewTask> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:608
;             prvAddNewTaskToReadyList( pxNewTCB );
    4274: 6978         	ldr	r0, [r7, #20]
    4276: f000 f875    	bl	0x4364 <prvAddNewTaskToReadyList> @ imm = #234
    427a: e001         	b	0x4280 <xTaskCreateStatic+0x58> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:612
;             xReturn = NULL;
    427c: 2300         	movs	r3, #0
    427e: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:615
;         return xReturn;
    4280: 693b         	ldr	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:616
;     }
    4282: 4618         	mov	r0, r3
    4284: 3718         	adds	r7, #24
    4286: 46bd         	mov	sp, r7
    4288: bd80         	pop	{r7, pc}

0000428a <prvInitialiseNewTask>:
; prvInitialiseNewTask():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:826
; {
    428a: b580         	push	{r7, lr}
    428c: b086         	sub	sp, #24
    428e: af00         	add	r7, sp, #0
    4290: 60f8         	str	r0, [r7, #12]
    4292: 60b9         	str	r1, [r7, #8]
    4294: 607a         	str	r2, [r7, #4]
    4296: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:849
;         ( void ) memset( pxNewTCB->pxStack, ( int ) tskSTACK_FILL_BYTE, ( size_t ) ulStackDepth * sizeof( StackType_t ) );
    4298: 6abb         	ldr	r3, [r7, #40]
    429a: 6b18         	ldr	r0, [r3, #48]
    429c: 687b         	ldr	r3, [r7, #4]
    429e: 009b         	lsls	r3, r3, #2
    42a0: 461a         	mov	r2, r3
    42a2: 21a5         	movs	r1, #165
    42a4: f002 fb88    	bl	0x69b8 <memset>         @ imm = #10000
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:859
;         pxTopOfStack = &( pxNewTCB->pxStack[ ulStackDepth - ( uint32_t ) 1 ] );
    42a8: 6abb         	ldr	r3, [r7, #40]
    42aa: 6b1a         	ldr	r2, [r3, #48]
    42ac: 687b         	ldr	r3, [r7, #4]
    42ae: f103 4380    	add.w	r3, r3, #1073741824
    42b2: 3b01         	subs	r3, #1
    42b4: 009b         	lsls	r3, r3, #2
    42b6: 4413         	add	r3, r2
    42b8: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:860
;         pxTopOfStack = ( StackType_t * ) ( ( ( portPOINTER_SIZE_TYPE ) pxTopOfStack ) & ( ~( ( portPOINTER_SIZE_TYPE ) portBYTE_ALIGNMENT_MASK ) ) ); /*lint !e923 !e9033 !e9078 MISRA exception.  Avoiding casts between pointers and integers is not practical.  Size differences accounted for using portPOINTER_SIZE_TYPE type.  Checked by assert(). */
    42ba: 693b         	ldr	r3, [r7, #16]
    42bc: f023 0307    	bic	r3, r3, #7
    42c0: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:887
;     if( pcName != NULL )
    42c2: 68bb         	ldr	r3, [r7, #8]
    42c4: 2b00         	cmp	r3, #0
    42c6: d01e         	beq	0x4306 <prvInitialiseNewTask+0x7c> @ imm = #60
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:889
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
    42c8: 2300         	movs	r3, #0
    42ca: 617b         	str	r3, [r7, #20]
    42cc: e012         	b	0x42f4 <prvInitialiseNewTask+0x6a> @ imm = #36
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:891
;             pxNewTCB->pcTaskName[ x ] = pcName[ x ];
    42ce: 68ba         	ldr	r2, [r7, #8]
    42d0: 697b         	ldr	r3, [r7, #20]
    42d2: 4413         	add	r3, r2
    42d4: 7819         	ldrb	r1, [r3]
    42d6: 6aba         	ldr	r2, [r7, #40]
    42d8: 697b         	ldr	r3, [r7, #20]
    42da: 4413         	add	r3, r2
    42dc: 3334         	adds	r3, #52
    42de: 460a         	mov	r2, r1
    42e0: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:896
;             if( pcName[ x ] == ( char ) 0x00 )
    42e2: 68ba         	ldr	r2, [r7, #8]
    42e4: 697b         	ldr	r3, [r7, #20]
    42e6: 4413         	add	r3, r2
    42e8: 781b         	ldrb	r3, [r3]
    42ea: 2b00         	cmp	r3, #0
    42ec: d006         	beq	0x42fc <prvInitialiseNewTask+0x72> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:889
;         for( x = ( UBaseType_t ) 0; x < ( UBaseType_t ) configMAX_TASK_NAME_LEN; x++ )
    42ee: 697b         	ldr	r3, [r7, #20]
    42f0: 3301         	adds	r3, #1
    42f2: 617b         	str	r3, [r7, #20]
    42f4: 697b         	ldr	r3, [r7, #20]
    42f6: 2b0f         	cmp	r3, #15
    42f8: d9e9         	bls	0x42ce <prvInitialiseNewTask+0x44> @ imm = #-46
    42fa: e000         	b	0x42fe <prvInitialiseNewTask+0x74> @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:898
;                 break;
    42fc: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:908
;         pxNewTCB->pcTaskName[ configMAX_TASK_NAME_LEN - 1 ] = '\0';
    42fe: 6abb         	ldr	r3, [r7, #40]
    4300: 2200         	movs	r2, #0
    4302: f883 2043    	strb.w	r2, [r3, #67]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:918
;     if( uxPriority >= ( UBaseType_t ) configMAX_PRIORITIES )
    4306: 6a3b         	ldr	r3, [r7, #32]
    4308: 2b04         	cmp	r3, #4
    430a: d901         	bls	0x4310 <prvInitialiseNewTask+0x86> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:920
;         uxPriority = ( UBaseType_t ) configMAX_PRIORITIES - ( UBaseType_t ) 1U;
    430c: 2304         	movs	r3, #4
    430e: 623b         	str	r3, [r7, #32]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:927
;     pxNewTCB->uxPriority = uxPriority;
    4310: 6abb         	ldr	r3, [r7, #40]
    4312: 6a3a         	ldr	r2, [r7, #32]
    4314: 62da         	str	r2, [r3, #44]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:934
;     vListInitialiseItem( &( pxNewTCB->xStateListItem ) );
    4316: 6abb         	ldr	r3, [r7, #40]
    4318: 3304         	adds	r3, #4
    431a: 4618         	mov	r0, r3
    431c: f7ff fef0    	bl	0x4100 <vListInitialiseItem> @ imm = #-544
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:935
;     vListInitialiseItem( &( pxNewTCB->xEventListItem ) );
    4320: 6abb         	ldr	r3, [r7, #40]
    4322: 3318         	adds	r3, #24
    4324: 4618         	mov	r0, r3
    4326: f7ff feeb    	bl	0x4100 <vListInitialiseItem> @ imm = #-554
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:939
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xStateListItem ), pxNewTCB );
    432a: 6abb         	ldr	r3, [r7, #40]
    432c: 6aba         	ldr	r2, [r7, #40]
    432e: 611a         	str	r2, [r3, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:942
;     listSET_LIST_ITEM_VALUE( &( pxNewTCB->xEventListItem ), ( TickType_t ) configMAX_PRIORITIES - ( TickType_t ) uxPriority ); /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
    4330: 6a3b         	ldr	r3, [r7, #32]
    4332: f1c3 0205    	rsb.w	r2, r3, #5
    4336: 6abb         	ldr	r3, [r7, #40]
    4338: 619a         	str	r2, [r3, #24]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:943
;     listSET_LIST_ITEM_OWNER( &( pxNewTCB->xEventListItem ), pxNewTCB );
    433a: 6abb         	ldr	r3, [r7, #40]
    433c: 6aba         	ldr	r2, [r7, #40]
    433e: 625a         	str	r2, [r3, #36]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1009
;             pxNewTCB->pxTopOfStack = pxPortInitialiseStack( pxTopOfStack, pxTaskCode, pvParameters );
    4340: 683a         	ldr	r2, [r7]
    4342: 68f9         	ldr	r1, [r7, #12]
    4344: 6938         	ldr	r0, [r7, #16]
    4346: f000 ff3f    	bl	0x51c8 <pxPortInitialiseStack> @ imm = #3710
    434a: 4602         	mov	r2, r0
    434c: 6abb         	ldr	r3, [r7, #40]
    434e: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1015
;     if( pxCreatedTask != NULL )
    4350: 6a7b         	ldr	r3, [r7, #36]
    4352: 2b00         	cmp	r3, #0
    4354: d002         	beq	0x435c <prvInitialiseNewTask+0xd2> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1019
;         *pxCreatedTask = ( TaskHandle_t ) pxNewTCB;
    4356: 6a7b         	ldr	r3, [r7, #36]
    4358: 6aba         	ldr	r2, [r7, #40]
    435a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1025
; }
    435c: bf00         	nop
    435e: 3718         	adds	r7, #24
    4360: 46bd         	mov	sp, r7
    4362: bd80         	pop	{r7, pc}

00004364 <prvAddNewTaskToReadyList>:
; prvAddNewTaskToReadyList():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1029
; {
    4364: b580         	push	{r7, lr}
    4366: b084         	sub	sp, #16
    4368: af00         	add	r7, sp, #0
    436a: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1032
;     taskENTER_CRITICAL();
    436c: f000 ffd4    	bl	0x5318 <vPortEnterCritical> @ imm = #4008
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1034
;         uxCurrentNumberOfTasks++;
    4370: 4b3f         	ldr	r3, [pc, #252]          @ 0x4470 <$d>
    4372: 681b         	ldr	r3, [r3]
    4374: 3301         	adds	r3, #1
    4376: 4a3e         	ldr	r2, [pc, #248]          @ 0x4470 <$d>
    4378: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1036
;         if( pxCurrentTCB == NULL )
    437a: 4b3e         	ldr	r3, [pc, #248]          @ 0x4474 <$d+0x4>
    437c: 681b         	ldr	r3, [r3]
    437e: 2b00         	cmp	r3, #0
    4380: d109         	bne	0x4396 <prvAddNewTaskToReadyList+0x32> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1040
;             pxCurrentTCB = pxNewTCB;
    4382: 4a3c         	ldr	r2, [pc, #240]          @ 0x4474 <$d+0x4>
    4384: 687b         	ldr	r3, [r7, #4]
    4386: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1042
;             if( uxCurrentNumberOfTasks == ( UBaseType_t ) 1 )
    4388: 4b39         	ldr	r3, [pc, #228]          @ 0x4470 <$d>
    438a: 681b         	ldr	r3, [r3]
    438c: 2b01         	cmp	r3, #1
    438e: d110         	bne	0x43b2 <prvAddNewTaskToReadyList+0x4e> @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1047
;                 prvInitialiseTaskLists();
    4390: f000 fb68    	bl	0x4a64 <prvInitialiseTaskLists> @ imm = #1744
    4394: e00d         	b	0x43b2 <prvAddNewTaskToReadyList+0x4e> @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1059
;             if( xSchedulerRunning == pdFALSE )
    4396: 4b38         	ldr	r3, [pc, #224]          @ 0x4478 <$d+0x8>
    4398: 681b         	ldr	r3, [r3]
    439a: 2b00         	cmp	r3, #0
    439c: d109         	bne	0x43b2 <prvAddNewTaskToReadyList+0x4e> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1061
;                 if( pxCurrentTCB->uxPriority <= pxNewTCB->uxPriority )
    439e: 4b35         	ldr	r3, [pc, #212]          @ 0x4474 <$d+0x4>
    43a0: 681b         	ldr	r3, [r3]
    43a2: 6ada         	ldr	r2, [r3, #44]
    43a4: 687b         	ldr	r3, [r7, #4]
    43a6: 6adb         	ldr	r3, [r3, #44]
    43a8: 429a         	cmp	r2, r3
    43aa: d802         	bhi	0x43b2 <prvAddNewTaskToReadyList+0x4e> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1063
;                     pxCurrentTCB = pxNewTCB;
    43ac: 4a31         	ldr	r2, [pc, #196]          @ 0x4474 <$d+0x4>
    43ae: 687b         	ldr	r3, [r7, #4]
    43b0: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1076
;         uxTaskNumber++;
    43b2: 4b32         	ldr	r3, [pc, #200]          @ 0x447c <$d+0xc>
    43b4: 681b         	ldr	r3, [r3]
    43b6: 3301         	adds	r3, #1
    43b8: 4a30         	ldr	r2, [pc, #192]          @ 0x447c <$d+0xc>
    43ba: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1086
;         prvAddTaskToReadyList( pxNewTCB );
    43bc: 687b         	ldr	r3, [r7, #4]
    43be: 6ada         	ldr	r2, [r3, #44]
    43c0: 4b2f         	ldr	r3, [pc, #188]          @ 0x4480 <$d+0x10>
    43c2: 681b         	ldr	r3, [r3]
    43c4: 429a         	cmp	r2, r3
    43c6: d903         	bls	0x43d0 <prvAddNewTaskToReadyList+0x6c> @ imm = #6
    43c8: 687b         	ldr	r3, [r7, #4]
    43ca: 6adb         	ldr	r3, [r3, #44]
    43cc: 4a2c         	ldr	r2, [pc, #176]          @ 0x4480 <$d+0x10>
    43ce: 6013         	str	r3, [r2]
    43d0: 687b         	ldr	r3, [r7, #4]
    43d2: 6ada         	ldr	r2, [r3, #44]
    43d4: 492b         	ldr	r1, [pc, #172]          @ 0x4484 <$d+0x14>
    43d6: 4613         	mov	r3, r2
    43d8: 009b         	lsls	r3, r3, #2
    43da: 4413         	add	r3, r2
    43dc: 009b         	lsls	r3, r3, #2
    43de: 440b         	add	r3, r1
    43e0: 3304         	adds	r3, #4
    43e2: 681b         	ldr	r3, [r3]
    43e4: 60fb         	str	r3, [r7, #12]
    43e6: 687b         	ldr	r3, [r7, #4]
    43e8: 68fa         	ldr	r2, [r7, #12]
    43ea: 609a         	str	r2, [r3, #8]
    43ec: 68fb         	ldr	r3, [r7, #12]
    43ee: 689a         	ldr	r2, [r3, #8]
    43f0: 687b         	ldr	r3, [r7, #4]
    43f2: 60da         	str	r2, [r3, #12]
    43f4: 68fb         	ldr	r3, [r7, #12]
    43f6: 689b         	ldr	r3, [r3, #8]
    43f8: 687a         	ldr	r2, [r7, #4]
    43fa: 3204         	adds	r2, #4
    43fc: 605a         	str	r2, [r3, #4]
    43fe: 687b         	ldr	r3, [r7, #4]
    4400: 1d1a         	adds	r2, r3, #4
    4402: 68fb         	ldr	r3, [r7, #12]
    4404: 609a         	str	r2, [r3, #8]
    4406: 687b         	ldr	r3, [r7, #4]
    4408: 6ada         	ldr	r2, [r3, #44]
    440a: 4613         	mov	r3, r2
    440c: 009b         	lsls	r3, r3, #2
    440e: 4413         	add	r3, r2
    4410: 009b         	lsls	r3, r3, #2
    4412: 4a1c         	ldr	r2, [pc, #112]          @ 0x4484 <$d+0x14>
    4414: 441a         	add	r2, r3
    4416: 687b         	ldr	r3, [r7, #4]
    4418: 615a         	str	r2, [r3, #20]
    441a: 687b         	ldr	r3, [r7, #4]
    441c: 6ada         	ldr	r2, [r3, #44]
    441e: 4919         	ldr	r1, [pc, #100]          @ 0x4484 <$d+0x14>
    4420: 4613         	mov	r3, r2
    4422: 009b         	lsls	r3, r3, #2
    4424: 4413         	add	r3, r2
    4426: 009b         	lsls	r3, r3, #2
    4428: 440b         	add	r3, r1
    442a: 681b         	ldr	r3, [r3]
    442c: 1c59         	adds	r1, r3, #1
    442e: 4815         	ldr	r0, [pc, #84]           @ 0x4484 <$d+0x14>
    4430: 4613         	mov	r3, r2
    4432: 009b         	lsls	r3, r3, #2
    4434: 4413         	add	r3, r2
    4436: 009b         	lsls	r3, r3, #2
    4438: 4403         	add	r3, r0
    443a: 6019         	str	r1, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1090
;     taskEXIT_CRITICAL();
    443c: f000 ff86    	bl	0x534c <vPortExitCritical> @ imm = #3852
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1092
;     if( xSchedulerRunning != pdFALSE )
    4440: 4b0d         	ldr	r3, [pc, #52]           @ 0x4478 <$d+0x8>
    4442: 681b         	ldr	r3, [r3]
    4444: 2b00         	cmp	r3, #0
    4446: d00e         	beq	0x4466 <prvAddNewTaskToReadyList+0x102> @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1096
;         if( pxCurrentTCB->uxPriority < pxNewTCB->uxPriority )
    4448: 4b0a         	ldr	r3, [pc, #40]           @ 0x4474 <$d+0x4>
    444a: 681b         	ldr	r3, [r3]
    444c: 6ada         	ldr	r2, [r3, #44]
    444e: 687b         	ldr	r3, [r7, #4]
    4450: 6adb         	ldr	r3, [r3, #44]
    4452: 429a         	cmp	r2, r3
    4454: d207         	bhs	0x4466 <prvAddNewTaskToReadyList+0x102> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1098
;             taskYIELD_IF_USING_PREEMPTION();
    4456: 4b0c         	ldr	r3, [pc, #48]           @ 0x4488 <$d+0x18>
    4458: f04f 5280    	mov.w	r2, #268435456
    445c: 601a         	str	r2, [r3]
    445e: f3bf 8f4f    	dsb	sy
    4462: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1109
; }
    4466: bf00         	nop
    4468: 3710         	adds	r7, #16
    446a: 46bd         	mov	sp, r7
    446c: bd80         	pop	{r7, pc}
    446e: bf00         	nop

00004470 <$d>:
    4470: 30 08 00 20  	.word	0x20000830
    4474: 58 07 00 20  	.word	0x20000758
    4478: 3c 08 00 20  	.word	0x2000083c
    447c: 4c 08 00 20  	.word	0x2000084c
    4480: 38 08 00 20  	.word	0x20000838
    4484: 5c 07 00 20  	.word	0x2000075c
    4488: 04 ed 00 e0  	.word	0xe000ed04

0000448c <vTaskSuspend>:
; vTaskSuspend():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1676
;     {
    448c: b580         	push	{r7, lr}
    448e: b084         	sub	sp, #16
    4490: af00         	add	r7, sp, #0
    4492: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1679
;         taskENTER_CRITICAL();
    4494: f000 ff40    	bl	0x5318 <vPortEnterCritical> @ imm = #3712
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1683
;             pxTCB = prvGetTCBFromHandle( xTaskToSuspend );
    4498: 687b         	ldr	r3, [r7, #4]
    449a: 2b00         	cmp	r3, #0
    449c: d102         	bne	0x44a4 <vTaskSuspend+0x18> @ imm = #4
    449e: 4b2f         	ldr	r3, [pc, #188]          @ 0x455c <$d>
    44a0: 681b         	ldr	r3, [r3]
    44a2: e000         	b	0x44a6 <vTaskSuspend+0x1a> @ imm = #0
    44a4: 687b         	ldr	r3, [r7, #4]
    44a6: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1689
;             if( uxListRemove( &( pxTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
    44a8: 68bb         	ldr	r3, [r7, #8]
    44aa: 3304         	adds	r3, #4
    44ac: 4618         	mov	r0, r3
    44ae: f7ff fe91    	bl	0x41d4 <uxListRemove>   @ imm = #-734
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1699
;             if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
    44b2: 68bb         	ldr	r3, [r7, #8]
    44b4: 6a9b         	ldr	r3, [r3, #40]
    44b6: 2b00         	cmp	r3, #0
    44b8: d004         	beq	0x44c4 <vTaskSuspend+0x38> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1701
;                 ( void ) uxListRemove( &( pxTCB->xEventListItem ) );
    44ba: 68bb         	ldr	r3, [r7, #8]
    44bc: 3318         	adds	r3, #24
    44be: 4618         	mov	r0, r3
    44c0: f7ff fe88    	bl	0x41d4 <uxListRemove>   @ imm = #-752
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1708
;             vListInsertEnd( &xSuspendedTaskList, &( pxTCB->xStateListItem ) );
    44c4: 68bb         	ldr	r3, [r7, #8]
    44c6: 3304         	adds	r3, #4
    44c8: 4619         	mov	r1, r3
    44ca: 4825         	ldr	r0, [pc, #148]          @ 0x4560 <$d+0x4>
    44cc: f7ff fe25    	bl	0x411a <vListInsertEnd> @ imm = #-950
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1714
;                 for( x = 0; x < configTASK_NOTIFICATION_ARRAY_ENTRIES; x++ )
    44d0: 2300         	movs	r3, #0
    44d2: 60fb         	str	r3, [r7, #12]
    44d4: e010         	b	0x44f8 <vTaskSuspend+0x6c> @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1716
;                     if( pxTCB->ucNotifyState[ x ] == taskWAITING_NOTIFICATION )
    44d6: 68ba         	ldr	r2, [r7, #8]
    44d8: 68fb         	ldr	r3, [r7, #12]
    44da: 4413         	add	r3, r2
    44dc: 3364         	adds	r3, #100
    44de: 781b         	ldrb	r3, [r3]
    44e0: b2db         	uxtb	r3, r3
    44e2: 2b01         	cmp	r3, #1
    44e4: d105         	bne	0x44f2 <vTaskSuspend+0x66> @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1720
;                         pxTCB->ucNotifyState[ x ] = taskNOT_WAITING_NOTIFICATION;
    44e6: 68ba         	ldr	r2, [r7, #8]
    44e8: 68fb         	ldr	r3, [r7, #12]
    44ea: 4413         	add	r3, r2
    44ec: 3364         	adds	r3, #100
    44ee: 2200         	movs	r2, #0
    44f0: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1714
;                 for( x = 0; x < configTASK_NOTIFICATION_ARRAY_ENTRIES; x++ )
    44f2: 68fb         	ldr	r3, [r7, #12]
    44f4: 3301         	adds	r3, #1
    44f6: 60fb         	str	r3, [r7, #12]
    44f8: 68fb         	ldr	r3, [r7, #12]
    44fa: 2b02         	cmp	r3, #2
    44fc: ddeb         	ble	0x44d6 <vTaskSuspend+0x4a> @ imm = #-42
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1726
;         taskEXIT_CRITICAL();
    44fe: f000 ff25    	bl	0x534c <vPortExitCritical> @ imm = #3658
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1728
;         if( xSchedulerRunning != pdFALSE )
    4502: 4b18         	ldr	r3, [pc, #96]           @ 0x4564 <$d+0x8>
    4504: 681b         	ldr	r3, [r3]
    4506: 2b00         	cmp	r3, #0
    4508: d005         	beq	0x4516 <vTaskSuspend+0x8a> @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1732
;             taskENTER_CRITICAL();
    450a: f000 ff05    	bl	0x5318 <vPortEnterCritical> @ imm = #3594
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1734
;                 prvResetNextTaskUnblockTime();
    450e: f000 fb21    	bl	0x4b54 <prvResetNextTaskUnblockTime> @ imm = #1602
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1736
;             taskEXIT_CRITICAL();
    4512: f000 ff1b    	bl	0x534c <vPortExitCritical> @ imm = #3638
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1743
;         if( pxTCB == pxCurrentTCB )
    4516: 4b11         	ldr	r3, [pc, #68]           @ 0x455c <$d>
    4518: 681b         	ldr	r3, [r3]
    451a: 68ba         	ldr	r2, [r7, #8]
    451c: 429a         	cmp	r2, r3
    451e: d118         	bne	0x4552 <vTaskSuspend+0xc6> @ imm = #48
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1745
;             if( xSchedulerRunning != pdFALSE )
    4520: 4b10         	ldr	r3, [pc, #64]           @ 0x4564 <$d+0x8>
    4522: 681b         	ldr	r3, [r3]
    4524: 2b00         	cmp	r3, #0
    4526: d008         	beq	0x453a <vTaskSuspend+0xae> @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1749
;                 portYIELD_WITHIN_API();
    4528: 4b0f         	ldr	r3, [pc, #60]           @ 0x4568 <$d+0xc>
    452a: f04f 5280    	mov.w	r2, #268435456
    452e: 601a         	str	r2, [r3]
    4530: f3bf 8f4f    	dsb	sy
    4534: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1774
;     }
    4538: e00b         	b	0x4552 <vTaskSuspend+0xc6> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1756
;                 if( listCURRENT_LIST_LENGTH( &xSuspendedTaskList ) == uxCurrentNumberOfTasks ) /*lint !e931 Right has no side effect, just volatile. */
    453a: 4b09         	ldr	r3, [pc, #36]           @ 0x4560 <$d+0x4>
    453c: 681a         	ldr	r2, [r3]
    453e: 4b0b         	ldr	r3, [pc, #44]           @ 0x456c <$d+0x10>
    4540: 681b         	ldr	r3, [r3]
    4542: 429a         	cmp	r2, r3
    4544: d103         	bne	0x454e <vTaskSuspend+0xc2> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1762
;                     pxCurrentTCB = NULL;
    4546: 4b05         	ldr	r3, [pc, #20]           @ 0x455c <$d>
    4548: 2200         	movs	r2, #0
    454a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1774
;     }
    454c: e001         	b	0x4552 <vTaskSuspend+0xc6> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1766
;                     vTaskSwitchContext();
    454e: f000 f9fb    	bl	0x4948 <vTaskSwitchContext> @ imm = #1014
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1774
;     }
    4552: bf00         	nop
    4554: 3710         	adds	r7, #16
    4556: 46bd         	mov	sp, r7
    4558: bd80         	pop	{r7, pc}
    455a: bf00         	nop

0000455c <$d>:
    455c: 58 07 00 20  	.word	0x20000758
    4560: 1c 08 00 20  	.word	0x2000081c
    4564: 3c 08 00 20  	.word	0x2000083c
    4568: 04 ed 00 e0  	.word	0xe000ed04
    456c: 30 08 00 20  	.word	0x20000830

00004570 <prvTaskIsTaskSuspended>:
; prvTaskIsTaskSuspended():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1782
;     {
    4570: b480         	push	{r7}
    4572: b085         	sub	sp, #20
    4574: af00         	add	r7, sp, #0
    4576: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1783
;         BaseType_t xReturn = pdFALSE;
    4578: 2300         	movs	r3, #0
    457a: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1784
;         const TCB_t * const pxTCB = xTask;
    457c: 687b         	ldr	r3, [r7, #4]
    457e: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1793
;         if( listIS_CONTAINED_WITHIN( &xSuspendedTaskList, &( pxTCB->xStateListItem ) ) != pdFALSE )
    4580: 68bb         	ldr	r3, [r7, #8]
    4582: 695b         	ldr	r3, [r3, #20]
    4584: 4a0a         	ldr	r2, [pc, #40]           @ 0x45b0 <$d>
    4586: 4293         	cmp	r3, r2
    4588: d10a         	bne	0x45a0 <prvTaskIsTaskSuspended+0x30> @ imm = #20
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1796
;             if( listIS_CONTAINED_WITHIN( &xPendingReadyList, &( pxTCB->xEventListItem ) ) == pdFALSE )
    458a: 68bb         	ldr	r3, [r7, #8]
    458c: 6a9b         	ldr	r3, [r3, #40]
    458e: 4a09         	ldr	r2, [pc, #36]           @ 0x45b4 <$d+0x4>
    4590: 4293         	cmp	r3, r2
    4592: d005         	beq	0x45a0 <prvTaskIsTaskSuspended+0x30> @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1800
;                 if( listIS_CONTAINED_WITHIN( NULL, &( pxTCB->xEventListItem ) ) != pdFALSE ) /*lint !e961.  The cast is only redundant when NULL is used. */
    4594: 68bb         	ldr	r3, [r7, #8]
    4596: 6a9b         	ldr	r3, [r3, #40]
    4598: 2b00         	cmp	r3, #0
    459a: d101         	bne	0x45a0 <prvTaskIsTaskSuspended+0x30> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1802
;                     xReturn = pdTRUE;
    459c: 2301         	movs	r3, #1
    459e: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1819
;         return xReturn;
    45a0: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1820
;     } /*lint !e818 xTask cannot be a pointer to const because it is a typedef. */
    45a2: 4618         	mov	r0, r3
    45a4: 3714         	adds	r7, #20
    45a6: 46bd         	mov	sp, r7
    45a8: f85d 7b04    	ldr	r7, [sp], #4
    45ac: 4770         	bx	lr
    45ae: bf00         	nop

000045b0 <$d>:
    45b0: 1c 08 00 20  	.word	0x2000081c
    45b4: f0 07 00 20  	.word	0x200007f0

000045b8 <vTaskResume>:
; vTaskResume():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1828
;     {
    45b8: b580         	push	{r7, lr}
    45ba: b084         	sub	sp, #16
    45bc: af00         	add	r7, sp, #0
    45be: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1829
;         TCB_t * const pxTCB = xTaskToResume;
    45c0: 687b         	ldr	r3, [r7, #4]
    45c2: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1836
;         if( ( pxTCB != pxCurrentTCB ) && ( pxTCB != NULL ) )
    45c4: 4b34         	ldr	r3, [pc, #208]          @ 0x4698 <$d>
    45c6: 681b         	ldr	r3, [r3]
    45c8: 68fa         	ldr	r2, [r7, #12]
    45ca: 429a         	cmp	r2, r3
    45cc: d060         	beq	0x4690 <vTaskResume+0xd8> @ imm = #192
    45ce: 68fb         	ldr	r3, [r7, #12]
    45d0: 2b00         	cmp	r3, #0
    45d2: d05d         	beq	0x4690 <vTaskResume+0xd8> @ imm = #186
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1838
;             taskENTER_CRITICAL();
    45d4: f000 fea0    	bl	0x5318 <vPortEnterCritical> @ imm = #3392
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1840
;                 if( prvTaskIsTaskSuspended( pxTCB ) != pdFALSE )
    45d8: 68f8         	ldr	r0, [r7, #12]
    45da: f7ff ffc9    	bl	0x4570 <prvTaskIsTaskSuspended> @ imm = #-110
    45de: 4603         	mov	r3, r0
    45e0: 2b00         	cmp	r3, #0
    45e2: d053         	beq	0x468c <vTaskResume+0xd4> @ imm = #166
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1846
;                     ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
    45e4: 68fb         	ldr	r3, [r7, #12]
    45e6: 3304         	adds	r3, #4
    45e8: 4618         	mov	r0, r3
    45ea: f7ff fdf3    	bl	0x41d4 <uxListRemove>   @ imm = #-1050
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1847
;                     prvAddTaskToReadyList( pxTCB );
    45ee: 68fb         	ldr	r3, [r7, #12]
    45f0: 6ada         	ldr	r2, [r3, #44]
    45f2: 4b2a         	ldr	r3, [pc, #168]          @ 0x469c <$d+0x4>
    45f4: 681b         	ldr	r3, [r3]
    45f6: 429a         	cmp	r2, r3
    45f8: d903         	bls	0x4602 <vTaskResume+0x4a> @ imm = #6
    45fa: 68fb         	ldr	r3, [r7, #12]
    45fc: 6adb         	ldr	r3, [r3, #44]
    45fe: 4a27         	ldr	r2, [pc, #156]          @ 0x469c <$d+0x4>
    4600: 6013         	str	r3, [r2]
    4602: 68fb         	ldr	r3, [r7, #12]
    4604: 6ada         	ldr	r2, [r3, #44]
    4606: 4926         	ldr	r1, [pc, #152]          @ 0x46a0 <$d+0x8>
    4608: 4613         	mov	r3, r2
    460a: 009b         	lsls	r3, r3, #2
    460c: 4413         	add	r3, r2
    460e: 009b         	lsls	r3, r3, #2
    4610: 440b         	add	r3, r1
    4612: 3304         	adds	r3, #4
    4614: 681b         	ldr	r3, [r3]
    4616: 60bb         	str	r3, [r7, #8]
    4618: 68fb         	ldr	r3, [r7, #12]
    461a: 68ba         	ldr	r2, [r7, #8]
    461c: 609a         	str	r2, [r3, #8]
    461e: 68bb         	ldr	r3, [r7, #8]
    4620: 689a         	ldr	r2, [r3, #8]
    4622: 68fb         	ldr	r3, [r7, #12]
    4624: 60da         	str	r2, [r3, #12]
    4626: 68bb         	ldr	r3, [r7, #8]
    4628: 689b         	ldr	r3, [r3, #8]
    462a: 68fa         	ldr	r2, [r7, #12]
    462c: 3204         	adds	r2, #4
    462e: 605a         	str	r2, [r3, #4]
    4630: 68fb         	ldr	r3, [r7, #12]
    4632: 1d1a         	adds	r2, r3, #4
    4634: 68bb         	ldr	r3, [r7, #8]
    4636: 609a         	str	r2, [r3, #8]
    4638: 68fb         	ldr	r3, [r7, #12]
    463a: 6ada         	ldr	r2, [r3, #44]
    463c: 4613         	mov	r3, r2
    463e: 009b         	lsls	r3, r3, #2
    4640: 4413         	add	r3, r2
    4642: 009b         	lsls	r3, r3, #2
    4644: 4a16         	ldr	r2, [pc, #88]           @ 0x46a0 <$d+0x8>
    4646: 441a         	add	r2, r3
    4648: 68fb         	ldr	r3, [r7, #12]
    464a: 615a         	str	r2, [r3, #20]
    464c: 68fb         	ldr	r3, [r7, #12]
    464e: 6ada         	ldr	r2, [r3, #44]
    4650: 4913         	ldr	r1, [pc, #76]           @ 0x46a0 <$d+0x8>
    4652: 4613         	mov	r3, r2
    4654: 009b         	lsls	r3, r3, #2
    4656: 4413         	add	r3, r2
    4658: 009b         	lsls	r3, r3, #2
    465a: 440b         	add	r3, r1
    465c: 681b         	ldr	r3, [r3]
    465e: 1c59         	adds	r1, r3, #1
    4660: 480f         	ldr	r0, [pc, #60]           @ 0x46a0 <$d+0x8>
    4662: 4613         	mov	r3, r2
    4664: 009b         	lsls	r3, r3, #2
    4666: 4413         	add	r3, r2
    4668: 009b         	lsls	r3, r3, #2
    466a: 4403         	add	r3, r0
    466c: 6019         	str	r1, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1850
;                     if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    466e: 68fb         	ldr	r3, [r7, #12]
    4670: 6ada         	ldr	r2, [r3, #44]
    4672: 4b09         	ldr	r3, [pc, #36]           @ 0x4698 <$d>
    4674: 681b         	ldr	r3, [r3]
    4676: 6adb         	ldr	r3, [r3, #44]
    4678: 429a         	cmp	r2, r3
    467a: d907         	bls	0x468c <vTaskResume+0xd4> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1855
;                         taskYIELD_IF_USING_PREEMPTION();
    467c: 4b09         	ldr	r3, [pc, #36]           @ 0x46a4 <$d+0xc>
    467e: f04f 5280    	mov.w	r2, #268435456
    4682: 601a         	str	r2, [r3]
    4684: f3bf 8f4f    	dsb	sy
    4688: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1867
;             taskEXIT_CRITICAL();
    468c: f000 fe5e    	bl	0x534c <vPortExitCritical> @ imm = #3260
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1873
;     }
    4690: bf00         	nop
    4692: 3710         	adds	r7, #16
    4694: 46bd         	mov	sp, r7
    4696: bd80         	pop	{r7, pc}

00004698 <$d>:
    4698: 58 07 00 20  	.word	0x20000758
    469c: 38 08 00 20  	.word	0x20000838
    46a0: 5c 07 00 20  	.word	0x2000075c
    46a4: 04 ed 00 e0  	.word	0xe000ed04

000046a8 <vTaskStartScheduler>:
; vTaskStartScheduler():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1957
; {
    46a8: b580         	push	{r7, lr}
    46aa: b08a         	sub	sp, #40
    46ac: af04         	add	r7, sp, #16
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1963
;         StaticTask_t * pxIdleTaskTCBBuffer = NULL;
    46ae: 2300         	movs	r3, #0
    46b0: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1964
;         StackType_t * pxIdleTaskStackBuffer = NULL;
    46b2: 2300         	movs	r3, #0
    46b4: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1969
;         vApplicationGetIdleTaskMemory( &pxIdleTaskTCBBuffer, &pxIdleTaskStackBuffer, &ulIdleTaskStackSize );
    46b6: 1d3a         	adds	r2, r7, #4
    46b8: f107 0108    	add.w	r1, r7, #8
    46bc: f107 030c    	add.w	r3, r7, #12
    46c0: 4618         	mov	r0, r3
    46c2: f7fe fe93    	bl	0x33ec <vApplicationGetIdleTaskMemory> @ imm = #-4826
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1970
;         xIdleTaskHandle = xTaskCreateStatic( prvIdleTask,
    46c6: 6879         	ldr	r1, [r7, #4]
    46c8: 68bb         	ldr	r3, [r7, #8]
    46ca: 68fa         	ldr	r2, [r7, #12]
    46cc: 9202         	str	r2, [sp, #8]
    46ce: 9301         	str	r3, [sp, #4]
    46d0: 2300         	movs	r3, #0
    46d2: 9300         	str	r3, [sp]
    46d4: 2300         	movs	r3, #0
    46d6: 460a         	mov	r2, r1
    46d8: 4917         	ldr	r1, [pc, #92]           @ 0x4738 <$d>
    46da: 4818         	ldr	r0, [pc, #96]           @ 0x473c <$d+0x4>
    46dc: f7ff fda4    	bl	0x4228 <xTaskCreateStatic> @ imm = #-1208
    46e0: 4603         	mov	r3, r0
    46e2: 4a17         	ldr	r2, [pc, #92]           @ 0x4740 <$d+0x8>
    46e4: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1978
;         if( xIdleTaskHandle != NULL )
    46e6: 4b16         	ldr	r3, [pc, #88]           @ 0x4740 <$d+0x8>
    46e8: 681b         	ldr	r3, [r3]
    46ea: 2b00         	cmp	r3, #0
    46ec: d002         	beq	0x46f4 <vTaskStartScheduler+0x4c> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1980
;             xReturn = pdPASS;
    46ee: 2301         	movs	r3, #1
    46f0: 617b         	str	r3, [r7, #20]
    46f2: e001         	b	0x46f8 <vTaskStartScheduler+0x50> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:1984
;             xReturn = pdFAIL;
    46f4: 2300         	movs	r3, #0
    46f6: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2012
;     if( xReturn == pdPASS )
    46f8: 697b         	ldr	r3, [r7, #20]
    46fa: 2b01         	cmp	r3, #1
    46fc: d115         	bne	0x472a <vTaskStartScheduler+0x82> @ imm = #42
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:203
;         __asm volatile
    46fe: f04f 0340    	mov.w	r3, #64
    4702: f383 8811    	msr	basepri, r3
    4706: f3bf 8f6f    	isb	sy
    470a: f3bf 8f4f    	dsb	sy
    470e: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:211
;     }
    4710: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2038
;         xNextTaskUnblockTime = portMAX_DELAY;
    4712: 4b0c         	ldr	r3, [pc, #48]           @ 0x4744 <$d+0xc>
    4714: f04f 32ff    	mov.w	r2, #4294967295
    4718: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2039
;         xSchedulerRunning = pdTRUE;
    471a: 4b0b         	ldr	r3, [pc, #44]           @ 0x4748 <$d+0x10>
    471c: 2201         	movs	r2, #1
    471e: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2040
;         xTickCount = ( TickType_t ) configINITIAL_TICK_COUNT;
    4720: 4b0a         	ldr	r3, [pc, #40]           @ 0x474c <$d+0x14>
    4722: 2200         	movs	r2, #0
    4724: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2054
;         xPortStartScheduler();
    4726: f000 fdcd    	bl	0x52c4 <xPortStartScheduler> @ imm = #2970
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2077
;     ( void ) uxTopUsedPriority;
    472a: 4b09         	ldr	r3, [pc, #36]           @ 0x4750 <$d+0x18>
    472c: 681b         	ldr	r3, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2078
; }
    472e: bf00         	nop
    4730: 3718         	adds	r7, #24
    4732: 46bd         	mov	sp, r7
    4734: bd80         	pop	{r7, pc}
    4736: bf00         	nop

00004738 <$d>:
    4738: d8 80 00 00  	.word	0x000080d8
    473c: 31 4a 00 00  	.word	0x00004a31
    4740: 54 08 00 20  	.word	0x20000854
    4744: 50 08 00 20  	.word	0x20000850
    4748: 3c 08 00 20  	.word	0x2000083c
    474c: 34 08 00 20  	.word	0x20000834
    4750: d4 80 00 00  	.word	0x000080d4

00004754 <xTaskIncrementTick>:
; xTaskIncrementTick():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2723
; {
    4754: b580         	push	{r7, lr}
    4756: b088         	sub	sp, #32
    4758: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2726
;     BaseType_t xSwitchRequired = pdFALSE;
    475a: 2300         	movs	r3, #0
    475c: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2733
;     if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
    475e: 4b6f         	ldr	r3, [pc, #444]          @ 0x491c <$d>
    4760: 681b         	ldr	r3, [r3]
    4762: 2b00         	cmp	r3, #0
    4764: f040 80cf    	bne.w	0x4906 <xTaskIncrementTick+0x1b2> @ imm = #414
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2737
;         const TickType_t xConstTickCount = xTickCount + ( TickType_t ) 1;
    4768: 4b6d         	ldr	r3, [pc, #436]          @ 0x4920 <$d+0x4>
    476a: 681b         	ldr	r3, [r3]
    476c: 3301         	adds	r3, #1
    476e: 61bb         	str	r3, [r7, #24]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2741
;         xTickCount = xConstTickCount;
    4770: 4a6b         	ldr	r2, [pc, #428]          @ 0x4920 <$d+0x4>
    4772: 69bb         	ldr	r3, [r7, #24]
    4774: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2743
;         if( xConstTickCount == ( TickType_t ) 0U ) /*lint !e774 'if' does not always evaluate to false as it is looking for an overflow. */
    4776: 69bb         	ldr	r3, [r7, #24]
    4778: 2b00         	cmp	r3, #0
    477a: d110         	bne	0x479e <xTaskIncrementTick+0x4a> @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2745
;             taskSWITCH_DELAYED_LISTS();
    477c: 4b69         	ldr	r3, [pc, #420]          @ 0x4924 <$d+0x8>
    477e: 681b         	ldr	r3, [r3]
    4780: 617b         	str	r3, [r7, #20]
    4782: 4b69         	ldr	r3, [pc, #420]          @ 0x4928 <$d+0xc>
    4784: 681b         	ldr	r3, [r3]
    4786: 4a67         	ldr	r2, [pc, #412]          @ 0x4924 <$d+0x8>
    4788: 6013         	str	r3, [r2]
    478a: 4a67         	ldr	r2, [pc, #412]          @ 0x4928 <$d+0xc>
    478c: 697b         	ldr	r3, [r7, #20]
    478e: 6013         	str	r3, [r2]
    4790: 4b66         	ldr	r3, [pc, #408]          @ 0x492c <$d+0x10>
    4792: 681b         	ldr	r3, [r3]
    4794: 3301         	adds	r3, #1
    4796: 4a65         	ldr	r2, [pc, #404]          @ 0x492c <$d+0x10>
    4798: 6013         	str	r3, [r2]
    479a: f000 f9db    	bl	0x4b54 <prvResetNextTaskUnblockTime> @ imm = #950
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2756
;         if( xConstTickCount >= xNextTaskUnblockTime )
    479e: 4b64         	ldr	r3, [pc, #400]          @ 0x4930 <$d+0x14>
    47a0: 681b         	ldr	r3, [r3]
    47a2: 69ba         	ldr	r2, [r7, #24]
    47a4: 429a         	cmp	r2, r3
    47a6: f0c0 80a7    	blo.w	0x48f8 <xTaskIncrementTick+0x1a4> @ imm = #334
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2760
;                 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
    47aa: 4b5e         	ldr	r3, [pc, #376]          @ 0x4924 <$d+0x8>
    47ac: 681b         	ldr	r3, [r3]
    47ae: 681b         	ldr	r3, [r3]
    47b0: 2b00         	cmp	r3, #0
    47b2: d104         	bne	0x47be <xTaskIncrementTick+0x6a> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2767
;                     xNextTaskUnblockTime = portMAX_DELAY; /*lint !e961 MISRA exception as the casts are only redundant for some ports. */
    47b4: 4b5e         	ldr	r3, [pc, #376]          @ 0x4930 <$d+0x14>
    47b6: f04f 32ff    	mov.w	r2, #4294967295
    47ba: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2768
;                     break;
    47bc: e09c         	b	0x48f8 <xTaskIncrementTick+0x1a4> @ imm = #312
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2776
;                     pxTCB = listGET_OWNER_OF_HEAD_ENTRY( pxDelayedTaskList ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
    47be: 4b59         	ldr	r3, [pc, #356]          @ 0x4924 <$d+0x8>
    47c0: 681b         	ldr	r3, [r3]
    47c2: 68db         	ldr	r3, [r3, #12]
    47c4: 68db         	ldr	r3, [r3, #12]
    47c6: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2777
;                     xItemValue = listGET_LIST_ITEM_VALUE( &( pxTCB->xStateListItem ) );
    47c8: 693b         	ldr	r3, [r7, #16]
    47ca: 685b         	ldr	r3, [r3, #4]
    47cc: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2779
;                     if( xConstTickCount < xItemValue )
    47ce: 69ba         	ldr	r2, [r7, #24]
    47d0: 68fb         	ldr	r3, [r7, #12]
    47d2: 429a         	cmp	r2, r3
    47d4: d203         	bhs	0x47de <xTaskIncrementTick+0x8a> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2786
;                         xNextTaskUnblockTime = xItemValue;
    47d6: 4a56         	ldr	r2, [pc, #344]          @ 0x4930 <$d+0x14>
    47d8: 68fb         	ldr	r3, [r7, #12]
    47da: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2787
;                         break; /*lint !e9011 Code structure here is deemed easier to understand with multiple breaks. */
    47dc: e08c         	b	0x48f8 <xTaskIncrementTick+0x1a4> @ imm = #280
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2795
;                     listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
    47de: 693b         	ldr	r3, [r7, #16]
    47e0: 695b         	ldr	r3, [r3, #20]
    47e2: 60bb         	str	r3, [r7, #8]
    47e4: 693b         	ldr	r3, [r7, #16]
    47e6: 689b         	ldr	r3, [r3, #8]
    47e8: 693a         	ldr	r2, [r7, #16]
    47ea: 68d2         	ldr	r2, [r2, #12]
    47ec: 609a         	str	r2, [r3, #8]
    47ee: 693b         	ldr	r3, [r7, #16]
    47f0: 68db         	ldr	r3, [r3, #12]
    47f2: 693a         	ldr	r2, [r7, #16]
    47f4: 6892         	ldr	r2, [r2, #8]
    47f6: 605a         	str	r2, [r3, #4]
    47f8: 68bb         	ldr	r3, [r7, #8]
    47fa: 685a         	ldr	r2, [r3, #4]
    47fc: 693b         	ldr	r3, [r7, #16]
    47fe: 3304         	adds	r3, #4
    4800: 429a         	cmp	r2, r3
    4802: d103         	bne	0x480c <xTaskIncrementTick+0xb8> @ imm = #6
    4804: 693b         	ldr	r3, [r7, #16]
    4806: 68da         	ldr	r2, [r3, #12]
    4808: 68bb         	ldr	r3, [r7, #8]
    480a: 605a         	str	r2, [r3, #4]
    480c: 693b         	ldr	r3, [r7, #16]
    480e: 2200         	movs	r2, #0
    4810: 615a         	str	r2, [r3, #20]
    4812: 68bb         	ldr	r3, [r7, #8]
    4814: 681b         	ldr	r3, [r3]
    4816: 1e5a         	subs	r2, r3, #1
    4818: 68bb         	ldr	r3, [r7, #8]
    481a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2799
;                     if( listLIST_ITEM_CONTAINER( &( pxTCB->xEventListItem ) ) != NULL )
    481c: 693b         	ldr	r3, [r7, #16]
    481e: 6a9b         	ldr	r3, [r3, #40]
    4820: 2b00         	cmp	r3, #0
    4822: d01e         	beq	0x4862 <xTaskIncrementTick+0x10e> @ imm = #60
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2801
;                         listREMOVE_ITEM( &( pxTCB->xEventListItem ) );
    4824: 693b         	ldr	r3, [r7, #16]
    4826: 6a9b         	ldr	r3, [r3, #40]
    4828: 607b         	str	r3, [r7, #4]
    482a: 693b         	ldr	r3, [r7, #16]
    482c: 69db         	ldr	r3, [r3, #28]
    482e: 693a         	ldr	r2, [r7, #16]
    4830: 6a12         	ldr	r2, [r2, #32]
    4832: 609a         	str	r2, [r3, #8]
    4834: 693b         	ldr	r3, [r7, #16]
    4836: 6a1b         	ldr	r3, [r3, #32]
    4838: 693a         	ldr	r2, [r7, #16]
    483a: 69d2         	ldr	r2, [r2, #28]
    483c: 605a         	str	r2, [r3, #4]
    483e: 687b         	ldr	r3, [r7, #4]
    4840: 685a         	ldr	r2, [r3, #4]
    4842: 693b         	ldr	r3, [r7, #16]
    4844: 3318         	adds	r3, #24
    4846: 429a         	cmp	r2, r3
    4848: d103         	bne	0x4852 <xTaskIncrementTick+0xfe> @ imm = #6
    484a: 693b         	ldr	r3, [r7, #16]
    484c: 6a1a         	ldr	r2, [r3, #32]
    484e: 687b         	ldr	r3, [r7, #4]
    4850: 605a         	str	r2, [r3, #4]
    4852: 693b         	ldr	r3, [r7, #16]
    4854: 2200         	movs	r2, #0
    4856: 629a         	str	r2, [r3, #40]
    4858: 687b         	ldr	r3, [r7, #4]
    485a: 681b         	ldr	r3, [r3]
    485c: 1e5a         	subs	r2, r3, #1
    485e: 687b         	ldr	r3, [r7, #4]
    4860: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2810
;                     prvAddTaskToReadyList( pxTCB );
    4862: 693b         	ldr	r3, [r7, #16]
    4864: 6ada         	ldr	r2, [r3, #44]
    4866: 4b33         	ldr	r3, [pc, #204]          @ 0x4934 <$d+0x18>
    4868: 681b         	ldr	r3, [r3]
    486a: 429a         	cmp	r2, r3
    486c: d903         	bls	0x4876 <xTaskIncrementTick+0x122> @ imm = #6
    486e: 693b         	ldr	r3, [r7, #16]
    4870: 6adb         	ldr	r3, [r3, #44]
    4872: 4a30         	ldr	r2, [pc, #192]          @ 0x4934 <$d+0x18>
    4874: 6013         	str	r3, [r2]
    4876: 693b         	ldr	r3, [r7, #16]
    4878: 6ada         	ldr	r2, [r3, #44]
    487a: 492f         	ldr	r1, [pc, #188]          @ 0x4938 <$d+0x1c>
    487c: 4613         	mov	r3, r2
    487e: 009b         	lsls	r3, r3, #2
    4880: 4413         	add	r3, r2
    4882: 009b         	lsls	r3, r3, #2
    4884: 440b         	add	r3, r1
    4886: 3304         	adds	r3, #4
    4888: 681b         	ldr	r3, [r3]
    488a: 603b         	str	r3, [r7]
    488c: 693b         	ldr	r3, [r7, #16]
    488e: 683a         	ldr	r2, [r7]
    4890: 609a         	str	r2, [r3, #8]
    4892: 683b         	ldr	r3, [r7]
    4894: 689a         	ldr	r2, [r3, #8]
    4896: 693b         	ldr	r3, [r7, #16]
    4898: 60da         	str	r2, [r3, #12]
    489a: 683b         	ldr	r3, [r7]
    489c: 689b         	ldr	r3, [r3, #8]
    489e: 693a         	ldr	r2, [r7, #16]
    48a0: 3204         	adds	r2, #4
    48a2: 605a         	str	r2, [r3, #4]
    48a4: 693b         	ldr	r3, [r7, #16]
    48a6: 1d1a         	adds	r2, r3, #4
    48a8: 683b         	ldr	r3, [r7]
    48aa: 609a         	str	r2, [r3, #8]
    48ac: 693b         	ldr	r3, [r7, #16]
    48ae: 6ada         	ldr	r2, [r3, #44]
    48b0: 4613         	mov	r3, r2
    48b2: 009b         	lsls	r3, r3, #2
    48b4: 4413         	add	r3, r2
    48b6: 009b         	lsls	r3, r3, #2
    48b8: 4a1f         	ldr	r2, [pc, #124]          @ 0x4938 <$d+0x1c>
    48ba: 441a         	add	r2, r3
    48bc: 693b         	ldr	r3, [r7, #16]
    48be: 615a         	str	r2, [r3, #20]
    48c0: 693b         	ldr	r3, [r7, #16]
    48c2: 6ada         	ldr	r2, [r3, #44]
    48c4: 491c         	ldr	r1, [pc, #112]          @ 0x4938 <$d+0x1c>
    48c6: 4613         	mov	r3, r2
    48c8: 009b         	lsls	r3, r3, #2
    48ca: 4413         	add	r3, r2
    48cc: 009b         	lsls	r3, r3, #2
    48ce: 440b         	add	r3, r1
    48d0: 681b         	ldr	r3, [r3]
    48d2: 1c59         	adds	r1, r3, #1
    48d4: 4818         	ldr	r0, [pc, #96]           @ 0x4938 <$d+0x1c>
    48d6: 4613         	mov	r3, r2
    48d8: 009b         	lsls	r3, r3, #2
    48da: 4413         	add	r3, r2
    48dc: 009b         	lsls	r3, r3, #2
    48de: 4403         	add	r3, r0
    48e0: 6019         	str	r1, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2824
;                         if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    48e2: 693b         	ldr	r3, [r7, #16]
    48e4: 6ada         	ldr	r2, [r3, #44]
    48e6: 4b15         	ldr	r3, [pc, #84]           @ 0x493c <$d+0x20>
    48e8: 681b         	ldr	r3, [r3]
    48ea: 6adb         	ldr	r3, [r3, #44]
    48ec: 429a         	cmp	r2, r3
    48ee: f67f af5c    	bls.w	0x47aa <xTaskIncrementTick+0x56> @ imm = #-328
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2826
;                             xSwitchRequired = pdTRUE;
    48f2: 2301         	movs	r3, #1
    48f4: 61fb         	str	r3, [r7, #28]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2760
;                 if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
    48f6: e758         	b	0x47aa <xTaskIncrementTick+0x56> @ imm = #-336
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2871
;             if( xYieldPending != pdFALSE )
    48f8: 4b11         	ldr	r3, [pc, #68]           @ 0x4940 <$d+0x24>
    48fa: 681b         	ldr	r3, [r3]
    48fc: 2b00         	cmp	r3, #0
    48fe: d007         	beq	0x4910 <xTaskIncrementTick+0x1bc> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2873
;                 xSwitchRequired = pdTRUE;
    4900: 2301         	movs	r3, #1
    4902: 61fb         	str	r3, [r7, #28]
    4904: e004         	b	0x4910 <xTaskIncrementTick+0x1bc> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2884
;         ++xPendedTicks;
    4906: 4b0f         	ldr	r3, [pc, #60]           @ 0x4944 <$d+0x28>
    4908: 681b         	ldr	r3, [r3]
    490a: 3301         	adds	r3, #1
    490c: 4a0d         	ldr	r2, [pc, #52]           @ 0x4944 <$d+0x28>
    490e: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2895
;     return xSwitchRequired;
    4910: 69fb         	ldr	r3, [r7, #28]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:2896
; }
    4912: 4618         	mov	r0, r3
    4914: 3720         	adds	r7, #32
    4916: 46bd         	mov	sp, r7
    4918: bd80         	pop	{r7, pc}
    491a: bf00         	nop

0000491c <$d>:
    491c: 58 08 00 20  	.word	0x20000858
    4920: 34 08 00 20  	.word	0x20000834
    4924: e8 07 00 20  	.word	0x200007e8
    4928: ec 07 00 20  	.word	0x200007ec
    492c: 48 08 00 20  	.word	0x20000848
    4930: 50 08 00 20  	.word	0x20000850
    4934: 38 08 00 20  	.word	0x20000838
    4938: 5c 07 00 20  	.word	0x2000075c
    493c: 58 07 00 20  	.word	0x20000758
    4940: 44 08 00 20  	.word	0x20000844
    4944: 40 08 00 20  	.word	0x20000840

00004948 <vTaskSwitchContext>:
; vTaskSwitchContext():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3012
; {
    4948: b580         	push	{r7, lr}
    494a: b084         	sub	sp, #16
    494c: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3013
;     if( uxSchedulerSuspended != ( UBaseType_t ) pdFALSE )
    494e: 4b33         	ldr	r3, [pc, #204]          @ 0x4a1c <$d>
    4950: 681b         	ldr	r3, [r3]
    4952: 2b00         	cmp	r3, #0
    4954: d003         	beq	0x495e <vTaskSwitchContext+0x16> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3017
;         xYieldPending = pdTRUE;
    4956: 4b32         	ldr	r3, [pc, #200]          @ 0x4a20 <$d+0x4>
    4958: 2201         	movs	r2, #1
    495a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3082
; }
    495c: e059         	b	0x4a12 <vTaskSwitchContext+0xca> @ imm = #178
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3021
;         xYieldPending = pdFALSE;
    495e: 4b30         	ldr	r3, [pc, #192]          @ 0x4a20 <$d+0x4>
    4960: 2200         	movs	r2, #0
    4962: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3053
;         taskCHECK_FOR_STACK_OVERFLOW();
    4964: 4b2f         	ldr	r3, [pc, #188]          @ 0x4a24 <$d+0x8>
    4966: 681b         	ldr	r3, [r3]
    4968: 6b1b         	ldr	r3, [r3, #48]
    496a: 60bb         	str	r3, [r7, #8]
    496c: f04f 33a5    	mov.w	r3, #2779096485
    4970: 607b         	str	r3, [r7, #4]
    4972: 68bb         	ldr	r3, [r7, #8]
    4974: 681b         	ldr	r3, [r3]
    4976: 687a         	ldr	r2, [r7, #4]
    4978: 429a         	cmp	r2, r3
    497a: d111         	bne	0x49a0 <vTaskSwitchContext+0x58> @ imm = #34
    497c: 68bb         	ldr	r3, [r7, #8]
    497e: 3304         	adds	r3, #4
    4980: 681b         	ldr	r3, [r3]
    4982: 687a         	ldr	r2, [r7, #4]
    4984: 429a         	cmp	r2, r3
    4986: d10b         	bne	0x49a0 <vTaskSwitchContext+0x58> @ imm = #22
    4988: 68bb         	ldr	r3, [r7, #8]
    498a: 3308         	adds	r3, #8
    498c: 681b         	ldr	r3, [r3]
    498e: 687a         	ldr	r2, [r7, #4]
    4990: 429a         	cmp	r2, r3
    4992: d105         	bne	0x49a0 <vTaskSwitchContext+0x58> @ imm = #10
    4994: 68bb         	ldr	r3, [r7, #8]
    4996: 330c         	adds	r3, #12
    4998: 681b         	ldr	r3, [r3]
    499a: 687a         	ldr	r2, [r7, #4]
    499c: 429a         	cmp	r2, r3
    499e: d008         	beq	0x49b2 <vTaskSwitchContext+0x6a> @ imm = #16
    49a0: 4b20         	ldr	r3, [pc, #128]          @ 0x4a24 <$d+0x8>
    49a2: 681a         	ldr	r2, [r3]
    49a4: 4b1f         	ldr	r3, [pc, #124]          @ 0x4a24 <$d+0x8>
    49a6: 681b         	ldr	r3, [r3]
    49a8: 3334         	adds	r3, #52
    49aa: 4619         	mov	r1, r3
    49ac: 4610         	mov	r0, r2
    49ae: f7fe fd37    	bl	0x3420 <vApplicationStackOverflowHook> @ imm = #-5522
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3064
;         taskSELECT_HIGHEST_PRIORITY_TASK(); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
    49b2: 4b1d         	ldr	r3, [pc, #116]          @ 0x4a28 <$d+0xc>
    49b4: 681b         	ldr	r3, [r3]
    49b6: 60fb         	str	r3, [r7, #12]
    49b8: e002         	b	0x49c0 <vTaskSwitchContext+0x78> @ imm = #4
    49ba: 68fb         	ldr	r3, [r7, #12]
    49bc: 3b01         	subs	r3, #1
    49be: 60fb         	str	r3, [r7, #12]
    49c0: 491a         	ldr	r1, [pc, #104]          @ 0x4a2c <$d+0x10>
    49c2: 68fa         	ldr	r2, [r7, #12]
    49c4: 4613         	mov	r3, r2
    49c6: 009b         	lsls	r3, r3, #2
    49c8: 4413         	add	r3, r2
    49ca: 009b         	lsls	r3, r3, #2
    49cc: 440b         	add	r3, r1
    49ce: 681b         	ldr	r3, [r3]
    49d0: 2b00         	cmp	r3, #0
    49d2: d0f2         	beq	0x49ba <vTaskSwitchContext+0x72> @ imm = #-28
    49d4: 68fa         	ldr	r2, [r7, #12]
    49d6: 4613         	mov	r3, r2
    49d8: 009b         	lsls	r3, r3, #2
    49da: 4413         	add	r3, r2
    49dc: 009b         	lsls	r3, r3, #2
    49de: 4a13         	ldr	r2, [pc, #76]           @ 0x4a2c <$d+0x10>
    49e0: 4413         	add	r3, r2
    49e2: 603b         	str	r3, [r7]
    49e4: 683b         	ldr	r3, [r7]
    49e6: 685b         	ldr	r3, [r3, #4]
    49e8: 685a         	ldr	r2, [r3, #4]
    49ea: 683b         	ldr	r3, [r7]
    49ec: 605a         	str	r2, [r3, #4]
    49ee: 683b         	ldr	r3, [r7]
    49f0: 685a         	ldr	r2, [r3, #4]
    49f2: 683b         	ldr	r3, [r7]
    49f4: 3308         	adds	r3, #8
    49f6: 429a         	cmp	r2, r3
    49f8: d103         	bne	0x4a02 <vTaskSwitchContext+0xba> @ imm = #6
    49fa: 683b         	ldr	r3, [r7]
    49fc: 68da         	ldr	r2, [r3, #12]
    49fe: 683b         	ldr	r3, [r7]
    4a00: 605a         	str	r2, [r3, #4]
    4a02: 683b         	ldr	r3, [r7]
    4a04: 685b         	ldr	r3, [r3, #4]
    4a06: 68db         	ldr	r3, [r3, #12]
    4a08: 4a06         	ldr	r2, [pc, #24]           @ 0x4a24 <$d+0x8>
    4a0a: 6013         	str	r3, [r2]
    4a0c: 4a06         	ldr	r2, [pc, #24]           @ 0x4a28 <$d+0xc>
    4a0e: 68fb         	ldr	r3, [r7, #12]
    4a10: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3082
; }
    4a12: bf00         	nop
    4a14: 3710         	adds	r7, #16
    4a16: 46bd         	mov	sp, r7
    4a18: bd80         	pop	{r7, pc}
    4a1a: bf00         	nop

00004a1c <$d>:
    4a1c: 58 08 00 20  	.word	0x20000858
    4a20: 44 08 00 20  	.word	0x20000844
    4a24: 58 07 00 20  	.word	0x20000758
    4a28: 38 08 00 20  	.word	0x20000838
    4a2c: 5c 07 00 20  	.word	0x2000075c

00004a30 <prvIdleTask>:
; prvIdleTask():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3430
; {
    4a30: b580         	push	{r7, lr}
    4a32: b082         	sub	sp, #8
    4a34: af00         	add	r7, sp, #0
    4a36: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3446
;         prvCheckTasksWaitingTermination();
    4a38: f000 f854    	bl	0x4ae4 <prvCheckTasksWaitingTermination> @ imm = #168
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3469
;             if( listCURRENT_LIST_LENGTH( &( pxReadyTasksLists[ tskIDLE_PRIORITY ] ) ) > ( UBaseType_t ) 1 )
    4a3c: 4b07         	ldr	r3, [pc, #28]           @ 0x4a5c <$d>
    4a3e: 681b         	ldr	r3, [r3]
    4a40: 2b01         	cmp	r3, #1
    4a42: d907         	bls	0x4a54 <prvIdleTask+0x24> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3471
;                 taskYIELD();
    4a44: 4b06         	ldr	r3, [pc, #24]           @ 0x4a60 <$d+0x4>
    4a46: f04f 5280    	mov.w	r2, #268435456
    4a4a: 601a         	str	r2, [r3]
    4a4c: f3bf 8f4f    	dsb	sy
    4a50: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3483
;             vApplicationIdleHook();
    4a54: f7fe fcbf    	bl	0x33d6 <vApplicationIdleHook> @ imm = #-5762
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3446
;         prvCheckTasksWaitingTermination();
    4a58: e7ee         	b	0x4a38 <prvIdleTask+0x8> @ imm = #-36
    4a5a: bf00         	nop

00004a5c <$d>:
    4a5c: 5c 07 00 20  	.word	0x2000075c
    4a60: 04 ed 00 e0  	.word	0xe000ed04

00004a64 <prvInitialiseTaskLists>:
; prvInitialiseTaskLists():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3654
; {
    4a64: b580         	push	{r7, lr}
    4a66: b082         	sub	sp, #8
    4a68: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3657
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
    4a6a: 2300         	movs	r3, #0
    4a6c: 607b         	str	r3, [r7, #4]
    4a6e: e00c         	b	0x4a8a <prvInitialiseTaskLists+0x26> @ imm = #24
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3659
;         vListInitialise( &( pxReadyTasksLists[ uxPriority ] ) );
    4a70: 687a         	ldr	r2, [r7, #4]
    4a72: 4613         	mov	r3, r2
    4a74: 009b         	lsls	r3, r3, #2
    4a76: 4413         	add	r3, r2
    4a78: 009b         	lsls	r3, r3, #2
    4a7a: 4a12         	ldr	r2, [pc, #72]           @ 0x4ac4 <$d>
    4a7c: 4413         	add	r3, r2
    4a7e: 4618         	mov	r0, r3
    4a80: f7ff fb1e    	bl	0x40c0 <vListInitialise> @ imm = #-2500
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3657
;     for( uxPriority = ( UBaseType_t ) 0U; uxPriority < ( UBaseType_t ) configMAX_PRIORITIES; uxPriority++ )
    4a84: 687b         	ldr	r3, [r7, #4]
    4a86: 3301         	adds	r3, #1
    4a88: 607b         	str	r3, [r7, #4]
    4a8a: 687b         	ldr	r3, [r7, #4]
    4a8c: 2b04         	cmp	r3, #4
    4a8e: d9ef         	bls	0x4a70 <prvInitialiseTaskLists+0xc> @ imm = #-34
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3662
;     vListInitialise( &xDelayedTaskList1 );
    4a90: 480d         	ldr	r0, [pc, #52]           @ 0x4ac8 <$d+0x4>
    4a92: f7ff fb15    	bl	0x40c0 <vListInitialise> @ imm = #-2518
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3663
;     vListInitialise( &xDelayedTaskList2 );
    4a96: 480d         	ldr	r0, [pc, #52]           @ 0x4acc <$d+0x8>
    4a98: f7ff fb12    	bl	0x40c0 <vListInitialise> @ imm = #-2524
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3664
;     vListInitialise( &xPendingReadyList );
    4a9c: 480c         	ldr	r0, [pc, #48]           @ 0x4ad0 <$d+0xc>
    4a9e: f7ff fb0f    	bl	0x40c0 <vListInitialise> @ imm = #-2530
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3668
;         vListInitialise( &xTasksWaitingTermination );
    4aa2: 480c         	ldr	r0, [pc, #48]           @ 0x4ad4 <$d+0x10>
    4aa4: f7ff fb0c    	bl	0x40c0 <vListInitialise> @ imm = #-2536
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3674
;         vListInitialise( &xSuspendedTaskList );
    4aa8: 480b         	ldr	r0, [pc, #44]           @ 0x4ad8 <$d+0x14>
    4aaa: f7ff fb09    	bl	0x40c0 <vListInitialise> @ imm = #-2542
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3680
;     pxDelayedTaskList = &xDelayedTaskList1;
    4aae: 4b0b         	ldr	r3, [pc, #44]           @ 0x4adc <$d+0x18>
    4ab0: 4a05         	ldr	r2, [pc, #20]           @ 0x4ac8 <$d+0x4>
    4ab2: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3681
;     pxOverflowDelayedTaskList = &xDelayedTaskList2;
    4ab4: 4b0a         	ldr	r3, [pc, #40]           @ 0x4ae0 <$d+0x1c>
    4ab6: 4a05         	ldr	r2, [pc, #20]           @ 0x4acc <$d+0x8>
    4ab8: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3682
; }
    4aba: bf00         	nop
    4abc: 3708         	adds	r7, #8
    4abe: 46bd         	mov	sp, r7
    4ac0: bd80         	pop	{r7, pc}
    4ac2: bf00         	nop

00004ac4 <$d>:
    4ac4: 5c 07 00 20  	.word	0x2000075c
    4ac8: c0 07 00 20  	.word	0x200007c0
    4acc: d4 07 00 20  	.word	0x200007d4
    4ad0: f0 07 00 20  	.word	0x200007f0
    4ad4: 04 08 00 20  	.word	0x20000804
    4ad8: 1c 08 00 20  	.word	0x2000081c
    4adc: e8 07 00 20  	.word	0x200007e8
    4ae0: ec 07 00 20  	.word	0x200007ec

00004ae4 <prvCheckTasksWaitingTermination>:
; prvCheckTasksWaitingTermination():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3686
; {
    4ae4: b580         	push	{r7, lr}
    4ae6: b082         	sub	sp, #8
    4ae8: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3695
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
    4aea: e019         	b	0x4b20 <prvCheckTasksWaitingTermination+0x3c> @ imm = #50
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3697
;             taskENTER_CRITICAL();
    4aec: f000 fc14    	bl	0x5318 <vPortEnterCritical> @ imm = #2088
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3699
;                 pxTCB = listGET_OWNER_OF_HEAD_ENTRY( ( &xTasksWaitingTermination ) ); /*lint !e9079 void * is used as this macro is used with timers too.  Alignment is known to be fine as the type of the pointer stored and retrieved is the same. */
    4af0: 4b10         	ldr	r3, [pc, #64]           @ 0x4b34 <$d>
    4af2: 68db         	ldr	r3, [r3, #12]
    4af4: 68db         	ldr	r3, [r3, #12]
    4af6: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3700
;                 ( void ) uxListRemove( &( pxTCB->xStateListItem ) );
    4af8: 687b         	ldr	r3, [r7, #4]
    4afa: 3304         	adds	r3, #4
    4afc: 4618         	mov	r0, r3
    4afe: f7ff fb69    	bl	0x41d4 <uxListRemove>   @ imm = #-2350
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3701
;                 --uxCurrentNumberOfTasks;
    4b02: 4b0d         	ldr	r3, [pc, #52]           @ 0x4b38 <$d+0x4>
    4b04: 681b         	ldr	r3, [r3]
    4b06: 3b01         	subs	r3, #1
    4b08: 4a0b         	ldr	r2, [pc, #44]           @ 0x4b38 <$d+0x4>
    4b0a: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3702
;                 --uxDeletedTasksWaitingCleanUp;
    4b0c: 4b0b         	ldr	r3, [pc, #44]           @ 0x4b3c <$d+0x8>
    4b0e: 681b         	ldr	r3, [r3]
    4b10: 3b01         	subs	r3, #1
    4b12: 4a0a         	ldr	r2, [pc, #40]           @ 0x4b3c <$d+0x8>
    4b14: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3704
;             taskEXIT_CRITICAL();
    4b16: f000 fc19    	bl	0x534c <vPortExitCritical> @ imm = #2098
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3706
;             prvDeleteTCB( pxTCB );
    4b1a: 6878         	ldr	r0, [r7, #4]
    4b1c: f000 f810    	bl	0x4b40 <prvDeleteTCB>   @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3695
;         while( uxDeletedTasksWaitingCleanUp > ( UBaseType_t ) 0U )
    4b20: 4b06         	ldr	r3, [pc, #24]           @ 0x4b3c <$d+0x8>
    4b22: 681b         	ldr	r3, [r3]
    4b24: 2b00         	cmp	r3, #0
    4b26: d1e1         	bne	0x4aec <prvCheckTasksWaitingTermination+0x8> @ imm = #-62
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3710
; }
    4b28: bf00         	nop
    4b2a: bf00         	nop
    4b2c: 3708         	adds	r7, #8
    4b2e: 46bd         	mov	sp, r7
    4b30: bd80         	pop	{r7, pc}
    4b32: bf00         	nop

00004b34 <$d>:
    4b34: 04 08 00 20  	.word	0x20000804
    4b38: 30 08 00 20  	.word	0x20000830
    4b3c: 18 08 00 20  	.word	0x20000818

00004b40 <prvDeleteTCB>:
; prvDeleteTCB():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3943
;     {
    4b40: b480         	push	{r7}
    4b42: b083         	sub	sp, #12
    4b44: af00         	add	r7, sp, #0
    4b46: 6078         	str	r0, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3990
;     }
    4b48: bf00         	nop
    4b4a: 370c         	adds	r7, #12
    4b4c: 46bd         	mov	sp, r7
    4b4e: f85d 7b04    	ldr	r7, [sp], #4
    4b52: 4770         	bx	lr

00004b54 <prvResetNextTaskUnblockTime>:
; prvResetNextTaskUnblockTime():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3996
; {
    4b54: b480         	push	{r7}
    4b56: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:3997
;     if( listLIST_IS_EMPTY( pxDelayedTaskList ) != pdFALSE )
    4b58: 4b0a         	ldr	r3, [pc, #40]           @ 0x4b84 <$d>
    4b5a: 681b         	ldr	r3, [r3]
    4b5c: 681b         	ldr	r3, [r3]
    4b5e: 2b00         	cmp	r3, #0
    4b60: d104         	bne	0x4b6c <prvResetNextTaskUnblockTime+0x18> @ imm = #8
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4003
;         xNextTaskUnblockTime = portMAX_DELAY;
    4b62: 4b09         	ldr	r3, [pc, #36]           @ 0x4b88 <$d+0x4>
    4b64: f04f 32ff    	mov.w	r2, #4294967295
    4b68: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4013
; }
    4b6a: e005         	b	0x4b78 <prvResetNextTaskUnblockTime+0x24> @ imm = #10
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4011
;         xNextTaskUnblockTime = listGET_ITEM_VALUE_OF_HEAD_ENTRY( pxDelayedTaskList );
    4b6c: 4b05         	ldr	r3, [pc, #20]           @ 0x4b84 <$d>
    4b6e: 681b         	ldr	r3, [r3]
    4b70: 68db         	ldr	r3, [r3, #12]
    4b72: 681b         	ldr	r3, [r3]
    4b74: 4a04         	ldr	r2, [pc, #16]           @ 0x4b88 <$d+0x4>
    4b76: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4013
; }
    4b78: bf00         	nop
    4b7a: 46bd         	mov	sp, r7
    4b7c: f85d 7b04    	ldr	r7, [sp], #4
    4b80: 4770         	bx	lr
    4b82: bf00         	nop

00004b84 <$d>:
    4b84: e8 07 00 20  	.word	0x200007e8
    4b88: 50 08 00 20  	.word	0x20000850

00004b8c <xTaskGetCurrentTaskHandle>:
; xTaskGetCurrentTaskHandle():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4019
;     {
    4b8c: b480         	push	{r7}
    4b8e: b083         	sub	sp, #12
    4b90: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4025
;         xReturn = pxCurrentTCB;
    4b92: 4b05         	ldr	r3, [pc, #20]           @ 0x4ba8 <$d>
    4b94: 681b         	ldr	r3, [r3]
    4b96: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4027
;         return xReturn;
    4b98: 687b         	ldr	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4028
;     }
    4b9a: 4618         	mov	r0, r3
    4b9c: 370c         	adds	r7, #12
    4b9e: 46bd         	mov	sp, r7
    4ba0: f85d 7b04    	ldr	r7, [sp], #4
    4ba4: 4770         	bx	lr
    4ba6: bf00         	nop

00004ba8 <$d>:
    4ba8: 58 07 00 20  	.word	0x20000758

00004bac <xTaskGenericNotifyWait>:
; xTaskGenericNotifyWait():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4764
;     {
    4bac: b580         	push	{r7, lr}
    4bae: b086         	sub	sp, #24
    4bb0: af00         	add	r7, sp, #0
    4bb2: 60f8         	str	r0, [r7, #12]
    4bb4: 60b9         	str	r1, [r7, #8]
    4bb6: 607a         	str	r2, [r7, #4]
    4bb8: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4769
;         taskENTER_CRITICAL();
    4bba: f000 fbad    	bl	0x5318 <vPortEnterCritical> @ imm = #1882
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4772
;             if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != taskNOTIFICATION_RECEIVED )
    4bbe: 4b32         	ldr	r3, [pc, #200]          @ 0x4c88 <$d>
    4bc0: 681a         	ldr	r2, [r3]
    4bc2: 68fb         	ldr	r3, [r7, #12]
    4bc4: 4413         	add	r3, r2
    4bc6: 3364         	adds	r3, #100
    4bc8: 781b         	ldrb	r3, [r3]
    4bca: b2db         	uxtb	r3, r3
    4bcc: 2b02         	cmp	r3, #2
    4bce: d022         	beq	0x4c16 <xTaskGenericNotifyWait+0x6a> @ imm = #68
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4777
;                 pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnEntry;
    4bd0: 4b2d         	ldr	r3, [pc, #180]          @ 0x4c88 <$d>
    4bd2: 681b         	ldr	r3, [r3]
    4bd4: 68fa         	ldr	r2, [r7, #12]
    4bd6: 3216         	adds	r2, #22
    4bd8: f853 1022    	ldr.w	r1, [r3, r2, lsl #2]
    4bdc: 68ba         	ldr	r2, [r7, #8]
    4bde: 43d2         	mvns	r2, r2
    4be0: 4011         	ands	r1, r2
    4be2: 68fa         	ldr	r2, [r7, #12]
    4be4: 3216         	adds	r2, #22
    4be6: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4780
;                 pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskWAITING_NOTIFICATION;
    4bea: 4b27         	ldr	r3, [pc, #156]          @ 0x4c88 <$d>
    4bec: 681a         	ldr	r2, [r3]
    4bee: 68fb         	ldr	r3, [r7, #12]
    4bf0: 4413         	add	r3, r2
    4bf2: 3364         	adds	r3, #100
    4bf4: 2201         	movs	r2, #1
    4bf6: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4782
;                 if( xTicksToWait > ( TickType_t ) 0 )
    4bf8: 6a3b         	ldr	r3, [r7, #32]
    4bfa: 2b00         	cmp	r3, #0
    4bfc: d00b         	beq	0x4c16 <xTaskGenericNotifyWait+0x6a> @ imm = #22
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4784
;                     prvAddCurrentTaskToDelayedList( xTicksToWait, pdTRUE );
    4bfe: 2101         	movs	r1, #1
    4c00: 6a38         	ldr	r0, [r7, #32]
    4c02: f000 fa73    	bl	0x50ec <prvAddCurrentTaskToDelayedList> @ imm = #1254
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4791
;                     portYIELD_WITHIN_API();
    4c06: 4b21         	ldr	r3, [pc, #132]          @ 0x4c8c <$d+0x4>
    4c08: f04f 5280    	mov.w	r2, #268435456
    4c0c: 601a         	str	r2, [r3]
    4c0e: f3bf 8f4f    	dsb	sy
    4c12: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4803
;         taskEXIT_CRITICAL();
    4c16: f000 fb99    	bl	0x534c <vPortExitCritical> @ imm = #1842
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4805
;         taskENTER_CRITICAL();
    4c1a: f000 fb7d    	bl	0x5318 <vPortEnterCritical> @ imm = #1786
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4809
;             if( pulNotificationValue != NULL )
    4c1e: 683b         	ldr	r3, [r7]
    4c20: 2b00         	cmp	r3, #0
    4c22: d007         	beq	0x4c34 <xTaskGenericNotifyWait+0x88> @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4813
;                 *pulNotificationValue = pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ];
    4c24: 4b18         	ldr	r3, [pc, #96]           @ 0x4c88 <$d>
    4c26: 681b         	ldr	r3, [r3]
    4c28: 68fa         	ldr	r2, [r7, #12]
    4c2a: 3216         	adds	r2, #22
    4c2c: f853 2022    	ldr.w	r2, [r3, r2, lsl #2]
    4c30: 683b         	ldr	r3, [r7]
    4c32: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4820
;             if( pxCurrentTCB->ucNotifyState[ uxIndexToWait ] != taskNOTIFICATION_RECEIVED )
    4c34: 4b14         	ldr	r3, [pc, #80]           @ 0x4c88 <$d>
    4c36: 681a         	ldr	r2, [r3]
    4c38: 68fb         	ldr	r3, [r7, #12]
    4c3a: 4413         	add	r3, r2
    4c3c: 3364         	adds	r3, #100
    4c3e: 781b         	ldrb	r3, [r3]
    4c40: b2db         	uxtb	r3, r3
    4c42: 2b02         	cmp	r3, #2
    4c44: d002         	beq	0x4c4c <xTaskGenericNotifyWait+0xa0> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4823
;                 xReturn = pdFALSE;
    4c46: 2300         	movs	r3, #0
    4c48: 617b         	str	r3, [r7, #20]
    4c4a: e00e         	b	0x4c6a <xTaskGenericNotifyWait+0xbe> @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4829
;                 pxCurrentTCB->ulNotifiedValue[ uxIndexToWait ] &= ~ulBitsToClearOnExit;
    4c4c: 4b0e         	ldr	r3, [pc, #56]           @ 0x4c88 <$d>
    4c4e: 681b         	ldr	r3, [r3]
    4c50: 68fa         	ldr	r2, [r7, #12]
    4c52: 3216         	adds	r2, #22
    4c54: f853 1022    	ldr.w	r1, [r3, r2, lsl #2]
    4c58: 687a         	ldr	r2, [r7, #4]
    4c5a: 43d2         	mvns	r2, r2
    4c5c: 4011         	ands	r1, r2
    4c5e: 68fa         	ldr	r2, [r7, #12]
    4c60: 3216         	adds	r2, #22
    4c62: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4830
;                 xReturn = pdTRUE;
    4c66: 2301         	movs	r3, #1
    4c68: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4833
;             pxCurrentTCB->ucNotifyState[ uxIndexToWait ] = taskNOT_WAITING_NOTIFICATION;
    4c6a: 4b07         	ldr	r3, [pc, #28]           @ 0x4c88 <$d>
    4c6c: 681a         	ldr	r2, [r3]
    4c6e: 68fb         	ldr	r3, [r7, #12]
    4c70: 4413         	add	r3, r2
    4c72: 3364         	adds	r3, #100
    4c74: 2200         	movs	r2, #0
    4c76: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4835
;         taskEXIT_CRITICAL();
    4c78: f000 fb68    	bl	0x534c <vPortExitCritical> @ imm = #1744
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4837
;         return xReturn;
    4c7c: 697b         	ldr	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4838
;     }
    4c7e: 4618         	mov	r0, r3
    4c80: 3718         	adds	r7, #24
    4c82: 46bd         	mov	sp, r7
    4c84: bd80         	pop	{r7, pc}
    4c86: bf00         	nop

00004c88 <$d>:
    4c88: 58 07 00 20  	.word	0x20000758
    4c8c: 04 ed 00 e0  	.word	0xe000ed04

00004c90 <xTaskGenericNotify>:
; xTaskGenericNotify():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4850
;     {
    4c90: b580         	push	{r7, lr}
    4c92: b08a         	sub	sp, #40
    4c94: af00         	add	r7, sp, #0
    4c96: 60f8         	str	r0, [r7, #12]
    4c98: 60b9         	str	r1, [r7, #8]
    4c9a: 607a         	str	r2, [r7, #4]
    4c9c: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4852
;         BaseType_t xReturn = pdPASS;
    4c9e: 2301         	movs	r3, #1
    4ca0: 627b         	str	r3, [r7, #36]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4857
;         pxTCB = xTaskToNotify;
    4ca2: 68fb         	ldr	r3, [r7, #12]
    4ca4: 623b         	str	r3, [r7, #32]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4859
;         taskENTER_CRITICAL();
    4ca6: f000 fb37    	bl	0x5318 <vPortEnterCritical> @ imm = #1646
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4861
;             if( pulPreviousNotificationValue != NULL )
    4caa: 6b3b         	ldr	r3, [r7, #48]
    4cac: 2b00         	cmp	r3, #0
    4cae: d006         	beq	0x4cbe <xTaskGenericNotify+0x2e> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4863
;                 *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
    4cb0: 6a3b         	ldr	r3, [r7, #32]
    4cb2: 68ba         	ldr	r2, [r7, #8]
    4cb4: 3216         	adds	r2, #22
    4cb6: f853 2022    	ldr.w	r2, [r3, r2, lsl #2]
    4cba: 6b3b         	ldr	r3, [r7, #48]
    4cbc: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4866
;             ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
    4cbe: 6a3a         	ldr	r2, [r7, #32]
    4cc0: 68bb         	ldr	r3, [r7, #8]
    4cc2: 4413         	add	r3, r2
    4cc4: 3364         	adds	r3, #100
    4cc6: 781b         	ldrb	r3, [r3]
    4cc8: 77fb         	strb	r3, [r7, #31]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4868
;             pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
    4cca: 6a3a         	ldr	r2, [r7, #32]
    4ccc: 68bb         	ldr	r3, [r7, #8]
    4cce: 4413         	add	r3, r2
    4cd0: 3364         	adds	r3, #100
    4cd2: 2202         	movs	r2, #2
    4cd4: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4870
;             switch( eAction )
    4cd6: 78fb         	ldrb	r3, [r7, #3]
    4cd8: 2b04         	cmp	r3, #4
    4cda: d83b         	bhi	0x4d54 <$t+0x5c>        @ imm = #118
    4cdc: a201         	adr	r2, #4 <xTaskGenericNotify+0x51>
    4cde: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]
    4ce2: bf00         	nop

00004ce4 <$d>:
    4ce4: 55 4d 00 00  	.word	0x00004d55
    4ce8: f9 4c 00 00  	.word	0x00004cf9
    4cec: 15 4d 00 00  	.word	0x00004d15
    4cf0: 2d 4d 00 00  	.word	0x00004d2d
    4cf4: 3b 4d 00 00  	.word	0x00004d3b

00004cf8 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4873
;                     pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
    4cf8: 6a3b         	ldr	r3, [r7, #32]
    4cfa: 68ba         	ldr	r2, [r7, #8]
    4cfc: 3216         	adds	r2, #22
    4cfe: f853 2022    	ldr.w	r2, [r3, r2, lsl #2]
    4d02: 687b         	ldr	r3, [r7, #4]
    4d04: ea42 0103    	orr.w	r1, r2, r3
    4d08: 6a3b         	ldr	r3, [r7, #32]
    4d0a: 68ba         	ldr	r2, [r7, #8]
    4d0c: 3216         	adds	r2, #22
    4d0e: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4874
;                     break;
    4d12: e020         	b	0x4d56 <$t+0x5e>        @ imm = #64
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4877
;                     ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
    4d14: 6a3b         	ldr	r3, [r7, #32]
    4d16: 68ba         	ldr	r2, [r7, #8]
    4d18: 3216         	adds	r2, #22
    4d1a: f853 3022    	ldr.w	r3, [r3, r2, lsl #2]
    4d1e: 1c59         	adds	r1, r3, #1
    4d20: 6a3b         	ldr	r3, [r7, #32]
    4d22: 68ba         	ldr	r2, [r7, #8]
    4d24: 3216         	adds	r2, #22
    4d26: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4878
;                     break;
    4d2a: e014         	b	0x4d56 <$t+0x5e>        @ imm = #40
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4881
;                     pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
    4d2c: 6a3b         	ldr	r3, [r7, #32]
    4d2e: 68ba         	ldr	r2, [r7, #8]
    4d30: 3216         	adds	r2, #22
    4d32: 6879         	ldr	r1, [r7, #4]
    4d34: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4882
;                     break;
    4d38: e00d         	b	0x4d56 <$t+0x5e>        @ imm = #26
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4886
;                     if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
    4d3a: 7ffb         	ldrb	r3, [r7, #31]
    4d3c: 2b02         	cmp	r3, #2
    4d3e: d006         	beq	0x4d4e <$t+0x56>        @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4888
;                         pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
    4d40: 6a3b         	ldr	r3, [r7, #32]
    4d42: 68ba         	ldr	r2, [r7, #8]
    4d44: 3216         	adds	r2, #22
    4d46: 6879         	ldr	r1, [r7, #4]
    4d48: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4896
;                     break;
    4d4c: e003         	b	0x4d56 <$t+0x5e>        @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4893
;                         xReturn = pdFAIL;
    4d4e: 2300         	movs	r3, #0
    4d50: 627b         	str	r3, [r7, #36]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4896
;                     break;
    4d52: e000         	b	0x4d56 <$t+0x5e>        @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4911
;                     break;
    4d54: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4918
;             if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
    4d56: 7ffb         	ldrb	r3, [r7, #31]
    4d58: 2b01         	cmp	r3, #1
    4d5a: d16d         	bne	0x4e38 <$t+0x140>       @ imm = #218
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4920
;                 listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
    4d5c: 6a3b         	ldr	r3, [r7, #32]
    4d5e: 695b         	ldr	r3, [r3, #20]
    4d60: 61bb         	str	r3, [r7, #24]
    4d62: 6a3b         	ldr	r3, [r7, #32]
    4d64: 689b         	ldr	r3, [r3, #8]
    4d66: 6a3a         	ldr	r2, [r7, #32]
    4d68: 68d2         	ldr	r2, [r2, #12]
    4d6a: 609a         	str	r2, [r3, #8]
    4d6c: 6a3b         	ldr	r3, [r7, #32]
    4d6e: 68db         	ldr	r3, [r3, #12]
    4d70: 6a3a         	ldr	r2, [r7, #32]
    4d72: 6892         	ldr	r2, [r2, #8]
    4d74: 605a         	str	r2, [r3, #4]
    4d76: 69bb         	ldr	r3, [r7, #24]
    4d78: 685a         	ldr	r2, [r3, #4]
    4d7a: 6a3b         	ldr	r3, [r7, #32]
    4d7c: 3304         	adds	r3, #4
    4d7e: 429a         	cmp	r2, r3
    4d80: d103         	bne	0x4d8a <$t+0x92>        @ imm = #6
    4d82: 6a3b         	ldr	r3, [r7, #32]
    4d84: 68da         	ldr	r2, [r3, #12]
    4d86: 69bb         	ldr	r3, [r7, #24]
    4d88: 605a         	str	r2, [r3, #4]
    4d8a: 6a3b         	ldr	r3, [r7, #32]
    4d8c: 2200         	movs	r2, #0
    4d8e: 615a         	str	r2, [r3, #20]
    4d90: 69bb         	ldr	r3, [r7, #24]
    4d92: 681b         	ldr	r3, [r3]
    4d94: 1e5a         	subs	r2, r3, #1
    4d96: 69bb         	ldr	r3, [r7, #24]
    4d98: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4921
;                 prvAddTaskToReadyList( pxTCB );
    4d9a: 6a3b         	ldr	r3, [r7, #32]
    4d9c: 6ada         	ldr	r2, [r3, #44]
    4d9e: 4b2a         	ldr	r3, [pc, #168]          @ 0x4e48 <$d>
    4da0: 681b         	ldr	r3, [r3]
    4da2: 429a         	cmp	r2, r3
    4da4: d903         	bls	0x4dae <$t+0xb6>        @ imm = #6
    4da6: 6a3b         	ldr	r3, [r7, #32]
    4da8: 6adb         	ldr	r3, [r3, #44]
    4daa: 4a27         	ldr	r2, [pc, #156]          @ 0x4e48 <$d>
    4dac: 6013         	str	r3, [r2]
    4dae: 6a3b         	ldr	r3, [r7, #32]
    4db0: 6ada         	ldr	r2, [r3, #44]
    4db2: 4926         	ldr	r1, [pc, #152]          @ 0x4e4c <$d+0x4>
    4db4: 4613         	mov	r3, r2
    4db6: 009b         	lsls	r3, r3, #2
    4db8: 4413         	add	r3, r2
    4dba: 009b         	lsls	r3, r3, #2
    4dbc: 440b         	add	r3, r1
    4dbe: 3304         	adds	r3, #4
    4dc0: 681b         	ldr	r3, [r3]
    4dc2: 617b         	str	r3, [r7, #20]
    4dc4: 6a3b         	ldr	r3, [r7, #32]
    4dc6: 697a         	ldr	r2, [r7, #20]
    4dc8: 609a         	str	r2, [r3, #8]
    4dca: 697b         	ldr	r3, [r7, #20]
    4dcc: 689a         	ldr	r2, [r3, #8]
    4dce: 6a3b         	ldr	r3, [r7, #32]
    4dd0: 60da         	str	r2, [r3, #12]
    4dd2: 697b         	ldr	r3, [r7, #20]
    4dd4: 689b         	ldr	r3, [r3, #8]
    4dd6: 6a3a         	ldr	r2, [r7, #32]
    4dd8: 3204         	adds	r2, #4
    4dda: 605a         	str	r2, [r3, #4]
    4ddc: 6a3b         	ldr	r3, [r7, #32]
    4dde: 1d1a         	adds	r2, r3, #4
    4de0: 697b         	ldr	r3, [r7, #20]
    4de2: 609a         	str	r2, [r3, #8]
    4de4: 6a3b         	ldr	r3, [r7, #32]
    4de6: 6ada         	ldr	r2, [r3, #44]
    4de8: 4613         	mov	r3, r2
    4dea: 009b         	lsls	r3, r3, #2
    4dec: 4413         	add	r3, r2
    4dee: 009b         	lsls	r3, r3, #2
    4df0: 4a16         	ldr	r2, [pc, #88]           @ 0x4e4c <$d+0x4>
    4df2: 441a         	add	r2, r3
    4df4: 6a3b         	ldr	r3, [r7, #32]
    4df6: 615a         	str	r2, [r3, #20]
    4df8: 6a3b         	ldr	r3, [r7, #32]
    4dfa: 6ada         	ldr	r2, [r3, #44]
    4dfc: 4913         	ldr	r1, [pc, #76]           @ 0x4e4c <$d+0x4>
    4dfe: 4613         	mov	r3, r2
    4e00: 009b         	lsls	r3, r3, #2
    4e02: 4413         	add	r3, r2
    4e04: 009b         	lsls	r3, r3, #2
    4e06: 440b         	add	r3, r1
    4e08: 681b         	ldr	r3, [r3]
    4e0a: 1c59         	adds	r1, r3, #1
    4e0c: 480f         	ldr	r0, [pc, #60]           @ 0x4e4c <$d+0x4>
    4e0e: 4613         	mov	r3, r2
    4e10: 009b         	lsls	r3, r3, #2
    4e12: 4413         	add	r3, r2
    4e14: 009b         	lsls	r3, r3, #2
    4e16: 4403         	add	r3, r0
    4e18: 6019         	str	r1, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4942
;                 if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    4e1a: 6a3b         	ldr	r3, [r7, #32]
    4e1c: 6ada         	ldr	r2, [r3, #44]
    4e1e: 4b0c         	ldr	r3, [pc, #48]           @ 0x4e50 <$d+0x8>
    4e20: 681b         	ldr	r3, [r3]
    4e22: 6adb         	ldr	r3, [r3, #44]
    4e24: 429a         	cmp	r2, r3
    4e26: d907         	bls	0x4e38 <$t+0x140>       @ imm = #14
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4946
;                     taskYIELD_IF_USING_PREEMPTION();
    4e28: 4b0a         	ldr	r3, [pc, #40]           @ 0x4e54 <$d+0xc>
    4e2a: f04f 5280    	mov.w	r2, #268435456
    4e2e: 601a         	str	r2, [r3]
    4e30: f3bf 8f4f    	dsb	sy
    4e34: f3bf 8f6f    	isb	sy
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4958
;         taskEXIT_CRITICAL();
    4e38: f000 fa88    	bl	0x534c <vPortExitCritical> @ imm = #1296
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4960
;         return xReturn;
    4e3c: 6a7b         	ldr	r3, [r7, #36]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4961
;     }
    4e3e: 4618         	mov	r0, r3
    4e40: 3728         	adds	r7, #40
    4e42: 46bd         	mov	sp, r7
    4e44: bd80         	pop	{r7, pc}
    4e46: bf00         	nop

00004e48 <$d>:
    4e48: 38 08 00 20  	.word	0x20000838
    4e4c: 5c 07 00 20  	.word	0x2000075c
    4e50: 58 07 00 20  	.word	0x20000758
    4e54: 04 ed 00 e0  	.word	0xe000ed04

00004e58 <xTaskGenericNotifyFromISR>:
; xTaskGenericNotifyFromISR():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4974
;     {
    4e58: b480         	push	{r7}
    4e5a: b08f         	sub	sp, #60
    4e5c: af00         	add	r7, sp, #0
    4e5e: 60f8         	str	r0, [r7, #12]
    4e60: 60b9         	str	r1, [r7, #8]
    4e62: 607a         	str	r2, [r7, #4]
    4e64: 70fb         	strb	r3, [r7, #3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:4977
;         BaseType_t xReturn = pdPASS;
    4e66: 2301         	movs	r3, #1
    4e68: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5001
;         pxTCB = xTaskToNotify;
    4e6a: 68fb         	ldr	r3, [r7, #12]
    4e6c: 633b         	str	r3, [r7, #48]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:219
;         __asm volatile
    4e6e: f3ef 8211    	mrs	r2, basepri
    4e72: f04f 0340    	mov.w	r3, #64
    4e76: f383 8811    	msr	basepri, r3
    4e7a: f3bf 8f6f    	isb	sy
    4e7e: f3bf 8f4f    	dsb	sy
    4e82: 61ba         	str	r2, [r7, #24]
    4e84: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:231
;         return ulOriginalBASEPRI;
    4e86: 69bb         	ldr	r3, [r7, #24]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5003
;         uxSavedInterruptStatus = portSET_INTERRUPT_MASK_FROM_ISR();
    4e88: 62fb         	str	r3, [r7, #44]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5005
;             if( pulPreviousNotificationValue != NULL )
    4e8a: 6c3b         	ldr	r3, [r7, #64]
    4e8c: 2b00         	cmp	r3, #0
    4e8e: d006         	beq	0x4e9e <xTaskGenericNotifyFromISR+0x46> @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5007
;                 *pulPreviousNotificationValue = pxTCB->ulNotifiedValue[ uxIndexToNotify ];
    4e90: 6b3b         	ldr	r3, [r7, #48]
    4e92: 68ba         	ldr	r2, [r7, #8]
    4e94: 3216         	adds	r2, #22
    4e96: f853 2022    	ldr.w	r2, [r3, r2, lsl #2]
    4e9a: 6c3b         	ldr	r3, [r7, #64]
    4e9c: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5010
;             ucOriginalNotifyState = pxTCB->ucNotifyState[ uxIndexToNotify ];
    4e9e: 6b3a         	ldr	r2, [r7, #48]
    4ea0: 68bb         	ldr	r3, [r7, #8]
    4ea2: 4413         	add	r3, r2
    4ea4: 3364         	adds	r3, #100
    4ea6: 781b         	ldrb	r3, [r3]
    4ea8: f887 302b    	strb.w	r3, [r7, #43]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5011
;             pxTCB->ucNotifyState[ uxIndexToNotify ] = taskNOTIFICATION_RECEIVED;
    4eac: 6b3a         	ldr	r2, [r7, #48]
    4eae: 68bb         	ldr	r3, [r7, #8]
    4eb0: 4413         	add	r3, r2
    4eb2: 3364         	adds	r3, #100
    4eb4: 2202         	movs	r2, #2
    4eb6: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5013
;             switch( eAction )
    4eb8: 78fb         	ldrb	r3, [r7, #3]
    4eba: 2b04         	cmp	r3, #4
    4ebc: d83b         	bhi	0x4f36 <$t+0x5e>        @ imm = #118
    4ebe: a201         	adr	r2, #4 <xTaskGenericNotifyFromISR+0x6b>
    4ec0: f852 f023    	ldr.w	pc, [r2, r3, lsl #2]

00004ec4 <$d>:
    4ec4: 37 4f 00 00  	.word	0x00004f37
    4ec8: d9 4e 00 00  	.word	0x00004ed9
    4ecc: f5 4e 00 00  	.word	0x00004ef5
    4ed0: 0d 4f 00 00  	.word	0x00004f0d
    4ed4: 1b 4f 00 00  	.word	0x00004f1b

00004ed8 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5016
;                     pxTCB->ulNotifiedValue[ uxIndexToNotify ] |= ulValue;
    4ed8: 6b3b         	ldr	r3, [r7, #48]
    4eda: 68ba         	ldr	r2, [r7, #8]
    4edc: 3216         	adds	r2, #22
    4ede: f853 2022    	ldr.w	r2, [r3, r2, lsl #2]
    4ee2: 687b         	ldr	r3, [r7, #4]
    4ee4: ea42 0103    	orr.w	r1, r2, r3
    4ee8: 6b3b         	ldr	r3, [r7, #48]
    4eea: 68ba         	ldr	r2, [r7, #8]
    4eec: 3216         	adds	r2, #22
    4eee: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5017
;                     break;
    4ef2: e021         	b	0x4f38 <$t+0x60>        @ imm = #66
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5020
;                     ( pxTCB->ulNotifiedValue[ uxIndexToNotify ] )++;
    4ef4: 6b3b         	ldr	r3, [r7, #48]
    4ef6: 68ba         	ldr	r2, [r7, #8]
    4ef8: 3216         	adds	r2, #22
    4efa: f853 3022    	ldr.w	r3, [r3, r2, lsl #2]
    4efe: 1c59         	adds	r1, r3, #1
    4f00: 6b3b         	ldr	r3, [r7, #48]
    4f02: 68ba         	ldr	r2, [r7, #8]
    4f04: 3216         	adds	r2, #22
    4f06: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5021
;                     break;
    4f0a: e015         	b	0x4f38 <$t+0x60>        @ imm = #42
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5024
;                     pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
    4f0c: 6b3b         	ldr	r3, [r7, #48]
    4f0e: 68ba         	ldr	r2, [r7, #8]
    4f10: 3216         	adds	r2, #22
    4f12: 6879         	ldr	r1, [r7, #4]
    4f14: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5025
;                     break;
    4f18: e00e         	b	0x4f38 <$t+0x60>        @ imm = #28
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5029
;                     if( ucOriginalNotifyState != taskNOTIFICATION_RECEIVED )
    4f1a: f897 302b    	ldrb.w	r3, [r7, #43]
    4f1e: 2b02         	cmp	r3, #2
    4f20: d006         	beq	0x4f30 <$t+0x58>        @ imm = #12
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5031
;                         pxTCB->ulNotifiedValue[ uxIndexToNotify ] = ulValue;
    4f22: 6b3b         	ldr	r3, [r7, #48]
    4f24: 68ba         	ldr	r2, [r7, #8]
    4f26: 3216         	adds	r2, #22
    4f28: 6879         	ldr	r1, [r7, #4]
    4f2a: f843 1022    	str.w	r1, [r3, r2, lsl #2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5039
;                     break;
    4f2e: e003         	b	0x4f38 <$t+0x60>        @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5036
;                         xReturn = pdFAIL;
    4f30: 2300         	movs	r3, #0
    4f32: 637b         	str	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5039
;                     break;
    4f34: e000         	b	0x4f38 <$t+0x60>        @ imm = #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5053
;                     break;
    4f36: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5060
;             if( ucOriginalNotifyState == taskWAITING_NOTIFICATION )
    4f38: f897 302b    	ldrb.w	r3, [r7, #43]
    4f3c: 2b01         	cmp	r3, #1
    4f3e: f040 8090    	bne.w	0x5062 <$t+0x18a>       @ imm = #288
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5065
;                 if( uxSchedulerSuspended == ( UBaseType_t ) pdFALSE )
    4f42: 4b4e         	ldr	r3, [pc, #312]          @ 0x507c <$d>
    4f44: 681b         	ldr	r3, [r3]
    4f46: 2b00         	cmp	r3, #0
    4f48: d15f         	bne	0x500a <$t+0x132>       @ imm = #190
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5067
;                     listREMOVE_ITEM( &( pxTCB->xStateListItem ) );
    4f4a: 6b3b         	ldr	r3, [r7, #48]
    4f4c: 695b         	ldr	r3, [r3, #20]
    4f4e: 623b         	str	r3, [r7, #32]
    4f50: 6b3b         	ldr	r3, [r7, #48]
    4f52: 689b         	ldr	r3, [r3, #8]
    4f54: 6b3a         	ldr	r2, [r7, #48]
    4f56: 68d2         	ldr	r2, [r2, #12]
    4f58: 609a         	str	r2, [r3, #8]
    4f5a: 6b3b         	ldr	r3, [r7, #48]
    4f5c: 68db         	ldr	r3, [r3, #12]
    4f5e: 6b3a         	ldr	r2, [r7, #48]
    4f60: 6892         	ldr	r2, [r2, #8]
    4f62: 605a         	str	r2, [r3, #4]
    4f64: 6a3b         	ldr	r3, [r7, #32]
    4f66: 685a         	ldr	r2, [r3, #4]
    4f68: 6b3b         	ldr	r3, [r7, #48]
    4f6a: 3304         	adds	r3, #4
    4f6c: 429a         	cmp	r2, r3
    4f6e: d103         	bne	0x4f78 <$t+0xa0>        @ imm = #6
    4f70: 6b3b         	ldr	r3, [r7, #48]
    4f72: 68da         	ldr	r2, [r3, #12]
    4f74: 6a3b         	ldr	r3, [r7, #32]
    4f76: 605a         	str	r2, [r3, #4]
    4f78: 6b3b         	ldr	r3, [r7, #48]
    4f7a: 2200         	movs	r2, #0
    4f7c: 615a         	str	r2, [r3, #20]
    4f7e: 6a3b         	ldr	r3, [r7, #32]
    4f80: 681b         	ldr	r3, [r3]
    4f82: 1e5a         	subs	r2, r3, #1
    4f84: 6a3b         	ldr	r3, [r7, #32]
    4f86: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5068
;                     prvAddTaskToReadyList( pxTCB );
    4f88: 6b3b         	ldr	r3, [r7, #48]
    4f8a: 6ada         	ldr	r2, [r3, #44]
    4f8c: 4b3c         	ldr	r3, [pc, #240]          @ 0x5080 <$d+0x4>
    4f8e: 681b         	ldr	r3, [r3]
    4f90: 429a         	cmp	r2, r3
    4f92: d903         	bls	0x4f9c <$t+0xc4>        @ imm = #6
    4f94: 6b3b         	ldr	r3, [r7, #48]
    4f96: 6adb         	ldr	r3, [r3, #44]
    4f98: 4a39         	ldr	r2, [pc, #228]          @ 0x5080 <$d+0x4>
    4f9a: 6013         	str	r3, [r2]
    4f9c: 6b3b         	ldr	r3, [r7, #48]
    4f9e: 6ada         	ldr	r2, [r3, #44]
    4fa0: 4938         	ldr	r1, [pc, #224]          @ 0x5084 <$d+0x8>
    4fa2: 4613         	mov	r3, r2
    4fa4: 009b         	lsls	r3, r3, #2
    4fa6: 4413         	add	r3, r2
    4fa8: 009b         	lsls	r3, r3, #2
    4faa: 440b         	add	r3, r1
    4fac: 3304         	adds	r3, #4
    4fae: 681b         	ldr	r3, [r3]
    4fb0: 61fb         	str	r3, [r7, #28]
    4fb2: 6b3b         	ldr	r3, [r7, #48]
    4fb4: 69fa         	ldr	r2, [r7, #28]
    4fb6: 609a         	str	r2, [r3, #8]
    4fb8: 69fb         	ldr	r3, [r7, #28]
    4fba: 689a         	ldr	r2, [r3, #8]
    4fbc: 6b3b         	ldr	r3, [r7, #48]
    4fbe: 60da         	str	r2, [r3, #12]
    4fc0: 69fb         	ldr	r3, [r7, #28]
    4fc2: 689b         	ldr	r3, [r3, #8]
    4fc4: 6b3a         	ldr	r2, [r7, #48]
    4fc6: 3204         	adds	r2, #4
    4fc8: 605a         	str	r2, [r3, #4]
    4fca: 6b3b         	ldr	r3, [r7, #48]
    4fcc: 1d1a         	adds	r2, r3, #4
    4fce: 69fb         	ldr	r3, [r7, #28]
    4fd0: 609a         	str	r2, [r3, #8]
    4fd2: 6b3b         	ldr	r3, [r7, #48]
    4fd4: 6ada         	ldr	r2, [r3, #44]
    4fd6: 4613         	mov	r3, r2
    4fd8: 009b         	lsls	r3, r3, #2
    4fda: 4413         	add	r3, r2
    4fdc: 009b         	lsls	r3, r3, #2
    4fde: 4a29         	ldr	r2, [pc, #164]          @ 0x5084 <$d+0x8>
    4fe0: 441a         	add	r2, r3
    4fe2: 6b3b         	ldr	r3, [r7, #48]
    4fe4: 615a         	str	r2, [r3, #20]
    4fe6: 6b3b         	ldr	r3, [r7, #48]
    4fe8: 6ada         	ldr	r2, [r3, #44]
    4fea: 4926         	ldr	r1, [pc, #152]          @ 0x5084 <$d+0x8>
    4fec: 4613         	mov	r3, r2
    4fee: 009b         	lsls	r3, r3, #2
    4ff0: 4413         	add	r3, r2
    4ff2: 009b         	lsls	r3, r3, #2
    4ff4: 440b         	add	r3, r1
    4ff6: 681b         	ldr	r3, [r3]
    4ff8: 1c59         	adds	r1, r3, #1
    4ffa: 4822         	ldr	r0, [pc, #136]          @ 0x5084 <$d+0x8>
    4ffc: 4613         	mov	r3, r2
    4ffe: 009b         	lsls	r3, r3, #2
    5000: 4413         	add	r3, r2
    5002: 009b         	lsls	r3, r3, #2
    5004: 4403         	add	r3, r0
    5006: 6019         	str	r1, [r3]
    5008: e01b         	b	0x5042 <$t+0x16a>       @ imm = #54
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5074
;                     listINSERT_END( &( xPendingReadyList ), &( pxTCB->xEventListItem ) );
    500a: 4b1f         	ldr	r3, [pc, #124]          @ 0x5088 <$d+0xc>
    500c: 685b         	ldr	r3, [r3, #4]
    500e: 627b         	str	r3, [r7, #36]
    5010: 6b3b         	ldr	r3, [r7, #48]
    5012: 6a7a         	ldr	r2, [r7, #36]
    5014: 61da         	str	r2, [r3, #28]
    5016: 6a7b         	ldr	r3, [r7, #36]
    5018: 689a         	ldr	r2, [r3, #8]
    501a: 6b3b         	ldr	r3, [r7, #48]
    501c: 621a         	str	r2, [r3, #32]
    501e: 6a7b         	ldr	r3, [r7, #36]
    5020: 689b         	ldr	r3, [r3, #8]
    5022: 6b3a         	ldr	r2, [r7, #48]
    5024: 3218         	adds	r2, #24
    5026: 605a         	str	r2, [r3, #4]
    5028: 6b3b         	ldr	r3, [r7, #48]
    502a: f103 0218    	add.w	r2, r3, #24
    502e: 6a7b         	ldr	r3, [r7, #36]
    5030: 609a         	str	r2, [r3, #8]
    5032: 6b3b         	ldr	r3, [r7, #48]
    5034: 4a14         	ldr	r2, [pc, #80]           @ 0x5088 <$d+0xc>
    5036: 629a         	str	r2, [r3, #40]
    5038: 4b13         	ldr	r3, [pc, #76]           @ 0x5088 <$d+0xc>
    503a: 681b         	ldr	r3, [r3]
    503c: 3301         	adds	r3, #1
    503e: 4a12         	ldr	r2, [pc, #72]           @ 0x5088 <$d+0xc>
    5040: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5077
;                 if( pxTCB->uxPriority > pxCurrentTCB->uxPriority )
    5042: 6b3b         	ldr	r3, [r7, #48]
    5044: 6ada         	ldr	r2, [r3, #44]
    5046: 4b11         	ldr	r3, [pc, #68]           @ 0x508c <$d+0x10>
    5048: 681b         	ldr	r3, [r3]
    504a: 6adb         	ldr	r3, [r3, #44]
    504c: 429a         	cmp	r2, r3
    504e: d908         	bls	0x5062 <$t+0x18a>       @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5081
;                     if( pxHigherPriorityTaskWoken != NULL )
    5050: 6c7b         	ldr	r3, [r7, #68]
    5052: 2b00         	cmp	r3, #0
    5054: d002         	beq	0x505c <$t+0x184>       @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5083
;                         *pxHigherPriorityTaskWoken = pdTRUE;
    5056: 6c7b         	ldr	r3, [r7, #68]
    5058: 2201         	movs	r2, #1
    505a: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5089
;                     xYieldPending = pdTRUE;
    505c: 4b0c         	ldr	r3, [pc, #48]           @ 0x5090 <$d+0x14>
    505e: 2201         	movs	r2, #1
    5060: 601a         	str	r2, [r3]
    5062: 6afb         	ldr	r3, [r7, #44]
    5064: 613b         	str	r3, [r7, #16]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:237
;         __asm volatile
    5066: 693b         	ldr	r3, [r7, #16]
    5068: f383 8811    	msr	basepri, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:241
;     }
    506c: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5099
;         return xReturn;
    506e: 6b7b         	ldr	r3, [r7, #52]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5100
;     }
    5070: 4618         	mov	r0, r3
    5072: 373c         	adds	r7, #60
    5074: 46bd         	mov	sp, r7
    5076: f85d 7b04    	ldr	r7, [sp], #4
    507a: 4770         	bx	lr

0000507c <$d>:
    507c: 58 08 00 20  	.word	0x20000858
    5080: 38 08 00 20  	.word	0x20000838
    5084: 5c 07 00 20  	.word	0x2000075c
    5088: f0 07 00 20  	.word	0x200007f0
    508c: 58 07 00 20  	.word	0x20000758
    5090: 44 08 00 20  	.word	0x20000844

00005094 <xTaskGenericNotifyStateClear>:
; xTaskGenericNotifyStateClear():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5198
;     {
    5094: b580         	push	{r7, lr}
    5096: b084         	sub	sp, #16
    5098: af00         	add	r7, sp, #0
    509a: 6078         	str	r0, [r7, #4]
    509c: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5206
;         pxTCB = prvGetTCBFromHandle( xTask );
    509e: 687b         	ldr	r3, [r7, #4]
    50a0: 2b00         	cmp	r3, #0
    50a2: d102         	bne	0x50aa <xTaskGenericNotifyStateClear+0x16> @ imm = #4
    50a4: 4b10         	ldr	r3, [pc, #64]           @ 0x50e8 <$d>
    50a6: 681b         	ldr	r3, [r3]
    50a8: e000         	b	0x50ac <xTaskGenericNotifyStateClear+0x18> @ imm = #0
    50aa: 687b         	ldr	r3, [r7, #4]
    50ac: 60bb         	str	r3, [r7, #8]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5208
;         taskENTER_CRITICAL();
    50ae: f000 f933    	bl	0x5318 <vPortEnterCritical> @ imm = #614
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5210
;             if( pxTCB->ucNotifyState[ uxIndexToClear ] == taskNOTIFICATION_RECEIVED )
    50b2: 68ba         	ldr	r2, [r7, #8]
    50b4: 683b         	ldr	r3, [r7]
    50b6: 4413         	add	r3, r2
    50b8: 3364         	adds	r3, #100
    50ba: 781b         	ldrb	r3, [r3]
    50bc: b2db         	uxtb	r3, r3
    50be: 2b02         	cmp	r3, #2
    50c0: d108         	bne	0x50d4 <xTaskGenericNotifyStateClear+0x40> @ imm = #16
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5212
;                 pxTCB->ucNotifyState[ uxIndexToClear ] = taskNOT_WAITING_NOTIFICATION;
    50c2: 68ba         	ldr	r2, [r7, #8]
    50c4: 683b         	ldr	r3, [r7]
    50c6: 4413         	add	r3, r2
    50c8: 3364         	adds	r3, #100
    50ca: 2200         	movs	r2, #0
    50cc: 701a         	strb	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5213
;                 xReturn = pdPASS;
    50ce: 2301         	movs	r3, #1
    50d0: 60fb         	str	r3, [r7, #12]
    50d2: e001         	b	0x50d8 <xTaskGenericNotifyStateClear+0x44> @ imm = #2
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5217
;                 xReturn = pdFAIL;
    50d4: 2300         	movs	r3, #0
    50d6: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5220
;         taskEXIT_CRITICAL();
    50d8: f000 f938    	bl	0x534c <vPortExitCritical> @ imm = #624
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5222
;         return xReturn;
    50dc: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5223
;     }
    50de: 4618         	mov	r0, r3
    50e0: 3710         	adds	r7, #16
    50e2: 46bd         	mov	sp, r7
    50e4: bd80         	pop	{r7, pc}
    50e6: bf00         	nop

000050e8 <$d>:
    50e8: 58 07 00 20  	.word	0x20000758

000050ec <prvAddCurrentTaskToDelayedList>:
; prvAddCurrentTaskToDelayedList():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5315
; {
    50ec: b580         	push	{r7, lr}
    50ee: b086         	sub	sp, #24
    50f0: af00         	add	r7, sp, #0
    50f2: 6078         	str	r0, [r7, #4]
    50f4: 6039         	str	r1, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5317
;     const TickType_t xConstTickCount = xTickCount;
    50f6: 4b2e         	ldr	r3, [pc, #184]          @ 0x51b0 <$d>
    50f8: 681b         	ldr	r3, [r3]
    50fa: 617b         	str	r3, [r7, #20]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5330
;     if( uxListRemove( &( pxCurrentTCB->xStateListItem ) ) == ( UBaseType_t ) 0 )
    50fc: 4b2d         	ldr	r3, [pc, #180]          @ 0x51b4 <$d+0x4>
    50fe: 681b         	ldr	r3, [r3]
    5100: 3304         	adds	r3, #4
    5102: 4618         	mov	r0, r3
    5104: f7ff f866    	bl	0x41d4 <uxListRemove>   @ imm = #-3892
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5343
;         if( ( xTicksToWait == portMAX_DELAY ) && ( xCanBlockIndefinitely != pdFALSE ) )
    5108: 687b         	ldr	r3, [r7, #4]
    510a: f1b3 3fff    	cmp.w	r3, #4294967295
    510e: d124         	bne	0x515a <prvAddCurrentTaskToDelayedList+0x6e> @ imm = #72
    5110: 683b         	ldr	r3, [r7]
    5112: 2b00         	cmp	r3, #0
    5114: d021         	beq	0x515a <prvAddCurrentTaskToDelayedList+0x6e> @ imm = #66
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5348
;             listINSERT_END( &xSuspendedTaskList, &( pxCurrentTCB->xStateListItem ) );
    5116: 4b28         	ldr	r3, [pc, #160]          @ 0x51b8 <$d+0x8>
    5118: 685b         	ldr	r3, [r3, #4]
    511a: 613b         	str	r3, [r7, #16]
    511c: 4b25         	ldr	r3, [pc, #148]          @ 0x51b4 <$d+0x4>
    511e: 681b         	ldr	r3, [r3]
    5120: 693a         	ldr	r2, [r7, #16]
    5122: 609a         	str	r2, [r3, #8]
    5124: 4b23         	ldr	r3, [pc, #140]          @ 0x51b4 <$d+0x4>
    5126: 681b         	ldr	r3, [r3]
    5128: 693a         	ldr	r2, [r7, #16]
    512a: 6892         	ldr	r2, [r2, #8]
    512c: 60da         	str	r2, [r3, #12]
    512e: 4b21         	ldr	r3, [pc, #132]          @ 0x51b4 <$d+0x4>
    5130: 681a         	ldr	r2, [r3]
    5132: 693b         	ldr	r3, [r7, #16]
    5134: 689b         	ldr	r3, [r3, #8]
    5136: 3204         	adds	r2, #4
    5138: 605a         	str	r2, [r3, #4]
    513a: 4b1e         	ldr	r3, [pc, #120]          @ 0x51b4 <$d+0x4>
    513c: 681b         	ldr	r3, [r3]
    513e: 1d1a         	adds	r2, r3, #4
    5140: 693b         	ldr	r3, [r7, #16]
    5142: 609a         	str	r2, [r3, #8]
    5144: 4b1b         	ldr	r3, [pc, #108]          @ 0x51b4 <$d+0x4>
    5146: 681b         	ldr	r3, [r3]
    5148: 4a1b         	ldr	r2, [pc, #108]          @ 0x51b8 <$d+0x8>
    514a: 615a         	str	r2, [r3, #20]
    514c: 4b1a         	ldr	r3, [pc, #104]          @ 0x51b8 <$d+0x8>
    514e: 681b         	ldr	r3, [r3]
    5150: 3301         	adds	r3, #1
    5152: 4a19         	ldr	r2, [pc, #100]          @ 0x51b8 <$d+0x8>
    5154: 6013         	str	r3, [r2]
    5156: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5423
; }
    5158: e026         	b	0x51a8 <prvAddCurrentTaskToDelayedList+0xbc> @ imm = #76
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5355
;             xTimeToWake = xConstTickCount + xTicksToWait;
    515a: 697a         	ldr	r2, [r7, #20]
    515c: 687b         	ldr	r3, [r7, #4]
    515e: 4413         	add	r3, r2
    5160: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5358
;             listSET_LIST_ITEM_VALUE( &( pxCurrentTCB->xStateListItem ), xTimeToWake );
    5162: 4b14         	ldr	r3, [pc, #80]           @ 0x51b4 <$d+0x4>
    5164: 681b         	ldr	r3, [r3]
    5166: 68fa         	ldr	r2, [r7, #12]
    5168: 605a         	str	r2, [r3, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5360
;             if( xTimeToWake < xConstTickCount )
    516a: 68fa         	ldr	r2, [r7, #12]
    516c: 697b         	ldr	r3, [r7, #20]
    516e: 429a         	cmp	r2, r3
    5170: d209         	bhs	0x5186 <prvAddCurrentTaskToDelayedList+0x9a> @ imm = #18
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5364
;                 vListInsert( pxOverflowDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
    5172: 4b12         	ldr	r3, [pc, #72]           @ 0x51bc <$d+0xc>
    5174: 681a         	ldr	r2, [r3]
    5176: 4b0f         	ldr	r3, [pc, #60]           @ 0x51b4 <$d+0x4>
    5178: 681b         	ldr	r3, [r3]
    517a: 3304         	adds	r3, #4
    517c: 4619         	mov	r1, r3
    517e: 4610         	mov	r0, r2
    5180: f7fe ffef    	bl	0x4162 <vListInsert>    @ imm = #-4130
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5423
; }
    5184: e010         	b	0x51a8 <prvAddCurrentTaskToDelayedList+0xbc> @ imm = #32
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5370
;                 vListInsert( pxDelayedTaskList, &( pxCurrentTCB->xStateListItem ) );
    5186: 4b0e         	ldr	r3, [pc, #56]           @ 0x51c0 <$d+0x10>
    5188: 681a         	ldr	r2, [r3]
    518a: 4b0a         	ldr	r3, [pc, #40]           @ 0x51b4 <$d+0x4>
    518c: 681b         	ldr	r3, [r3]
    518e: 3304         	adds	r3, #4
    5190: 4619         	mov	r1, r3
    5192: 4610         	mov	r0, r2
    5194: f7fe ffe5    	bl	0x4162 <vListInsert>    @ imm = #-4150
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5375
;                 if( xTimeToWake < xNextTaskUnblockTime )
    5198: 4b0a         	ldr	r3, [pc, #40]           @ 0x51c4 <$d+0x14>
    519a: 681b         	ldr	r3, [r3]
    519c: 68fa         	ldr	r2, [r7, #12]
    519e: 429a         	cmp	r2, r3
    51a0: d202         	bhs	0x51a8 <prvAddCurrentTaskToDelayedList+0xbc> @ imm = #4
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5377
;                     xNextTaskUnblockTime = xTimeToWake;
    51a2: 4a08         	ldr	r2, [pc, #32]           @ 0x51c4 <$d+0x14>
    51a4: 68fb         	ldr	r3, [r7, #12]
    51a6: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/tasks.c:5423
; }
    51a8: bf00         	nop
    51aa: 3718         	adds	r7, #24
    51ac: 46bd         	mov	sp, r7
    51ae: bd80         	pop	{r7, pc}

000051b0 <$d>:
    51b0: 34 08 00 20  	.word	0x20000834
    51b4: 58 07 00 20  	.word	0x20000758
    51b8: 1c 08 00 20  	.word	0x2000081c
    51bc: ec 07 00 20  	.word	0x200007ec
    51c0: e8 07 00 20  	.word	0x200007e8
    51c4: 50 08 00 20  	.word	0x20000850

000051c8 <pxPortInitialiseStack>:
; pxPortInitialiseStack():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:195
; {
    51c8: b480         	push	{r7}
    51ca: b085         	sub	sp, #20
    51cc: af00         	add	r7, sp, #0
    51ce: 60f8         	str	r0, [r7, #12]
    51d0: 60b9         	str	r1, [r7, #8]
    51d2: 607a         	str	r2, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:201
;     pxTopOfStack--;
    51d4: 68fb         	ldr	r3, [r7, #12]
    51d6: 3b04         	subs	r3, #4
    51d8: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:203
;     *pxTopOfStack = portINITIAL_XPSR;                                    /* xPSR */
    51da: 68fb         	ldr	r3, [r7, #12]
    51dc: f04f 7280    	mov.w	r2, #16777216
    51e0: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:204
;     pxTopOfStack--;
    51e2: 68fb         	ldr	r3, [r7, #12]
    51e4: 3b04         	subs	r3, #4
    51e6: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:205
;     *pxTopOfStack = ( ( StackType_t ) pxCode ) & portSTART_ADDRESS_MASK; /* PC */
    51e8: 68bb         	ldr	r3, [r7, #8]
    51ea: f023 0201    	bic	r2, r3, #1
    51ee: 68fb         	ldr	r3, [r7, #12]
    51f0: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:206
;     pxTopOfStack--;
    51f2: 68fb         	ldr	r3, [r7, #12]
    51f4: 3b04         	subs	r3, #4
    51f6: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:207
;     *pxTopOfStack = ( StackType_t ) portTASK_RETURN_ADDRESS;             /* LR */
    51f8: 4a0c         	ldr	r2, [pc, #48]           @ 0x522c <$d>
    51fa: 68fb         	ldr	r3, [r7, #12]
    51fc: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:210
;     pxTopOfStack -= 5;                            /* R12, R3, R2 and R1. */
    51fe: 68fb         	ldr	r3, [r7, #12]
    5200: 3b14         	subs	r3, #20
    5202: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:211
;     *pxTopOfStack = ( StackType_t ) pvParameters; /* R0 */
    5204: 687a         	ldr	r2, [r7, #4]
    5206: 68fb         	ldr	r3, [r7, #12]
    5208: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:215
;     pxTopOfStack--;
    520a: 68fb         	ldr	r3, [r7, #12]
    520c: 3b04         	subs	r3, #4
    520e: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:216
;     *pxTopOfStack = portINITIAL_EXC_RETURN;
    5210: 68fb         	ldr	r3, [r7, #12]
    5212: f06f 0202    	mvn	r2, #2
    5216: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:218
;     pxTopOfStack -= 8; /* R11, R10, R9, R8, R7, R6, R5 and R4. */
    5218: 68fb         	ldr	r3, [r7, #12]
    521a: 3b20         	subs	r3, #32
    521c: 60fb         	str	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:220
;     return pxTopOfStack;
    521e: 68fb         	ldr	r3, [r7, #12]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:221
; }
    5220: 4618         	mov	r0, r3
    5222: 3714         	adds	r7, #20
    5224: 46bd         	mov	sp, r7
    5226: f85d 7b04    	ldr	r7, [sp], #4
    522a: 4770         	bx	lr

0000522c <$d>:
    522c: 31 52 00 00  	.word	0x00005231

00005230 <prvTaskExitError>:
; prvTaskExitError():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:225
; {
    5230: b480         	push	{r7}
    5232: b083         	sub	sp, #12
    5234: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:226
;     volatile uint32_t ulDummy = 0;
    5236: 2300         	movs	r3, #0
    5238: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:203
;         __asm volatile
    523a: f04f 0340    	mov.w	r3, #64
    523e: f383 8811    	msr	basepri, r3
    5242: f3bf 8f6f    	isb	sy
    5246: f3bf 8f4f    	dsb	sy
    524a: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:211
;     }
    524c: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:237
;     while( ulDummy == 0 )
    524e: bf00         	nop
    5250: 683b         	ldr	r3, [r7]
    5252: 2b00         	cmp	r3, #0
    5254: d0fc         	beq	0x5250 <prvTaskExitError+0x20> @ imm = #-8
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:247
; }
    5256: bf00         	nop
    5258: bf00         	nop
    525a: 370c         	adds	r7, #12
    525c: 46bd         	mov	sp, r7
    525e: f85d 7b04    	ldr	r7, [sp], #4
    5262: 4770         	bx	lr
		...

00005270 <SVC_Handler>:
; SVC_Handler():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:252
;     __asm volatile (
    5270: 4b07         	ldr	r3, [pc, #28]           @ 0x5290 <pxCurrentTCBConst2>
    5272: 6819         	ldr	r1, [r3]
    5274: 6808         	ldr	r0, [r1]
    5276: e8b0 4ff0    	ldm.w	r0!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
    527a: f380 8809    	msr	psp, r0
    527e: f3bf 8f6f    	isb	sy
    5282: f04f 0000    	mov.w	r0, #0
    5286: f380 8811    	msr	basepri, r0
    528a: 4770         	bx	lr
    528c: f3af 8000    	nop.w

00005290 <pxCurrentTCBConst2>:
    5290: 58 07 00 20  	.word	0x20000758

00005294 <$t>:
; pxCurrentTCBConst2():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:266
; }
    5294: bf00         	nop
    5296: bf00         	nop

00005298 <prvPortStartFirstTask>:
; prvPortStartFirstTask():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:275
;     __asm volatile (
    5298: 4808         	ldr	r0, [pc, #32]           @ 0x52bc <$d>
    529a: 6800         	ldr	r0, [r0]
    529c: 6800         	ldr	r0, [r0]
    529e: f380 8808    	msr	msp, r0
    52a2: f04f 0000    	mov.w	r0, #0
    52a6: f380 8814    	msr	control, r0
    52aa: b662         	cpsie i
    52ac: b661         	cpsie f
    52ae: f3bf 8f4f    	dsb	sy
    52b2: f3bf 8f6f    	isb	sy
    52b6: df00         	svc	#0
    52b8: bf00         	nop

000052ba <$d>:
    52ba: 00 00        	.short	0x0000

000052bc <$d>:
    52bc: 08 ed 00 e0  	.word	0xe000ed08

000052c0 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:290
; }
    52c0: bf00         	nop
    52c2: bf00         	nop

000052c4 <xPortStartScheduler>:
; xPortStartScheduler():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:297
; {
    52c4: b580         	push	{r7, lr}
    52c6: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:372
;     portNVIC_SHPR3_REG |= portNVIC_PENDSV_PRI;
    52c8: 4b10         	ldr	r3, [pc, #64]           @ 0x530c <$d>
    52ca: 681b         	ldr	r3, [r3]
    52cc: 4a0f         	ldr	r2, [pc, #60]           @ 0x530c <$d>
    52ce: f443 0360    	orr	r3, r3, #14680064
    52d2: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:373
;     portNVIC_SHPR3_REG |= portNVIC_SYSTICK_PRI;
    52d4: 4b0d         	ldr	r3, [pc, #52]           @ 0x530c <$d>
    52d6: 681b         	ldr	r3, [r3]
    52d8: 4a0c         	ldr	r2, [pc, #48]           @ 0x530c <$d>
    52da: f043 4360    	orr	r3, r3, #3758096384
    52de: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:377
;     vPortSetupTimerInterrupt();
    52e0: f7fe f872    	bl	0x33c8 <vPortSetupTimerInterrupt> @ imm = #-7964
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:380
;     uxCriticalNesting = 0;
    52e4: 4b0a         	ldr	r3, [pc, #40]           @ 0x5310 <$d+0x4>
    52e6: 2200         	movs	r2, #0
    52e8: 601a         	str	r2, [r3]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:383
;     vPortEnableVFP();
    52ea: f000 f89f    	bl	0x542c <vPortEnableVFP> @ imm = #318
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:386
;     *( portFPCCR ) |= portASPEN_AND_LSPEN_BITS;
    52ee: 4b09         	ldr	r3, [pc, #36]           @ 0x5314 <$d+0x8>
    52f0: 681b         	ldr	r3, [r3]
    52f2: 4a08         	ldr	r2, [pc, #32]           @ 0x5314 <$d+0x8>
    52f4: f043 4340    	orr	r3, r3, #3221225472
    52f8: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:389
;     prvPortStartFirstTask();
    52fa: f7ff ffcd    	bl	0x5298 <prvPortStartFirstTask> @ imm = #-102
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:397
;     vTaskSwitchContext();
    52fe: f7ff fb23    	bl	0x4948 <vTaskSwitchContext> @ imm = #-2490
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:398
;     prvTaskExitError();
    5302: f7ff ff95    	bl	0x5230 <prvTaskExitError> @ imm = #-214
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:401
;     return 0;
    5306: 2300         	movs	r3, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:402
; }
    5308: 4618         	mov	r0, r3
    530a: bd80         	pop	{r7, pc}

0000530c <$d>:
    530c: 20 ed 00 e0  	.word	0xe000ed20
    5310: 04 00 00 20  	.word	0x20000004
    5314: 34 ef 00 e0  	.word	0xe000ef34

00005318 <vPortEnterCritical>:
; vPortEnterCritical():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:414
; {
    5318: b480         	push	{r7}
    531a: b083         	sub	sp, #12
    531c: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:203
;         __asm volatile
    531e: f04f 0340    	mov.w	r3, #64
    5322: f383 8811    	msr	basepri, r3
    5326: f3bf 8f6f    	isb	sy
    532a: f3bf 8f4f    	dsb	sy
    532e: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:211
;     }
    5330: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:416
;     uxCriticalNesting++;
    5332: 4b05         	ldr	r3, [pc, #20]           @ 0x5348 <$d>
    5334: 681b         	ldr	r3, [r3]
    5336: 3301         	adds	r3, #1
    5338: 4a03         	ldr	r2, [pc, #12]           @ 0x5348 <$d>
    533a: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:427
; }
    533c: bf00         	nop
    533e: 370c         	adds	r7, #12
    5340: 46bd         	mov	sp, r7
    5342: f85d 7b04    	ldr	r7, [sp], #4
    5346: 4770         	bx	lr

00005348 <$d>:
    5348: 04 00 00 20  	.word	0x20000004

0000534c <vPortExitCritical>:
; vPortExitCritical():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:431
; {
    534c: b480         	push	{r7}
    534e: b083         	sub	sp, #12
    5350: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:433
;     uxCriticalNesting--;
    5352: 4b0a         	ldr	r3, [pc, #40]           @ 0x537c <$d>
    5354: 681b         	ldr	r3, [r3]
    5356: 3b01         	subs	r3, #1
    5358: 4a08         	ldr	r2, [pc, #32]           @ 0x537c <$d>
    535a: 6013         	str	r3, [r2]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:435
;     if( uxCriticalNesting == 0 )
    535c: 4b07         	ldr	r3, [pc, #28]           @ 0x537c <$d>
    535e: 681b         	ldr	r3, [r3]
    5360: 2b00         	cmp	r3, #0
    5362: d105         	bne	0x5370 <vPortExitCritical+0x24> @ imm = #10
    5364: 2300         	movs	r3, #0
    5366: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:237
;         __asm volatile
    5368: 687b         	ldr	r3, [r7, #4]
    536a: f383 8811    	msr	basepri, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:241
;     }
    536e: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:439
; }
    5370: bf00         	nop
    5372: 370c         	adds	r7, #12
    5374: 46bd         	mov	sp, r7
    5376: f85d 7b04    	ldr	r7, [sp], #4
    537a: 4770         	bx	lr

0000537c <$d>:
    537c: 04 00 00 20  	.word	0x20000004

00005380 <PendSV_Handler>:
; PendSV_Handler():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:446
;     __asm volatile
    5380: f3ef 8009    	mrs	r0, psp
    5384: f3bf 8f6f    	isb	sy
    5388: 4b15         	ldr	r3, [pc, #84]           @ 0x53e0 <pxCurrentTCBConst>
    538a: 681a         	ldr	r2, [r3]
    538c: f01e 0f10    	tst.w	lr, #16
    5390: bf08         	it	eq
    5392: ed20 8a10    	vstmdbeq	r0!, {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
    5396: e920 4ff0    	stmdb	r0!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
    539a: 6010         	str	r0, [r2]
    539c: e92d 0009    	push.w	{r0, r3}
    53a0: f04f 0040    	mov.w	r0, #64
    53a4: f380 8811    	msr	basepri, r0
    53a8: f3bf 8f4f    	dsb	sy
    53ac: f3bf 8f6f    	isb	sy
    53b0: f7ff faca    	bl	0x4948 <vTaskSwitchContext> @ imm = #-2668
    53b4: f04f 0000    	mov.w	r0, #0
    53b8: f380 8811    	msr	basepri, r0
    53bc: bc09         	pop	{r0, r3}
    53be: 6819         	ldr	r1, [r3]
    53c0: 6808         	ldr	r0, [r1]
    53c2: e8b0 4ff0    	ldm.w	r0!, {r4, r5, r6, r7, r8, r9, r10, r11, lr}
    53c6: f01e 0f10    	tst.w	lr, #16
    53ca: bf08         	it	eq
    53cc: ecb0 8a10    	vldmiaeq	r0!, {s16, s17, s18, s19, s20, s21, s22, s23, s24, s25, s26, s27, s28, s29, s30, s31}
    53d0: f380 8809    	msr	psp, r0
    53d4: f3bf 8f6f    	isb	sy
    53d8: 4770         	bx	lr
    53da: bf00         	nop
    53dc: f3af 8000    	nop.w

000053e0 <pxCurrentTCBConst>:
    53e0: 58 07 00 20  	.word	0x20000758

000053e4 <$t>:
; pxCurrentTCBConst():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:496
; }
    53e4: bf00         	nop
    53e6: bf00         	nop

000053e8 <SysTick_Handler>:
; SysTick_Handler():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:500
; {
    53e8: b580         	push	{r7, lr}
    53ea: b082         	sub	sp, #8
    53ec: af00         	add	r7, sp, #0
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:203
;         __asm volatile
    53ee: f04f 0340    	mov.w	r3, #64
    53f2: f383 8811    	msr	basepri, r3
    53f6: f3bf 8f6f    	isb	sy
    53fa: f3bf 8f4f    	dsb	sy
    53fe: 607b         	str	r3, [r7, #4]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:211
;     }
    5400: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:508
;         if( xTaskIncrementTick() != pdFALSE )
    5402: f7ff f9a7    	bl	0x4754 <xTaskIncrementTick> @ imm = #-3250
    5406: 4603         	mov	r3, r0
    5408: 2b00         	cmp	r3, #0
    540a: d003         	beq	0x5414 <SysTick_Handler+0x2c> @ imm = #6
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:512
;             portNVIC_INT_CTRL_REG = portNVIC_PENDSVSET_BIT;
    540c: 4b06         	ldr	r3, [pc, #24]           @ 0x5428 <$d>
    540e: f04f 5280    	mov.w	r2, #268435456
    5412: 601a         	str	r2, [r3]
    5414: 2300         	movs	r3, #0
    5416: 603b         	str	r3, [r7]
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:237
;         __asm volatile
    5418: 683b         	ldr	r3, [r7]
    541a: f383 8811    	msr	basepri, r3
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/portmacro.h:241
;     }
    541e: bf00         	nop
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:516
; }
    5420: bf00         	nop
    5422: 3708         	adds	r7, #8
    5424: 46bd         	mov	sp, r7
    5426: bd80         	pop	{r7, pc}

00005428 <$d>:
    5428: 04 ed 00 e0  	.word	0xe000ed04

0000542c <vPortEnableVFP>:
; vPortEnableVFP():
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:768
;     __asm volatile
    542c: f8df 000c    	ldr.w	r0, [pc, #12]           @ 0x543c <$d>
    5430: 6801         	ldr	r1, [r0]
    5432: f441 0170    	orr	r1, r1, #15728640
    5436: 6001         	str	r1, [r0]
    5438: 4770         	bx	lr

0000543a <$d>:
    543a: 00 00        	.short	0x0000

0000543c <$d>:
    543c: 88 ed 00 e0  	.word	0xe000ed88

00005440 <$t>:
; /Users/janstiefel/code/fork/Riotee_SDK/external/freertos/portable/GCC/ARM_CM4F/port.c:778
; }
    5440: bf00         	nop
    5442: bf00         	nop

00005444 <arm_fully_connected_s8>:
; arm_fully_connected_s8():
    5444: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    5448: 681d         	ldr	r5, [r3]
    544a: 6800         	ldr	r0, [r0]
    544c: b08d         	sub	sp, #52
    544e: e9dd 971b    	ldrd	r9, r7, [sp, #108]
    5452: 9e16         	ldr	r6, [sp, #88]
    5454: f8dd a05c    	ldr.w	r10, [sp, #92]
    5458: b34d         	cbz	r5, 0x54ae <arm_fully_connected_s8+0x6a> @ imm = #82
    545a: 460c         	mov	r4, r1
    545c: f8d9 300c    	ldr.w	r3, [r9, #12]
    5460: f8da 1000    	ldr.w	r1, [r10]
    5464: 900b         	str	r0, [sp, #44]
    5466: 4690         	mov	r8, r2
    5468: f04f 0b01    	mov.w	r11, #1
    546c: 9306         	str	r3, [sp, #24]
    546e: f8d8 3004    	ldr.w	r3, [r8, #4]
    5472: f8cd b024    	str.w	r11, [sp, #36]
    5476: e9cd 3104    	strd	r3, r1, [sp, #16]
    547a: f8d8 2000    	ldr.w	r2, [r8]
    547e: 68a3         	ldr	r3, [r4, #8]
    5480: e9cd 3202    	strd	r3, r2, [sp, #8]
    5484: 6823         	ldr	r3, [r4]
    5486: 9a0b         	ldr	r2, [sp, #44]
    5488: e9cd 7300    	strd	r7, r3, [sp]
    548c: 6921         	ldr	r1, [r4, #16]
    548e: 9108         	str	r1, [sp, #32]
    5490: 68e1         	ldr	r1, [r4, #12]
    5492: 9b1a         	ldr	r3, [sp, #104]
    5494: 9107         	str	r1, [sp, #28]
    5496: 4630         	mov	r0, r6
    5498: 9918         	ldr	r1, [sp, #96]
    549a: f000 f80d    	bl	0x54b8 <arm_nn_vec_mat_mult_t_s8> @ imm = #26
    549e: f8da 1000    	ldr.w	r1, [r10]
    54a2: f8d9 300c    	ldr.w	r3, [r9, #12]
    54a6: 3d01         	subs	r5, #1
    54a8: 440e         	add	r6, r1
    54aa: 441f         	add	r7, r3
    54ac: d1de         	bne	0x546c <arm_fully_connected_s8+0x28> @ imm = #-68
    54ae: 2000         	movs	r0, #0
    54b0: b00d         	add	sp, #52
    54b2: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    54b6: bf00         	nop

000054b8 <arm_nn_vec_mat_mult_t_s8>:
; arm_nn_vec_mat_mult_t_s8():
    54b8: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    54bc: b095         	sub	sp, #84
    54be: e9dd 971e    	ldrd	r9, r7, [sp, #120]
    54c2: 9c24         	ldr	r4, [sp, #144]
    54c4: 9009         	str	r0, [sp, #36]
    54c6: eb04 70d4    	add.w	r0, r4, r4, lsr #31
    54ca: 468c         	mov	r12, r1
    54cc: 2c01         	cmp	r4, #1
    54ce: ea4f 0160    	asr.w	r1, r0, #1
    54d2: 9302         	str	r3, [sp, #8]
    54d4: 910b         	str	r1, [sp, #44]
    54d6: b23b         	sxth	r3, r7
    54d8: eac3 4b03    	pkhbt	r11, r3, r3, lsl #16
    54dc: f340 81ea    	ble.w	0x58b4 <arm_nn_vec_mat_mult_t_s8+0x3fc> @ imm = #980
    54e0: 9e22         	ldr	r6, [sp, #136]
    54e2: 9d23         	ldr	r5, [sp, #140]
    54e4: 9424         	str	r4, [sp, #144]
    54e6: 4273         	rsbs	r3, r6, #0
    54e8: ea23 71e3    	bic.w	r1, r3, r3, asr #31
    54ec: 2d00         	cmp	r5, #0
    54ee: f04f 0001    	mov.w	r0, #1
    54f2: fa00 f001    	lsl.w	r0, r0, r1
    54f6: bfb8         	it	lt
    54f8: 3503         	addlt	r5, #3
    54fa: f025 0203    	bic	r2, r5, #3
    54fe: 1e46         	subs	r6, r0, #1
    5500: 10ad         	asrs	r5, r5, #2
    5502: 9823         	ldr	r0, [sp, #140]
    5504: 950d         	str	r5, [sp, #52]
    5506: 1073         	asrs	r3, r6, #1
    5508: 9d27         	ldr	r5, [sp, #156]
    550a: 9108         	str	r1, [sp, #32]
    550c: 9604         	str	r6, [sp, #16]
    550e: 2100         	movs	r1, #0
    5510: 0046         	lsls	r6, r0, #1
    5512: 9305         	str	r3, [sp, #20]
    5514: 3301         	adds	r3, #1
    5516: 9103         	str	r1, [sp, #12]
    5518: 9601         	str	r6, [sp, #4]
    551a: 9922         	ldr	r1, [sp, #136]
    551c: 9e09         	ldr	r6, [sp, #36]
    551e: 9306         	str	r3, [sp, #24]
    5520: 006b         	lsls	r3, r5, #1
    5522: 9d23         	ldr	r5, [sp, #140]
    5524: 9c02         	ldr	r4, [sp, #8]
    5526: 920e         	str	r2, [sp, #56]
    5528: eb0c 0802    	add.w	r8, r12, r2
    552c: ea21 70e1    	bic.w	r0, r1, r1, asr #31
    5530: 4416         	add	r6, r2
    5532: 1aaa         	subs	r2, r5, r2
    5534: 46ca         	mov	r10, r9
    5536: 4661         	mov	r1, r12
    5538: f8cd c04c    	str.w	r12, [sp, #76]
    553c: f8cd 9078    	str.w	r9, [sp, #120]
    5540: 930c         	str	r3, [sp, #48]
    5542: 9007         	str	r0, [sp, #28]
    5544: 9612         	str	r6, [sp, #72]
    5546: 9211         	str	r2, [sp, #68]
    5548: 46c1         	mov	r9, r8
    554a: 46bc         	mov	r12, r7
    554c: 2c00         	cmp	r4, #0
    554e: f000 81a2    	beq.w	0x5896 <arm_nn_vec_mat_mult_t_s8+0x3de> @ imm = #836
    5552: 6863         	ldr	r3, [r4, #4]
    5554: f854 2b08    	ldr	r2, [r4], #8
    5558: 9402         	str	r4, [sp, #8]
    555a: 9e01         	ldr	r6, [sp, #4]
    555c: 9f23         	ldr	r7, [sp, #140]
    555e: 9c09         	ldr	r4, [sp, #36]
    5560: 198d         	adds	r5, r1, r6
    5562: 950a         	str	r5, [sp, #40]
    5564: 9d0d         	ldr	r5, [sp, #52]
    5566: 19c8         	adds	r0, r1, r7
    5568: 2d00         	cmp	r5, #0
    556a: f000 80d3    	beq.w	0x5714 <arm_nn_vec_mat_mult_t_s8+0x25c> @ imm = #422
    556e: 462e         	mov	r6, r5
    5570: 1e6f         	subs	r7, r5, #1
    5572: f015 0503    	ands	r5, r5, #3
    5576: d055         	beq	0x5624 <arm_nn_vec_mat_mult_t_s8+0x16c> @ imm = #170
    5578: 2d01         	cmp	r5, #1
    557a: d037         	beq	0x55ec <arm_nn_vec_mat_mult_t_s8+0x134> @ imm = #110
    557c: 2d02         	cmp	r5, #2
    557e: d01a         	beq	0x55b6 <arm_nn_vec_mat_mult_t_s8+0xfe> @ imm = #52
    5580: f854 6b04    	ldr	r6, [r4], #4
    5584: fa2b f896    	sxtab16	r8, r11, r6, ror #8
    5588: fa2b f586    	sxtab16	r5, r11, r6
    558c: f851 6b04    	ldr	r6, [r1], #4
    5590: fa2f fe96    	sxtb16	lr, r6, ror #8
    5594: fa2f f686    	sxtb16	r6, r6
    5598: fb2e 2208    	smlad	r2, lr, r8, r2
    559c: fb26 2205    	smlad	r2, r6, r5, r2
    55a0: f850 6b04    	ldr	r6, [r0], #4
    55a4: fa2f fe96    	sxtb16	lr, r6, ror #8
    55a8: fa2f f686    	sxtb16	r6, r6
    55ac: fb2e 3308    	smlad	r3, lr, r8, r3
    55b0: fb26 3305    	smlad	r3, r6, r5, r3
    55b4: 463e         	mov	r6, r7
    55b6: f854 7b04    	ldr	r7, [r4], #4
    55ba: fa2b f897    	sxtab16	r8, r11, r7, ror #8
    55be: fa2b f587    	sxtab16	r5, r11, r7
    55c2: f851 7b04    	ldr	r7, [r1], #4
    55c6: fa2f fe97    	sxtb16	lr, r7, ror #8
    55ca: fa2f f787    	sxtb16	r7, r7
    55ce: fb2e 2208    	smlad	r2, lr, r8, r2
    55d2: fb27 2205    	smlad	r2, r7, r5, r2
    55d6: f850 7b04    	ldr	r7, [r0], #4
    55da: fa2f fe97    	sxtb16	lr, r7, ror #8
    55de: fa2f f787    	sxtb16	r7, r7
    55e2: fb2e 3308    	smlad	r3, lr, r8, r3
    55e6: fb27 3305    	smlad	r3, r7, r5, r3
    55ea: 3e01         	subs	r6, #1
    55ec: f854 5b04    	ldr	r5, [r4], #4
    55f0: fa2b f895    	sxtab16	r8, r11, r5, ror #8
    55f4: f851 7b04    	ldr	r7, [r1], #4
    55f8: fa2b f585    	sxtab16	r5, r11, r5
    55fc: fa2f fe97    	sxtb16	lr, r7, ror #8
    5600: fa2f f787    	sxtb16	r7, r7
    5604: fb2e 2208    	smlad	r2, lr, r8, r2
    5608: fb27 2205    	smlad	r2, r7, r5, r2
    560c: f850 7b04    	ldr	r7, [r0], #4
    5610: fa2f fe97    	sxtb16	lr, r7, ror #8
    5614: fa2f f787    	sxtb16	r7, r7
    5618: fb2e 3e08    	smlad	lr, lr, r8, r3
    561c: fb27 e305    	smlad	r3, r7, r5, lr
    5620: 3e01         	subs	r6, #1
    5622: d072         	beq	0x570a <arm_nn_vec_mat_mult_t_s8+0x252> @ imm = #228
    5624: e9cd a90f    	strd	r10, r9, [sp, #60]
    5628: f8cd c07c    	str.w	r12, [sp, #124]
    562c: 46a0         	mov	r8, r4
    562e: f858 5b04    	ldr	r5, [r8], #4
    5632: fa2b fa95    	sxtab16	r10, r11, r5, ror #8
    5636: 468e         	mov	lr, r1
    5638: fa2b f785    	sxtab16	r7, r11, r5
    563c: f85e 9b04    	ldr	r9, [lr], #4
    5640: fa2f fc99    	sxtb16	r12, r9, ror #8
    5644: fa2f f589    	sxtb16	r5, r9
    5648: fb2c 220a    	smlad	r2, r12, r10, r2
    564c: fb25 2507    	smlad	r5, r5, r7, r2
    5650: 4684         	mov	r12, r0
    5652: f85c 2b04    	ldr	r2, [r12], #4
    5656: fa2f f992    	sxtb16	r9, r2, ror #8
    565a: fa2f f282    	sxtb16	r2, r2
    565e: fb29 330a    	smlad	r3, r9, r10, r3
    5662: fb22 3207    	smlad	r2, r2, r7, r3
    5666: 6867         	ldr	r7, [r4, #4]
    5668: fa2b f997    	sxtab16	r9, r11, r7, ror #8
    566c: 684b         	ldr	r3, [r1, #4]
    566e: fa2b f787    	sxtab16	r7, r11, r7
    5672: fa2f fa93    	sxtb16	r10, r3, ror #8
    5676: fa2f f383    	sxtb16	r3, r3
    567a: fb2a 5509    	smlad	r5, r10, r9, r5
    567e: fb23 5307    	smlad	r3, r3, r7, r5
    5682: f8d0 a004    	ldr.w	r10, [r0, #4]
    5686: fa2f f59a    	sxtb16	r5, r10, ror #8
    568a: fa2f fa8a    	sxtb16	r10, r10
    568e: fb25 2209    	smlad	r2, r5, r9, r2
    5692: fb2a 2907    	smlad	r9, r10, r7, r2
    5696: f8d8 7004    	ldr.w	r7, [r8, #4]
    569a: fa2b f597    	sxtab16	r5, r11, r7, ror #8
    569e: f8de 8004    	ldr.w	r8, [lr, #4]
    56a2: fa2b fa87    	sxtab16	r10, r11, r7
    56a6: fa2f f298    	sxtb16	r2, r8, ror #8
    56aa: fa2f f788    	sxtb16	r7, r8
    56ae: fb22 3305    	smlad	r3, r2, r5, r3
    56b2: fb27 380a    	smlad	r8, r7, r10, r3
    56b6: f8dc e004    	ldr.w	lr, [r12, #4]
    56ba: fa2f f79e    	sxtb16	r7, lr, ror #8
    56be: fa2f fc8e    	sxtb16	r12, lr
    56c2: fb27 9905    	smlad	r9, r7, r5, r9
    56c6: fb2c 950a    	smlad	r5, r12, r10, r9
    56ca: 68e2         	ldr	r2, [r4, #12]
    56cc: 3410         	adds	r4, #16
    56ce: fa2b fa92    	sxtab16	r10, r11, r2, ror #8
    56d2: 68cb         	ldr	r3, [r1, #12]
    56d4: fa2b f782    	sxtab16	r7, r11, r2
    56d8: 3110         	adds	r1, #16
    56da: fa2f fe93    	sxtb16	lr, r3, ror #8
    56de: fa2f fc83    	sxtb16	r12, r3
    56e2: fb2e 820a    	smlad	r2, lr, r10, r8
    56e6: fb2c 2207    	smlad	r2, r12, r7, r2
    56ea: 68c3         	ldr	r3, [r0, #12]
    56ec: 3010         	adds	r0, #16
    56ee: fa2f fe93    	sxtb16	lr, r3, ror #8
    56f2: fa2f f883    	sxtb16	r8, r3
    56f6: fb2e 590a    	smlad	r9, lr, r10, r5
    56fa: fb28 9307    	smlad	r3, r8, r7, r9
    56fe: 3e04         	subs	r6, #4
    5700: d194         	bne	0x562c <arm_nn_vec_mat_mult_t_s8+0x174> @ imm = #-216
    5702: e9dd a90f    	ldrd	r10, r9, [sp, #60]
    5706: f8dd c07c    	ldr.w	r12, [sp, #124]
    570a: 9923         	ldr	r1, [sp, #140]
    570c: 9c12         	ldr	r4, [sp, #72]
    570e: eb01 0009    	add.w	r0, r1, r9
    5712: 4649         	mov	r1, r9
    5714: 9d23         	ldr	r5, [sp, #140]
    5716: 9e0e         	ldr	r6, [sp, #56]
    5718: 42b5         	cmp	r5, r6
    571a: dd66         	ble	0x57ea <arm_nn_vec_mat_mult_t_s8+0x332> @ imm = #204
    571c: 9d11         	ldr	r5, [sp, #68]
    571e: f015 0603    	ands	r6, r5, #3
    5722: eb04 0705    	add.w	r7, r4, r5
    5726: d026         	beq	0x5776 <arm_nn_vec_mat_mult_t_s8+0x2be> @ imm = #76
    5728: 2e01         	cmp	r6, #1
    572a: d017         	beq	0x575c <arm_nn_vec_mat_mult_t_s8+0x2a4> @ imm = #46
    572c: 2e02         	cmp	r6, #2
    572e: d00a         	beq	0x5746 <arm_nn_vec_mat_mult_t_s8+0x28e> @ imm = #20
    5730: f914 8b01    	ldrsb	r8, [r4], #1
    5734: f911 5b01    	ldrsb	r5, [r1], #1
    5738: f910 6b01    	ldrsb	r6, [r0], #1
    573c: 44e0         	add	r8, r12
    573e: fb08 2205    	mla	r2, r8, r5, r2
    5742: fb08 3306    	mla	r3, r8, r6, r3
    5746: f914 8b01    	ldrsb	r8, [r4], #1
    574a: f911 5b01    	ldrsb	r5, [r1], #1
    574e: f910 6b01    	ldrsb	r6, [r0], #1
    5752: 44e0         	add	r8, r12
    5754: fb08 2205    	mla	r2, r8, r5, r2
    5758: fb08 3306    	mla	r3, r8, r6, r3
    575c: f914 8b01    	ldrsb	r8, [r4], #1
    5760: f911 5b01    	ldrsb	r5, [r1], #1
    5764: f910 6b01    	ldrsb	r6, [r0], #1
    5768: 44e0         	add	r8, r12
    576a: 42bc         	cmp	r4, r7
    576c: fb08 2205    	mla	r2, r8, r5, r2
    5770: fb08 3306    	mla	r3, r8, r6, r3
    5774: d039         	beq	0x57ea <arm_nn_vec_mat_mult_t_s8+0x332> @ imm = #114
    5776: f8cd b03c    	str.w	r11, [sp, #60]
    577a: 46a3         	mov	r11, r4
    577c: 4688         	mov	r8, r1
    577e: f91b 6b01    	ldrsb	r6, [r11], #1
    5782: 4686         	mov	lr, r0
    5784: f99b 5001    	ldrsb.w	r5, [r11, #1]
    5788: f918 bb01    	ldrsb	r11, [r8], #1
    578c: 4466         	add	r6, r12
    578e: fb06 220b    	mla	r2, r6, r11, r2
    5792: f91e bb01    	ldrsb	r11, [lr], #1
    5796: f998 8001    	ldrsb.w	r8, [r8, #1]
    579a: f99e e001    	ldrsb.w	lr, [lr, #1]
    579e: fb06 330b    	mla	r3, r6, r11, r3
    57a2: f994 6001    	ldrsb.w	r6, [r4, #1]
    57a6: f991 b001    	ldrsb.w	r11, [r1, #1]
    57aa: 4466         	add	r6, r12
    57ac: fb06 220b    	mla	r2, r6, r11, r2
    57b0: 4465         	add	r5, r12
    57b2: fb05 2b08    	mla	r11, r5, r8, r2
    57b6: f990 2001    	ldrsb.w	r2, [r0, #1]
    57ba: fb06 3802    	mla	r8, r6, r2, r3
    57be: f994 6003    	ldrsb.w	r6, [r4, #3]
    57c2: f991 3003    	ldrsb.w	r3, [r1, #3]
    57c6: 4466         	add	r6, r12
    57c8: fb06 b203    	mla	r2, r6, r3, r11
    57cc: 3404         	adds	r4, #4
    57ce: f990 b003    	ldrsb.w	r11, [r0, #3]
    57d2: fb05 850e    	mla	r5, r5, lr, r8
    57d6: 42bc         	cmp	r4, r7
    57d8: f101 0104    	add.w	r1, r1, #4
    57dc: fb06 530b    	mla	r3, r6, r11, r5
    57e0: f100 0004    	add.w	r0, r0, #4
    57e4: d1c9         	bne	0x577a <arm_nn_vec_mat_mult_t_s8+0x2c2> @ imm = #-110
    57e6: f8dd b03c    	ldr.w	r11, [sp, #60]
    57ea: 9807         	ldr	r0, [sp, #28]
    57ec: 9c21         	ldr	r4, [sp, #132]
    57ee: 9e08         	ldr	r6, [sp, #32]
    57f0: 4082         	lsls	r2, r0
    57f2: f04f 4180    	mov.w	r1, #1073741824
    57f6: 2700         	movs	r7, #0
    57f8: fbc2 1704    	smlal	r1, r7, r2, r4
    57fc: 0fca         	lsrs	r2, r1, #31
    57fe: ea42 0547    	orr.w	r5, r2, r7, lsl #1
    5802: e9dd 8705    	ldrd	r8, r7, [sp, #20]
    5806: 9804         	ldr	r0, [sp, #16]
    5808: 9c07         	ldr	r4, [sp, #28]
    580a: fa55 f106    	asrs.w	r1, r5, r6
    580e: bf58         	it	pl
    5810: 4647         	movpl	r7, r8
    5812: 4005         	ands	r5, r0
    5814: 9e21         	ldr	r6, [sp, #132]
    5816: 9808         	ldr	r0, [sp, #32]
    5818: 42bd         	cmp	r5, r7
    581a: fa03 f304    	lsl.w	r3, r3, r4
    581e: f04f 4280    	mov.w	r2, #1073741824
    5822: f04f 0500    	mov.w	r5, #0
    5826: fbc3 2506    	smlal	r2, r5, r3, r6
    582a: ea4f 73d2    	lsr.w	r3, r2, #31
    582e: e9dd 8205    	ldrd	r8, r2, [sp, #20]
    5832: ea43 0745    	orr.w	r7, r3, r5, lsl #1
    5836: 9c04         	ldr	r4, [sp, #16]
    5838: 9e20         	ldr	r6, [sp, #128]
    583a: 9b25         	ldr	r3, [sp, #148]
    583c: bfc8         	it	gt
    583e: 3101         	addgt	r1, #1
    5840: fa57 f500    	asrs.w	r5, r7, r0
    5844: bf58         	it	pl
    5846: 4642         	movpl	r2, r8
    5848: 4027         	ands	r7, r4
    584a: 4297         	cmp	r7, r2
    584c: 4431         	add	r1, r6
    584e: bfc8         	it	gt
    5850: 3501         	addgt	r5, #1
    5852: 4435         	add	r5, r6
    5854: 9f26         	ldr	r7, [sp, #152]
    5856: 9803         	ldr	r0, [sp, #12]
    5858: 9a0b         	ldr	r2, [sp, #44]
    585a: 9c01         	ldr	r4, [sp, #4]
    585c: 4299         	cmp	r1, r3
    585e: bfb8         	it	lt
    5860: 4619         	movlt	r1, r3
    5862: 429d         	cmp	r5, r3
    5864: bfb8         	it	lt
    5866: 461d         	movlt	r5, r3
    5868: 42b9         	cmp	r1, r7
    586a: bfa8         	it	ge
    586c: 4639         	movge	r1, r7
    586e: f88a 1000    	strb.w	r1, [r10]
    5872: 42bd         	cmp	r5, r7
    5874: 9927         	ldr	r1, [sp, #156]
    5876: bfa8         	it	ge
    5878: 463d         	movge	r5, r7
    587a: f80a 5001    	strb.w	r5, [r10, r1]
    587e: 3001         	adds	r0, #1
    5880: 9d0c         	ldr	r5, [sp, #48]
    5882: 9003         	str	r0, [sp, #12]
    5884: 4282         	cmp	r2, r0
    5886: 44aa         	add	r10, r5
    5888: 44a1         	add	r9, r4
    588a: dd07         	ble	0x589c <arm_nn_vec_mat_mult_t_s8+0x3e4> @ imm = #14
    588c: 9c02         	ldr	r4, [sp, #8]
    588e: 990a         	ldr	r1, [sp, #40]
    5890: 2c00         	cmp	r4, #0
    5892: f47f ae5e    	bne.w	0x5552 <arm_nn_vec_mat_mult_t_s8+0x9a> @ imm = #-836
    5896: 4622         	mov	r2, r4
    5898: 4623         	mov	r3, r4
    589a: e65e         	b	0x555a <arm_nn_vec_mat_mult_t_s8+0xa2> @ imm = #-836
    589c: f8dd 9078    	ldr.w	r9, [sp, #120]
    58a0: 9e01         	ldr	r6, [sp, #4]
    58a2: 9b0c         	ldr	r3, [sp, #48]
    58a4: 9c24         	ldr	r4, [sp, #144]
    58a6: 4667         	mov	r7, r12
    58a8: f8dd c04c    	ldr.w	r12, [sp, #76]
    58ac: fb02 9903    	mla	r9, r2, r3, r9
    58b0: fb02 cc06    	mla	r12, r2, r6, r12
    58b4: 07e3         	lsls	r3, r4, #31
    58b6: f140 8151    	bpl.w	0x5b5c <arm_nn_vec_mat_mult_t_s8+0x6a4> @ imm = #674
    58ba: 9b02         	ldr	r3, [sp, #8]
    58bc: b103         	cbz	r3, 0x58c0 <arm_nn_vec_mat_mult_t_s8+0x408> @ imm = #0
    58be: 681b         	ldr	r3, [r3]
    58c0: 9d23         	ldr	r5, [sp, #140]
    58c2: 2d00         	cmp	r5, #0
    58c4: bfb8         	it	lt
    58c6: 3503         	addlt	r5, #3
    58c8: ea5f 0ea5    	asrs.w	lr, r5, #2
    58cc: bf08         	it	eq
    58ce: 4675         	moveq	r5, lr
    58d0: d07f         	beq	0x59d2 <arm_nn_vec_mat_mult_t_s8+0x51a> @ imm = #254
    58d2: f01e 0203    	ands	r2, lr, #3
    58d6: 9809         	ldr	r0, [sp, #36]
    58d8: 4661         	mov	r1, r12
    58da: 46f0         	mov	r8, lr
    58dc: f10e 35ff    	add.w	r5, lr, #4294967295
    58e0: d029         	beq	0x5936 <arm_nn_vec_mat_mult_t_s8+0x47e> @ imm = #82
    58e2: 2a01         	cmp	r2, #1
    58e4: d014         	beq	0x5910 <arm_nn_vec_mat_mult_t_s8+0x458> @ imm = #40
    58e6: 2a02         	cmp	r2, #2
    58e8: f040 813c    	bne.w	0x5b64 <arm_nn_vec_mat_mult_t_s8+0x6ac> @ imm = #632
    58ec: f850 5b04    	ldr	r5, [r0], #4
    58f0: fa2b fa95    	sxtab16	r10, r11, r5, ror #8
    58f4: fa2b f685    	sxtab16	r6, r11, r5
    58f8: f851 4b04    	ldr	r4, [r1], #4
    58fc: fa2f f594    	sxtb16	r5, r4, ror #8
    5900: fa2f f284    	sxtb16	r2, r4
    5904: fb25 330a    	smlad	r3, r5, r10, r3
    5908: fb22 3306    	smlad	r3, r2, r6, r3
    590c: f108 38ff    	add.w	r8, r8, #4294967295
    5910: f850 ab04    	ldr	r10, [r0], #4
    5914: fa2b f69a    	sxtab16	r6, r11, r10, ror #8
    5918: f851 2b04    	ldr	r2, [r1], #4
    591c: fa2b f48a    	sxtab16	r4, r11, r10
    5920: fa2f f592    	sxtb16	r5, r2, ror #8
    5924: fa2f fa82    	sxtb16	r10, r2
    5928: fb25 3306    	smlad	r3, r5, r6, r3
    592c: fb2a 3304    	smlad	r3, r10, r4, r3
    5930: f1b8 0801    	subs.w	r8, r8, #1
    5934: d045         	beq	0x59c2 <arm_nn_vec_mat_mult_t_s8+0x50a> @ imm = #138
    5936: f8cd e004    	str.w	lr, [sp, #4]
    593a: 4686         	mov	lr, r0
    593c: f85e 6b04    	ldr	r6, [lr], #4
    5940: fa2b fa96    	sxtab16	r10, r11, r6, ror #8
    5944: fa2b f486    	sxtab16	r4, r11, r6
    5948: 460e         	mov	r6, r1
    594a: f856 2b04    	ldr	r2, [r6], #4
    594e: fa2f f592    	sxtb16	r5, r2, ror #8
    5952: fa2f f282    	sxtb16	r2, r2
    5956: fb25 330a    	smlad	r3, r5, r10, r3
    595a: fb22 3304    	smlad	r3, r2, r4, r3
    595e: 6844         	ldr	r4, [r0, #4]
    5960: fa2b fa94    	sxtab16	r10, r11, r4, ror #8
    5964: fa2b f584    	sxtab16	r5, r11, r4
    5968: 684c         	ldr	r4, [r1, #4]
    596a: fa2f f294    	sxtb16	r2, r4, ror #8
    596e: fa2f f484    	sxtb16	r4, r4
    5972: fb22 330a    	smlad	r3, r2, r10, r3
    5976: fb24 3a05    	smlad	r10, r4, r5, r3
    597a: f8de 2004    	ldr.w	r2, [lr, #4]
    597e: fa2b fe92    	sxtab16	lr, r11, r2, ror #8
    5982: 6875         	ldr	r5, [r6, #4]
    5984: fa2b f482    	sxtab16	r4, r11, r2
    5988: fa2f f695    	sxtb16	r6, r5, ror #8
    598c: fa2f f385    	sxtb16	r3, r5
    5990: fb26 aa0e    	smlad	r10, r6, lr, r10
    5994: fb23 a204    	smlad	r2, r3, r4, r10
    5998: 68c5         	ldr	r5, [r0, #12]
    599a: 3010         	adds	r0, #16
    599c: fa2b fe95    	sxtab16	lr, r11, r5, ror #8
    59a0: 68ce         	ldr	r6, [r1, #12]
    59a2: fa2b f485    	sxtab16	r4, r11, r5
    59a6: 3110         	adds	r1, #16
    59a8: fa2f fa96    	sxtb16	r10, r6, ror #8
    59ac: fa2f f386    	sxtb16	r3, r6
    59b0: fb2a 220e    	smlad	r2, r10, lr, r2
    59b4: fb23 2304    	smlad	r3, r3, r4, r2
    59b8: f1b8 0804    	subs.w	r8, r8, #4
    59bc: d1bd         	bne	0x593a <arm_nn_vec_mat_mult_t_s8+0x482> @ imm = #-134
    59be: f8dd e004    	ldr.w	lr, [sp, #4]
    59c2: 9809         	ldr	r0, [sp, #36]
    59c4: eb00 018e    	add.w	r1, r0, lr, lsl #2
    59c8: eb0c 0c8e    	add.w	r12, r12, lr, lsl #2
    59cc: 9109         	str	r1, [sp, #36]
    59ce: ea4f 058e    	lsl.w	r5, lr, #2
    59d2: 9c23         	ldr	r4, [sp, #140]
    59d4: 42ac         	cmp	r4, r5
    59d6: f340 8095    	ble.w	0x5b04 <arm_nn_vec_mat_mult_t_s8+0x64c> @ imm = #298
    59da: 1b66         	subs	r6, r4, r5
    59dc: 9909         	ldr	r1, [sp, #36]
    59de: f016 0207    	ands	r2, r6, #7
    59e2: eb01 0006    	add.w	r0, r1, r6
    59e6: f000 80cf    	beq.w	0x5b88 <arm_nn_vec_mat_mult_t_s8+0x6d0> @ imm = #414
    59ea: 2a01         	cmp	r2, #1
    59ec: d03e         	beq	0x5a6c <arm_nn_vec_mat_mult_t_s8+0x5b4> @ imm = #124
    59ee: 2a02         	cmp	r2, #2
    59f0: d033         	beq	0x5a5a <arm_nn_vec_mat_mult_t_s8+0x5a2> @ imm = #102
    59f2: 2a03         	cmp	r2, #3
    59f4: d028         	beq	0x5a48 <arm_nn_vec_mat_mult_t_s8+0x590> @ imm = #80
    59f6: 2a04         	cmp	r2, #4
    59f8: d01d         	beq	0x5a36 <arm_nn_vec_mat_mult_t_s8+0x57e> @ imm = #58
    59fa: 2a05         	cmp	r2, #5
    59fc: d012         	beq	0x5a24 <arm_nn_vec_mat_mult_t_s8+0x56c> @ imm = #36
    59fe: 2a06         	cmp	r2, #6
    5a00: d007         	beq	0x5a12 <arm_nn_vec_mat_mult_t_s8+0x55a> @ imm = #14
    5a02: f911 bb01    	ldrsb	r11, [r1], #1
    5a06: f91c 5b01    	ldrsb	r5, [r12], #1
    5a0a: 9109         	str	r1, [sp, #36]
    5a0c: 44bb         	add	r11, r7
    5a0e: fb0b 3305    	mla	r3, r11, r5, r3
    5a12: 9c09         	ldr	r4, [sp, #36]
    5a14: f91c 6b01    	ldrsb	r6, [r12], #1
    5a18: f914 8b01    	ldrsb	r8, [r4], #1
    5a1c: 9409         	str	r4, [sp, #36]
    5a1e: 44b8         	add	r8, r7
    5a20: fb08 3306    	mla	r3, r8, r6, r3
    5a24: 9909         	ldr	r1, [sp, #36]
    5a26: f91c 2b01    	ldrsb	r2, [r12], #1
    5a2a: f911 ab01    	ldrsb	r10, [r1], #1
    5a2e: 9109         	str	r1, [sp, #36]
    5a30: 44ba         	add	r10, r7
    5a32: fb0a 3302    	mla	r3, r10, r2, r3
    5a36: 9d09         	ldr	r5, [sp, #36]
    5a38: f91c 4b01    	ldrsb	r4, [r12], #1
    5a3c: f915 bb01    	ldrsb	r11, [r5], #1
    5a40: 9509         	str	r5, [sp, #36]
    5a42: 44bb         	add	r11, r7
    5a44: fb0b 3304    	mla	r3, r11, r4, r3
    5a48: 9e09         	ldr	r6, [sp, #36]
    5a4a: f91c 1b01    	ldrsb	r1, [r12], #1
    5a4e: f916 8b01    	ldrsb	r8, [r6], #1
    5a52: 9609         	str	r6, [sp, #36]
    5a54: 44b8         	add	r8, r7
    5a56: fb08 3301    	mla	r3, r8, r1, r3
    5a5a: 9d09         	ldr	r5, [sp, #36]
    5a5c: f91c 2b01    	ldrsb	r2, [r12], #1
    5a60: f915 ab01    	ldrsb	r10, [r5], #1
    5a64: 9509         	str	r5, [sp, #36]
    5a66: 44ba         	add	r10, r7
    5a68: fb0a 3302    	mla	r3, r10, r2, r3
    5a6c: 9c09         	ldr	r4, [sp, #36]
    5a6e: f91c 6b01    	ldrsb	r6, [r12], #1
    5a72: f914 2b01    	ldrsb	r2, [r4], #1
    5a76: 9409         	str	r4, [sp, #36]
    5a78: 443a         	add	r2, r7
    5a7a: 4284         	cmp	r4, r0
    5a7c: fb02 3306    	mla	r3, r2, r6, r3
    5a80: bf18         	it	ne
    5a82: 4622         	movne	r2, r4
    5a84: d03e         	beq	0x5b04 <arm_nn_vec_mat_mult_t_s8+0x64c> @ imm = #124
    5a86: 4693         	mov	r11, r2
    5a88: 46e0         	mov	r8, r12
    5a8a: f91b 5b01    	ldrsb	r5, [r11], #1
    5a8e: f918 4b01    	ldrsb	r4, [r8], #1
    5a92: f99b 1001    	ldrsb.w	r1, [r11, #1]
    5a96: f992 b001    	ldrsb.w	r11, [r2, #1]
    5a9a: f99c 6001    	ldrsb.w	r6, [r12, #1]
    5a9e: f998 a001    	ldrsb.w	r10, [r8, #1]
    5aa2: 443d         	add	r5, r7
    5aa4: fb05 3304    	mla	r3, r5, r4, r3
    5aa8: 44bb         	add	r11, r7
    5aaa: fb0b 3506    	mla	r5, r11, r6, r3
    5aae: 4439         	add	r1, r7
    5ab0: fb01 580a    	mla	r8, r1, r10, r5
    5ab4: f992 1003    	ldrsb.w	r1, [r2, #3]
    5ab8: f99c 4003    	ldrsb.w	r4, [r12, #3]
    5abc: f992 a004    	ldrsb.w	r10, [r2, #4]
    5ac0: f99c 6004    	ldrsb.w	r6, [r12, #4]
    5ac4: f992 b005    	ldrsb.w	r11, [r2, #5]
    5ac8: 4439         	add	r1, r7
    5aca: fb01 8304    	mla	r3, r1, r4, r8
    5ace: 44ba         	add	r10, r7
    5ad0: fb0a 3506    	mla	r5, r10, r6, r3
    5ad4: f99c 1005    	ldrsb.w	r1, [r12, #5]
    5ad8: f992 3006    	ldrsb.w	r3, [r2, #6]
    5adc: f992 a007    	ldrsb.w	r10, [r2, #7]
    5ae0: f99c 4006    	ldrsb.w	r4, [r12, #6]
    5ae4: 44bb         	add	r11, r7
    5ae6: fb0b 5801    	mla	r8, r11, r1, r5
    5aea: 443b         	add	r3, r7
    5aec: f99c 5007    	ldrsb.w	r5, [r12, #7]
    5af0: 3208         	adds	r2, #8
    5af2: fb03 8604    	mla	r6, r3, r4, r8
    5af6: 44ba         	add	r10, r7
    5af8: 4282         	cmp	r2, r0
    5afa: fb0a 6305    	mla	r3, r10, r5, r6
    5afe: f10c 0c08    	add.w	r12, r12, #8
    5b02: d1c0         	bne	0x5a86 <arm_nn_vec_mat_mult_t_s8+0x5ce> @ imm = #-128
    5b04: 9f22         	ldr	r7, [sp, #136]
    5b06: 9922         	ldr	r1, [sp, #136]
    5b08: 9c21         	ldr	r4, [sp, #132]
    5b0a: ea27 70e7    	bic.w	r0, r7, r7, asr #31
    5b0e: fa03 f200    	lsl.w	r2, r3, r0
    5b12: f04f 4580    	mov.w	r5, #1073741824
    5b16: 424b         	rsbs	r3, r1, #0
    5b18: 2700         	movs	r7, #0
    5b1a: fbc2 5704    	smlal	r5, r7, r2, r4
    5b1e: ea23 76e3    	bic.w	r6, r3, r3, asr #31
    5b22: 2201         	movs	r2, #1
    5b24: 0fe8         	lsrs	r0, r5, #31
    5b26: 40b2         	lsls	r2, r6
    5b28: ea40 0147    	orr.w	r1, r0, r7, lsl #1
    5b2c: 1e53         	subs	r3, r2, #1
    5b2e: fa51 f606    	asrs.w	r6, r1, r6
    5b32: ea4f 0763    	asr.w	r7, r3, #1
    5b36: ea01 0503    	and.w	r5, r1, r3
    5b3a: bf48         	it	mi
    5b3c: 3701         	addmi	r7, #1
    5b3e: 42bd         	cmp	r5, r7
    5b40: 9c20         	ldr	r4, [sp, #128]
    5b42: 9825         	ldr	r0, [sp, #148]
    5b44: 9926         	ldr	r1, [sp, #152]
    5b46: bfc8         	it	gt
    5b48: 3601         	addgt	r6, #1
    5b4a: 4426         	add	r6, r4
    5b4c: 4286         	cmp	r6, r0
    5b4e: bfb8         	it	lt
    5b50: 4606         	movlt	r6, r0
    5b52: 428e         	cmp	r6, r1
    5b54: bfa8         	it	ge
    5b56: 460e         	movge	r6, r1
    5b58: f889 6000    	strb.w	r6, [r9]
    5b5c: 2000         	movs	r0, #0
    5b5e: b015         	add	sp, #84
    5b60: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    5b64: f850 4b04    	ldr	r4, [r0], #4
    5b68: fa2b fa94    	sxtab16	r10, r11, r4, ror #8
    5b6c: f851 8b04    	ldr	r8, [r1], #4
    5b70: fa2b f684    	sxtab16	r6, r11, r4
    5b74: fa2f f498    	sxtb16	r4, r8, ror #8
    5b78: fa2f f288    	sxtb16	r2, r8
    5b7c: fb24 330a    	smlad	r3, r4, r10, r3
    5b80: fb22 3306    	smlad	r3, r2, r6, r3
    5b84: 46a8         	mov	r8, r5
    5b86: e6b1         	b	0x58ec <arm_nn_vec_mat_mult_t_s8+0x434> @ imm = #-670
    5b88: 460a         	mov	r2, r1
    5b8a: e77c         	b	0x5a86 <arm_nn_vec_mat_mult_t_s8+0x5ce> @ imm = #-264

00005b8c <fmin>:
; fmin():
    5b8c: b538         	push	{r3, r4, r5, lr}
    5b8e: ed2d 8b02    	vpush	{d8}
    5b92: eeb0 8a41    	vmov.f32	s16, s2
    5b96: eef0 8a61    	vmov.f32	s17, s3
    5b9a: ec55 4b10    	vmov	r4, r5, d0
    5b9e: f000 f81d    	bl	0x5bdc <__fpclassifyd>  @ imm = #58
    5ba2: b930         	cbnz	r0, 0x5bb2 <fmin+0x26>  @ imm = #12
    5ba4: eeb0 0a48    	vmov.f32	s0, s16
    5ba8: eef0 0a68    	vmov.f32	s1, s17
    5bac: ecbd 8b02    	vpop	{d8}
    5bb0: bd38         	pop	{r3, r4, r5, pc}
    5bb2: eeb0 0a48    	vmov.f32	s0, s16
    5bb6: eef0 0a68    	vmov.f32	s1, s17
    5bba: f000 f80f    	bl	0x5bdc <__fpclassifyd>  @ imm = #30
    5bbe: b138         	cbz	r0, 0x5bd0 <fmin+0x44>  @ imm = #14
    5bc0: ec53 2b18    	vmov	r2, r3, d8
    5bc4: 4620         	mov	r0, r4
    5bc6: 4629         	mov	r1, r5
    5bc8: f001 fb5e    	bl	0x7288 <__aeabi_dcmplt> @ imm = #5820
    5bcc: 2800         	cmp	r0, #0
    5bce: d0e9         	beq	0x5ba4 <fmin+0x18>      @ imm = #-46
    5bd0: ecbd 8b02    	vpop	{d8}
    5bd4: ec45 4b10    	vmov	d0, r4, r5
    5bd8: bd38         	pop	{r3, r4, r5, pc}
    5bda: bf00         	nop

00005bdc <__fpclassifyd>:
; __fpclassifyd():
    5bdc: ec53 2b10    	vmov	r2, r3, d0
    5be0: 2b00         	cmp	r3, #0
    5be2: 4610         	mov	r0, r2
    5be4: d00b         	beq	0x5bfe <__fpclassifyd+0x22> @ imm = #22
    5be6: f1b3 4f00    	cmp.w	r3, #2147483648
    5bea: d008         	beq	0x5bfe <__fpclassifyd+0x22> @ imm = #16
    5bec: 4910         	ldr	r1, [pc, #64]           @ 0x5c30 <$d>
    5bee: f023 4200    	bic	r2, r3, #2147483648
    5bf2: f5a2 1c80    	sub.w	r12, r2, #1048576
    5bf6: 458c         	cmp	r12, r1
    5bf8: d806         	bhi	0x5c08 <__fpclassifyd+0x2c> @ imm = #12
    5bfa: 2004         	movs	r0, #4
    5bfc: 4770         	bx	lr
    5bfe: 2800         	cmp	r0, #0
    5c00: bf0c         	ite	eq
    5c02: 2002         	moveq	r0, #2
    5c04: 2003         	movne	r0, #3
    5c06: 4770         	bx	lr
    5c08: f5b3 1f80    	cmp.w	r3, #1048576
    5c0c: d30d         	blo	0x5c2a <__fpclassifyd+0x4e> @ imm = #26
    5c0e: f103 4300    	add.w	r3, r3, #2147483648
    5c12: f5b3 1f80    	cmp.w	r3, #1048576
    5c16: d308         	blo	0x5c2a <__fpclassifyd+0x4e> @ imm = #16
    5c18: 4b06         	ldr	r3, [pc, #24]           @ 0x5c34 <$d+0x4>
    5c1a: 429a         	cmp	r2, r3
    5c1c: d001         	beq	0x5c22 <__fpclassifyd+0x46> @ imm = #2
    5c1e: 2000         	movs	r0, #0
    5c20: 4770         	bx	lr
    5c22: fab0 f080    	clz	r0, r0
    5c26: 0940         	lsrs	r0, r0, #5
    5c28: 4770         	bx	lr
    5c2a: 2003         	movs	r0, #3
    5c2c: 4770         	bx	lr
    5c2e: bf00         	nop

00005c30 <$d>:
    5c30: ff ff df 7f  	.word	0x7fdfffff
    5c34: 00 00 f0 7f  	.word	0x7ff00000

00005c38 <sinf>:
; sinf():
    5c38: ee10 3a10    	vmov	r3, s0
    5c3c: 4919         	ldr	r1, [pc, #100]          @ 0x5ca4 <$d>
    5c3e: f023 4200    	bic	r2, r3, #2147483648
    5c42: 428a         	cmp	r2, r1
    5c44: d91b         	bls	0x5c7e <sinf+0x46>      @ imm = #54
    5c46: f1b2 4fff    	cmp.w	r2, #2139095040
    5c4a: d302         	blo	0x5c52 <sinf+0x1a>      @ imm = #4
    5c4c: ee30 0a40    	vsub.f32	s0, s0, s0
    5c50: 4770         	bx	lr
    5c52: b500         	push	{lr}
    5c54: b083         	sub	sp, #12
    5c56: 4668         	mov	r0, sp
    5c58: f000 f99c    	bl	0x5f94 <__ieee754_rem_pio2f> @ imm = #824
    5c5c: f000 0003    	and	r0, r0, #3
    5c60: 2801         	cmp	r0, #1
    5c62: eddd 0a01    	vldr	s1, [sp, #4]
    5c66: ed9d 0a00    	vldr	s0, [sp]
    5c6a: d013         	beq	0x5c94 <sinf+0x5c>      @ imm = #38
    5c6c: 2802         	cmp	r0, #2
    5c6e: d00b         	beq	0x5c88 <sinf+0x50>      @ imm = #22
    5c70: b998         	cbnz	r0, 0x5c9a <sinf+0x62>  @ imm = #38
    5c72: 2001         	movs	r0, #1
    5c74: f000 f8ce    	bl	0x5e14 <__kernel_sinf>  @ imm = #412
    5c78: b003         	add	sp, #12
    5c7a: f85d fb04    	ldr	pc, [sp], #4
    5c7e: eddf 0a0a    	vldr	s1, [pc, #40]           @ 0x5ca8 <$d+0x4>
    5c82: 2000         	movs	r0, #0
    5c84: f000 b8c6    	b.w	0x5e14 <__kernel_sinf>  @ imm = #396
    5c88: 2001         	movs	r0, #1
    5c8a: f000 f8c3    	bl	0x5e14 <__kernel_sinf>  @ imm = #390
    5c8e: eeb1 0a40    	vneg.f32	s0, s0
    5c92: e7f1         	b	0x5c78 <sinf+0x40>      @ imm = #-30
    5c94: f000 f83c    	bl	0x5d10 <__kernel_cosf>  @ imm = #120
    5c98: e7ee         	b	0x5c78 <sinf+0x40>      @ imm = #-36
    5c9a: f000 f839    	bl	0x5d10 <__kernel_cosf>  @ imm = #114
    5c9e: eeb1 0a40    	vneg.f32	s0, s0
    5ca2: e7e9         	b	0x5c78 <sinf+0x40>      @ imm = #-46

00005ca4 <$d>:
    5ca4: d8 0f 49 3f  	.word	0x3f490fd8
    5ca8: 00 00 00 00  	.word	0x00000000

00005cac <frexp>:
; frexp():
    5cac: b570         	push	{r4, r5, r6, lr}
    5cae: ec55 4b10    	vmov	r4, r5, d0
    5cb2: 4606         	mov	r6, r0
    5cb4: 4813         	ldr	r0, [pc, #76]           @ 0x5d04 <$d>
    5cb6: f025 4300    	bic	r3, r5, #2147483648
    5cba: 2100         	movs	r1, #0
    5cbc: 4283         	cmp	r3, r0
    5cbe: 6031         	str	r1, [r6]
    5cc0: d81d         	bhi	0x5cfe <frexp+0x52>     @ imm = #58
    5cc2: 4620         	mov	r0, r4
    5cc4: 4318         	orrs	r0, r3
    5cc6: d01a         	beq	0x5cfe <frexp+0x52>     @ imm = #52
    5cc8: 480f         	ldr	r0, [pc, #60]           @ 0x5d08 <$d+0x4>
    5cca: 4028         	ands	r0, r5
    5ccc: 462a         	mov	r2, r5
    5cce: b958         	cbnz	r0, 0x5ce8 <frexp+0x3c> @ imm = #22
    5cd0: 4b0e         	ldr	r3, [pc, #56]           @ 0x5d0c <$d+0x8>
    5cd2: 2200         	movs	r2, #0
    5cd4: 4620         	mov	r0, r4
    5cd6: 4629         	mov	r1, r5
    5cd8: f001 f864    	bl	0x6da4 <__muldf3>       @ imm = #4296
    5cdc: 460a         	mov	r2, r1
    5cde: f021 4300    	bic	r3, r1, #2147483648
    5ce2: 4604         	mov	r4, r0
    5ce4: f06f 0135    	mvn	r1, #53
    5ce8: 151b         	asrs	r3, r3, #20
    5cea: f36f 521e    	bfc	r2, #20, #11
    5cee: f2a3 33fe    	subw	r3, r3, #1022
    5cf2: f042 557f    	orr	r5, r2, #1069547520
    5cf6: 440b         	add	r3, r1
    5cf8: f445 1500    	orr	r5, r5, #2097152
    5cfc: 6033         	str	r3, [r6]
    5cfe: ec45 4b10    	vmov	d0, r4, r5
    5d02: bd70         	pop	{r4, r5, r6, pc}

00005d04 <$d>:
    5d04: ff ff ef 7f  	.word	0x7fefffff
    5d08: 00 00 f0 7f  	.word	0x7ff00000
    5d0c: 00 00 50 43  	.word	0x43500000

00005d10 <__kernel_cosf>:
; __kernel_cosf():
    5d10: ee10 3a10    	vmov	r3, s0
    5d14: f023 4300    	bic	r3, r3, #2147483648
    5d18: f1b3 5f48    	cmp.w	r3, #838860800
    5d1c: d22c         	bhs	0x5d78 <__kernel_cosf+0x68> @ imm = #88
    5d1e: eefd 7ac0    	vcvt.s32.f32	s15, s0
    5d22: ee17 3a90    	vmov	r3, s15
    5d26: 2b00         	cmp	r3, #0
    5d28: d060         	beq	0x5dec <__kernel_cosf+0xdc> @ imm = #192
    5d2a: ee60 7a00    	vmul.f32	s15, s0, s0
    5d2e: ed9f 7a31    	vldr	s14, [pc, #196]         @ 0x5df4 <$d>
    5d32: ed9f 5a31    	vldr	s10, [pc, #196]         @ 0x5df8 <$d+0x4>
    5d36: eddf 5a31    	vldr	s11, [pc, #196]         @ 0x5dfc <$d+0x8>
    5d3a: ed9f 6a31    	vldr	s12, [pc, #196]         @ 0x5e00 <$d+0xc>
    5d3e: eddf 6a31    	vldr	s13, [pc, #196]         @ 0x5e04 <$d+0x10>
    5d42: eea7 5a87    	vfma.f32	s10, s15, s14
    5d46: ed9f 7a30    	vldr	s14, [pc, #192]         @ 0x5e08 <$d+0x14>
    5d4a: eee7 5a85    	vfma.f32	s11, s15, s10
    5d4e: eea7 6aa5    	vfma.f32	s12, s15, s11
    5d52: eea7 7a86    	vfma.f32	s14, s15, s12
    5d56: eee7 6a87    	vfma.f32	s13, s15, s14
    5d5a: ee67 6aa6    	vmul.f32	s13, s15, s13
    5d5e: ee60 0ac0    	vnmul.f32	s1, s1, s0
    5d62: eeb6 7a00    	vmov.f32	s14, #5.000000e-01
    5d66: eee7 0aa6    	vfma.f32	s1, s15, s13
    5d6a: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5d6e: eed7 0a87    	vfnms.f32	s1, s15, s14
    5d72: ee30 0a60    	vsub.f32	s0, s0, s1
    5d76: 4770         	bx	lr
    5d78: ee60 7a00    	vmul.f32	s15, s0, s0
    5d7c: ed9f 7a1d    	vldr	s14, [pc, #116]         @ 0x5df4 <$d>
    5d80: ed9f 5a1d    	vldr	s10, [pc, #116]         @ 0x5df8 <$d+0x4>
    5d84: eddf 5a1d    	vldr	s11, [pc, #116]         @ 0x5dfc <$d+0x8>
    5d88: ed9f 6a1d    	vldr	s12, [pc, #116]         @ 0x5e00 <$d+0xc>
    5d8c: eddf 6a1d    	vldr	s13, [pc, #116]         @ 0x5e04 <$d+0x10>
    5d90: 4a1e         	ldr	r2, [pc, #120]          @ 0x5e0c <$d+0x18>
    5d92: eea7 5a87    	vfma.f32	s10, s15, s14
    5d96: 4293         	cmp	r3, r2
    5d98: ed9f 7a1b    	vldr	s14, [pc, #108]         @ 0x5e08 <$d+0x14>
    5d9c: eee5 5a27    	vfma.f32	s11, s10, s15
    5da0: eea5 6aa7    	vfma.f32	s12, s11, s15
    5da4: eea6 7a27    	vfma.f32	s14, s12, s15
    5da8: eee7 6a27    	vfma.f32	s13, s14, s15
    5dac: ee66 6aa7    	vmul.f32	s13, s13, s15
    5db0: d9d5         	bls	0x5d5e <__kernel_cosf+0x4e> @ imm = #-86
    5db2: 4a17         	ldr	r2, [pc, #92]           @ 0x5e10 <$d+0x1c>
    5db4: 4293         	cmp	r3, r2
    5db6: d814         	bhi	0x5de2 <__kernel_cosf+0xd2> @ imm = #40
    5db8: f103 437f    	add.w	r3, r3, #4278190080
    5dbc: ee07 3a10    	vmov	s14, r3
    5dc0: eeb7 6a00    	vmov.f32	s12, #1.000000e+00
    5dc4: ee36 6a47    	vsub.f32	s12, s12, s14
    5dc8: ee60 0ac0    	vnmul.f32	s1, s1, s0
    5dcc: eef6 5a00    	vmov.f32	s11, #5.000000e-01
    5dd0: ee97 7aa5    	vfnms.f32	s14, s15, s11
    5dd4: eee7 0aa6    	vfma.f32	s1, s15, s13
    5dd8: ee37 7a60    	vsub.f32	s14, s14, s1
    5ddc: ee36 0a47    	vsub.f32	s0, s12, s14
    5de0: 4770         	bx	lr
    5de2: eeb6 6a07    	vmov.f32	s12, #7.187500e-01
    5de6: eeb5 7a02    	vmov.f32	s14, #2.812500e-01
    5dea: e7ed         	b	0x5dc8 <__kernel_cosf+0xb8> @ imm = #-38
    5dec: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    5df0: 4770         	bx	lr
    5df2: bf00         	nop

00005df4 <$d>:
    5df4: 4e d7 47 ad  	.word	0xad47d74e
    5df8: f6 74 0f 31  	.word	0x310f74f6
    5dfc: 7c f2 93 b4  	.word	0xb493f27c
    5e00: 01 0d d0 37  	.word	0x37d00d01
    5e04: ab aa 2a 3d  	.word	0x3d2aaaab
    5e08: 61 0b b6 ba  	.word	0xbab60b61
    5e0c: 99 99 99 3e  	.word	0x3e999999
    5e10: 00 00 48 3f  	.word	0x3f480000

00005e14 <__kernel_sinf>:
; __kernel_sinf():
    5e14: ee10 3a10    	vmov	r3, s0
    5e18: f023 4300    	bic	r3, r3, #2147483648
    5e1c: f1b3 5f48    	cmp.w	r3, #838860800
    5e20: d204         	bhs	0x5e2c <__kernel_sinf+0x18> @ imm = #8
    5e22: eefd 7ac0    	vcvt.s32.f32	s15, s0
    5e26: ee17 3a90    	vmov	r3, s15
    5e2a: b35b         	cbz	r3, 0x5e84 <__kernel_sinf+0x70> @ imm = #86
    5e2c: ee60 7a00    	vmul.f32	s15, s0, s0
    5e30: ed9f 7a15    	vldr	s14, [pc, #84]          @ 0x5e88 <$d>
    5e34: eddf 5a15    	vldr	s11, [pc, #84]          @ 0x5e8c <$d+0x4>
    5e38: ed9f 6a15    	vldr	s12, [pc, #84]          @ 0x5e90 <$d+0x8>
    5e3c: eddf 6a15    	vldr	s13, [pc, #84]          @ 0x5e94 <$d+0xc>
    5e40: eee7 5a87    	vfma.f32	s11, s15, s14
    5e44: ed9f 7a14    	vldr	s14, [pc, #80]          @ 0x5e98 <$d+0x10>
    5e48: eea5 6aa7    	vfma.f32	s12, s11, s15
    5e4c: ee20 5a27    	vmul.f32	s10, s0, s15
    5e50: eee6 6a27    	vfma.f32	s13, s12, s15
    5e54: eea6 7aa7    	vfma.f32	s14, s13, s15
    5e58: b930         	cbnz	r0, 0x5e68 <__kernel_sinf+0x54> @ imm = #12
    5e5a: eddf 6a10    	vldr	s13, [pc, #64]          @ 0x5e9c <$d+0x14>
    5e5e: eee7 6a87    	vfma.f32	s13, s15, s14
    5e62: eea6 0a85    	vfma.f32	s0, s13, s10
    5e66: 4770         	bx	lr
    5e68: ee27 7a45    	vnmul.f32	s14, s14, s10
    5e6c: eef6 6a00    	vmov.f32	s13, #5.000000e-01
    5e70: eea0 7aa6    	vfma.f32	s14, s1, s13
    5e74: eddf 6a0a    	vldr	s13, [pc, #40]          @ 0x5ea0 <$d+0x18>
    5e78: eed7 0a27    	vfnms.f32	s1, s14, s15
    5e7c: eee5 0a26    	vfma.f32	s1, s10, s13
    5e80: ee30 0a60    	vsub.f32	s0, s0, s1
    5e84: 4770         	bx	lr
    5e86: bf00         	nop

00005e88 <$d>:
    5e88: d3 c9 2e 2f  	.word	0x2f2ec9d3
    5e8c: 34 2f d7 b2  	.word	0xb2d72f34
    5e90: 1b ef 38 36  	.word	0x3638ef1b
    5e94: 01 0d 50 b9  	.word	0xb9500d01
    5e98: 89 88 08 3c  	.word	0x3c088889
    5e9c: ab aa 2a be  	.word	0xbe2aaaab
    5ea0: ab aa 2a 3e  	.word	0x3e2aaaab

00005ea4 <round>:
; round():
    5ea4: ec53 2b10    	vmov	r2, r3, d0
    5ea8: f3c3 500a    	ubfx	r0, r3, #20, #11
    5eac: f2a0 31ff    	subw	r1, r0, #1023
    5eb0: 2913         	cmp	r1, #19
    5eb2: b510         	push	{r4, lr}
    5eb4: 469c         	mov	r12, r3
    5eb6: 4696         	mov	lr, r2
    5eb8: dc19         	bgt	0x5eee <round+0x4a>     @ imm = #50
    5eba: 2900         	cmp	r1, #0
    5ebc: db11         	blt	0x5ee2 <round+0x3e>     @ imm = #34
    5ebe: 4820         	ldr	r0, [pc, #128]          @ 0x5f40 <$d>
    5ec0: 4108         	asrs	r0, r1
    5ec2: ea00 0403    	and.w	r4, r0, r3
    5ec6: 4314         	orrs	r4, r2
    5ec8: d016         	beq	0x5ef8 <round+0x54>     @ imm = #44
    5eca: f44f 2300    	mov.w	r3, #524288
    5ece: 410b         	asrs	r3, r1
    5ed0: 4463         	add	r3, r12
    5ed2: ea23 0c00    	bic.w	r12, r3, r0
    5ed6: 2100         	movs	r1, #0
    5ed8: 4663         	mov	r3, r12
    5eda: 460a         	mov	r2, r1
    5edc: ec43 2b10    	vmov	d0, r2, r3
    5ee0: bd10         	pop	{r4, pc}
    5ee2: 3101         	adds	r1, #1
    5ee4: f003 4c00    	and	r12, r3, #2147483648
    5ee8: d024         	beq	0x5f34 <round+0x90>     @ imm = #72
    5eea: 2100         	movs	r1, #0
    5eec: e7f4         	b	0x5ed8 <round+0x34>     @ imm = #-24
    5eee: 2933         	cmp	r1, #51
    5ef0: dd05         	ble	0x5efe <round+0x5a>     @ imm = #10
    5ef2: f5b1 6f80    	cmp.w	r1, #1024
    5ef6: d016         	beq	0x5f26 <round+0x82>     @ imm = #44
    5ef8: ec43 2b10    	vmov	d0, r2, r3
    5efc: bd10         	pop	{r4, pc}
    5efe: f2a0 4013    	subw	r0, r0, #1043
    5f02: f04f 34ff    	mov.w	r4, #4294967295
    5f06: fa24 f000    	lsr.w	r0, r4, r0
    5f0a: 4210         	tst	r0, r2
    5f0c: d0f4         	beq	0x5ef8 <round+0x54>     @ imm = #-24
    5f0e: 2301         	movs	r3, #1
    5f10: f1c1 0133    	rsb.w	r1, r1, #51
    5f14: fa03 f101    	lsl.w	r1, r3, r1
    5f18: eb11 010e    	adds.w	r1, r1, lr
    5f1c: bf28         	it	hs
    5f1e: 449c         	addhs	r12, r3
    5f20: ea21 0100    	bic.w	r1, r1, r0
    5f24: e7d8         	b	0x5ed8 <round+0x34>     @ imm = #-80
    5f26: 4610         	mov	r0, r2
    5f28: 4619         	mov	r1, r3
    5f2a: f000 fd85    	bl	0x6a38 <__aeabi_dadd>   @ imm = #2826
    5f2e: ec41 0b10    	vmov	d0, r0, r1
    5f32: bd10         	pop	{r4, pc}
    5f34: f04c 5c7f    	orr	r12, r12, #1069547520
    5f38: f44c 1c40    	orr	r12, r12, #3145728
    5f3c: 2100         	movs	r1, #0
    5f3e: e7cb         	b	0x5ed8 <round+0x34>     @ imm = #-106

00005f40 <$d>:
    5f40: ff ff 0f 00  	.word	0x000fffff

00005f44 <fmax>:
; fmax():
    5f44: b538         	push	{r3, r4, r5, lr}
    5f46: ed2d 8b02    	vpush	{d8}
    5f4a: eeb0 8a41    	vmov.f32	s16, s2
    5f4e: eef0 8a61    	vmov.f32	s17, s3
    5f52: ec55 4b10    	vmov	r4, r5, d0
    5f56: f7ff fe41    	bl	0x5bdc <__fpclassifyd>  @ imm = #-894
    5f5a: b930         	cbnz	r0, 0x5f6a <fmax+0x26>  @ imm = #12
    5f5c: eeb0 0a48    	vmov.f32	s0, s16
    5f60: eef0 0a68    	vmov.f32	s1, s17
    5f64: ecbd 8b02    	vpop	{d8}
    5f68: bd38         	pop	{r3, r4, r5, pc}
    5f6a: eeb0 0a48    	vmov.f32	s0, s16
    5f6e: eef0 0a68    	vmov.f32	s1, s17
    5f72: f7ff fe33    	bl	0x5bdc <__fpclassifyd>  @ imm = #-922
    5f76: b138         	cbz	r0, 0x5f88 <fmax+0x44>  @ imm = #14
    5f78: ec53 2b18    	vmov	r2, r3, d8
    5f7c: 4620         	mov	r0, r4
    5f7e: 4629         	mov	r1, r5
    5f80: f001 f9a0    	bl	0x72c4 <__aeabi_dcmpgt> @ imm = #4928
    5f84: 2800         	cmp	r0, #0
    5f86: d0e9         	beq	0x5f5c <fmax+0x18>      @ imm = #-46
    5f88: ecbd 8b02    	vpop	{d8}
    5f8c: ec45 4b10    	vmov	d0, r4, r5
    5f90: bd38         	pop	{r3, r4, r5, pc}
    5f92: bf00         	nop

00005f94 <__ieee754_rem_pio2f>:
; __ieee754_rem_pio2f():
    5f94: b570         	push	{r4, r5, r6, lr}
    5f96: ee10 3a10    	vmov	r3, s0
    5f9a: 4a88         	ldr	r2, [pc, #544]          @ 0x61bc <$d>
    5f9c: f023 4400    	bic	r4, r3, #2147483648
    5fa0: 4294         	cmp	r4, r2
    5fa2: b086         	sub	sp, #24
    5fa4: 4605         	mov	r5, r0
    5fa6: d971         	bls	0x608c <__ieee754_rem_pio2f+0xf8> @ imm = #226
    5fa8: 4a85         	ldr	r2, [pc, #532]          @ 0x61c0 <$d+0x4>
    5faa: 4294         	cmp	r4, r2
    5fac: 461e         	mov	r6, r3
    5fae: d824         	bhi	0x5ffa <__ieee754_rem_pio2f+0x66> @ imm = #72
    5fb0: f023 4200    	bic	r2, r3, #2147483648
    5fb4: 2b00         	cmp	r3, #0
    5fb6: eddf 7a83    	vldr	s15, [pc, #524]         @ 0x61c4 <$d+0x8>
    5fba: 4983         	ldr	r1, [pc, #524]          @ 0x61c8 <$d+0xc>
    5fbc: f022 020f    	bic	r2, r2, #15
    5fc0: eeb0 7a40    	vmov.f32	s14, s0
    5fc4: f340 80e0    	ble.w	0x6188 <__ieee754_rem_pio2f+0x1f4> @ imm = #448
    5fc8: 428a         	cmp	r2, r1
    5fca: ee70 7a67    	vsub.f32	s15, s0, s15
    5fce: bf09         	itett	eq
    5fd0: ed9f 7a7e    	vldreq	s14, [pc, #504]         @ 0x61cc <$d+0x10>
    5fd4: eddf 6a7e    	vldrne	s13, [pc, #504]         @ 0x61d0 <$d+0x14>
    5fd8: eddf 6a7e    	vldreq	s13, [pc, #504]         @ 0x61d4 <$d+0x18>
    5fdc: ee77 7ac7    	vsubeq.f32	s15, s15, s14
    5fe0: ee37 7ae6    	vsub.f32	s14, s15, s13
    5fe4: ee77 7ac7    	vsub.f32	s15, s15, s14
    5fe8: ed80 7a00    	vstr	s14, [r0]
    5fec: ee77 7ae6    	vsub.f32	s15, s15, s13
    5ff0: edc0 7a01    	vstr	s15, [r0, #4]
    5ff4: 2001         	movs	r0, #1
    5ff6: b006         	add	sp, #24
    5ff8: bd70         	pop	{r4, r5, r6, pc}
    5ffa: 4a77         	ldr	r2, [pc, #476]          @ 0x61d8 <$d+0x1c>
    5ffc: 4294         	cmp	r4, r2
    5ffe: d952         	bls	0x60a6 <__ieee754_rem_pio2f+0x112> @ imm = #164
    6000: f1b4 4fff    	cmp.w	r4, #2139095040
    6004: d248         	bhs	0x6098 <__ieee754_rem_pio2f+0x104> @ imm = #144
    6006: 15e2         	asrs	r2, r4, #23
    6008: 3a86         	subs	r2, #134
    600a: eba4 53c2    	sub.w	r3, r4, r2, lsl #23
    600e: ee07 3a90    	vmov	s15, r3
    6012: eebd 7ae7    	vcvt.s32.f32	s14, s15
    6016: eddf 6a71    	vldr	s13, [pc, #452]         @ 0x61dc <$d+0x20>
    601a: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    601e: ee77 7ac7    	vsub.f32	s15, s15, s14
    6022: ed8d 7a03    	vstr	s14, [sp, #12]
    6026: ee67 7aa6    	vmul.f32	s15, s15, s13
    602a: eebd 7ae7    	vcvt.s32.f32	s14, s15
    602e: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    6032: ee77 7ac7    	vsub.f32	s15, s15, s14
    6036: ed8d 7a04    	vstr	s14, [sp, #16]
    603a: ee67 7aa6    	vmul.f32	s15, s15, s13
    603e: eef5 7a40    	vcmp.f32	s15, #0
    6042: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6046: edcd 7a05    	vstr	s15, [sp, #20]
    604a: f040 8098    	bne.w	0x617e <__ieee754_rem_pio2f+0x1ea> @ imm = #304
    604e: eeb5 7a40    	vcmp.f32	s14, #0
    6052: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6056: bf0c         	ite	eq
    6058: 2301         	moveq	r3, #1
    605a: 2302         	movne	r3, #2
    605c: 4960         	ldr	r1, [pc, #384]          @ 0x61e0 <$d+0x24>
    605e: 9101         	str	r1, [sp, #4]
    6060: 2102         	movs	r1, #2
    6062: 9100         	str	r1, [sp]
    6064: a803         	add	r0, sp, #12
    6066: 4629         	mov	r1, r5
    6068: f000 f8cc    	bl	0x6204 <__kernel_rem_pio2f> @ imm = #408
    606c: 2e00         	cmp	r6, #0
    606e: dac2         	bge	0x5ff6 <__ieee754_rem_pio2f+0x62> @ imm = #-124
    6070: ed95 7a00    	vldr	s14, [r5]
    6074: edd5 7a01    	vldr	s15, [r5, #4]
    6078: eeb1 7a47    	vneg.f32	s14, s14
    607c: eef1 7a67    	vneg.f32	s15, s15
    6080: ed85 7a00    	vstr	s14, [r5]
    6084: edc5 7a01    	vstr	s15, [r5, #4]
    6088: 4240         	rsbs	r0, r0, #0
    608a: e7b4         	b	0x5ff6 <__ieee754_rem_pio2f+0x62> @ imm = #-152
    608c: 2200         	movs	r2, #0
    608e: ed85 0a00    	vstr	s0, [r5]
    6092: 6042         	str	r2, [r0, #4]
    6094: 2000         	movs	r0, #0
    6096: e7ae         	b	0x5ff6 <__ieee754_rem_pio2f+0x62> @ imm = #-164
    6098: ee70 7a40    	vsub.f32	s15, s0, s0
    609c: edc0 7a01    	vstr	s15, [r0, #4]
    60a0: edc0 7a00    	vstr	s15, [r0]
    60a4: e7f6         	b	0x6094 <__ieee754_rem_pio2f+0x100> @ imm = #-20
    60a6: f000 f8a5    	bl	0x61f4 <fabsf>          @ imm = #330
    60aa: ed9f 7a4e    	vldr	s14, [pc, #312]         @ 0x61e4 <$d+0x28>
    60ae: ed9f 6a45    	vldr	s12, [pc, #276]         @ 0x61c4 <$d+0x8>
    60b2: eef6 7a00    	vmov.f32	s15, #5.000000e-01
    60b6: eee0 7a07    	vfma.f32	s15, s0, s14
    60ba: ed9f 7a45    	vldr	s14, [pc, #276]         @ 0x61d0 <$d+0x14>
    60be: eefd 7ae7    	vcvt.s32.f32	s15, s15
    60c2: ee17 0a90    	vmov	r0, s15
    60c6: eef8 6ae7    	vcvt.f32.s32	s13, s15
    60ca: 281f         	cmp	r0, #31
    60cc: eea6 0ac6    	vfms.f32	s0, s13, s12
    60d0: ee66 7a87    	vmul.f32	s15, s13, s14
    60d4: eeb1 6a66    	vneg.f32	s12, s13
    60d8: dc20         	bgt	0x611c <__ieee754_rem_pio2f+0x188> @ imm = #64
    60da: 4a43         	ldr	r2, [pc, #268]          @ 0x61e8 <$d+0x2c>
    60dc: 1e41         	subs	r1, r0, #1
    60de: f026 4300    	bic	r3, r6, #2147483648
    60e2: f852 2021    	ldr.w	r2, [r2, r1, lsl #2]
    60e6: f023 03ff    	bic	r3, r3, #255
    60ea: 4293         	cmp	r3, r2
    60ec: d016         	beq	0x611c <__ieee754_rem_pio2f+0x188> @ imm = #44
    60ee: ee30 7a67    	vsub.f32	s14, s0, s15
    60f2: ee30 0a47    	vsub.f32	s0, s0, s14
    60f6: 2e00         	cmp	r6, #0
    60f8: ee30 0a67    	vsub.f32	s0, s0, s15
    60fc: ed85 7a00    	vstr	s14, [r5]
    6100: ed85 0a01    	vstr	s0, [r5, #4]
    6104: f6bf af77    	bge.w	0x5ff6 <__ieee754_rem_pio2f+0x62> @ imm = #-274
    6108: eeb1 7a47    	vneg.f32	s14, s14
    610c: eeb1 0a40    	vneg.f32	s0, s0
    6110: ed85 7a00    	vstr	s14, [r5]
    6114: ed85 0a01    	vstr	s0, [r5, #4]
    6118: 4240         	rsbs	r0, r0, #0
    611a: e76c         	b	0x5ff6 <__ieee754_rem_pio2f+0x62> @ imm = #-296
    611c: ee30 7a67    	vsub.f32	s14, s0, s15
    6120: 15e2         	asrs	r2, r4, #23
    6122: ee17 3a10    	vmov	r3, s14
    6126: f3c3 53c7    	ubfx	r3, r3, #23, #8
    612a: ebc3 53d4    	rsb	r3, r3, r4, lsr #23
    612e: 2b08         	cmp	r3, #8
    6130: dddf         	ble	0x60f2 <__ieee754_rem_pio2f+0x15e> @ imm = #-66
    6132: ed9f 7a26    	vldr	s14, [pc, #152]         @ 0x61cc <$d+0x10>
    6136: ed9f 5a27    	vldr	s10, [pc, #156]         @ 0x61d4 <$d+0x18>
    613a: eef0 5a40    	vmov.f32	s11, s0
    613e: eee6 5a07    	vfma.f32	s11, s12, s14
    6142: ee70 7a65    	vsub.f32	s15, s0, s11
    6146: eee6 7a07    	vfma.f32	s15, s12, s14
    614a: eed6 7a85    	vfnms.f32	s15, s13, s10
    614e: ee35 7ae7    	vsub.f32	s14, s11, s15
    6152: ee17 3a10    	vmov	r3, s14
    6156: f3c3 53c7    	ubfx	r3, r3, #23, #8
    615a: 1ad2         	subs	r2, r2, r3
    615c: 2a19         	cmp	r2, #25
    615e: dd10         	ble	0x6182 <__ieee754_rem_pio2f+0x1ee> @ imm = #32
    6160: ed9f 7a22    	vldr	s14, [pc, #136]         @ 0x61ec <$d+0x30>
    6164: ed9f 5a22    	vldr	s10, [pc, #136]         @ 0x61f0 <$d+0x34>
    6168: eeb0 0a65    	vmov.f32	s0, s11
    616c: eea6 0a07    	vfma.f32	s0, s12, s14
    6170: ee75 7ac0    	vsub.f32	s15, s11, s0
    6174: eee6 7a07    	vfma.f32	s15, s12, s14
    6178: eed6 7a85    	vfnms.f32	s15, s13, s10
    617c: e7b7         	b	0x60ee <__ieee754_rem_pio2f+0x15a> @ imm = #-146
    617e: 2303         	movs	r3, #3
    6180: e76c         	b	0x605c <__ieee754_rem_pio2f+0xc8> @ imm = #-296
    6182: eeb0 0a65    	vmov.f32	s0, s11
    6186: e7b4         	b	0x60f2 <__ieee754_rem_pio2f+0x15e> @ imm = #-152
    6188: 428a         	cmp	r2, r1
    618a: ee70 7a27    	vadd.f32	s15, s0, s15
    618e: bf09         	itett	eq
    6190: ed9f 7a0e    	vldreq	s14, [pc, #56]          @ 0x61cc <$d+0x10>
    6194: eddf 6a0e    	vldrne	s13, [pc, #56]          @ 0x61d0 <$d+0x14>
    6198: eddf 6a0e    	vldreq	s13, [pc, #56]          @ 0x61d4 <$d+0x18>
    619c: ee77 7a87    	vaddeq.f32	s15, s15, s14
    61a0: ee37 7aa6    	vadd.f32	s14, s15, s13
    61a4: ee77 7ac7    	vsub.f32	s15, s15, s14
    61a8: ed80 7a00    	vstr	s14, [r0]
    61ac: ee77 7aa6    	vadd.f32	s15, s15, s13
    61b0: edc0 7a01    	vstr	s15, [r0, #4]
    61b4: f04f 30ff    	mov.w	r0, #4294967295
    61b8: e71d         	b	0x5ff6 <__ieee754_rem_pio2f+0x62> @ imm = #-454
    61ba: bf00         	nop

000061bc <$d>:
    61bc: d8 0f 49 3f  	.word	0x3f490fd8
    61c0: e3 cb 16 40  	.word	0x4016cbe3
    61c4: 80 0f c9 3f  	.word	0x3fc90f80
    61c8: d0 0f c9 3f  	.word	0x3fc90fd0
    61cc: 00 44 35 37  	.word	0x37354400
    61d0: 43 44 35 37  	.word	0x37354443
    61d4: 08 a3 85 2e  	.word	0x2e85a308
    61d8: 80 0f 49 43  	.word	0x43490f80
    61dc: 00 00 80 43  	.word	0x43800000
    61e0: 60 81 00 00  	.word	0x00008160
    61e4: 84 f9 22 3f  	.word	0x3f22f984
    61e8: e0 80 00 00  	.word	0x000080e0
    61ec: 00 a3 85 2e  	.word	0x2e85a300
    61f0: 32 31 8d 24  	.word	0x248d3132

000061f4 <fabsf>:
; fabsf():
    61f4: ee10 3a10    	vmov	r3, s0
    61f8: f023 4300    	bic	r3, r3, #2147483648
    61fc: ee00 3a10    	vmov	s0, r3
    6200: 4770         	bx	lr
    6202: bf00         	nop

00006204 <__kernel_rem_pio2f>:
; __kernel_rem_pio2f():
    6204: e92d 4ff0    	push.w	{r4, r5, r6, r7, r8, r9, r10, r11, lr}
    6208: ed2d 8b04    	vpush	{d8, d9}
    620c: b0db         	sub	sp, #364
    620e: 461c         	mov	r4, r3
    6210: 4694         	mov	r12, r2
    6212: 9303         	str	r3, [sp, #12]
    6214: 460a         	mov	r2, r1
    6216: 4bcd         	ldr	r3, [pc, #820]          @ 0x654c <$d>
    6218: 9968         	ldr	r1, [sp, #416]
    621a: f11c 0f04    	cmn.w	r12, #4
    621e: f853 6021    	ldr.w	r6, [r3, r1, lsl #2]
    6222: 4682         	mov	r10, r0
    6224: f104 38ff    	add.w	r8, r4, #4294967295
    6228: f2c0 8249    	blt.w	0x66be <$t+0x162>       @ imm = #1170
    622c: f1bc 0303    	subs.w	r3, r12, #3
    6230: bf48         	it	mi
    6232: f10c 0304    	addmi.w	r3, r12, #4
    6236: 10db         	asrs	r3, r3, #3
    6238: 9302         	str	r3, [sp, #8]
    623a: 3301         	adds	r3, #1
    623c: ea4f 0ec3    	lsl.w	lr, r3, #3
    6240: ebac 030e    	sub.w	r3, r12, lr
    6244: 9305         	str	r3, [sp, #20]
    6246: 9b02         	ldr	r3, [sp, #8]
    6248: eb16 0008    	adds.w	r0, r6, r8
    624c: eba3 0308    	sub.w	r3, r3, r8
    6250: d416         	bmi	0x6280 <__kernel_rem_pio2f+0x7c> @ imm = #44
    6252: 3001         	adds	r0, #1
    6254: ed9f 7abe    	vldr	s14, [pc, #760]         @ 0x6550 <$d+0x4>
    6258: 9c69         	ldr	r4, [sp, #420]
    625a: 4418         	add	r0, r3
    625c: a91e         	add	r1, sp, #120
    625e: 2b00         	cmp	r3, #0
    6260: bfa4         	itt	ge
    6262: f854 5023    	ldrge.w	r5, [r4, r3, lsl #2]
    6266: ee07 5a90    	vmovge	s15, r5
    626a: f103 0301    	add.w	r3, r3, #1
    626e: bfac         	ite	ge
    6270: eef8 7ae7    	vcvtge.f32.s32	s15, s15
    6274: eef0 7a47    	vmovlt.f32	s15, s14
    6278: 4283         	cmp	r3, r0
    627a: ece1 7a01    	vstmia	r1!, {s15}
    627e: d1ee         	bne	0x625e <__kernel_rem_pio2f+0x5a> @ imm = #-36
    6280: 2e00         	cmp	r6, #0
    6282: f2c0 82b1    	blt.w	0x67e8 <$t+0x28c>       @ imm = #1378
    6286: 9b03         	ldr	r3, [sp, #12]
    6288: a91e         	add	r1, sp, #120
    628a: eb01 0483    	add.w	r4, r1, r3, lsl #2
    628e: ad46         	add	r5, sp, #280
    6290: ea4f 0983    	lsl.w	r9, r3, #2
    6294: 4640         	mov	r0, r8
    6296: 18f7         	adds	r7, r6, r3
    6298: eb0a 0183    	add.w	r1, r10, r3, lsl #2
    629c: f1b8 0f00    	cmp.w	r8, #0
    62a0: eddf 7aab    	vldr	s15, [pc, #684]         @ 0x6550 <$d+0x4>
    62a4: db09         	blt	0x62ba <__kernel_rem_pio2f+0xb6> @ imm = #18
    62a6: 46a3         	mov	r11, r4
    62a8: 4653         	mov	r3, r10
    62aa: ecf3 6a01    	vldmia	r3!, {s13}
    62ae: ed3b 7a01    	vldmdb	r11!, {s14}
    62b2: 428b         	cmp	r3, r1
    62b4: eee6 7a87    	vfma.f32	s15, s13, s14
    62b8: d1f7         	bne	0x62aa <__kernel_rem_pio2f+0xa6> @ imm = #-18
    62ba: 3001         	adds	r0, #1
    62bc: 42b8         	cmp	r0, r7
    62be: ece5 7a01    	vstmia	r5!, {s15}
    62c2: f104 0404    	add.w	r4, r4, #4
    62c6: d1e9         	bne	0x629c <__kernel_rem_pio2f+0x98> @ imm = #-46
    62c8: f10d 0b28    	add.w	r11, sp, #40
    62cc: eb0b 0386    	add.w	r3, r11, r6, lsl #2
    62d0: e9cd 2e06    	strd	r2, lr, [sp, #24]
    62d4: 3b04         	subs	r3, #4
    62d6: ed9f 9aa0    	vldr	s18, [pc, #640]         @ 0x6558 <$d+0xc>
    62da: eddf 8a9e    	vldr	s17, [pc, #632]         @ 0x6554 <$d+0x8>
    62de: 9805         	ldr	r0, [sp, #20]
    62e0: 9304         	str	r3, [sp, #16]
    62e2: eb0a 0409    	add.w	r4, r10, r9
    62e6: af46         	add	r7, sp, #280
    62e8: eb0b 0986    	add.w	r9, r11, r6, lsl #2
    62ec: 9600         	str	r6, [sp]
    62ee: f8cd c020    	str.w	r12, [sp, #32]
    62f2: ab5a         	add	r3, sp, #360
    62f4: eb03 0386    	add.w	r3, r3, r6, lsl #2
    62f8: 2e00         	cmp	r6, #0
    62fa: ed13 0a14    	vldr	s0, [r3, #-80]
    62fe: ea4f 0586    	lsl.w	r5, r6, #2
    6302: dd15         	ble	0x6330 <__kernel_rem_pio2f+0x12c> @ imm = #42
    6304: 197b         	adds	r3, r7, r5
    6306: 465a         	mov	r2, r11
    6308: ee60 7a09    	vmul.f32	s15, s0, s18
    630c: eeb0 7a40    	vmov.f32	s14, s0
    6310: eefd 7ae7    	vcvt.s32.f32	s15, s15
    6314: ed73 6a01    	vldmdb	r3!, {s13}
    6318: eef8 7ae7    	vcvt.f32.s32	s15, s15
    631c: 42bb         	cmp	r3, r7
    631e: eea7 7ae8    	vfms.f32	s14, s15, s17
    6322: ee37 0aa6    	vadd.f32	s0, s15, s13
    6326: eebd 7ac7    	vcvt.s32.f32	s14, s14
    632a: eca2 7a01    	vstmia	r2!, {s14}
    632e: d1eb         	bne	0x6308 <__kernel_rem_pio2f+0x104> @ imm = #-42
    6330: 9001         	str	r0, [sp, #4]
    6332: f000 facf    	bl	0x68d4 <scalbnf>        @ imm = #1438
    6336: eef4 7a00    	vmov.f32	s15, #1.250000e-01
    633a: eeb0 8a40    	vmov.f32	s16, s0
    633e: ee20 0a27    	vmul.f32	s0, s0, s15
    6342: f000 fa7d    	bl	0x6840 <floorf>         @ imm = #1274
    6346: eef2 7a00    	vmov.f32	s15, #8.000000e+00
    634a: eea0 8a67    	vfms.f32	s16, s0, s15
    634e: 9801         	ldr	r0, [sp, #4]
    6350: 2800         	cmp	r0, #0
    6352: eefd 9ac8    	vcvt.s32.f32	s19, s16
    6356: eef8 7ae9    	vcvt.f32.s32	s15, s19
    635a: ee38 8a67    	vsub.f32	s16, s16, s15
    635e: dd6c         	ble	0x643a <__kernel_rem_pio2f+0x236> @ imm = #216
    6360: f106 3eff    	add.w	lr, r6, #4294967295
    6364: f1c0 0308    	rsb.w	r3, r0, #8
    6368: f85b 202e    	ldr.w	r2, [r11, lr, lsl #2]
    636c: fa42 fc03    	asr.w	r12, r2, r3
    6370: fa0c f303    	lsl.w	r3, r12, r3
    6374: 1ad2         	subs	r2, r2, r3
    6376: f1c0 0107    	rsb.w	r1, r0, #7
    637a: ee19 3a90    	vmov	r3, s19
    637e: f84b 202e    	str.w	r2, [r11, lr, lsl #2]
    6382: 410a         	asrs	r2, r1
    6384: 4463         	add	r3, r12
    6386: 2a00         	cmp	r2, #0
    6388: ee09 3a90    	vmov	s19, r3
    638c: f300 80f0    	bgt.w	0x6570 <$t+0x14>        @ imm = #480
    6390: eeb5 8a40    	vcmp.f32	s16, #0
    6394: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6398: f040 809d    	bne.w	0x64d6 <__kernel_rem_pio2f+0x2d2> @ imm = #314
    639c: 9b00         	ldr	r3, [sp]
    639e: 429e         	cmp	r6, r3
    63a0: dd0a         	ble	0x63b8 <__kernel_rem_pio2f+0x1b4> @ imm = #20
    63a2: 445d         	add	r5, r11
    63a4: 2300         	movs	r3, #0
    63a6: f855 1d04    	ldr	r1, [r5, #-4]!
    63aa: 454d         	cmp	r5, r9
    63ac: ea43 0301    	orr.w	r3, r3, r1
    63b0: d1f9         	bne	0x63a6 <__kernel_rem_pio2f+0x1a2> @ imm = #-14
    63b2: 2b00         	cmp	r3, #0
    63b4: f040 80f2    	bne.w	0x659c <$t+0x40>        @ imm = #484
    63b8: 9b00         	ldr	r3, [sp]
    63ba: 3b01         	subs	r3, #1
    63bc: f85b 3023    	ldr.w	r3, [r11, r3, lsl #2]
    63c0: 2b00         	cmp	r3, #0
    63c2: f040 80e7    	bne.w	0x6594 <$t+0x38>        @ imm = #462
    63c6: 9b04         	ldr	r3, [sp, #16]
    63c8: 2101         	movs	r1, #1
    63ca: f853 2d04    	ldr	r2, [r3, #-4]!
    63ce: 3101         	adds	r1, #1
    63d0: 2a00         	cmp	r2, #0
    63d2: d0fa         	beq	0x63ca <__kernel_rem_pio2f+0x1c6> @ imm = #-12
    63d4: 1c73         	adds	r3, r6, #1
    63d6: 4431         	add	r1, r6
    63d8: 469c         	mov	r12, r3
    63da: 9d02         	ldr	r5, [sp, #8]
    63dc: 9a03         	ldr	r2, [sp, #12]
    63de: eb05 0e03    	add.w	lr, r5, r3
    63e2: f10e 4e80    	add.w	lr, lr, #1073741824
    63e6: 9d69         	ldr	r5, [sp, #420]
    63e8: 4432         	add	r2, r6
    63ea: f10e 3eff    	add.w	lr, lr, #4294967295
    63ee: eb07 0683    	add.w	r6, r7, r3, lsl #2
    63f2: ab1e         	add	r3, sp, #120
    63f4: eb05 0e8e    	add.w	lr, r5, lr, lsl #2
    63f8: eb03 0582    	add.w	r5, r3, r2, lsl #2
    63fc: edde 7a01    	vldr	s15, [lr, #4]
    6400: eef8 7ae7    	vcvt.f32.s32	s15, s15
    6404: f1b8 0f00    	cmp.w	r8, #0
    6408: f10e 0e04    	add.w	lr, lr, #4
    640c: ece5 7a01    	vstmia	r5!, {s15}
    6410: eddf 7a4f    	vldr	s15, [pc, #316]         @ 0x6550 <$d+0x4>
    6414: db09         	blt	0x642a <__kernel_rem_pio2f+0x226> @ imm = #18
    6416: 462a         	mov	r2, r5
    6418: 4653         	mov	r3, r10
    641a: ecf3 6a01    	vldmia	r3!, {s13}
    641e: ed32 7a01    	vldmdb	r2!, {s14}
    6422: 42a3         	cmp	r3, r4
    6424: eee6 7a87    	vfma.f32	s15, s13, s14
    6428: d1f7         	bne	0x641a <__kernel_rem_pio2f+0x216> @ imm = #-18
    642a: f10c 0c01    	add.w	r12, r12, #1
    642e: 4561         	cmp	r1, r12
    6430: ece6 7a01    	vstmia	r6!, {s15}
    6434: dae2         	bge	0x63fc <__kernel_rem_pio2f+0x1f8> @ imm = #-60
    6436: 460e         	mov	r6, r1
    6438: e75b         	b	0x62f2 <__kernel_rem_pio2f+0xee> @ imm = #-330
    643a: f040 808f    	bne.w	0x655c <$t>             @ imm = #286
    643e: 1e73         	subs	r3, r6, #1
    6440: f85b 2023    	ldr.w	r2, [r11, r3, lsl #2]
    6444: 11d2         	asrs	r2, r2, #7
    6446: 2a00         	cmp	r2, #0
    6448: dda2         	ble	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-188
    644a: ee19 3a90    	vmov	r3, s19
    644e: 2e00         	cmp	r6, #0
    6450: f103 0301    	add.w	r3, r3, #1
    6454: ee09 3a90    	vmov	s19, r3
    6458: f340 81d4    	ble.w	0x6804 <$t+0x2a8>       @ imm = #936
    645c: 4659         	mov	r1, r11
    645e: f04f 0e00    	mov.w	lr, #0
    6462: f851 3b04    	ldr	r3, [r1], #4
    6466: 2b00         	cmp	r3, #0
    6468: d06a         	beq	0x6540 <__kernel_rem_pio2f+0x33c> @ imm = #212
    646a: f5c3 7380    	rsb.w	r3, r3, #256
    646e: f841 3c04    	str	r3, [r1, #-4]
    6472: e004         	b	0x647e <__kernel_rem_pio2f+0x27a> @ imm = #8
    6474: 680b         	ldr	r3, [r1]
    6476: f1c3 03ff    	rsb.w	r3, r3, #255
    647a: f841 3b04    	str	r3, [r1], #4
    647e: f10e 0e01    	add.w	lr, lr, #1
    6482: 4576         	cmp	r6, lr
    6484: dcf6         	bgt	0x6474 <__kernel_rem_pio2f+0x270> @ imm = #-20
    6486: 2301         	movs	r3, #1
    6488: 469e         	mov	lr, r3
    648a: 2800         	cmp	r0, #0
    648c: dd0a         	ble	0x64a4 <__kernel_rem_pio2f+0x2a0> @ imm = #20
    648e: 2801         	cmp	r0, #1
    6490: d078         	beq	0x6584 <$t+0x28>        @ imm = #240
    6492: 2802         	cmp	r0, #2
    6494: d106         	bne	0x64a4 <__kernel_rem_pio2f+0x2a0> @ imm = #12
    6496: 1e71         	subs	r1, r6, #1
    6498: f85b 3021    	ldr.w	r3, [r11, r1, lsl #2]
    649c: f003 0c3f    	and	r12, r3, #63
    64a0: f84b c021    	str.w	r12, [r11, r1, lsl #2]
    64a4: 2a02         	cmp	r2, #2
    64a6: f47f af73    	bne.w	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-282
    64aa: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    64ae: 4673         	mov	r3, lr
    64b0: ee30 8a48    	vsub.f32	s16, s0, s16
    64b4: 2b00         	cmp	r3, #0
    64b6: f43f af6b    	beq.w	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-298
    64ba: 9209         	str	r2, [sp, #36]
    64bc: 9001         	str	r0, [sp, #4]
    64be: f000 fa09    	bl	0x68d4 <scalbnf>        @ imm = #1042
    64c2: ee38 8a40    	vsub.f32	s16, s16, s0
    64c6: 9801         	ldr	r0, [sp, #4]
    64c8: 9a09         	ldr	r2, [sp, #36]
    64ca: eeb5 8a40    	vcmp.f32	s16, #0
    64ce: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64d2: f43f af63    	beq.w	0x639c <__kernel_rem_pio2f+0x198> @ imm = #-314
    64d6: 4692         	mov	r10, r2
    64d8: e9dd 2e06    	ldrd	r2, lr, [sp, #24]
    64dc: f8dd c020    	ldr.w	r12, [sp, #32]
    64e0: 9601         	str	r6, [sp, #4]
    64e2: ebae 000c    	sub.w	r0, lr, r12
    64e6: eeb0 0a48    	vmov.f32	s0, s16
    64ea: 9e00         	ldr	r6, [sp]
    64ec: 9200         	str	r2, [sp]
    64ee: f000 f9f1    	bl	0x68d4 <scalbnf>        @ imm = #994
    64f2: eddf 6a18    	vldr	s13, [pc, #96]          @ 0x6554 <$d+0x8>
    64f6: eeb4 0ae6    	vcmpe.f32	s0, s13
    64fa: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    64fe: e9dd 2300    	ldrd	r2, r3, [sp]
    6502: eef0 7a40    	vmov.f32	s15, s0
    6506: f2c0 8150    	blt.w	0x67aa <$t+0x24e>       @ imm = #672
    650a: ed9f 7a13    	vldr	s14, [pc, #76]          @ 0x6558 <$d+0xc>
    650e: 9905         	ldr	r1, [sp, #20]
    6510: ee20 7a07    	vmul.f32	s14, s0, s14
    6514: 3108         	adds	r1, #8
    6516: eebd 7ac7    	vcvt.s32.f32	s14, s14
    651a: 9105         	str	r1, [sp, #20]
    651c: eeb8 7ac7    	vcvt.f32.s32	s14, s14
    6520: 1c5c         	adds	r4, r3, #1
    6522: eee7 7a66    	vfms.f32	s15, s14, s13
    6526: eebd 7ac7    	vcvt.s32.f32	s14, s14
    652a: eefd 7ae7    	vcvt.s32.f32	s15, s15
    652e: ee17 1a90    	vmov	r1, s15
    6532: f84b 1023    	str.w	r1, [r11, r3, lsl #2]
    6536: ee17 3a10    	vmov	r3, s14
    653a: f84b 3024    	str.w	r3, [r11, r4, lsl #2]
    653e: e046         	b	0x65ce <$t+0x72>        @ imm = #140
    6540: f10e 0e01    	add.w	lr, lr, #1
    6544: 45b6         	cmp	lr, r6
    6546: db8c         	blt	0x6462 <__kernel_rem_pio2f+0x25e> @ imm = #-232
    6548: 469e         	mov	lr, r3
    654a: e79e         	b	0x648a <__kernel_rem_pio2f+0x286> @ imm = #-196

0000654c <$d>:
    654c: a4 84 00 00  	.word	0x000084a4
    6550: 00 00 00 00  	.word	0x00000000
    6554: 00 00 80 43  	.word	0x43800000
    6558: 00 00 80 3b  	.word	0x3b800000

0000655c <$t>:
    655c: eef6 7a00    	vmov.f32	s15, #5.000000e-01
    6560: eeb4 8ae7    	vcmpe.f32	s16, s15
    6564: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6568: f280 8098    	bge.w	0x669c <$t+0x140>       @ imm = #304
    656c: 2200         	movs	r2, #0
    656e: e70f         	b	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-482
    6570: 3301         	adds	r3, #1
    6572: 2e00         	cmp	r6, #0
    6574: ee09 3a90    	vmov	s19, r3
    6578: f73f af70    	bgt.w	0x645c <__kernel_rem_pio2f+0x258> @ imm = #-288
    657c: 2300         	movs	r3, #0
    657e: 2801         	cmp	r0, #1
    6580: 469e         	mov	lr, r3
    6582: d186         	bne	0x6492 <__kernel_rem_pio2f+0x28e> @ imm = #-244
    6584: 1e71         	subs	r1, r6, #1
    6586: f85b 3021    	ldr.w	r3, [r11, r1, lsl #2]
    658a: f003 0c7f    	and	r12, r3, #127
    658e: f84b c021    	str.w	r12, [r11, r1, lsl #2]
    6592: e787         	b	0x64a4 <__kernel_rem_pio2f+0x2a0> @ imm = #-242
    6594: 1c73         	adds	r3, r6, #1
    6596: 469c         	mov	r12, r3
    6598: 4619         	mov	r1, r3
    659a: e71e         	b	0x63da <__kernel_rem_pio2f+0x1d6> @ imm = #-452
    659c: 4633         	mov	r3, r6
    659e: 4692         	mov	r10, r2
    65a0: e9dd 1205    	ldrd	r1, r2, [sp, #20]
    65a4: 1e5c         	subs	r4, r3, #1
    65a6: f1a1 0008    	sub.w	r0, r1, #8
    65aa: f85b 1024    	ldr.w	r1, [r11, r4, lsl #2]
    65ae: 9e00         	ldr	r6, [sp]
    65b0: 9005         	str	r0, [sp, #20]
    65b2: b961         	cbnz	r1, 0x65ce <$t+0x72>    @ imm = #24
    65b4: f103 4380    	add.w	r3, r3, #1073741824
    65b8: 3b01         	subs	r3, #1
    65ba: eb0b 0383    	add.w	r3, r11, r3, lsl #2
    65be: 4601         	mov	r1, r0
    65c0: f853 0d04    	ldr	r0, [r3, #-4]!
    65c4: 3c01         	subs	r4, #1
    65c6: 3908         	subs	r1, #8
    65c8: 2800         	cmp	r0, #0
    65ca: d0f9         	beq	0x65c0 <$t+0x64>        @ imm = #-14
    65cc: 9105         	str	r1, [sp, #20]
    65ce: 9805         	ldr	r0, [sp, #20]
    65d0: 9200         	str	r2, [sp]
    65d2: eeb7 0a00    	vmov.f32	s0, #1.000000e+00
    65d6: f000 f97d    	bl	0x68d4 <scalbnf>        @ imm = #762
    65da: 2c00         	cmp	r4, #0
    65dc: 9a00         	ldr	r2, [sp]
    65de: eeb0 7a40    	vmov.f32	s14, s0
    65e2: f2c0 8105    	blt.w	0x67f0 <$t+0x294>       @ imm = #522
    65e6: 1c60         	adds	r0, r4, #1
    65e8: ad46         	add	r5, sp, #280
    65ea: ed5f 6a25    	vldr	s13, [pc, #-148]        @ 0x6558 <$d+0xc>
    65ee: 0081         	lsls	r1, r0, #2
    65f0: eb0b 0380    	add.w	r3, r11, r0, lsl #2
    65f4: eb05 0080    	add.w	r0, r5, r0, lsl #2
    65f8: ed73 7a01    	vldmdb	r3!, {s15}
    65fc: eef8 7ae7    	vcvt.f32.s32	s15, s15
    6600: 455b         	cmp	r3, r11
    6602: ee67 7a87    	vmul.f32	s15, s15, s14
    6606: ee27 7a26    	vmul.f32	s14, s14, s13
    660a: ed60 7a01    	vstmdb	r0!, {s15}
    660e: d1f3         	bne	0x65f8 <$t+0x9c>        @ imm = #-26
    6610: f10d 08c8    	add.w	r8, sp, #200
    6614: 1f0b         	subs	r3, r1, #4
    6616: a846         	add	r0, sp, #280
    6618: 18c7         	adds	r7, r0, r3
    661a: 46c6         	mov	lr, r8
    661c: 46a4         	mov	r12, r4
    661e: 2500         	movs	r5, #0
    6620: 4691         	mov	r9, r2
    6622: 2e00         	cmp	r6, #0
    6624: db73         	blt	0x670e <$t+0x1b2>       @ imm = #230
    6626: 4a84         	ldr	r2, [pc, #528]          @ 0x6838 <$d>
    6628: eddf 7a84    	vldr	s15, [pc, #528]         @ 0x683c <$d+0x4>
    662c: 4638         	mov	r0, r7
    662e: 2300         	movs	r3, #0
    6630: e001         	b	0x6636 <$t+0xda>        @ imm = #2
    6632: 42ab         	cmp	r3, r5
    6634: dc08         	bgt	0x6648 <$t+0xec>        @ imm = #16
    6636: ecf2 6a01    	vldmia	r2!, {s13}
    663a: ecb0 7a01    	vldmia	r0!, {s14}
    663e: 3301         	adds	r3, #1
    6640: 429e         	cmp	r6, r3
    6642: eee6 7a87    	vfma.f32	s15, s13, s14
    6646: daf4         	bge	0x6632 <$t+0xd6>        @ imm = #-24
    6648: f10c 3cff    	add.w	r12, r12, #4294967295
    664c: f1bc 3fff    	cmp.w	r12, #4294967295
    6650: ecee 7a01    	vstmia	lr!, {s15}
    6654: f105 0501    	add.w	r5, r5, #1
    6658: f1a7 0704    	sub.w	r7, r7, #4
    665c: d1e1         	bne	0x6622 <$t+0xc6>        @ imm = #-62
    665e: 9b68         	ldr	r3, [sp, #416]
    6660: 2b02         	cmp	r3, #2
    6662: 464a         	mov	r2, r9
    6664: dc56         	bgt	0x6714 <$t+0x1b8>       @ imm = #172
    6666: 2b00         	cmp	r3, #0
    6668: dc2e         	bgt	0x66c8 <$t+0x16c>       @ imm = #92
    666a: d10e         	bne	0x668a <$t+0x12e>       @ imm = #28
    666c: eddf 7a73    	vldr	s15, [pc, #460]         @ 0x683c <$d+0x4>
    6670: 4441         	add	r1, r8
    6672: ed31 7a01    	vldmdb	r1!, {s14}
    6676: 4541         	cmp	r1, r8
    6678: ee77 7a87    	vadd.f32	s15, s15, s14
    667c: d1f9         	bne	0x6672 <$t+0x116>       @ imm = #-14
    667e: 4653         	mov	r3, r10
    6680: 2b00         	cmp	r3, #0
    6682: f040 80ae    	bne.w	0x67e2 <$t+0x286>       @ imm = #348
    6686: edc2 7a00    	vstr	s15, [r2]
    668a: ee19 3a90    	vmov	r3, s19
    668e: f003 0007    	and	r0, r3, #7
    6692: b05b         	add	sp, #364
    6694: ecbd 8b04    	vpop	{d8, d9}
    6698: e8bd 8ff0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, r11, pc}
    669c: ee19 3a90    	vmov	r3, s19
    66a0: 2e00         	cmp	r6, #0
    66a2: f103 0301    	add.w	r3, r3, #1
    66a6: ee09 3a90    	vmov	s19, r3
    66aa: bfc8         	it	gt
    66ac: 2202         	movgt	r2, #2
    66ae: f73f aed5    	bgt.w	0x645c <__kernel_rem_pio2f+0x258> @ imm = #-598
    66b2: eef7 7a00    	vmov.f32	s15, #1.000000e+00
    66b6: ee37 8ac8    	vsub.f32	s16, s15, s16
    66ba: 2202         	movs	r2, #2
    66bc: e668         	b	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-816
    66be: 2300         	movs	r3, #0
    66c0: f04f 0e08    	mov.w	lr, #8
    66c4: 9302         	str	r3, [sp, #8]
    66c6: e5bb         	b	0x6240 <__kernel_rem_pio2f+0x3c> @ imm = #-1162
    66c8: ed9f 7a5c    	vldr	s14, [pc, #368]         @ 0x683c <$d+0x4>
    66cc: 4441         	add	r1, r8
    66ce: ed71 7a01    	vldmdb	r1!, {s15}
    66d2: 4541         	cmp	r1, r8
    66d4: ee37 7a27    	vadd.f32	s14, s14, s15
    66d8: d1f9         	bne	0x66ce <$t+0x172>       @ imm = #-14
    66da: eddd 7a32    	vldr	s15, [sp, #200]
    66de: 4653         	mov	r3, r10
    66e0: ee77 7ac7    	vsub.f32	s15, s15, s14
    66e4: 2b00         	cmp	r3, #0
    66e6: d175         	bne	0x67d4 <$t+0x278>       @ imm = #234
    66e8: ed82 7a00    	vstr	s14, [r2]
    66ec: b164         	cbz	r4, 0x6708 <$t+0x1ac>   @ imm = #24
    66ee: a933         	add	r1, sp, #204
    66f0: 2301         	movs	r3, #1
    66f2: ecb1 7a01    	vldmia	r1!, {s14}
    66f6: 3301         	adds	r3, #1
    66f8: 429c         	cmp	r4, r3
    66fa: ee77 7a87    	vadd.f32	s15, s15, s14
    66fe: daf8         	bge	0x66f2 <$t+0x196>       @ imm = #-16
    6700: 4653         	mov	r3, r10
    6702: b10b         	cbz	r3, 0x6708 <$t+0x1ac>   @ imm = #2
    6704: eef1 7a67    	vneg.f32	s15, s15
    6708: edc2 7a01    	vstr	s15, [r2, #4]
    670c: e7bd         	b	0x668a <$t+0x12e>       @ imm = #-134
    670e: eddf 7a4b    	vldr	s15, [pc, #300]         @ 0x683c <$d+0x4>
    6712: e799         	b	0x6648 <$t+0xec>        @ imm = #-206
    6714: 9b68         	ldr	r3, [sp, #416]
    6716: 2b03         	cmp	r3, #3
    6718: d1b7         	bne	0x668a <$t+0x12e>       @ imm = #-146
    671a: 2c00         	cmp	r4, #0
    671c: d07e         	beq	0x681c <$t+0x2c0>       @ imm = #252
    671e: eb08 0584    	add.w	r5, r8, r4, lsl #2
    6722: ed95 7a00    	vldr	s14, [r5]
    6726: 00a0         	lsls	r0, r4, #2
    6728: 462b         	mov	r3, r5
    672a: 4629         	mov	r1, r5
    672c: ed71 7a01    	vldmdb	r1!, {s15}
    6730: eef0 6a47    	vmov.f32	s13, s14
    6734: ee37 7a27    	vadd.f32	s14, s14, s15
    6738: 4541         	cmp	r1, r8
    673a: ee77 7ac7    	vsub.f32	s15, s15, s14
    673e: ed81 7a00    	vstr	s14, [r1]
    6742: ee77 7aa6    	vadd.f32	s15, s15, s13
    6746: edc1 7a01    	vstr	s15, [r1, #4]
    674a: d1ef         	bne	0x672c <$t+0x1d0>       @ imm = #-34
    674c: 2c01         	cmp	r4, #1
    674e: d065         	beq	0x681c <$t+0x2c0>       @ imm = #202
    6750: ed95 7a00    	vldr	s14, [r5]
    6754: f108 0104    	add.w	r1, r8, #4
    6758: ed73 7a01    	vldmdb	r3!, {s15}
    675c: eef0 6a47    	vmov.f32	s13, s14
    6760: ee37 7a27    	vadd.f32	s14, s14, s15
    6764: 4299         	cmp	r1, r3
    6766: ee77 7ac7    	vsub.f32	s15, s15, s14
    676a: ed83 7a00    	vstr	s14, [r3]
    676e: ee77 7aa6    	vadd.f32	s15, s15, s13
    6772: edc3 7a01    	vstr	s15, [r3, #4]
    6776: d1ef         	bne	0x6758 <$t+0x1fc>       @ imm = #-34
    6778: 1d03         	adds	r3, r0, #4
    677a: eddf 7a30    	vldr	s15, [pc, #192]         @ 0x683c <$d+0x4>
    677e: 4443         	add	r3, r8
    6780: f108 0808    	add.w	r8, r8, #8
    6784: ed33 7a01    	vldmdb	r3!, {s14}
    6788: 4598         	cmp	r8, r3
    678a: ee77 7a87    	vadd.f32	s15, s15, s14
    678e: d1f9         	bne	0x6784 <$t+0x228>       @ imm = #-14
    6790: 4653         	mov	r3, r10
    6792: eddd 6a32    	vldr	s13, [sp, #200]
    6796: ed9d 7a33    	vldr	s14, [sp, #204]
    679a: b973         	cbnz	r3, 0x67ba <$t+0x25e>   @ imm = #28
    679c: edc2 6a00    	vstr	s13, [r2]
    67a0: ed82 7a01    	vstr	s14, [r2, #4]
    67a4: edc2 7a02    	vstr	s15, [r2, #8]
    67a8: e76f         	b	0x668a <$t+0x12e>       @ imm = #-290
    67aa: eefd 7ac0    	vcvt.s32.f32	s15, s0
    67ae: 461c         	mov	r4, r3
    67b0: ee17 1a90    	vmov	r1, s15
    67b4: f84b 1023    	str.w	r1, [r11, r3, lsl #2]
    67b8: e709         	b	0x65ce <$t+0x72>        @ imm = #-494
    67ba: eef1 6a66    	vneg.f32	s13, s13
    67be: eeb1 7a47    	vneg.f32	s14, s14
    67c2: eef1 7a67    	vneg.f32	s15, s15
    67c6: edc2 6a00    	vstr	s13, [r2]
    67ca: ed82 7a01    	vstr	s14, [r2, #4]
    67ce: edc2 7a02    	vstr	s15, [r2, #8]
    67d2: e75a         	b	0x668a <$t+0x12e>       @ imm = #-332
    67d4: eeb1 7a47    	vneg.f32	s14, s14
    67d8: ed82 7a00    	vstr	s14, [r2]
    67dc: 2c00         	cmp	r4, #0
    67de: d186         	bne	0x66ee <$t+0x192>       @ imm = #-244
    67e0: e790         	b	0x6704 <$t+0x1a8>       @ imm = #-224
    67e2: eef1 7a67    	vneg.f32	s15, s15
    67e6: e74e         	b	0x6686 <$t+0x12a>       @ imm = #-356
    67e8: 9b03         	ldr	r3, [sp, #12]
    67ea: ea4f 0983    	lsl.w	r9, r3, #2
    67ee: e56b         	b	0x62c8 <__kernel_rem_pio2f+0xc4> @ imm = #-1322
    67f0: 9b68         	ldr	r3, [sp, #416]
    67f2: 2b02         	cmp	r3, #2
    67f4: dc0e         	bgt	0x6814 <$t+0x2b8>       @ imm = #28
    67f6: 2b00         	cmp	r3, #0
    67f8: dc13         	bgt	0x6822 <$t+0x2c6>       @ imm = #38
    67fa: f47f af46    	bne.w	0x668a <$t+0x12e>       @ imm = #-372
    67fe: eddf 7a0f    	vldr	s15, [pc, #60]          @ 0x683c <$d+0x4>
    6802: e73c         	b	0x667e <$t+0x122>       @ imm = #-392
    6804: 2a02         	cmp	r2, #2
    6806: f47f adc3    	bne.w	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-1146
    680a: eef7 7a00    	vmov.f32	s15, #1.000000e+00
    680e: ee37 8ac8    	vsub.f32	s16, s15, s16
    6812: e5bd         	b	0x6390 <__kernel_rem_pio2f+0x18c> @ imm = #-1158
    6814: 9b68         	ldr	r3, [sp, #416]
    6816: 2b03         	cmp	r3, #3
    6818: f47f af37    	bne.w	0x668a <$t+0x12e>       @ imm = #-402
    681c: eddf 7a07    	vldr	s15, [pc, #28]          @ 0x683c <$d+0x4>
    6820: e7b6         	b	0x6790 <$t+0x234>       @ imm = #-148
    6822: 4653         	mov	r3, r10
    6824: eddd 7a32    	vldr	s15, [sp, #200]
    6828: b913         	cbnz	r3, 0x6830 <$t+0x2d4>   @ imm = #4
    682a: 2300         	movs	r3, #0
    682c: 6013         	str	r3, [r2]
    682e: e76b         	b	0x6708 <$t+0x1ac>       @ imm = #-298
    6830: f04f 4300    	mov.w	r3, #2147483648
    6834: 6013         	str	r3, [r2]
    6836: e765         	b	0x6704 <$t+0x1a8>       @ imm = #-310

00006838 <$d>:
    6838: 78 84 00 00  	.word	0x00008478
    683c: 00 00 00 00  	.word	0x00000000

00006840 <floorf>:
; floorf():
    6840: ee10 2a10    	vmov	r2, s0
    6844: f3c2 53c7    	ubfx	r3, r2, #23, #8
    6848: 3b7f         	subs	r3, #127
    684a: 2b16         	cmp	r3, #22
    684c: f022 4100    	bic	r1, r2, #2147483648
    6850: dc29         	bgt	0x68a6 <floorf+0x66>    @ imm = #82
    6852: 2b00         	cmp	r3, #0
    6854: 4610         	mov	r0, r2
    6856: db18         	blt	0x688a <floorf+0x4a>    @ imm = #48
    6858: 491a         	ldr	r1, [pc, #104]          @ 0x68c4 <$d>
    685a: 4119         	asrs	r1, r3
    685c: 420a         	tst	r2, r1
    685e: d021         	beq	0x68a4 <floorf+0x64>    @ imm = #66
    6860: eddf 7a19    	vldr	s15, [pc, #100]         @ 0x68c8 <$d+0x4>
    6864: ee70 7a27    	vadd.f32	s15, s0, s15
    6868: eef5 7ac0    	vcmpe.f32	s15, #0
    686c: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    6870: dd18         	ble	0x68a4 <floorf+0x64>    @ imm = #48
    6872: 2a00         	cmp	r2, #0
    6874: da04         	bge	0x6880 <floorf+0x40>    @ imm = #8
    6876: f44f 0200    	mov.w	r2, #8388608
    687a: fa42 f303    	asr.w	r3, r2, r3
    687e: 4418         	add	r0, r3
    6880: ea20 0301    	bic.w	r3, r0, r1
    6884: ee00 3a10    	vmov	s0, r3
    6888: 4770         	bx	lr
    688a: eddf 7a0f    	vldr	s15, [pc, #60]          @ 0x68c8 <$d+0x4>
    688e: ee70 7a27    	vadd.f32	s15, s0, s15
    6892: eef5 7ac0    	vcmpe.f32	s15, #0
    6896: eef1 fa10    	vmrs	APSR_nzcv, fpscr
    689a: dd03         	ble	0x68a4 <floorf+0x64>    @ imm = #6
    689c: 2a00         	cmp	r2, #0
    689e: db08         	blt	0x68b2 <floorf+0x72>    @ imm = #16
    68a0: ed9f 0a0a    	vldr	s0, [pc, #40]           @ 0x68cc <$d+0x8>
    68a4: 4770         	bx	lr
    68a6: f1b1 4fff    	cmp.w	r1, #2139095040
    68aa: d3fb         	blo	0x68a4 <floorf+0x64>    @ imm = #-10
    68ac: ee30 0a00    	vadd.f32	s0, s0, s0
    68b0: 4770         	bx	lr
    68b2: eddf 7a07    	vldr	s15, [pc, #28]          @ 0x68d0 <$d+0xc>
    68b6: 2900         	cmp	r1, #0
    68b8: eebf 0a00    	vmov.f32	s0, #-1.000000e+00
    68bc: bf08         	it	eq
    68be: eeb0 0a67    	vmoveq.f32	s0, s15
    68c2: 4770         	bx	lr

000068c4 <$d>:
    68c4: ff ff 7f 00  	.word	0x007fffff
    68c8: ca f2 49 71  	.word	0x7149f2ca
    68cc: 00 00 00 00  	.word	0x00000000
    68d0: 00 00 00 80  	.word	0x80000000

000068d4 <scalbnf>:
; scalbnf():
    68d4: ee10 3a10    	vmov	r3, s0
    68d8: f033 4100    	bics	r1, r3, #2147483648
    68dc: 461a         	mov	r2, r3
    68de: d027         	beq	0x6930 <scalbnf+0x5c>   @ imm = #78
    68e0: f1b1 4fff    	cmp.w	r1, #2139095040
    68e4: d221         	bhs	0x692a <scalbnf+0x56>   @ imm = #66
    68e6: f013 4fff    	tst.w	r3, #2139095040
    68ea: d122         	bne	0x6932 <scalbnf+0x5e>   @ imm = #68
    68ec: eddf 7a2b    	vldr	s15, [pc, #172]         @ 0x699c <$d>
    68f0: 4a2b         	ldr	r2, [pc, #172]          @ 0x69a0 <$d+0x4>
    68f2: ee60 7a27    	vmul.f32	s15, s0, s15
    68f6: 4290         	cmp	r0, r2
    68f8: ee17 3a90    	vmov	r3, s15
    68fc: db33         	blt	0x6966 <scalbnf+0x92>   @ imm = #102
    68fe: f24c 3c50    	movw	r12, #50000
    6902: f3c3 51c7    	ubfx	r1, r3, #23, #8
    6906: 4560         	cmp	r0, r12
    6908: 461a         	mov	r2, r3
    690a: f1a1 0119    	sub.w	r1, r1, #25
    690e: dd16         	ble	0x693e <scalbnf+0x6a>   @ imm = #44
    6910: eddf 7a24    	vldr	s15, [pc, #144]         @ 0x69a4 <$d+0x8>
    6914: eddf 6a24    	vldr	s13, [pc, #144]         @ 0x69a8 <$d+0xc>
    6918: 2b00         	cmp	r3, #0
    691a: eeb0 7a67    	vmov.f32	s14, s15
    691e: bfb8         	it	lt
    6920: eef0 7a66    	vmovlt.f32	s15, s13
    6924: ee27 0a87    	vmul.f32	s0, s15, s14
    6928: 4770         	bx	lr
    692a: ee30 0a00    	vadd.f32	s0, s0, s0
    692e: 4770         	bx	lr
    6930: 4770         	bx	lr
    6932: f24c 3c50    	movw	r12, #50000
    6936: 4560         	cmp	r0, r12
    6938: ea4f 51d1    	lsr.w	r1, r1, #23
    693c: dce8         	bgt	0x6910 <scalbnf+0x3c>   @ imm = #-48
    693e: 4401         	add	r1, r0
    6940: 29fe         	cmp	r1, #254
    6942: dce5         	bgt	0x6910 <scalbnf+0x3c>   @ imm = #-54
    6944: 2900         	cmp	r1, #0
    6946: dc15         	bgt	0x6974 <scalbnf+0xa0>   @ imm = #42
    6948: f111 0f16    	cmn.w	r1, #22
    694c: db19         	blt	0x6982 <scalbnf+0xae>   @ imm = #50
    694e: 3119         	adds	r1, #25
    6950: f022 42ff    	bic	r2, r2, #2139095040
    6954: ea42 52c1    	orr.w	r2, r2, r1, lsl #23
    6958: ee07 2a90    	vmov	s15, r2
    695c: ed9f 0a13    	vldr	s0, [pc, #76]           @ 0x69ac <$d+0x10>
    6960: ee27 0a80    	vmul.f32	s0, s15, s0
    6964: 4770         	bx	lr
    6966: eddf 7a12    	vldr	s15, [pc, #72]          @ 0x69b0 <$d+0x14>
    696a: ee07 3a10    	vmov	s14, r3
    696e: ee27 0a27    	vmul.f32	s0, s14, s15
    6972: 4770         	bx	lr
    6974: f022 42ff    	bic	r2, r2, #2139095040
    6978: ea42 53c1    	orr.w	r3, r2, r1, lsl #23
    697c: ee00 3a10    	vmov	s0, r3
    6980: 4770         	bx	lr
    6982: eddf 7a0b    	vldr	s15, [pc, #44]          @ 0x69b0 <$d+0x14>
    6986: eddf 6a0b    	vldr	s13, [pc, #44]          @ 0x69b4 <$d+0x18>
    698a: 2b00         	cmp	r3, #0
    698c: eeb0 7a67    	vmov.f32	s14, s15
    6990: bfb8         	it	lt
    6992: eef0 7a66    	vmovlt.f32	s15, s13
    6996: ee27 0a87    	vmul.f32	s0, s15, s14
    699a: 4770         	bx	lr

0000699c <$d>:
    699c: 00 00 00 4c  	.word	0x4c000000
    69a0: b0 3c ff ff  	.word	0xffff3cb0
    69a4: ca f2 49 71  	.word	0x7149f2ca
    69a8: ca f2 49 f1  	.word	0xf149f2ca
    69ac: 00 00 00 33  	.word	0x33000000
    69b0: 60 42 a2 0d  	.word	0x0da24260
    69b4: 60 42 a2 8d  	.word	0x8da24260

000069b8 <memset>:
; memset():
    69b8: 4402         	add	r2, r0
    69ba: 4603         	mov	r3, r0
    69bc: 4293         	cmp	r3, r2
    69be: d100         	bne	0x69c2 <memset+0xa>     @ imm = #0
    69c0: 4770         	bx	lr
    69c2: f803 1b01    	strb	r1, [r3], #1
    69c6: e7f9         	b	0x69bc <memset+0x4>     @ imm = #-14

000069c8 <__libc_init_array>:
; __libc_init_array():
    69c8: b570         	push	{r4, r5, r6, lr}
    69ca: 4d0d         	ldr	r5, [pc, #52]           @ 0x6a00 <$d>
    69cc: 4c0d         	ldr	r4, [pc, #52]           @ 0x6a04 <$d+0x4>
    69ce: 1b64         	subs	r4, r4, r5
    69d0: 10a4         	asrs	r4, r4, #2
    69d2: 2600         	movs	r6, #0
    69d4: 42a6         	cmp	r6, r4
    69d6: d109         	bne	0x69ec <__libc_init_array+0x24> @ imm = #18
    69d8: 4d0b         	ldr	r5, [pc, #44]           @ 0x6a08 <$d+0x8>
    69da: 4c0c         	ldr	r4, [pc, #48]           @ 0x6a0c <$d+0xc>
    69dc: f000 ffd0    	bl	0x7980 <_init>          @ imm = #4000
    69e0: 1b64         	subs	r4, r4, r5
    69e2: 10a4         	asrs	r4, r4, #2
    69e4: 2600         	movs	r6, #0
    69e6: 42a6         	cmp	r6, r4
    69e8: d105         	bne	0x69f6 <__libc_init_array+0x2e> @ imm = #10
    69ea: bd70         	pop	{r4, r5, r6, pc}
    69ec: f855 3b04    	ldr	r3, [r5], #4
    69f0: 4798         	blx	r3
    69f2: 3601         	adds	r6, #1
    69f4: e7ee         	b	0x69d4 <__libc_init_array+0xc> @ imm = #-36
    69f6: f855 3b04    	ldr	r3, [r5], #4
    69fa: 4798         	blx	r3
    69fc: 3601         	adds	r6, #1
    69fe: e7f2         	b	0x69e6 <__libc_init_array+0x1e> @ imm = #-28

00006a00 <$d>:
    6a00: 08 00 00 20  	.word	0x20000008
    6a04: 08 00 00 20  	.word	0x20000008
    6a08: 08 00 00 20  	.word	0x20000008
    6a0c: 0c 00 00 20  	.word	0x2000000c

00006a10 <memcpy>:
; memcpy():
    6a10: 440a         	add	r2, r1
    6a12: 4291         	cmp	r1, r2
    6a14: f100 33ff    	add.w	r3, r0, #4294967295
    6a18: d100         	bne	0x6a1c <memcpy+0xc>     @ imm = #0
    6a1a: 4770         	bx	lr
    6a1c: b510         	push	{r4, lr}
    6a1e: f811 4b01    	ldrb	r4, [r1], #1
    6a22: f803 4f01    	strb	r4, [r3, #1]!
    6a26: 4291         	cmp	r1, r2
    6a28: d1f9         	bne	0x6a1e <memcpy+0xe>     @ imm = #-14
    6a2a: bd10         	pop	{r4, pc}

00006a2c <__aeabi_drsub>:
; __aeabi_drsub():
    6a2c: f081 4100    	eor	r1, r1, #2147483648
    6a30: e002         	b	0x6a38 <__aeabi_dadd>   @ imm = #4
    6a32: bf00         	nop

00006a34 <__subdf3>:
; __subdf3():
    6a34: f083 4300    	eor	r3, r3, #2147483648

00006a38 <__aeabi_dadd>:
; __aeabi_dadd():
    6a38: b530         	push	{r4, r5, lr}
    6a3a: ea4f 0441    	lsl.w	r4, r1, #1
    6a3e: ea4f 0543    	lsl.w	r5, r3, #1
    6a42: ea94 0f05    	teq.w	r4, r5
    6a46: bf08         	it	eq
    6a48: ea90 0f02    	teqeq.w	r0, r2
    6a4c: bf1f         	itttt	ne
    6a4e: ea54 0c00    	orrsne.w	r12, r4, r0
    6a52: ea55 0c02    	orrsne.w	r12, r5, r2
    6a56: ea7f 5c64    	mvnsne.w	r12, r4, asr #21
    6a5a: ea7f 5c65    	mvnsne.w	r12, r5, asr #21
    6a5e: f000 80e2    	beq.w	0x6c26 <__aeabi_dadd+0x1ee> @ imm = #452
    6a62: ea4f 5454    	lsr.w	r4, r4, #21
    6a66: ebd4 5555    	rsbs	r5, r4, r5, lsr #21
    6a6a: bfb8         	it	lt
    6a6c: 426d         	rsblt	r5, r5, #0
    6a6e: dd0c         	ble	0x6a8a <__aeabi_dadd+0x52> @ imm = #24
    6a70: 442c         	add	r4, r5
    6a72: ea80 0202    	eor.w	r2, r0, r2
    6a76: ea81 0303    	eor.w	r3, r1, r3
    6a7a: ea82 0000    	eor.w	r0, r2, r0
    6a7e: ea83 0101    	eor.w	r1, r3, r1
    6a82: ea80 0202    	eor.w	r2, r0, r2
    6a86: ea81 0303    	eor.w	r3, r1, r3
    6a8a: 2d36         	cmp	r5, #54
    6a8c: bf88         	it	hi
    6a8e: bd30         	pophi	{r4, r5, pc}
    6a90: f011 4f00    	tst.w	r1, #2147483648
    6a94: ea4f 3101    	lsl.w	r1, r1, #12
    6a98: f44f 1c80    	mov.w	r12, #1048576
    6a9c: ea4c 3111    	orr.w	r1, r12, r1, lsr #12
    6aa0: d002         	beq	0x6aa8 <__aeabi_dadd+0x70> @ imm = #4
    6aa2: 4240         	rsbs	r0, r0, #0
    6aa4: eb61 0141    	sbc.w	r1, r1, r1, lsl #1
    6aa8: f013 4f00    	tst.w	r3, #2147483648
    6aac: ea4f 3303    	lsl.w	r3, r3, #12
    6ab0: ea4c 3313    	orr.w	r3, r12, r3, lsr #12
    6ab4: d002         	beq	0x6abc <__aeabi_dadd+0x84> @ imm = #4
    6ab6: 4252         	rsbs	r2, r2, #0
    6ab8: eb63 0343    	sbc.w	r3, r3, r3, lsl #1
    6abc: ea94 0f05    	teq.w	r4, r5
    6ac0: f000 80a7    	beq.w	0x6c12 <__aeabi_dadd+0x1da> @ imm = #334
    6ac4: f1a4 0401    	sub.w	r4, r4, #1
    6ac8: f1d5 0e20    	rsbs.w	lr, r5, #32
    6acc: db0d         	blt	0x6aea <__aeabi_dadd+0xb2> @ imm = #26
    6ace: fa02 fc0e    	lsl.w	r12, r2, lr
    6ad2: fa22 f205    	lsr.w	r2, r2, r5
    6ad6: 1880         	adds	r0, r0, r2
    6ad8: f141 0100    	adc	r1, r1, #0
    6adc: fa03 f20e    	lsl.w	r2, r3, lr
    6ae0: 1880         	adds	r0, r0, r2
    6ae2: fa43 f305    	asr.w	r3, r3, r5
    6ae6: 4159         	adcs	r1, r3
    6ae8: e00e         	b	0x6b08 <__aeabi_dadd+0xd0> @ imm = #28
    6aea: f1a5 0520    	sub.w	r5, r5, #32
    6aee: f10e 0e20    	add.w	lr, lr, #32
    6af2: 2a01         	cmp	r2, #1
    6af4: fa03 fc0e    	lsl.w	r12, r3, lr
    6af8: bf28         	it	hs
    6afa: f04c 0c02    	orrhs	r12, r12, #2
    6afe: fa43 f305    	asr.w	r3, r3, r5
    6b02: 18c0         	adds	r0, r0, r3
    6b04: eb51 71e3    	adcs.w	r1, r1, r3, asr #31
    6b08: f001 4500    	and	r5, r1, #2147483648
    6b0c: d507         	bpl	0x6b1e <__aeabi_dadd+0xe6> @ imm = #14
    6b0e: f04f 0e00    	mov.w	lr, #0
    6b12: f1dc 0c00    	rsbs.w	r12, r12, #0
    6b16: eb7e 0000    	sbcs.w	r0, lr, r0
    6b1a: eb6e 0101    	sbc.w	r1, lr, r1
    6b1e: f5b1 1f80    	cmp.w	r1, #1048576
    6b22: d31b         	blo	0x6b5c <__aeabi_dadd+0x124> @ imm = #54
    6b24: f5b1 1f00    	cmp.w	r1, #2097152
    6b28: d30c         	blo	0x6b44 <__aeabi_dadd+0x10c> @ imm = #24
    6b2a: 0849         	lsrs	r1, r1, #1
    6b2c: ea5f 0030    	rrxs	r0, r0
    6b30: ea4f 0c3c    	rrx	r12, r12
    6b34: f104 0401    	add.w	r4, r4, #1
    6b38: ea4f 5244    	lsl.w	r2, r4, #21
    6b3c: f512 0f80    	cmn.w	r2, #4194304
    6b40: f080 809a    	bhs.w	0x6c78 <__aeabi_dadd+0x240> @ imm = #308
    6b44: f1bc 4f00    	cmp.w	r12, #2147483648
    6b48: bf08         	it	eq
    6b4a: ea5f 0c50    	lsrseq.w	r12, r0, #1
    6b4e: f150 0000    	adcs	r0, r0, #0
    6b52: eb41 5104    	adc.w	r1, r1, r4, lsl #20
    6b56: ea41 0105    	orr.w	r1, r1, r5
    6b5a: bd30         	pop	{r4, r5, pc}
    6b5c: ea5f 0c4c    	lsls.w	r12, r12, #1
    6b60: 4140         	adcs	r0, r0
    6b62: eb41 0101    	adc.w	r1, r1, r1
    6b66: 3c01         	subs	r4, #1
    6b68: bf28         	it	hs
    6b6a: f5b1 1f80    	cmphs.w	r1, #1048576
    6b6e: d2e9         	bhs	0x6b44 <__aeabi_dadd+0x10c> @ imm = #-46
    6b70: f091 0f00    	teq.w	r1, #0
    6b74: bf04         	itt	eq
    6b76: 4601         	moveq	r1, r0
    6b78: 2000         	moveq	r0, #0
    6b7a: fab1 f381    	clz	r3, r1
    6b7e: bf08         	it	eq
    6b80: 3320         	addeq	r3, #32
    6b82: f1a3 030b    	sub.w	r3, r3, #11
    6b86: f1b3 0220    	subs.w	r2, r3, #32
    6b8a: da0c         	bge	0x6ba6 <__aeabi_dadd+0x16e> @ imm = #24
    6b8c: 320c         	adds	r2, #12
    6b8e: dd08         	ble	0x6ba2 <__aeabi_dadd+0x16a> @ imm = #16
    6b90: f102 0c14    	add.w	r12, r2, #20
    6b94: f1c2 020c    	rsb.w	r2, r2, #12
    6b98: fa01 f00c    	lsl.w	r0, r1, r12
    6b9c: fa21 f102    	lsr.w	r1, r1, r2
    6ba0: e00c         	b	0x6bbc <__aeabi_dadd+0x184> @ imm = #24
    6ba2: f102 0214    	add.w	r2, r2, #20
    6ba6: bfd8         	it	le
    6ba8: f1c2 0c20    	rsble.w	r12, r2, #32
    6bac: fa01 f102    	lsl.w	r1, r1, r2
    6bb0: fa20 fc0c    	lsr.w	r12, r0, r12
    6bb4: bfdc         	itt	le
    6bb6: ea41 010c    	orrle.w	r1, r1, r12
    6bba: 4090         	lslle	r0, r2
    6bbc: 1ae4         	subs	r4, r4, r3
    6bbe: bfa2         	ittt	ge
    6bc0: eb01 5104    	addge.w	r1, r1, r4, lsl #20
    6bc4: 4329         	orrge	r1, r5
    6bc6: bd30         	popge	{r4, r5, pc}
    6bc8: ea6f 0404    	mvn.w	r4, r4
    6bcc: 3c1f         	subs	r4, #31
    6bce: da1c         	bge	0x6c0a <__aeabi_dadd+0x1d2> @ imm = #56
    6bd0: 340c         	adds	r4, #12
    6bd2: dc0e         	bgt	0x6bf2 <__aeabi_dadd+0x1ba> @ imm = #28
    6bd4: f104 0414    	add.w	r4, r4, #20
    6bd8: f1c4 0220    	rsb.w	r2, r4, #32
    6bdc: fa20 f004    	lsr.w	r0, r0, r4
    6be0: fa01 f302    	lsl.w	r3, r1, r2
    6be4: ea40 0003    	orr.w	r0, r0, r3
    6be8: fa21 f304    	lsr.w	r3, r1, r4
    6bec: ea45 0103    	orr.w	r1, r5, r3
    6bf0: bd30         	pop	{r4, r5, pc}
    6bf2: f1c4 040c    	rsb.w	r4, r4, #12
    6bf6: f1c4 0220    	rsb.w	r2, r4, #32
    6bfa: fa20 f002    	lsr.w	r0, r0, r2
    6bfe: fa01 f304    	lsl.w	r3, r1, r4
    6c02: ea40 0003    	orr.w	r0, r0, r3
    6c06: 4629         	mov	r1, r5
    6c08: bd30         	pop	{r4, r5, pc}
    6c0a: fa21 f004    	lsr.w	r0, r1, r4
    6c0e: 4629         	mov	r1, r5
    6c10: bd30         	pop	{r4, r5, pc}
    6c12: f094 0f00    	teq.w	r4, #0
    6c16: f483 1380    	eor	r3, r3, #1048576
    6c1a: bf06         	itte	eq
    6c1c: f481 1180    	eoreq	r1, r1, #1048576
    6c20: 3401         	addeq	r4, #1
    6c22: 3d01         	subne	r5, #1
    6c24: e74e         	b	0x6ac4 <__aeabi_dadd+0x8c> @ imm = #-356
    6c26: ea7f 5c64    	mvns.w	r12, r4, asr #21
    6c2a: bf18         	it	ne
    6c2c: ea7f 5c65    	mvnsne.w	r12, r5, asr #21
    6c30: d029         	beq	0x6c86 <__aeabi_dadd+0x24e> @ imm = #82
    6c32: ea94 0f05    	teq.w	r4, r5
    6c36: bf08         	it	eq
    6c38: ea90 0f02    	teqeq.w	r0, r2
    6c3c: d005         	beq	0x6c4a <__aeabi_dadd+0x212> @ imm = #10
    6c3e: ea54 0c00    	orrs.w	r12, r4, r0
    6c42: bf04         	itt	eq
    6c44: 4619         	moveq	r1, r3
    6c46: 4610         	moveq	r0, r2
    6c48: bd30         	pop	{r4, r5, pc}
    6c4a: ea91 0f03    	teq.w	r1, r3
    6c4e: bf1e         	ittt	ne
    6c50: 2100         	movne	r1, #0
    6c52: 2000         	movne	r0, #0
    6c54: bd30         	popne	{r4, r5, pc}
    6c56: ea5f 5c54    	lsrs.w	r12, r4, #21
    6c5a: d105         	bne	0x6c68 <__aeabi_dadd+0x230> @ imm = #10
    6c5c: 0040         	lsls	r0, r0, #1
    6c5e: 4149         	adcs	r1, r1
    6c60: bf28         	it	hs
    6c62: f041 4100    	orrhs	r1, r1, #2147483648
    6c66: bd30         	pop	{r4, r5, pc}
    6c68: f514 0480    	adds.w	r4, r4, #4194304
    6c6c: bf3c         	itt	lo
    6c6e: f501 1180    	addlo.w	r1, r1, #1048576
    6c72: bd30         	poplo	{r4, r5, pc}
    6c74: f001 4500    	and	r5, r1, #2147483648
    6c78: f045 41fe    	orr	r1, r5, #2130706432
    6c7c: f441 0170    	orr	r1, r1, #15728640
    6c80: f04f 0000    	mov.w	r0, #0
    6c84: bd30         	pop	{r4, r5, pc}
    6c86: ea7f 5c64    	mvns.w	r12, r4, asr #21
    6c8a: bf1a         	itte	ne
    6c8c: 4619         	movne	r1, r3
    6c8e: 4610         	movne	r0, r2
    6c90: ea7f 5c65    	mvnseq.w	r12, r5, asr #21
    6c94: bf1c         	itt	ne
    6c96: 460b         	movne	r3, r1
    6c98: 4602         	movne	r2, r0
    6c9a: ea50 3401    	orrs.w	r4, r0, r1, lsl #12
    6c9e: bf06         	itte	eq
    6ca0: ea52 3503    	orrseq.w	r5, r2, r3, lsl #12
    6ca4: ea91 0f03    	teqeq.w	r1, r3
    6ca8: f441 2100    	orrne	r1, r1, #524288
    6cac: bd30         	pop	{r4, r5, pc}
    6cae: bf00         	nop

00006cb0 <__floatunsidf>:
; __floatunsidf():
    6cb0: f090 0f00    	teq.w	r0, #0
    6cb4: bf04         	itt	eq
    6cb6: 2100         	moveq	r1, #0
    6cb8: 4770         	bxeq	lr
    6cba: b530         	push	{r4, r5, lr}
    6cbc: f44f 6480    	mov.w	r4, #1024
    6cc0: f104 0432    	add.w	r4, r4, #50
    6cc4: f04f 0500    	mov.w	r5, #0
    6cc8: f04f 0100    	mov.w	r1, #0
    6ccc: e750         	b	0x6b70 <__aeabi_dadd+0x138> @ imm = #-352
    6cce: bf00         	nop

00006cd0 <__floatsidf>:
; __aeabi_i2d():
    6cd0: f090 0f00    	teq.w	r0, #0
    6cd4: bf04         	itt	eq
    6cd6: 2100         	moveq	r1, #0
    6cd8: 4770         	bxeq	lr
    6cda: b530         	push	{r4, r5, lr}
    6cdc: f44f 6480    	mov.w	r4, #1024
    6ce0: f104 0432    	add.w	r4, r4, #50
    6ce4: f010 4500    	ands	r5, r0, #2147483648
    6ce8: bf48         	it	mi
    6cea: 4240         	rsbmi	r0, r0, #0
    6cec: f04f 0100    	mov.w	r1, #0
    6cf0: e73e         	b	0x6b70 <__aeabi_dadd+0x138> @ imm = #-388
    6cf2: bf00         	nop

00006cf4 <__extendsfdf2>:
; __aeabi_f2d():
    6cf4: 0042         	lsls	r2, r0, #1
    6cf6: ea4f 01e2    	asr.w	r1, r2, #3
    6cfa: ea4f 0131    	rrx	r1, r1
    6cfe: ea4f 7002    	lsl.w	r0, r2, #28
    6d02: bf1f         	itttt	ne
    6d04: f012 437f    	andsne	r3, r2, #4278190080
    6d08: f093 4f7f    	teqne.w	r3, #4278190080
    6d0c: f081 5160    	eorne	r1, r1, #939524096
    6d10: 4770         	bxne	lr
    6d12: f032 427f    	bics	r2, r2, #4278190080
    6d16: bf08         	it	eq
    6d18: 4770         	bxeq	lr
    6d1a: f093 4f7f    	teq.w	r3, #4278190080
    6d1e: bf04         	itt	eq
    6d20: f441 2100    	orreq	r1, r1, #524288
    6d24: 4770         	bxeq	lr
    6d26: b530         	push	{r4, r5, lr}
    6d28: f44f 7460    	mov.w	r4, #896
    6d2c: f001 4500    	and	r5, r1, #2147483648
    6d30: f021 4100    	bic	r1, r1, #2147483648
    6d34: e71c         	b	0x6b70 <__aeabi_dadd+0x138> @ imm = #-456
    6d36: bf00         	nop

00006d38 <__floatundidf>:
; __floatundidf():
    6d38: ea50 0201    	orrs.w	r2, r0, r1
    6d3c: bf08         	it	eq
    6d3e: 4770         	bxeq	lr
    6d40: b530         	push	{r4, r5, lr}
    6d42: f04f 0500    	mov.w	r5, #0
    6d46: e00a         	b	0x6d5e <__floatdidf+0x16> @ imm = #20

00006d48 <__floatdidf>:
; __aeabi_l2d():
    6d48: ea50 0201    	orrs.w	r2, r0, r1
    6d4c: bf08         	it	eq
    6d4e: 4770         	bxeq	lr
    6d50: b530         	push	{r4, r5, lr}
    6d52: f011 4500    	ands	r5, r1, #2147483648
    6d56: d502         	bpl	0x6d5e <__floatdidf+0x16> @ imm = #4
    6d58: 4240         	rsbs	r0, r0, #0
    6d5a: eb61 0141    	sbc.w	r1, r1, r1, lsl #1
    6d5e: f44f 6480    	mov.w	r4, #1024
    6d62: f104 0432    	add.w	r4, r4, #50
    6d66: ea5f 5c91    	lsrs.w	r12, r1, #22
    6d6a: f43f aed8    	beq.w	0x6b1e <__aeabi_dadd+0xe6> @ imm = #-592
    6d6e: f04f 0203    	mov.w	r2, #3
    6d72: ea5f 0cdc    	lsrs.w	r12, r12, #3
    6d76: bf18         	it	ne
    6d78: 3203         	addne	r2, #3
    6d7a: ea5f 0cdc    	lsrs.w	r12, r12, #3
    6d7e: bf18         	it	ne
    6d80: 3203         	addne	r2, #3
    6d82: eb02 02dc    	add.w	r2, r2, r12, lsr #3
    6d86: f1c2 0320    	rsb.w	r3, r2, #32
    6d8a: fa00 fc03    	lsl.w	r12, r0, r3
    6d8e: fa20 f002    	lsr.w	r0, r0, r2
    6d92: fa01 fe03    	lsl.w	lr, r1, r3
    6d96: ea40 000e    	orr.w	r0, r0, lr
    6d9a: fa21 f102    	lsr.w	r1, r1, r2
    6d9e: 4414         	add	r4, r2
    6da0: e6bd         	b	0x6b1e <__aeabi_dadd+0xe6> @ imm = #-646
    6da2: bf00         	nop

00006da4 <__muldf3>:
; __muldf3():
    6da4: b570         	push	{r4, r5, r6, lr}
    6da6: f04f 0cff    	mov.w	r12, #255
    6daa: f44c 6ce0    	orr	r12, r12, #1792
    6dae: ea1c 5411    	ands.w	r4, r12, r1, lsr #20
    6db2: bf1d         	ittte	ne
    6db4: ea1c 5513    	andsne.w	r5, r12, r3, lsr #20
    6db8: ea94 0f0c    	teqne.w	r4, r12
    6dbc: ea95 0f0c    	teqne.w	r5, r12
    6dc0: f000 f8de    	bleq	0x6f80 <__muldf3+0x1dc> @ imm = #444
    6dc4: 442c         	add	r4, r5
    6dc6: ea81 0603    	eor.w	r6, r1, r3
    6dca: ea21 514c    	bic.w	r1, r1, r12, lsl #21
    6dce: ea23 534c    	bic.w	r3, r3, r12, lsl #21
    6dd2: ea50 3501    	orrs.w	r5, r0, r1, lsl #12
    6dd6: bf18         	it	ne
    6dd8: ea52 3503    	orrsne.w	r5, r2, r3, lsl #12
    6ddc: f441 1180    	orr	r1, r1, #1048576
    6de0: f443 1380    	orr	r3, r3, #1048576
    6de4: d038         	beq	0x6e58 <__muldf3+0xb4>  @ imm = #112
    6de6: fba0 ce02    	umull	r12, lr, r0, r2
    6dea: f04f 0500    	mov.w	r5, #0
    6dee: fbe1 e502    	umlal	lr, r5, r1, r2
    6df2: f006 4200    	and	r2, r6, #2147483648
    6df6: fbe0 e503    	umlal	lr, r5, r0, r3
    6dfa: f04f 0600    	mov.w	r6, #0
    6dfe: fbe1 5603    	umlal	r5, r6, r1, r3
    6e02: f09c 0f00    	teq.w	r12, #0
    6e06: bf18         	it	ne
    6e08: f04e 0e01    	orrne	lr, lr, #1
    6e0c: f1a4 04ff    	sub.w	r4, r4, #255
    6e10: f5b6 7f00    	cmp.w	r6, #512
    6e14: f564 7440    	sbc	r4, r4, #768
    6e18: d204         	bhs	0x6e24 <__muldf3+0x80>  @ imm = #8
    6e1a: ea5f 0e4e    	lsls.w	lr, lr, #1
    6e1e: 416d         	adcs	r5, r5
    6e20: eb46 0606    	adc.w	r6, r6, r6
    6e24: ea42 21c6    	orr.w	r1, r2, r6, lsl #11
    6e28: ea41 5155    	orr.w	r1, r1, r5, lsr #21
    6e2c: ea4f 20c5    	lsl.w	r0, r5, #11
    6e30: ea40 505e    	orr.w	r0, r0, lr, lsr #21
    6e34: ea4f 2ece    	lsl.w	lr, lr, #11
    6e38: f1b4 0cfd    	subs.w	r12, r4, #253
    6e3c: bf88         	it	hi
    6e3e: f5bc 6fe0    	cmphi.w	r12, #1792
    6e42: d81e         	bhi	0x6e82 <__muldf3+0xde>  @ imm = #60
    6e44: f1be 4f00    	cmp.w	lr, #2147483648
    6e48: bf08         	it	eq
    6e4a: ea5f 0e50    	lsrseq.w	lr, r0, #1
    6e4e: f150 0000    	adcs	r0, r0, #0
    6e52: eb41 5104    	adc.w	r1, r1, r4, lsl #20
    6e56: bd70         	pop	{r4, r5, r6, pc}
    6e58: f006 4600    	and	r6, r6, #2147483648
    6e5c: ea46 0101    	orr.w	r1, r6, r1
    6e60: ea40 0002    	orr.w	r0, r0, r2
    6e64: ea81 0103    	eor.w	r1, r1, r3
    6e68: ebb4 045c    	subs.w	r4, r4, r12, lsr #1
    6e6c: bfc2         	ittt	gt
    6e6e: ebd4 050c    	rsbsgt	r5, r4, r12
    6e72: ea41 5104    	orrgt.w	r1, r1, r4, lsl #20
    6e76: bd70         	popgt	{r4, r5, r6, pc}
    6e78: f441 1180    	orr	r1, r1, #1048576
    6e7c: f04f 0e00    	mov.w	lr, #0
    6e80: 3c01         	subs	r4, #1
    6e82: f300 80ab    	bgt.w	0x6fdc <__muldf3+0x238> @ imm = #342
    6e86: f114 0f36    	cmn.w	r4, #54
    6e8a: bfde         	ittt	le
    6e8c: 2000         	movle	r0, #0
    6e8e: f001 4100    	andle	r1, r1, #2147483648
    6e92: bd70         	pople	{r4, r5, r6, pc}
    6e94: f1c4 0400    	rsb.w	r4, r4, #0
    6e98: 3c20         	subs	r4, #32
    6e9a: da35         	bge	0x6f08 <__muldf3+0x164> @ imm = #106
    6e9c: 340c         	adds	r4, #12
    6e9e: dc1b         	bgt	0x6ed8 <__muldf3+0x134> @ imm = #54
    6ea0: f104 0414    	add.w	r4, r4, #20
    6ea4: f1c4 0520    	rsb.w	r5, r4, #32
    6ea8: fa00 f305    	lsl.w	r3, r0, r5
    6eac: fa20 f004    	lsr.w	r0, r0, r4
    6eb0: fa01 f205    	lsl.w	r2, r1, r5
    6eb4: ea40 0002    	orr.w	r0, r0, r2
    6eb8: f001 4200    	and	r2, r1, #2147483648
    6ebc: f021 4100    	bic	r1, r1, #2147483648
    6ec0: eb10 70d3    	adds.w	r0, r0, r3, lsr #31
    6ec4: fa21 f604    	lsr.w	r6, r1, r4
    6ec8: eb42 0106    	adc.w	r1, r2, r6
    6ecc: ea5e 0e43    	orrs.w	lr, lr, r3, lsl #1
    6ed0: bf08         	it	eq
    6ed2: ea20 70d3    	biceq.w	r0, r0, r3, lsr #31
    6ed6: bd70         	pop	{r4, r5, r6, pc}
    6ed8: f1c4 040c    	rsb.w	r4, r4, #12
    6edc: f1c4 0520    	rsb.w	r5, r4, #32
    6ee0: fa00 f304    	lsl.w	r3, r0, r4
    6ee4: fa20 f005    	lsr.w	r0, r0, r5
    6ee8: fa01 f204    	lsl.w	r2, r1, r4
    6eec: ea40 0002    	orr.w	r0, r0, r2
    6ef0: f001 4100    	and	r1, r1, #2147483648
    6ef4: eb10 70d3    	adds.w	r0, r0, r3, lsr #31
    6ef8: f141 0100    	adc	r1, r1, #0
    6efc: ea5e 0e43    	orrs.w	lr, lr, r3, lsl #1
    6f00: bf08         	it	eq
    6f02: ea20 70d3    	biceq.w	r0, r0, r3, lsr #31
    6f06: bd70         	pop	{r4, r5, r6, pc}
    6f08: f1c4 0520    	rsb.w	r5, r4, #32
    6f0c: fa00 f205    	lsl.w	r2, r0, r5
    6f10: ea4e 0e02    	orr.w	lr, lr, r2
    6f14: fa20 f304    	lsr.w	r3, r0, r4
    6f18: fa01 f205    	lsl.w	r2, r1, r5
    6f1c: ea43 0302    	orr.w	r3, r3, r2
    6f20: fa21 f004    	lsr.w	r0, r1, r4
    6f24: f001 4100    	and	r1, r1, #2147483648
    6f28: fa21 f204    	lsr.w	r2, r1, r4
    6f2c: ea20 0002    	bic.w	r0, r0, r2
    6f30: eb00 70d3    	add.w	r0, r0, r3, lsr #31
    6f34: ea5e 0e43    	orrs.w	lr, lr, r3, lsl #1
    6f38: bf08         	it	eq
    6f3a: ea20 70d3    	biceq.w	r0, r0, r3, lsr #31
    6f3e: bd70         	pop	{r4, r5, r6, pc}
    6f40: f094 0f00    	teq.w	r4, #0
    6f44: d10f         	bne	0x6f66 <__muldf3+0x1c2> @ imm = #30
    6f46: f001 4600    	and	r6, r1, #2147483648
    6f4a: 0040         	lsls	r0, r0, #1
    6f4c: eb41 0101    	adc.w	r1, r1, r1
    6f50: f411 1f80    	tst.w	r1, #1048576
    6f54: bf08         	it	eq
    6f56: 3c01         	subeq	r4, #1
    6f58: d0f7         	beq	0x6f4a <__muldf3+0x1a6> @ imm = #-18
    6f5a: ea41 0106    	orr.w	r1, r1, r6
    6f5e: f095 0f00    	teq.w	r5, #0
    6f62: bf18         	it	ne
    6f64: 4770         	bxne	lr
    6f66: f003 4600    	and	r6, r3, #2147483648
    6f6a: 0052         	lsls	r2, r2, #1
    6f6c: eb43 0303    	adc.w	r3, r3, r3
    6f70: f413 1f80    	tst.w	r3, #1048576
    6f74: bf08         	it	eq
    6f76: 3d01         	subeq	r5, #1
    6f78: d0f7         	beq	0x6f6a <__muldf3+0x1c6> @ imm = #-18
    6f7a: ea43 0306    	orr.w	r3, r3, r6
    6f7e: 4770         	bx	lr
    6f80: ea94 0f0c    	teq.w	r4, r12
    6f84: ea0c 5513    	and.w	r5, r12, r3, lsr #20
    6f88: bf18         	it	ne
    6f8a: ea95 0f0c    	teqne.w	r5, r12
    6f8e: d00c         	beq	0x6faa <__muldf3+0x206> @ imm = #24
    6f90: ea50 0641    	orrs.w	r6, r0, r1, lsl #1
    6f94: bf18         	it	ne
    6f96: ea52 0643    	orrsne.w	r6, r2, r3, lsl #1
    6f9a: d1d1         	bne	0x6f40 <__muldf3+0x19c> @ imm = #-94
    6f9c: ea81 0103    	eor.w	r1, r1, r3
    6fa0: f001 4100    	and	r1, r1, #2147483648
    6fa4: f04f 0000    	mov.w	r0, #0
    6fa8: bd70         	pop	{r4, r5, r6, pc}
    6faa: ea50 0641    	orrs.w	r6, r0, r1, lsl #1
    6fae: bf06         	itte	eq
    6fb0: 4610         	moveq	r0, r2
    6fb2: 4619         	moveq	r1, r3
    6fb4: ea52 0643    	orrsne.w	r6, r2, r3, lsl #1
    6fb8: d019         	beq	0x6fee <__muldf3+0x24a> @ imm = #50
    6fba: ea94 0f0c    	teq.w	r4, r12
    6fbe: d102         	bne	0x6fc6 <__muldf3+0x222> @ imm = #4
    6fc0: ea50 3601    	orrs.w	r6, r0, r1, lsl #12
    6fc4: d113         	bne	0x6fee <__muldf3+0x24a> @ imm = #38
    6fc6: ea95 0f0c    	teq.w	r5, r12
    6fca: d105         	bne	0x6fd8 <__muldf3+0x234> @ imm = #10
    6fcc: ea52 3603    	orrs.w	r6, r2, r3, lsl #12
    6fd0: bf1c         	itt	ne
    6fd2: 4610         	movne	r0, r2
    6fd4: 4619         	movne	r1, r3
    6fd6: d10a         	bne	0x6fee <__muldf3+0x24a> @ imm = #20
    6fd8: ea81 0103    	eor.w	r1, r1, r3
    6fdc: f001 4100    	and	r1, r1, #2147483648
    6fe0: f041 41fe    	orr	r1, r1, #2130706432
    6fe4: f441 0170    	orr	r1, r1, #15728640
    6fe8: f04f 0000    	mov.w	r0, #0
    6fec: bd70         	pop	{r4, r5, r6, pc}
    6fee: f041 41fe    	orr	r1, r1, #2130706432
    6ff2: f441 0178    	orr	r1, r1, #16252928
    6ff6: bd70         	pop	{r4, r5, r6, pc}

00006ff8 <__divdf3>:
; __divdf3():
    6ff8: b570         	push	{r4, r5, r6, lr}
    6ffa: f04f 0cff    	mov.w	r12, #255
    6ffe: f44c 6ce0    	orr	r12, r12, #1792
    7002: ea1c 5411    	ands.w	r4, r12, r1, lsr #20
    7006: bf1d         	ittte	ne
    7008: ea1c 5513    	andsne.w	r5, r12, r3, lsr #20
    700c: ea94 0f0c    	teqne.w	r4, r12
    7010: ea95 0f0c    	teqne.w	r5, r12
    7014: f000 f8a7    	bleq	0x7166 <__divdf3+0x16e> @ imm = #334
    7018: eba4 0405    	sub.w	r4, r4, r5
    701c: ea81 0e03    	eor.w	lr, r1, r3
    7020: ea52 3503    	orrs.w	r5, r2, r3, lsl #12
    7024: ea4f 3101    	lsl.w	r1, r1, #12
    7028: f000 8088    	beq.w	0x713c <__divdf3+0x144> @ imm = #272
    702c: ea4f 3303    	lsl.w	r3, r3, #12
    7030: f04f 5580    	mov.w	r5, #268435456
    7034: ea45 1313    	orr.w	r3, r5, r3, lsr #4
    7038: ea43 6312    	orr.w	r3, r3, r2, lsr #24
    703c: ea4f 2202    	lsl.w	r2, r2, #8
    7040: ea45 1511    	orr.w	r5, r5, r1, lsr #4
    7044: ea45 6510    	orr.w	r5, r5, r0, lsr #24
    7048: ea4f 2600    	lsl.w	r6, r0, #8
    704c: f00e 4100    	and	r1, lr, #2147483648
    7050: 429d         	cmp	r5, r3
    7052: bf08         	it	eq
    7054: 4296         	cmpeq	r6, r2
    7056: f144 04fd    	adc	r4, r4, #253
    705a: f504 7440    	add.w	r4, r4, #768
    705e: d202         	bhs	0x7066 <__divdf3+0x6e>  @ imm = #4
    7060: 085b         	lsrs	r3, r3, #1
    7062: ea4f 0232    	rrx	r2, r2
    7066: 1ab6         	subs	r6, r6, r2
    7068: eb65 0503    	sbc.w	r5, r5, r3
    706c: 085b         	lsrs	r3, r3, #1
    706e: ea4f 0232    	rrx	r2, r2
    7072: f44f 1080    	mov.w	r0, #1048576
    7076: f44f 2c00    	mov.w	r12, #524288
    707a: ebb6 0e02    	subs.w	lr, r6, r2
    707e: eb75 0e03    	sbcs.w	lr, r5, r3
    7082: bf22         	ittt	hs
    7084: 1ab6         	subhs	r6, r6, r2
    7086: 4675         	movhs	r5, lr
    7088: ea40 000c    	orrhs.w	r0, r0, r12
    708c: 085b         	lsrs	r3, r3, #1
    708e: ea4f 0232    	rrx	r2, r2
    7092: ebb6 0e02    	subs.w	lr, r6, r2
    7096: eb75 0e03    	sbcs.w	lr, r5, r3
    709a: bf22         	ittt	hs
    709c: 1ab6         	subhs	r6, r6, r2
    709e: 4675         	movhs	r5, lr
    70a0: ea40 005c    	orrhs.w	r0, r0, r12, lsr #1
    70a4: 085b         	lsrs	r3, r3, #1
    70a6: ea4f 0232    	rrx	r2, r2
    70aa: ebb6 0e02    	subs.w	lr, r6, r2
    70ae: eb75 0e03    	sbcs.w	lr, r5, r3
    70b2: bf22         	ittt	hs
    70b4: 1ab6         	subhs	r6, r6, r2
    70b6: 4675         	movhs	r5, lr
    70b8: ea40 009c    	orrhs.w	r0, r0, r12, lsr #2
    70bc: 085b         	lsrs	r3, r3, #1
    70be: ea4f 0232    	rrx	r2, r2
    70c2: ebb6 0e02    	subs.w	lr, r6, r2
    70c6: eb75 0e03    	sbcs.w	lr, r5, r3
    70ca: bf22         	ittt	hs
    70cc: 1ab6         	subhs	r6, r6, r2
    70ce: 4675         	movhs	r5, lr
    70d0: ea40 00dc    	orrhs.w	r0, r0, r12, lsr #3
    70d4: ea55 0e06    	orrs.w	lr, r5, r6
    70d8: d018         	beq	0x710c <__divdf3+0x114> @ imm = #48
    70da: ea4f 1505    	lsl.w	r5, r5, #4
    70de: ea45 7516    	orr.w	r5, r5, r6, lsr #28
    70e2: ea4f 1606    	lsl.w	r6, r6, #4
    70e6: ea4f 03c3    	lsl.w	r3, r3, #3
    70ea: ea43 7352    	orr.w	r3, r3, r2, lsr #29
    70ee: ea4f 02c2    	lsl.w	r2, r2, #3
    70f2: ea5f 1c1c    	lsrs.w	r12, r12, #4
    70f6: d1c0         	bne	0x707a <__divdf3+0x82>  @ imm = #-128
    70f8: f411 1f80    	tst.w	r1, #1048576
    70fc: d10b         	bne	0x7116 <__divdf3+0x11e> @ imm = #22
    70fe: ea41 0100    	orr.w	r1, r1, r0
    7102: f04f 0000    	mov.w	r0, #0
    7106: f04f 4c00    	mov.w	r12, #2147483648
    710a: e7b6         	b	0x707a <__divdf3+0x82>  @ imm = #-148
    710c: f411 1f80    	tst.w	r1, #1048576
    7110: bf04         	itt	eq
    7112: 4301         	orreq	r1, r0
    7114: 2000         	moveq	r0, #0
    7116: f1b4 0cfd    	subs.w	r12, r4, #253
    711a: bf88         	it	hi
    711c: f5bc 6fe0    	cmphi.w	r12, #1792
    7120: f63f aeaf    	bhi.w	0x6e82 <__muldf3+0xde>  @ imm = #-674
    7124: ebb5 0c03    	subs.w	r12, r5, r3
    7128: bf04         	itt	eq
    712a: ebb6 0c02    	subseq.w	r12, r6, r2
    712e: ea5f 0c50    	lsrseq.w	r12, r0, #1
    7132: f150 0000    	adcs	r0, r0, #0
    7136: eb41 5104    	adc.w	r1, r1, r4, lsl #20
    713a: bd70         	pop	{r4, r5, r6, pc}
    713c: f00e 4e00    	and	lr, lr, #2147483648
    7140: ea4e 3111    	orr.w	r1, lr, r1, lsr #12
    7144: eb14 045c    	adds.w	r4, r4, r12, lsr #1
    7148: bfc2         	ittt	gt
    714a: ebd4 050c    	rsbsgt	r5, r4, r12
    714e: ea41 5104    	orrgt.w	r1, r1, r4, lsl #20
    7152: bd70         	popgt	{r4, r5, r6, pc}
    7154: f441 1180    	orr	r1, r1, #1048576
    7158: f04f 0e00    	mov.w	lr, #0
    715c: 3c01         	subs	r4, #1
    715e: e690         	b	0x6e82 <__muldf3+0xde>  @ imm = #-736
    7160: ea45 0e06    	orr.w	lr, r5, r6
    7164: e68d         	b	0x6e82 <__muldf3+0xde>  @ imm = #-742
    7166: ea0c 5513    	and.w	r5, r12, r3, lsr #20
    716a: ea94 0f0c    	teq.w	r4, r12
    716e: bf08         	it	eq
    7170: ea95 0f0c    	teqeq.w	r5, r12
    7174: f43f af3b    	beq.w	0x6fee <__muldf3+0x24a> @ imm = #-394
    7178: ea94 0f0c    	teq.w	r4, r12
    717c: d10a         	bne	0x7194 <__divdf3+0x19c> @ imm = #20
    717e: ea50 3401    	orrs.w	r4, r0, r1, lsl #12
    7182: f47f af34    	bne.w	0x6fee <__muldf3+0x24a> @ imm = #-408
    7186: ea95 0f0c    	teq.w	r5, r12
    718a: f47f af25    	bne.w	0x6fd8 <__muldf3+0x234> @ imm = #-438
    718e: 4610         	mov	r0, r2
    7190: 4619         	mov	r1, r3
    7192: e72c         	b	0x6fee <__muldf3+0x24a> @ imm = #-424
    7194: ea95 0f0c    	teq.w	r5, r12
    7198: d106         	bne	0x71a8 <__divdf3+0x1b0> @ imm = #12
    719a: ea52 3503    	orrs.w	r5, r2, r3, lsl #12
    719e: f43f aefd    	beq.w	0x6f9c <__muldf3+0x1f8> @ imm = #-518
    71a2: 4610         	mov	r0, r2
    71a4: 4619         	mov	r1, r3
    71a6: e722         	b	0x6fee <__muldf3+0x24a> @ imm = #-444
    71a8: ea50 0641    	orrs.w	r6, r0, r1, lsl #1
    71ac: bf18         	it	ne
    71ae: ea52 0643    	orrsne.w	r6, r2, r3, lsl #1
    71b2: f47f aec5    	bne.w	0x6f40 <__muldf3+0x19c> @ imm = #-630
    71b6: ea50 0441    	orrs.w	r4, r0, r1, lsl #1
    71ba: f47f af0d    	bne.w	0x6fd8 <__muldf3+0x234> @ imm = #-486
    71be: ea52 0543    	orrs.w	r5, r2, r3, lsl #1
    71c2: f47f aeeb    	bne.w	0x6f9c <__muldf3+0x1f8> @ imm = #-554
    71c6: e712         	b	0x6fee <__muldf3+0x24a> @ imm = #-476

000071c8 <__gtdf2>:
; __gedf2():
    71c8: f04f 3cff    	mov.w	r12, #4294967295
    71cc: e006         	b	0x71dc <__nedf2+0x4>    @ imm = #12
    71ce: bf00         	nop

000071d0 <__ltdf2>:
; __ledf2():
    71d0: f04f 0c01    	mov.w	r12, #1
    71d4: e002         	b	0x71dc <__nedf2+0x4>    @ imm = #4
    71d6: bf00         	nop

000071d8 <__nedf2>:
; __nedf2():
    71d8: f04f 0c01    	mov.w	r12, #1
    71dc: f84d cd04    	str	r12, [sp, #-4]!
    71e0: ea4f 0c41    	lsl.w	r12, r1, #1
    71e4: ea7f 5c6c    	mvns.w	r12, r12, asr #21
    71e8: ea4f 0c43    	lsl.w	r12, r3, #1
    71ec: bf18         	it	ne
    71ee: ea7f 5c6c    	mvnsne.w	r12, r12, asr #21
    71f2: d01b         	beq	0x722c <__nedf2+0x54>   @ imm = #54
    71f4: b001         	add	sp, #4
    71f6: ea50 0c41    	orrs.w	r12, r0, r1, lsl #1
    71fa: bf0c         	ite	eq
    71fc: ea52 0c43    	orrseq.w	r12, r2, r3, lsl #1
    7200: ea91 0f03    	teqne.w	r1, r3
    7204: bf02         	ittt	eq
    7206: ea90 0f02    	teqeq.w	r0, r2
    720a: 2000         	moveq	r0, #0
    720c: 4770         	bxeq	lr
    720e: f110 0f00    	cmn.w	r0, #0
    7212: ea91 0f03    	teq.w	r1, r3
    7216: bf58         	it	pl
    7218: 4299         	cmppl	r1, r3
    721a: bf08         	it	eq
    721c: 4290         	cmpeq	r0, r2
    721e: bf2c         	ite	hs
    7220: 17d8         	asrhs	r0, r3, #31
    7222: ea6f 70e3    	mvnlo.w	r0, r3, asr #31
    7226: f040 0001    	orr	r0, r0, #1
    722a: 4770         	bx	lr
    722c: ea4f 0c41    	lsl.w	r12, r1, #1
    7230: ea7f 5c6c    	mvns.w	r12, r12, asr #21
    7234: d102         	bne	0x723c <__nedf2+0x64>   @ imm = #4
    7236: ea50 3c01    	orrs.w	r12, r0, r1, lsl #12
    723a: d107         	bne	0x724c <__nedf2+0x74>   @ imm = #14
    723c: ea4f 0c43    	lsl.w	r12, r3, #1
    7240: ea7f 5c6c    	mvns.w	r12, r12, asr #21
    7244: d1d6         	bne	0x71f4 <__nedf2+0x1c>   @ imm = #-84
    7246: ea52 3c03    	orrs.w	r12, r2, r3, lsl #12
    724a: d0d3         	beq	0x71f4 <__nedf2+0x1c>   @ imm = #-90
    724c: f85d 0b04    	ldr	r0, [sp], #4
    7250: 4770         	bx	lr
    7252: bf00         	nop

00007254 <__aeabi_cdrcmple>:
; __aeabi_cdrcmple():
    7254: 4684         	mov	r12, r0
    7256: 4610         	mov	r0, r2
    7258: 4662         	mov	r2, r12
    725a: 468c         	mov	r12, r1
    725c: 4619         	mov	r1, r3
    725e: 4663         	mov	r3, r12
    7260: e000         	b	0x7264 <__aeabi_cdcmple> @ imm = #0
    7262: bf00         	nop

00007264 <__aeabi_cdcmple>:
; __aeabi_cdcmpeq():
    7264: b501         	push	{r0, lr}
    7266: f7ff ffb7    	bl	0x71d8 <__nedf2>        @ imm = #-146
    726a: 2800         	cmp	r0, #0
    726c: bf48         	it	mi
    726e: f110 0f00    	cmnmi.w	r0, #0
    7272: bd01         	pop	{r0, pc}

00007274 <__aeabi_dcmpeq>:
; __aeabi_dcmpeq():
    7274: f84d ed08    	str	lr, [sp, #-8]!
    7278: f7ff fff4    	bl	0x7264 <__aeabi_cdcmple> @ imm = #-24
    727c: bf0c         	ite	eq
    727e: 2001         	moveq	r0, #1
    7280: 2000         	movne	r0, #0
    7282: f85d fb08    	ldr	pc, [sp], #8
    7286: bf00         	nop

00007288 <__aeabi_dcmplt>:
; __aeabi_dcmplt():
    7288: f84d ed08    	str	lr, [sp, #-8]!
    728c: f7ff ffea    	bl	0x7264 <__aeabi_cdcmple> @ imm = #-44
    7290: bf34         	ite	lo
    7292: 2001         	movlo	r0, #1
    7294: 2000         	movhs	r0, #0
    7296: f85d fb08    	ldr	pc, [sp], #8
    729a: bf00         	nop

0000729c <__aeabi_dcmple>:
; __aeabi_dcmple():
    729c: f84d ed08    	str	lr, [sp, #-8]!
    72a0: f7ff ffe0    	bl	0x7264 <__aeabi_cdcmple> @ imm = #-64
    72a4: bf94         	ite	ls
    72a6: 2001         	movls	r0, #1
    72a8: 2000         	movhi	r0, #0
    72aa: f85d fb08    	ldr	pc, [sp], #8
    72ae: bf00         	nop

000072b0 <__aeabi_dcmpge>:
; __aeabi_dcmpge():
    72b0: f84d ed08    	str	lr, [sp, #-8]!
    72b4: f7ff ffce    	bl	0x7254 <__aeabi_cdrcmple> @ imm = #-100
    72b8: bf94         	ite	ls
    72ba: 2001         	movls	r0, #1
    72bc: 2000         	movhi	r0, #0
    72be: f85d fb08    	ldr	pc, [sp], #8
    72c2: bf00         	nop

000072c4 <__aeabi_dcmpgt>:
; __aeabi_dcmpgt():
    72c4: f84d ed08    	str	lr, [sp, #-8]!
    72c8: f7ff ffc4    	bl	0x7254 <__aeabi_cdrcmple> @ imm = #-120
    72cc: bf34         	ite	lo
    72ce: 2001         	movlo	r0, #1
    72d0: 2000         	movhs	r0, #0
    72d2: f85d fb08    	ldr	pc, [sp], #8
    72d6: bf00         	nop

000072d8 <__fixdfsi>:
; __aeabi_d2iz():
    72d8: ea4f 0241    	lsl.w	r2, r1, #1
    72dc: f512 1200    	adds.w	r2, r2, #2097152
    72e0: d215         	bhs	0x730e <__fixdfsi+0x36> @ imm = #42
    72e2: d511         	bpl	0x7308 <__fixdfsi+0x30> @ imm = #34
    72e4: f46f 7378    	mvn	r3, #992
    72e8: ebb3 5262    	subs.w	r2, r3, r2, asr #21
    72ec: d912         	bls	0x7314 <__fixdfsi+0x3c> @ imm = #36
    72ee: ea4f 23c1    	lsl.w	r3, r1, #11
    72f2: f043 4300    	orr	r3, r3, #2147483648
    72f6: ea43 5350    	orr.w	r3, r3, r0, lsr #21
    72fa: f011 4f00    	tst.w	r1, #2147483648
    72fe: fa23 f002    	lsr.w	r0, r3, r2
    7302: bf18         	it	ne
    7304: 4240         	rsbne	r0, r0, #0
    7306: 4770         	bx	lr
    7308: f04f 0000    	mov.w	r0, #0
    730c: 4770         	bx	lr
    730e: ea50 3001    	orrs.w	r0, r0, r1, lsl #12
    7312: d105         	bne	0x7320 <__fixdfsi+0x48> @ imm = #10
    7314: f011 4000    	ands	r0, r1, #2147483648
    7318: bf08         	it	eq
    731a: f06f 4000    	mvneq	r0, #2147483648
    731e: 4770         	bx	lr
    7320: f04f 0000    	mov.w	r0, #0
    7324: 4770         	bx	lr
    7326: bf00         	nop

00007328 <__fixunsdfsi>:
; __aeabi_d2uiz():
    7328: 004a         	lsls	r2, r1, #1
    732a: d211         	bhs	0x7350 <__fixunsdfsi+0x28> @ imm = #34
    732c: f512 1200    	adds.w	r2, r2, #2097152
    7330: d211         	bhs	0x7356 <__fixunsdfsi+0x2e> @ imm = #34
    7332: d50d         	bpl	0x7350 <__fixunsdfsi+0x28> @ imm = #26
    7334: f46f 7378    	mvn	r3, #992
    7338: ebb3 5262    	subs.w	r2, r3, r2, asr #21
    733c: d40e         	bmi	0x735c <__fixunsdfsi+0x34> @ imm = #28
    733e: ea4f 23c1    	lsl.w	r3, r1, #11
    7342: f043 4300    	orr	r3, r3, #2147483648
    7346: ea43 5350    	orr.w	r3, r3, r0, lsr #21
    734a: fa23 f002    	lsr.w	r0, r3, r2
    734e: 4770         	bx	lr
    7350: f04f 0000    	mov.w	r0, #0
    7354: 4770         	bx	lr
    7356: ea50 3001    	orrs.w	r0, r0, r1, lsl #12
    735a: d102         	bne	0x7362 <__fixunsdfsi+0x3a> @ imm = #4
    735c: f04f 30ff    	mov.w	r0, #4294967295
    7360: 4770         	bx	lr
    7362: f04f 0000    	mov.w	r0, #0
    7366: 4770         	bx	lr

00007368 <__truncdfsf2>:
; __truncdfsf2():
    7368: ea4f 0241    	lsl.w	r2, r1, #1
    736c: f1b2 43e0    	subs.w	r3, r2, #1879048192
    7370: bf24         	itt	hs
    7372: f5b3 1c00    	subshs.w	r12, r3, #2097152
    7376: f1dc 5cfe    	rsbshs.w	r12, r12, #532676608
    737a: d90d         	bls	0x7398 <__truncdfsf2+0x30> @ imm = #26
    737c: f001 4c00    	and	r12, r1, #2147483648
    7380: ea4f 02c0    	lsl.w	r2, r0, #3
    7384: ea4c 7050    	orr.w	r0, r12, r0, lsr #29
    7388: f1b2 4f00    	cmp.w	r2, #2147483648
    738c: eb40 0083    	adc.w	r0, r0, r3, lsl #2
    7390: bf08         	it	eq
    7392: f020 0001    	biceq	r0, r0, #1
    7396: 4770         	bx	lr
    7398: f011 4f80    	tst.w	r1, #1073741824
    739c: d121         	bne	0x73e2 <__truncdfsf2+0x7a> @ imm = #66
    739e: f113 7238    	adds.w	r2, r3, #48234496
    73a2: bfbc         	itt	lt
    73a4: f001 4000    	andlt	r0, r1, #2147483648
    73a8: 4770         	bxlt	lr
    73aa: f441 1180    	orr	r1, r1, #1048576
    73ae: ea4f 5252    	lsr.w	r2, r2, #21
    73b2: f1c2 0218    	rsb.w	r2, r2, #24
    73b6: f1c2 0c20    	rsb.w	r12, r2, #32
    73ba: fa10 f30c    	lsls.w	r3, r0, r12
    73be: fa20 f002    	lsr.w	r0, r0, r2
    73c2: bf18         	it	ne
    73c4: f040 0001    	orrne	r0, r0, #1
    73c8: ea4f 23c1    	lsl.w	r3, r1, #11
    73cc: ea4f 23d3    	lsr.w	r3, r3, #11
    73d0: fa03 fc0c    	lsl.w	r12, r3, r12
    73d4: ea40 000c    	orr.w	r0, r0, r12
    73d8: fa23 f302    	lsr.w	r3, r3, r2
    73dc: ea4f 0343    	lsl.w	r3, r3, #1
    73e0: e7cc         	b	0x737c <__truncdfsf2+0x14> @ imm = #-104
    73e2: ea7f 5362    	mvns.w	r3, r2, asr #21
    73e6: d107         	bne	0x73f8 <__truncdfsf2+0x90> @ imm = #14
    73e8: ea50 3301    	orrs.w	r3, r0, r1, lsl #12
    73ec: bf1e         	ittt	ne
    73ee: f04f 40fe    	movne.w	r0, #2130706432
    73f2: f440 0040    	orrne	r0, r0, #12582912
    73f6: 4770         	bxne	lr
    73f8: f001 4000    	and	r0, r1, #2147483648
    73fc: f040 40fe    	orr	r0, r0, #2130706432
    7400: f440 0000    	orr	r0, r0, #8388608
    7404: 4770         	bx	lr
    7406: bf00         	nop

00007408 <__aeabi_frsub>:
; __aeabi_frsub():
    7408: f080 4000    	eor	r0, r0, #2147483648
    740c: e002         	b	0x7414 <__aeabi_fadd>   @ imm = #4
    740e: bf00         	nop

00007410 <__subsf3>:
; __aeabi_fsub():
    7410: f081 4100    	eor	r1, r1, #2147483648

00007414 <__aeabi_fadd>:
; __addsf3():
    7414: 0042         	lsls	r2, r0, #1
    7416: bf1f         	itttt	ne
    7418: ea5f 0341    	lslsne.w	r3, r1, #1
    741c: ea92 0f03    	teqne.w	r2, r3
    7420: ea7f 6c22    	mvnsne.w	r12, r2, asr #24
    7424: ea7f 6c23    	mvnsne.w	r12, r3, asr #24
    7428: d06a         	beq	0x7500 <__aeabi_fadd+0xec> @ imm = #212
    742a: ea4f 6212    	lsr.w	r2, r2, #24
    742e: ebd2 6313    	rsbs	r3, r2, r3, lsr #24
    7432: bfc1         	itttt	gt
    7434: 18d2         	addgt	r2, r2, r3
    7436: 4041         	eorgt	r1, r0
    7438: 4048         	eorgt	r0, r1
    743a: 4041         	eorgt	r1, r0
    743c: bfb8         	it	lt
    743e: 425b         	rsblt	r3, r3, #0
    7440: 2b19         	cmp	r3, #25
    7442: bf88         	it	hi
    7444: 4770         	bxhi	lr
    7446: f010 4f00    	tst.w	r0, #2147483648
    744a: f440 0000    	orr	r0, r0, #8388608
    744e: f020 407f    	bic	r0, r0, #4278190080
    7452: bf18         	it	ne
    7454: 4240         	rsbne	r0, r0, #0
    7456: f011 4f00    	tst.w	r1, #2147483648
    745a: f441 0100    	orr	r1, r1, #8388608
    745e: f021 417f    	bic	r1, r1, #4278190080
    7462: bf18         	it	ne
    7464: 4249         	rsbne	r1, r1, #0
    7466: ea92 0f03    	teq.w	r2, r3
    746a: d03f         	beq	0x74ec <__aeabi_fadd+0xd8> @ imm = #126
    746c: f1a2 0201    	sub.w	r2, r2, #1
    7470: fa41 fc03    	asr.w	r12, r1, r3
    7474: eb10 000c    	adds.w	r0, r0, r12
    7478: f1c3 0320    	rsb.w	r3, r3, #32
    747c: fa01 f103    	lsl.w	r1, r1, r3
    7480: f000 4300    	and	r3, r0, #2147483648
    7484: d502         	bpl	0x748c <__aeabi_fadd+0x78> @ imm = #4
    7486: 4249         	rsbs	r1, r1, #0
    7488: eb60 0040    	sbc.w	r0, r0, r0, lsl #1
    748c: f5b0 0f00    	cmp.w	r0, #8388608
    7490: d313         	blo	0x74ba <__aeabi_fadd+0xa6> @ imm = #38
    7492: f1b0 7f80    	cmp.w	r0, #16777216
    7496: d306         	blo	0x74a6 <__aeabi_fadd+0x92> @ imm = #12
    7498: 0840         	lsrs	r0, r0, #1
    749a: ea4f 0131    	rrx	r1, r1
    749e: f102 0201    	add.w	r2, r2, #1
    74a2: 2afe         	cmp	r2, #254
    74a4: d251         	bhs	0x754a <__aeabi_fadd+0x136> @ imm = #162
    74a6: f1b1 4f00    	cmp.w	r1, #2147483648
    74aa: eb40 50c2    	adc.w	r0, r0, r2, lsl #23
    74ae: bf08         	it	eq
    74b0: f020 0001    	biceq	r0, r0, #1
    74b4: ea40 0003    	orr.w	r0, r0, r3
    74b8: 4770         	bx	lr
    74ba: 0049         	lsls	r1, r1, #1
    74bc: eb40 0000    	adc.w	r0, r0, r0
    74c0: 3a01         	subs	r2, #1
    74c2: bf28         	it	hs
    74c4: f5b0 0f00    	cmphs.w	r0, #8388608
    74c8: d2ed         	bhs	0x74a6 <__aeabi_fadd+0x92> @ imm = #-38
    74ca: fab0 fc80    	clz	r12, r0
    74ce: f1ac 0c08    	sub.w	r12, r12, #8
    74d2: ebb2 020c    	subs.w	r2, r2, r12
    74d6: fa00 f00c    	lsl.w	r0, r0, r12
    74da: bfaa         	itet	ge
    74dc: eb00 50c2    	addge.w	r0, r0, r2, lsl #23
    74e0: 4252         	rsblt	r2, r2, #0
    74e2: 4318         	orrge	r0, r3
    74e4: bfbc         	itt	lt
    74e6: 40d0         	lsrlt	r0, r2
    74e8: 4318         	orrlt	r0, r3
    74ea: 4770         	bx	lr
    74ec: f092 0f00    	teq.w	r2, #0
    74f0: f481 0100    	eor	r1, r1, #8388608
    74f4: bf06         	itte	eq
    74f6: f480 0000    	eoreq	r0, r0, #8388608
    74fa: 3201         	addeq	r2, #1
    74fc: 3b01         	subne	r3, #1
    74fe: e7b5         	b	0x746c <__aeabi_fadd+0x58> @ imm = #-150
    7500: ea4f 0341    	lsl.w	r3, r1, #1
    7504: ea7f 6c22    	mvns.w	r12, r2, asr #24
    7508: bf18         	it	ne
    750a: ea7f 6c23    	mvnsne.w	r12, r3, asr #24
    750e: d021         	beq	0x7554 <__aeabi_fadd+0x140> @ imm = #66
    7510: ea92 0f03    	teq.w	r2, r3
    7514: d004         	beq	0x7520 <__aeabi_fadd+0x10c> @ imm = #8
    7516: f092 0f00    	teq.w	r2, #0
    751a: bf08         	it	eq
    751c: 4608         	moveq	r0, r1
    751e: 4770         	bx	lr
    7520: ea90 0f01    	teq.w	r0, r1
    7524: bf1c         	itt	ne
    7526: 2000         	movne	r0, #0
    7528: 4770         	bxne	lr
    752a: f012 4f7f    	tst.w	r2, #4278190080
    752e: d104         	bne	0x753a <__aeabi_fadd+0x126> @ imm = #8
    7530: 0040         	lsls	r0, r0, #1
    7532: bf28         	it	hs
    7534: f040 4000    	orrhs	r0, r0, #2147483648
    7538: 4770         	bx	lr
    753a: f112 7200    	adds.w	r2, r2, #33554432
    753e: bf3c         	itt	lo
    7540: f500 0000    	addlo.w	r0, r0, #8388608
    7544: 4770         	bxlo	lr
    7546: f000 4300    	and	r3, r0, #2147483648
    754a: f043 40fe    	orr	r0, r3, #2130706432
    754e: f440 0000    	orr	r0, r0, #8388608
    7552: 4770         	bx	lr
    7554: ea7f 6222    	mvns.w	r2, r2, asr #24
    7558: bf16         	itet	ne
    755a: 4608         	movne	r0, r1
    755c: ea7f 6323    	mvnseq.w	r3, r3, asr #24
    7560: 4601         	movne	r1, r0
    7562: 0242         	lsls	r2, r0, #9
    7564: bf06         	itte	eq
    7566: ea5f 2341    	lslseq.w	r3, r1, #9
    756a: ea90 0f01    	teqeq.w	r0, r1
    756e: f440 0080    	orrne	r0, r0, #4194304
    7572: 4770         	bx	lr

00007574 <__floatunsisf>:
; __floatunsisf():
    7574: f04f 0300    	mov.w	r3, #0
    7578: e004         	b	0x7584 <__floatsisf+0x8> @ imm = #8
    757a: bf00         	nop

0000757c <__floatsisf>:
; __floatsisf():
    757c: f010 4300    	ands	r3, r0, #2147483648
    7580: bf48         	it	mi
    7582: 4240         	rsbmi	r0, r0, #0
    7584: ea5f 0c00    	movs.w	r12, r0
    7588: bf08         	it	eq
    758a: 4770         	bxeq	lr
    758c: f043 4396    	orr	r3, r3, #1258291200
    7590: 4601         	mov	r1, r0
    7592: f04f 0000    	mov.w	r0, #0
    7596: e01c         	b	0x75d2 <__floatdisf+0x2a> @ imm = #56

00007598 <__floatundisf>:
; __aeabi_ul2f():
    7598: ea50 0201    	orrs.w	r2, r0, r1
    759c: bf08         	it	eq
    759e: 4770         	bxeq	lr
    75a0: f04f 0300    	mov.w	r3, #0
    75a4: e00a         	b	0x75bc <__floatdisf+0x14> @ imm = #20
    75a6: bf00         	nop

000075a8 <__floatdisf>:
; __aeabi_l2f():
    75a8: ea50 0201    	orrs.w	r2, r0, r1
    75ac: bf08         	it	eq
    75ae: 4770         	bxeq	lr
    75b0: f011 4300    	ands	r3, r1, #2147483648
    75b4: d502         	bpl	0x75bc <__floatdisf+0x14> @ imm = #4
    75b6: 4240         	rsbs	r0, r0, #0
    75b8: eb61 0141    	sbc.w	r1, r1, r1, lsl #1
    75bc: ea5f 0c01    	movs.w	r12, r1
    75c0: bf02         	ittt	eq
    75c2: 4684         	moveq	r12, r0
    75c4: 4601         	moveq	r1, r0
    75c6: 2000         	moveq	r0, #0
    75c8: f043 43b6    	orr	r3, r3, #1526726656
    75cc: bf08         	it	eq
    75ce: f1a3 5380    	subeq.w	r3, r3, #268435456
    75d2: f5a3 0300    	sub.w	r3, r3, #8388608
    75d6: fabc f28c    	clz	r2, r12
    75da: 3a08         	subs	r2, #8
    75dc: eba3 53c2    	sub.w	r3, r3, r2, lsl #23
    75e0: db10         	blt	0x7604 <__floatdisf+0x5c> @ imm = #32
    75e2: fa01 fc02    	lsl.w	r12, r1, r2
    75e6: 4463         	add	r3, r12
    75e8: fa00 fc02    	lsl.w	r12, r0, r2
    75ec: f1c2 0220    	rsb.w	r2, r2, #32
    75f0: f1bc 4f00    	cmp.w	r12, #2147483648
    75f4: fa20 f202    	lsr.w	r2, r0, r2
    75f8: eb43 0002    	adc.w	r0, r3, r2
    75fc: bf08         	it	eq
    75fe: f020 0001    	biceq	r0, r0, #1
    7602: 4770         	bx	lr
    7604: f102 0220    	add.w	r2, r2, #32
    7608: fa01 fc02    	lsl.w	r12, r1, r2
    760c: f1c2 0220    	rsb.w	r2, r2, #32
    7610: ea50 004c    	orrs.w	r0, r0, r12, lsl #1
    7614: fa21 f202    	lsr.w	r2, r1, r2
    7618: eb43 0002    	adc.w	r0, r3, r2
    761c: bf08         	it	eq
    761e: ea20 70dc    	biceq.w	r0, r0, r12, lsr #31
    7622: 4770         	bx	lr

00007624 <__aeabi_uldivmod>:
; __aeabi_uldivmod():
    7624: b953         	cbnz	r3, 0x763c <__aeabi_uldivmod+0x18> @ imm = #20
    7626: b94a         	cbnz	r2, 0x763c <__aeabi_uldivmod+0x18> @ imm = #18
    7628: 2900         	cmp	r1, #0
    762a: bf08         	it	eq
    762c: 2800         	cmpeq	r0, #0
    762e: bf1c         	itt	ne
    7630: f04f 31ff    	movne.w	r1, #4294967295
    7634: f04f 30ff    	movne.w	r0, #4294967295
    7638: f000 b9a0    	b.w	0x797c <__aeabi_ldiv0>  @ imm = #832
    763c: f1ad 0c08    	sub.w	r12, sp, #8
    7640: e96d ce04    	strd	r12, lr, [sp, #-16]!
    7644: f000 f83c    	bl	0x76c0 <__udivmoddi4>   @ imm = #120
    7648: f8dd e004    	ldr.w	lr, [sp, #4]
    764c: e9dd 2302    	ldrd	r2, r3, [sp, #8]
    7650: b004         	add	sp, #16
    7652: 4770         	bx	lr

00007654 <__fixdfdi>:
; __fixdfdi():
    7654: b538         	push	{r3, r4, r5, lr}
    7656: 2200         	movs	r2, #0
    7658: 2300         	movs	r3, #0
    765a: 4604         	mov	r4, r0
    765c: 460d         	mov	r5, r1
    765e: f7ff fe13    	bl	0x7288 <__aeabi_dcmplt> @ imm = #-986
    7662: b928         	cbnz	r0, 0x7670 <__fixdfdi+0x1c> @ imm = #10
    7664: 4620         	mov	r0, r4
    7666: 4629         	mov	r1, r5
    7668: e8bd 4038    	pop.w	{r3, r4, r5, lr}
    766c: f000 b80a    	b.w	0x7684 <__fixunsdfdi>   @ imm = #20
    7670: 4620         	mov	r0, r4
    7672: f105 4100    	add.w	r1, r5, #2147483648
    7676: f000 f805    	bl	0x7684 <__fixunsdfdi>   @ imm = #10
    767a: 4240         	rsbs	r0, r0, #0
    767c: eb61 0141    	sbc.w	r1, r1, r1, lsl #1
    7680: bd38         	pop	{r3, r4, r5, pc}
    7682: bf00         	nop

00007684 <__fixunsdfdi>:
; __fixunsdfdi():
    7684: b5d0         	push	{r4, r6, r7, lr}
    7686: 4b0c         	ldr	r3, [pc, #48]           @ 0x76b8 <$d>
    7688: 2200         	movs	r2, #0
    768a: 4606         	mov	r6, r0
    768c: 460f         	mov	r7, r1
    768e: f7ff fb89    	bl	0x6da4 <__muldf3>       @ imm = #-2286
    7692: f7ff fe49    	bl	0x7328 <__fixunsdfsi>   @ imm = #-878
    7696: 4604         	mov	r4, r0
    7698: f7ff fb0a    	bl	0x6cb0 <__floatunsidf>  @ imm = #-2540
    769c: 4b07         	ldr	r3, [pc, #28]           @ 0x76bc <$d+0x4>
    769e: 2200         	movs	r2, #0
    76a0: f7ff fb80    	bl	0x6da4 <__muldf3>       @ imm = #-2304
    76a4: 4602         	mov	r2, r0
    76a6: 460b         	mov	r3, r1
    76a8: 4630         	mov	r0, r6
    76aa: 4639         	mov	r1, r7
    76ac: f7ff f9c2    	bl	0x6a34 <__subdf3>       @ imm = #-3196
    76b0: f7ff fe3a    	bl	0x7328 <__fixunsdfsi>   @ imm = #-908
    76b4: 4621         	mov	r1, r4
    76b6: bdd0         	pop	{r4, r6, r7, pc}

000076b8 <$d>:
    76b8: 00 00 f0 3d  	.word	0x3df00000
    76bc: 00 00 f0 41  	.word	0x41f00000

000076c0 <__udivmoddi4>:
; __udivmoddi4():
    76c0: e92d 47f0    	push.w	{r4, r5, r6, r7, r8, r9, r10, lr}
    76c4: 9d08         	ldr	r5, [sp, #32]
    76c6: 460e         	mov	r6, r1
    76c8: 4604         	mov	r4, r0
    76ca: 460f         	mov	r7, r1
    76cc: 2b00         	cmp	r3, #0
    76ce: d14a         	bne	0x7766 <__udivmoddi4+0xa6> @ imm = #148
    76d0: 4694         	mov	r12, r2
    76d2: 458c         	cmp	r12, r1
    76d4: fab2 f282    	clz	r2, r2
    76d8: d960         	bls	0x779c <__udivmoddi4+0xdc> @ imm = #192
    76da: b142         	cbz	r2, 0x76ee <__udivmoddi4+0x2e> @ imm = #16
    76dc: f1c2 0320    	rsb.w	r3, r2, #32
    76e0: 4097         	lsls	r7, r2
    76e2: fa20 f303    	lsr.w	r3, r0, r3
    76e6: fa0c fc02    	lsl.w	r12, r12, r2
    76ea: 431f         	orrs	r7, r3
    76ec: 4094         	lsls	r4, r2
    76ee: ea4f 4e1c    	lsr.w	lr, r12, #16
    76f2: fa1f f68c    	uxth.w	r6, r12
    76f6: fbb7 f1fe    	udiv	r1, r7, lr
    76fa: 0c23         	lsrs	r3, r4, #16
    76fc: fb0e 7711    	mls	r7, lr, r1, r7
    7700: ea43 4307    	orr.w	r3, r3, r7, lsl #16
    7704: fb01 f006    	mul	r0, r1, r6
    7708: 4298         	cmp	r0, r3
    770a: d90a         	bls	0x7722 <__udivmoddi4+0x62> @ imm = #20
    770c: eb1c 0303    	adds.w	r3, r12, r3
    7710: f101 37ff    	add.w	r7, r1, #4294967295
    7714: f080 8115    	bhs.w	0x7942 <__udivmoddi4+0x282> @ imm = #554
    7718: 4298         	cmp	r0, r3
    771a: f240 8112    	bls.w	0x7942 <__udivmoddi4+0x282> @ imm = #548
    771e: 3902         	subs	r1, #2
    7720: 4463         	add	r3, r12
    7722: 1a1b         	subs	r3, r3, r0
    7724: b2a4         	uxth	r4, r4
    7726: fbb3 f0fe    	udiv	r0, r3, lr
    772a: fb0e 3310    	mls	r3, lr, r0, r3
    772e: ea44 4403    	orr.w	r4, r4, r3, lsl #16
    7732: fb00 f606    	mul	r6, r0, r6
    7736: 42a6         	cmp	r6, r4
    7738: d90a         	bls	0x7750 <__udivmoddi4+0x90> @ imm = #20
    773a: eb1c 0404    	adds.w	r4, r12, r4
    773e: f100 33ff    	add.w	r3, r0, #4294967295
    7742: f080 8100    	bhs.w	0x7946 <__udivmoddi4+0x286> @ imm = #512
    7746: 42a6         	cmp	r6, r4
    7748: f240 80fd    	bls.w	0x7946 <__udivmoddi4+0x286> @ imm = #506
    774c: 4464         	add	r4, r12
    774e: 3802         	subs	r0, #2
    7750: ea40 4001    	orr.w	r0, r0, r1, lsl #16
    7754: 1ba4         	subs	r4, r4, r6
    7756: 2100         	movs	r1, #0
    7758: b11d         	cbz	r5, 0x7762 <__udivmoddi4+0xa2> @ imm = #6
    775a: 40d4         	lsrs	r4, r2
    775c: 2300         	movs	r3, #0
    775e: e9c5 4300    	strd	r4, r3, [r5]
    7762: e8bd 87f0    	pop.w	{r4, r5, r6, r7, r8, r9, r10, pc}
    7766: 428b         	cmp	r3, r1
    7768: d905         	bls	0x7776 <__udivmoddi4+0xb6> @ imm = #10
    776a: b10d         	cbz	r5, 0x7770 <__udivmoddi4+0xb0> @ imm = #2
    776c: e9c5 0100    	strd	r0, r1, [r5]
    7770: 2100         	movs	r1, #0
    7772: 4608         	mov	r0, r1
    7774: e7f5         	b	0x7762 <__udivmoddi4+0xa2> @ imm = #-22
    7776: fab3 f183    	clz	r1, r3
    777a: 2900         	cmp	r1, #0
    777c: d146         	bne	0x780c <__udivmoddi4+0x14c> @ imm = #140
    777e: 42b3         	cmp	r3, r6
    7780: d302         	blo	0x7788 <__udivmoddi4+0xc8> @ imm = #4
    7782: 4282         	cmp	r2, r0
    7784: f200 80f5    	bhi.w	0x7972 <__udivmoddi4+0x2b2> @ imm = #490
    7788: 1a84         	subs	r4, r0, r2
    778a: eb66 0203    	sbc.w	r2, r6, r3
    778e: 2001         	movs	r0, #1
    7790: 4617         	mov	r7, r2
    7792: 2d00         	cmp	r5, #0
    7794: d0e5         	beq	0x7762 <__udivmoddi4+0xa2> @ imm = #-54
    7796: e9c5 4700    	strd	r4, r7, [r5]
    779a: e7e2         	b	0x7762 <__udivmoddi4+0xa2> @ imm = #-60
    779c: 2a00         	cmp	r2, #0
    779e: f040 8093    	bne.w	0x78c8 <__udivmoddi4+0x208> @ imm = #294
    77a2: eba1 030c    	sub.w	r3, r1, r12
    77a6: ea4f 471c    	lsr.w	r7, r12, #16
    77aa: fa1f fe8c    	uxth.w	lr, r12
    77ae: 2101         	movs	r1, #1
    77b0: fbb3 f6f7    	udiv	r6, r3, r7
    77b4: fb07 3016    	mls	r0, r7, r6, r3
    77b8: 0c23         	lsrs	r3, r4, #16
    77ba: ea43 4300    	orr.w	r3, r3, r0, lsl #16
    77be: fb0e f006    	mul	r0, lr, r6
    77c2: 4298         	cmp	r0, r3
    77c4: d908         	bls	0x77d8 <__udivmoddi4+0x118> @ imm = #16
    77c6: eb1c 0303    	adds.w	r3, r12, r3
    77ca: f106 38ff    	add.w	r8, r6, #4294967295
    77ce: d202         	bhs	0x77d6 <__udivmoddi4+0x116> @ imm = #4
    77d0: 4298         	cmp	r0, r3
    77d2: f200 80d0    	bhi.w	0x7976 <__udivmoddi4+0x2b6> @ imm = #416
    77d6: 4646         	mov	r6, r8
    77d8: 1a1b         	subs	r3, r3, r0
    77da: b2a4         	uxth	r4, r4
    77dc: fbb3 f0f7    	udiv	r0, r3, r7
    77e0: fb07 3310    	mls	r3, r7, r0, r3
    77e4: ea44 4403    	orr.w	r4, r4, r3, lsl #16
    77e8: fb0e fe00    	mul	lr, lr, r0
    77ec: 45a6         	cmp	lr, r4
    77ee: d908         	bls	0x7802 <__udivmoddi4+0x142> @ imm = #16
    77f0: eb1c 0404    	adds.w	r4, r12, r4
    77f4: f100 33ff    	add.w	r3, r0, #4294967295
    77f8: d202         	bhs	0x7800 <__udivmoddi4+0x140> @ imm = #4
    77fa: 45a6         	cmp	lr, r4
    77fc: f200 80b6    	bhi.w	0x796c <__udivmoddi4+0x2ac> @ imm = #364
    7800: 4618         	mov	r0, r3
    7802: eba4 040e    	sub.w	r4, r4, lr
    7806: ea40 4006    	orr.w	r0, r0, r6, lsl #16
    780a: e7a5         	b	0x7758 <__udivmoddi4+0x98> @ imm = #-182
    780c: f1c1 0720    	rsb.w	r7, r1, #32
    7810: 408b         	lsls	r3, r1
    7812: fa22 fc07    	lsr.w	r12, r2, r7
    7816: ea4c 0c03    	orr.w	r12, r12, r3
    781a: fa06 fe01    	lsl.w	lr, r6, r1
    781e: fa20 f407    	lsr.w	r4, r0, r7
    7822: fa26 f307    	lsr.w	r3, r6, r7
    7826: ea44 040e    	orr.w	r4, r4, lr
    782a: fa00 f801    	lsl.w	r8, r0, r1
    782e: ea4f 401c    	lsr.w	r0, r12, #16
    7832: ea4f 4914    	lsr.w	r9, r4, #16
    7836: fbb3 fef0    	udiv	lr, r3, r0
    783a: fa1f f68c    	uxth.w	r6, r12
    783e: fb00 331e    	mls	r3, r0, lr, r3
    7842: ea49 4303    	orr.w	r3, r9, r3, lsl #16
    7846: fb0e f906    	mul	r9, lr, r6
    784a: 4599         	cmp	r9, r3
    784c: fa02 f201    	lsl.w	r2, r2, r1
    7850: d90b         	bls	0x786a <__udivmoddi4+0x1aa> @ imm = #22
    7852: eb1c 0303    	adds.w	r3, r12, r3
    7856: f10e 3aff    	add.w	r10, lr, #4294967295
    785a: f080 8085    	bhs.w	0x7968 <__udivmoddi4+0x2a8> @ imm = #266
    785e: 4599         	cmp	r9, r3
    7860: f240 8082    	bls.w	0x7968 <__udivmoddi4+0x2a8> @ imm = #260
    7864: f1ae 0e02    	sub.w	lr, lr, #2
    7868: 4463         	add	r3, r12
    786a: eba3 0909    	sub.w	r9, r3, r9
    786e: b2a4         	uxth	r4, r4
    7870: fbb9 f3f0    	udiv	r3, r9, r0
    7874: fb00 9913    	mls	r9, r0, r3, r9
    7878: ea44 4409    	orr.w	r4, r4, r9, lsl #16
    787c: fb03 f606    	mul	r6, r3, r6
    7880: 42a6         	cmp	r6, r4
    7882: d908         	bls	0x7896 <__udivmoddi4+0x1d6> @ imm = #16
    7884: eb1c 0404    	adds.w	r4, r12, r4
    7888: f103 30ff    	add.w	r0, r3, #4294967295
    788c: d268         	bhs	0x7960 <__udivmoddi4+0x2a0> @ imm = #208
    788e: 42a6         	cmp	r6, r4
    7890: d966         	bls	0x7960 <__udivmoddi4+0x2a0> @ imm = #204
    7892: 3b02         	subs	r3, #2
    7894: 4464         	add	r4, r12
    7896: ea43 400e    	orr.w	r0, r3, lr, lsl #16
    789a: 1ba4         	subs	r4, r4, r6
    789c: fba0 e602    	umull	lr, r6, r0, r2
    78a0: 42b4         	cmp	r4, r6
    78a2: 4673         	mov	r3, lr
    78a4: 46b1         	mov	r9, r6
    78a6: d352         	blo	0x794e <__udivmoddi4+0x28e> @ imm = #164
    78a8: d04f         	beq	0x794a <__udivmoddi4+0x28a> @ imm = #158
    78aa: b15d         	cbz	r5, 0x78c4 <__udivmoddi4+0x204> @ imm = #22
    78ac: ebb8 0203    	subs.w	r2, r8, r3
    78b0: eb64 0409    	sbc.w	r4, r4, r9
    78b4: fa04 f707    	lsl.w	r7, r4, r7
    78b8: fa22 f301    	lsr.w	r3, r2, r1
    78bc: 431f         	orrs	r7, r3
    78be: 40cc         	lsrs	r4, r1
    78c0: e9c5 7400    	strd	r7, r4, [r5]
    78c4: 2100         	movs	r1, #0
    78c6: e74c         	b	0x7762 <__udivmoddi4+0xa2> @ imm = #-360
    78c8: f1c2 0120    	rsb.w	r1, r2, #32
    78cc: fa20 f301    	lsr.w	r3, r0, r1
    78d0: fa0c fc02    	lsl.w	r12, r12, r2
    78d4: fa26 f101    	lsr.w	r1, r6, r1
    78d8: 4096         	lsls	r6, r2
    78da: 4333         	orrs	r3, r6
    78dc: ea4f 471c    	lsr.w	r7, r12, #16
    78e0: fa1f fe8c    	uxth.w	lr, r12
    78e4: fbb1 f0f7    	udiv	r0, r1, r7
    78e8: fb07 1610    	mls	r6, r7, r0, r1
    78ec: 0c19         	lsrs	r1, r3, #16
    78ee: ea41 4106    	orr.w	r1, r1, r6, lsl #16
    78f2: fb00 f60e    	mul	r6, r0, lr
    78f6: 428e         	cmp	r6, r1
    78f8: fa04 f402    	lsl.w	r4, r4, r2
    78fc: d908         	bls	0x7910 <__udivmoddi4+0x250> @ imm = #16
    78fe: eb1c 0101    	adds.w	r1, r12, r1
    7902: f100 38ff    	add.w	r8, r0, #4294967295
    7906: d22d         	bhs	0x7964 <__udivmoddi4+0x2a4> @ imm = #90
    7908: 428e         	cmp	r6, r1
    790a: d92b         	bls	0x7964 <__udivmoddi4+0x2a4> @ imm = #86
    790c: 3802         	subs	r0, #2
    790e: 4461         	add	r1, r12
    7910: 1b89         	subs	r1, r1, r6
    7912: b29b         	uxth	r3, r3
    7914: fbb1 f6f7    	udiv	r6, r1, r7
    7918: fb07 1116    	mls	r1, r7, r6, r1
    791c: ea43 4301    	orr.w	r3, r3, r1, lsl #16
    7920: fb06 f10e    	mul	r1, r6, lr
    7924: 4299         	cmp	r1, r3
    7926: d908         	bls	0x793a <__udivmoddi4+0x27a> @ imm = #16
    7928: eb1c 0303    	adds.w	r3, r12, r3
    792c: f106 38ff    	add.w	r8, r6, #4294967295
    7930: d214         	bhs	0x795c <__udivmoddi4+0x29c> @ imm = #40
    7932: 4299         	cmp	r1, r3
    7934: d912         	bls	0x795c <__udivmoddi4+0x29c> @ imm = #36
    7936: 3e02         	subs	r6, #2
    7938: 4463         	add	r3, r12
    793a: 1a5b         	subs	r3, r3, r1
    793c: ea46 4100    	orr.w	r1, r6, r0, lsl #16
    7940: e736         	b	0x77b0 <__udivmoddi4+0xf0> @ imm = #-404
    7942: 4639         	mov	r1, r7
    7944: e6ed         	b	0x7722 <__udivmoddi4+0x62> @ imm = #-550
    7946: 4618         	mov	r0, r3
    7948: e702         	b	0x7750 <__udivmoddi4+0x90> @ imm = #-508
    794a: 45f0         	cmp	r8, lr
    794c: d2ad         	bhs	0x78aa <__udivmoddi4+0x1ea> @ imm = #-166
    794e: ebbe 0302    	subs.w	r3, lr, r2
    7952: eb66 060c    	sbc.w	r6, r6, r12
    7956: 3801         	subs	r0, #1
    7958: 46b1         	mov	r9, r6
    795a: e7a6         	b	0x78aa <__udivmoddi4+0x1ea> @ imm = #-180
    795c: 4646         	mov	r6, r8
    795e: e7ec         	b	0x793a <__udivmoddi4+0x27a> @ imm = #-40
    7960: 4603         	mov	r3, r0
    7962: e798         	b	0x7896 <__udivmoddi4+0x1d6> @ imm = #-208
    7964: 4640         	mov	r0, r8
    7966: e7d3         	b	0x7910 <__udivmoddi4+0x250> @ imm = #-90
    7968: 46d6         	mov	lr, r10
    796a: e77e         	b	0x786a <__udivmoddi4+0x1aa> @ imm = #-260
    796c: 4464         	add	r4, r12
    796e: 3802         	subs	r0, #2
    7970: e747         	b	0x7802 <__udivmoddi4+0x142> @ imm = #-370
    7972: 4608         	mov	r0, r1
    7974: e70d         	b	0x7792 <__udivmoddi4+0xd2> @ imm = #-486
    7976: 3e02         	subs	r6, #2
    7978: 4463         	add	r3, r12
    797a: e72d         	b	0x77d8 <__udivmoddi4+0x118> @ imm = #-422

0000797c <__aeabi_ldiv0>:
; __aeabi_idiv0():
    797c: 4770         	bx	lr
    797e: bf00         	nop

00007980 <_init>:
; _init():
    7980: b5f8         	push	{r3, r4, r5, r6, r7, lr}
    7982: bf00         	nop

00007984 <$t>:
    7984: bcf8         	pop	{r3, r4, r5, r6, r7}
    7986: bc08         	pop	{r3}
    7988: 469e         	mov	lr, r3
    798a: 4770         	bx	lr

0000798c <_fini>:
; _fini():
    798c: b5f8         	push	{r3, r4, r5, r6, r7, lr}
    798e: bf00         	nop

00007990 <$t>:
    7990: bcf8         	pop	{r3, r4, r5, r6, r7}
    7992: bc08         	pop	{r3}
    7994: 469e         	mov	lr, r3
    7996: 4770         	bx	lr

00007998 <$d>:
    7998: 0c 00 00 00  	.word	0x0000000c
    799c: 29 00 00 00  	.word	0x00000029
    79a0: 04 00 00 00  	.word	0x00000004
    79a4: 05 00 00 00  	.word	0x00000005

000079a8 <$d>:
    79a8: 49 6e 70 75  	.word	0x75706e49
    79ac: 74 3a 20 25  	.word	0x25203a74
    79b0: 66 0d 0a 00  	.word	0x000a0d66
    79b4: 53 74 61 74  	.word	0x74617453
    79b8: 75 73 3a 20  	.word	0x203a7375
    79bc: 25 64 0d 0a  	.word	0x0a0d6425
    79c0: 00 00 00 00  	.word	0x00000000
    79c4: 53 74 61 74  	.word	0x74617453
    79c8: 75 73 32 3a  	.word	0x3a327375
    79cc: 20 25 64 0d  	.word	0x0d642520
    79d0: 0a 00 00 00  	.word	0x0000000a
    79d4: 25 64 2c 20  	.word	0x202c6425
    79d8: 00 00 00 00  	.word	0x00000000
    79dc: 53 74 61 74  	.word	0x74617453
    79e0: 75 73 33 3a  	.word	0x3a337375
    79e4: 20 25 64 0d  	.word	0x0d642520
    79e8: 0a 00 00 00  	.word	0x0000000a
    79ec: 0d 0a 00 00  	.word	0x00000a0d
    79f0: 50 72 65 64  	.word	0x64657250
    79f4: 69 63 74 69  	.word	0x69746369
    79f8: 6f 6e 3a 20  	.word	0x203a6e6f
    79fc: 25 66 0d 0a  	.word	0x0a0d6625
    7a00: 00 00 00 00  	.word	0x00000000
    7a04: 45 78 70 65  	.word	0x65707845
    7a08: 63 74 65 64  	.word	0x64657463
    7a0c: 3a 20 25 66  	.word	0x6625203a
    7a10: 0d 0a 00 00  	.word	0x00000a0d

00007a14 <$d>:
    7a14: 00 00 00 00  	.word	0x00000000
    7a18: 00 00 00 00  	.word	0x00000000
    7a1c: 00 00 00 00  	.word	0x00000000
    7a20: 04 00 00 00  	.word	0x00000004
    7a24: 14 00 00 00  	.word	0x00000014
    7a28: 54 00 00 00  	.word	0x00000054
    7a2c: 54 01 00 00  	.word	0x00000154
    7a30: 94 01 00 00  	.word	0x00000194
    7a34: a4 01 00 00  	.word	0x000001a4
    7a38: a4 01 00 00  	.word	0x000001a4
    7a3c: a4 01 00 00  	.word	0x000001a4
    7a40: a4 01 00 00  	.word	0x000001a4
    7a44: b4 01 00 00  	.word	0x000001b4
    7a48: 42 75 66 66  	.word	0x66667542
    7a4c: 65 72 73 3a  	.word	0x3a737265
    7a50: 20 5b 25 78  	.word	0x78255b20
    7a54: 2c 20 25 78  	.word	0x7825202c
    7a58: 2c 20 25 78  	.word	0x7825202c
    7a5c: 2c 20 25 78  	.word	0x7825202c
    7a60: 2c 20 25 78  	.word	0x7825202c
    7a64: 2c 20 25 78  	.word	0x7825202c
    7a68: 2c 20 25 78  	.word	0x7825202c
    7a6c: 2c 20 25 78  	.word	0x7825202c
    7a70: 2c 20 25 78  	.word	0x7825202c
    7a74: 2c 20 25 78  	.word	0x7825202c
    7a78: 2c 20 25 78  	.word	0x7825202c
    7a7c: 2c 20 25 78  	.word	0x7825202c
    7a80: 2c 20 25 78  	.word	0x7825202c
    7a84: 5d 0d 0a 00  	.word	0x000a0d5d
    7a88: 00 00 00 00  	.word	0x00000000
    7a8c: 00 00 00 00  	.word	0x00000000

00007a90 <$d>:
    7a90: 03 00 00 00  	.word	0x00000003
    7a94: ad 01 00 00  	.word	0x000001ad
    7a98: d9 3b 27 15  	.word	0x15273bd9
    7a9c: 1c e0 de dd  	.word	0xdddee01c
    7aa0: 0f 1b c5 d7  	.word	0xd7c51b0f
    7aa4: 12 dd f9 7f  	.word	0x7ff9dd12
    7aa8: 27 fd ff ff  	.word	0xfffffd27
    7aac: a2 07 00 00  	.word	0x000007a2
    7ab0: 62 02 00 00  	.word	0x00000262
    7ab4: 00 00 00 00  	.word	0x00000000
    7ab8: f1 00 00 00  	.word	0x000000f1
    7abc: 29 fe ff ff  	.word	0xfffffe29
    7ac0: dd ff ff ff  	.word	0xffffffdd
    7ac4: 9d fc ff ff  	.word	0xfffffc9d
    7ac8: 3b 02 00 00  	.word	0x0000023b
    7acc: 45 02 00 00  	.word	0x00000245
    7ad0: a4 10 00 00  	.word	0x000010a4
    7ad4: 67 0f 00 00  	.word	0x00000f67
    7ad8: 4f 02 00 00  	.word	0x0000024f
    7adc: 00 00 00 00  	.word	0x00000000
    7ae0: 87 fc ff ff  	.word	0xfffffc87
    7ae4: 11 ec ff ff  	.word	0xffffec11
    7ae8: f4 1a ed 09  	.word	0x09ed1af4
    7aec: 19 21 f4 24  	.word	0x24f42119
    7af0: e0 21 ef bc  	.word	0xbcef21e0
    7af4: f7 f5 fa 19  	.word	0x19faf5f7
    7af8: 03 dc d2 02  	.word	0x02d2dc03
    7afc: 06 f9 f4 02  	.word	0x02f4f906
    7b00: ff fa ef f1  	.word	0xf1effaff
    7b04: ef d3 27 e1  	.word	0xe127d3ef
    7b08: fb 27 dd eb  	.word	0xebdd27fb
    7b0c: db e4 05 1a  	.word	0x1a05e4db
    7b10: 17 fc 24 12  	.word	0x1224fc17
    7b14: 15 ef 1e e4  	.word	0xe41eef15
    7b18: 10 fe 14 da  	.word	0xda14fe10
    7b1c: 1c f8 f3 f1  	.word	0xf1f3f81c
    7b20: ef e2 f3 09  	.word	0x09f3e2ef
    7b24: e3 e9 ed e3  	.word	0xe3ede9e3
    7b28: e4 15 07 0b  	.word	0x0b0715e4
    7b2c: 04 1b 1a fe  	.word	0xfe1a1b04
    7b30: eb 01 de 21  	.word	0x21de01eb
    7b34: e6 0b ec 03  	.word	0x03ec0be6
    7b38: 23 0a 22 24  	.word	0x24220a23
    7b3c: 1e 27 03 e6  	.word	0xe603271e
    7b40: 03 24 ff c0  	.word	0xc0ff2403
    7b44: 11 f8 fc f1  	.word	0xf1fcf811
    7b48: 11 0c f5 e0  	.word	0xe0f50c11
    7b4c: f3 07 17 e5  	.word	0xe51707f3
    7b50: e8 ed fa dc  	.word	0xdcfaede8
    7b54: e8 23 fb 07  	.word	0x07fb23e8
    7b58: dd fb fd 00  	.word	0x00fdfbdd
    7b5c: 14 26 11 17  	.word	0x17112614
    7b60: e7 f1 11 ea  	.word	0xea11f1e7
    7b64: 02 26 04 04  	.word	0x04042602
    7b68: 25 21 1d 0a  	.word	0x0a1d2125
    7b6c: db 1d dc 20  	.word	0x20dc1ddb
    7b70: 01 fa e3 37  	.word	0x37e3fa01
    7b74: 0b f1 1a 16  	.word	0x161af10b
    7b78: ef 1c e7 03  	.word	0x03e71cef
    7b7c: e0 16 02 03  	.word	0x030216e0
    7b80: 21 18 09 2e  	.word	0x2e091821
    7b84: d9 e5 14 0b  	.word	0x0b14e5d9
    7b88: ea 1a fc d8  	.word	0xd8fc1aea
    7b8c: 13 00 c4 d8  	.word	0xd8c40013
    7b90: ec d9 fe 0d  	.word	0x0dfed9ec
    7b94: 19 20 d8 d6  	.word	0xd6d82019
    7b98: e2 1f e9 d7  	.word	0xd7e91fe2
    7b9c: ca e2 dd c6  	.word	0xc6dde2ca
    7ba0: 13 e7 04 3e  	.word	0x3e04e713
    7ba4: 00 01 14 c7  	.word	0xc7140100
    7ba8: db e7 15 15  	.word	0x1515e7db
    7bac: f5 06 d6 1a  	.word	0x1ad606f5
    7bb0: dc 09 22 fe  	.word	0xfe2209dc
    7bb4: 08 02 13 ef  	.word	0xef130208
    7bb8: 19 1e e2 09  	.word	0x09e21e19
    7bbc: fd f3 14 dd  	.word	0xdd14f3fd
    7bc0: da 20 d9 0f  	.word	0x0fd920da
    7bc4: e3 f9 f7 ee  	.word	0xeef7f9e3
    7bc8: e9 24 e6 29  	.word	0x29e624e9
    7bcc: 00 07 16 e2  	.word	0xe2160700
    7bd0: 1e 0d 23 d3  	.word	0xd3230d1e
    7bd4: dd f7 14 fa  	.word	0xfa14f7dd
    7bd8: 08 22 26 21  	.word	0x21262208
    7bdc: 09 08 0f 0b  	.word	0x0b0f0809
    7be0: e0 12 f4 7f  	.word	0x7ff412e0
    7be4: dc 58 e5 26  	.word	0x26e558dc
    7be8: 00 00 00 00  	.word	0x00000000
    7bec: 00 00 00 00  	.word	0x00000000
    7bf0: c2 ea ff ff  	.word	0xffffeac2
    7bf4: 75 ea ff ff  	.word	0xffffea75
    7bf8: b8 fa ff ff  	.word	0xfffffab8
    7bfc: 24 fa ff ff  	.word	0xfffffa24
    7c00: c8 ef ff ff  	.word	0xffffefc8
    7c04: ac ff ff ff  	.word	0xffffffac
    7c08: 44 0d 00 00  	.word	0x00000d44
    7c0c: 00 00 00 00  	.word	0x00000000
    7c10: bd 07 00 00  	.word	0x000007bd
    7c14: 33 ea ff ff  	.word	0xffffea33
    7c18: 00 00 00 00  	.word	0x00000000
    7c1c: cc e4 ff ff  	.word	0xffffe4cc
    7c20: 4f 0d 00 00  	.word	0x00000d4f
    7c24: cf e3 ff ff  	.word	0xffffe3cf
    7c28: f7 ca 39 47  	.word	0x4739caf7
    7c2c: 68 73 62 63  	.word	0x63627368
    7c30: 40 e6 7f 19  	.word	0x197fe640
    7c34: ae 44 5f 56  	.word	0x565f44ae
    7c38: 31 2e 31 34  	.word	0x34312e31
    7c3c: 2e 30 00 00  	.word	0x0000302e
    7c40: 00 00 00 00  	.word	0x00000000
    7c44: 00 00 00 00  	.word	0x00000000
    7c48: 0c 00 00 00  	.word	0x0000000c
    7c4c: 08 00 0e 00  	.word	0x000e0008
    7c50: 08 00 04 00  	.word	0x00040008
    7c54: 08 00 00 00  	.word	0x00000008
    7c58: 10 00 00 00  	.word	0x00000010
    7c5c: 28 00 00 00  	.word	0x00000028
    7c60: 00 00 06 00  	.word	0x00060000
    7c64: 08 00 04 00  	.word	0x00040008
    7c68: 06 00 00 00  	.word	0x00000006
    7c6c: 04 00 00 00  	.word	0x00000004
    7c70: 01 00 00 00  	.word	0x00000001
    7c74: eb 03 00 00  	.word	0x000003eb
    7c78: 00 00 0a 00  	.word	0x000a0000
    7c7c: 10 00 0c 00  	.word	0x000c0010
    7c80: 08 00 04 00  	.word	0x00040008
    7c84: 0a 00 00 00  	.word	0x0000000a
    7c88: 02 00 00 00  	.word	0x00000002
    7c8c: 02 00 00 00  	.word	0x00000002
    7c90: 04 00 00 00  	.word	0x00000004
    7c94: 06 00 00 00  	.word	0x00000006
    7c98: 32 2e 31 31  	.word	0x31312e32
    7c9c: 2e 30 00 00  	.word	0x0000302e
    7ca0: 09 00 00 00  	.word	0x00000009
    7ca4: 01 00 00 00  	.word	0x00000001
    7ca8: 01 00 00 00  	.word	0x00000001
    7cac: 01 00 00 00  	.word	0x00000001
    7cb0: 86 8a c8 3c  	.word	0x3cc88a86
    7cb4: 80 ff ff ff  	.word	0xffffff80
    7cb8: ff ff ff ff  	.word	0xffffffff
    7cbc: 02 00 00 00  	.word	0x00000002
    7cc0: 01 00 00 00  	.word	0x00000001
    7cc4: 02 00 00 00  	.word	0x00000002
    7cc8: cb 41 4e 39  	.word	0x394e41cb
    7ccc: 00 00 00 00  	.word	0x00000000
    7cd0: 00 00 00 00  	.word	0x00000000
    7cd4: 09 00 00 00  	.word	0x00000009
    7cd8: 01 00 00 00  	.word	0x00000001
    7cdc: 10 00 00 00  	.word	0x00000010
    7ce0: 03 00 00 00  	.word	0x00000003
    7ce4: 17 44 7c 3c  	.word	0x3c7c4417
    7ce8: 00 00 00 00  	.word	0x00000000
    7cec: 00 00 00 00  	.word	0x00000000
    7cf0: 02 00 00 00  	.word	0x00000002
    7cf4: 10 00 00 00  	.word	0x00000010
    7cf8: 04 00 00 00  	.word	0x00000004
    7cfc: 7b 39 18 39  	.word	0x3918397b
    7d00: 00 00 00 00  	.word	0x00000000
    7d04: 00 00 00 00  	.word	0x00000000
    7d08: 09 00 00 00  	.word	0x00000009
    7d0c: 10 00 00 00  	.word	0x00000010
    7d10: 10 00 00 00  	.word	0x00000010
    7d14: 05 00 00 00  	.word	0x00000005
    7d18: 7f 7f 32 3c  	.word	0x3c327f7f
    7d1c: 00 00 00 00  	.word	0x00000000
    7d20: 00 00 00 00  	.word	0x00000000
    7d24: 02 00 00 00  	.word	0x00000002
    7d28: 10 00 00 00  	.word	0x00000010
    7d2c: 06 00 00 00  	.word	0x00000006
    7d30: 55 5b cf 38  	.word	0x38cf5b55
    7d34: 00 00 00 00  	.word	0x00000000
    7d38: 00 00 00 00  	.word	0x00000000
    7d3c: 09 00 00 00  	.word	0x00000009
    7d40: 10 00 00 00  	.word	0x00000010
    7d44: 01 00 00 00  	.word	0x00000001
    7d48: 07 00 00 00  	.word	0x00000007
    7d4c: aa 59 84 3b  	.word	0x3b8459aa
    7d50: 00 00 00 00  	.word	0x00000000
    7d54: 00 00 00 00  	.word	0x00000000
    7d58: 09 00 00 00  	.word	0x00000009
    7d5c: 01 00 00 00  	.word	0x00000001
    7d60: 10 00 00 00  	.word	0x00000010
    7d64: 08 00 00 00  	.word	0x00000008
    7d68: 9f 51 5a 3c  	.word	0x3c5a519f
    7d6c: 80 ff ff ff  	.word	0xffffff80
    7d70: ff ff ff ff  	.word	0xffffffff
    7d74: 09 00 00 00  	.word	0x00000009
    7d78: 01 00 00 00  	.word	0x00000001
    7d7c: 10 00 00 00  	.word	0x00000010
    7d80: 09 00 00 00  	.word	0x00000009
    7d84: 5d 4f 51 3c  	.word	0x3c514f5d
    7d88: 80 ff ff ff  	.word	0xffffff80
    7d8c: ff ff ff ff  	.word	0xffffffff
    7d90: 09 00 00 00  	.word	0x00000009
    7d94: 01 00 00 00  	.word	0x00000001
    7d98: 01 00 00 00  	.word	0x00000001
    7d9c: 0a 00 00 00  	.word	0x0000000a
    7da0: cb d6 07 3c  	.word	0x3c07d6cb
    7da4: 05 00 00 00  	.word	0x00000005
    7da8: 00 00 00 00  	.word	0x00000000
    7dac: 00 00 00 00  	.word	0x00000000
    7db0: 06 00 00 00  	.word	0x00000006
    7db4: 05 00 00 00  	.word	0x00000005
    7db8: 07 00 00 00  	.word	0x00000007
    7dbc: 09 00 00 00  	.word	0x00000009
    7dc0: 01 00 00 00  	.word	0x00000001
    7dc4: 07 00 00 00  	.word	0x00000007
    7dc8: 04 00 00 00  	.word	0x00000004
    7dcc: 03 00 00 00  	.word	0x00000003
    7dd0: 08 00 00 00  	.word	0x00000008
    7dd4: 09 00 00 00  	.word	0x00000009
    7dd8: 01 00 00 00  	.word	0x00000001
    7ddc: 08 00 00 00  	.word	0x00000008
    7de0: 02 00 00 00  	.word	0x00000002
    7de4: 01 00 00 00  	.word	0x00000001
    7de8: 09 00 00 00  	.word	0x00000009
    7dec: 09 00 00 00  	.word	0x00000009
    7df0: 00 00 00 00  	.word	0x00000000
    7df4: 09 00 00 00  	.word	0x00000009

00007df8 <$d>:
    7df8: 00 00 00 00  	.word	0x00000000
    7dfc: 18 00 00 00  	.word	0x00000018
    7e00: 30 00 00 00  	.word	0x00000030

00007e04 <$d>:
    7e04: 00 00 00 00  	.word	0x00000000
    7e08: 1c 00 00 00  	.word	0x0000001c
    7e0c: 34 00 00 00  	.word	0x00000034
    7e10: 50 00 00 00  	.word	0x00000050
    7e14: 68 00 00 00  	.word	0x00000068
    7e18: 84 00 00 00  	.word	0x00000084
    7e1c: 9c 00 00 00  	.word	0x0000009c
    7e20: b8 00 00 00  	.word	0x000000b8
    7e24: d4 00 00 00  	.word	0x000000d4
    7e28: f0 00 00 00  	.word	0x000000f0
    7e2c: 54 65 6e 73  	.word	0x736e6554
    7e30: 6f 72 20 30  	.word	0x3020726f
    7e34: 20 74 79 70  	.word	0x70797420
    7e38: 65 3a 20 25  	.word	0x25203a65
    7e3c: 64 2c 20 62  	.word	0x62202c64
    7e40: 75 66 66 65  	.word	0x65666675
    7e44: 72 3a 20 25  	.word	0x25203a72
    7e48: 64 0d 0a 00  	.word	0x000a0d64
    7e4c: 54 65 6e 73  	.word	0x736e6554
    7e50: 6f 72 20 30  	.word	0x3020726f
    7e54: 20 73 68 61  	.word	0x61687320
    7e58: 70 65 3a 20  	.word	0x203a6570
    7e5c: 0d 0a 00 00  	.word	0x00000a0d
    7e60: 25 64 20 00  	.word	0x00206425
    7e64: 0d 0a 00 00  	.word	0x00000a0d
    7e68: 54 65 6e 73  	.word	0x736e6554
    7e6c: 6f 72 20 31  	.word	0x3120726f
    7e70: 20 74 79 70  	.word	0x70797420
    7e74: 65 3a 20 25  	.word	0x25203a65
    7e78: 64 2c 20 62  	.word	0x62202c64
    7e7c: 75 66 66 65  	.word	0x65666675
    7e80: 72 3a 20 25  	.word	0x25203a72
    7e84: 64 0d 0a 00  	.word	0x000a0d64
    7e88: 54 65 6e 73  	.word	0x736e6554
    7e8c: 6f 72 20 31  	.word	0x3120726f
    7e90: 20 73 68 61  	.word	0x61687320
    7e94: 70 65 3a 20  	.word	0x203a6570
    7e98: 0d 0a 00 00  	.word	0x00000a0d
    7e9c: 54 65 6e 73  	.word	0x736e6554
    7ea0: 6f 72 20 32  	.word	0x3220726f
    7ea4: 20 74 79 70  	.word	0x70797420
    7ea8: 65 3a 20 25  	.word	0x25203a65
    7eac: 64 2c 20 62  	.word	0x62202c64
    7eb0: 75 66 66 65  	.word	0x65666675
    7eb4: 72 3a 20 25  	.word	0x25203a72
    7eb8: 64 0d 0a 00  	.word	0x000a0d64
    7ebc: 54 65 6e 73  	.word	0x736e6554
    7ec0: 6f 72 20 32  	.word	0x3220726f
    7ec4: 20 73 68 61  	.word	0x61687320
    7ec8: 70 65 3a 20  	.word	0x203a6570
    7ecc: 0d 0a 00 00  	.word	0x00000a0d
    7ed0: 54 65 6e 73  	.word	0x736e6554
    7ed4: 6f 72 20 33  	.word	0x3320726f
    7ed8: 20 74 79 70  	.word	0x70797420
    7edc: 65 3a 20 25  	.word	0x25203a65
    7ee0: 64 2c 20 62  	.word	0x62202c64
    7ee4: 75 66 66 65  	.word	0x65666675
    7ee8: 72 3a 20 25  	.word	0x25203a72
    7eec: 64 0d 0a 00  	.word	0x000a0d64
    7ef0: 54 65 6e 73  	.word	0x736e6554
    7ef4: 6f 72 20 33  	.word	0x3320726f
    7ef8: 20 73 68 61  	.word	0x61687320
    7efc: 70 65 3a 20  	.word	0x203a6570
    7f00: 0d 0a 00 00  	.word	0x00000a0d
    7f04: 54 65 6e 73  	.word	0x736e6554
    7f08: 6f 72 20 34  	.word	0x3420726f
    7f0c: 20 74 79 70  	.word	0x70797420
    7f10: 65 3a 20 25  	.word	0x25203a65
    7f14: 64 2c 20 62  	.word	0x62202c64
    7f18: 75 66 66 65  	.word	0x65666675
    7f1c: 72 3a 20 25  	.word	0x25203a72
    7f20: 64 0d 0a 00  	.word	0x000a0d64
    7f24: 54 65 6e 73  	.word	0x736e6554
    7f28: 6f 72 20 34  	.word	0x3420726f
    7f2c: 20 73 68 61  	.word	0x61687320
    7f30: 70 65 3a 20  	.word	0x203a6570
    7f34: 0d 0a 00 00  	.word	0x00000a0d
    7f38: 54 65 6e 73  	.word	0x736e6554
    7f3c: 6f 72 20 35  	.word	0x3520726f
    7f40: 20 74 79 70  	.word	0x70797420
    7f44: 65 3a 20 25  	.word	0x25203a65
    7f48: 64 2c 20 62  	.word	0x62202c64
    7f4c: 75 66 66 65  	.word	0x65666675
    7f50: 72 3a 20 25  	.word	0x25203a72
    7f54: 64 0d 0a 00  	.word	0x000a0d64
    7f58: 54 65 6e 73  	.word	0x736e6554
    7f5c: 6f 72 20 35  	.word	0x3520726f
    7f60: 20 73 68 61  	.word	0x61687320
    7f64: 70 65 3a 20  	.word	0x203a6570
    7f68: 0d 0a 00 00  	.word	0x00000a0d
    7f6c: 54 65 6e 73  	.word	0x736e6554
    7f70: 6f 72 20 36  	.word	0x3620726f
    7f74: 20 74 79 70  	.word	0x70797420
    7f78: 65 3a 20 25  	.word	0x25203a65
    7f7c: 64 2c 20 62  	.word	0x62202c64
    7f80: 75 66 66 65  	.word	0x65666675
    7f84: 72 3a 20 25  	.word	0x25203a72
    7f88: 64 0d 0a 00  	.word	0x000a0d64
    7f8c: 54 65 6e 73  	.word	0x736e6554
    7f90: 6f 72 20 36  	.word	0x3620726f
    7f94: 20 73 68 61  	.word	0x61687320
    7f98: 70 65 3a 20  	.word	0x203a6570
    7f9c: 0d 0a 00 00  	.word	0x00000a0d
    7fa0: 54 65 6e 73  	.word	0x736e6554
    7fa4: 6f 72 20 37  	.word	0x3720726f
    7fa8: 20 74 79 70  	.word	0x70797420
    7fac: 65 3a 20 25  	.word	0x25203a65
    7fb0: 64 2c 20 62  	.word	0x62202c64
    7fb4: 75 66 66 65  	.word	0x65666675
    7fb8: 72 3a 20 25  	.word	0x25203a72
    7fbc: 64 0d 0a 00  	.word	0x000a0d64
    7fc0: 54 65 6e 73  	.word	0x736e6554
    7fc4: 6f 72 20 37  	.word	0x3720726f
    7fc8: 20 73 68 61  	.word	0x61687320
    7fcc: 70 65 3a 20  	.word	0x203a6570
    7fd0: 0d 0a 00 00  	.word	0x00000a0d
    7fd4: 54 65 6e 73  	.word	0x736e6554
    7fd8: 6f 72 20 38  	.word	0x3820726f
    7fdc: 20 74 79 70  	.word	0x70797420
    7fe0: 65 3a 20 25  	.word	0x25203a65
    7fe4: 64 2c 20 62  	.word	0x62202c64
    7fe8: 75 66 66 65  	.word	0x65666675
    7fec: 72 3a 20 25  	.word	0x25203a72
    7ff0: 64 0d 0a 00  	.word	0x000a0d64
    7ff4: 54 65 6e 73  	.word	0x736e6554
    7ff8: 6f 72 20 38  	.word	0x3820726f
    7ffc: 20 73 68 61  	.word	0x61687320
    8000: 70 65 3a 20  	.word	0x203a6570
    8004: 0d 0a 00 00  	.word	0x00000a0d
    8008: 54 65 6e 73  	.word	0x736e6554
    800c: 6f 72 20 39  	.word	0x3920726f
    8010: 20 74 79 70  	.word	0x70797420
    8014: 65 3a 20 25  	.word	0x25203a65
    8018: 64 2c 20 62  	.word	0x62202c64
    801c: 75 66 66 65  	.word	0x65666675
    8020: 72 3a 20 25  	.word	0x25203a72
    8024: 64 0d 0a 00  	.word	0x000a0d64
    8028: 54 65 6e 73  	.word	0x736e6554
    802c: 6f 72 20 39  	.word	0x3920726f
    8030: 20 73 68 61  	.word	0x61687320
    8034: 70 65 3a 20  	.word	0x203a6570
    8038: 0d 0a 00 00  	.word	0x00000a0d
    803c: 00 00 00 00  	.word	0x00000000

00008040 <$d>:
    8040: 00 00 00 00  	.word	0x00000000
    8044: 00 00 f0 3f  	.word	0x3ff00000
    8048: 00 00 00 00  	.word	0x00000000
    804c: 00 00 24 40  	.word	0x40240000
    8050: 00 00 00 00  	.word	0x00000000
    8054: 00 00 59 40  	.word	0x40590000
    8058: 00 00 00 00  	.word	0x00000000
    805c: 00 40 8f 40  	.word	0x408f4000
    8060: 00 00 00 00  	.word	0x00000000
    8064: 00 88 c3 40  	.word	0x40c38800
    8068: 00 00 00 00  	.word	0x00000000
    806c: 00 6a f8 40  	.word	0x40f86a00
    8070: 00 00 00 00  	.word	0x00000000
    8074: 80 84 2e 41  	.word	0x412e8480
    8078: 00 00 00 00  	.word	0x00000000
    807c: d0 12 63 41  	.word	0x416312d0
    8080: 00 00 00 00  	.word	0x00000000
    8084: 84 d7 97 41  	.word	0x4197d784
    8088: 00 00 00 00  	.word	0x00000000
    808c: 65 cd cd 41  	.word	0x41cdcd65

00008090 <$d>:
    8090: 0d 0a 50 41  	.word	0x41500a0d
    8094: 4e 49 43 3a  	.word	0x3a43494e
    8098: 20 53 74 61  	.word	0x61745320
    809c: 63 6b 20 68  	.word	0x68206b63
    80a0: 61 73 20 6f  	.word	0x6f207361
    80a4: 76 65 72 66  	.word	0x66726576
    80a8: 6c 6f 77 65  	.word	0x65776f6c
    80ac: 64 21 0d 0a  	.word	0x0a0d2164
    80b0: 00 00 00 00  	.word	0x00000000
    80b4: 43 68 65 63  	.word	0x63656843
    80b8: 6b 70 6f 69  	.word	0x696f706b
    80bc: 6e 74 69 6e  	.word	0x6e69746e
    80c0: 67 20 66 61  	.word	0x61662067
    80c4: 69 6c 65 64  	.word	0x64656c69
    80c8: 21 00 00 00  	.word	0x00000021
    80cc: 55 53 52 00  	.word	0x00525355
    80d0: 53 59 53 00  	.word	0x00535953

000080d4 <$d>:
    80d4: 04 00 00 00  	.word	0x00000004

000080d8 <$d>:
    80d8: 49 44 4c 45  	.word	0x454c4449
    80dc: 00 00 00 00  	.word	0x00000000

000080e0 <$d>:
    80e0: 00 0f c9 3f  	.word	0x3fc90f00
    80e4: 00 0f 49 40  	.word	0x40490f00
    80e8: 00 cb 96 40  	.word	0x4096cb00
    80ec: 00 0f c9 40  	.word	0x40c90f00
    80f0: 00 53 fb 40  	.word	0x40fb5300
    80f4: 00 cb 16 41  	.word	0x4116cb00
    80f8: 00 ed 2f 41  	.word	0x412fed00
    80fc: 00 0f 49 41  	.word	0x41490f00
    8100: 00 31 62 41  	.word	0x41623100
    8104: 00 53 7b 41  	.word	0x417b5300
    8108: 00 3a 8a 41  	.word	0x418a3a00
    810c: 00 cb 96 41  	.word	0x4196cb00
    8110: 00 5c a3 41  	.word	0x41a35c00
    8114: 00 ed af 41  	.word	0x41afed00
    8118: 00 7e bc 41  	.word	0x41bc7e00
    811c: 00 0f c9 41  	.word	0x41c90f00
    8120: 00 a0 d5 41  	.word	0x41d5a000
    8124: 00 31 e2 41  	.word	0x41e23100
    8128: 00 c2 ee 41  	.word	0x41eec200
    812c: 00 53 fb 41  	.word	0x41fb5300
    8130: 00 f2 03 42  	.word	0x4203f200
    8134: 00 3a 0a 42  	.word	0x420a3a00
    8138: 00 83 10 42  	.word	0x42108300
    813c: 00 cb 16 42  	.word	0x4216cb00
    8140: 00 14 1d 42  	.word	0x421d1400
    8144: 00 5c 23 42  	.word	0x42235c00
    8148: 00 a5 29 42  	.word	0x4229a500
    814c: 00 ed 2f 42  	.word	0x422fed00
    8150: 00 36 36 42  	.word	0x42363600
    8154: 00 7e 3c 42  	.word	0x423c7e00
    8158: 00 c7 42 42  	.word	0x4242c700
    815c: 00 0f 49 42  	.word	0x42490f00

00008160 <$d>:
    8160: a2 00 00 00  	.word	0x000000a2
    8164: f9 00 00 00  	.word	0x000000f9
    8168: 83 00 00 00  	.word	0x00000083
    816c: 6e 00 00 00  	.word	0x0000006e
    8170: 4e 00 00 00  	.word	0x0000004e
    8174: 44 00 00 00  	.word	0x00000044
    8178: 15 00 00 00  	.word	0x00000015
    817c: 29 00 00 00  	.word	0x00000029
    8180: fc 00 00 00  	.word	0x000000fc
    8184: 27 00 00 00  	.word	0x00000027
    8188: 57 00 00 00  	.word	0x00000057
    818c: d1 00 00 00  	.word	0x000000d1
    8190: f5 00 00 00  	.word	0x000000f5
    8194: 34 00 00 00  	.word	0x00000034
    8198: dd 00 00 00  	.word	0x000000dd
    819c: c0 00 00 00  	.word	0x000000c0
    81a0: db 00 00 00  	.word	0x000000db
    81a4: 62 00 00 00  	.word	0x00000062
    81a8: 95 00 00 00  	.word	0x00000095
    81ac: 99 00 00 00  	.word	0x00000099
    81b0: 3c 00 00 00  	.word	0x0000003c
    81b4: 43 00 00 00  	.word	0x00000043
    81b8: 90 00 00 00  	.word	0x00000090
    81bc: 41 00 00 00  	.word	0x00000041
    81c0: fe 00 00 00  	.word	0x000000fe
    81c4: 51 00 00 00  	.word	0x00000051
    81c8: 63 00 00 00  	.word	0x00000063
    81cc: ab 00 00 00  	.word	0x000000ab
    81d0: de 00 00 00  	.word	0x000000de
    81d4: bb 00 00 00  	.word	0x000000bb
    81d8: c5 00 00 00  	.word	0x000000c5
    81dc: 61 00 00 00  	.word	0x00000061
    81e0: b7 00 00 00  	.word	0x000000b7
    81e4: 24 00 00 00  	.word	0x00000024
    81e8: 6e 00 00 00  	.word	0x0000006e
    81ec: 3a 00 00 00  	.word	0x0000003a
    81f0: 42 00 00 00  	.word	0x00000042
    81f4: 4d 00 00 00  	.word	0x0000004d
    81f8: d2 00 00 00  	.word	0x000000d2
    81fc: e0 00 00 00  	.word	0x000000e0
    8200: 06 00 00 00  	.word	0x00000006
    8204: 49 00 00 00  	.word	0x00000049
    8208: 2e 00 00 00  	.word	0x0000002e
    820c: ea 00 00 00  	.word	0x000000ea
    8210: 09 00 00 00  	.word	0x00000009
    8214: d1 00 00 00  	.word	0x000000d1
    8218: 92 00 00 00  	.word	0x00000092
    821c: 1c 00 00 00  	.word	0x0000001c
    8220: fe 00 00 00  	.word	0x000000fe
    8224: 1d 00 00 00  	.word	0x0000001d
    8228: eb 00 00 00  	.word	0x000000eb
    822c: 1c 00 00 00  	.word	0x0000001c
    8230: b1 00 00 00  	.word	0x000000b1
    8234: 29 00 00 00  	.word	0x00000029
    8238: a7 00 00 00  	.word	0x000000a7
    823c: 3e 00 00 00  	.word	0x0000003e
    8240: e8 00 00 00  	.word	0x000000e8
    8244: 82 00 00 00  	.word	0x00000082
    8248: 35 00 00 00  	.word	0x00000035
    824c: f5 00 00 00  	.word	0x000000f5
    8250: 2e 00 00 00  	.word	0x0000002e
    8254: bb 00 00 00  	.word	0x000000bb
    8258: 44 00 00 00  	.word	0x00000044
    825c: 84 00 00 00  	.word	0x00000084
    8260: e9 00 00 00  	.word	0x000000e9
    8264: 9c 00 00 00  	.word	0x0000009c
    8268: 70 00 00 00  	.word	0x00000070
    826c: 26 00 00 00  	.word	0x00000026
    8270: b4 00 00 00  	.word	0x000000b4
    8274: 5f 00 00 00  	.word	0x0000005f
    8278: 7e 00 00 00  	.word	0x0000007e
    827c: 41 00 00 00  	.word	0x00000041
    8280: 39 00 00 00  	.word	0x00000039
    8284: 91 00 00 00  	.word	0x00000091
    8288: d6 00 00 00  	.word	0x000000d6
    828c: 39 00 00 00  	.word	0x00000039
    8290: 83 00 00 00  	.word	0x00000083
    8294: 53 00 00 00  	.word	0x00000053
    8298: 39 00 00 00  	.word	0x00000039
    829c: f4 00 00 00  	.word	0x000000f4
    82a0: 9c 00 00 00  	.word	0x0000009c
    82a4: 84 00 00 00  	.word	0x00000084
    82a8: 5f 00 00 00  	.word	0x0000005f
    82ac: 8b 00 00 00  	.word	0x0000008b
    82b0: bd 00 00 00  	.word	0x000000bd
    82b4: f9 00 00 00  	.word	0x000000f9
    82b8: 28 00 00 00  	.word	0x00000028
    82bc: 3b 00 00 00  	.word	0x0000003b
    82c0: 1f 00 00 00  	.word	0x0000001f
    82c4: f8 00 00 00  	.word	0x000000f8
    82c8: 97 00 00 00  	.word	0x00000097
    82cc: ff 00 00 00  	.word	0x000000ff
    82d0: de 00 00 00  	.word	0x000000de
    82d4: 05 00 00 00  	.word	0x00000005
    82d8: 98 00 00 00  	.word	0x00000098
    82dc: 0f 00 00 00  	.word	0x0000000f
    82e0: ef 00 00 00  	.word	0x000000ef
    82e4: 2f 00 00 00  	.word	0x0000002f
    82e8: 11 00 00 00  	.word	0x00000011
    82ec: 8b 00 00 00  	.word	0x0000008b
    82f0: 5a 00 00 00  	.word	0x0000005a
    82f4: 0a 00 00 00  	.word	0x0000000a
    82f8: 6d 00 00 00  	.word	0x0000006d
    82fc: 1f 00 00 00  	.word	0x0000001f
    8300: 6d 00 00 00  	.word	0x0000006d
    8304: 36 00 00 00  	.word	0x00000036
    8308: 7e 00 00 00  	.word	0x0000007e
    830c: cf 00 00 00  	.word	0x000000cf
    8310: 27 00 00 00  	.word	0x00000027
    8314: cb 00 00 00  	.word	0x000000cb
    8318: 09 00 00 00  	.word	0x00000009
    831c: b7 00 00 00  	.word	0x000000b7
    8320: 4f 00 00 00  	.word	0x0000004f
    8324: 46 00 00 00  	.word	0x00000046
    8328: 3f 00 00 00  	.word	0x0000003f
    832c: 66 00 00 00  	.word	0x00000066
    8330: 9e 00 00 00  	.word	0x0000009e
    8334: 5f 00 00 00  	.word	0x0000005f
    8338: ea 00 00 00  	.word	0x000000ea
    833c: 2d 00 00 00  	.word	0x0000002d
    8340: 75 00 00 00  	.word	0x00000075
    8344: 27 00 00 00  	.word	0x00000027
    8348: ba 00 00 00  	.word	0x000000ba
    834c: c7 00 00 00  	.word	0x000000c7
    8350: eb 00 00 00  	.word	0x000000eb
    8354: e5 00 00 00  	.word	0x000000e5
    8358: f1 00 00 00  	.word	0x000000f1
    835c: 7b 00 00 00  	.word	0x0000007b
    8360: 3d 00 00 00  	.word	0x0000003d
    8364: 07 00 00 00  	.word	0x00000007
    8368: 39 00 00 00  	.word	0x00000039
    836c: f7 00 00 00  	.word	0x000000f7
    8370: 8a 00 00 00  	.word	0x0000008a
    8374: 52 00 00 00  	.word	0x00000052
    8378: 92 00 00 00  	.word	0x00000092
    837c: ea 00 00 00  	.word	0x000000ea
    8380: 6b 00 00 00  	.word	0x0000006b
    8384: fb 00 00 00  	.word	0x000000fb
    8388: 5f 00 00 00  	.word	0x0000005f
    838c: b1 00 00 00  	.word	0x000000b1
    8390: 1f 00 00 00  	.word	0x0000001f
    8394: 8d 00 00 00  	.word	0x0000008d
    8398: 5d 00 00 00  	.word	0x0000005d
    839c: 08 00 00 00  	.word	0x00000008
    83a0: 56 00 00 00  	.word	0x00000056
    83a4: 03 00 00 00  	.word	0x00000003
    83a8: 30 00 00 00  	.word	0x00000030
    83ac: 46 00 00 00  	.word	0x00000046
    83b0: fc 00 00 00  	.word	0x000000fc
    83b4: 7b 00 00 00  	.word	0x0000007b
    83b8: 6b 00 00 00  	.word	0x0000006b
    83bc: ab 00 00 00  	.word	0x000000ab
    83c0: f0 00 00 00  	.word	0x000000f0
    83c4: cf 00 00 00  	.word	0x000000cf
    83c8: bc 00 00 00  	.word	0x000000bc
    83cc: 20 00 00 00  	.word	0x00000020
    83d0: 9a 00 00 00  	.word	0x0000009a
    83d4: f4 00 00 00  	.word	0x000000f4
    83d8: 36 00 00 00  	.word	0x00000036
    83dc: 1d 00 00 00  	.word	0x0000001d
    83e0: a9 00 00 00  	.word	0x000000a9
    83e4: e3 00 00 00  	.word	0x000000e3
    83e8: 91 00 00 00  	.word	0x00000091
    83ec: 61 00 00 00  	.word	0x00000061
    83f0: 5e 00 00 00  	.word	0x0000005e
    83f4: e6 00 00 00  	.word	0x000000e6
    83f8: 1b 00 00 00  	.word	0x0000001b
    83fc: 08 00 00 00  	.word	0x00000008
    8400: 65 00 00 00  	.word	0x00000065
    8404: 99 00 00 00  	.word	0x00000099
    8408: 85 00 00 00  	.word	0x00000085
    840c: 5f 00 00 00  	.word	0x0000005f
    8410: 14 00 00 00  	.word	0x00000014
    8414: a0 00 00 00  	.word	0x000000a0
    8418: 68 00 00 00  	.word	0x00000068
    841c: 40 00 00 00  	.word	0x00000040
    8420: 8d 00 00 00  	.word	0x0000008d
    8424: ff 00 00 00  	.word	0x000000ff
    8428: d8 00 00 00  	.word	0x000000d8
    842c: 80 00 00 00  	.word	0x00000080
    8430: 4d 00 00 00  	.word	0x0000004d
    8434: 73 00 00 00  	.word	0x00000073
    8438: 27 00 00 00  	.word	0x00000027
    843c: 31 00 00 00  	.word	0x00000031
    8440: 06 00 00 00  	.word	0x00000006
    8444: 06 00 00 00  	.word	0x00000006
    8448: 15 00 00 00  	.word	0x00000015
    844c: 56 00 00 00  	.word	0x00000056
    8450: ca 00 00 00  	.word	0x000000ca
    8454: 73 00 00 00  	.word	0x00000073
    8458: a8 00 00 00  	.word	0x000000a8
    845c: c9 00 00 00  	.word	0x000000c9
    8460: 60 00 00 00  	.word	0x00000060
    8464: e2 00 00 00  	.word	0x000000e2
    8468: 7b 00 00 00  	.word	0x0000007b
    846c: c0 00 00 00  	.word	0x000000c0
    8470: 8c 00 00 00  	.word	0x0000008c
    8474: 6b 00 00 00  	.word	0x0000006b

00008478 <$d>:
    8478: 00 00 c9 3f  	.word	0x3fc90000
    847c: 00 00 f0 39  	.word	0x39f00000
    8480: 00 00 da 37  	.word	0x37da0000
    8484: 00 00 a2 33  	.word	0x33a20000
    8488: 00 00 84 2e  	.word	0x2e840000
    848c: 00 00 50 2b  	.word	0x2b500000
    8490: 00 00 c2 27  	.word	0x27c20000
    8494: 00 00 d0 22  	.word	0x22d00000
    8498: 00 00 c4 1f  	.word	0x1fc40000
    849c: 00 00 c6 1b  	.word	0x1bc60000
    84a0: 00 00 44 17  	.word	0x17440000

000084a4 <$d>:
    84a4: 04 00 00 00  	.word	0x00000004
    84a8: 07 00 00 00  	.word	0x00000007
    84ac: 09 00 00 00  	.word	0x00000009

000084b0 <__EH_FRAME_BEGIN__>:
    84b0: 10 00 00 00 00 00 00 00         ........
    84b8: 01 7a 52 00 02 7c 0e 01         .zR..|..
    84c0: 1b 0c 0d 00                     ....

000084c4 <$d>:
    84c4: 10 00 00 00  	.word	0x00000010
    84c8: 18 00 00 00  	.word	0x00000018
    84cc: 00 00 00 00  	.word	0x00000000
    84d0: 10 00 00 00  	.word	0x00000010
    84d4: 00 00 00 00  	.word	0x00000000

000084d8 <$d>:
    84d8: 00 00 00 00  	.word	0x00000000
