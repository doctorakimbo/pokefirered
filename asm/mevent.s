	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_81435DC
sub_81435DC: @ 81435DC
	push {r4-r6,lr}
	mov r6, r8
	push {r6}
	sub sp, 0x4
	adds r5, r0, 0
	adds r6, r1, 0
	mov r8, r2
	mov r1, sp
	ldr r4, _08143630 @ =0x04000208
	ldrh r0, [r4]
	strh r0, [r1]
	movs r0, 0
	strh r0, [r4]
	ldr r1, _08143634 @ =gIntrTable
	ldr r0, _08143638 @ =sub_815C6D4
	str r0, [r1, 0x4]
	ldr r0, _0814363C @ =sub_815C6C4
	str r0, [r1, 0x8]
	bl sub_815C8C8
	bl sub_815C960
	ldr r2, _08143640 @ =0x04000200
	ldrh r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	strh r0, [r2]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	movs r0, 0
	strh r0, [r5]
	str r6, [r5, 0x4]
	mov r0, r8
	str r0, [r5, 0x8]
	add sp, 0x4
	pop {r3}
	mov r8, r3
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08143630: .4byte 0x04000208
_08143634: .4byte gIntrTable
_08143638: .4byte sub_815C6D4
_0814363C: .4byte sub_815C6C4
_08143640: .4byte 0x04000200
	thumb_func_end sub_81435DC

	thumb_func_start sub_8143644
sub_8143644: @ 8143644
	push {r4,lr}
	sub sp, 0x4
	mov r1, sp
	ldr r4, _08143670 @ =0x04000208
	ldrh r0, [r4]
	strh r0, [r1]
	movs r0, 0
	strh r0, [r4]
	bl sub_815C960
	bl sub_815C91C
	bl RestoreSerialTimer3IntrHandlers
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r4]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08143670: .4byte 0x04000208
	thumb_func_end sub_8143644

	thumb_func_start sub_8143674
sub_8143674: @ 8143674
	push {r4,r5,lr}
	adds r4, r0, 0
	movs r5, 0
	ldr r1, [r4, 0x4]
	ldr r2, [r4, 0x8]
	movs r0, 0x1
	movs r3, 0
	bl sub_815C498
	adds r1, r0, 0
	strh r1, [r4]
	movs r0, 0x13
	ands r0, r1
	cmp r0, 0x10
	bne _08143694
	movs r5, 0x1
_08143694:
	movs r0, 0x8
	ands r0, r1
	cmp r0, 0
	beq _0814369E
	movs r5, 0x2
_0814369E:
	movs r0, 0x4
	ands r0, r1
	cmp r0, 0
	beq _081436A8
	movs r5, 0x3
_081436A8:
	ldr r1, _081436B8 @ =gUnknown_3003F84
	movs r0, 0
	strb r0, [r1]
	adds r0, r5, 0
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_081436B8: .4byte gUnknown_3003F84
	thumb_func_end sub_8143674

	thumb_func_start sub_81436BC
sub_81436BC: @ 81436BC
	push {lr}
	ldr r0, _081436E0 @ =gDecompressionBuffer
	movs r2, 0x80
	lsls r2, 6
	movs r1, 0
	bl memset
	ldr r1, _081436E4 @ =gUnknown_202271A
	ldr r2, _081436E8 @ =0x00005502
	adds r0, r2, 0
	strh r0, [r1]
	bl sub_8009804
	movs r0, 0x1
	bl SetSuppressLinkErrorMessage
	pop {r0}
	bx r0
	.align 2, 0
_081436E0: .4byte gDecompressionBuffer
_081436E4: .4byte gUnknown_202271A
_081436E8: .4byte 0x00005502
	thumb_func_end sub_81436BC

	thumb_func_start sub_81436EC
sub_81436EC: @ 81436EC
	push {lr}
	sub sp, 0xC
	mov r1, sp
	ldr r2, _08143730 @ =0x04000208
	ldrh r0, [r2]
	strh r0, [r1]
	movs r0, 0
	strh r0, [r2]
	ldr r0, _08143734 @ =gUnknown_3003FB4
	ldr r1, [r0, 0x4]
	ldr r0, [r0]
	str r0, [sp, 0x4]
	str r1, [sp, 0x8]
	mov r0, sp
	ldrh r0, [r0]
	strh r0, [r2]
	add r2, sp, 0x4
	ldrh r1, [r2]
	ldr r0, _08143738 @ =0x0000b9a0
	cmp r1, r0
	bne _08143744
	ldrh r1, [r2, 0x2]
	ldr r0, _0814373C @ =0x0000ccd0
	cmp r1, r0
	bne _08143744
	ldrh r1, [r2, 0x4]
	ldr r0, _08143740 @ =0x0000ffff
	cmp r1, r0
	bne _08143744
	ldrh r0, [r2, 0x6]
	cmp r0, r1
	bne _08143744
	movs r0, 0x1
	b _08143746
	.align 2, 0
_08143730: .4byte 0x04000208
_08143734: .4byte gUnknown_3003FB4
_08143738: .4byte 0x0000b9a0
_0814373C: .4byte 0x0000ccd0
_08143740: .4byte 0x0000ffff
_08143744:
	movs r0, 0
_08143746:
	add sp, 0xC
	pop {r1}
	bx r1
	thumb_func_end sub_81436EC

	thumb_func_start sub_814374C
sub_814374C: @ 814374C
	push {lr}
	bl sub_800AA48
	lsls r0, 24
	cmp r0, 0
	beq _08143768
	bl GetLinkPlayerCount_2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08143768
	movs r0, 0x1
	b _0814376A
_08143768:
	movs r0, 0
_0814376A:
	pop {r1}
	bx r1
	thumb_func_end sub_814374C

	thumb_func_start sub_8143770
sub_8143770: @ 8143770
	push {r4,r5,lr}
	adds r4, r0, 0
	adds r5, r1, 0
	ldrb r0, [r4]
	subs r0, 0x3
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bhi _08143794
	bl HasLinkErrorOccurred
	lsls r0, 24
	cmp r0, 0
	beq _08143794
	movs r0, 0
	strb r0, [r4]
	movs r0, 0x3
	b _0814389A
_08143794:
	ldrb r0, [r4]
	cmp r0, 0x5
	bls _0814379C
	b _08143898
_0814379C:
	lsls r0, 2
	ldr r1, _081437A8 @ =_081437AC
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081437A8: .4byte _081437AC
	.align 2, 0
_081437AC:
	.4byte _081437C4
	.4byte _081437E0
	.4byte _081437F8
	.4byte _0814382C
	.4byte _08143878
	.4byte _08143884
_081437C4:
	bl sub_800AA48
	lsls r0, 24
	cmp r0, 0
	beq _08143814
	bl GetLinkPlayerCount_2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _08143814
	movs r0, 0x1
	strb r0, [r4]
	b _08143898
_081437E0:
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _08143898
	movs r0, 0
	strh r0, [r5]
	movs r0, 0x2
	strb r0, [r4]
	b _08143898
_081437F8:
	bl GetLinkPlayerCount_2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x2
	bne _08143814
	movs r0, 0x42
	bl PlaySE
	bl sub_800A5BC
	movs r0, 0
	strh r0, [r5]
	b _08143872
_08143814:
	ldr r0, _08143828 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08143898
	movs r0, 0
	strb r0, [r4]
	movs r0, 0x1
	b _0814389A
	.align 2, 0
_08143828: .4byte gMain
_0814382C:
	ldrh r0, [r5]
	adds r0, 0x1
	strh r0, [r5]
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x1E
	bls _08143842
	movs r0, 0
	strb r0, [r4]
	movs r0, 0x5
	b _0814389A
_08143842:
	bl IsLinkConnectionEstablished
	lsls r0, 24
	cmp r0, 0
	beq _08143898
	ldr r0, _08143868 @ =gUnknown_3003F64
	ldrb r0, [r0]
	cmp r0, 0
	beq _08143872
	bl IsLinkPlayerDataExchangeComplete
	lsls r0, 24
	cmp r0, 0
	beq _0814386C
	movs r0, 0
	strb r0, [r4]
	movs r0, 0x2
	b _0814389A
	.align 2, 0
