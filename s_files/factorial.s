	.file	"factorial.c"
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
	lui	a5,%hi(.LC0)
	ld	a5,%lo(.LC0)(a5)
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
.LC1:
	.string	"unknown_time"
	.align	3
.LC2:
	.string	"unknown_machine"
	.align	3
.LC3:
	.string	"unknown_host"
	.align	3
.LC4:
	.string	"unknown_user"
	.align	3
.LC5:
	.string	"%s|%s|%s|%s|%ld|%s|%s"
	.align	3
.LC6:
	.string	"8.3.0"
	.align	3
.LC7:
	.string	"%s|run_epoch=%ld"
	.align	3
.LC8:
	.string	"=== RISC-V Proof Header ==="
	.align	3
.LC9:
	.string	"User: %s\n"
	.align	3
.LC10:
	.string	"Host: %s\n"
	.align	3
.LC11:
	.string	"MachineID : %s\n"
	.align	3
.LC12:
	.string	"BuildUTC : %s\n"
	.align	3
.LC13:
	.string	"BuildEpoch : %ld\n"
	.align	3
.LC14:
	.string	"GCC: %s\n"
	.align	3
.LC15:
	.string	"PointerBits: %d\n"
	.align	3
.LC16:
	.string	"Program: %s\n"
	.align	3
.LC17:
	.string	"ProofID: 0x%016llx\n"
	.align	3
.LC18:
	.string	"RunID: 0x%016llx\n"
	.align	3
.LC19:
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
	lui	a5,%hi(.LC6)
	addi	a5,a5,%lo(.LC6)
	sd	a5,0(sp)
	li	a7,0
	lui	a5,%hi(.LC1)
	addi	a6,a5,%lo(.LC1)
	lui	a5,%hi(.LC2)
	addi	a5,a5,%lo(.LC2)
	lui	a4,%hi(.LC3)
	addi	a4,a4,%lo(.LC3)
	lui	a3,%hi(.LC4)
	addi	a3,a3,%lo(.LC4)
	lui	a2,%hi(.LC5)
	addi	a2,a2,%lo(.LC5)
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
	lui	a5,%hi(.LC7)
	addi	a2,a5,%lo(.LC7)
	li	a1,600
	call	snprintf
	addi	a5,s0,-1160
	mv	a0,a5
	call	fnv1a64
	sd	a0,-48(s0)
	lui	a5,%hi(.LC8)
	addi	a0,a5,%lo(.LC8)
	call	puts
	lui	a5,%hi(.LC4)
	addi	a1,a5,%lo(.LC4)
	lui	a5,%hi(.LC9)
	addi	a0,a5,%lo(.LC9)
	call	printf
	lui	a5,%hi(.LC3)
	addi	a1,a5,%lo(.LC3)
	lui	a5,%hi(.LC10)
	addi	a0,a5,%lo(.LC10)
	call	printf
	lui	a5,%hi(.LC2)
	addi	a1,a5,%lo(.LC2)
	lui	a5,%hi(.LC11)
	addi	a0,a5,%lo(.LC11)
	call	printf
	lui	a5,%hi(.LC1)
	addi	a1,a5,%lo(.LC1)
	lui	a5,%hi(.LC12)
	addi	a0,a5,%lo(.LC12)
	call	printf
	li	a1,0
	lui	a5,%hi(.LC13)
	addi	a0,a5,%lo(.LC13)
	call	printf
	lui	a5,%hi(.LC6)
	addi	a1,a5,%lo(.LC6)
	lui	a5,%hi(.LC14)
	addi	a0,a5,%lo(.LC14)
	call	printf
	li	a1,64
	lui	a5,%hi(.LC15)
	addi	a0,a5,%lo(.LC15)
	call	printf
	ld	a1,-1176(s0)
	lui	a5,%hi(.LC16)
	addi	a0,a5,%lo(.LC16)
	call	printf
	ld	a1,-40(s0)
	lui	a5,%hi(.LC17)
	addi	a0,a5,%lo(.LC17)
	call	printf
	ld	a1,-48(s0)
	lui	a5,%hi(.LC18)
	addi	a0,a5,%lo(.LC18)
	call	printf
	lui	a5,%hi(.LC19)
	addi	a0,a5,%lo(.LC19)
	call	puts
	nop
	ld	ra,1192(sp)
	ld	s0,1184(sp)
	addi	sp,sp,1200
	jr	ra
	.size	uniq_print_header, .-uniq_print_header
	.align	1
	.type	fact, @function
fact:
	addi	sp,sp,-48
	sd	ra,40(sp)
	sd	s0,32(sp)
	sd	s1,24(sp)
	addi	s0,sp,48
	mv	a5,a0
	sw	a5,-36(s0)
	lw	a5,-36(s0)
	sext.w	a4,a5
	li	a5,1
	bleu	a4,a5,.L7
	lwu	s1,-36(s0)
	lw	a5,-36(s0)
	addiw	a5,a5,-1
	sext.w	a5,a5
	mv	a0,a5
	call	fact
	mv	a5,a0
	mul	a5,s1,a5
	j	.L9
.L7:
	li	a5,1
.L9:
	mv	a0,a5
	ld	ra,40(sp)
	ld	s0,32(sp)
	ld	s1,24(sp)
	addi	sp,sp,48
	jr	ra
	.size	fact, .-fact
	.section	.rodata
	.align	3
.LC20:
	.string	"factorial"
	.align	3
.LC21:
	.string	"n=%u, n!=%llu\n"
	.text
	.align	1
	.globl	main
	.type	main, @function
main:
	addi	sp,sp,-32
	sd	ra,24(sp)
	sd	s0,16(sp)
	addi	s0,sp,32
	lui	a5,%hi(.LC20)
	addi	a0,a5,%lo(.LC20)
	call	uniq_print_header
	li	a5,12
	sw	a5,-20(s0)
	lw	a5,-20(s0)
	mv	a0,a5
	call	fact
	mv	a4,a0
	lw	a5,-20(s0)
	mv	a2,a4
	mv	a1,a5
	lui	a5,%hi(.LC21)
	addi	a0,a5,%lo(.LC21)
	call	printf
	li	a5,0
	mv	a0,a5
	ld	ra,24(sp)
	ld	s0,16(sp)
	addi	sp,sp,32
	jr	ra
	.size	main, .-main
	.section	.rodata
	.align	3
.LC0:
	.dword	1469598103934665603
	.ident	"GCC: (SiFive GCC 8.3.0-2019.08.0) 8.3.0"
