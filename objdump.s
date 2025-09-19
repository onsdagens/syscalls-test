[0m[1m[33mwarning[0m[0m[1m: unused attribute[0m
[0m [0m[0m[1m[38;5;12m--> [0m[0msrc/main.rs:5:1[0m
[0m  [0m[0m[1m[38;5;12m|[0m
[0m[1m[38;5;12m5[0m[0m [0m[0m[1m[38;5;12m|[0m[0m [0m[0m#[unsafe(no_mangle)][0m
[0m  [0m[0m[1m[38;5;12m|[0m[0m [0m[0m[1m[33m^^^^^^^^^^^^^^^^^^^^[0m[0m [0m[0m[1m[33mhelp: remove this attribute[0m
[0m  [0m[0m[1m[38;5;12m|[0m
[0m[1m[38;5;10mnote[0m[0m: attribute also specified here[0m
[0m [0m[0m[1m[38;5;12m--> [0m[0msrc/main.rs:3:1[0m
[0m  [0m[0m[1m[38;5;12m|[0m
[0m[1m[38;5;12m3[0m[0m [0m[0m[1m[38;5;12m|[0m[0m [0m[0m#[unsafe(no_mangle)][0m
[0m  [0m[0m[1m[38;5;12m|[0m[0m [0m[0m[1m[38;5;10m^^^^^^^^^^^^^^^^^^^^[0m
[0m  [0m[0m[1m[38;5;12m= [0m[0m[1mnote[0m[0m: `#[warn(unused_attributes)]` on by default[0m


syscalls-test:	file format elf64-littleaarch64

Disassembly of section .init:

00000000004001b4 <_init>:
  4001b4: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  4001b8: 910003fd     	mov	x29, sp
  4001bc: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  4001c0: d65f03c0     	ret

Disassembly of section .text:

00000000004001c8 <_start>:
  4001c8: d280001d     	mov	x29, #0x0               // =0
  4001cc: d280001e     	mov	x30, #0x0               // =0
  4001d0: 910003e0     	mov	x0, sp
  4001d4: 90000001     	adrp	x1, 0x400000
  4001d8: 91000021     	add	x1, x1, #0x0
  4001dc: 927cec1f     	and	sp, x0, #0xfffffffffffffff0
  4001e0: 14000001     	b	0x4001e4 <_start_c>

00000000004001e4 <_start_c>:
  4001e4: aa0003e2     	mov	x2, x0
  4001e8: f00000e4     	adrp	x4, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  4001ec: f00000e3     	adrp	x3, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  4001f0: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  4001f4: f947f884     	ldr	x4, [x4, #0xff0]
  4001f8: d2800005     	mov	x5, #0x0                // =0
  4001fc: f947ec63     	ldr	x3, [x3, #0xfd8]
  400200: f947f400     	ldr	x0, [x0, #0xfe8]
  400204: f8408441     	ldr	x1, [x2], #0x8
  400208: 1400002e     	b	0x4002c0 <main>
  40020c: d503201f     	nop

0000000000400210 <__do_fini>:
  400210: 90000101     	adrp	x1, 0x420000 <__dso_handle>
  400214: 39404020     	ldrb	w0, [x1, #0x10]
  400218: 35000340     	cbnz	w0, 0x400280 <__do_fini+0x70>
  40021c: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  400220: 52800022     	mov	w2, #0x1                // =1
  400224: 39004022     	strb	w2, [x1, #0x10]
  400228: f947e800     	ldr	x0, [x0, #0xfd0]
  40022c: b40001a0     	cbz	x0, 0x400260 <__do_fini+0x50>
  400230: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  400234: 90000100     	adrp	x0, 0x420000 <__dso_handle>
  400238: 910003fd     	mov	x29, sp
  40023c: f9400000     	ldr	x0, [x0]
  400240: d503201f     	nop
  400244: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  400248: f947f000     	ldr	x0, [x0, #0xfe0]
  40024c: b4000160     	cbz	x0, 0x400278 <__do_fini+0x68>
  400250: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  400254: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  400258: 913d2000     	add	x0, x0, #0xf48
  40025c: d503201f     	nop
  400260: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  400264: f947f000     	ldr	x0, [x0, #0xfe0]
  400268: b40000c0     	cbz	x0, 0x400280 <__do_fini+0x70>
  40026c: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  400270: 913d2000     	add	x0, x0, #0xf48
  400274: d503201f     	nop
  400278: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  40027c: d65f03c0     	ret
  400280: d65f03c0     	ret
  400284: d503201f     	nop

0000000000400288 <__do_init>:
  400288: 90000101     	adrp	x1, 0x420000 <__dso_handle>
  40028c: 39404420     	ldrb	w0, [x1, #0x11]
  400290: 35000160     	cbnz	w0, 0x4002bc <__do_init+0x34>
  400294: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  400298: 52800022     	mov	w2, #0x1                // =1
  40029c: 39004422     	strb	w2, [x1, #0x11]
  4002a0: f947fc00     	ldr	x0, [x0, #0xff8]
  4002a4: b40000c0     	cbz	x0, 0x4002bc <__do_init+0x34>
  4002a8: 90000101     	adrp	x1, 0x420000 <__dso_handle>
  4002ac: f00000e0     	adrp	x0, 0x41f000 <__GNU_EH_FRAME_HDR+0x1ecc8>
  4002b0: 91008021     	add	x1, x1, #0x20
  4002b4: 913d2000     	add	x0, x0, #0xf48
  4002b8: d503201f     	nop
  4002bc: d65f03c0     	ret

00000000004002c0 <main>:
  4002c0: d10143ff     	sub	sp, sp, #0x50
  4002c4: a9047bfd     	stp	x29, x30, [sp, #0x40]
  4002c8: 910103fd     	add	x29, sp, #0x40
  4002cc: 6f00e400     	movi	v0.2d, #0000000000000000
  4002d0: 528d2d08     	mov	w8, #0x6968             // =26984
  4002d4: 790003e8     	strh	w8, [sp]
  4002d8: 52800808     	mov	w8, #0x40               // =64
  4002dc: 910003e9     	mov	x9, sp
  4002e0: 3d800fe0     	str	q0, [sp, #0x30]
  4002e4: 3c8223e0     	stur	q0, [sp, #0x22]
  4002e8: 3c8123e0     	stur	q0, [sp, #0x12]
  4002ec: 3c8023e0     	stur	q0, [sp, #0x2]
  4002f0: d2800090     	mov	x16, #0x4               // =4
  4002f4: d2800020     	mov	x0, #0x1                // =1
  4002f8: aa0903e1     	mov	x1, x9
  4002fc: aa0803e2     	mov	x2, x8
  400300: d4000001     	svc	#0
  400304: d2800bb0     	mov	x16, #0x5d              // =93
  400308: d2800000     	mov	x0, #0x0                // =0
  40030c: d4000001     	svc	#0
  400310: d2800010     	mov	x16, #0x0               // =0
  400314: d2800260     	mov	x0, #0x13               // =19
  400318: d4000001     	svc	#0
  40031c: a9447bfd     	ldp	x29, x30, [sp, #0x40]
  400320: 910143ff     	add	sp, sp, #0x50
  400324: d65f03c0     	ret

Disassembly of section .fini:

0000000000400328 <_fini>:
  400328: a9bf7bfd     	stp	x29, x30, [sp, #-0x10]!
  40032c: 910003fd     	mov	x29, sp
  400330: a8c17bfd     	ldp	x29, x30, [sp], #0x10
  400334: d65f03c0     	ret