_08143868: .4byte gUnknown_3003F64
_0814386C:
	movs r0, 0x4
	strb r0, [r4]
	b _08143898
_08143872:
	movs r0, 0x3
	strb r0, [r4]
	b _08143898
_08143878:
	movs r0, 0
	bl sub_800AA80
	movs r0, 0x5
	strb r0, [r4]
	b _08143898
_08143884:
	ldr r0, _08143894 @ =gUnknown_3003F64
	ldrb r0, [r0]
	cmp r0, 0
	bne _08143898
	strb r0, [r4]
	movs r0, 0x4
	b _0814389A
	.align 2, 0
_08143894: .4byte gUnknown_3003F64
_08143898:
	movs r0, 0
_0814389A:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8143770

	thumb_func_start sub_81438A0
sub_81438A0: @ 81438A0
	push {r4,lr}
	ldr r0, _081438E0 @ =sub_8143910
	movs r1, 0
	bl CreateTask
	lsls r0, 24
	lsrs r0, 24
	lsls r4, r0, 2
	adds r4, r0
	lsls r4, 3
	ldr r0, _081438E4 @ =gTasks+0x8
	adds r4, r0
	movs r0, 0
	strb r0, [r4, 0x8]
	strb r0, [r4, 0x9]
	strb r0, [r4, 0xA]
	strb r0, [r4, 0xB]
	strb r0, [r4, 0xC]
	strb r0, [r4, 0xD]
	movs r1, 0
	strh r0, [r4]
	strh r0, [r4, 0x2]
	strh r0, [r4, 0x4]
	strh r0, [r4, 0x6]
	strb r1, [r4, 0xE]
	movs r0, 0x40
	bl AllocZeroed
	str r0, [r4, 0x10]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081438E0: .4byte sub_8143910
_081438E4: .4byte gTasks+0x8
	thumb_func_end sub_81438A0

	thumb_func_start sub_81438E8
sub_81438E8: @ 81438E8
	movs r1, 0
	strh r1, [r0]
	bx lr
	thumb_func_end sub_81438E8

	thumb_func_start sub_81438F0
sub_81438F0: @ 81438F0
	push {lr}
	adds r2, r0, 0
	lsls r1, 16
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	lsls r0, 16
	cmp r0, r1
	bhi _08143906
	movs r0, 0
	b _0814390C
_08143906:
	movs r0, 0
	strh r0, [r2]
	movs r0, 0x1
_0814390C:
	pop {r1}
	bx r1
	thumb_func_end sub_81438F0

	thumb_func_start sub_8143910
sub_8143910: @ 8143910
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r5, r0, 24
	lsls r0, r5, 2
	adds r0, r5
	lsls r0, 3
	ldr r1, _08143934 @ =gTasks+0x8
	adds r4, r0, r1
	ldrb r0, [r4, 0x8]
	cmp r0, 0x1A
	bls _08143928
	b _08143D1A
_08143928:
	lsls r0, 2
	ldr r1, _08143938 @ =_0814393C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08143934: .4byte gTasks+0x8
_08143938: .4byte _0814393C
	.align 2, 0
_0814393C:
	.4byte _081439A8
	.4byte _081439C4
	.4byte _081439D4
	.4byte _081439E8
	.4byte _081439F8
	.4byte _08143A24
	.4byte _08143A5C
	.4byte _08143AD8
	.4byte _08143AF4
	.4byte _08143B1C
	.4byte _08143B38
	.4byte _08143B68
	.4byte _08143B7E
	.4byte _08143B94
	.4byte _08143BF6
	.4byte _08143C1C
	.4byte _08143C34
	.4byte _08143C52
	.4byte _08143C7E
	.4byte _08143CA4
	.4byte _08143CD4
	.4byte _08143CE0
	.4byte _08143CEC
	.4byte _08143CBC
	.4byte _08143D1A
	.4byte _08143D1A
	.4byte _08143D04
_081439A8:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _081439C0 @ =gUnknown_841DE52
	bl mevent_0814257C
	cmp r0, 0
	bne _081439B8
	b _08143D1A
_081439B8:
	movs r0, 0x1
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_081439C0: .4byte gUnknown_841DE52
_081439C4:
	bl sub_81436BC
	adds r0, r4, 0
	bl sub_81438E8
	movs r0, 0x2
	strb r0, [r4, 0x8]
	b _08143D1A
_081439D4:
	adds r0, r4, 0
	movs r1, 0xA
	bl sub_81438F0
	cmp r0, 0
	bne _081439E2
	b _08143D1A
_081439E2:
	movs r0, 0x3
	strb r0, [r4, 0x8]
	b _08143D1A
_081439E8:
	bl sub_814374C
	cmp r0, 0
	beq _081439F2
	b _08143B88
_081439F2:
	bl sub_80098B8
	b _08143AE8
_081439F8:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _08143A1C @ =gUnknown_841DE53
	bl mevent_0814257C
	cmp r0, 0
	bne _08143A08
	b _08143D1A
_08143A08:
	ldr r0, _08143A20 @ =gUnknown_841DE54
	bl sub_8142504
	adds r0, r4, 0
	bl sub_81438E8
	movs r0, 0x5
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143A1C: .4byte gUnknown_841DE53
_08143A20: .4byte gUnknown_841DE54
_08143A24:
	adds r0, r4, 0
	movs r1, 0x5A
	bl sub_81438F0
	cmp r0, 0
	beq _08143A3A
	bl sub_81436BC
	movs r0, 0x6
	strb r0, [r4, 0x8]
	b _08143D1A
_08143A3A:
	ldr r0, _08143A58 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	bne _08143A48
	b _08143D1A
_08143A48:
	adds r0, r4, 0
	bl sub_81438E8
	movs r0, 0x5
	bl PlaySE
	b _08143BE6
	.align 2, 0
_08143A58: .4byte gMain
_08143A5C:
	ldr r0, _08143A7C @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x2
	ands r0, r1
	cmp r0, 0
	beq _08143A80
	movs r0, 0x5
	bl PlaySE
	bl sub_80098B8
	adds r0, r4, 0
	bl sub_81438E8
	b _08143BE6
	.align 2, 0
_08143A7C: .4byte gMain
_08143A80:
	bl GetLinkPlayerCount_2
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	bls _08143A9C
	adds r0, r4, 0
	bl sub_81438E8
	bl sub_80098B8
	movs r0, 0x7
	strb r0, [r4, 0x8]
	b _08143D1A
_08143A9C:
	bl sub_81436EC
	cmp r0, 0
	beq _08143ABA
	movs r0, 0x5
	bl PlaySE
	bl sub_80098B8
	adds r0, r4, 0
	bl sub_81438E8
	movs r0, 0x8
	strb r0, [r4, 0x8]
	b _08143D1A
_08143ABA:
	adds r0, r4, 0
	movs r1, 0xA
	bl sub_81438F0
	cmp r0, 0
	bne _08143AC8
	b _08143D1A
_08143AC8:
	bl sub_80098B8
	bl sub_81436BC
	adds r0, r4, 0
	bl sub_81438E8
	b _08143D1A
_08143AD8:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _08143AF0 @ =gUnknown_841DE7C
	bl mevent_0814257C
	cmp r0, 0
	bne _08143AE8
	b _08143D1A
_08143AE8:
	movs r0, 0x4
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143AF0: .4byte gUnknown_841DE7C
_08143AF4:
	ldr r0, _08143B0C @ =gUnknown_841DE95
	bl sub_8142504
	ldr r0, _08143B10 @ =gUnknown_3005ED0
	ldr r1, _08143B14 @ =gUnknownSerialData_End
	ldr r2, _08143B18 @ =gUnknownSerialData_Start
	subs r1, r2
	bl sub_81435DC
	movs r0, 0x9
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143B0C: .4byte gUnknown_841DE95
_08143B10: .4byte gUnknown_3005ED0
_08143B14: .4byte gUnknownSerialData_End
_08143B18: .4byte gUnknownSerialData_Start
_08143B1C:
	ldr r0, _08143B34 @ =gUnknown_3005ED0
	bl sub_8143674
	strb r0, [r4, 0xE]
	lsls r0, 24
	cmp r0, 0
	bne _08143B2C
	b _08143D1A
