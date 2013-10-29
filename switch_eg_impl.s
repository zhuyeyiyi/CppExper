	.file	"switch_eg_impl.c"
	.text
	.globl	switch_eg_impl
	.type	switch_eg_impl, @function
switch_eg_impl:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	movl	12(%ebp), %eax
	subl	$100, %eax
	movl	%eax, -4(%ebp)
	cmpl	$6, -4(%ebp)
	ja	.L10
.L2:
	movl	-4(%ebp), %eax
	movl	jt.1230(,%eax,4), %eax
	jmp	*%eax
.L10:
	nop
.L3:
	movl	$0, -8(%ebp)
	jmp	.L4
.L5:
	movl	8(%ebp), %eax
	movl	%eax, -8(%ebp)
	jmp	.L6
.L7:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	addl	%eax, %eax
	addl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	movl	%eax, -8(%ebp)
	jmp	.L4
.L8:
	movl	8(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	addl	%eax, %eax
	movl	%eax, -8(%ebp)
.L6:
	addl	$11, -8(%ebp)
.L9:
	movl	8(%ebp), %eax
	imull	8(%ebp), %eax
	movl	%eax, -8(%ebp)
.L4:
	movl	-8(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	switch_eg_impl, .-switch_eg_impl
	.data
	.align 4
	.type	jt.1230, @object
	.size	jt.1230, 28
jt.1230:
	.long	.L7
	.long	.L3
	.long	.L8
	.long	.L5
	.long	.L9
	.long	.L3
	.long	.L9
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
