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
	.file	"game.cpp"
	.section	.text._ZN12IGameElement4InitE13GameCondition,"axG",%progbits,_ZN12IGameElement4InitE13GameCondition,comdat
	.align	2
	.weak	_ZN12IGameElement4InitE13GameCondition
	.hidden	_ZN12IGameElement4InitE13GameCondition
	.type	_ZN12IGameElement4InitE13GameCondition, %function
_ZN12IGameElement4InitE13GameCondition:
	@ Function supports interworking.
	@ args = 20, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	sub	sp, sp, #16
	add	r0, sp, #4
	stmia	r0, {r1, r2, r3}
	add	sp, sp, #16
	bx	lr
	.size	_ZN12IGameElement4InitE13GameCondition, .-_ZN12IGameElement4InitE13GameCondition
	.section	.text._ZN6Sprite6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN6Sprite6UpdateEv
	.hidden	_ZN6Sprite6UpdateEv
	.type	_ZN6Sprite6UpdateEv, %function
_ZN6Sprite6UpdateEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN6Sprite6UpdateEv, .-_ZN6Sprite6UpdateEv
	.section	.text._ZN13SecretBoxArea6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxArea6UpdateEv
	.hidden	_ZN13SecretBoxArea6UpdateEv
	.type	_ZN13SecretBoxArea6UpdateEv, %function
_ZN13SecretBoxArea6UpdateEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN13SecretBoxArea6UpdateEv, .-_ZN13SecretBoxArea6UpdateEv
	.section	.text._ZN4Game6UpdateEv,"ax",%progbits
	.align	2
	.global	_ZN4Game6UpdateEv
	.hidden	_ZN4Game6UpdateEv
	.type	_ZN4Game6UpdateEv, %function
_ZN4Game6UpdateEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	bx	lr
	.size	_ZN4Game6UpdateEv, .-_ZN4Game6UpdateEv
	.global	__aeabi_uidiv
	.section	.text._ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j
	.hidden	_ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j
	.type	_ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j, %function
_ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r4, r1
	ldrsh	r0, [r1, #0]
	mov	r1, r2
	mov	r5, r2
	bl	__aeabi_uidiv
	mov	r1, r5
	mov	r6, r0
	ldrsh	r0, [r4, #2]
	bl	__aeabi_uidiv
	mov	r4, r0
	mov	r0, #4
	bl	_Znwj
	strh	r4, [r0, #2]	@ movhi
	strh	r6, [r0, #0]	@ movhi
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	_ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j, .-_ZN13SecretBoxArea10getBoxSizeEP8CIwSVec2j
	.section	.text._ZN13SecretBoxAreaD1Ev,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxAreaD1Ev
	.hidden	_ZN13SecretBoxAreaD1Ev
	.type	_ZN13SecretBoxAreaD1Ev, %function
_ZN13SecretBoxAreaD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldrb	r5, [r0, #16]	@ zero_extendqisi2
	mov	r4, r0
	ldr	r0, .L16
	mov	r3, #0
	ands	r5, r5, #1
	str	r0, [r4, #0]
	str	r3, [r4, #8]
	bne	.L13
	ldr	r0, [r4, #4]
	mov	r1, #4
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	str	r5, [r4, #4]
.L13:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L17:
	.align	2
.L16:
	.word	.LANCHOR0+8
	.size	_ZN13SecretBoxAreaD1Ev, .-_ZN13SecretBoxAreaD1Ev
	.section	.text._ZN13SecretBoxAreaD2Ev,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxAreaD2Ev
	.hidden	_ZN13SecretBoxAreaD2Ev
	.type	_ZN13SecretBoxAreaD2Ev, %function
_ZN13SecretBoxAreaD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldrb	r5, [r0, #16]	@ zero_extendqisi2
	mov	r4, r0
	ldr	r0, .L21
	mov	r3, #0
	ands	r5, r5, #1
	str	r0, [r4, #0]
	str	r3, [r4, #8]
	bne	.L19
	ldr	r0, [r4, #4]
	mov	r1, #4
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	str	r5, [r4, #4]
.L19:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L22:
	.align	2
.L21:
	.word	.LANCHOR0+8
	.size	_ZN13SecretBoxAreaD2Ev, .-_ZN13SecretBoxAreaD2Ev
	.section	.text._ZN13SecretBoxArea4DrawEv,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxArea4DrawEv
	.hidden	_ZN13SecretBoxArea4DrawEv
	.type	_ZN13SecretBoxArea4DrawEv, %function
_ZN13SecretBoxArea4DrawEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r3, [r0, #8]
	cmp	r3, #0
	mov	r5, r0
	beq	.L26
	mov	r4, #0
.L25:
	ldr	r3, [r5, #4]
	ldr	r3, [r3, r4, asl #2]
	ldr	ip, [r3, #8]
	ldr	r2, [r3, #12]
	ldrh	lr, [ip, #2]
	ldrh	r0, [r2, #2]
	ldrh	r1, [ip, #0]
	ldrh	r2, [r2, #0]
	orr	r1, r1, lr, asl #16
	orr	r2, r2, r0, asl #16
	ldr	r0, [r3, #4]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2S1_
	ldr	r0, [r5, #8]
	add	r4, r4, #1
	cmp	r4, r0
	bcc	.L25
.L26:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
	.size	_ZN13SecretBoxArea4DrawEv, .-_ZN13SecretBoxArea4DrawEv
	.section	.text._ZN6Sprite4DrawEv,"ax",%progbits
	.align	2
	.global	_ZN6Sprite4DrawEv
	.hidden	_ZN6Sprite4DrawEv
	.type	_ZN6Sprite4DrawEv, %function
_ZN6Sprite4DrawEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, lr}
	ldr	ip, [r0, #8]
	ldr	r3, [r0, #12]
	ldrh	lr, [ip, #2]
	ldrh	r2, [r3, #2]
	ldrh	r1, [ip, #0]
	ldrh	r3, [r3, #0]
	orr	r1, r1, lr, asl #16
	orr	r2, r3, r2, asl #16
	ldr	r0, [r0, #4]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2S1_
	ldmfd	sp!, {r3, lr}
	bx	lr
	.size	_ZN6Sprite4DrawEv, .-_ZN6Sprite4DrawEv
	.section	.text._ZN6SpriteD1Ev,"ax",%progbits
	.align	2
	.global	_ZN6SpriteD1Ev
	.hidden	_ZN6SpriteD1Ev
	.type	_ZN6SpriteD1Ev, %function
_ZN6SpriteD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	ldr	r2, .L34
	cmp	r3, #0
	mov	r4, r0
	str	r2, [r0, #0]
	movne	r0, r3
	ldrne	r3, [r3, #0]
	ldrne	ip, [r3, #16]
	movne	lr, pc
	bxne	ip
.L31:
	ldr	r0, [r4, #12]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L35:
	.align	2
.L34:
	.word	.LANCHOR0+32
	.size	_ZN6SpriteD1Ev, .-_ZN6SpriteD1Ev
	.section	.text._ZN6SpriteD2Ev,"ax",%progbits
	.align	2
	.global	_ZN6SpriteD2Ev
	.hidden	_ZN6SpriteD2Ev
	.type	_ZN6SpriteD2Ev, %function
_ZN6SpriteD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	ldr	r2, .L40
	cmp	r3, #0
	mov	r4, r0
	str	r2, [r0, #0]
	movne	r0, r3
	ldrne	r3, [r3, #0]
	ldrne	ip, [r3, #16]
	movne	lr, pc
	bxne	ip
.L37:
	ldr	r0, [r4, #12]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L41:
	.align	2
.L40:
	.word	.LANCHOR0+32
	.size	_ZN6SpriteD2Ev, .-_ZN6SpriteD2Ev
	.section	.text._ZN6SpriteC1EPc,"ax",%progbits
	.align	2
	.global	_ZN6SpriteC1EPc
	.hidden	_ZN6SpriteC1EPc
	.type	_ZN6SpriteC1EPc, %function
_ZN6SpriteC1EPc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L48
	str	r0, [r4, #0]
	mov	r0, r1
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r4, #4]
	mov	r0, #4
	bl	_Znwj
	mov	r1, #0
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r0, #0]	@ movhi
	str	r0, [r4, #8]
	mov	r0, #4
	bl	_Znwj
	mov	r3, #64
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r0, #0]	@ movhi
	str	r0, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L49:
	.align	2
.L48:
	.word	.LANCHOR0+32
	.size	_ZN6SpriteC1EPc, .-_ZN6SpriteC1EPc
	.section	.text._ZN6SpriteC2EPc,"ax",%progbits
	.align	2
	.global	_ZN6SpriteC2EPc
	.hidden	_ZN6SpriteC2EPc
	.type	_ZN6SpriteC2EPc, %function
_ZN6SpriteC2EPc:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L56
	str	r0, [r4, #0]
	mov	r0, r1
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r4, #4]
	mov	r0, #4
	bl	_Znwj
	mov	r1, #0
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r0, #0]	@ movhi
	str	r0, [r4, #8]
	mov	r0, #4
	bl	_Znwj
	mov	r3, #64
	strh	r3, [r0, #2]	@ movhi
	strh	r3, [r0, #0]	@ movhi
	str	r0, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L57:
	.align	2
.L56:
	.word	.LANCHOR0+32
	.size	_ZN6SpriteC2EPc, .-_ZN6SpriteC2EPc
	.section	.text._ZN13GameConditionC1Ej,"ax",%progbits
	.align	2
	.global	_ZN13GameConditionC1Ej
	.hidden	_ZN13GameConditionC1Ej
	.type	_ZN13GameConditionC1Ej, %function
_ZN13GameConditionC1Ej:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #49920
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r3, #0
	mov	r4, r0
	add	r0, r2, #80
	str	r1, [r4, #0]
	stmib	r4, {r0, r3}	@ phole stm
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r6, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r5, r0
	mov	r0, #4
	bl	_Znwj
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	str	r0, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	_ZN13GameConditionC1Ej, .-_ZN13GameConditionC1Ej
	.section	.text._ZN13GameConditionC2Ej,"ax",%progbits
	.align	2
	.global	_ZN13GameConditionC2Ej
	.hidden	_ZN13GameConditionC2Ej
	.type	_ZN13GameConditionC2Ej, %function
_ZN13GameConditionC2Ej:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r2, #49920
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r3, #0
	mov	r4, r0
	add	r0, r2, #80
	str	r1, [r4, #0]
	stmib	r4, {r0, r3}	@ phole stm
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r6, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r5, r0
	mov	r0, #4
	bl	_Znwj
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	str	r0, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	_ZN13GameConditionC2Ej, .-_ZN13GameConditionC2Ej
	.section	.text._ZN13GameConditionC1Ev,"ax",%progbits
	.align	2
	.global	_ZN13GameConditionC1Ev
	.hidden	_ZN13GameConditionC1Ev
	.type	_ZN13GameConditionC1Ev, %function
_ZN13GameConditionC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #49920
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #1
	mov	r4, r0
	mov	r3, #0
	add	r0, r1, #80
	str	r2, [r4, #0]
	stmib	r4, {r0, r3}	@ phole stm
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r6, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r5, r0
	mov	r0, #4
	bl	_Znwj
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	str	r0, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	_ZN13GameConditionC1Ev, .-_ZN13GameConditionC1Ev
	.section	.text._ZN13GameConditionC2Ev,"ax",%progbits
	.align	2
	.global	_ZN13GameConditionC2Ev
	.hidden	_ZN13GameConditionC2Ev
	.type	_ZN13GameConditionC2Ev, %function
_ZN13GameConditionC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	mov	r1, #49920
	stmfd	sp!, {r4, r5, r6, lr}
	mov	r2, #1
	mov	r4, r0
	mov	r3, #0
	add	r0, r1, #80
	str	r2, [r4, #0]
	stmib	r4, {r0, r3}	@ phole stm
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r6, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r5, r0
	mov	r0, #4
	bl	_Znwj
	strh	r6, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	str	r0, [r4, #12]
	mov	r0, r4
	ldmfd	sp!, {r4, r5, r6, lr}
	bx	lr
	.size	_ZN13GameConditionC2Ev, .-_ZN13GameConditionC2Ev
	.section	.text._ZN9SecretBoxC1Ev,"ax",%progbits
	.align	2
	.global	_ZN9SecretBoxC1Ev
	.hidden	_ZN9SecretBoxC1Ev
	.type	_ZN9SecretBoxC1Ev, %function
_ZN9SecretBoxC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L81
	str	r0, [r4, #0]
	ldr	r0, .L81+4
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r4, #4]
	mov	r0, #4
	bl	_Znwj
	mov	r2, #0
	strh	r2, [r0, #2]	@ movhi
	strh	r2, [r0, #0]	@ movhi
	str	r0, [r4, #8]
	mov	r0, #4
	bl	_Znwj
	ldr	r3, .L81+8
	mov	r1, #64
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r0, #0]	@ movhi
	str	r0, [r4, #12]
	str	r3, [r4, #0]
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L82:
	.align	2
.L81:
	.word	.LANCHOR0+32
	.word	.LC0
	.word	_ZTV9SecretBox+8
	.size	_ZN9SecretBoxC1Ev, .-_ZN9SecretBoxC1Ev
	.section	.text._ZN4Game6RenderEv,"ax",%progbits
	.align	2
	.global	_ZN4Game6RenderEv
	.hidden	_ZN4Game6RenderEv
	.type	_ZN4Game6RenderEv, %function
_ZN4Game6RenderEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldr	r2, [r0, #44]
	mov	r5, r0
	ldr	r1, [r2, #0]
	mov	r0, r2
	ldr	ip, [r1, #0]
	mov	lr, pc
	bx	ip
	ldr	r3, [r5, #24]
	cmp	r3, #0
	add	r5, r5, #16
	beq	.L86
	mov	r4, #0
.L85:
	ldr	r3, [r5, #4]
	ldr	r3, [r3, r4, asl #2]
	ldr	ip, [r3, #8]
	ldr	r2, [r3, #12]
	ldrh	lr, [ip, #2]
	ldrh	r0, [r2, #2]
	ldrh	r1, [ip, #0]
	ldrh	ip, [r2, #0]
	orr	r1, r1, lr, asl #16
	orr	r2, ip, r0, asl #16
	ldr	r0, [r3, #4]
	bl	_Z13Iw2DDrawImageP10CIw2DImage8CIwSVec2S1_
	ldr	r0, [r5, #8]
	add	r4, r4, #1
	cmp	r4, r0
	bcc	.L85
.L86:
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
	.size	_ZN4Game6RenderEv, .-_ZN4Game6RenderEv
	.section	.text._ZN4GameD2Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameD2Ev
	.hidden	_ZN4GameD2Ev
	.type	_ZN4GameD2Ev, %function
_ZN4GameD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldrb	r5, [r0, #32]	@ zero_extendqisi2
	mov	r4, r0
	ldr	r0, .L91
	mov	r3, #0
	ands	r5, r5, #1
	str	r0, [r4, #16]
	str	r3, [r4, #24]
	bne	.L89
	ldr	r0, [r4, #20]
	mov	r1, #4
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	str	r5, [r4, #20]
.L89:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L92:
	.align	2
.L91:
	.word	.LANCHOR0+8
	.size	_ZN4GameD2Ev, .-_ZN4GameD2Ev
	.section	.text._ZN4GameD1Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameD1Ev
	.hidden	_ZN4GameD1Ev
	.type	_ZN4GameD1Ev, %function
_ZN4GameD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, lr}
	ldrb	r5, [r0, #32]	@ zero_extendqisi2
	mov	r4, r0
	ldr	r0, .L96
	mov	r3, #0
	ands	r5, r5, #1
	str	r0, [r4, #16]
	str	r3, [r4, #24]
	bne	.L94
	ldr	r0, [r4, #20]
	mov	r1, #4
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	str	r5, [r4, #20]
.L94:
	mov	r0, r4
	ldmfd	sp!, {r3, r4, r5, lr}
	bx	lr
.L97:
	.align	2
.L96:
	.word	.LANCHOR0+8
	.size	_ZN4GameD1Ev, .-_ZN4GameD1Ev
	.section	.text._ZN13SecretBoxArea4InitE13GameCondition,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxArea4InitE13GameCondition
	.hidden	_ZN13SecretBoxArea4InitE13GameCondition
	.type	_ZN13SecretBoxArea4InitE13GameCondition, %function
_ZN13SecretBoxArea4InitE13GameCondition:
	@ Function supports interworking.
	@ args = 20, pretend = 16, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	sub	sp, sp, #16
	stmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	ip, sp, #44
	stmia	ip, {r1, r2, r3}
	ldr	r1, [sp, #56]
	ldr	r3, .L120
	ldrsh	r7, [r1, #2]
	ldrsh	r2, [r1, #0]
	umull	r1, r7, r3, r7
	umull	r1, r3, r2, r3
	mov	r5, r0
	mov	r0, #4
	mov	r6, r3, lsr #3
	bl	_Znwj
	mov	r4, r7, lsr #3
	strh	r6, [r0, #0]	@ movhi
	strh	r4, [r0, #2]	@ movhi
	ldr	sl, .L120+4
	str	r0, [r5, #24]
	ldr	r8, .L120+8
	mov	r9, #0
.L100:
	mov	r4, r9, asl #16
	mov	r7, r4, lsr #16
	mov	r6, #0
	b	.L113
.L107:
	cmp	r3, #15
	movls	fp, #2
	movhi	fp, r3, lsr #3
	add	fp, fp, r1
	cmp	r3, fp
	beq	.L117
	cmp	fp, #0
	str	fp, [r5, #12]
	beq	.L118
	mov	r2, #4
	mov	r1, fp, asl #2
	ldr	r0, [r5, #4]
	bl	_ZN22CIwDefaultMallocRouter11BaseReallocEPvjj
	ldr	r2, [r5, #8]
	str	r0, [r5, #4]
.L108:
	str	r4, [r0, r2, asl #2]
	ldr	r0, [r5, #8]
	add	r6, r6, #1
	add	lr, r0, #1
	cmp	r6, #10
	str	lr, [r5, #8]
	beq	.L119
.L113:
	mov	r0, #16
	bl	_Znwj
	mov	r4, r0
	str	sl, [r0, #0]
	ldr	r0, .L120+12
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r4, #4]
	mov	r0, #4
	bl	_Znwj
	mov	r3, #0	@ movhi
	strh	r3, [r0, #0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	str	r0, [r4, #8]
	mov	r0, #4
	bl	_Znwj
	mov	ip, #64	@ movhi
	strh	ip, [r0, #0]	@ movhi
	strh	ip, [r0, #2]	@ movhi
	str	r0, [r4, #12]
	str	r8, [r4, #0]
	mov	r0, #4
	bl	_Znwj
	ldr	r1, [r5, #24]
	ldrh	r2, [r1, #0]
	ldrh	r3, [r1, #2]
	mul	r2, r6, r2
	mul	r3, r7, r3
	strh	r2, [r0, #0]	@ movhi
	strh	r3, [r0, #2]	@ movhi
	str	r0, [r4, #8]
	ldr	r0, [r5, #24]
	str	r0, [r4, #12]
	add	r2, r5, #8
	ldmia	r2, {r2, r3}	@ phole ldm
	add	r1, r2, #1
	cmp	r1, r3
	bhi	.L107
.L117:
	ldr	r0, [r5, #4]
	str	r4, [r0, r2, asl #2]
	ldr	r0, [r5, #8]
	add	r6, r6, #1
	add	lr, r0, #1
	cmp	r6, #10
	str	lr, [r5, #8]
	bne	.L113
.L119:
	add	r9, r9, #1
	cmp	r9, #10
	bne	.L100
	ldmfd	sp!, {r3, r4, r5, r6, r7, r8, r9, sl, fp, lr}
	add	sp, sp, #16
	bx	lr
.L118:
	ldr	r0, [r5, #4]
	mov	r1, #4
	bl	_ZN22CIwDefaultMallocRouter8BaseFreeEPvj
	str	fp, [r5, #4]
	mov	r0, fp
	ldr	r2, [r5, #8]
	b	.L108
.L121:
	.align	2
.L120:
	.word	-858993459
	.word	.LANCHOR0+32
	.word	_ZTV9SecretBox+8
	.word	.LC0
	.size	_ZN13SecretBoxArea4InitE13GameCondition, .-_ZN13SecretBoxArea4InitE13GameCondition
	.section	.text._ZN4Game7NewGameEv,"ax",%progbits
	.align	2
	.global	_ZN4Game7NewGameEv
	.hidden	_ZN4Game7NewGameEv
	.type	_ZN4Game7NewGameEv, %function
_ZN4Game7NewGameEv:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	str	lr, [sp, #-4]!
	mov	r3, r0
	ldr	ip, [r0, #12]
	sub	sp, sp, #12
	ldmia	r3, {r1, r2, r3}
	add	r0, r0, #16
	str	ip, [sp, #0]
	bl	_ZN13SecretBoxArea4InitE13GameCondition
	add	sp, sp, #12
	ldr	lr, [sp], #4
	bx	lr
	.size	_ZN4Game7NewGameEv, .-_ZN4Game7NewGameEv
	.section	.text._ZN9SecretBoxC2Ev,"ax",%progbits
	.align	2
	.global	_ZN9SecretBoxC2Ev
	.hidden	_ZN9SecretBoxC2Ev
	.type	_ZN9SecretBoxC2Ev, %function
_ZN9SecretBoxC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	mov	r4, r0
	ldr	r0, .L131
	str	r0, [r4, #0]
	ldr	r0, .L131+4
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r4, #4]
	mov	r0, #4
	bl	_Znwj
	mov	r2, #0
	strh	r2, [r0, #2]	@ movhi
	strh	r2, [r0, #0]	@ movhi
	str	r0, [r4, #8]
	mov	r0, #4
	bl	_Znwj
	ldr	r3, .L131+8
	mov	r1, #64
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r0, #0]	@ movhi
	str	r0, [r4, #12]
	str	r3, [r4, #0]
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L132:
	.align	2
.L131:
	.word	.LANCHOR0+32
	.word	.LC0
	.word	_ZTV9SecretBox+8
	.size	_ZN9SecretBoxC2Ev, .-_ZN9SecretBoxC2Ev
	.section	.text._ZN4GameC1Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameC1Ev
	.hidden	_ZN4GameC1Ev
	.type	_ZN4GameC1Ev, %function
_ZN4GameC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r6, #49920
	mov	r4, r0
	mov	lr, #1
	add	r0, r6, #80
	mov	r6, #0
	str	lr, [r4, #0]
	stmib	r4, {r0, r6}	@ phole stm
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r7, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r5, r0
	mov	r0, #4
	bl	_Znwj
	strh	r7, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	ldrb	r1, [r4, #32]	@ zero_extendqisi2
	bic	r3, r1, #1
	strb	r3, [r4, #32]
	ldr	r7, .L143
	ldrb	ip, [r4, #32]	@ zero_extendqisi2
	add	r2, r7, #8
	bic	r5, ip, #2
	str	r2, [r4, #16]
	str	r0, [r4, #12]
	strb	r5, [r4, #32]
	str	r6, [r4, #20]
	str	r6, [r4, #28]
	str	r6, [r4, #24]
	mov	r0, #16
	bl	_Znwj
	add	r7, r7, #32
	mov	r5, r0
	str	r7, [r0, #0]
	ldr	r0, .L143+4
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r5, #4]
	mov	r0, #4
	bl	_Znwj
	strh	r6, [r0, #2]	@ movhi
	strh	r6, [r0, #0]	@ movhi
	str	r0, [r5, #8]
	mov	r0, #4
	bl	_Znwj
	mov	r1, #64
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r0, #0]	@ movhi
	str	r0, [r5, #12]
	ldr	r3, [r4, #12]
	str	r5, [r4, #44]
	mov	r0, r4
	str	r3, [r5, #12]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L144:
	.align	2
.L143:
	.word	.LANCHOR0
	.word	.LC1
	.size	_ZN4GameC1Ev, .-_ZN4GameC1Ev
	.section	.text._ZN9SecretBoxD1Ev,"ax",%progbits
	.align	2
	.global	_ZN9SecretBoxD1Ev
	.hidden	_ZN9SecretBoxD1Ev
	.type	_ZN9SecretBoxD1Ev, %function
_ZN9SecretBoxD1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	ldr	r2, .L149
	cmp	r3, #0
	mov	r4, r0
	str	r2, [r0, #0]
	movne	r0, r3
	ldrne	r3, [r3, #0]
	ldrne	ip, [r3, #16]
	movne	lr, pc
	bxne	ip
.L146:
	ldr	r0, [r4, #12]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L150:
	.align	2
.L149:
	.word	.LANCHOR0+32
	.size	_ZN9SecretBoxD1Ev, .-_ZN9SecretBoxD1Ev
	.section	.text._ZN9SecretBoxD2Ev,"ax",%progbits
	.align	2
	.global	_ZN9SecretBoxD2Ev
	.hidden	_ZN9SecretBoxD2Ev
	.type	_ZN9SecretBoxD2Ev, %function
_ZN9SecretBoxD2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r4, lr}
	ldr	r3, [r0, #4]
	ldr	r2, .L155
	cmp	r3, #0
	mov	r4, r0
	str	r2, [r0, #0]
	movne	r0, r3
	ldrne	r3, [r3, #0]
	ldrne	ip, [r3, #16]
	movne	lr, pc
	bxne	ip
.L152:
	ldr	r0, [r4, #12]
	bl	_ZdlPv
	ldr	r0, [r4, #8]
	bl	_ZdlPv
	mov	r0, r4
	ldmfd	sp!, {r4, lr}
	bx	lr
.L156:
	.align	2
.L155:
	.word	.LANCHOR0+32
	.size	_ZN9SecretBoxD2Ev, .-_ZN9SecretBoxD2Ev
	.section	.text._ZN13SecretBoxAreaC2Ev,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxAreaC2Ev
	.hidden	_ZN13SecretBoxAreaC2Ev
	.type	_ZN13SecretBoxAreaC2Ev, %function
_ZN13SecretBoxAreaC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r0, #16]	@ zero_extendqisi2
	bic	r1, ip, #1
	strb	r1, [r0, #16]
	ldrb	r2, [r0, #16]	@ zero_extendqisi2
	ldr	ip, .L161
	bic	r1, r2, #2
	mov	r2, #0
	str	r2, [r0, #8]
	str	ip, [r0, #0]
	strb	r1, [r0, #16]
	str	r2, [r0, #4]
	str	r2, [r0, #12]
	bx	lr
.L162:
	.align	2
.L161:
	.word	.LANCHOR0+8
	.size	_ZN13SecretBoxAreaC2Ev, .-_ZN13SecretBoxAreaC2Ev
	.section	.text._ZN4GameC2Ev,"ax",%progbits
	.align	2
	.global	_ZN4GameC2Ev
	.hidden	_ZN4GameC2Ev
	.type	_ZN4GameC2Ev, %function
_ZN4GameC2Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	stmfd	sp!, {r3, r4, r5, r6, r7, lr}
	mov	r6, #49920
	mov	r4, r0
	mov	lr, #1
	add	r0, r6, #80
	mov	r6, #0
	str	lr, [r4, #0]
	stmib	r4, {r0, r6}	@ phole stm
	bl	_Z19Iw2DGetSurfaceWidthv
	mov	r7, r0
	bl	_Z20Iw2DGetSurfaceHeightv
	mov	r5, r0
	mov	r0, #4
	bl	_Znwj
	strh	r7, [r0, #0]	@ movhi
	strh	r5, [r0, #2]	@ movhi
	ldrb	r1, [r4, #32]	@ zero_extendqisi2
	bic	r3, r1, #1
	strb	r3, [r4, #32]
	ldr	r7, .L173
	ldrb	ip, [r4, #32]	@ zero_extendqisi2
	add	r2, r7, #8
	bic	r5, ip, #2
	str	r2, [r4, #16]
	str	r0, [r4, #12]
	strb	r5, [r4, #32]
	str	r6, [r4, #20]
	str	r6, [r4, #28]
	str	r6, [r4, #24]
	mov	r0, #16
	bl	_Znwj
	add	r7, r7, #32
	mov	r5, r0
	str	r7, [r0, #0]
	ldr	r0, .L173+4
	bl	_Z15Iw2DCreateImagePKc
	str	r0, [r5, #4]
	mov	r0, #4
	bl	_Znwj
	strh	r6, [r0, #2]	@ movhi
	strh	r6, [r0, #0]	@ movhi
	str	r0, [r5, #8]
	mov	r0, #4
	bl	_Znwj
	mov	r1, #64
	strh	r1, [r0, #2]	@ movhi
	strh	r1, [r0, #0]	@ movhi
	str	r0, [r5, #12]
	ldr	r3, [r4, #12]
	str	r5, [r4, #44]
	mov	r0, r4
	str	r3, [r5, #12]
	ldmfd	sp!, {r3, r4, r5, r6, r7, lr}
	bx	lr
.L174:
	.align	2
.L173:
	.word	.LANCHOR0
	.word	.LC1
	.size	_ZN4GameC2Ev, .-_ZN4GameC2Ev
	.section	.text._ZN13SecretBoxAreaC1Ev,"ax",%progbits
	.align	2
	.global	_ZN13SecretBoxAreaC1Ev
	.hidden	_ZN13SecretBoxAreaC1Ev
	.type	_ZN13SecretBoxAreaC1Ev, %function
_ZN13SecretBoxAreaC1Ev:
	@ Function supports interworking.
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 0, uses_anonymous_args = 0
	@ link register save eliminated.
	ldrb	ip, [r0, #16]	@ zero_extendqisi2
	bic	r1, ip, #1
	strb	r1, [r0, #16]
	ldrb	r2, [r0, #16]	@ zero_extendqisi2
	ldr	ip, .L179
	bic	r1, r2, #2
	mov	r2, #0
	str	r2, [r0, #8]
	str	ip, [r0, #0]
	strb	r1, [r0, #16]
	str	r2, [r0, #4]
	str	r2, [r0, #12]
	bx	lr
.L180:
	.align	2
.L179:
	.word	.LANCHOR0+8
	.size	_ZN13SecretBoxAreaC1Ev, .-_ZN13SecretBoxAreaC1Ev
	.hidden	_ZTV13SecretBoxArea
	.global	_ZTV13SecretBoxArea
	.hidden	_ZTV6Sprite
	.global	_ZTV6Sprite
	.hidden	_ZTS13SecretBoxArea
	.global	_ZTS13SecretBoxArea
	.hidden	_ZTI13SecretBoxArea
	.global	_ZTI13SecretBoxArea
	.hidden	_ZTS6Sprite
	.global	_ZTS6Sprite
	.hidden	_ZTI6Sprite
	.global	_ZTI6Sprite
	.hidden	_ZTI12IGameElement
	.weak	_ZTI12IGameElement
	.section	.rodata._ZTI12IGameElement,"aG",%progbits,_ZTI12IGameElement,comdat
	.align	2
	.type	_ZTI12IGameElement, %object
	.size	_ZTI12IGameElement, 8
_ZTI12IGameElement:
	.word	_ZTVN10__cxxabiv117__class_type_infoE+8
	.word	_ZTS12IGameElement
	.hidden	_ZTS12IGameElement
	.weak	_ZTS12IGameElement
	.section	.rodata._ZTS12IGameElement,"aG",%progbits,_ZTS12IGameElement,comdat
	.align	2
	.type	_ZTS12IGameElement, %object
	.size	_ZTS12IGameElement, 15
_ZTS12IGameElement:
	.ascii	"12IGameElement\000"
	.hidden	_ZTV12IGameElement
	.weak	_ZTV12IGameElement
	.section	.rodata._ZTV12IGameElement,"aG",%progbits,_ZTV12IGameElement,comdat
	.align	3
	.type	_ZTV12IGameElement, %object
	.size	_ZTV12IGameElement, 20
_ZTV12IGameElement:
	.word	0
	.word	_ZTI12IGameElement
	.word	__cxa_pure_virtual
	.word	__cxa_pure_virtual
	.word	_ZN12IGameElement4InitE13GameCondition
	.hidden	_ZTV9SecretBox
	.weak	_ZTV9SecretBox
	.section	.rodata._ZTV9SecretBox,"aG",%progbits,_ZTV9SecretBox,comdat
	.align	3
	.type	_ZTV9SecretBox, %object
	.size	_ZTV9SecretBox, 20
_ZTV9SecretBox:
	.word	0
	.word	_ZTI9SecretBox
	.word	_ZN6Sprite4DrawEv
	.word	_ZN6Sprite6UpdateEv
	.word	_ZN12IGameElement4InitE13GameCondition
	.hidden	_ZTI9SecretBox
	.weak	_ZTI9SecretBox
	.section	.rodata._ZTI9SecretBox,"aG",%progbits,_ZTI9SecretBox,comdat
	.align	2
	.type	_ZTI9SecretBox, %object
	.size	_ZTI9SecretBox, 12
_ZTI9SecretBox:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS9SecretBox
	.word	_ZTI6Sprite
	.hidden	_ZTS9SecretBox
	.weak	_ZTS9SecretBox
	.section	.rodata._ZTS9SecretBox,"aG",%progbits,_ZTS9SecretBox,comdat
	.align	2
	.type	_ZTS9SecretBox, %object
	.size	_ZTS9SecretBox, 11
_ZTS9SecretBox:
	.ascii	"9SecretBox\000"
	.section	.rodata
	.align	3
	.set	.LANCHOR0,. + 0
	.type	_ZTV13SecretBoxArea, %object
	.size	_ZTV13SecretBoxArea, 20
_ZTV13SecretBoxArea:
	.word	0
	.word	_ZTI13SecretBoxArea
	.word	_ZN13SecretBoxArea4DrawEv
	.word	_ZN13SecretBoxArea6UpdateEv
	.word	_ZN13SecretBoxArea4InitE13GameCondition
	.space	4
	.type	_ZTV6Sprite, %object
	.size	_ZTV6Sprite, 20
_ZTV6Sprite:
	.word	0
	.word	_ZTI6Sprite
	.word	_ZN6Sprite4DrawEv
	.word	_ZN6Sprite6UpdateEv
	.word	_ZN12IGameElement4InitE13GameCondition
	.type	_ZTS13SecretBoxArea, %object
	.size	_ZTS13SecretBoxArea, 16
_ZTS13SecretBoxArea:
	.ascii	"13SecretBoxArea\000"
	.type	_ZTI13SecretBoxArea, %object
	.size	_ZTI13SecretBoxArea, 12
_ZTI13SecretBoxArea:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS13SecretBoxArea
	.word	_ZTI12IGameElement
	.type	_ZTS6Sprite, %object
	.size	_ZTS6Sprite, 8
_ZTS6Sprite:
	.ascii	"6Sprite\000"
	.type	_ZTI6Sprite, %object
	.size	_ZTI6Sprite, 12
_ZTI6Sprite:
	.word	_ZTVN10__cxxabiv120__si_class_type_infoE+8
	.word	_ZTS6Sprite
	.word	_ZTI12IGameElement
	.section	.rodata.str1.4,"aMS",%progbits,1
	.align	2
.LC0:
	.ascii	"q.png\000"
	.space	2
.LC1:
	.ascii	"background.jpg\000"
	.hidden	_ZTV13SecretBoxArea
	.hidden	_ZTV9SecretBox
	.hidden	_ZTV6Sprite
	.hidden	_ZTV12IGameElement
	.ident	"GCC: (Sourcery G++ Lite 2010q1-188) 4.4.1"