_08143B2C:
	movs r0, 0xA
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143B34: .4byte gUnknown_3005ED0
_08143B38:
	ldr r0, _08143B60 @ =gUnknown_3005ED0
	bl sub_8143644
	ldrb r0, [r4, 0xE]
	cmp r0, 0x3
	bne _08143B46
	b _08143C4C
_08143B46:
	cmp r0, 0x1
	beq _08143B4C
	b _08143CFA
_08143B4C:
	adds r0, r4, 0
	bl sub_81438E8
	ldr r0, _08143B64 @ =gUnknown_841DE9B
	bl sub_8142504
	movs r0, 0xB
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143B60: .4byte gUnknown_3005ED0
_08143B64: .4byte gUnknown_841DE9B
_08143B68:
	movs r1, 0xD2
	lsls r1, 2
	adds r0, r4, 0
	bl sub_81438F0
	cmp r0, 0
	bne _08143B78
	b _08143D1A
_08143B78:
	movs r0, 0xC
	strb r0, [r4, 0x8]
	b _08143D1A
_08143B7E:
	bl sub_81436BC
	ldr r0, _08143B90 @ =gUnknown_841DE98
	bl sub_8142504
_08143B88:
	movs r0, 0xD
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143B90: .4byte gUnknown_841DE98
_08143B94:
	adds r0, r4, 0
	adds r0, 0x9
	adds r1, r4, 0
	bl sub_8143770
	cmp r0, 0x5
	bls _08143BA4
	b _08143D1A
_08143BA4:
	lsls r0, 2
	ldr r1, _08143BB0 @ =_08143BB4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08143BB0: .4byte _08143BB4
	.align 2, 0
_08143BB4:
	.4byte _08143D1A
	.4byte _08143BDC
	.4byte _08143BCC
	.4byte _08143C00
	.4byte _08143C00
	.4byte _08143BEC
_08143BCC:
	ldr r0, _08143BD8 @ =gUnknown_841DE95
	bl sub_8142504
	movs r0, 0xE
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143BD8: .4byte gUnknown_841DE95
_08143BDC:
	movs r0, 0x5
	bl PlaySE
	bl sub_80098B8
_08143BE6:
	movs r0, 0x17
	strb r0, [r4, 0x8]
	b _08143D1A
_08143BEC:
	bl sub_80098B8
	movs r0, 0x15
	strb r0, [r4, 0x8]
	b _08143D1A
_08143BF6:
	bl HasLinkErrorOccurred
	lsls r0, 24
	cmp r0, 0
	beq _08143C06
_08143C00:
	bl sub_80098B8
	b _08143C4C
_08143C06:
	bl GetBlockReceivedStatus
	lsls r0, 24
	cmp r0, 0
	bne _08143C12
	b _08143D1A
_08143C12:
	bl ResetBlockReceivedFlags
	movs r0, 0xF
	strb r0, [r4, 0x8]
	b _08143D1A
_08143C1C:
	ldr r0, _08143C30 @ =gDecompressionBuffer
	bl sub_815D6B4
	strb r0, [r4, 0xE]
	ldrb r0, [r4, 0xE]
	bl sub_800AA80
	movs r0, 0x10
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143C30: .4byte gDecompressionBuffer
_08143C34:
	ldr r0, _08143C48 @ =gUnknown_3003F64
	ldrb r0, [r0]
	cmp r0, 0
	bne _08143D1A
	ldrb r0, [r4, 0xE]
	cmp r0, 0x1
	bne _08143C4C
	movs r0, 0x11
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143C48: .4byte gUnknown_3003F64
_08143C4C:
	movs r0, 0x14
	strb r0, [r4, 0x8]
	b _08143D1A
_08143C52:
	ldr r0, _08143C70 @ =gDecompressionBuffer
	bl sub_815D794
	cmp r0, 0
	beq _08143C78
	ldr r0, _08143C74 @ =gUnknown_841DE99
	bl sub_8142504
	adds r0, r4, 0
	bl sub_81438E8
	movs r0, 0x12
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143C70: .4byte gDecompressionBuffer
_08143C74: .4byte gUnknown_841DE99
_08143C78:
	movs r0, 0x16
	strb r0, [r4, 0x8]
	b _08143D1A
_08143C7E:
	adds r0, r4, 0
	movs r1, 0x78
	bl sub_81438F0
	cmp r0, 0
	beq _08143D1A
	ldr r0, _08143CA0 @ =gUnknown_841DE9A
	bl sub_8142504
	movs r0, 0x81
	lsls r0, 1
	bl PlayFanfare
	movs r0, 0x13
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143CA0: .4byte gUnknown_841DE9A
_08143CA4:
	bl IsFanfareTaskInactive
	lsls r0, 24
	cmp r0, 0
	beq _08143D1A
	ldr r0, _08143CB8 @ =gMain
	ldrh r1, [r0, 0x2E]
	movs r0, 0x3
	ands r0, r1
	b _08143CC6
	.align 2, 0
_08143CB8: .4byte gMain
_08143CBC:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _08143CD0 @ =gUnknown_841DE7D
	bl mevent_0814257C
_08143CC6:
	cmp r0, 0
	beq _08143D1A
	movs r0, 0x1A
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143CD0: .4byte gUnknown_841DE7D
_08143CD4:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _08143CDC @ =gUnknown_841DE96
	b _08143CF2
	.align 2, 0
_08143CDC: .4byte gUnknown_841DE96
_08143CE0:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _08143CE8 @ =gUnknown_841DE97
	b _08143CF2
	.align 2, 0
_08143CE8: .4byte gUnknown_841DE97
_08143CEC:
	adds r0, r4, 0
	adds r0, 0x9
	ldr r1, _08143D00 @ =gUnknown_841DE9C
_08143CF2:
	bl mevent_0814257C
	cmp r0, 0
	beq _08143D1A
_08143CFA:
	movs r0, 0
	strb r0, [r4, 0x8]
	b _08143D1A
	.align 2, 0
_08143D00: .4byte gUnknown_841DE9C
_08143D04:
	bl sub_812B484
	ldr r0, [r4, 0x10]
	bl Free
	adds r0, r5, 0
	bl DestroyTask
	ldr r0, _08143D20 @ =sub_81422FC
	bl SetMainCallback2
_08143D1A:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08143D20: .4byte sub_81422FC
	thumb_func_end sub_8143910

	thumb_func_start sub_8143D24
