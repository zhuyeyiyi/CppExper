	.file	"xorl.c"
	.text
	.globl	gotodiff
	.type	gotodiff, @function
gotodiff:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	cmpl	12(%ebp), %eax
	jge	.L6
.L2:
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
	jmp	.L4
.L6:
	nop
.L5:
.L3:
	movl	12(%ebp), %eax
	movl	8(%ebp), %edx
	movl	%edx, %ecx
	subl	%eax, %ecx
	movl	%ecx, %eax
	movl	%eax, -4(%ebp)
.L4:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	gotodiff, .-gotodiff
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
