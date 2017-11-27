	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 12
	.globl	_main
	.p2align	4, 0x90
_main:                                  ## @main
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp0:
	.cfi_def_cfa_offset 8
Ltmp1:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp2:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$284, %esp              ## imm = 0x11C
Ltmp3:
	.cfi_offset %esi, -20
Ltmp4:
	.cfi_offset %edi, -16
Ltmp5:
	.cfi_offset %ebx, -12
	calll	L0$pb
L0$pb:
	popl	%eax
	movl	12(%ebp), %ecx
	movl	8(%ebp), %edx
	xorl	%esi, %esi
	movl	$49, %edi
	leal	-216(%ebp), %ebx
	movl	%eax, -244(%ebp)        ## 4-byte Spill
	leal	l__ZZ4mainE1A-L0$pb(%eax), %eax
	movl	%eax, -248(%ebp)        ## 4-byte Spill
	movl	$200, %eax
	movl	%eax, -252(%ebp)        ## 4-byte Spill
	movl	-244(%ebp), %eax        ## 4-byte Reload
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%eax), %eax
	movl	(%eax), %eax
	movl	%eax, -16(%ebp)
	movl	$0, -228(%ebp)
	movl	%edx, -232(%ebp)
	movl	%ecx, -236(%ebp)
	movl	%ebx, %eax
	movl	%eax, (%esp)
	movl	-248(%ebp), %eax        ## 4-byte Reload
	movl	%eax, 4(%esp)
	movl	$200, 8(%esp)
	movl	%ebx, -256(%ebp)        ## 4-byte Spill
	movl	%esi, -260(%ebp)        ## 4-byte Spill
	movl	%edi, -264(%ebp)        ## 4-byte Spill
	calll	_memcpy
	movl	-256(%ebp), %eax        ## 4-byte Reload
	movl	%eax, (%esp)
	movl	$0, 4(%esp)
	movl	$49, 8(%esp)
	calll	__Z9quickSortPiii
	movl	$0, -240(%ebp)
LBB0_1:                                 ## =>This Inner Loop Header: Depth=1
	cmpl	$50, -240(%ebp)
	jge	LBB0_4
## BB#2:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-244(%ebp), %eax        ## 4-byte Reload
	movl	L__ZNSt3__14coutE$non_lazy_ptr-L0$pb(%eax), %ecx
	movl	-240(%ebp), %edx
	movl	-216(%ebp,%edx,4), %edx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	calll	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEElsEi
	movl	$9, %ecx
	movl	%eax, (%esp)
	movl	$9, 4(%esp)
	movl	%ecx, -268(%ebp)        ## 4-byte Spill
	calll	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	movl	%eax, -272(%ebp)        ## 4-byte Spill