sub_8143D24: @ 8143D24
	push {lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	ldr r0, _08143D4C @ =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r0, _08143D50 @ =0x00003120
	adds r1, r0
	ldr r2, _08143D54 @ =0x050000db
	mov r0, sp
	bl CpuSet
	bl sub_8143ED0
	bl sub_80BDE28
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_08143D4C: .4byte gSaveBlock1Ptr
_08143D50: .4byte 0x00003120
_08143D54: .4byte 0x050000db
	thumb_func_end sub_8143D24

	thumb_func_start sub_8143D58
sub_8143D58: @ 8143D58
	ldr r0, _08143D64 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143D68 @ =0x00003124
	adds r0, r1
	bx lr
	.align 2, 0
_08143D64: .4byte gSaveBlock1Ptr
_08143D68: .4byte 0x00003124
	thumb_func_end sub_8143D58

	thumb_func_start sav1_get_mevent_buffer_1
sav1_get_mevent_buffer_1: @ 8143D6C
	ldr r0, _08143D78 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143D7C @ =0x000032e4
	adds r0, r1
	bx lr
	.align 2, 0
_08143D78: .4byte gSaveBlock1Ptr
_08143D7C: .4byte 0x000032e4
	thumb_func_end sav1_get_mevent_buffer_1

	thumb_func_start sav1_get_mevent_buffer_2
sav1_get_mevent_buffer_2: @ 8143D80
	ldr r0, _08143D8C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143D90 @ =0x00003434
	adds r0, r1
	bx lr
	.align 2, 0
_08143D8C: .4byte gSaveBlock1Ptr
_08143D90: .4byte 0x00003434
	thumb_func_end sav1_get_mevent_buffer_2

	thumb_func_start sub_8143D94
sub_8143D94: @ 8143D94
	ldr r0, _08143DA0 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143DA4 @ =0x00003460
	adds r0, r1
	bx lr
	.align 2, 0
_08143DA0: .4byte gSaveBlock1Ptr
_08143DA4: .4byte 0x00003460
	thumb_func_end sub_8143D94

	thumb_func_start sub_8143DA8
sub_8143DA8: @ 8143DA8
	ldr r0, _08143DB4 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143DB8 @ =0x00003458
	adds r0, r1
	bx lr
	.align 2, 0
_08143DB4: .4byte gSaveBlock1Ptr
_08143DB8: .4byte 0x00003458
	thumb_func_end sub_8143DA8

	thumb_func_start sub_8143DBC
sub_8143DBC: @ 8143DBC
	push {lr}
	bl sub_8143E9C
	pop {r0}
	bx r0
	thumb_func_end sub_8143DBC

	thumb_func_start sub_8143DC8
sub_8143DC8: @ 8143DC8
	push {r4-r7,lr}
	adds r7, r0, 0
	bl sub_8143E64
	cmp r0, 0
	beq _08143E14
	bl sub_8143E9C
	ldr r4, _08143E08 @ =gSaveBlock1Ptr
	ldr r0, [r4]
	ldr r5, _08143E0C @ =0x00003124
	adds r0, r5
	movs r6, 0xDE
	lsls r6, 1
	adds r1, r7, 0
	adds r2, r6, 0
	bl memcpy
	ldr r0, [r4]
	adds r0, r5
	adds r1, r6, 0
	bl CalcCRC16WithTable
	ldr r1, [r4]
	ldr r2, _08143E10 @ =0x00003120
	adds r1, r2
	lsls r0, 16
	lsrs r0, 16
	str r0, [r1]
	movs r0, 0x1
	b _08143E16
	.align 2, 0
_08143E08: .4byte gSaveBlock1Ptr
_08143E0C: .4byte 0x00003124
_08143E10: .4byte 0x00003120
_08143E14:
	movs r0, 0
_08143E16:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8143DC8

	thumb_func_start sub_8143E1C
sub_8143E1C: @ 8143E1C
	push {r4,lr}
	ldr r4, _08143E50 @ =gSaveBlock1Ptr
	ldr r0, [r4]
	ldr r1, _08143E54 @ =0x00003124
	adds r0, r1
	movs r1, 0xDE
	lsls r1, 1
	bl CalcCRC16WithTable
	lsls r0, 16
	lsrs r0, 16
	ldr r4, [r4]
	ldr r2, _08143E58 @ =0x00003120
	adds r1, r4, r2
	ldr r1, [r1]
	cmp r0, r1
	bne _08143E5C
	ldr r1, _08143E54 @ =0x00003124
	adds r0, r4, r1
	bl sub_8143E64
	cmp r0, 0
	beq _08143E5C
	movs r0, 0x1
	b _08143E5E
	.align 2, 0
_08143E50: .4byte gSaveBlock1Ptr
_08143E54: .4byte 0x00003124
_08143E58: .4byte 0x00003120
_08143E5C:
	movs r0, 0
_08143E5E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8143E1C

	thumb_func_start sub_8143E64
sub_8143E64: @ 8143E64
	push {lr}
	ldrh r0, [r0]
	cmp r0, 0
	beq _08143E70
	movs r0, 0x1
	b _08143E72
_08143E70:
	movs r0, 0
_08143E72:
	pop {r1}
	bx r1
	thumb_func_end sub_8143E64

	thumb_func_start sub_8143E78
sub_8143E78: @ 8143E78
	push {lr}
	ldr r0, _08143E8C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143E90 @ =0x00003124
	adds r0, r1
	ldrb r0, [r0, 0x2]
	cmp r0, 0
	beq _08143E94
	movs r0, 0x1
	b _08143E96
	.align 2, 0
_08143E8C: .4byte gSaveBlock1Ptr
_08143E90: .4byte 0x00003124
_08143E94:
	movs r0, 0
_08143E96:
	pop {r1}
	bx r1
	thumb_func_end sub_8143E78

	thumb_func_start sub_8143E9C
sub_8143E9C: @ 8143E9C
	push {r4,lr}
	sub sp, 0x4
	movs r4, 0
	str r4, [sp]
	bl sub_8143D58
	adds r1, r0, 0
	ldr r2, _08143EC4 @ =0x0500006f
	mov r0, sp
	bl CpuSet
	ldr r0, _08143EC8 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143ECC @ =0x00003120
	adds r0, r1
	str r4, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08143EC4: .4byte 0x0500006f
_08143EC8: .4byte gSaveBlock1Ptr
_08143ECC: .4byte 0x00003120
	thumb_func_end sub_8143E9C

	thumb_func_start sub_8143ED0
sub_8143ED0: @ 8143ED0
	push {lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	bl sub_8143D94
	adds r1, r0, 0
	ldr r2, _08143EF0 @ =0x05000001
	mov r0, sp
	bl CpuSet
	bl sub_8146C88
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_08143EF0: .4byte 0x05000001
	thumb_func_end sub_8143ED0

	thumb_func_start sub_8143EF4
sub_8143EF4: @ 8143EF4
	push {r4,r5,lr}
	adds r5, r0, 0
	ldr r0, _08143F0C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08143F10 @ =0x00003124
	adds r4, r0, r1
	bl sub_8143E1C
	cmp r0, 0
	bne _08143F14
_08143F08:
	movs r0, 0
	b _08143F2C
	.align 2, 0
_08143F0C: .4byte gSaveBlock1Ptr
_08143F10: .4byte 0x00003124
_08143F14:
	movs r2, 0
	ldr r3, _08143F34 @ =0x000001bb
_08143F18:
	adds r0, r4, r2
	adds r1, r5, r2
	ldrb r0, [r0]
	ldrb r1, [r1]
	cmp r0, r1
	bne _08143F08
	adds r2, 0x1
	cmp r2, r3
	bls _08143F18
	movs r0, 0x1
_08143F2C:
	pop {r4,r5}
	pop {r1}
	bx r1
	.align 2, 0
_08143F34: .4byte 0x000001bb
	thumb_func_end sub_8143EF4

	thumb_func_start sub_8143F38
sub_8143F38: @ 8143F38
	push {lr}
	bl sub_814407C
	bl sub_81440B4
	bl sub_8144790
	bl ClearRamScript
	bl sub_806E2D0
	bl sub_806E370
	ldr r0, _08143F64 @ =gSaveBlock2Ptr
	ldr r0, [r0]
	movs r1, 0x94
	lsls r1, 3
	adds r0, r1
	bl sub_80E7524
	pop {r0}
	bx r0
	.align 2, 0
_08143F64: .4byte gSaveBlock2Ptr
	thumb_func_end sub_8143F38

	thumb_func_start sub_8143F68
sub_8143F68: @ 8143F68
	push {r4-r7,lr}
	adds r7, r0, 0
	bl sub_8144018
	cmp r0, 0
	beq _08143FC0
	bl sub_8143F38
	ldr r4, _08143FB0 @ =gSaveBlock1Ptr
	ldr r0, [r4]
	ldr r5, _08143FB4 @ =0x000032e4
	adds r0, r5
	movs r6, 0xA6
	lsls r6, 1
	adds r1, r7, 0
	adds r2, r6, 0
	bl memcpy
	ldr r0, [r4]
	adds r0, r5
	adds r1, r6, 0
	bl CalcCRC16WithTable
	ldr r1, [r4]
	ldr r3, _08143FB8 @ =0x000032e0
	adds r2, r1, r3
	lsls r0, 16
	lsrs r0, 16
	str r0, [r2]
	ldr r0, _08143FBC @ =0x00003434
	adds r2, r1, r0
	adds r1, r5
	ldrh r0, [r1, 0x2]
	strh r0, [r2, 0x6]
	movs r0, 0x1
	b _08143FC2
	.align 2, 0
_08143FB0: .4byte gSaveBlock1Ptr
_08143FB4: .4byte 0x000032e4
_08143FB8: .4byte 0x000032e0
_08143FBC: .4byte 0x00003434
_08143FC0:
	movs r0, 0
_08143FC2:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_8143F68

	thumb_func_start sub_8143FC8
sub_8143FC8: @ 8143FC8
	push {r4,r5,lr}
	ldr r5, _08144004 @ =gSaveBlock1Ptr
	ldr r0, [r5]
	ldr r1, _08144008 @ =0x000032e0
	adds r4, r0, r1
	adds r1, 0x4
	adds r0, r1
	movs r1, 0xA6
	lsls r1, 1
	bl CalcCRC16WithTable
	lsls r0, 16
	lsrs r0, 16
	ldr r1, [r4]
	cmp r1, r0
	bne _08144010
	ldr r0, [r5]
	ldr r1, _0814400C @ =0x000032e4
	adds r0, r1
	bl sub_8144018
	cmp r0, 0
	beq _08144010
	bl sub_8069DFC
	cmp r0, 0
	beq _08144010
	movs r0, 0x1
	b _08144012
	.align 2, 0
_08144004: .4byte gSaveBlock1Ptr
_08144008: .4byte 0x000032e0
_0814400C: .4byte 0x000032e4
_08144010:
	movs r0, 0
_08144012:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_8143FC8

	thumb_func_start sub_8144018
sub_8144018: @ 8144018
	push {lr}
	adds r2, r0, 0
	ldrh r0, [r2]
	cmp r0, 0
	beq _0814404E
	ldrb r1, [r2, 0x8]
	lsls r0, r1, 30
	lsrs r0, 30
	cmp r0, 0x2
	bhi _0814404E
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0
	beq _0814403C
	cmp r0, 0x40
	beq _0814403C
	cmp r0, 0x80
	bne _0814404E
_0814403C:
	lsls r0, r1, 26
	lsrs r0, 28
	cmp r0, 0x7
	bhi _0814404E
	ldrb r0, [r2, 0x9]
	cmp r0, 0x7
	bhi _0814404E
	movs r0, 0x1
	b _08144050
_0814404E:
	movs r0, 0
_08144050:
	pop {r1}
	bx r1
	thumb_func_end sub_8144018

	thumb_func_start sub_8144054
sub_8144054: @ 8144054
	push {lr}
	ldr r0, _0814406C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08144070 @ =0x000032e4
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0
	beq _08144074
	movs r0, 0x1
	b _08144076
	.align 2, 0
_0814406C: .4byte gSaveBlock1Ptr
_08144070: .4byte 0x000032e4
_08144074:
	movs r0, 0
_08144076:
	pop {r1}
	bx r1
	thumb_func_end sub_8144054

	thumb_func_start sub_814407C
sub_814407C: @ 814407C
	push {r4,r5,lr}
	sub sp, 0x4
	movs r5, 0
	str r5, [sp]
	ldr r4, _081440A4 @ =gSaveBlock1Ptr
	ldr r1, [r4]
	ldr r0, _081440A8 @ =0x000032e4
	adds r1, r0
	ldr r2, _081440AC @ =0x05000053
	mov r0, sp
	bl CpuSet
	ldr r0, [r4]
	ldr r1, _081440B0 @ =0x000032e0
	adds r0, r1
	str r5, [r0]
	add sp, 0x4
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_081440A4: .4byte gSaveBlock1Ptr
_081440A8: .4byte 0x000032e4
_081440AC: .4byte 0x05000053
_081440B0: .4byte 0x000032e0
	thumb_func_end sub_814407C

	thumb_func_start sub_81440B4
sub_81440B4: @ 81440B4
	push {r4,lr}
	sub sp, 0x4
	movs r4, 0
	str r4, [sp]
	bl sav1_get_mevent_buffer_2
	adds r1, r0, 0
	ldr r2, _081440DC @ =0x05000009
	mov r0, sp
	bl CpuSet
	ldr r0, _081440E0 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _081440E4 @ =0x00003430
	adds r0, r1
	str r4, [r0]
	add sp, 0x4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081440DC: .4byte 0x05000009
_081440E0: .4byte gSaveBlock1Ptr
_081440E4: .4byte 0x00003430
	thumb_func_end sub_81440B4

	thumb_func_start sub_81440E8
sub_81440E8: @ 81440E8
	push {lr}
	bl sub_8143FC8
	cmp r0, 0
	bne _081440F6
	movs r0, 0
	b _08144100
_081440F6:
	ldr r0, _08144104 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08144108 @ =0x000032e4
	adds r0, r1
	ldrh r0, [r0]
_08144100:
	pop {r1}
	bx r1
	.align 2, 0
_08144104: .4byte gSaveBlock1Ptr
_08144108: .4byte 0x000032e4
	thumb_func_end sub_81440E8

	thumb_func_start sub_814410C
sub_814410C: @ 814410C
	push {lr}
	adds r2, r0, 0
	ldrb r1, [r2, 0x8]
	movs r0, 0xC0
	ands r0, r1
	cmp r0, 0x40
	bne _08144120
	movs r0, 0x3F
	ands r0, r1
	strb r0, [r2, 0x8]
_08144120:
	pop {r0}
	bx r0
	thumb_func_end sub_814410C

	thumb_func_start sub_8144124
sub_8144124: @ 8144124
	push {lr}
	lsls r0, 16
	ldr r1, _08144138 @ =0xfc180000
	adds r0, r1
	lsrs r0, 16
	cmp r0, 0x13
	bls _0814413C
	movs r0, 0
	b _0814413E
	.align 2, 0
_08144138: .4byte 0xfc180000
_0814413C:
	movs r0, 0x1
_0814413E:
	pop {r1}
	bx r1
	thumb_func_end sub_8144124

	thumb_func_start sub_8144144
sub_8144144: @ 8144144
	push {r4,lr}
	bl sub_81440E8
	lsls r0, 16
	lsrs r4, r0, 16
	adds r0, r4, 0
	bl sub_8144124
	cmp r0, 0
	beq _0814417C
	ldr r1, _08144174 @ =gUnknown_8466F00
	ldr r2, _08144178 @ =0xfffffc18
	adds r0, r4, r2
	lsls r0, 1
	adds r0, r1
	ldrh r0, [r0]
	bl FlagGet
	lsls r0, 24
	lsrs r0, 24
	cmp r0, 0x1
	beq _0814417C
	movs r0, 0x1
	b _0814417E
	.align 2, 0
_08144174: .4byte gUnknown_8466F00
_08144178: .4byte 0xfffffc18
_0814417C:
	movs r0, 0
_0814417E:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8144144

	thumb_func_start sub_8144184
sub_8144184: @ 8144184
	push {lr}
	movs r3, 0
	cmp r3, r1
	bge _081441A6
	adds r2, r0, 0
	adds r2, 0x8
_08144190:
	ldrh r0, [r2, 0xE]
	cmp r0, 0
	beq _0814419E
	ldrh r0, [r2]
	cmp r0, 0
	beq _0814419E
	adds r3, 0x1
_0814419E:
	adds r2, 0x2
	subs r1, 0x1
	cmp r1, 0
	bne _08144190
_081441A6:
	adds r0, r3, 0
	pop {r1}
	bx r1
	thumb_func_end sub_8144184

	thumb_func_start sub_81441AC
sub_81441AC: @ 81441AC
	push {r4-r7,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	movs r1, 0
	cmp r1, r2
	bge _081441E6
	ldrh r6, [r4, 0x2]
	movs r0, 0x16
	adds r0, r5
	mov r12, r0
_081441C0:
	lsls r3, r1, 1
	mov r7, r12
	ldrh r0, [r7]
	cmp r0, r6
	beq _081441D8
	adds r0, r5, 0
	adds r0, 0x8
	adds r0, r3
	ldrh r0, [r0]
	ldrh r3, [r4]
	cmp r0, r3
	bne _081441DC
_081441D8:
	movs r0, 0x1
	b _081441E8
_081441DC:
	movs r7, 0x2
	add r12, r7
	adds r1, 0x1
	cmp r1, r2
	blt _081441C0
_081441E6:
	movs r0, 0
_081441E8:
	pop {r4-r7}
	pop {r1}
	bx r1
	thumb_func_end sub_81441AC

	thumb_func_start sub_81441F0
sub_81441F0: @ 81441F0
	push {lr}
	adds r1, r0, 0
	ldrh r0, [r1, 0x2]
	cmp r0, 0
	beq _08144210
	ldrh r1, [r1]
	cmp r1, 0
	beq _08144210
	ldr r0, _0814420C @ =0x0000019b
	cmp r1, r0
	bhi _08144210
	movs r0, 0x1
	b _08144212
	.align 2, 0
_0814420C: .4byte 0x0000019b
_08144210:
	movs r0, 0
_08144212:
	pop {r1}
	bx r1
	thumb_func_end sub_81441F0

	thumb_func_start sub_8144218
sub_8144218: @ 8144218
	push {lr}
	bl sub_8143FC8
	cmp r0, 0
	beq _0814424C
	ldr r0, _08144240 @ =gSaveBlock1Ptr
	ldr r3, [r0]
	ldr r0, _08144244 @ =0x000032e4
	adds r2, r3, r0
	ldrb r1, [r2, 0x8]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	bne _0814424C
	ldr r1, _08144248 @ =0x00003434
	adds r0, r3, r1
	ldrb r1, [r2, 0x9]
	bl sub_8144184
	b _0814424E
	.align 2, 0
_08144240: .4byte gSaveBlock1Ptr
_08144244: .4byte 0x000032e4
_08144248: .4byte 0x00003434
_0814424C:
	movs r0, 0
_0814424E:
	pop {r1}
	bx r1
	thumb_func_end sub_8144218

	thumb_func_start sub_8144254
sub_8144254: @ 8144254
	push {r4-r6,lr}
	adds r5, r0, 0
	ldr r6, _08144280 @ =gSaveBlock1Ptr
	ldr r0, [r6]
	ldr r1, _08144284 @ =0x000032e4
	adds r0, r1
	ldrb r4, [r0, 0x9]
	adds r0, r5, 0
	bl sub_81441F0
	cmp r0, 0
	beq _081442BE
	ldr r0, [r6]
	ldr r1, _08144288 @ =0x00003434
	adds r0, r1
	adds r1, r5, 0
	adds r2, r4, 0
	bl sub_81441AC
	cmp r0, 0
	beq _08144298
	b _081442BE
	.align 2, 0
_08144280: .4byte gSaveBlock1Ptr
_08144284: .4byte 0x000032e4
_08144288: .4byte 0x00003434
_0814428C:
	ldrh r0, [r5, 0x2]
	strh r0, [r1]
	ldrh r0, [r5]
	strh r0, [r2]
	movs r0, 0x1
	b _081442C0
_08144298:
	movs r3, 0
	cmp r3, r4
	bge _081442BE
	ldr r0, [r6]
	ldr r6, _081442C8 @ =0x0000343c
	adds r2, r0, r6
	adds r6, 0xE
	adds r1, r0, r6
_081442A8:
	ldrh r0, [r2, 0xE]
	cmp r0, 0
	bne _081442B4
	ldrh r0, [r2]
	cmp r0, 0
	beq _0814428C
_081442B4:
	adds r2, 0x2
	adds r1, 0x2
	adds r3, 0x1
	cmp r3, r4
	blt _081442A8
_081442BE:
	movs r0, 0
_081442C0:
	pop {r4-r6}
	pop {r1}
	bx r1
	.align 2, 0
_081442C8: .4byte 0x0000343c
	thumb_func_end sub_8144254

	thumb_func_start sub_81442CC
sub_81442CC: @ 81442CC
	push {r4-r7,lr}
	mov r7, r10
	mov r6, r9
	mov r5, r8
	push {r5-r7}
	sub sp, 0x4
	adds r4, r0, 0
	movs r0, 0
	str r0, [sp]
	ldr r2, _08144328 @ =0x05000019
	mov r0, sp
	adds r1, r4, 0
	bl CpuSet
	ldr r0, _0814432C @ =0x00000101
	str r0, [r4]
	movs r0, 0x1
	strh r0, [r4, 0x4]
	str r0, [r4, 0x8]
	strh r0, [r4, 0xC]
	str r0, [r4, 0x10]
	bl sub_8143FC8
	cmp r0, 0
	beq _08144330
	bl sav1_get_mevent_buffer_1
	ldrh r0, [r0]
	strh r0, [r4, 0x14]
	bl sav1_get_mevent_buffer_2
	adds r1, r4, 0
	adds r1, 0x20
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	ldm r0!, {r2,r3,r5}
	stm r1!, {r2,r3,r5}
	bl sav1_get_mevent_buffer_1
	ldrb r1, [r0, 0x9]
	adds r0, r4, 0
	adds r0, 0x44
	strb r1, [r0]
	b _08144332
	.align 2, 0
_08144328: .4byte 0x05000019
_0814432C: .4byte 0x00000101
_08144330:
	strh r0, [r4, 0x14]
_08144332:
	adds r5, r4, 0
	adds r5, 0x4C
	ldr r0, _081443BC @ =gSaveBlock2Ptr
	mov r8, r0
	adds r6, r4, 0
	adds r6, 0x45
	adds r7, r4, 0
	adds r7, 0x50
	movs r1, 0x5C
	adds r1, r4
	mov r9, r1
	movs r2, 0x60
	adds r2, r4
	mov r10, r2
	ldr r0, _081443C0 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r3, _081443C4 @ =0x00003458
	adds r2, r0, r3
	adds r1, r4, 0
	adds r1, 0x16
	movs r3, 0x3
_0814435C:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, 0x2
	adds r1, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _0814435C
	mov r0, r8
	ldr r1, [r0]
	adds r1, 0xA
	adds r0, r5, 0
	bl CopyUnalignedWord
	mov r2, r8
	ldr r1, [r2]
	adds r0, r6, 0
	bl StringCopy
	ldr r0, _081443C0 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r3, _081443C8 @ =0x00002ca0
	adds r2, r0, r3
	adds r1, r7, 0
	movs r3, 0x5
_0814438C:
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, 0x2
	adds r1, 0x2
	subs r3, 0x1
	cmp r3, 0
	bge _0814438C
	ldr r1, _081443CC @ =RomHeaderGameCode
	mov r0, r9
	movs r2, 0x4
	bl memcpy
	ldr r0, _081443D0 @ =RomHeaderSoftwareVersion
	ldrb r0, [r0]
	mov r5, r10
	strb r0, [r5]
	add sp, 0x4
	pop {r3-r5}
	mov r8, r3
	mov r9, r4
	mov r10, r5
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_081443BC: .4byte gSaveBlock2Ptr
_081443C0: .4byte gSaveBlock1Ptr
_081443C4: .4byte 0x00003458
_081443C8: .4byte 0x00002ca0
_081443CC: .4byte RomHeaderGameCode
_081443D0: .4byte RomHeaderSoftwareVersion
	thumb_func_end sub_81442CC

	thumb_func_start sub_81443D4
sub_81443D4: @ 81443D4
	push {lr}
	adds r2, r0, 0
	ldr r1, [r2]
	ldr r0, _0814440C @ =0x00000101
	cmp r1, r0
	bne _08144410
	ldrh r1, [r2, 0x4]
	movs r3, 0x1
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08144410
	ldr r0, [r2, 0x8]
	ands r0, r3
	cmp r0, 0
	beq _08144410
	ldrh r1, [r2, 0xC]
	adds r0, r3, 0
	ands r0, r1
	cmp r0, 0
	beq _08144410
	ldr r0, [r2, 0x10]
	movs r1, 0xF
	ands r0, r1
	cmp r0, 0
	beq _08144410
	movs r0, 0x1
	b _08144412
	.align 2, 0
_0814440C: .4byte 0x00000101
_08144410:
	movs r0, 0
_08144412:
	pop {r1}
	bx r1
	thumb_func_end sub_81443D4

	thumb_func_start sub_8144418
sub_8144418: @ 8144418
	push {lr}
	ldrh r1, [r1, 0x14]
	cmp r1, 0
	bne _08144424
	movs r0, 0
	b _08144430
_08144424:
	ldrh r0, [r0]
	cmp r0, r1
	beq _0814442E
	movs r0, 0x2
	b _08144430
_0814442E:
	movs r0, 0x1
_08144430:
	pop {r1}
	bx r1
	thumb_func_end sub_8144418

	thumb_func_start sub_8144434
sub_8144434: @ 8144434
	push {r4-r6,lr}
	adds r6, r0, 0
	adds r4, r1, 0
	adds r5, r4, 0
	adds r5, 0x20
	adds r4, 0x44
	ldrb r1, [r4]
	adds r0, r5, 0
	bl sub_8144184
	ldrb r2, [r4]
	subs r4, r2, r0
	cmp r4, 0
	bne _08144454
	movs r0, 0x1
	b _0814446E
_08144454:
	adds r0, r5, 0
	adds r1, r6, 0
	bl sub_81441AC
	cmp r0, 0
	beq _08144464
	movs r0, 0x3
	b _0814446E
_08144464:
	cmp r4, 0x1
	beq _0814446C
	movs r0, 0x2
	b _0814446E
_0814446C:
	movs r0, 0x4
_0814446E:
	pop {r4-r6}
	pop {r1}
	bx r1
	thumb_func_end sub_8144434

	thumb_func_start sub_8144474
sub_8144474: @ 8144474
	push {r4,lr}
	movs r3, 0
	adds r2, r0, 0
	adds r2, 0x16
_0814447C:
	ldrh r0, [r2]
	ldrh r4, [r1]
	cmp r0, r4
	beq _08144488
	movs r0, 0
	b _08144494
_08144488:
	adds r1, 0x2
	adds r2, 0x2
	adds r3, 0x1
	cmp r3, 0x3
	ble _0814447C
	movs r0, 0x1
_08144494:
	pop {r4}
	pop {r1}
	bx r1
	thumb_func_end sub_8144474

	thumb_func_start sub_814449C
sub_814449C: @ 814449C
	push {lr}
	adds r2, r0, 0
	adds r2, 0x20
	adds r0, 0x44
	ldrb r1, [r0]
	adds r0, r2, 0
	bl sub_8144184
	pop {r1}
	bx r1
	thumb_func_end sub_814449C

	thumb_func_start sub_81444B0
sub_81444B0: @ 81444B0
	push {lr}
	adds r2, r0, 0
	cmp r1, 0x4
	bhi _081444FC
	lsls r0, r1, 2
	ldr r1, _081444C4 @ =_081444C8
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081444C4: .4byte _081444C8
	.align 2, 0
_081444C8:
	.4byte _081444DC
	.4byte _081444E0
	.4byte _081444E4
	.4byte _081444E8
	.4byte _081444F4
_081444DC:
	ldrh r0, [r2, 0x20]
	b _0814450A
_081444E0:
	ldrh r0, [r2, 0x22]
	b _0814450A
_081444E4:
	ldrh r0, [r2, 0x24]
	b _0814450A
_081444E8:
	adds r0, r2, 0
	bl sub_814449C
	lsls r0, 16
	lsrs r0, 16
	b _0814450A
_081444F4:
	adds r0, r2, 0
	adds r0, 0x44
	ldrb r0, [r0]
	b _0814450A
_081444FC:
	ldr r0, _08144510 @ =gUnknown_8466F28	"C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/mevent.c"
	ldr r1, _08144514 @ =0x00000339
	ldr r2, _08144518 @ =gUnknown_8466F5C	"0"
	movs r3, 0x1
	bl AGBAssert
	movs r0, 0
_0814450A:
	pop {r1}
	bx r1
	.align 2, 0
_08144510: .4byte gUnknown_8466F28
_08144514: .4byte 0x00000339
_08144518: .4byte gUnknown_8466F5C
	thumb_func_end sub_81444B0

	thumb_func_start sub_814451C
sub_814451C: @ 814451C
	push {r4,lr}
	adds r4, r0, 0
	ldr r2, _08144544 @ =gSaveBlock1Ptr
	ldr r0, [r2]
	ldr r1, _08144548 @ =0x000032e4
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x3
	ands r0, r1
	adds r3, r2, 0
	cmp r0, 0x2
	bne _081445B6
	movs r2, 0
	cmp r4, 0x4
	bhi _08144582
	lsls r0, r4, 2
	ldr r1, _0814454C @ =_08144550
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08144544: .4byte gSaveBlock1Ptr
_08144548: .4byte 0x000032e4
_0814454C: .4byte _08144550
	.align 2, 0
_08144550:
	.4byte _08144564
	.4byte _08144570
	.4byte _0814457C
	.4byte _08144582
	.4byte _08144582
_08144564:
	ldr r0, [r3]
	ldr r1, _0814456C @ =0x00003434
	b _08144580
	.align 2, 0
_0814456C: .4byte 0x00003434
_08144570:
	ldr r0, [r3]
	ldr r1, _08144578 @ =0x00003436
	b _08144580
	.align 2, 0
_08144578: .4byte 0x00003436
_0814457C:
	ldr r0, [r3]
	ldr r1, _08144598 @ =0x00003438
_08144580:
	adds r2, r0, r1
_08144582:
	cmp r2, 0
	bne _081445A4
	ldr r0, _0814459C @ =gUnknown_8466F28	"C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/mevent.c"
	movs r1, 0xD9
	lsls r1, 2
	ldr r2, _081445A0 @ =gUnknown_8466F5C	"0"
	movs r3, 0x1
	bl AGBAssert
	b _081445B6
	.align 2, 0
_08144598: .4byte 0x00003438
_0814459C: .4byte gUnknown_8466F28
_081445A0: .4byte gUnknown_8466F5C
_081445A4:
	ldrh r0, [r2]
	adds r0, 0x1
	strh r0, [r2]
	lsls r0, 16
	lsrs r0, 16
	ldr r1, _081445BC @ =0x000003e7
	cmp r0, r1
	bls _081445B6
	strh r1, [r2]
_081445B6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_081445BC: .4byte 0x000003e7
	thumb_func_end sub_814451C

	thumb_func_start sub_81445C0
sub_81445C0: @ 81445C0
	push {lr}
	cmp r0, 0x4
	bhi _081446A4
	lsls r0, 2
	ldr r1, _081445D0 @ =_081445D4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_081445D0: .4byte _081445D4
	.align 2, 0
_081445D4:
	.4byte _081445E8
	.4byte _08144610
	.4byte _08144638
	.4byte _08144660
	.4byte _08144684
_081445E8:
	ldr r0, _08144604 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	ldr r1, _08144608 @ =0x000032e4
	adds r0, r2, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	bne _081446A4
	ldr r1, _0814460C @ =0x00003434
	adds r0, r2, r1
	ldrh r0, [r0]
	b _081446B2
	.align 2, 0
_08144604: .4byte gSaveBlock1Ptr
_08144608: .4byte 0x000032e4
_0814460C: .4byte 0x00003434
_08144610:
	ldr r0, _0814462C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	ldr r1, _08144630 @ =0x000032e4
	adds r0, r2, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	bne _081446A4
	ldr r1, _08144634 @ =0x00003434
	adds r0, r2, r1
	ldrh r0, [r0, 0x2]
	b _081446B2
	.align 2, 0
_0814462C: .4byte gSaveBlock1Ptr
_08144630: .4byte 0x000032e4
_08144634: .4byte 0x00003434
_08144638:
	ldr r0, _08144654 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	ldr r1, _08144658 @ =0x000032e4
	adds r0, r2, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x2
	bne _081446A4
	ldr r1, _0814465C @ =0x00003434
	adds r0, r2, r1
	ldrh r0, [r0, 0x4]
	b _081446B2
	.align 2, 0
_08144654: .4byte gSaveBlock1Ptr
_08144658: .4byte 0x000032e4
_0814465C: .4byte 0x00003434
_08144660:
	ldr r0, _0814467C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08144680 @ =0x000032e4
	adds r0, r1
	ldrb r1, [r0, 0x8]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	bne _081446A4
	bl sub_8144218
	lsls r0, 16
	lsrs r0, 16
	b _081446B2
	.align 2, 0
_0814467C: .4byte gSaveBlock1Ptr
_08144680: .4byte 0x000032e4
_08144684:
	ldr r0, _0814469C @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _081446A0 @ =0x000032e4
	adds r2, r0, r1
	ldrb r1, [r2, 0x8]
	movs r0, 0x3
	ands r0, r1
	cmp r0, 0x1
	bne _081446A4
	ldrb r0, [r2, 0x9]
	b _081446B2
	.align 2, 0
_0814469C: .4byte gSaveBlock1Ptr
_081446A0: .4byte 0x000032e4
_081446A4:
	ldr r0, _081446B8 @ =gUnknown_8466F28	"C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/mevent.c"
	ldr r1, _081446BC @ =0x00000391
	ldr r2, _081446C0 @ =gUnknown_8466F5C	"0"
	movs r3, 0x1
	bl AGBAssert
	movs r0, 0
_081446B2:
	pop {r1}
	bx r1
	.align 2, 0
_081446B8: .4byte gUnknown_8466F28
_081446BC: .4byte 0x00000391
_081446C0: .4byte gUnknown_8466F5C
	thumb_func_end sub_81445C0

	thumb_func_start sub_81446C4
sub_81446C4: @ 81446C4
	ldr r1, _081446CC @ =gUnknown_203F3BC
	movs r0, 0
	str r0, [r1]
	bx lr
	.align 2, 0
_081446CC: .4byte gUnknown_203F3BC
	thumb_func_end sub_81446C4

	thumb_func_start sub_81446D0
sub_81446D0: @ 81446D0
	push {r4,r5,lr}
	lsls r0, 16
	lsrs r0, 16
	adds r4, r0, 0
	ldr r5, _08144700 @ =gUnknown_203F3BC
	movs r0, 0
	str r0, [r5]
	cmp r4, 0
	beq _0814470E
	bl sub_8143FC8
	cmp r0, 0
	beq _0814470C
	ldr r0, _08144704 @ =gSaveBlock1Ptr
	ldr r0, [r0]
	ldr r1, _08144708 @ =0x000032e4
	adds r0, r1
	ldrh r0, [r0]
	cmp r0, r4
	bne _0814470C
	movs r0, 0x1
	str r0, [r5]
	b _0814470E
	.align 2, 0
_08144700: .4byte gUnknown_203F3BC
_08144704: .4byte gSaveBlock1Ptr
_08144708: .4byte 0x000032e4
_0814470C:
	movs r0, 0
_0814470E:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81446D0

	thumb_func_start sub_8144714
sub_8144714: @ 8144714
	push {lr}
	adds r2, r0, 0
	ldr r0, _08144738 @ =gUnknown_203F3BC
	ldr r0, [r0]
	cmp r0, 0
	beq _08144782
	cmp r2, 0x1
	beq _08144758
	cmp r2, 0x1
	bcc _08144744
	cmp r2, 0x2
	bne _08144774
	ldr r0, _0814473C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	ldr r0, _08144740 @ =0x00003478
	adds r2, r0
	movs r0, 0x2
	b _08144762
	.align 2, 0
_08144738: .4byte gUnknown_203F3BC
_0814473C: .4byte gSaveBlock1Ptr
_08144740: .4byte 0x00003478
_08144744:
	ldr r0, _08144750 @ =gSaveBlock1Ptr
	ldr r2, [r0]
	ldr r0, _08144754 @ =0x00003464
	adds r2, r0
	movs r0, 0
	b _08144762
	.align 2, 0
_08144750: .4byte gSaveBlock1Ptr
_08144754: .4byte 0x00003464
_08144758:
	ldr r0, _0814476C @ =gSaveBlock1Ptr
	ldr r2, [r0]
	ldr r0, _08144770 @ =0x00003464
	adds r2, r0
	movs r0, 0x1
_08144762:
	movs r3, 0x5
	bl sub_8144824
	b _08144782
	.align 2, 0
_0814476C: .4byte gSaveBlock1Ptr
_08144770: .4byte 0x00003464
_08144774:
	ldr r0, _08144788 @ =gUnknown_8466F28	"C:/WORK/POKeFRLG/src/pm_lgfr_ose/source/mevent.c"
	movs r1, 0xF7
	lsls r1, 2
	ldr r2, _0814478C @ =gUnknown_8466F5C	"0"
	movs r3, 0x1
	bl AGBAssert
_08144782:
	pop {r0}
	bx r0
	.align 2, 0
_08144788: .4byte gUnknown_8466F28
_0814478C: .4byte gUnknown_8466F5C
	thumb_func_end sub_8144714

	thumb_func_start sub_8144790
sub_8144790: @ 8144790
	push {lr}
	sub sp, 0x4
	movs r0, 0
	str r0, [sp]
	ldr r0, _081447B0 @ =gSaveBlock1Ptr
	ldr r1, [r0]
	ldr r0, _081447B4 @ =0x00003464
	adds r1, r0
	ldr r2, _081447B8 @ =0x0500000a
	mov r0, sp
	bl CpuSet
	add sp, 0x4
	pop {r0}
	bx r0
	.align 2, 0
_081447B0: .4byte gSaveBlock1Ptr
_081447B4: .4byte 0x00003464
_081447B8: .4byte 0x0500000a
	thumb_func_end sub_8144790

	thumb_func_start sub_81447BC
sub_81447BC: @ 81447BC
	push {r4,r5,lr}
	adds r5, r0, 0
	adds r4, r1, 0
	movs r1, 0
	cmp r1, r2
	bge _081447DE
	ldr r0, [r4]
	cmp r0, r5
	beq _081447DE
	adds r3, r4, 0
_081447D0:
	adds r3, 0x4
	adds r1, 0x1
	cmp r1, r2
	bge _081447DE
	ldr r0, [r3]
	cmp r0, r5
	bne _081447D0
_081447DE:
	cmp r1, r2
	bne _08144800
	subs r3, r1, 0x1
	cmp r3, 0
	ble _081447FA
	lsls r0, r3, 2
	subs r0, 0x4
	adds r2, r0, r4
_081447EE:
	ldr r0, [r2]
	str r0, [r2, 0x4]
	subs r2, 0x4
	subs r3, 0x1
	cmp r3, 0
	bgt _081447EE
_081447FA:
	str r5, [r4]
	movs r0, 0x1
	b _0814481C
_08144800:
	adds r3, r1, 0
	cmp r3, 0
	ble _08144818
	lsls r0, r3, 2
	subs r0, 0x4
	adds r2, r0, r4
_0814480C:
	ldr r0, [r2]
	str r0, [r2, 0x4]
	subs r2, 0x4
	subs r3, 0x1
	cmp r3, 0
	bgt _0814480C
_08144818:
	str r5, [r4]
	movs r0, 0
_0814481C:
	pop {r4,r5}
	pop {r1}
	bx r1
	thumb_func_end sub_81447BC

	thumb_func_start sub_8144824
sub_8144824: @ 8144824
	push {r4,lr}
	adds r4, r0, 0
	adds r0, r1, 0
	adds r1, r2, 0
	adds r2, r3, 0
	bl sub_81447BC
	cmp r0, 0
	beq _0814483C
	adds r0, r4, 0
	bl sub_814451C
_0814483C:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8144824

	.align 2, 0 @ Don't pad with nop.
