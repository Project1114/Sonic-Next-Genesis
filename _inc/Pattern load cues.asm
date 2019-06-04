; ---------------------------------------------------------------------------
; Pattern load cues - index
; ---------------------------------------------------------------------------
	dc.w PLC_Main-ArtLoadCues, PLC_Main2-ArtLoadCues
	dc.w PLC_Explode-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_AAZ-ArtLoadCues, PLC_AAZ2-ArtLoadCues
	dc.w PLC_BBZ-ArtLoadCues, PLC_BBZ2-ArtLoadCues
	dc.w PLC_CCZ-ArtLoadCues, PLC_CCZ2-ArtLoadCues
	dc.w PLC_DDZ-ArtLoadCues, PLC_DDZ2-ArtLoadCues
	dc.w PLC_EEZ-ArtLoadCues, PLC_EEZ2-ArtLoadCues
	dc.w PLC_FFZ-ArtLoadCues, PLC_FFZ2-ArtLoadCues
	dc.w PLC_TitleCard-ArtLoadCues,	PLC_CCZBoss-ArtLoadCues
	dc.w PLC_Signpost-ArtLoadCues, PLC_Prison-ArtLoadCues
	dc.w PLC_SpeStage-ArtLoadCues, PLC_AAZAnimals-ArtLoadCues
	dc.w PLC_BBZAnimals-ArtLoadCues,	PLC_CCZAnimals-ArtLoadCues
	dc.w PLC_DDZAnimals-ArtLoadCues, PLC_CCZAnimals-ArtLoadCues
	dc.w PLC_FFZAnimals-ArtLoadCues, PLC_SpeStResult-ArtLoadCues
	dc.w PLC_Ending-ArtLoadCues, PLC_GGZAnimals-ArtLoadCues
	dc.w PLC_GGZ-ArtLoadCues, PLC_GGZ2-ArtLoadCues
	dc.w PLC_SSZAnimals-ArtLoadCues, PLC_SSZ-ArtLoadCues
	dc.w PLC_SSZ2-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_None-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_None-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_None-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_None-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_None-ArtLoadCues, PLC_None-ArtLoadCues
	dc.w PLC_None-ArtLoadCues, PLC_TornadoSign-ArtLoadCues
	dc.w PLC_Tornado-ArtLoadCues
; ---------------------------------------------------------------------------
; Pattern load cues - standard block 1
; ---------------------------------------------------------------------------
PLC_Main:	dc.w 3
		dc.l Nem_Lamp		; lamppost
		dc.w $8F80
		dc.l Nem_Monitors	; monitors
		dc.w $D000 
		dc.l Nem_Ring		; rings
		dc.w $D800
		dc.l Nem_Hud		; HUD
		dc.w $D940
; ---------------------------------------------------------------------------
; Pattern load cues - standard block 2
; ---------------------------------------------------------------------------
PLC_Main2:	dc.w 0
		dc.l Nem_Monitors	; monitors
		dc.w $D000 
; ---------------------------------------------------------------------------
; Pattern load cues - explosion
; ---------------------------------------------------------------------------
PLC_Explode:	dc.w 0
		dc.l Nem_Explode	; explosion
		dc.w $B480
; ---------------------------------------------------------------------------
; Pattern load cues - Green Hill
; ---------------------------------------------------------------------------
PLC_AAZ:	dc.w 1
		dc.l Nem_Swing		; swinging platform
		dc.w $6D80			; $200 bytes
		dc.l Nem_Bridge		; bridge
		dc.w $6F80			; $100 bytes

PLC_AAZ2:	dc.w 3
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Labyrinth
; ---------------------------------------------------------------------------
PLC_BBZ:		dc.w 2
		dc.l Nem_Spikes		; spikes
		dc.w $8680
		dc.l Nem_RainSnow
		dc.w $6100
		dc.l Nem_Sun
		dc.w $6140

PLC_BBZ2:	dc.w 2
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8780
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00
; ---------------------------------------------------------------------------
; Pattern load cues - Marble
; ---------------------------------------------------------------------------
PLC_CCZ:		dc.w 0
		dc.l Nem_Spikes		; spikes
		dc.w $8680

PLC_CCZ2:	dc.w 2			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Star Light
; ---------------------------------------------------------------------------
PLC_DDZ:	dc.w 0
		dc.l Nem_Spikes		; spikes
		dc.w $8680

PLC_DDZ2:	dc.w 2
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Spring Yard
; ---------------------------------------------------------------------------
PLC_EEZ:	dc.w 0
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes

PLC_EEZ2:	dc.w 2
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Scrap Brain
; ---------------------------------------------------------------------------
PLC_FFZ:	dc.w 2
		dc.l Nem_Fish
		dc.w $A000
		dc.l Nem_Water		; water	surface
		dc.w $7000
		dc.l Nem_Bubbles	; bubbles and numbers
		dc.w $7200

PLC_FFZ2:	dc.w 4
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Scrap Brain
; ---------------------------------------------------------------------------
PLC_GGZ:	dc.w 2
		dc.l Nem_Fish
		dc.w $A000
		dc.l Nem_Water		; water	surface
		dc.w $7000
		dc.l Nem_Bubbles	; bubbles and numbers
		dc.w $7200

PLC_GGZ2:	dc.w 4
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Special Stage
; ---------------------------------------------------------------------------
PLC_SSZ:		dc.w 0
		dc.l Nem_Tornado
		dc.w $8000

PLC_SSZ2:	dc.w 0
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - title card
; ---------------------------------------------------------------------------
PLC_TitleCard:	dc.w 0
		dc.l Nem_TitleCard
		dc.w $B000
