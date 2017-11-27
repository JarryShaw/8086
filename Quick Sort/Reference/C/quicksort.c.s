	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$268, %esp              ## imm = 0x10C
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	xorl	%esi, %esi
	movl	$49, %edi
	leal	-216(%ebp), %ebx
	movl	%eax, -236(%ebp)        ## 4-byte Spill
	leal	l_main.A-L0$pb(%eax), %eax
	movl	%eax, -240(%ebp)        ## 4-byte Spill
	movl	$200, %eax
	movl	%eax, -244(%ebp)        ## 4-byte Spill
	movl	-236(%ebp), %eax        ## 4-byte Reload
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -220(%ebp)
	movl	%edx, -224(%ebp)
	movl	%ecx, -228(%ebp)
	movl	%ebx, %eax
	movl	%eax, (%esp)
	movl	-240(%ebp), %eax        ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$200, 8(%esp)
	movl	%ebx, -248(%ebp)        ## 4-byte Spill
	movl	%esi, -252(%ebp)        ## 4-byte Spill
	movl	%edi, -256(%ebp)        ## 4-byte Spill
	calll	_memcpy
	movl	-248(%ebp), %eax        ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	$49, 8(%esp)
	calll	_quickSort
	movl	$0, -232(%ebp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$50, -232(%ebp)
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-236(%ebp), %eax        ## 4-byte Reload
	leal	L_.str-L0$pb(%eax), %ecx
	movl	-232(%ebp), %edx
	movl	-216(%ebp,%edx,4), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	_printf
	movl	%eax, -260(%ebp)        ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-232(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -232(%ebp)
	jmp	LBB0_1
LBB0_4:
	movl	-236(%ebp), %eax        ## 4-byte Reload
	leal	L_.str.1-L0$pb(%eax), %ecx
	movl	%ecx, (%esp)
	calll	_printf
	movl	-236(%ebp), %ecx        ## 4-byte Reload
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%ecx), %edx
	movl	(%edx), %edx
	movl	-16(%ebp), %esi
	cmpl	%esi, %edx
	movl	%eax, -264(%ebp)        ## 4-byte Spill
	jne	LBB0_6
## BB#5:
	xorl	%eax, %eax
	addl	$268, %esp              ## imm = 0x10C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB0_6:
	calll	___stack_chk_fail

	.globl	_quickSort
	.p2align	4, 0x90
_quickSort:                             ## @quickSort
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$40, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
	movl	%eax, -12(%ebp)
	movl	-8(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jge	LBB1_2
## BB#1:
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	_partition
	movl	%eax, -16(%ebp)
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	-16(%ebp), %edx
	subl	$1, %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	_quickSort
	movl	-4(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	$1, %ecx
	movl	-12(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	_quickSort
LBB1_2:
	addl	$40, %esp
	popl	%ebp
	retl

	.globl	_partition
	.p2align	4, 0x90
_partition:                             ## @partition
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$32, %esp
	movl	16(%ebp), %eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	movl	%edx, -4(%ebp)
	movl	%ecx, -8(%ebp)
	movl	%eax, -12(%ebp)
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -16(%ebp)
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jge	LBB2_6
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-4(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	-16(%ebp), %eax
	jg	LBB2_4
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -28(%ebp)
	movl	-4(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-4(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	-28(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	-24(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	LBB2_1
LBB2_6:
	movl	-4(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	4(%eax,%ecx,4), %eax
	movl	%eax, -32(%ebp)
	movl	-4(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-4(%ebp), %ecx
	movl	-20(%ebp), %edx
	movl	%eax, 4(%ecx,%edx,4)
	movl	-32(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	-12(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	addl	$32, %esp
	popl	%ebp
	retl

	.section	__TEXT,__const
	.p2align	2               ## @main.A
l_main.A:
	.long	24                      ## 0x18
	.long	23                      ## 0x17
	.long	22                      ## 0x16
	.long	21                      ## 0x15
	.long	20                      ## 0x14
	.long	19                      ## 0x13
	.long	18                      ## 0x12
	.long	17                      ## 0x11
	.long	16                      ## 0x10
	.long	15                      ## 0xf
	.long	14                      ## 0xe
	.long	13                      ## 0xd
	.long	12                      ## 0xc
	.long	11                      ## 0xb
	.long	10                      ## 0xa
	.long	9                       ## 0x9
	.long	8                       ## 0x8
	.long	7                       ## 0x7
	.long	6                       ## 0x6
	.long	5                       ## 0x5
	.long	4                       ## 0x4
	.long	3                       ## 0x3
	.long	2                       ## 0x2
	.long	1                       ## 0x1
	.long	0                       ## 0x0
	.long	4294967295              ## 0xffffffff
	.long	4294967294              ## 0xfffffffe
	.long	4294967293              ## 0xfffffffd
	.long	4294967292              ## 0xfffffffc
	.long	4294967291              ## 0xfffffffb
	.long	4294967290              ## 0xfffffffa
	.long	4294967289              ## 0xfffffff9
	.long	4294967288              ## 0xfffffff8
	.long	4294967287              ## 0xfffffff7
	.long	4294967286              ## 0xfffffff6
	.long	4294967285              ## 0xfffffff5
	.long	4294967284              ## 0xfffffff4
	.long	4294967283              ## 0xfffffff3
	.long	4294967282              ## 0xfffffff2
	.long	4294967281              ## 0xfffffff1
	.long	4294967280              ## 0xfffffff0
	.long	4294967279              ## 0xffffffef
	.long	4294967278              ## 0xffffffee
	.long	4294967277              ## 0xffffffed
	.long	4294967276              ## 0xffffffec
	.long	4294967275              ## 0xffffffeb
	.long	4294967274              ## 0xffffffea
	.long	4294967273              ## 0xffffffe9
	.long	4294967272              ## 0xffffffe8
	.long	4294967271              ## 0xffffffe7

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%d\t"

L_.str.1:                               ## @.str.1
	.asciz	"\n"


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
