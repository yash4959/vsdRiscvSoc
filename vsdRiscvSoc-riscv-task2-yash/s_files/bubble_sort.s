	.file	"bubble_sort.c"
	.option nopic
	.attribute arch, "rv64i2p0_m2p0_a2p0_f2p0_d2p0_c2p0"
	.attribute unaligned_access, 0
	.attribute stack_align, 16
	.text
	.align	1
	.type	fnv1a64, @function
fnv1a64:
	addi	sp,sp,-64
	sd	s0,56(sp)
	addi	s0,sp,64
	sd	a0,-56(s0)
	lui	a5,%hi(.LC1)
	ld	a5,%lo(.LC1)(a5)
	sd	a5,-40(s0)
	li	a5,1
	slli	a5,a5,40
	addi	a5,a5,435
	sd	a5,-48(s0)
	ld	a5,-40(s0)
	sd	a5,-24(s0)
	ld	a5,-56(s0)
	sd	a5,-32(s0)
	j	.L2
.L3:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	mv	a4,a5
	ld	a5,-24(s0)
	xor	a5,a5,a4
	sd	a5,-24(s0)
	ld	a4,-24(s0)
	ld	a5,-48(s0)
	mul	a5,a4,a5
	sd	a5,-24(s0)
	ld	a5,-32(s0)
	addi	a5,a5,1
	sd	a5,-32(s0)
.L2:
	ld	a5,-32(s0)
	lbu	a5,0(a5)
	bne	a5,zero,.L3
	ld	a5,-24(s0)
	mv	a0,a5
	ld	s0,56(sp)
	addi	sp,sp,64
	jr	ra
	.size	fnv1a64, .-fnv1a64
	.section	.rodata
	.align	3
.LC2:
	.string	"unknown_time"
	.align	3
.LC3:
	.string	"unknown_machine"
	.align	3
.LC4:
	.string	"unknown_host"
	.align	3
.LC5:
	.string	"unknown_user"
	.align	3
.LC6:
	.string	"%s|%s|%s|%s|%ld|%s|%s"
	.align	3
.LC7:
	.string	"8.3.0"
	.align	3
.LC8:
	.string	"%s|run_epoch=%ld"
	.align	3
.LC9:
	.string	"=== RISC-V Proof Header ==="
	.align	3
.LC10:
	.string	"User: %s\n"
	.align	3
.LC11:
	.string	"Host: %s\n"
	.align	3
.LC12:
	.string	"MachineID : %s\n"
	.align	3
.LC13:
	.string	"BuildUTC : %s\n"
	.align	3
.LC14:
	.string	"BuildEpoch : %ld\n"
	.align	3
.LC15:
	.string	"GCC: %s\n"
	.align	3
.LC16:
	.string	"PointerBits: %d\n"
	.align	3
.LC17:
	.string	"Program: %s\n"
	.align	3
.LC18:
	.string	"ProofID: 0x%016llx\n"
	.align	3
.LC19:
	.string	"RunID: 0x%016llx\n"
	.align	3
.LC20:
	.string	"==========================="
	.text
	.align	1
	.type	uniq_print_header, @function
uniq_print_header:
	addi	sp,sp,-1200
	sd	ra,1192(sp)
	sd	s0,1184(sp)
	addi	s0,sp,1200
	sd	a0,-1176(s0)
	li	a0,0
	call	time
	sd	a0,-24(s0)
	addi	a0,s0,-560
	ld	a5,-1176(s0)
	sd	a5,8(sp)
	lui	a5,%hi(.LC7)
	addi	a5,a5,%lo(.LC7)
	sd	a5,0(sp)
	li	a7,0
	lui	a5,%hi(.LC2)
	addi	a6,a5,%lo(.LC2)
	lui	a5,%hi(.LC3)
	addi	a5,a5,%lo(.LC3)
	lui	a4,%hi(.LC4)
	addi	a4,a4,%lo(.LC4)
	lui	a3,%hi(.LC5)
	addi	a3,a3,%lo(.LC5)
	lui	a2,%hi(.LC6)
	addi	a2,a2,%lo(.LC6)
	li	a1,512
	call	snprintf
	mv	a5,a0
	sw	a5,-28(s0)
	addi	a5,s0,-560
	mv	a0,a5
	call	fnv1a64
	sd	a0,-40(s0)
	addi	a5,s0,-560
	addi	a0,s0,-1160
	ld	a4,-24(s0)
	mv	a3,a5
	lui	a5,%hi(.LC8)
	addi	a2,a5,%lo(.LC8)
	li	a1,600
	call	snprintf
	addi	a5,s0,-1160
	mv	a0,a5
	call	fnv1a64
	sd	a0,-48(s0)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	puts
	lui	a5,%hi(.LC5)
	addi	a1,a5,%lo(.LC5)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	li	a1,0
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	lui	a5,%hi(.LC7)
	addi	a1,a5,%lo(.LC7)
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	li	a1,64
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	ld	a1,-1176(s0)
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	ld	a1,-40(s0)
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	ld	a1,-48(s0)
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	printf
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	puts
	nop
	ld	ra,1192(sp)
	ld	s0,1184(sp)
	addi	sp,sp,1200
	jr	ra
	.size	uniq_print_header, .-uniq_print_header
	.align	1
	.globl	bubble
	.type	bubble, @function