; ---------------------------------------------------------------------------
; Pattern load cues - act 3 boss
; ---------------------------------------------------------------------------
PLC_CCZBoss:	dc.w 4
		dc.l Nem_Swing		; swinging platform
		dc.w $6F00
; ---------------------------------------------------------------------------
; Pattern load cues - act 1/2 signpost
; ---------------------------------------------------------------------------
PLC_Signpost:	dc.w 0
		dc.l Nem_SignPost	; signpost
		dc.w $D000
; ---------------------------------------------------------------------------
; Pattern load cues - beta special stage warp effect
; ---------------------------------------------------------------------------
PLC_Prison:	dc.w 0
		dc.l Nem_Prison		; prison capsule
		dc.w $73A0
; ---------------------------------------------------------------------------
; Pattern load cues - special stage
; ---------------------------------------------------------------------------
PLC_SpeStage:	dc.w $10
		dc.l Nem_SSBg	; bubble and cloud background
		dc.w 0
		dc.l Nem_SSFg	; bird and fish	background
		dc.w $4000
		dc.l Nem_Bumper		; bumper
		dc.w $4760
		dc.l Nem_SSGOAL		; GOAL block
		dc.w $4A20
		dc.l Nem_SSUpDown	; UP and DOWN blocks
		dc.w $4C60
		dc.l Nem_SSRBlock	; R block
		dc.w $5E00
		dc.l Nem_SS1UpBlock	; 1UP block
		dc.w $6E00
		dc.l Nem_SSEmStars	; emerald collection stars
		dc.w $7E00
		dc.l Nem_SSRedWhite	; red and white	block
		dc.w $8E00
		dc.l Nem_Ring		; rings
		dc.w $D800
		dc.l Nem_SSGhost	; ghost	block
		dc.w $9E00
		dc.l Nem_SSWBlock	; W block
		dc.w $AE00
		dc.l Nem_SSGlass	; glass	block
		dc.w $BE00
		dc.l Nem_SSEmerald	; emeralds
		dc.w $EE00
		dc.l Nem_SSZone1	; ZONE 1 block
		dc.w $F2E0
		dc.l Nem_SSZone2	; ZONE 2 block
		dc.w $F400
		dc.l Nem_SSZone3	; ZONE 3 block
		dc.w $F520
		dc.l Nem_SSZone4	; ZONE 4 block
		dc.w $F2E0
		dc.l Nem_SSZone5	; ZONE 5 block
		dc.w $F400
		dc.l Nem_SSZone6	; ZONE 6 block
		dc.w $F520
; ---------------------------------------------------------------------------
; Pattern load cues - AAZ animals
; ---------------------------------------------------------------------------
PLC_AAZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - BBZ animals
; ---------------------------------------------------------------------------
PLC_BBZAnimals:	dc.w 1
		dc.l Nem_BlackBird	; blackbird
		dc.w $B000
		dc.l Nem_Seal		; seal
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - CCZ animals
; ---------------------------------------------------------------------------
PLC_CCZAnimals:	dc.w 1
		dc.l Nem_Squirrel	; squirrel
		dc.w $B000
		dc.l Nem_Seal		; seal
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - DDZ animals
; ---------------------------------------------------------------------------
PLC_DDZAnimals:	dc.w 1
		dc.l Nem_Pig		; pig
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - EEZ animals
; ---------------------------------------------------------------------------
PLC_EEZAnimals:	dc.w 1
		dc.l Nem_Pig		; pig
		dc.w $B000
		dc.l Nem_Chicken	; chicken
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - FFZ animals
; ---------------------------------------------------------------------------
PLC_FFZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Chicken	; chicken
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - SSZ animals
; ---------------------------------------------------------------------------
PLC_GGZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - SSZ animals
; ---------------------------------------------------------------------------
PLC_SSZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - special stage results screen
; ---------------------------------------------------------------------------
PLC_SpeStResult:dc.w 1
		dc.l Nem_ResultEm	; emeralds
		dc.w $A820
; ---------------------------------------------------------------------------
; Pattern load cues - ending sequence
; ---------------------------------------------------------------------------
PLC_Ending:	dc.w 9
		dc.l Nem_EndEm		; emeralds
		dc.w $78A0
		dc.l Nem_EndSonic	; Sonic
		dc.w $7C20
		dc.l Nem_Rabbit		; rabbit
		dc.w $AA60
		dc.l Nem_Chicken	; chicken
		dc.w $ACA0
		dc.l Nem_BlackBird	; blackbird
		dc.w $AE60
		dc.l Nem_Seal		; seal
		dc.w $B0A0
		dc.l Nem_Pig		; pig
		dc.w $B260
		dc.l Nem_Flicky		; flicky
		dc.w $B4A0
		dc.l Nem_Squirrel	; squirrel
		dc.w $B660
		dc.l Nem_EndStH		; "SONIC THE HEDGEHOG"
		dc.w $B8A0
; ---------------------------------------------------------------------------
; Pattern load cues - plane sign
; ---------------------------------------------------------------------------
PLC_TornadoSign:	dc.w 0
		dc.l Nem_TornadoSign
		dc.w $D000

; ---------------------------------------------------------------------------
; Pattern load cues - tornado
; ---------------------------------------------------------------------------
PLC_Tornado:	dc.w 0
		dc.l Nem_Tornado
		dc.w $B480

PLC_None:	dc.w 0
		dc.l Nem_ResultEm	; emeralds
		dc.w $A820