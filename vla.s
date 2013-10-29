	.file	"vla.c"
	.text
	.globl	var_ele
	.type	var_ele, @function
var_ele:
.LFB0:
	.cfi_startproc
	movl	4(%esp), %eax
	sall	$2, %eax
	imull	12(%esp), %eax
	movl	16(%esp), %edx
	sall	$2, %edx
	addl	8(%esp), %edx
	movl	(%edx,%eax), %eax
	ret
	.cfi_endproc
.LFE0:
	.size	var_ele, .-var_ele
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
