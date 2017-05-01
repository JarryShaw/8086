	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 9
	.section	__TEXT,__literal16,16byte_literals
	.p2align	4
LCPI0_0:
	.quad	50
	.quad	100
LCPI0_1:
	.quad	24
	.quad	23
LCPI0_2:
	.quad	22
	.quad	21
LCPI0_3:
	.quad	20
	.quad	19
LCPI0_4:
	.quad	18
	.quad	17
LCPI0_5:
	.quad	16
	.quad	15
LCPI0_6:
	.quad	14
	.quad	13
LCPI0_7:
	.quad	12
	.quad	11
LCPI0_8:
	.quad	10
	.quad	9
LCPI0_9:
	.quad	8
	.quad	7
LCPI0_10:
	.quad	6
	.quad	5
LCPI0_11:
	.quad	4
	.quad	3
LCPI0_12:
	.quad	2
	.quad	1
LCPI0_13:
	.quad	-2
	.quad	-3
LCPI0_14:
	.quad	-4
	.quad	-5
LCPI0_15:
	.quad	-6
	.quad	-7
LCPI0_16:
	.quad	-8
	.quad	-9
LCPI0_17:
	.quad	-10
	.quad	-11
LCPI0_18:
	.quad	-12
	.quad	-13
LCPI0_19:
	.quad	-14
	.quad	-15
LCPI0_20:
	.quad	-16
	.quad	-17
LCPI0_21:
	.quad	-18
	.quad	-19
LCPI0_22:
	.quad	-20
	.quad	-21
LCPI0_23:
	.quad	-22
	.quad	-23
LCPI0_24:
	.quad	-24
	.quad	-25
LCPI0_25:
	.quad	1
	.quad	2
	.section	__TEXT,__text,regular,pure_instructions
	.globl	_main
	.p2align	4, 0x90
_main:
	.cfi_startproc
	pushq	%rbp
Ltmp0:
	.cfi_def_cfa_offset 16
Ltmp1:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp2:
	.cfi_def_cfa_register %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	subq	$16, %rsp
Ltmp3:
	.cfi_offset %rbx, -48
Ltmp4:
	.cfi_offset %r12, -40
Ltmp5:
	.cfi_offset %r14, -32
Ltmp6:
	.cfi_offset %r15, -24
	movq	__TMLGCs23_ContiguousArrayStorageSi_(%rip), %rdi
	testq	%rdi, %rdi
	jne	LBB0_2
	movq	__TMSi@GOTPCREL(%rip), %rdi
	callq	__TMaCs23_ContiguousArrayStorage
	movq	%rax, %rdi
	movq	%rdi, __TMLGCs23_ContiguousArrayStorageSi_(%rip)
