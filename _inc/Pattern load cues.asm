; ---------------------------------------------------------------------------
; Pattern load cues - index
; ---------------------------------------------------------------------------
	dc.w PLC_Main-ArtLoadCues, PLC_Main2-ArtLoadCues
	dc.w PLC_Explode-ArtLoadCues, PLC_GameOver-ArtLoadCues
	dc.w PLC_WOZ-ArtLoadCues, PLC_WOZ2-ArtLoadCues
	dc.w PLC_TJZ-ArtLoadCues, PLC_TJZ2-ArtLoadCues
	dc.w PLC_DDZ-ArtLoadCues, PLC_DDZ2-ArtLoadCues
	dc.w PLC_KVZ-ArtLoadCues, PLC_KVZ2-ArtLoadCues
	dc.w PLC_CCZ-ArtLoadCues, PLC_CCZ2-ArtLoadCues
	dc.w PLC_ABZ-ArtLoadCues, PLC_ABZ2-ArtLoadCues
	dc.w PLC_TitleCard-ArtLoadCues,	PLC_DDZBoss-ArtLoadCues
	dc.w PLC_Signpost-ArtLoadCues, PLC_Prison-ArtLoadCues
	dc.w PLC_SpeStage-ArtLoadCues, PLC_WOZAnimals-ArtLoadCues
	dc.w PLC_TJZAnimals-ArtLoadCues,	PLC_DDZAnimals-ArtLoadCues
	dc.w PLC_KVZAnimals-ArtLoadCues, PLC_CCZAnimals-ArtLoadCues
	dc.w PLC_ABZAnimals-ArtLoadCues, PLC_SpeStResult-ArtLoadCues
	dc.w PLC_Ending-ArtLoadCues, PLC_TryAgain-ArtLoadCues
	dc.w PLC_EggmanABZ2-ArtLoadCues, PLC_FZBoss-ArtLoadCues
	dc.w PLC_SSZAnimals-ArtLoadCues, PLC_SSZ-ArtLoadCues
	dc.w PLC_SSZ2-ArtLoadCues, PLC_WAZ-ArtLoadCues
	dc.w PLC_WAZ2-ArtLoadCues, PLC_FCZ-ArtLoadCues
	dc.w PLC_FCZ2-ArtLoadCues, PLC_RTZ-ArtLoadCues
	dc.w PLC_RTZ2-ArtLoadCues, PLC_SZ-ArtLoadCues
	dc.w PLC_SZ2-ArtLoadCues, PLC_WAZAnimals-ArtLoadCues
	dc.w PLC_FCZAnimals-ArtLoadCues, PLC_RTZAnimals-ArtLoadCues
	dc.w PLC_SZAnimals-ArtLoadCues
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
; Pattern load cues - game/time	over
; ---------------------------------------------------------------------------
PLC_GameOver:	dc.w 0
		dc.l Nem_GameOver	; game/time over
		dc.w $9BC0
; ---------------------------------------------------------------------------
; Pattern load cues - Green Hill
; ---------------------------------------------------------------------------
PLC_WOZ:	dc.w 7
		dc.l Nem_PplRock	; purple rock
		dc.w $6100			; $C80 bytes
		dc.l Nem_Swing		; swinging platform
		dc.w $6D80			; $200 bytes
		dc.l Nem_Bridge		; bridge
		dc.w $6F80			; $100 bytes
		dc.l Nem_Lift		; lift
		dc.w $7080			; $600 bytes
		dc.l Nem_Chopper	; chopper enemy
		dc.w $7680			; $400 bytes
		dc.l Nem_Motobug	; motobug enemy
		dc.w $7A80			; $540 bytes
		dc.l Nem_Coconuts	; coconuts enemy
		dc.w $7F60			; $4C0 bytes
		dc.l Nem_WOZPlatform	; platform
		dc.w $90C0			; $280 bytes

PLC_WOZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
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
PLC_TJZ:		dc.w 0
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480

