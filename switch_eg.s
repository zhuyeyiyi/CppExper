	.file	"switch_eg.c"
	.text
	.globl	switch_fun
	.type	switch_fun, @function
switch_fun:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movl	12(%ebp), %eax
	cmpl	$102, %eax
	je	.L4
	cmpl	$102, %eax
	jg	.L6
	cmpl	$100, %eax
	je	.L3
	jmp	.L2
.L6:
	cmpl	$104, %eax
	je	.L5
	cmpl	$106, %eax
	je	.L5
	jmp	.L2
.L3:
	movl	-4(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -4(%ebp)
	jmp	.L8
.L4:
	addl	$10, -4(%ebp)
	jmp	.L8
.L5:
	movl	-4(%ebp), %eax
	imull	-4(%ebp), %eax
	movl	%eax, -4(%ebp)
	jmp	.L8
.L2:
	movl	$0, -4(%ebp)
	nop
.L8:
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	switch_fun, .-switch_fun
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