LBB0_2:
	movl	$432, %esi
	movl	$7, %edx
	callq	_swift_rt_swift_allocObject
	movaps	LCPI0_0(%rip), %xmm0
	movups	%xmm0, 16(%rax)
	movaps	LCPI0_1(%rip), %xmm0
	movups	%xmm0, 32(%rax)
	movaps	LCPI0_2(%rip), %xmm0
	movups	%xmm0, 48(%rax)
	movaps	LCPI0_3(%rip), %xmm0
	movups	%xmm0, 64(%rax)
	movaps	LCPI0_4(%rip), %xmm0
	movups	%xmm0, 80(%rax)
	movaps	LCPI0_5(%rip), %xmm0
	movups	%xmm0, 96(%rax)
	movaps	LCPI0_6(%rip), %xmm0
	movups	%xmm0, 112(%rax)
	movaps	LCPI0_7(%rip), %xmm0
	movups	%xmm0, 128(%rax)
	movaps	LCPI0_8(%rip), %xmm0
	movups	%xmm0, 144(%rax)
	movaps	LCPI0_9(%rip), %xmm0
	movups	%xmm0, 160(%rax)
	movaps	LCPI0_10(%rip), %xmm0
	movups	%xmm0, 176(%rax)
	movaps	LCPI0_11(%rip), %xmm0
	movups	%xmm0, 192(%rax)
	movaps	LCPI0_12(%rip), %xmm0
	movups	%xmm0, 208(%rax)
	movq	$-1, %rcx
	movd	%rcx, %xmm0
	pslldq	$8, %xmm0
	movdqu	%xmm0, 224(%rax)
	movaps	LCPI0_13(%rip), %xmm0
	movups	%xmm0, 240(%rax)
	movaps	LCPI0_14(%rip), %xmm0
	movups	%xmm0, 256(%rax)
	movaps	LCPI0_15(%rip), %xmm0
	movups	%xmm0, 272(%rax)
	movaps	LCPI0_16(%rip), %xmm0
	movups	%xmm0, 288(%rax)
	movaps	LCPI0_17(%rip), %xmm0
	movups	%xmm0, 304(%rax)
	movaps	LCPI0_18(%rip), %xmm0
	movups	%xmm0, 320(%rax)
	movaps	LCPI0_19(%rip), %xmm0
	movups	%xmm0, 336(%rax)
	movaps	LCPI0_20(%rip), %xmm0
	movups	%xmm0, 352(%rax)
	movaps	LCPI0_21(%rip), %xmm0
	movups	%xmm0, 368(%rax)
	movaps	LCPI0_22(%rip), %xmm0
	movups	%xmm0, 384(%rax)
	movaps	LCPI0_23(%rip), %xmm0
	movups	%xmm0, 400(%rax)
	movaps	LCPI0_24(%rip), %xmm0
	movups	%xmm0, 416(%rax)
	movq	%rax, __Tv4main1AGSaSi_(%rip)
	leaq	__Tv4main1AGSaSi_(%rip), %rdi
	xorl	%esi, %esi
	movl	$49, %edx
	callq	__TF4main9quickSortFT1ARGSaSi_1pSi1rSi_T_
	movq	__TMLGCs23_ContiguousArrayStorageP__(%rip), %rdi
	testq	%rdi, %rdi
	jne	LBB0_6
	movq	__TMLP_(%rip), %rdi
	testq	%rdi, %rdi
	jne	LBB0_5
	leaq	-40(%rbp), %rsi
	xorl	%edi, %edi
	callq	_swift_rt_swift_getExistentialTypeMetadata
	movq	%rax, %rdi
	movq	%rdi, __TMLP_(%rip)
LBB0_5:
	callq	__TMaCs23_ContiguousArrayStorage
	movq	%rax, %rdi
	movq	%rdi, __TMLGCs23_ContiguousArrayStorageP__(%rip)
LBB0_6:
	movl	$64, %esi
	movl	$7, %edx
	callq	_swift_rt_swift_allocObject
	movq	%rax, %rbx
	movaps	LCPI0_25(%rip), %xmm0
	movups	%xmm0, 16(%rbx)
	movq	__TMLGSaSi_(%rip), %rax
	testq	%rax, %rax
	jne	LBB0_8
	movq	__TMSi@GOTPCREL(%rip), %rdi
	callq	__TMaSa
	movq	%rax, __TMLGSaSi_(%rip)
LBB0_8:
	movq	%rax, 56(%rbx)
	movq	__Tv4main1AGSaSi_(%rip), %rdi
	movq	%rdi, 32(%rbx)
	callq	_swift_bridgeObjectRetain
	callq	__TIFs5printFTGSaP__9separatorSS10terminatorSS_T_A0_
	movq	%rax, %r14
	movq	%rdx, %r15
	movq	%rcx, %r12
	callq	__TIFs5printFTGSaP__9separatorSS10terminatorSS_T_A1_
	movq	%rdx, %r9
	movq	%rcx, (%rsp)
	movq	%rbx, %rdi
	movq	%r14, %rsi
	movq	%r15, %rdx
	movq	%r12, %rcx
	movq	%rax, %r8
	callq	__TFs5printFTGSaP__9separatorSS10terminatorSS_T_
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	_swift_rt_swift_allocObject
	.globl	_swift_rt_swift_allocObject
	.weak_def_can_be_hidden	_swift_rt_swift_allocObject
	.p2align	4, 0x90
_swift_rt_swift_allocObject:
	movq	__swift_allocObject@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

	.private_extern	__TF4main9quickSortFT1ARGSaSi_1pSi1rSi_T_
	.globl	__TF4main9quickSortFT1ARGSaSi_1pSi1rSi_T_
	.p2align	4, 0x90
__TF4main9quickSortFT1ARGSaSi_1pSi1rSi_T_:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r12
	pushq	%rbx
	movq	%rdx, %r14
	movq	%rsi, %r12
	movq	%rdi, %r15
	cmpq	%r14, %r12
	jge	LBB2_4
	.p2align	4, 0x90
