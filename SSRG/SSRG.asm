; ===========================================================================
; ---------------------------------------------------------------------------
; SSRG Splash Screen
; ---------------------------------------------------------------------------

SSRGScreen:
		move.b	#$E1,d0				; set music ID to "stop music"
		jsr	PlaySound_Special			; play ID
		jsr	ClearPLC				; clear pattern load cues list
		jsr	Pal_FadeFrom				; fade palettes out
		jsr	ClearScreen				; clear the plane mappings
		lea	($FFFFB000).w,a1			; load object ram address to a1
		moveq	#$00,d0					; clear d0
		move.w	#$01FF,d1				; set repeat times

SRG_ClearObjects:
		move.l	d0,(a1)+				; clear object ram
		move.l	d0,(a1)+				; ''
		move.l	d0,(a1)+				; ''
		move.l	d0,(a1)+				; ''
		dbf	d1,SRG_ClearObjects			; repeat til all object slots are cleared
		move	#$2700,sr				; set IRQ's (Disable interrupts)
		lea	($C00004).l,a6				; load VDP address port address
		move.w	#$8700,(a6)				; set backdrop colour to the very first colour
		move.w	#$8B03,(a6)				; set scroll mode to horizontal sliced (by line)
		move.l	#$FFF8FFD4,($FFFFF616).w		; set Y scroll positions
		move.l	#$40200000,($C00004).l			; set VDP to V-Ram write mode with address
		lea	ArtMain_SSRG(pc),a0			; load compressed art address
		jsr	NemDec					; decompress and dump
		move.l	#$40000001,($C00004).l			; set VDP to V-Ram write mode with address
		lea	ArtSquare_SSRG(pc),a0			; load compressed art address
		jsr	NemDec					; decompress and dump
		move.l	#$40000002,($C00004).l			; set VDP to V-Ram write mode with address
		lea	ArtSonic_SSRG(pc),a0			; load compressed art address
		jsr	NemDec					; decompress and dump
		move.l	#$50000002,($C00004).l			; set VDP to V-Ram write mode with address
		lea	ArtLink_SSRG(pc),a0			; load compressed art address
		jsr	NemDec					; decompress and dump
		lea	MapLink_SSRG(pc),a0			; load compressed mappings address
		lea	($FFFF0000).l,a1			; set temporary ram space to dump to
		jsr	KosDec					; decompress and dump
		lea	($FFFF0000).l,a5			; load mappings to read
		moveq	#$1F,d0					; set number of columns
		moveq	#$00,d1					; set number of rows
		move.l	#$4C080003,d2				; set to write to FG plane
		bsr	MapScreen				; write to the map plane
		lea	MapMain_SSRG(pc),a0			; load compressed mappings address
		lea	($FFFF0000).l,a1			; set temporary ram space to dump to
		jsr	KosDec					; decompress and dump
		lea	MapSquare_SSRG(pc),a0			; load compressed mappings address
		lea	($FFFF4000).l,a1			; set temporary ram space to dump to
		jsr	KosDec					; decompress and dump
		lea	Pal_SSRG(pc),a0				; load palette address to a0
		lea	($FFFFFB80).w,a1			; load palette buffer address to a1
		moveq	#$07,d7					; set repeat times

SRG_DumpPal:
		move.l	(a0)+,(a1)+				; dump palette
		move.l	(a0)+,(a1)+				; ''
		move.l	(a0)+,(a1)+				; ''
		move.l	(a0)+,(a1)+				; ''
		dbf	d7,SRG_DumpPal				; repeat until done
		lea	($FFFFB000).w,a1			; load object ram to a1
		move.b	#$01,(a1)				; set "S"
		move.b	#$02,$40(a1)				; set "S"
		move.b	#$03,$80(a1)				; set "R"
		move.b	#$04,$C0(a1)				; set "G"
		move	#$2300,sr				; set IRQ's (Enable interrupts)
		jsr	Pal_FadeTo				; fade palettes in
		moveq	#$00,d0					; clear d0
		move.l	d0,($FFFF7800).l			; reset SSRG timer/flags
		move.l	d0,($FFFF7804).l			; ''
		move.l	d0,($FFFF7808).l			; ''

