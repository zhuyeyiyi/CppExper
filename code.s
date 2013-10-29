	.file	"code.c"
	.text
	.globl	sum
	.type	sum, @function
sum:
.LFB22:
	.cfi_startproc
	movl	8(%esp), %eax
	addl	4(%esp), %eax
	addl	%eax, accum
	ret
	.cfi_endproc
.LFE22:
	.size	sum, .-sum
	.globl	main
	.type	main, @function
main:
.LFB23:
	.cfi_startproc
	subl	$8, %esp
	.cfi_def_cfa_offset 12
	movl	$2, 4(%esp)
	movl	$1, (%esp)
	call	sum
	addl	$8, %esp
	.cfi_def_cfa_offset 4
	ret
	.cfi_endproc
.LFE23:
	.size	main, .-main
	.globl	accum
	.bss
	.align 4
	.type	accum, @object
	.size	accum, 4
accum:
	.zero	4
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