LBB2_1:
	movq	%r15, %rdi
	movq	%r12, %rsi
	movq	%r14, %rdx
	callq	__TF4main9partitionFT1ARGSaSi_1pSi1rSi_Si
	movq	%rax, %rbx
	movq	%rbx, %rdx
	decq	%rdx
	jo	LBB2_5
	movq	%r15, %rdi
	movq	%r12, %rsi
	callq	__TF4main9quickSortFT1ARGSaSi_1pSi1rSi_T_
	incq	%rbx
	jo	LBB2_6
	cmpq	%r14, %rbx
	movq	%rbx, %r12
	jl	LBB2_1
LBB2_4:
	popq	%rbx
	popq	%r12
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB2_5:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB2_6:
	## InlineAsm Start
	## InlineAsm End
	ud2

	.private_extern	_swift_rt_swift_getExistentialTypeMetadata
	.globl	_swift_rt_swift_getExistentialTypeMetadata
	.weak_def_can_be_hidden	_swift_rt_swift_getExistentialTypeMetadata
	.p2align	4, 0x90
_swift_rt_swift_getExistentialTypeMetadata:
	movq	__swift_getExistentialTypeMetadata@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

	.private_extern	__TF4main9partitionFT1ARGSaSi_1pSi1rSi_Si
	.globl	__TF4main9partitionFT1ARGSaSi_1pSi1rSi_Si
	.p2align	4, 0x90
__TF4main9partitionFT1ARGSaSi_1pSi1rSi_Si:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	pushq	%rax
	movq	%rdx, %r14
	movq	%rsi, %rbx
	movq	%rdi, %r15
	movq	%rbx, %r12
	decq	%r12
	jo	LBB4_23
	cmpq	%r14, %rbx
	jg	LBB4_24
	movq	(%r15), %rdx
	movq	16(%rdx), %rax
	cmpq	%r14, %rax
	jbe	LBB4_24
	cmpq	%r14, %rbx
	je	LBB4_15
	leaq	-1(%r14), %rcx
	cmpq	%rax, %rcx
	jae	LBB4_25
	cmpq	%r14, %rbx
	jge	LBB4_25
	cmpq	%rbx, %rax
	jbe	LBB4_25
	movq	32(%rdx,%r14,8), %r13
	movq	%rdx, %rdi
	movq	%rdi, -48(%rbp)
	callq	_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native
	testb	$1, %al
	je	LBB4_8
LBB4_9:
	movq	(%r15), %rax
	.p2align	4, 0x90
LBB4_10:
	movq	32(%rax,%rbx,8), %rcx
	cmpq	%r13, %rcx
	jg	LBB4_14
	incq	%r12
	jo	LBB4_28
	cmpq	16(%rax), %r12
	jae	LBB4_29
	movq	32(%rax,%r12,8), %rdx
	movq	%rcx, 32(%rax,%r12,8)
	movq	(%r15), %rcx
	movq	%rdx, 32(%rcx,%rbx,8)
LBB4_14:
	incq	%rbx
	cmpq	%rbx, %r14
	jne	LBB4_10
LBB4_15:
	incq	%r12
	jo	LBB4_26
	movq	(%r15), %rbx
	movq	16(%rbx), %rax
	cmpq	%rax, %r12
	jae	LBB4_27
	cmpq	%r14, %rax
	jbe	LBB4_27
	movq	32(%rbx,%r12,8), %rax
	movq	%rax, -48(%rbp)
	movq	32(%rbx,%r14,8), %r13
	movq	%rbx, %rdi
	callq	_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native
	testb	$1, %al
	je	LBB4_19
LBB4_20:
	movq	(%r15), %rax
	movq	%r13, 32(%rax,%r12,8)
	movq	(%r15), %rdi
	callq	_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native
	testb	$1, %al
	je	LBB4_21
LBB4_22:
	movq	(%r15), %rax
	movq	-48(%rbp), %rcx
	movq	%rcx, 32(%rax,%r14,8)
	movq	%r12, %rax
	addq	$8, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
LBB4_19:
	movq	16(%rbx), %rdi
	movq	%rdi, %rsi
	callq	__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_
	movq	%rax, %rbx
	movq	(%r15), %rsi
	movq	16(%rsi), %rdx
	leaq	32(%rbx), %rdi
	addq	$32, %rsi
	shlq	$3, %rdx
	callq	_memcpy
	movq	(%r15), %rdi
	movq	%rbx, (%r15)
	callq	_swift_bridgeObjectRelease
	jmp	LBB4_20