; ---------------------------------------------------------------------------
; SSRG Splash Screen main loop
; ---------------------------------------------------------------------------

SSRGScreen_Loop:
		move.b	#$04,($FFFFF62A).w			; set V-Blank routine to run
		jsr	DelayProgram				; hult til V-Blank begins
		addq.w	#$01,($FFFF7800).l			; increase timer
		lea	($FFFFB000).w,a0			; load "S" object ram
		bsr	ObjectLetters				; run "S"
		lea	$40(a0),a0				; load "S" object ram
		bsr	ObjectLetters				; run "S"
		lea	$40(a0),a0				; load "R" object ram
		bsr	ObjectLetters				; run "R"
		lea	$40(a0),a0				; load "G" object ram
		bsr	ObjectLetters				; run "G"
		lea	$40(a0),a0				; load Square object ram
		bsr	ObjectSquare				; run Square
		lea	($FFFFB140).w,a0			; load Neon Sonic object ram
		bsr	ObjectSonicNeon				; run Neon Sonic
		bsr	SRG_ScrollFG				; scroll the FG plane correctly
		bsr	SRG_DrawFG				; draw the FG plane correctly
		jsr	BuildSprites				; present all object sprites on screen
		tst.b	($FFFFF605).w				; has player 1 pressed start button?
		bmi	SSRGScreen_Finish			; if so, branch
		cmpi.w	#$0200,($FFFF7800).l			; has timer finished?
		blt	SSRGScreen_Loop				; if not, loop

SSRGScreen_Finish:
		move.b	#$04,($FFFFF600).w			; set the screen mode to Title Screen
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to control the FG scrolling
; ---------------------------------------------------------------------------

SRG_ScrollFG:
		lea	($FFFFE1CC).w,a1			; load the horizontal scroll buffer address
		moveq	#$00,d0					; clear d0
		move.w	($FFFF7800).l,d0			; load timer as position
		addi.w	#$0030,d0				; increase to scroll in sooner
		cmpi.w	#$00F7,d0				; has timer reached finish?
		bge	SRG_FinFGScroll				; if not, branch
		add.w	d0,d0					; multiply by 2
		neg.w	d0					; negate to move left insted
		swap	d0					; send left for FG
		moveq	#$1F,d7					; set repeat times

SRG_SFG_Scroll01:
		move.l	d0,(a1)+				; dump to buffer
		dbf	d7,SRG_SFG_Scroll01			; repeat til this section is done

SRG_FinFGScroll:
		lea	($FFFFE000).w,a1			; load the horizontal scroll buffer address
		move.w	($FFFF7808).l,d0			; set BG position
		move.w	#$00DF,d7				; set repeat times

SRG_SBG_Scroll02:
		addq.w	#$02,a1					; skip FG
		move.w	d0,(a1)+				; dump BG
		dbf	d7,SRG_SBG_Scroll02			; repeat for all scanlines
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to control the FG map/drawing
; ---------------------------------------------------------------------------

SRG_DrawFG:
		moveq	#$00,d0					; clear d0
		move.w	($FFFF7800).l,d0			; load timer as position
		add.w	d0,d0					; multiply by 2
		subi.w	#$0040,d0				; subtract starting point
		cmpi.w	#$0110,d0				; has the scrolling surpassed the starting or ending par?
		bhi	SRG_DFG_FlashOn				; if so, branch
		move	#$2700,sr				; set IRQ's (Disable interrupts)
		lea	($FFFF0000).l,a4			; load map buffer space address to a4
		lea	($C00000).l,a5				; load VDP data port address to a5
		lea	$04(a5),a6				; load VDP address port address to a6
		move.l	#$47040003,d6				; set starting V-Ram
		andi.w	#$01F8,d0				; get within 8 pixels
		lsr.w	#$02,d0					; divide by 4
		move.w	d0,d1					; copy to d1
		swap	d0					; align
		add.l	d0,d6					; add to V-Ram address
		adda.w	d1,a4					; add to map buffer address
		move.w	#$8F80,(a6)				; set increment mode to 80 (new line)
		move.w	#$2000,d1				; prepare palette line add value
		move.l	d6,(a6)					; set VDP mode and address
		move.w	(a4),d0					; load map tile
		add.w	d1,d0					; increase palette to next line
		move.w	d0,(a5)					; save map tile to V-Ram
		lea	$46(a4),a4				; advance to next line
		move.w	(a4),d0					; load map tile
		add.w	d1,d0					; increase palette to next line
		move.w	d0,(a5)					; save map tile to V-Ram
		lea	$46(a4),a4				; advance to next line
		move.w	(a4),d0					; load map tile
		add.w	d1,d0					; increase palette to next line
		move.w	d0,(a5)					; save map tile to V-Ram
		move.w	#$8F02,(a6)				; set increment mode to 02 (standard word)
		move	#$2300,sr				; set IRQ's (Enable interrupts)
		rts						; return

