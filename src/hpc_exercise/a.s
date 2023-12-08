	.file	"a.cpp"
	.text
	.section	.text._Z4funciPid,"axG",@progbits,_Z4funciPid,comdat
	.weak	_Z4funciPid
	.type	_Z4funciPid, @function
_Z4funciPid:
.LFB955:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movl	%edi, -4(%rbp)
	movq	%rsi, -16(%rbp)
	movsd	%xmm0, -24(%rbp)
	pxor	%xmm1, %xmm1
	cvtsi2sdl	-4(%rbp), %xmm1
	movsd	%xmm1, -32(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %xmm0
	call	cos@PLT
	mulsd	-32(%rbp), %xmm0
	cvttsd2sil	%xmm0, %edx
	movq	-16(%rbp), %rax
	movl	%edx, (%rax)
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE955:
	.size	_Z4funciPid, .-_Z4funciPid
	.text
	.globl	main
	.type	main, @function
main:
.LFB956:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	$100, -12(%rbp)
	movq	.LC0(%rip), %rcx
	movq	-8(%rbp), %rdx
	movl	-12(%rbp), %eax
	movq	%rcx, %xmm0
	movq	%rdx, %rsi
	movl	%eax, %edi
	call	_Z4funciPid
	movl	$0, %eax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE956:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	1717986918
	.long	1076127334
	.ident	"GCC: (Ubuntu 11.2.0-19ubuntu1) 11.2.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
