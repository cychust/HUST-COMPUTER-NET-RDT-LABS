	.file	"StopWait.cpp"
	.text
	.section	.rodata
	.type	_ZStL19piecewise_construct, @object
	.size	_ZStL19piecewise_construct, 1
_ZStL19piecewise_construct:
	.zero	1
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.align 8
.LC0:
	.string	"/home/guxiwu/cpp/project/rdt/input.txt"
	.align 8
.LC1:
	.string	"/home/guxiwu/cpp/project/rdt/output.txt"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1447:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA1447
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movl	%edi, -36(%rbp)
	movq	%rsi, -48(%rbp)
	movl	$56, %edi
.LEHB0:
	call	_Znwm@PLT
.LEHE0:
	movq	%rax, %rbx
	movq	%rbx, %rdi
.LEHB1:
	call	_ZN17StopWaitRdtSenderC1Ev@PLT
.LEHE1:
	movq	%rbx, -32(%rbp)
	movl	$48, %edi
.LEHB2:
	call	_Znwm@PLT
.LEHE2:
	movq	%rax, %rbx
	movq	%rbx, %rdi
.LEHB3:
	call	_ZN19StopWaitRdtReceiverC1Ev@PLT
.LEHE3:
	movq	%rbx, -24(%rbp)
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$32, %rax
	movq	(%rax), %rax
	movq	%rdx, %rdi
.LEHB4:
	call	*%rax
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$48, %rax
	movq	(%rax), %rax
	movq	-32(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$56, %rax
	movq	(%rax), %rax
	movq	-24(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$64, %rax
	movq	(%rax), %rax
	leaq	.LC0(%rip), %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$72, %rax
	movq	(%rax), %rax
	leaq	.LC1(%rip), %rsi
	movq	%rdx, %rdi
	call	*%rax
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rdx
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	(%rax), %rax
	addq	$40, %rax
	movq	(%rax), %rax
	movq	%rdx, %rdi
	call	*%rax
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	movq	pUtils@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	movq	pns@GOTPCREL(%rip), %rax
	movq	(%rax), %rax
	movq	%rax, %rdi
	call	_ZdlPv@PLT
	movl	$0, %eax
	jmp	.L7
.L5:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.L6:
	movq	%rax, %r12
	movq	%rbx, %rdi
	call	_ZdlPv@PLT
	movq	%r12, %rax
	movq	%rax, %rdi
	call	_Unwind_Resume@PLT
.LEHE4:
.L7:
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1447:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA1447:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE1447-.LLSDACSB1447
.LLSDACSB1447:
	.uleb128 .LEHB0-.LFB1447
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB1447
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L5-.LFB1447
	.uleb128 0
	.uleb128 .LEHB2-.LFB1447
	.uleb128 .LEHE2-.LEHB2
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB3-.LFB1447
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L6-.LFB1447
	.uleb128 0
	.uleb128 .LEHB4-.LFB1447
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE1447:
	.text
	.size	main, .-main
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB1764:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L10
	cmpl	$65535, -8(%rbp)
	jne	.L10
	leaq	_ZStL8__ioinit(%rip), %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rdx
	leaq	_ZStL8__ioinit(%rip), %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L10:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1764:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_StopWait.cpp, @function
_GLOBAL__sub_I_StopWait.cpp:
.LFB1765:
	.cfi_startproc
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1765:
	.size	_GLOBAL__sub_I_StopWait.cpp, .-_GLOBAL__sub_I_StopWait.cpp
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_StopWait.cpp
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 7.3.0-27ubuntu1~18.04) 7.3.0"
	.section	.note.GNU-stack,"",@progbits