SRG_DFG_FlashOn:
		subi.w	#$0170,d0				; minus starting point
		bmi	SRG_DFG_NoDraw				; if not reached the starting point, branch
		moveq	#$00,d5					; set tile add value (Light)
		cmpi.w	#$0060,d0				; has it reached PASSED the ending point?
		bhi	SRG_DFG_NoDraw				; if so, branch to skip the lot
		cmpi.w	#$0050,d0				; has it reached the ending point?
		bhi	SRG_DFG_DrawFlash			; if so, branch for lights on
		andi.b	#$08,d0					; get within 8
		beq	SRG_DFG_DrawFlash			; if from 0 to 7 insted of 8 to F, branch
		move.w	#$2000,d5				; set tile add value (Faded)

SRG_DFG_DrawFlash:
		lea	($FFFF0000).l,a5			; load mappings to read
		moveq	#$22,d0					; set number of columns
		moveq	#$02,d1					; set number of rows
		move.l	#$47040003,d2				; set to write to FG plane
		bsr	MapScreenAdd				; write to the map plane

SRG_DFG_NoDraw:
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to control a Neon Sonic object
; ---------------------------------------------------------------------------

ObjectSonicNeon:
		tst.b	$24(a0)					; has the object alread been setup?
		bne	OSN_SetupDone				; if so, branch
		move.b	#$01,(a0)				; engine doesn't like the ID being null
		move.w	#$6400,$02(a0)				; set V-Ram address read
		move.l	#ObjSonNeonMap,$04(a0)			; set mappings to use
		move.l	#$000000DE,$08(a0)			; set starting X and Y positions
	;	move.w	#$2020,$18(a0)				; set out of distance display & width
		move.b	#$20,$16(a0)				; set height
		move.w	#$00C0,$2A(a0)				; set timer
		move.w	#$0400,$10(a0)				; set X speed
		addq.b	#$02,$24(a0)				; increase routine counter

OSN_SetupDone:
		tst.w	$2A(a0)					; has timer finished?
		beq	OSN_MoveIn				; if not, branch
		subq.w	#$01,$2A(a0)				; decrease timer
		rts						; return

OSN_MoveIn:
		cmpi.b	#$02,$24(a0)				; is the routine counter still at sonic moving?
		bgt	OSN_NoStop				; if not, branch
		cmpi.w	#$00DE,$08(a0)				; has sonic moved to the square yet?
		blt	OSN_NoStop				; if not, branch
		move.w	#$00DE,$08(a0)				; set him directly at the square
		clr.w	$10(a0)					; stop sonic moving (no X speed)
		moveq	#$3C,d0				; set to play spinning SFX
		jsr	PlaySound_Special			; play SFX
		addq.b	#$02,$24(a0)				; increase routine counter

OSN_NoStop:
		addi.w	#$0040,$2C(a0)				; increase map speed
		move.b	$2C(a0),d0				; load current map speed
		cmpi.b	#$06,d0					; has the map ID supassed 5?
		blt	OSN_NoResetAni				; if not, branch
		moveq	#$00,d0					; reset to 0
		move.w	d0,$2C(a0)				; reset map speed