PLC_TJZ2:	dc.w 3
		dc.l Nem_Spikes		; spikes
		dc.w $8680
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8780
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00
; ---------------------------------------------------------------------------
; Pattern load cues - Marble
; ---------------------------------------------------------------------------
PLC_DDZ:		dc.w 0
		dc.l Nem_Cater		; caterkiller enemy
		dc.w $9FE0

PLC_DDZ2:	dc.w 5
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
		dc.l Nem_DDZBlock	; green	stone block
		dc.w $5700
; ---------------------------------------------------------------------------
; Pattern load cues - Star Light
; ---------------------------------------------------------------------------
PLC_KVZ:	dc.w 8
		dc.l Nem_KVZSpike	; spikeball
		dc.w $6120			; $120 bytes
		dc.l Nem_KVZWall	; breakable wall
		dc.w $6240			; $200 bytes
		dc.l Nem_Basaran	; basaran enemy
		dc.w $6440			; $4E0 bytes
		dc.l Nem_Yadrin		; yadrin enemy
		dc.w $6920			; $7A0 bytes
		dc.l Nem_DDZMetal	; metal	blocks
		dc.w $70C0			; $8A0 bytes
		dc.l Nem_Gargoyle	; gargoyle head
		dc.w $7960			; $220 bytes
		dc.l Nem_Seesaw		; seesaw
		dc.w $7B80			; $580 bytes
		dc.l Nem_WOZDoor	; door
		dc.w $8100			; $80 bytes
		dc.l Nem_TJZSpikeBall	; spiked ball
		dc.w $8180			; $300 bytes

PLC_KVZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
		dc.l Nem_Spikes		; spikesp
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Spring Yard
; ---------------------------------------------------------------------------
PLC_CCZ:	dc.w 6
		dc.l Nem_SpikePole	; spiked pole
		dc.w $7300
		dc.l Nem_CCZSpike2	; spiked ball
		dc.w $7500
		dc.l Nem_CCZBuzz	; buzz bomber enemy
		dc.w $7580
		dc.l Nem_Crabmeat	; crabmeat enemy
		dc.w $7C80
		dc.l Nem_Orbinaut	; orbinaut enemy
		dc.w $8500
		dc.l Nem_Yadrin		; yadrin enemy
		dc.w $8D80
		dc.l Nem_DDZFire		; fireballs
		dc.w $9580

PLC_CCZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
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
PLC_ABZ:	dc.w 4
		dc.l Nem_Fish
		dc.w $A000
		dc.l Nem_ABZPform		; platform
		dc.w $6800
		dc.l Nem_Water		; water	surface
		dc.w $7000
		dc.l Nem_Bubbles	; bubbles and numbers
		dc.w $7200
		dc.l Nem_Fan		; fan
		dc.w $7400

PLC_ABZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
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
		dc.l Nem_TJZPole		; pole that breaks
		dc.w $7BC0

PLC_SSZ2:	dc.w 0
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - White Acropolis
; ---------------------------------------------------------------------------
PLC_WAZ:		dc.w 0
		dc.l Nem_TJZPole		; pole that breaks
		dc.w $7BC0

PLC_WAZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Flame Core
; ---------------------------------------------------------------------------
PLC_FCZ:		dc.w 0
		dc.l Nem_TJZPole		; pole that breaks
		dc.w $7BC0

PLC_FCZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Radical Train
; ---------------------------------------------------------------------------
PLC_RTZ:		dc.w 0
		dc.l Nem_TJZPole		; pole that breaks
		dc.w $7BC0

PLC_RTZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - Soleanna
; ---------------------------------------------------------------------------
PLC_SZ:		dc.w 0
		dc.l Nem_TJZPole		; pole that breaks
		dc.w $7BC0

PLC_SZ2:	dc.w 4
		dc.l Nem_TJZSwitch	; switch
		dc.w $8480			; $C0 bytes
		dc.l Nem_Spikes		; spikes
		dc.w $8680			; $200 bytes
		dc.l Nem_DSpring	; diagonal spring
		dc.w $8880			; $240 bytes
		dc.l Nem_HSpring	; horizontal spring
		dc.w $8B80			; $180 bytes
		dc.l Nem_VSpring	; vertical spring
		dc.w $8E00			; $180 bytes
