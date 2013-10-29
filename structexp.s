	.file	"structexp.c"
	.text
	.globl	sp_init
	.type	sp_init, @function
sp_init:
.LFB22:
	.cfi_startproc
	movl	4(%esp), %eax
	movl	8(%eax), %edx
	movl	%edx, 4(%eax)
	leal	4(%eax), %edx
	movl	%edx, (%eax)
	movl	%eax, 12(%eax)
	ret
	.cfi_endproc
.LFE22:
	.size	sp_init, .-sp_init
	.ident	"GCC: (Ubuntu/Linaro 4.6.3-1ubuntu5) 4.6.3"
	.section	.note.GNU-stack,"",@progbits