OSN_NoResetAni:
		move.b	d0,$1A(a0)				; set map ID
		move.w	($FFFF7800).l,d0			; load timer
		andi.b	#$07,d0					; keep within 8 frames
		bne	OSN_NoCyclePalette			; if it's not been 8 frames, branch
		lea	($FFFFFB68).w,a1			; load palette green buffer address to a1
		lea	(a1),a2					; '' to a2
		move.w	(a1)+,d0				; store first colour
		move.w	(a1)+,(a2)+				; shift colours back
		move.w	(a1)+,(a2)+				; ''
		move.w	(a1),(a2)+				; ''
		move.w	d0,(a1)					; save first colour as last

OSN_NoCyclePalette:
		bsr	SpeedToPosHud				; convert speed to position
		jmp	DisplaySprite				; save object for displaying

; ===========================================================================
; ---------------------------------------------------------------------------
ObjSonNeonMap:	dc.w	ObjSon00-ObjSonNeonMap			; 00
		dc.w	ObjSon01-ObjSonNeonMap			; 01
		dc.w	ObjSon02-ObjSonNeonMap			; 02
		dc.w	ObjSon03-ObjSonNeonMap			; 03
		dc.w	ObjSon04-ObjSonNeonMap			; 04
		dc.w	ObjSon05-ObjSonNeonMap			; 05
; ---------------------------------------------------------------------------
ObjSon00:	dc.b	$04
		dc.b	$EB,$0D,$00,$00,$EC
		dc.b	$FB,$09,$00,$08,$EC
		dc.b	$FB,$06,$00,$0E,$04
		dc.b	$0B,$04,$00,$14,$EC
ObjSon01:	dc.b	$02
		dc.b	$EC,$0D,$00,$00,$ED
		dc.b	$FC,$0E,$00,$16,$F5
ObjSon02:	dc.b	$02
		dc.b	$ED,$09,$00,$22,$F3
		dc.b	$FD,$0A,$00,$28,$F3
ObjSon03:	dc.b	$04
		dc.b	$EB,$09,$00,$22,$F4
		dc.b	$FB,$09,$00,$31,$EC
		dc.b	$FB,$06,$00,$37,$04
		dc.b	$0B,$04,$00,$3D,$EC
ObjSon04:	dc.b	$02
		dc.b	$EC,$09,$00,$22,$F3
		dc.b	$FC,$0E,$00,$3F,$EB
ObjSon05:	dc.b	$03
		dc.b	$ED,$0D,$00,$00,$EC
		dc.b	$FD,$0C,$00,$4B,$F4
		dc.b	$05,$09,$00,$4F,$F4
		even
; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to control the Square much like objects
; ---------------------------------------------------------------------------

ObjectSquare:
		moveq	#$00,d0					; clear d0
		move.b	$24(a0),d0				; load routine counter
		move.w	OS_Index(pc,d0.w),d0			; load correct PC add address
		jmp	OS_Index(pc,d0.w)			; add and jump

; ===========================================================================
; ---------------------------------------------------------------------------
OS_Index:	dc.w	OS_Startup-OS_Index			; 00
		dc.w	OL_WaitTime-OS_Index			; 02
		dc.w	OS_PlaySound-OS_Index			; 04
		dc.w	OS_SpinIn-OS_Index			; 06
		dc.w	OS_UpAndLand-OS_Index			; 08
		dc.w	OS_FinishSpin-OS_Index			; 0A
; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
; Startup
; ---------------------------------------------------------------------------

OS_Startup:
		addq.b	#$02,$24(a0)				; increase routine counter
		move.l	#$FF400020,$08(a0)			; set starting X and Y positions
		move.w	#$00A0,$2A(a0)				; set time to wait for
		move.l	#$08000000,$10(a0)			; set X and Y starting speeds
		bra	UpdateScrollPositions			; update positions

; ===========================================================================
; ---------------------------------------------------------------------------
; Playing spin sound once
; ---------------------------------------------------------------------------

OS_PlaySound:
		addq.b	#$02,$24(a0)				; increase routine counter
		moveq	#-$4A,d0				; set to play spin release SFX
		jsr	PlaySound_Special			; play SFX

; ===========================================================================
; ---------------------------------------------------------------------------
; Spinning in and hitting the SSRG letters
; ---------------------------------------------------------------------------