## BB#3:                                ##   in Loop: Header=BB0_1 Depth=1
	movl	-240(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -240(%ebp)
	jmp	LBB0_1
LBB0_4:
	movl	-244(%ebp), %eax        ## 4-byte Reload
	leal	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_-L0$pb(%eax), %ecx
	movl	L__ZNSt3__14coutE$non_lazy_ptr-L0$pb(%eax), %edx
	movl	%edx, -220(%ebp)
	movl	%ecx, -224(%ebp)
	movl	-220(%ebp), %ecx
	movl	%ecx, (%esp)
	calll	*-224(%ebp)
	movl	-244(%ebp), %ecx        ## 4-byte Reload
	movl	L___stack_chk_guard$non_lazy_ptr-L0$pb(%ecx), %edx
	movl	(%edx), %edx
	movl	-16(%ebp), %esi
	cmpl	%esi, %edx
	movl	%eax, -276(%ebp)        ## 4-byte Spill
	jne	LBB0_6
## BB#5:
	xorl	%eax, %eax
	addl	$284, %esp              ## imm = 0x11C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB0_6:
	calll	___stack_chk_fail
	.cfi_endproc

	.globl	__Z9quickSortPiii
	.p2align	4, 0x90
__Z9quickSortPiii:                      ## @_Z9quickSortPiii
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp6:
	.cfi_def_cfa_offset 8
Ltmp7:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp8:
	.cfi_def_cfa_register %ebp
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
	calll	__Z9partitionPiii
	movl	%eax, -16(%ebp)
	movl	-4(%ebp), %eax
	movl	-8(%ebp), %ecx
	movl	-16(%ebp), %edx
	subl	$1, %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	__Z9quickSortPiii
	movl	-4(%ebp), %eax
	movl	-16(%ebp), %ecx
	addl	$1, %ecx
	movl	-12(%ebp), %edx
	movl	%eax, (%esp)
	movl	%ecx, 4(%esp)
	movl	%edx, 8(%esp)
	calll	__Z9quickSortPiii
LBB1_2:
	addl	$40, %esp
	popl	%ebp
	retl
	.cfi_endproc

	.globl	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.weak_definition	__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.p2align	4, 0x90
__ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c: ## @_ZNSt3__1lsINS_11char_traitsIcEEEERNS_13basic_ostreamIcT_EES6_c
	.cfi_startproc
## BB#0:
	pushl	%ebp
Ltmp9:
	.cfi_def_cfa_offset 8
Ltmp10:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp11:
	.cfi_def_cfa_register %ebp
	pushl	%esi
	subl	$36, %esp
Ltmp12:
	.cfi_offset %esi, -12
	movb	12(%ebp), %al
	movl	8(%ebp), %ecx
	leal	-9(%ebp), %edx
	movl	$1, %esi
	movl	%ecx, -8(%ebp)
	movb	%al, -9(%ebp)
	movl	-8(%ebp), %ecx
	movl	%ecx, (%esp)
	movl	%edx, 4(%esp)
	movl	$1, 8(%esp)
	movl	%esi, -16(%ebp)         ## 4-byte Spill
	calll	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	addl	$36, %esp
	popl	%esi
	popl	%ebp
	retl
	.cfi_endproc

	.private_extern	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.globl	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.weak_definition	__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
	.p2align	4, 0x90
__ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_: ## @_ZNSt3__14endlIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_
Lfunc_begin0:
	.cfi_startproc
	.cfi_personality 155, L___gxx_personality_v0$non_lazy_ptr
	.cfi_lsda 16, Lexception0
## BB#0:
	pushl	%ebp
Ltmp21:
	.cfi_def_cfa_offset 8
Ltmp22:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp23:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$92, %esp
Ltmp24:
	.cfi_offset %esi, -20
Ltmp25:
	.cfi_offset %edi, -16
Ltmp26:
	.cfi_offset %ebx, -12
	calll	L3$pb
L3$pb:
	popl	%eax
	movl	8(%ebp), %ecx
	movl	%ecx, -52(%ebp)
	movl	%ecx, %edx
	movl	(%ecx), %esi
	movl	-12(%esi), %esi
	addl	%esi, %ecx
	movl	%ecx, -28(%ebp)
	movb	$10, -29(%ebp)
	movl	-28(%ebp), %ecx
	movl	%esp, %esi
	movl	%ecx, 4(%esi)
	leal	-40(%ebp), %ecx
	movl	%ecx, (%esi)
	movl	%eax, -56(%ebp)         ## 4-byte Spill
	movl	%edx, -60(%ebp)         ## 4-byte Spill
	movl	%ecx, -64(%ebp)         ## 4-byte Spill
	calll	__ZNKSt3__18ios_base6getlocEv
	subl	$4, %esp
	movl	-64(%ebp), %eax         ## 4-byte Reload
	movl	%eax, -24(%ebp)
Ltmp13:
	movl	-56(%ebp), %ecx         ## 4-byte Reload
	movl	L__ZNSt3__15ctypeIcE2idE$non_lazy_ptr-L3$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	calll	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp14:
	movl	%eax, -68(%ebp)         ## 4-byte Spill
	jmp	LBB3_1
LBB3_1:
	movb	-29(%ebp), %al
	movl	-68(%ebp), %ecx         ## 4-byte Reload
	movl	%ecx, -16(%ebp)
	movb	%al, -17(%ebp)
	movl	-16(%ebp), %edx
	movl	(%edx), %esi
	movl	28(%esi), %esi
	movsbl	-17(%ebp), %edi
Ltmp15:
	movl	%esp, %ebx
	movl	%edi, 4(%ebx)
	movl	%edx, (%ebx)
	calll	*%esi
Ltmp16:
	movb	%al, -69(%ebp)          ## 1-byte Spill
	jmp	LBB3_5
LBB3_2:
Ltmp17:
	movl	%eax, -44(%ebp)
	movl	%edx, -48(%ebp)
Ltmp18:
	movl	%esp, %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	calll	__ZNSt3__16localeD1Ev
Ltmp19:
	jmp	LBB3_3
LBB3_3:
	movl	-44(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Unwind_Resume
LBB3_4:
Ltmp20:
	movl	%eax, (%esp)
	movl	%edx, -76(%ebp)         ## 4-byte Spill
	calll	___clang_call_terminate
LBB3_5:
	leal	-40(%ebp), %eax
	movl	%eax, (%esp)
	calll	__ZNSt3__16localeD1Ev
	movl	-60(%ebp), %eax         ## 4-byte Reload
	movl	%eax, (%esp)
	movb	-69(%ebp), %cl          ## 1-byte Reload
	movsbl	%cl, %edx
	movl	%edx, 4(%esp)
	calll	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE3putEc
	movl	-52(%ebp), %edx
	movl	%edx, (%esp)
	movl	%eax, -80(%ebp)         ## 4-byte Spill
	calll	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE5flushEv
	movl	-52(%ebp), %edx
	movl	%eax, -84(%ebp)         ## 4-byte Spill
	movl	%edx, %eax
	addl	$92, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
Lfunc_end0:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table3:
Lexception0:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset0 = Lfunc_begin0-Lfunc_begin0       ## >> Call Site 1 <<
	.long	Lset0
Lset1 = Ltmp13-Lfunc_begin0             ##   Call between Lfunc_begin0 and Ltmp13
	.long	Lset1
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset2 = Ltmp13-Lfunc_begin0             ## >> Call Site 2 <<
	.long	Lset2
Lset3 = Ltmp16-Ltmp13                   ##   Call between Ltmp13 and Ltmp16
	.long	Lset3
Lset4 = Ltmp17-Lfunc_begin0             ##     jumps to Ltmp17
	.long	Lset4
	.byte	0                       ##   On action: cleanup
Lset5 = Ltmp18-Lfunc_begin0             ## >> Call Site 3 <<
	.long	Lset5
Lset6 = Ltmp19-Ltmp18                   ##   Call between Ltmp18 and Ltmp19
	.long	Lset6
Lset7 = Ltmp20-Lfunc_begin0             ##     jumps to Ltmp20
	.long	Lset7
	.byte	1                       ##   On action: 1
Lset8 = Ltmp19-Lfunc_begin0             ## >> Call Site 4 <<
	.long	Lset8
Lset9 = Lfunc_end0-Ltmp19               ##   Call between Ltmp19 and Lfunc_end0
	.long	Lset9
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.globl	__Z9partitionPiii
	.p2align	4, 0x90
__Z9partitionPiii:                      ## @_Z9partitionPiii
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
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	%eax, -16(%ebp)
	movl	-8(%ebp), %eax
	subl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-8(%ebp), %eax
	movl	%eax, -24(%ebp)
LBB4_1:                                 ## =>This Inner Loop Header: Depth=1
	movl	-24(%ebp), %eax
	cmpl	-12(%ebp), %eax
	jge	LBB4_6
## BB#2:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%ecx,%eax,4), %eax
	cmpl	-16(%ebp), %eax
	jg	LBB4_4
## BB#3:                                ##   in Loop: Header=BB4_1 Depth=1
	movl	-20(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -20(%ebp)
	movl	-20(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	%eax, -28(%ebp)
	movl	-24(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	-20(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	%eax, (%edx,%ecx,4)
	movl	-28(%ebp), %eax
	movl	-24(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	%eax, (%edx,%ecx,4)
LBB4_4:                                 ##   in Loop: Header=BB4_1 Depth=1
	jmp	LBB4_5
LBB4_5:                                 ##   in Loop: Header=BB4_1 Depth=1
	movl	-24(%ebp), %eax
	addl	$1, %eax
	movl	%eax, -24(%ebp)
	jmp	LBB4_1
LBB4_6:
	movl	-20(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	4(%ecx,%eax,4), %eax
	movl	%eax, -32(%ebp)
	movl	-12(%ebp), %eax
	movl	-4(%ebp), %ecx
	movl	(%ecx,%eax,4), %eax
	movl	-20(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	%eax, 4(%edx,%ecx,4)
	movl	-32(%ebp), %eax
	movl	-12(%ebp), %ecx
	movl	-4(%ebp), %edx
	movl	%eax, (%edx,%ecx,4)
	movl	-20(%ebp), %eax
	addl	$1, %eax
	addl	$32, %esp
	popl	%ebp
	retl

	.globl	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.weak_definition	__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
	.p2align	4, 0x90
__ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m: ## @_ZNSt3__124__put_character_sequenceIcNS_11char_traitsIcEEEERNS_13basic_ostreamIT_T0_EES7_PKS4_m
Lfunc_begin1:
	.cfi_startproc
	.cfi_personality 155, L___gxx_personality_v0$non_lazy_ptr
	.cfi_lsda 16, Lexception1
## BB#0:
	pushl	%ebp
Ltmp57:
	.cfi_def_cfa_offset 8
Ltmp58:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp59:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$252, %esp
Ltmp60:
	.cfi_offset %esi, -20
Ltmp61:
	.cfi_offset %edi, -16
Ltmp62:
	.cfi_offset %ebx, -12
	calll	L5$pb
L5$pb:
	popl	%eax
	movl	16(%ebp), %ecx
	movl	12(%ebp), %edx
	movl	8(%ebp), %esi
	movl	%esi, -116(%ebp)
	movl	%edx, -120(%ebp)
	movl	%ecx, -124(%ebp)
	movl	-116(%ebp), %ecx
Ltmp27:
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	leal	-136(%ebp), %ecx
	movl	%ecx, (%edx)
	movl	%eax, -164(%ebp)        ## 4-byte Spill
	calll	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryC1ERS3_
Ltmp28:
	jmp	LBB5_1
LBB5_1:
	leal	-136(%ebp), %eax
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	movb	(%eax), %cl
	movb	%cl, -165(%ebp)         ## 1-byte Spill
## BB#2:
	movb	-165(%ebp), %al         ## 1-byte Reload
	testb	$1, %al
	jne	LBB5_3
	jmp	LBB5_26
LBB5_3:
	leal	-152(%ebp), %eax
	movl	-116(%ebp), %ecx
	movl	%eax, -104(%ebp)
	movl	%ecx, -108(%ebp)
	movl	-104(%ebp), %eax
	movl	-108(%ebp), %ecx
	movl	%eax, -88(%ebp)
	movl	%ecx, -92(%ebp)
	movl	-88(%ebp), %eax
	movl	-92(%ebp), %ecx
	movl	(%ecx), %edx
	movl	-12(%edx), %edx
	addl	%edx, %ecx
	movl	%ecx, -84(%ebp)
	movl	-84(%ebp), %ecx
	movl	%ecx, -80(%ebp)
	movl	-80(%ebp), %ecx
	movl	24(%ecx), %ecx
	movl	%ecx, (%eax)
	movl	-120(%ebp), %eax
	movl	-116(%ebp), %ecx
	movl	(%ecx), %edx
	movl	-12(%edx), %edx
	addl	%edx, %ecx
	movl	%ecx, -60(%ebp)
	movl	-60(%ebp), %ecx
	movl	4(%ecx), %ecx
	movl	%eax, -172(%ebp)        ## 4-byte Spill
	movl	%ecx, -176(%ebp)        ## 4-byte Spill
## BB#4:
	movl	-176(%ebp), %eax        ## 4-byte Reload
	andl	$176, %eax
	cmpl	$32, %eax
	jne	LBB5_6
## BB#5:
	movl	-120(%ebp), %eax
	addl	-124(%ebp), %eax
	movl	%eax, -180(%ebp)        ## 4-byte Spill
	jmp	LBB5_7
LBB5_6:
	movl	-120(%ebp), %eax
	movl	%eax, -180(%ebp)        ## 4-byte Spill
LBB5_7:
	movl	-180(%ebp), %eax        ## 4-byte Reload
	movl	-120(%ebp), %ecx
	addl	-124(%ebp), %ecx
	movl	-116(%ebp), %edx
	movl	(%edx), %esi
	movl	-12(%esi), %esi
	addl	%esi, %edx
	movl	-116(%ebp), %esi
	movl	(%esi), %edi
	movl	-12(%edi), %edi
	addl	%edi, %esi
	movl	%esi, -52(%ebp)
	movl	-52(%ebp), %esi
	movl	%eax, -184(%ebp)        ## 4-byte Spill
	movl	%ecx, -188(%ebp)        ## 4-byte Spill
	movl	%edx, -192(%ebp)        ## 4-byte Spill
	movl	%esi, -196(%ebp)        ## 4-byte Spill
	calll	__ZNSt3__111char_traitsIcE3eofEv
	movl	-196(%ebp), %ecx        ## 4-byte Reload
	movl	76(%ecx), %edx
	movl	%eax, (%esp)
	movl	%edx, 4(%esp)
	calll	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	testb	$1, %al
	jne	LBB5_8
	jmp	LBB5_16
LBB5_8:
	movl	-196(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -28(%ebp)
	movb	$32, -29(%ebp)
	movl	-28(%ebp), %ecx
Ltmp29:
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	leal	-40(%ebp), %ecx
	movl	%ecx, (%edx)
	calll	__ZNKSt3__18ios_base6getlocEv
	subl	$4, %esp
Ltmp30:
	jmp	LBB5_9
LBB5_9:
	leal	-40(%ebp), %eax
	movl	%eax, -24(%ebp)
Ltmp31:
	movl	-164(%ebp), %ecx        ## 4-byte Reload
	movl	L__ZNSt3__15ctypeIcE2idE$non_lazy_ptr-L5$pb(%ecx), %edx
	movl	%esp, %esi
	movl	%edx, 4(%esi)
	movl	%eax, (%esi)
	calll	__ZNKSt3__16locale9use_facetERNS0_2idE
Ltmp32:
	movl	%eax, -200(%ebp)        ## 4-byte Spill
	jmp	LBB5_10
LBB5_10:
	movb	-29(%ebp), %al
	movl	-200(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, -16(%ebp)
	movb	%al, -17(%ebp)
	movl	-16(%ebp), %edx
	movl	(%edx), %esi
	movl	28(%esi), %esi
	movsbl	-17(%ebp), %edi
Ltmp33:
	movl	%esp, %ebx
	movl	%edi, 4(%ebx)
	movl	%edx, (%ebx)
	calll	*%esi
Ltmp34:
	movb	%al, -201(%ebp)         ## 1-byte Spill
	jmp	LBB5_14
LBB5_11:
Ltmp35:
	movl	%eax, -44(%ebp)
	movl	%edx, -48(%ebp)
Ltmp36:
	movl	%esp, %eax
	leal	-40(%ebp), %edx
	movl	%edx, (%eax)
	calll	__ZNSt3__16localeD1Ev
Ltmp37:
	jmp	LBB5_12
LBB5_12:
	movl	-44(%ebp), %eax
	movl	-48(%ebp), %ecx
	movl	%eax, -208(%ebp)        ## 4-byte Spill
	movl	%ecx, -212(%ebp)        ## 4-byte Spill
	jmp	LBB5_24
LBB5_13:
Ltmp38:
	movl	%eax, (%esp)
	movl	%edx, -216(%ebp)        ## 4-byte Spill
	calll	___clang_call_terminate
LBB5_14:
Ltmp39:
	movl	%esp, %eax
	leal	-40(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	__ZNSt3__16localeD1Ev
Ltmp40:
	jmp	LBB5_15
LBB5_15:
	movb	-201(%ebp), %al         ## 1-byte Reload
	movsbl	%al, %ecx
	movl	-196(%ebp), %edx        ## 4-byte Reload
	movl	%ecx, 76(%edx)
LBB5_16:
	movl	-196(%ebp), %eax        ## 4-byte Reload
	movl	76(%eax), %ecx
	movb	%cl, %dl
	movb	%dl, -217(%ebp)         ## 1-byte Spill
## BB#17:
Ltmp41:
	movl	-152(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	movb	-217(%ebp), %dl         ## 1-byte Reload
	movsbl	%dl, %eax
	movl	%eax, 20(%ecx)
	movl	-192(%ebp), %eax        ## 4-byte Reload
	movl	%eax, 16(%ecx)
	movl	-188(%ebp), %esi        ## 4-byte Reload
	movl	%esi, 12(%ecx)
	movl	-184(%ebp), %edi        ## 4-byte Reload
	movl	%edi, 8(%ecx)
	movl	-172(%ebp), %ebx        ## 4-byte Reload
	movl	%ebx, 4(%ecx)
	calll	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Ltmp42:
	movl	%eax, -224(%ebp)        ## 4-byte Spill
	jmp	LBB5_18
LBB5_18:
	leal	-160(%ebp), %eax
	movl	-224(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, -160(%ebp)
	movl	%eax, -56(%ebp)
	movl	-56(%ebp), %eax
	cmpl	$0, (%eax)
	jne	LBB5_25
## BB#19:
	movl	-116(%ebp), %eax
	movl	(%eax), %ecx
	movl	-12(%ecx), %ecx
	addl	%ecx, %eax
	movl	%eax, -72(%ebp)
	movl	$5, -76(%ebp)
	movl	-72(%ebp), %eax
	movl	%eax, -64(%ebp)
	movl	$5, -68(%ebp)
	movl	-64(%ebp), %eax
	movl	16(%eax), %ecx
	orl	$5, %ecx
Ltmp43:
	movl	%esp, %edx
	movl	%ecx, 4(%edx)
	movl	%eax, (%edx)
	calll	__ZNSt3__18ios_base5clearEj
Ltmp44:
	jmp	LBB5_20
LBB5_20:
	jmp	LBB5_21
LBB5_21:
	jmp	LBB5_25
LBB5_22:
Ltmp50:
	movl	%eax, -140(%ebp)
	movl	%edx, -144(%ebp)
	jmp	LBB5_29
LBB5_23:
Ltmp45:
	movl	%eax, -208(%ebp)        ## 4-byte Spill
	movl	%edx, -212(%ebp)        ## 4-byte Spill
	jmp	LBB5_24
LBB5_24:
	movl	-212(%ebp), %eax        ## 4-byte Reload
	movl	-208(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, -140(%ebp)
	movl	%eax, -144(%ebp)
Ltmp46:
	movl	%esp, %eax
	leal	-136(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp47:
	jmp	LBB5_28
LBB5_25:
	jmp	LBB5_26
LBB5_26:
Ltmp48:
	movl	%esp, %eax
	leal	-136(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	__ZNSt3__113basic_ostreamIcNS_11char_traitsIcEEE6sentryD1Ev
Ltmp49:
	jmp	LBB5_27
LBB5_27:
	jmp	LBB5_31
LBB5_28:
	jmp	LBB5_29
LBB5_29:
	movl	-140(%ebp), %eax
	movl	%esp, %ecx
	movl	%eax, (%ecx)
	calll	___cxa_begin_catch
	movl	-116(%ebp), %ecx
	movl	(%ecx), %edx
	movl	-12(%edx), %edx
	addl	%edx, %ecx
Ltmp51:
	movl	%esp, %edx
	movl	%ecx, (%edx)
	movl	%eax, -228(%ebp)        ## 4-byte Spill
	calll	__ZNSt3__18ios_base33__set_badbit_and_consider_rethrowEv
Ltmp52:
	jmp	LBB5_30
LBB5_30:
	calll	___cxa_end_catch
LBB5_31:
	movl	-116(%ebp), %eax
	addl	$252, %esp
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB5_32:
Ltmp53:
	movl	%eax, -140(%ebp)
	movl	%edx, -144(%ebp)
Ltmp54:
	calll	___cxa_end_catch
Ltmp55:
	jmp	LBB5_33
LBB5_33:
	jmp	LBB5_34
LBB5_34:
	movl	-140(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Unwind_Resume
LBB5_35:
Ltmp56:
	movl	%eax, (%esp)
	movl	%edx, -232(%ebp)        ## 4-byte Spill
	calll	___clang_call_terminate
Lfunc_end1:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table5:
Lexception1:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\253\201"              ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.ascii	"\234\001"              ## Call site table length
Lset10 = Ltmp27-Lfunc_begin1            ## >> Call Site 1 <<
	.long	Lset10
Lset11 = Ltmp28-Ltmp27                  ##   Call between Ltmp27 and Ltmp28
	.long	Lset11
Lset12 = Ltmp50-Lfunc_begin1            ##     jumps to Ltmp50
	.long	Lset12
	.byte	5                       ##   On action: 3
Lset13 = Ltmp29-Lfunc_begin1            ## >> Call Site 2 <<
	.long	Lset13
Lset14 = Ltmp30-Ltmp29                  ##   Call between Ltmp29 and Ltmp30
	.long	Lset14
Lset15 = Ltmp45-Lfunc_begin1            ##     jumps to Ltmp45
	.long	Lset15
	.byte	5                       ##   On action: 3
Lset16 = Ltmp31-Lfunc_begin1            ## >> Call Site 3 <<
	.long	Lset16
Lset17 = Ltmp34-Ltmp31                  ##   Call between Ltmp31 and Ltmp34
	.long	Lset17
Lset18 = Ltmp35-Lfunc_begin1            ##     jumps to Ltmp35
	.long	Lset18
	.byte	3                       ##   On action: 2
Lset19 = Ltmp36-Lfunc_begin1            ## >> Call Site 4 <<
	.long	Lset19
Lset20 = Ltmp37-Ltmp36                  ##   Call between Ltmp36 and Ltmp37
	.long	Lset20
Lset21 = Ltmp38-Lfunc_begin1            ##     jumps to Ltmp38
	.long	Lset21
	.byte	7                       ##   On action: 4
Lset22 = Ltmp39-Lfunc_begin1            ## >> Call Site 5 <<
	.long	Lset22
Lset23 = Ltmp44-Ltmp39                  ##   Call between Ltmp39 and Ltmp44
	.long	Lset23
Lset24 = Ltmp45-Lfunc_begin1            ##     jumps to Ltmp45
	.long	Lset24
	.byte	5                       ##   On action: 3
Lset25 = Ltmp46-Lfunc_begin1            ## >> Call Site 6 <<
	.long	Lset25
Lset26 = Ltmp47-Ltmp46                  ##   Call between Ltmp46 and Ltmp47
	.long	Lset26
Lset27 = Ltmp56-Lfunc_begin1            ##     jumps to Ltmp56
	.long	Lset27
	.byte	5                       ##   On action: 3
Lset28 = Ltmp48-Lfunc_begin1            ## >> Call Site 7 <<
	.long	Lset28
Lset29 = Ltmp49-Ltmp48                  ##   Call between Ltmp48 and Ltmp49
	.long	Lset29
Lset30 = Ltmp50-Lfunc_begin1            ##     jumps to Ltmp50
	.long	Lset30
	.byte	5                       ##   On action: 3
Lset31 = Ltmp49-Lfunc_begin1            ## >> Call Site 8 <<
	.long	Lset31
Lset32 = Ltmp51-Ltmp49                  ##   Call between Ltmp49 and Ltmp51
	.long	Lset32
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset33 = Ltmp51-Lfunc_begin1            ## >> Call Site 9 <<
	.long	Lset33
Lset34 = Ltmp52-Ltmp51                  ##   Call between Ltmp51 and Ltmp52
	.long	Lset34
Lset35 = Ltmp53-Lfunc_begin1            ##     jumps to Ltmp53
	.long	Lset35
	.byte	0                       ##   On action: cleanup
Lset36 = Ltmp52-Lfunc_begin1            ## >> Call Site 10 <<
	.long	Lset36
Lset37 = Ltmp54-Ltmp52                  ##   Call between Ltmp52 and Ltmp54
	.long	Lset37
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset38 = Ltmp54-Lfunc_begin1            ## >> Call Site 11 <<
	.long	Lset38
Lset39 = Ltmp55-Ltmp54                  ##   Call between Ltmp54 and Ltmp55
	.long	Lset39
Lset40 = Ltmp56-Lfunc_begin1            ##     jumps to Ltmp56
	.long	Lset40
	.byte	5                       ##   On action: 3
Lset41 = Ltmp55-Lfunc_begin1            ## >> Call Site 12 <<
	.long	Lset41
Lset42 = Lfunc_end1-Ltmp55              ##   Call between Ltmp55 and Lfunc_end1
	.long	Lset42
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	0                       ## >> Action Record 1 <<
                                        ##   Cleanup
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 2 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 1
	.byte	1                       ## >> Action Record 3 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
	.byte	1                       ## >> Action Record 4 <<
                                        ##   Catch TypeInfo 1
	.byte	125                     ##   Continue to action 3
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.globl	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.weak_definition	__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
	.p2align	4, 0x90
__ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_: ## @_ZNSt3__116__pad_and_outputIcNS_11char_traitsIcEEEENS_19ostreambuf_iteratorIT_T0_EES6_PKS4_S8_S8_RNS_8ios_baseES4_
Lfunc_begin2:
	.cfi_startproc
	.cfi_personality 155, L___gxx_personality_v0$non_lazy_ptr
	.cfi_lsda 16, Lexception2
## BB#0:
	pushl	%ebp
Ltmp69:
	.cfi_def_cfa_offset 8
Ltmp70:
	.cfi_offset %ebp, -8
	movl	%esp, %ebp
Ltmp71:
	.cfi_def_cfa_register %ebp
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	subl	$412, %esp              ## imm = 0x19C
Ltmp72:
	.cfi_offset %esi, -20
Ltmp73:
	.cfi_offset %edi, -16
Ltmp74:
	.cfi_offset %ebx, -12
	movb	28(%ebp), %al
	movl	24(%ebp), %ecx
	movl	20(%ebp), %edx
	movl	16(%ebp), %esi
	movl	12(%ebp), %edi
	leal	8(%ebp), %ebx
	movb	%al, -353(%ebp)         ## 1-byte Spill
	leal	-296(%ebp), %eax
	movl	%eax, -360(%ebp)        ## 4-byte Spill
	leal	-264(%ebp), %eax
	movl	%edi, -276(%ebp)
	movl	%esi, -280(%ebp)
	movl	%edx, -284(%ebp)
	movl	%ecx, -288(%ebp)
	movb	-353(%ebp), %cl         ## 1-byte Reload
	movb	%cl, -289(%ebp)
	movl	(%ebx), %edx
	movl	%eax, -256(%ebp)
	movl	$-1, -260(%ebp)
	movl	-256(%ebp), %eax
	movl	-260(%ebp), %esi
	movl	%eax, -248(%ebp)
	movl	%esi, -252(%ebp)
	movl	-248(%ebp), %eax
	movl	$0, (%eax)
	movl	-264(%ebp), %eax
	movl	%eax, -296(%ebp)
	movl	-360(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -244(%ebp)
	cmpl	$0, %edx
	movl	%ebx, -364(%ebp)        ## 4-byte Spill
	jne	LBB6_2
## BB#1:
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -272(%ebp)
	jmp	LBB6_29
LBB6_2:
	movl	-284(%ebp), %eax
	movl	-276(%ebp), %ecx
	subl	%ecx, %eax
	movl	%eax, -300(%ebp)
	movl	-288(%ebp), %eax
	movl	%eax, -192(%ebp)
	movl	-192(%ebp), %eax
	movl	12(%eax), %eax
	movl	%eax, -304(%ebp)
	movl	-304(%ebp), %eax
	cmpl	-300(%ebp), %eax
	jle	LBB6_4
## BB#3:
	movl	-300(%ebp), %eax
	movl	-304(%ebp), %ecx
	subl	%eax, %ecx
	movl	%ecx, -304(%ebp)
	jmp	LBB6_5
LBB6_4:
	movl	$0, -304(%ebp)
LBB6_5:
	movl	-280(%ebp), %eax
	movl	-276(%ebp), %ecx
	subl	%ecx, %eax
	movl	%eax, -308(%ebp)
	cmpl	$0, -308(%ebp)
	jle	LBB6_9
## BB#6:
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %ecx
	movl	-276(%ebp), %edx
	movl	-308(%ebp), %esi
	movl	%ecx, -140(%ebp)
	movl	%edx, -144(%ebp)
	movl	%esi, -148(%ebp)
	movl	-140(%ebp), %ecx
	movl	(%ecx), %edx
	movl	48(%edx), %edx
	movl	-144(%ebp), %esi
	movl	-148(%ebp), %edi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	calll	*%edx
	cmpl	-308(%ebp), %eax
	je	LBB6_8
## BB#7:
	leal	-312(%ebp), %eax
	leal	-136(%ebp), %ecx
	movl	%ecx, -124(%ebp)
	movl	$-1, -128(%ebp)
	movl	-124(%ebp), %ecx
	movl	-128(%ebp), %edx
	movl	%ecx, -116(%ebp)
	movl	%edx, -120(%ebp)
	movl	-116(%ebp), %ecx
	movl	$0, (%ecx)
	movl	-136(%ebp), %ecx
	movl	%ecx, -312(%ebp)
	movl	%eax, -16(%ebp)
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	$0, (%eax)
	movl	(%eax), %ecx
	movl	%ecx, -272(%ebp)
	jmp	LBB6_29
LBB6_8:
	jmp	LBB6_9
LBB6_9:
	cmpl	$0, -304(%ebp)
	jle	LBB6_24
## BB#10:
	xorl	%eax, %eax
	movl	$12, %ecx
	leal	-328(%ebp), %edx
	movl	-304(%ebp), %esi
	movb	-289(%ebp), %bl
	movl	%edx, -48(%ebp)
	movl	%esi, -52(%ebp)
	movb	%bl, -53(%ebp)
	movl	-48(%ebp), %edx
	movl	-52(%ebp), %esi
	movb	-53(%ebp), %bl
	movl	%edx, -36(%ebp)
	movl	%esi, -40(%ebp)
	movb	%bl, -41(%ebp)
	movl	-36(%ebp), %edx
	movl	%edx, -32(%ebp)
	movl	-32(%ebp), %esi
	movl	%esi, -28(%ebp)
	movl	-28(%ebp), %esi
	movl	%esi, -24(%ebp)
	movl	-24(%ebp), %esi
	movl	%esi, %edi
	movl	%edi, -20(%ebp)
	movl	%esi, (%esp)
	movl	$0, 4(%esp)
	movl	$12, 8(%esp)
	movl	%eax, -368(%ebp)        ## 4-byte Spill
	movl	%ecx, -372(%ebp)        ## 4-byte Spill
	movl	%edx, -376(%ebp)        ## 4-byte Spill
	calll	_memset
	movl	-40(%ebp), %eax
	movl	-376(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, (%esp)
	movl	%eax, 4(%esp)
	movsbl	-41(%ebp), %eax
	movl	%eax, 8(%esp)
	calll	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEE6__initEmc
	leal	-328(%ebp), %eax
	movl	-364(%ebp), %ecx        ## 4-byte Reload
	movl	(%ecx), %edx
	movl	%eax, -112(%ebp)
	movl	-112(%ebp), %eax
	movl	%eax, -108(%ebp)
	movl	-108(%ebp), %eax
	movl	%eax, -104(%ebp)
	movl	-104(%ebp), %esi
	movl	%esi, -100(%ebp)
	movl	-100(%ebp), %esi
	movl	%esi, -96(%ebp)
	movl	-96(%ebp), %esi
	movzbl	(%esi), %esi
	andl	$1, %esi
	cmpl	$0, %esi
	movl	%edx, -380(%ebp)        ## 4-byte Spill
	movl	%eax, -384(%ebp)        ## 4-byte Spill
	je	LBB6_12
## BB#11:
	movl	-384(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -72(%ebp)
	movl	-72(%ebp), %ecx
	movl	%ecx, -68(%ebp)
	movl	-68(%ebp), %ecx
	movl	%ecx, -64(%ebp)
	movl	-64(%ebp), %ecx
	movl	8(%ecx), %ecx
	movl	%ecx, -388(%ebp)        ## 4-byte Spill
	jmp	LBB6_13
LBB6_12:
	movl	-384(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -92(%ebp)
	movl	-92(%ebp), %ecx
	movl	%ecx, -88(%ebp)
	movl	-88(%ebp), %ecx
	movl	%ecx, -84(%ebp)
	movl	-84(%ebp), %ecx
	addl	$1, %ecx
	movl	%ecx, -80(%ebp)
	movl	-80(%ebp), %ecx
	movl	%ecx, -76(%ebp)
	movl	-76(%ebp), %ecx
	movl	%ecx, -388(%ebp)        ## 4-byte Spill
LBB6_13:
	movl	-388(%ebp), %eax        ## 4-byte Reload
	movl	%eax, -60(%ebp)
	movl	-304(%ebp), %ecx
	movl	-380(%ebp), %edx        ## 4-byte Reload
	movl	%edx, -152(%ebp)
	movl	%eax, -156(%ebp)
	movl	%ecx, -160(%ebp)
	movl	-152(%ebp), %eax
	movl	(%eax), %esi
	movl	48(%esi), %esi
	movl	-156(%ebp), %edi
Ltmp63:
	movl	%esp, %ebx
	movl	%ecx, 8(%ebx)
	movl	%edi, 4(%ebx)
	movl	%eax, (%ebx)
	calll	*%esi
Ltmp64:
	movl	%eax, -392(%ebp)        ## 4-byte Spill
	jmp	LBB6_14
LBB6_14:
	jmp	LBB6_15
LBB6_15:
	movl	-392(%ebp), %eax        ## 4-byte Reload
	cmpl	-304(%ebp), %eax
	je	LBB6_20
## BB#16:
	leal	-184(%ebp), %eax
	movl	%eax, -172(%ebp)
	movl	$-1, -176(%ebp)
	movl	-172(%ebp), %eax
	movl	-176(%ebp), %ecx
	movl	%eax, -164(%ebp)
	movl	%ecx, -168(%ebp)
	movl	-164(%ebp), %eax
	movl	$0, (%eax)
	movl	-184(%ebp), %eax
	movl	%eax, -396(%ebp)        ## 4-byte Spill
## BB#17:
	leal	-344(%ebp), %eax
	movl	-396(%ebp), %ecx        ## 4-byte Reload
	movl	%ecx, -344(%ebp)
	movl	%eax, -188(%ebp)
## BB#18:
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	$0, (%eax)
	movl	(%eax), %ecx
	movl	%ecx, -272(%ebp)
	movl	$1, -348(%ebp)
	jmp	LBB6_21
LBB6_19:
Ltmp65:
	movl	%eax, -332(%ebp)
	movl	%edx, -336(%ebp)
Ltmp66:
	movl	%esp, %eax
	leal	-328(%ebp), %edx
	movl	%edx, (%eax)
	calll	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
Ltmp67:
	jmp	LBB6_23
LBB6_20:
	movl	$0, -348(%ebp)
LBB6_21:
	movl	%esp, %eax
	leal	-328(%ebp), %ecx
	movl	%ecx, (%eax)
	calll	__ZNSt3__112basic_stringIcNS_11char_traitsIcEENS_9allocatorIcEEED1Ev
	movl	-348(%ebp), %eax
	testl	%eax, %eax
	movl	%eax, -400(%ebp)        ## 4-byte Spill
	je	LBB6_22
	jmp	LBB6_33
LBB6_33:
	movl	-400(%ebp), %eax        ## 4-byte Reload
	subl	$1, %eax
	movl	%eax, -404(%ebp)        ## 4-byte Spill
	je	LBB6_29
	jmp	LBB6_32
LBB6_22:
	jmp	LBB6_24
LBB6_23:
	jmp	LBB6_30
LBB6_24:
	movl	-284(%ebp), %eax
	movl	-280(%ebp), %ecx
	subl	%ecx, %eax
	movl	%eax, -308(%ebp)
	cmpl	$0, -308(%ebp)
	jle	LBB6_28
## BB#25:
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %ecx
	movl	-280(%ebp), %edx
	movl	-308(%ebp), %esi
	movl	%ecx, -196(%ebp)
	movl	%edx, -200(%ebp)
	movl	%esi, -204(%ebp)
	movl	-196(%ebp), %ecx
	movl	(%ecx), %edx
	movl	48(%edx), %edx
	movl	-200(%ebp), %esi
	movl	-204(%ebp), %edi
	movl	%ecx, (%esp)
	movl	%esi, 4(%esp)
	movl	%edi, 8(%esp)
	calll	*%edx
	cmpl	-308(%ebp), %eax
	je	LBB6_27
## BB#26:
	leal	-352(%ebp), %eax
	leal	-224(%ebp), %ecx
	movl	%ecx, -216(%ebp)
	movl	$-1, -220(%ebp)
	movl	-216(%ebp), %ecx
	movl	-220(%ebp), %edx
	movl	%ecx, -208(%ebp)
	movl	%edx, -212(%ebp)
	movl	-208(%ebp), %ecx
	movl	$0, (%ecx)
	movl	-224(%ebp), %ecx
	movl	%ecx, -352(%ebp)
	movl	%eax, -228(%ebp)
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	$0, (%eax)
	movl	(%eax), %ecx
	movl	%ecx, -272(%ebp)
	jmp	LBB6_29
LBB6_27:
	jmp	LBB6_28
LBB6_28:
	movl	-288(%ebp), %eax
	movl	%eax, -232(%ebp)
	movl	$0, -236(%ebp)
	movl	-232(%ebp), %eax
	movl	12(%eax), %ecx
	movl	%ecx, -240(%ebp)
	movl	-236(%ebp), %ecx
	movl	%ecx, 12(%eax)
	movl	-364(%ebp), %eax        ## 4-byte Reload
	movl	(%eax), %ecx
	movl	%ecx, -272(%ebp)
LBB6_29:
	movl	-272(%ebp), %eax
	addl	$412, %esp              ## imm = 0x19C
	popl	%esi
	popl	%edi
	popl	%ebx
	popl	%ebp
	retl
LBB6_30:
	movl	-332(%ebp), %eax
	movl	%eax, (%esp)
	calll	__Unwind_Resume
LBB6_31:
Ltmp68:
	movl	%eax, (%esp)
	movl	%edx, -408(%ebp)        ## 4-byte Spill
	calll	___clang_call_terminate
LBB6_32:
Lfunc_end2:
	.cfi_endproc
	.section	__TEXT,__gcc_except_tab
	.p2align	2
GCC_except_table6:
Lexception2:
	.byte	255                     ## @LPStart Encoding = omit
	.byte	155                     ## @TType Encoding = indirect pcrel sdata4
	.asciz	"\274"                  ## @TType base offset
	.byte	3                       ## Call site Encoding = udata4
	.byte	52                      ## Call site table length
Lset43 = Lfunc_begin2-Lfunc_begin2      ## >> Call Site 1 <<
	.long	Lset43
Lset44 = Ltmp63-Lfunc_begin2            ##   Call between Lfunc_begin2 and Ltmp63
	.long	Lset44
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
Lset45 = Ltmp63-Lfunc_begin2            ## >> Call Site 2 <<
	.long	Lset45
Lset46 = Ltmp64-Ltmp63                  ##   Call between Ltmp63 and Ltmp64
	.long	Lset46
Lset47 = Ltmp65-Lfunc_begin2            ##     jumps to Ltmp65
	.long	Lset47
	.byte	0                       ##   On action: cleanup
Lset48 = Ltmp66-Lfunc_begin2            ## >> Call Site 3 <<
	.long	Lset48
Lset49 = Ltmp67-Ltmp66                  ##   Call between Ltmp66 and Ltmp67
	.long	Lset49
Lset50 = Ltmp68-Lfunc_begin2            ##     jumps to Ltmp68
	.long	Lset50
	.byte	1                       ##   On action: 1
Lset51 = Ltmp67-Lfunc_begin2            ## >> Call Site 4 <<
	.long	Lset51
Lset52 = Lfunc_end2-Ltmp67              ##   Call between Ltmp67 and Lfunc_end2
	.long	Lset52
	.long	0                       ##     has no landing pad
	.byte	0                       ##   On action: cleanup
	.byte	1                       ## >> Action Record 1 <<
                                        ##   Catch TypeInfo 1
	.byte	0                       ##   No further actions
                                        ## >> Catch TypeInfos <<
	.long	0                       ## TypeInfo 1
	.p2align	2

	.section	__TEXT,__text,regular,pure_instructions
	.private_extern	___clang_call_terminate
	.globl	___clang_call_terminate
	.weak_definition	___clang_call_terminate
	.p2align	4, 0x90
___clang_call_terminate:                ## @__clang_call_terminate
## BB#0:
	subl	$12, %esp
	movl	16(%esp), %eax
	movl	%eax, (%esp)
	calll	___cxa_begin_catch
	movl	%eax, 8(%esp)           ## 4-byte Spill
	calll	__ZSt9terminatev

	.globl	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.weak_definition	__ZNSt3__111char_traitsIcE11eq_int_typeEii
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE11eq_int_typeEii: ## @_ZNSt3__111char_traitsIcE11eq_int_typeEii
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	subl	$8, %esp
	movl	12(%ebp), %eax
	movl	8(%ebp), %ecx
	movl	%ecx, -4(%ebp)
	movl	%eax, -8(%ebp)
	movl	-4(%ebp), %eax
	cmpl	-8(%ebp), %eax
	sete	%dl
	andb	$1, %dl
	movzbl	%dl, %eax
	addl	$8, %esp
	popl	%ebp
	retl

	.globl	__ZNSt3__111char_traitsIcE3eofEv
	.weak_definition	__ZNSt3__111char_traitsIcE3eofEv
	.p2align	4, 0x90
__ZNSt3__111char_traitsIcE3eofEv:       ## @_ZNSt3__111char_traitsIcE3eofEv
## BB#0:
	pushl	%ebp
	movl	%esp, %ebp
	movl	$4294967295, %eax       ## imm = 0xFFFFFFFF
	popl	%ebp
	retl

	.section	__TEXT,__const
	.p2align	2               ## @_ZZ4mainE1A
l__ZZ4mainE1A:
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


	.section	__IMPORT,__pointers,non_lazy_symbol_pointers
L__ZNSt3__14coutE$non_lazy_ptr:
	.indirect_symbol	__ZNSt3__14coutE
	.long	0
L__ZNSt3__15ctypeIcE2idE$non_lazy_ptr:
	.indirect_symbol	__ZNSt3__15ctypeIcE2idE
	.long	0
L___gxx_personality_v0$non_lazy_ptr:
	.indirect_symbol	___gxx_personality_v0
	.long	0
L___stack_chk_guard$non_lazy_ptr:
	.indirect_symbol	___stack_chk_guard
	.long	0

.subsections_via_symbols