bubble:
	addi	sp,sp,-48
	sd	s0,40(sp)
	addi	s0,sp,48
	sd	a0,-40(s0)
	mv	a5,a1
	sw	a5,-44(s0)
	sw	zero,-20(s0)
	j	.L7
.L11:
	sw	zero,-24(s0)
	j	.L8
.L10:
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a3,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	mv	a4,a3
	ble	a4,a5,.L9
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a5,0(a5)
	sw	a5,-28(s0)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a4,a4,a5
	lw	a5,-24(s0)
	slli	a5,a5,2
	ld	a3,-40(s0)
	add	a5,a3,a5
	lw	a4,0(a4)
	sw	a4,0(a5)
	lw	a5,-24(s0)
	addi	a5,a5,1
	slli	a5,a5,2
	ld	a4,-40(s0)
	add	a5,a4,a5
	lw	a4,-28(s0)
	sw	a4,0(a5)
.L9:
	lw	a5,-24(s0)
	addiw	a5,a5,1
	sw	a5,-24(s0)
.L8:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-20(s0)
	subw	a5,a4,a5
	sext.w	a4,a5
	lw	a5,-24(s0)
	sext.w	a5,a5
	blt	a5,a4,.L10
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L7:
	lw	a5,-44(s0)
	addiw	a5,a5,-1
	sext.w	a4,a5
	lw	a5,-20(s0)
	sext.w	a5,a5
	blt	a5,a4,.L11
	nop
	ld	s0,40(sp)
	addi	sp,sp,48
	jr	ra
	.size	bubble, .-bubble
	.section	.rodata
	.align	3
.LC21:
	.string	"bubble_sort"
	.align	3
.LC22:
	.string	"Sorted:"
	.align	3
.LC23:
	.string	" %d"
	.align	3
.LC24:
	.string	""
	.align	3
.LC0:
	.word	9
	.word	4
	.word	1
	.word	7
	.word	3
	.word	8
	.word	2
	.word	6
	.word	5
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-64
	sd	ra,56(sp)
	sd	s0,48(sp)
	addi	s0,sp,64
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	uniq_print_header
	lui	a5,%hi(.LC0)
	addi	a5,a5,%lo(.LC0)
	ld	a1,0(a5)
	ld	a2,8(a5)
	ld	a3,16(a5)
	ld	a4,24(a5)
	sd	a1,-64(s0)
	sd	a2,-56(s0)
	sd	a3,-48(s0)
	sd	a4,-40(s0)
	lw	a5,32(a5)
	sw	a5,-32(s0)
	li	a5,9
	sw	a5,-24(s0)
	lw	a4,-24(s0)
	addi	a5,s0,-64
	mv	a1,a4
	mv	a0,a5
	call	bubble
	lui	a5,%hi(.LC22)
	addi	a0,a5,%lo(.LC22)
	call	printf
	sw	zero,-20(s0)
	j	.L13
.L14:
	lw	a5,-20(s0)
	slli	a5,a5,2
	addi	a4,s0,-16
	add	a5,a4,a5
	lw	a5,-48(a5)
	mv	a1,a5
	lui	a5,%hi(.LC23)
	addi	a0,a5,%lo(.LC23)
	call	printf
	lw	a5,-20(s0)
	addiw	a5,a5,1
	sw	a5,-20(s0)
.L13:
	lw	a4,-20(s0)
	lw	a5,-24(s0)
	sext.w	a4,a4
	sext.w	a5,a5
	blt	a4,a5,.L14
	lui	a5,%hi(.LC24)
	addi	a0,a5,%lo(.LC24)
	call	puts
	li	a5,0
	mv	a0,a5
	ld	ra,56(sp)
	ld	s0,48(sp)
	addi	sp,sp,64
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC1:
	.dword	1469598103934665603
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