OS_SpinIn:
		addq.w	#$02,$2A(a0)				; increase spin counter
		move.w	$08(a0),d0				; load X position
		cmpi.w	#$0060,d0				; has the square hit the letters?
		blt	OS_Display				; if not, branch
		addq.b	#$02,$24(a0)				; increase routine counter
		moveq	#$5F,d0				; set to play spiked chandelier SFX
		jsr	PlaySound_Special			; play SFX
		move.l	#$FF00FC00,$10(a0)			; set X and Y bounce off speeds
		lea	($FFFFB010).l,a1			; load object ram's X and Y speeds
		move.l	#$0300FC00,(a1)				; save "S" X and Y speeds
		move.l	#$0300FD00,$40(a1)			; save "S" X and Y speeds
		move.l	#$0300FE00,$80(a1)			; save "R" X and Y speeds
		move.l	#$0300FF00,$C0(a1)			; save "G" X and Y speeds
		bra	OS_Display				; continue

; ===========================================================================
; ---------------------------------------------------------------------------
; Spinning in and hitting the SSRG letters
; ---------------------------------------------------------------------------

OS_UpAndLand:
		subq.w	#$08,$2A(a0)				; increase spin counter
		addi.w	#$0020,$12(a0)				; increase gravity
		bmi	OS_Display				; if not going down, branch
		cmpi.w	#$0020,$0A(a0)				; has the square hit the ground?
		blt	OS_Display				; if not, branch
		move.w	#$0020,$0A(a0)				; set to the ground
		moveq	#$00,d0					; clear d0
		move.l	d0,$10(a0)				; clear X and Y speeds
		addq.b	#$02,$24(a0)				; increase routine counter
		move.w	#$0A40,$2C(a0)				; set speed of spin
		bra	OS_Display				; continue

; ===========================================================================
; ---------------------------------------------------------------------------
; Finishing the spin by slowing down
; ---------------------------------------------------------------------------

OS_FinishSpin:
		move.w	$2C(a0),d0				; has spin speed finished?
		bpl	OS_NoFinish				; if not, branch
		lea	($FFFFFB62).w,a1			; load palette buffer address
		cmpi.w	#$0E0E,(a1)				; has the colour finished changing?
		beq	OS_NoColour01				; if so, branch
		addi.w	#$0202,(a1)				; increase the colour

OS_NoColour01:
		addq.w	#$04,a1					; goto next 2nd colour
		cmpi.w	#$0404,(a1)				; has the colour finished changing?
		beq	OS_Display				; if so, branch
		subi.w	#$0202,(a1)				; decrease the colour
		bra	OS_Display				; continue

OS_NoFinish:
		subi.w	#$18,d0					; decrease spin speed
		move.w	d0,d1					; copy to d1
		lsr.w	#$08,d1					; get left byte only
		sub.w	d1,$2A(a0)				; subtract that from the spin position
		move.w	d0,$2C(a0)				; update spin speed

; ===========================================================================
; ---------------------------------------------------------------------------
; Displaying the square
; ---------------------------------------------------------------------------

OS_Display:
		jsr	SpeedToPosHud				; convert speed to position
		bsr	UpdateScrollPositions			; update positions

OS_DiplayEnd:
		move.w	$2A(a0),-(sp)				; store spin counter
		move	#$2700,sr				; set IRQ's (Disable interrupts)
		moveq	#$10,d0					; set number of columns
		moveq	#$10,d1					; set number of rows
		move.l	#$60000003,d2				; set to write to BG plane
		moveq	#$00,d5					; set blank tile
		bsr	MapScreenSingle				; write to the map plane
		move.w	(sp)+,d0				; load spin counter
		andi.w	#$0018,d0				; keep in range
		add.w	d0,d0					; multiply by 2
		lea	MapRamData(pc,d0.w),a4			; load map ram address data
		movea.l	(a4)+,a5				; load mappings to read
		move.l	(a4)+,d2				; load V-Ram address
		move.w	(a4)+,d0				; load X draw amount
		move.w	(a4)+,d1				; load Y draw amount
		bsr	MapScreen				; write to the map plane
		move	#$2300,sr				; set IRQ's (Enable interrupts)
		rts						; return

; ---------------------------------------------------------------------------
; Updating the scroll positions for the BG plane
; ---------------------------------------------------------------------------