; ---------------------------------------------------------------------------
; Pattern load cues - title card
; ---------------------------------------------------------------------------
PLC_TitleCard:	dc.w 0
		dc.l Nem_TitleCard
		dc.w $B000
; ---------------------------------------------------------------------------
; Pattern load cues - act 3 boss
; ---------------------------------------------------------------------------
PLC_DDZBoss:	dc.w 4
		dc.l Nem_Eggman		; Eggman main patterns
		dc.w $6000
		dc.l Nem_Swing		; swinging platform
		dc.w $6F00
		dc.l Nem_Exhaust	; exhaust flame
		dc.w $8540
		dc.l Nem_DDZFire		; fireballs
		dc.w $6F80
		dc.l Nem_Weapons	; Eggman's weapons
		dc.w $7280
		dc.l Nem_DDZFire		; fireballs
		dc.w $68A0
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
; Pattern load cues - WOZ animals
; ---------------------------------------------------------------------------
PLC_WOZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - TJZ animals
; ---------------------------------------------------------------------------
PLC_TJZAnimals:	dc.w 1
		dc.l Nem_BlackBird	; blackbird
		dc.w $B000
		dc.l Nem_Seal		; seal
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - DDZ animals
; ---------------------------------------------------------------------------
PLC_DDZAnimals:	dc.w 1
		dc.l Nem_Squirrel	; squirrel
		dc.w $B000
		dc.l Nem_Seal		; seal
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - KVZ animals
; ---------------------------------------------------------------------------
PLC_KVZAnimals:	dc.w 1
		dc.l Nem_Pig		; pig
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - CCZ animals
; ---------------------------------------------------------------------------
PLC_CCZAnimals:	dc.w 1
		dc.l Nem_Pig		; pig
		dc.w $B000
		dc.l Nem_Chicken	; chicken
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - ABZ animals
; ---------------------------------------------------------------------------
PLC_ABZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Chicken	; chicken
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
; Pattern load cues - WAZ animals
; ---------------------------------------------------------------------------
PLC_WAZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - FCZ animals
; ---------------------------------------------------------------------------
PLC_FCZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - RTZ animals
; ---------------------------------------------------------------------------
PLC_RTZAnimals:	dc.w 1
		dc.l Nem_Rabbit		; rabbit
		dc.w $B000
		dc.l Nem_Flicky		; flicky
		dc.w $B280
; ---------------------------------------------------------------------------
; Pattern load cues - SZ animals
; ---------------------------------------------------------------------------
PLC_SZAnimals:	dc.w 1
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
		dc.l Nem_MiniSonic	; mini Sonic
		dc.w $AA20
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
; Pattern load cues - "TRY AGAIN" and "END" screens
; ---------------------------------------------------------------------------
PLC_TryAgain:	dc.w 2
		dc.l Nem_EndEm		; emeralds
		dc.w $78A0
		dc.l Nem_TryAgain	; Eggman
		dc.w $7C20
		dc.l Nem_CreditText	; credits alphabet
		dc.w $B400
; ---------------------------------------------------------------------------
; Pattern load cues - Eggman on ABZ 2
; ---------------------------------------------------------------------------
PLC_EggmanABZ2:	dc.w 2
		dc.l Nem_ABZBlock	; block
		dc.w $A300
		dc.l Nem_ABZ2Eggman	; Eggman
		dc.w $8000
		dc.l Nem_TJZSwitch	; switch
		dc.w $9400
; ---------------------------------------------------------------------------
; Pattern load cues - final boss
; ---------------------------------------------------------------------------
PLC_FZBoss:	dc.w 4
		dc.l Nem_FzEggman	; Eggman after boss
		dc.w $7400
		dc.l Nem_FzBoss		; FZ boss
		dc.w $6000
		dc.l Nem_Eggman		; Eggman main patterns
		dc.w $8000
		dc.l Nem_ABZ2Eggman	; Eggman without ship
		dc.w $8E00
		dc.l Nem_Exhaust	; exhaust flame
		dc.w $A540