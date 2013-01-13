	.arch armv4t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 2
	.eabi_attribute 18, 2
	.file	"main.cpp"
	.section	.text.main,"ax",%progbits
	.align	2
	.global	main
	.hidden	main
	.type	main, %function
main:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	bl	_Z8Iw2DInitv
	mov	r0, #48
	bl	_Znwj
	mov	r4, r0
	bl	_ZN4GameC1Ev
	mov	r0, r4
	bl	_ZN4Game7NewGameEv
	b	.L2
.L3:
	bl	_Z16Iw2DSurfaceClearj
	mov	r0, r4
	bl	_ZN4Game6RenderEv
	bl	_Z15Iw2DSurfaceShowv
	bl	s3ePointerUpdate
	bl	s3eKeyboardUpdate
	mov	r0, r5
	bl	s3eDeviceYield
.L2:
	bl	s3eDeviceCheckQuitRequest
	subs	r5, r0, #0
	mov	r0, #-16777216
	beq	.L3
	cmp	r4, #0
	beq	.L4
	mov	r0, r4
	bl	_ZN4GameD1Ev
	mov	r0, r4
	bl	_ZdlPv
.L4:
	bl	_Z13Iw2DTerminatev
	mov	r0, #0
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
	.size	main, .-main
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