UpdateScrollPositions:
		move.w	$08(a0),($FFFF7808).l			; load X position as X scroll BG
		move.w	$0A(a0),d0				; load Y position
		neg.w	d0					; negate opposite direction
		move.w	d0,($FFFFF618).w			; save as Y scroll BG
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
MapRamData:	dc.l	$FFFF4000				; Map address
		dc.l	$61040003				; V-Ram address
		dc.l	$000B000B				; X and Y draw amount
		dc.l	$00000000				; null/spare
		dc.l	$FFFF4120				; ''
		dc.l	$60000003				; ''
		dc.l	$000F000F				; ''
		dc.l	$00000000				; ''
		dc.l	$FFFF4320				; ''
		dc.l	$60000003				; ''
		dc.l	$00100010				; ''
		dc.l	$00000000				; ''
		dc.l	$FFFF4562				; ''
		dc.l	$60000003				; ''
		dc.l	$000F000F				; ''
		dc.l	$00000000				; ''
; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to control the "SSRG" letter sprites
; ---------------------------------------------------------------------------

ObjectLetters:
		moveq	#$00,d0					; clear d0
		move.b	$24(a0),d0				; load routine counter
		move.w	OL_Index(pc,d0.w),d0			; load correct PC add address
		jmp	OL_Index(pc,d0.w)			; add and jump

; ===========================================================================
; ---------------------------------------------------------------------------
OL_Index:	dc.w	OL_Startup-OL_Index			; 00
		dc.w	OL_WaitTime-OL_Index			; 02
		dc.w	OL_FlyUp-OL_Index			; 04
		dc.w	OL_Spring-OL_Index			; 06
		dc.w	OL_SlowDown-OL_Index			; 08
		dc.w	OL_Idle-OL_Index			; 0A
; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
; Object data	dc.w	$XXXX,$YYYY,$VRAM,$TIME,$XSPD,$YSPD,$MAPI,$????
; ---------------------------------------------------------------------------
OL_Data:	dc.w	$0182,$0180,$0001,$0001,$FF00,$F400,$0000,$0000
		dc.w	$01A8,$0180,$0001,$0011,$FF00,$F400,$0000,$0000
		dc.w	$01D0,$0180,$0011,$0021,$FF00,$F400,$0000,$0000
		dc.w	$01F8,$0180,$0021,$0031,$FF00,$F400,$0000,$0000
; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
; Startup
; ---------------------------------------------------------------------------

OL_Startup:
		addq.b	#$02,$24(a0)				; increase routine counter
		move.b	(a0),d0					; load object type
		subq.b	#$01,d0					; decrease by 1
		lsl.w	#$04,d0					; multiply by 10
		lea	OL_Data(pc,d0.w),a1			; load correct data address
		move.l	(a1)+,$08(a0)				; set X & Y position
		move.w	(a1)+,$02(a0)				; set V-Ram
		move.w	(a1)+,$2A(a0)				; set Timer
		move.l	(a1)+,$10(a0)				; set X and Y speeds
		move.w	(a1)+,d0				; load map ID
		move.b	d0,$1A(a0)				; set map ID
		move.l	#ObjLet_Map,$04(a0)			; set mappings to use
	;	move.w	#$2020,$18(a0)				; set out of distance display & width
		move.b	#$20,$16(a0)				; set height

; ===========================================================================
; ---------------------------------------------------------------------------
; Delay/Time wait
; ---------------------------------------------------------------------------

OL_WaitTime:
		subq.w	#$01,$2A(a0)				; decrease timer
		bne	OL_WT_Wait				; if not finished, branch
		addq.b	#$02,$24(a0)				; increase routine counter

OL_WT_Wait:
		jmp	DisplaySprite				; save object for displaying

; ===========================================================================
; ---------------------------------------------------------------------------
; Flying up and landing
; ---------------------------------------------------------------------------

OL_FlyUp:
		jsr	SpeedToPosHud				; convert speed to position
		addi.w	#$0040,$12(a0)				; increase speed
		bmi	OL_NoStopDown				; if still moving up, branch
		move.w	#$00F0,d0				; set Y speed to check
		cmp.w	$0A(a0),d0				; has the letter dropped to the landing line?
		bge	OL_NoStopDown				; if not, branch
		addq.b	#$02,$24(a0)				; increase routine counter

