	.section	__TEXT,__text,regular,pure_instructions
	.macosx_version_min 10, 9
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
	subq	$96, %rsp
	movl	$50, %eax
	movl	%eax, %ecx
	movl	%edi, -4(%rbp)
	movq	%rcx, %rdi
	movq	%rsi, -16(%rbp)
	callq	__TTSgq5Si___TFs27_allocateUninitializedArrayurFBwTGSax_Bp_
	movq	$24, (%rdx)
	movq	$23, 8(%rdx)
	movq	$22, 16(%rdx)
	movq	$21, 24(%rdx)
	movq	$20, 32(%rdx)
	movq	$19, 40(%rdx)
	movq	$18, 48(%rdx)
	movq	$17, 56(%rdx)
	movq	$16, 64(%rdx)
	movq	$15, 72(%rdx)
	movq	$14, 80(%rdx)
	movq	$13, 88(%rdx)
	movq	$12, 96(%rdx)
	movq	$11, 104(%rdx)
	movq	$10, 112(%rdx)
	movq	$9, 120(%rdx)
	movq	$8, 128(%rdx)
	movq	$7, 136(%rdx)
	movq	$6, 144(%rdx)
	movq	$5, 152(%rdx)
	movq	$4, 160(%rdx)
	movq	$3, 168(%rdx)
	movq	$2, 176(%rdx)
	movq	$1, 184(%rdx)
	movq	$0, 192(%rdx)
	movq	$-1, 200(%rdx)
	movq	$-2, 208(%rdx)
	movq	$-3, 216(%rdx)
	movq	$-4, 224(%rdx)
	movq	$-5, 232(%rdx)
	movq	$-6, 240(%rdx)
	movq	$-7, 248(%rdx)
	movq	$-8, 256(%rdx)
	movq	$-9, 264(%rdx)
	movq	$-10, 272(%rdx)
	movq	$-11, 280(%rdx)
	movq	$-12, 288(%rdx)
	movq	$-13, 296(%rdx)
	movq	$-14, 304(%rdx)
	movq	$-15, 312(%rdx)
	movq	$-16, 320(%rdx)
	movq	$-17, 328(%rdx)
	movq	$-18, 336(%rdx)
	movq	$-19, 344(%rdx)
	movq	$-20, 352(%rdx)
	movq	$-21, 360(%rdx)
	movq	$-22, 368(%rdx)
	movq	$-23, 376(%rdx)
	movq	$-24, 384(%rdx)
	movq	$-25, 392(%rdx)
	movq	%rax, %rdi
	callq	__TTSgq5Si___TFSaCft12arrayLiteralGSax__GSax_
	leaq	__Tv15quicksort_swift1AGSaSi_(%rip), %rdi
	xorl	%r8d, %r8d
	movl	%r8d, %esi
	movl	$49, %r8d
	movl	%r8d, %edx
	movq	%rax, __Tv15quicksort_swift1AGSaSi_(%rip)
	callq	__TF15quicksort_swift9quickSortFT1ARGSaSi_1pSi1rSi_T_
	movl	$1, %r8d
	movl	%r8d, %edi
	callq	__TTSgq5P____TFs27_allocateUninitializedArrayurFBwTGSax_Bp_
	movq	%rax, -24(%rbp)
	movq	%rdx, -32(%rbp)
	callq	__TMaGSaSi_
	movq	-32(%rbp), %rcx
	movq	%rax, 24(%rcx)
	movq	__Tv15quicksort_swift1AGSaSi_(%rip), %rax
	movq	%rax, %rdi
	movq	%rax, -40(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-32(%rbp), %rcx
	movq	-40(%rbp), %rdx
	movq	%rdx, (%rcx)
	movq	%rax, -48(%rbp)
	callq	__TIFs5printFTGSaP__9separatorSS10terminatorSS_T_A0_
	movq	%rax, -56(%rbp)
	movq	%rdx, -64(%rbp)
	movq	%rcx, -72(%rbp)
	callq	__TIFs5printFTGSaP__9separatorSS10terminatorSS_T_A1_
	movq	-24(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-64(%rbp), %r9
	movq	%rdx, -80(%rbp)
	movq	%r9, %rdx
	movq	-72(%rbp), %r10
	movq	%rcx, -88(%rbp)
	movq	%r10, %rcx
	movq	%rax, %r8
	movq	-80(%rbp), %r9
	movq	-88(%rbp), %rax
	movq	%rax, (%rsp)
	callq	__TFs5printFTGSaP__9separatorSS10terminatorSS_T_
	xorl	%eax, %eax
	addq	$96, %rsp
	popq	%rbp
	retq
	.cfi_endproc

	.private_extern	__TF15quicksort_swift9quickSortFT1ARGSaSi_1pSi1rSi_T_
	.globl	__TF15quicksort_swift9quickSortFT1ARGSaSi_1pSi1rSi_T_
	.p2align	4, 0x90
__TF15quicksort_swift9quickSortFT1ARGSaSi_1pSi1rSi_T_:
	.cfi_startproc
	pushq	%rbp
Ltmp3:
	.cfi_def_cfa_offset 16
Ltmp4:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp5:
	.cfi_def_cfa_register %rbp
	subq	$64, %rsp
	cmpq	%rdx, %rsi
	movq	%rsi, -8(%rbp)
	movq	%rdi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	jge	LBB1_4
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__TF15quicksort_swift9partitionFT1ARGSaSi_1pSi1rSi_Si
	movq	%rax, %rdx
	decq	%rdx
	seto	%cl
	movq	%rax, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	%cl, -41(%rbp)
	jo	LBB1_5
	movq	-16(%rbp), %rdi
	movq	-8(%rbp), %rsi
	movq	-40(%rbp), %rdx
	callq	__TF15quicksort_swift9quickSortFT1ARGSaSi_1pSi1rSi_T_
	movq	-32(%rbp), %rdx
	incq	%rdx
	seto	%al
	movq	%rdx, -56(%rbp)
	movb	%al, -57(%rbp)
	jo	LBB1_6
	movq	-16(%rbp), %rdi
	movq	-56(%rbp), %rsi
	movq	-24(%rbp), %rdx
	callq	__TF15quicksort_swift9quickSortFT1ARGSaSi_1pSi1rSi_T_
LBB1_4:
	addq	$64, %rsp
	popq	%rbp
	retq
LBB1_5:
	ud2
LBB1_6:
	ud2
	.cfi_endproc

	.private_extern	__TMaGSaSi_
	.globl	__TMaGSaSi_
	.weak_definition	__TMaGSaSi_
	.p2align	4, 0x90
__TMaGSaSi_:
	pushq	%rbp
	movq	%rsp, %rbp
	subq	$16, %rsp
	movq	__TMLGSaSi_(%rip), %rax
	cmpq	$0, %rax
	movq	%rax, -8(%rbp)
	jne	LBB2_2
	movq	__TMSi@GOTPCREL(%rip), %rdi
	callq	__TMaSa
	movq	%rax, %rdi
	movq	%rax, __TMLGSaSi_(%rip)
	movq	%rdi, -8(%rbp)
LBB2_2:
	movq	-8(%rbp), %rax
	addq	$16, %rsp
	popq	%rbp
	retq

	.private_extern	__TF15quicksort_swift9partitionFT1ARGSaSi_1pSi1rSi_Si
	.globl	__TF15quicksort_swift9partitionFT1ARGSaSi_1pSi1rSi_Si
	.p2align	4, 0x90
__TF15quicksort_swift9partitionFT1ARGSaSi_1pSi1rSi_Si:
	.cfi_startproc
	pushq	%rbp
Ltmp6:
	.cfi_def_cfa_offset 16
Ltmp7:
	.cfi_offset %rbp, -16
	movq	%rsp, %rbp
Ltmp8:
	.cfi_def_cfa_register %rbp
	subq	$400, %rsp
	movq	(%rdi), %rax
	movq	%rdi, -152(%rbp)
	movq	%rax, %rdi
	movq	%rsi, -160(%rbp)
	movq	%rax, -168(%rbp)
	movq	%rdx, -176(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-176(%rbp), %rdi
	movq	-168(%rbp), %rsi
	movq	%rax, -184(%rbp)
	callq	__TTSgq5Si___TFSag9subscriptFSix
	movq	%rax, -40(%rbp)
	movq	-168(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-40(%rbp), %rax
	movq	-160(%rbp), %rdx
	decq	%rdx
	seto	%cl
	movq	%rax, -192(%rbp)
	movq	%rdx, -200(%rbp)
	movb	%cl, -201(%rbp)
	jo	LBB3_16
	movq	-200(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-160(%rbp), %rcx
	movq	%rcx, -48(%rbp)
	movq	-176(%rbp), %rdx
	movq	%rdx, -56(%rbp)
	movq	-160(%rbp), %rax
	movq	-176(%rbp), %rcx
	cmpq	%rcx, %rax
	setle	%dl
	testb	$1, %dl
	jne	LBB3_3
	jmp	LBB3_5
LBB3_3:
	jmp	LBB3_4
LBB3_4:
	movq	-48(%rbp), %rdi
	movq	-56(%rbp), %rsi
	callq	__TTSgq5SiSis10ComparablesSis11_Strideables___TFVs14CountableRangeCfT15uncheckedBoundsT5lowerx5upperx__GS_x_
	movq	%rax, -72(%rbp)
	movq	%rdx, -64(%rbp)
	jmp	LBB3_6
LBB3_5:
	leaq	L___unnamed_1(%rip), %rdi
	movl	$11, %eax
	movl	%eax, %esi
	movl	$2, %eax
	leaq	L___unnamed_2(%rip), %rcx
	movl	$45, %edx
	movl	%edx, %r8d
	movl	$1, %edx
	movl	%edx, -208(%rbp)
	movl	%eax, %edx
	movl	%eax, %r9d
	movl	$1, (%rsp)
	callq	__TTSfq4n_n_d_d_n___TFs18_fatalErrorMessageFTVs12StaticStringS_4fileS_4lineSu5flagsVs6UInt32_Os5Never
LBB3_6:
	leaq	-88(%rbp), %rdi
	movq	-72(%rbp), %rax
	movq	-64(%rbp), %rcx
	movq	%rax, -88(%rbp)
	movq	%rcx, -80(%rbp)
	callq	__TTSgq5GVs14CountableRangeSi_GS_Si_s10Collections___TFesRxs10Collectionwx8IteratorzGVs16IndexingIteratorx_WxS0_7Element_zwx8_ElementrS_12makeIteratorfT_GS1_x_
	movq	%rax, -32(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -16(%rbp)
LBB3_7:
	leaq	-32(%rbp), %rdi
	callq	__TTSgq5GVs14CountableRangeSi_GS_Si_s14_IndexableBases___TFVs16IndexingIterator4nextfT_GSqwx8_Element_
	movq	%rax, -104(%rbp)
	andb	$1, %dl
	movb	%dl, -96(%rbp)
	movq	-104(%rbp), %rax
	movb	-96(%rbp), %dl
	xorb	$-1, %dl
	testb	$1, %dl
	movq	%rax, -216(%rbp)
	jne	LBB3_8
	jmp	LBB3_12
LBB3_8:
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -224(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-216(%rbp), %rdi
	movq	-224(%rbp), %rsi
	movq	%rax, -232(%rbp)
	callq	__TTSgq5Si___TFSag9subscriptFSix
	movq	%rax, -128(%rbp)
	movq	-224(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-128(%rbp), %rax
	movq	-192(%rbp), %rcx
	cmpq	%rcx, %rax
	jg	LBB3_11
	movq	-8(%rbp), %rax
	incq	%rax
	seto	%cl
	movq	%rax, -240(%rbp)
	movb	%cl, -241(%rbp)
	jo	LBB3_20
	movq	-240(%rbp), %rax
	movq	%rax, -8(%rbp)
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, %rdi
	movq	%rdx, -256(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-240(%rbp), %rdi
	movq	-256(%rbp), %rsi
	movq	%rax, -264(%rbp)
	callq	__TTSgq5Si___TFSag9subscriptFSix
	movq	%rax, -136(%rbp)
	movq	-256(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-136(%rbp), %rax
	movq	-152(%rbp), %rcx
	movq	(%rcx), %rdx
	movq	%rdx, %rdi
	movq	%rax, -272(%rbp)
	movq	%rdx, -280(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-216(%rbp), %rdi
	movq	-280(%rbp), %rsi
	movq	%rax, -288(%rbp)
	callq	__TTSgq5Si___TFSag9subscriptFSix
	movq	%rax, -144(%rbp)
	movq	-280(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-144(%rbp), %rax
	movq	-240(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	%rax, -296(%rbp)
	callq	__TTSgq5Si___TFSaap9subscriptFSix
	movq	-296(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, %rdi
	callq	_swift_rt_swift_unpin
	movq	-216(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	__TTSgq5Si___TFSaap9subscriptFSix
	movq	-272(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, %rdi
	callq	_swift_rt_swift_unpin
LBB3_11:
	jmp	LBB3_7
LBB3_12:
	movq	-8(%rbp), %rax
	incq	%rax
	seto	%cl
	movq	%rax, -304(%rbp)
	movb	%cl, -305(%rbp)
	jo	LBB3_17
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -320(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-304(%rbp), %rdi
	movq	-320(%rbp), %rsi
	movq	%rax, -328(%rbp)
	callq	__TTSgq5Si___TFSag9subscriptFSix
	movq	%rax, -112(%rbp)
	movq	-320(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-112(%rbp), %rax
	movq	-8(%rbp), %rcx
	incq	%rcx
	seto	%dl
	movq	%rax, -336(%rbp)
	movq	%rcx, -344(%rbp)
	movb	%dl, -345(%rbp)
	jo	LBB3_18
	movq	-152(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rcx, %rdi
	movq	%rcx, -360(%rbp)
	callq	_swift_bridgeObjectRetain
	movq	-176(%rbp), %rdi
	movq	-360(%rbp), %rsi
	movq	%rax, -368(%rbp)
	callq	__TTSgq5Si___TFSag9subscriptFSix
	movq	%rax, -120(%rbp)
	movq	-360(%rbp), %rdi
	callq	_swift_bridgeObjectRelease
	movq	-120(%rbp), %rax
	movq	-344(%rbp), %rdi
	movq	-152(%rbp), %rsi
	movq	%rax, -376(%rbp)
	callq	__TTSgq5Si___TFSaap9subscriptFSix
	movq	-376(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, %rdi
	callq	_swift_rt_swift_unpin
	movq	-176(%rbp), %rdi
	movq	-152(%rbp), %rsi
	callq	__TTSgq5Si___TFSaap9subscriptFSix
	movq	-336(%rbp), %rcx
	movq	%rcx, (%rax)
	movq	%rdx, %rdi
	callq	_swift_rt_swift_unpin
	movq	-8(%rbp), %rax
	incq	%rax
	seto	%r8b
	movq	%rax, -384(%rbp)
	movb	%r8b, -385(%rbp)
	jo	LBB3_19
	movq	-384(%rbp), %rax
	addq	$400, %rsp
	popq	%rbp
	retq
LBB3_16:
	ud2
LBB3_17:
	ud2
LBB3_18:
	ud2
LBB3_19:
	ud2
LBB3_20:
	ud2
	.cfi_endproc

	.private_extern	_swift_rt_swift_unpin
	.globl	_swift_rt_swift_unpin
	.weak_definition	_swift_rt_swift_unpin
	.p2align	4, 0x90
_swift_rt_swift_unpin:
	movq	__swift_unpin@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	jmpq	*%rax

	.private_extern	__Tv15quicksort_swift1AGSaSi_
	.globl	__Tv15quicksort_swift1AGSaSi_
.zerofill __DATA,__common,__Tv15quicksort_swift1AGSaSi_,8,3
	.private_extern	__TMLGSaSi_
	.section	__DATA,__data
	.globl	__TMLGSaSi_
	.weak_definition	__TMLGSaSi_
	.p2align	3
__TMLGSaSi_:
	.quad	0

	.section	__TEXT,__cstring,cstring_literals
	.p2align	4
L___unnamed_2:
	.asciz	"Can't form Range with upperBound < lowerBound"

L___unnamed_1:
	.asciz	"fatal error"

	.private_extern	__swift_FORCE_LOAD_$_swiftFoundation_$_quicksort_swift
	.section	__DATA,__data
	.globl	__swift_FORCE_LOAD_$_swiftFoundation_$_quicksort_swift
	.weak_definition	__swift_FORCE_LOAD_$_swiftFoundation_$_quicksort_swift
	.p2align	3
__swift_FORCE_LOAD_$_swiftFoundation_$_quicksort_swift:
	.quad	__swift_FORCE_LOAD_$_swiftFoundation

	.private_extern	__swift_FORCE_LOAD_$_swiftObjectiveC_$_quicksort_swift
	.globl	__swift_FORCE_LOAD_$_swiftObjectiveC_$_quicksort_swift
	.weak_definition	__swift_FORCE_LOAD_$_swiftObjectiveC_$_quicksort_swift
	.p2align	3
__swift_FORCE_LOAD_$_swiftObjectiveC_$_quicksort_swift:
	.quad	__swift_FORCE_LOAD_$_swiftObjectiveC

	.private_extern	__swift_FORCE_LOAD_$_swiftDarwin_$_quicksort_swift
	.globl	__swift_FORCE_LOAD_$_swiftDarwin_$_quicksort_swift
	.weak_definition	__swift_FORCE_LOAD_$_swiftDarwin_$_quicksort_swift
	.p2align	3
__swift_FORCE_LOAD_$_swiftDarwin_$_quicksort_swift:
	.quad	__swift_FORCE_LOAD_$_swiftDarwin

	.private_extern	__swift_FORCE_LOAD_$_swiftIOKit_$_quicksort_swift
	.globl	__swift_FORCE_LOAD_$_swiftIOKit_$_quicksort_swift
	.weak_definition	__swift_FORCE_LOAD_$_swiftIOKit_$_quicksort_swift
	.p2align	3
__swift_FORCE_LOAD_$_swiftIOKit_$_quicksort_swift:
	.quad	__swift_FORCE_LOAD_$_swiftIOKit

	.private_extern	__swift_FORCE_LOAD_$_swiftDispatch_$_quicksort_swift
	.globl	__swift_FORCE_LOAD_$_swiftDispatch_$_quicksort_swift
	.weak_definition	__swift_FORCE_LOAD_$_swiftDispatch_$_quicksort_swift
	.p2align	3
__swift_FORCE_LOAD_$_swiftDispatch_$_quicksort_swift:
	.quad	__swift_FORCE_LOAD_$_swiftDispatch

	.private_extern	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_quicksort_swift
	.globl	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_quicksort_swift
	.weak_definition	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_quicksort_swift
	.p2align	3
__swift_FORCE_LOAD_$_swiftCoreGraphics_$_quicksort_swift:
	.quad	__swift_FORCE_LOAD_$_swiftCoreGraphics

	.private_extern	___swift_reflection_version
	.section	__TEXT,__const
	.globl	___swift_reflection_version
	.weak_definition	___swift_reflection_version
	.p2align	1
___swift_reflection_version:
	.short	1

	.no_dead_strip	__swift_FORCE_LOAD_$_swiftFoundation_$_quicksort_swift
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftObjectiveC_$_quicksort_swift
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftDarwin_$_quicksort_swift
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftIOKit_$_quicksort_swift
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftDispatch_$_quicksort_swift
	.no_dead_strip	__swift_FORCE_LOAD_$_swiftCoreGraphics_$_quicksort_swift
	.no_dead_strip	___swift_reflection_version
	.linker_option "-lswiftCore"
	.linker_option "-lswiftSwiftOnoneSupport"
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