LBB4_21:
	movq	(%r15), %rax
	movq	16(%rax), %rdi
	movq	%rdi, %rsi
	callq	__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_
	movq	%rax, %rbx
	movq	(%r15), %rsi
	movq	16(%rsi), %rdx
	leaq	32(%rbx), %rdi
	addq	$32, %rsi
	shlq	$3, %rdx
	callq	_memcpy
	movq	(%r15), %rdi
	movq	%rbx, (%r15)
	callq	_swift_bridgeObjectRelease
	jmp	LBB4_22
LBB4_8:
	movq	-48(%rbp), %rax
	movq	16(%rax), %rdi
	movq	%rdi, %rsi
	callq	__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_
	movq	%rax, -48(%rbp)
	movq	(%r15), %rsi
	movq	16(%rsi), %rdx
	leaq	32(%rax), %rdi
	addq	$32, %rsi
	shlq	$3, %rdx
	callq	_memcpy
	movq	(%r15), %rdi
	movq	-48(%rbp), %rax
	movq	%rax, (%r15)
	callq	_swift_bridgeObjectRelease
	jmp	LBB4_9
LBB4_28:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB4_29:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB4_23:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB4_24:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB4_26:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB4_27:
	## InlineAsm Start
	## InlineAsm End
	ud2
LBB4_25:
	## InlineAsm Start
	## InlineAsm End
	ud2

	.private_extern	_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native
	.globl	_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native
	.weak_def_can_be_hidden	_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native
	.p2align	4, 0x90
_swift_rt_swift_isUniquelyReferencedOrPinned_nonNull_native:
	movq	__swift_isUniquelyReferencedOrPinned_nonNull_native@GOTPCREL(%rip), %rax
	jmpq	*(%rax)

	.private_extern	__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_
	.globl	__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_
	.weak_def_can_be_hidden	__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_
	.p2align	4, 0x90
__TTSf4n_n_d___TTSg5Si___TFVs22_ContiguousArrayBufferCfT19_uninitializedCountSi15minimumCapacitySi_GS_x_:
	pushq	%rbp
	movq	%rsp, %rbp
	pushq	%r14
	pushq	%rbx
	movq	%rsi, %rbx
	movq	%rdi, %r14
	cmpq	%r14, %rbx
	cmovlq	%r14, %rbx
	testq	%rbx, %rbx
	je	LBB6_1
	movq	__TMLGCs23_ContiguousArrayStorageSi_(%rip), %rdi
	testq	%rdi, %rdi
	jne	LBB6_5
	movq	__TMSi@GOTPCREL(%rip), %rdi
	callq	__TMaCs23_ContiguousArrayStorage
	movq	%rax, %rdi
	movq	%rdi, __TMLGCs23_ContiguousArrayStorageSi_(%rip)
LBB6_5:
	leaq	32(,%rbx,8), %rsi
	movl	$7, %edx
	callq	_swift_rt_swift_allocObject
	movq	%rax, %rbx
	movq	%rbx, %rdi
	callq	__swift_stdlib_malloc_size
	addq	$-32, %rax
	cmpq	$-7, %rax
	jl	LBB6_7
	movq	%rax, %rcx
	sarq	$63, %rcx
	shrq	$61, %rcx
	addq	%rax, %rcx
	sarq	$3, %rcx
	addq	%rcx, %rcx
	movq	%r14, 16(%rbx)
	movq	%rcx, 24(%rbx)
	jmp	LBB6_2
LBB6_1:
	movq	__swiftEmptyArrayStorage@GOTPCREL(%rip), %rbx
	movq	%rbx, %rdi
	callq	_swift_rt_swift_retain
LBB6_2:
	movq	%rbx, %rax
	popq	%rbx
	popq	%r14
	popq	%rbp
	retq
LBB6_7:
	## InlineAsm Start
	## InlineAsm End
	ud2

	.private_extern	_swift_rt_swift_retain
	.globl	_swift_rt_swift_retain
	.weak_def_can_be_hidden	_swift_rt_swift_retain
	.p2align	4, 0x90
_swift_rt_swift_retain:
	movq	__swift_retain@GOTPCREL(%rip), %rax
	jmpq	*(%rax)

	.private_extern	__Tv4main1AGSaSi_
	.globl	__Tv4main1AGSaSi_
.zerofill __DATA,__common,__Tv4main1AGSaSi_,8,3
	.private_extern	__TMLGCs23_ContiguousArrayStorageSi_
	.section	__DATA,__data
	.globl	__TMLGCs23_ContiguousArrayStorageSi_
	.weak_definition	__TMLGCs23_ContiguousArrayStorageSi_
	.p2align	3
