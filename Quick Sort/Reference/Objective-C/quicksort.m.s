	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 13
                                        ## Start of file scope inline assembly
.objc_class_name_QuickSort = 0
	.globl	.objc_class_name_QuickSort
.objc_class_name_Partition = 0
	.globl	.objc_class_name_Partition
	.lazy_reference	.objc_class_name_QuickSort
	.lazy_reference	.objc_class_name_Partition
	.lazy_reference	.objc_class_name_NSObject

                                        ## End of file scope inline assembly
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
	leal	l_main.A-L0$pb(%eax), %esi
	movl	$200, %edi
	leal	-216(%ebp), %ebx
	movl	%eax, -240(%ebp)        ## 4-byte Spill
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -220(%ebp)
	movl	%edx, -224(%ebp)
	movl	%ecx, -228(%ebp)
	movl	%ebx, (%esp)
	movl	%esi, 4(%esp)
	movl	$200, 8(%esp)
	movl	%edi, -244(%ebp)        ## 4-byte Spill
	calll	_memcpy
	movl	-240(%ebp), %eax        ## 4-byte Reload
	movl	L_OBJC_CLASS_REFERENCES_-L0$pb(%eax), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_-L0$pb(%eax), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	_objc_msgSend
	movl	-240(%ebp), %ecx        ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.2-L0$pb(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	_objc_msgSend
	xorl	%ecx, %ecx
	movl	$49, %edx
	leal	-216(%ebp), %esi
	movl	%eax, -232(%ebp)
	movl	-232(%ebp), %eax
	movl	-240(%ebp), %edi        ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.4-L0$pb(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%esi, 8(%esp)
	movl	$0, 12(%esp)
	movl	$49, 16(%esp)
	movl	%ecx, -248(%ebp)        ## 4-byte Spill
	movl	%edx, -252(%ebp)        ## 4-byte Spill
	calll	_objc_msgSend
	movl	$0, -236(%ebp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$50, -236(%ebp)
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-240(%ebp), %eax        ## 4-byte Reload
	leal	L_.str-L0$pb(%eax), %ecx
	movl	-236(%ebp), %edx
	movl	-216(%ebp,%edx,4), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	_printf
	movl	%eax, -256(%ebp)        ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-236(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -236(%ebp)
	jmp	LBB0_1
LBB0_4:
	movl	-240(%ebp), %eax        ## 4-byte Reload
	leal	L_.str.5-L0$pb(%eax), %ecx
	movl	%ecx, (%esp)
	calll	_printf
	movl	-240(%ebp), %ecx        ## 4-byte Reload
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%ecx), %edx
	movl	(%edx), %edx
	movl	-16(%ebp), %esi
	cmpl	%esi, %edx
	movl	%eax, -260(%ebp)        ## 4-byte Spill
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

	.p2align	4, 0x90
"-[QuickSort quickSort:p:r:]":          ## @"\01-[QuickSort quickSort:p:r:]"
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$60, %esp
	calll	L1$pb
L1$pb:
	popl	%eax
	movl	24(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	16(%ebp), %esi
	movl	12(%ebp), %edi
	movl	8(%ebp), %ebx
	movl	%ebx, -16(%ebp)
	movl	%edi, -20(%ebp)
	movl	%esi, -24(%ebp)
	movl	%edx, -28(%ebp)
	movl	%ecx, -32(%ebp)
	movl	-28(%ebp), %ecx
	cmpl	-32(%ebp), %ecx
	movl	%eax, -48(%ebp)         ## 4-byte Spill
	jge	LBB1_2
## BB#1:
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	L_OBJC_CLASS_REFERENCES_-L1$pb(%eax), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_-L1$pb(%eax), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	_objc_msgSend
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.2-L1$pb(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	_objc_msgSend
	movl	%eax, -36(%ebp)
	movl	-48(%ebp), %eax         ## 4-byte Reload
	movl	L_OBJC_CLASS_REFERENCES_.7-L1$pb(%eax), %ecx
	movl	L_OBJC_SELECTOR_REFERENCES_-L1$pb(%eax), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	_objc_msgSend
	movl	-48(%ebp), %ecx         ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.2-L1$pb(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	_objc_msgSend
	movl	%eax, -40(%ebp)
	movl	-40(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-32(%ebp), %esi
	movl	-48(%ebp), %edi         ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.9-L1$pb(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	calll	_objc_msgSend
	movl	%eax, -44(%ebp)
	movl	-36(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	-44(%ebp), %esi
	subl	$1, %esi
	movl	-48(%ebp), %edi         ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.4-L1$pb(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	calll	_objc_msgSend
	movl	-36(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-44(%ebp), %edx
	addl	$1, %edx
	movl	-32(%ebp), %esi
	movl	-48(%ebp), %edi         ## 4-byte Reload
	movl	L_OBJC_SELECTOR_REFERENCES_.4-L1$pb(%edi), %ebx
	movl	%eax, (%esp)
	movl	%ebx, 4(%esp)
	movl	%ecx, 8(%esp)
	movl	%edx, 12(%esp)
	movl	%esi, 16(%esp)
	calll	_objc_msgSend
LBB1_2:
	addl	$60, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl

	.p2align	4, 0x90
"-[Partition partition:p:r:]":          ## @"\01-[Partition partition:p:r:]"
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	pushl	%edi
	pushl	%esi
	subl	$40, %esp
	movl	24(%ebp), %eax
	movl	20(%ebp), %ecx
	movl	16(%ebp), %edx
	movl	12(%ebp), %esi
	movl	8(%ebp), %edi
	movl	%edi, -12(%ebp)
	movl	%esi, -16(%ebp)
	movl	%edx, -20(%ebp)
	movl	%ecx, -24(%ebp)
	movl	%eax, -28(%ebp)
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -32(%ebp)
	movl	-24(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-24(%ebp), %eax
	movl	%eax, -40(%ebp)
LBB2_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-40(%ebp), %eax
	cmpl	-28(%ebp), %eax
	jge	LBB2_6
## BB#2:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-20(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	cmpl	-32(%ebp), %eax
	jg	LBB2_4
## BB#3:                                ##   in Loop: Header=BB2_1 Depth=1
	movl	-36(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -36(%ebp)
	movl	-20(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	%eax, -44(%ebp)
	movl	-20(%ebp), %eax
	movl	-40(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-20(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	-44(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	-40(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
LBB2_4:                                 ##   in Loop: Header=BB2_1 Depth=1
	jmp	LBB2_5
LBB2_5:                                 ##   in Loop: Header=BB2_1 Depth=1
	movl	-40(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -40(%ebp)
	jmp	LBB2_1
LBB2_6:
	movl	-20(%ebp), %eax
	movl	-36(%ebp), %ecx
	movl	4(%eax,%ecx,4), %eax
	movl	%eax, -48(%ebp)
	movl	-20(%ebp), %eax
	movl	-28(%ebp), %ecx
	movl	(%eax,%ecx,4), %eax
	movl	-20(%ebp), %ecx
	movl	-36(%ebp), %edx
	movl	%eax, 4(%ecx,%edx,4)
	movl	-48(%ebp), %eax
	movl	-20(%ebp), %ecx
	movl	-28(%ebp), %edx
	movl	%eax, (%ecx,%edx,4)
	movl	-36(%ebp), %eax
	addl	$1, %eax
	addl	$40, %esp
	popl	%esi
	popl	%edi
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
L_OBJC_CLASS_NAME_:                     ## @OBJC_CLASS_NAME_
	.asciz	"QuickSort"

	.section	__OBJC,__cls_refs,literal_pointers,no_dead_strip
	.p2align	2               ## @OBJC_CLASS_REFERENCES_
L_OBJC_CLASS_REFERENCES_:
	.long	L_OBJC_CLASS_NAME_

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_:                  ## @OBJC_METH_VAR_NAME_
	.asciz	"alloc"

	.section	__OBJC,__message_refs,literal_pointers,no_dead_strip
	.p2align	2               ## @OBJC_SELECTOR_REFERENCES_
L_OBJC_SELECTOR_REFERENCES_:
	.long	L_OBJC_METH_VAR_NAME_

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_.1:                ## @OBJC_METH_VAR_NAME_.1
	.asciz	"init"

	.section	__OBJC,__message_refs,literal_pointers,no_dead_strip
	.p2align	2               ## @OBJC_SELECTOR_REFERENCES_.2
L_OBJC_SELECTOR_REFERENCES_.2:
	.long	L_OBJC_METH_VAR_NAME_.1

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_.3:                ## @OBJC_METH_VAR_NAME_.3
	.asciz	"quickSort:p:r:"

	.section	__OBJC,__message_refs,literal_pointers,no_dead_strip
	.p2align	2               ## @OBJC_SELECTOR_REFERENCES_.4
L_OBJC_SELECTOR_REFERENCES_.4:
	.long	L_OBJC_METH_VAR_NAME_.3

	.section	__TEXT,__cstring,cstring_literals
L_.str:                                 ## @.str
	.asciz	"%x\t"

L_.str.5:                               ## @.str.5
	.asciz	"\n"

L_OBJC_CLASS_NAME_.6:                   ## @OBJC_CLASS_NAME_.6
	.asciz	"Partition"

	.section	__OBJC,__cls_refs,literal_pointers,no_dead_strip
	.p2align	2               ## @OBJC_CLASS_REFERENCES_.7
L_OBJC_CLASS_REFERENCES_.7:
	.long	L_OBJC_CLASS_NAME_.6

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_NAME_.8:                ## @OBJC_METH_VAR_NAME_.8
	.asciz	"partition:p:r:"

	.section	__OBJC,__message_refs,literal_pointers,no_dead_strip
	.p2align	2               ## @OBJC_SELECTOR_REFERENCES_.9
L_OBJC_SELECTOR_REFERENCES_.9:
	.long	L_OBJC_METH_VAR_NAME_.8

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_.10:                  ## @OBJC_CLASS_NAME_.10
	.asciz	"NSObject"

	.section	__OBJC,__meta_class,regular,no_dead_strip
	.p2align	2               ## @OBJC_METACLASS_QuickSort
L_OBJC_METACLASS_QuickSort:
	.long	L_OBJC_CLASS_NAME_.10
	.long	L_OBJC_CLASS_NAME_.10
	.long	L_OBJC_CLASS_NAME_
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	48                      ## 0x30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_TYPE_:                  ## @OBJC_METH_VAR_TYPE_
	.asciz	"v20@0:4^i8i12i16"

	.section	__OBJC,__inst_meth,regular,no_dead_strip
	.p2align	2               ## @OBJC_INSTANCE_METHODS_QuickSort
L_OBJC_INSTANCE_METHODS_QuickSort:
	.long	0
	.long	1                       ## 0x1
	.long	L_OBJC_METH_VAR_NAME_.3
	.long	L_OBJC_METH_VAR_TYPE_
	.long	"-[QuickSort quickSort:p:r:]"

	.section	__OBJC,__class,regular,no_dead_strip
	.p2align	2               ## @OBJC_CLASS_QuickSort
L_OBJC_CLASS_QuickSort:
	.long	L_OBJC_METACLASS_QuickSort
	.long	L_OBJC_CLASS_NAME_.10
	.long	L_OBJC_CLASS_NAME_
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	0
	.long	L_OBJC_INSTANCE_METHODS_QuickSort
	.long	0
	.long	0
	.long	0
	.long	0

	.section	__OBJC,__meta_class,regular,no_dead_strip
	.p2align	2               ## @OBJC_METACLASS_Partition
L_OBJC_METACLASS_Partition:
	.long	L_OBJC_CLASS_NAME_.10
	.long	L_OBJC_CLASS_NAME_.10
	.long	L_OBJC_CLASS_NAME_.6
	.long	0                       ## 0x0
	.long	2                       ## 0x2
	.long	48                      ## 0x30
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_METH_VAR_TYPE_.11:               ## @OBJC_METH_VAR_TYPE_.11
	.asciz	"i20@0:4^i8i12i16"

	.section	__OBJC,__inst_meth,regular,no_dead_strip
	.p2align	2               ## @OBJC_INSTANCE_METHODS_Partition
L_OBJC_INSTANCE_METHODS_Partition:
	.long	0
	.long	1                       ## 0x1
	.long	L_OBJC_METH_VAR_NAME_.8
	.long	L_OBJC_METH_VAR_TYPE_.11
	.long	"-[Partition partition:p:r:]"

	.section	__OBJC,__class,regular,no_dead_strip
	.p2align	2               ## @OBJC_CLASS_Partition
L_OBJC_CLASS_Partition:
	.long	L_OBJC_METACLASS_Partition
	.long	L_OBJC_CLASS_NAME_.10
	.long	L_OBJC_CLASS_NAME_.6
	.long	0                       ## 0x0
	.long	1                       ## 0x1
	.long	4                       ## 0x4
	.long	0
	.long	L_OBJC_INSTANCE_METHODS_Partition
	.long	0
	.long	0
	.long	0
	.long	0

	.section	__TEXT,__cstring,cstring_literals
L_OBJC_CLASS_NAME_.12:                  ## @OBJC_CLASS_NAME_.12
	.space	1

	.section	__OBJC,__symbols,regular,no_dead_strip
	.p2align	2               ## @OBJC_SYMBOLS
L_OBJC_SYMBOLS:
	.long	0                       ## 0x0
	.long	0
	.short	2                       ## 0x2
	.short	0                       ## 0x0
	.long	L_OBJC_CLASS_QuickSort
	.long	L_OBJC_CLASS_Partition

	.section	__OBJC,__module_info,regular,no_dead_strip
	.p2align	2               ## @OBJC_MODULES
L_OBJC_MODULES:
	.long	7                       ## 0x7
	.long	16                      ## 0x10
	.long	L_OBJC_CLASS_NAME_.12
	.long	L_OBJC_SYMBOLS

	.section	__OBJC,__image_info
L_OBJC_IMAGE_INFO:
	.long	0
	.long	64


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