OL_NoStopDown:
		jmp	DisplaySprite				; save object for displaying

; ===========================================================================
; ---------------------------------------------------------------------------
; Springing under the land and back up again
; ---------------------------------------------------------------------------

OL_Spring:
		jsr	SpeedToPosHud				; convert speed to position
		subi.w	#$0080,$12(a0)				; decrease speed
		bpl	OL_NoStopUp				; if still moving down, branch
		move.w	#$00E8,d0				; set Y speed to check
		cmp.w	$0A(a0),d0				; has the letter moved up to the landing line?
		blt	OL_NoStopUp				; if not, branch
		clr.w	$12(a0)					; set no Y speed
		clr.w	$2A(a0)					; clear timer
		addq.b	#$02,$24(a0)				; increase routine counter

OL_NoStopUp:
		jmp	DisplaySprite				; save object for displaying

; ===========================================================================
; ---------------------------------------------------------------------------
; Slowing the letter down on X
; ---------------------------------------------------------------------------

OL_SlowDown:
		tst.w	$10(a0)					; is there any left movement on X?
		bpl	OL_NoMove				; if not, branch
		jsr	SpeedToPosHud				; convert speed to position
		addi.w	#$0020,$10(a0)				; increase X speed to slow down to move right
		jmp	DisplaySprite				; save object for displaying

OL_NoMove:
		addi.b	#$01,$2A(a0)				; increase timer
		move.b	$2A(a0),d0				; load timer
		andi.b	#$01,d0					; get only the odd bit
		beq	OL_Idle					; if null, branch to skip (Slows the flash down)
		moveq	#$40,d0					; set colour line to check value on
		cmp.b	$02(a0),d0				; has colour line reached last?
		bgt	OL_NoFinish				; if not, branch
		andi.b	#$9F,$02(a0)				; reset colour line to first
		addq.b	#$02,$24(a0)				; increase routine counter
		moveq	#$00,d0					; clear d0
		move.l	d0,$10(a0)				; clear X and Y speeds
		andi.w	#$01FF,$0A(a0)				; reset Y position range correctly
		move.w	#$00E4,$0A(a0)				; set Y position
		jmp	DisplaySprite				; save object for displaying

OL_NoFinish:
		addi.b	#$20,$02(a0)				; increase palette line being used

; ===========================================================================
; ---------------------------------------------------------------------------
; Idle (Finish)
; ---------------------------------------------------------------------------

OL_Idle:
		bsr	SpeedToPosHud				; convert speed to position
		cmpi.w	#$00E4,$0A(a0)				; has the letter moved up to the landing line?
		beq	OL_CheckXSpeed				; if so, branch
		blt	OL_CheckYSpeed				; if not, branch
		clr.w	$12(a0)					; set no Y speed
		move.w	#$00E4,$0A(a0)				; set Y position
		bra	OL_CheckXSpeed				; continue

OL_CheckYSpeed:
		addi.w	#$0080,$12(a0)				; increase gravity

OL_CheckXSpeed:
		move.w	#$0040,d0				; set speed decrease
		tst.w	$10(a0)					; is there any X speed?
		beq	OL_Display				; if not, branch
		bpl	OL_DecreaseRight			; if it's moving right, branch
		neg.w	d0					; negate decreasing speed

OL_DecreaseRight:
		sub.w	d0,$10(a0)				; decrease speed

OL_Display:
		jmp	DisplaySprite				; save object for displaying

; ===========================================================================
; ---------------------------------------------------------------------------
ObjLet_Map:	dc.w	ObjLet_SSRG-ObjLet_Map			; 00
; ---------------------------------------------------------------------------
ObjLet_SSRG:	dc.b	$01
		dc.b	$F0,$0F,$00,$00,$F0
		even
; ---------------------------------------------------------------------------
; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to convert speed to position for HUD objects
; ---------------------------------------------------------------------------

SpeedToPosHud:
		move.w	$10(a0),d0				; load X speed
		ext.l	d0					; extend incase it's negative
		asl.l	#$08,d0					; multiply by 100
		swap	d0					; get X add position
		add.w	d0,$08(a0)				; save new X position
		move.w	$12(a0),d0				; load Y speed
		ext.l	d0					; extend incase it's negative
		asl.l	#$08,d0					; multiply by 100
		add.l	d0,$0A(a0)				; save new Y position
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to map tile to VDP screen
; ---------------------------------------------------------------------------