__TMLGCs23_ContiguousArrayStorageSi_:
	.quad	0

	.private_extern	__TMLGCs23_ContiguousArrayStorageP__
	.globl	__TMLGCs23_ContiguousArrayStorageP__
	.weak_definition	__TMLGCs23_ContiguousArrayStorageP__
	.p2align	3
__TMLGCs23_ContiguousArrayStorageP__:
	.quad	0

	.private_extern	__TMLP_
	.globl	__TMLP_
	.weak_definition	__TMLP_
	.p2align	3
__TMLP_:
	.quad	0

	.private_extern	__TMLGSaSi_
	.globl	__TMLGSaSi_
	.weak_definition	__TMLGSaSi_
	.p2align	3
__TMLGSaSi_:
	.quad	0

	.private_extern	__swift_FORCE_LOAD_$_swiftFoundation_$_main
	.globl	__swift_FORCE_LOAD_$_swiftFoundation_$_main
	.weak_definition	__swift_FORCE_LOAD_$_swiftFoundation_$_main
	.p2align	3
__swift_FORCE_LOAD_$_swiftFoundation_$_main:
	.quad	__swift_FORCE_LOAD_$_swiftFoundation

	.private_extern	__swift_FORCE_LOAD_$_swiftObjectiveC_$_main
	.globl	__swift_FORCE_LOAD_$_swiftObjectiveC_$_main
	.weak_definition	__swift_FORCE_LOAD_$_swiftObjectiveC_$_main
	.p2align	3
__swift_FORCE_LOAD_$_swiftObjectiveC_$_main:
	.quad	__swift_FORCE_LOAD_$_swiftObjectiveC

	.private_extern	__swift_FORCE_LOAD_$_swiftDarwin_$_main
	.globl	__swift_FORCE_LOAD_$_swiftDarwin_$_main
	.weak_definition	__swift_FORCE_LOAD_$_swiftDarwin_$_main
	.p2align	3
__swift_FORCE_LOAD_$_swiftDarwin_$_main:
	.quad	__swift_FORCE_LOAD_$_swiftDarwin

	.private_extern	__swift_FORCE_LOAD_$_swiftIOKit_$_main
	.globl	__swift_FORCE_LOAD_$_swiftIOKit_$_main
	.weak_definition	__swift_FORCE_LOAD_$_swiftIOKit_$_main
	.p2align	3
__swift_FORCE_LOAD_$_swiftIOKit_$_main:
	.quad	__swift_FORCE_LOAD_$_swiftIOKit

	.private_extern	__swift_FORCE_LOAD_$_swiftDispatch_$_main
	.globl	__swift_FORCE_LOAD_$_swiftDispatch_$_main
	.weak_definition	__swift_FORCE_LOAD_$_swiftDispatch_$_main
	.p2align	3
__swift_FORCE_LOAD_$_swiftDispatch_$_main:
	.quad	__swift_FORCE_LOAD_$_swiftDispatch

	.private_extern	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_main
	.globl	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_main
	.weak_definition	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_main
	.p2align	3
__swift_FORCE_LOAD_$_swiftCoreGraphics_$_main:
	.quad	__swift_FORCE_LOAD_$_swiftCoreGraphics

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1
___swift_reflection_version:
	.short	1

	.no_dead_strip	___swift_reflection_version
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_main
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftDarwin_$_main
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftDispatch_$_main
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftFoundation_$_main
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftIOKit_$_main
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftObjectiveC_$_main
	.linker_option "-lswiftCore"
	.linker_option "-lswiftFoundation"
	.linker_option "-framework", "Foundation"
	.linker_option "-lswiftObjectiveC"
	.linker_option "-lswiftDarwin"
	.linker_option "-framework", "CoreServices"
	.linker_option "-lswiftIOKit"
	.linker_option "-framework", "IOKit"
	.linker_option "-lswiftDispatch"
	.linker_option "-framework", "CoreFoundation"
	.linker_option "-framework", "DiskArbitration"
	.linker_option "-framework", "CFNetwork"
	.linker_option "-framework", "Security"
	.linker_option "-lswiftCoreGraphics"
	.linker_option "-framework", "CoreGraphics"
	.linker_option "-framework", "ApplicationServices"
	.linker_option "-framework", "CoreText"
	.linker_option "-framework", "ImageIO"
	.linker_option "-lobjc"
	.section	__DATA,__objc_imageinfo,regular,no_dead_strip
L_OBJC_IMAGE_INFO:
	.long	0
	.long	1088


.subsections_via_symbols