MapScreen:
		lea	($C00000).l,a6				; load VDP data port address to a6
		lea	$04(a6),a4				; load VDP address port address to a4
		move.l	#$00800000,d4				; prepare line add value

MapScreen_Row:
		move.l	d2,(a4)					; set VDP to VRam write mode
		move.w	d0,d3					; reload number of columns

MapScreen_Column:
		move.w	(a5)+,(a6)				; dump map to VDP map slot
		dbf	d3,MapScreen_Column			; repeat til columns have dumped
		add.l	d4,d2					; increae to next row on VRam
		dbf	d1,MapScreen_Row			; repeat til all rows have dumped
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to map tile to VDP screen (Adding contents of d5)
; ---------------------------------------------------------------------------

MapScreenAdd:
		lea	($C00000).l,a6				; load VDP data port address to a6
		lea	$04(a6),a4				; load VDP address port address to a4
		move.l	#$00800000,d4				; prepare line add value

MapScreenAdd_Row:
		move.l	d2,(a4)					; set VDP to VRam write mode
		move.w	d0,d3					; reload number of columns

MapScreenAdd_Column:
		move.w	(a5)+,d6				; load map ID
		add.w	d5,d6					; add d5 contents
		move.w	d6,(a6)					; dump map to VDP map slot
		dbf	d3,MapScreenAdd_Column			; repeat til columns have dumped
		add.l	d4,d2					; increae to next row on VRam
		dbf	d1,MapScreenAdd_Row			; repeat til all rows have dumped
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; Subroutine to map a single tile to VDP screen
; ---------------------------------------------------------------------------

MapScreenSingle:
		lea	($C00000).l,a6				; load VDP data port address to a6
		lea	$04(a6),a4				; load VDP address port address to a4
		move.l	#$00800000,d4				; prepare line add value

MapScreenSingle_Row:
		move.l	d2,(a4)					; set VDP to VRam write mode
		move.w	d0,d3					; reload number of columns

MapScreenSingle_Column:
		move.w	d5,(a6)					; dump map to VDP map slot
		dbf	d3,MapScreenSingle_Column		; repeat til columns have dumped
		add.l	d4,d2					; increae to next row on VRam
		dbf	d1,MapScreenSingle_Row			; repeat til all rows have dumped
		rts						; return

; ===========================================================================
; ---------------------------------------------------------------------------
; SSRG Data
; ---------------------------------------------------------------------------
Pal_SSRG:	dc.w	$0000,$0400,$0800,$0C00,$0E00,$0EEE,$0AAA,$0888
		dc.w	$0666,$0444,$0222,$0000,$0000,$0000,$0000,$0000
		dc.w	$0000,$0444,$0888,$0CCC,$0EEE,$0888,$0666,$0444
		dc.w	$0222,$0000,$0000,$0000,$0000,$0000,$0000,$0000
		dc.w	$0000,$0422,$0844,$0C66,$0E88,$0000,$0000,$0000
		dc.w	$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
		dc.w	$0000,$0404,$0808,$0E0E,$00E0,$00C0,$00A0,$0080
		dc.w	$0000,$0000,$0000,$0000,$0000,$0000,$0000,$0000
		even
; ---------------------------------------------------------------------------
ArtMain_SSRG:	incbin	"SSRG/ArtMain.nem"
		even
ArtSquare_SSRG:	incbin	"SSRG/ArtSquare.nem"
		even
ArtSonic_SSRG:	incbin	"SSRG/ArtSonic.nem"
		even
ArtLink_SSRG:	incbin	"SSRG/ArtLink.nem"
		even
; ---------------------------------------------------------------------------
MapMain_SSRG:	incbin	"SSRG/MapMain.kos"
		even
MapSquare_SSRG:	incbin	"SSRG/MapSquare.kos"
		even
MapLink_SSRG:	incbin	"SSRG/MapLink.kos"
		even
; ---------------------------------------------------------------------------
; ===========================================================================