; ===========================================================================
; ---------------------------------------------------------------------------
; Flags section. None of this is required, but I added it here to
; make it easier to debug built ROMS! If you would like easier
; assistance from Natsumi, please keep this section intact!
; ---------------------------------------------------------------------------
	dc.b "AMPS-v2.1"		; ident str

	if safe
		dc.b "s"		; safe mode enabled

	else
		dc.b " "		; safe mode disabled
	endif

	if FEATURE_FM6
		dc.b "F6"		; FM6 enabled
	endif

	if FEATURE_SFX_MASTERVOL
		dc.b "SM"		; sfx ignore master volume
	endif

	if FEATURE_UNDERWATER
		dc.b "UW"		; underwater mode enabled
	endif

	if FEATURE_MODULATION
		dc.b "MO"		; modulation enabled
	endif

	if FEATURE_MODENV
		dc.b "ME"		; modulation envelope enabled
	endif

	if FEATURE_PORTAMENTO
		dc.b "PM"		; portamento enabled
	endif

	if FEATURE_BACKUP
		dc.b "BA"		; backup enabled
	endif

	if FEATURE_SOUNDTEST
		dc.b "ST"		; soundtest enabled
	endif
; ===========================================================================
; ---------------------------------------------------------------------------
; Define music and SFX
; ---------------------------------------------------------------------------

	opt oz-				; disable zero-offset optimization
	if safe=0
		nolist			; if in safe mode, list data section.
	endif

__mus =		MusOff

MusicIndex:
	; extra
	ptrMusic Title, $00, Menu, $00, AA1, $20, AA2, $20
	ptrMusic BB1, $20, BB2, $20, CC1, $20, CC2, $20
	ptrMusic DD1, $20, DD2, $20, EE1, $20, EE2, $20
	ptrMusic FF1, $20, FF2, $20, GG1, $20, GG2, $20
	ptrMusic GG3, $20, Boss1, $20, Boss2, $20, Boss3, $20
	ptrMusic Special, $20, Emerald, $20, Invincible, $20
	ptrMusic Outro, $00, FBoss1, $20, FBoss2, $20, Credits1, $00
	ptrMusic Credits2, $00, Credits3, $00, Extra1, $20, Extra2, $20
	ptrMusic Extra3, $20, Extra4, $20, Extra6, $20
	ptrMusic Extra7, $20, Extra8, $20, Bonus1, $00, Bonus2, $00
	ptrMusic Bonus3, $00, Bonus4, $00, Bonus5, $00, Bonus6, $00
	ptrMusic Bonus7, $00
	ptrMusic SEGA, $00

MusCount =	__mus-MusOff		; number of installed music tracks
SFXoff =	__mus			; first SFX ID
__sfx =		SFXoff
; ---------------------------------------------------------------------------

SoundIndex:
	ptrSFX	1, RingRight
	ptrSFX	0, RingLeft, RingLoss, Splash, Break, Jump, Roll, Dash, Skid
	ptrSFX	0, AirDing, Bubble, Drown, SpikeHit, Death, Spindash, BossHit
	ptrSFX	0, FireShield, BubbleShield, ElectricShield, Flying, FlyTired
	ptrSFX	0, FireAttack, BubbleAttack, ElectricAttack, InstaAttack, Grab
	ptrSFX	0, GlideLand, GroundSlide, Shield, SuperTransform, SuperAlt
	ptrSFX	0, Flipper, Switch, Starpost, Signpost, Register, SuperEmerald
	ptrSFX	0, Collapse, BridgeCollapse, TrapDoor, Bumper, SmallBumpers, Clank
	ptrSFX	0, FanLatch, Explode, MissileExplode, MissileThrow, MissileShoot
	ptrSFX	0, Projectile, LevelProjectile, BossProjectile, Lazer, BossLazer
	ptrSFX	0, DoorOpen, DoorMove, DoorClose, FlamethrowerQuiet, PushBlock
	ptrSFX	0, SpikeMove, IceSpikes, FrostPuff, ThumpBoss, FloorThump, Thump
	ptrSFX	0, Crash, FlipBridge, BlockConveyor, Spring, SpringLatch, Blast
	ptrSFX	0, LaunchGrab, LaunchReady, LaunchGo, FloorLauncher, TubeLauncher
	ptrSFX	0, WaterfallSplash, SandSplash, SandwallRise, Transporter, Alarm
	ptrSFX	0, MushroomBounce, WeatherMachine, ChopTree, ChopStuck, LavaBall
	ptrSFX	0, PulleyMove, TunnelBooster, BalloonPlatform, Balloon, Charging
	ptrSFX	0, GravityMachine, Bouncy, GhostAppear, ChainTension, ChainTick
	ptrSFX	0, GravityLift, EnemyBreath, PulleyGrab, Lightning, Targeting
	ptrSFX	0, Hoverpad, MetalTransform, MetalLand, MetalSpark, BossRecovery
	ptrSFX	0, BossHitFloor, BossActivate, EnergyZap, BossZoom, BossMagma
	ptrSFX	0, BossHand, Continue, Error, BigRing, EnterSS, Goal, ActionBlock
	ptrSFX	0, Diamonds, SlotMachine, BlueSphere, AllSpheres, Perfect, Geyser
	ptrSFX	0, Countdown, DropDash, FMJump, FMWarning
	ptrSFX	$80, SlideSkidQuiet, WaterSkid, WaveHover, FanSmall, FanBig
	ptrSFX	$80, FlamethrowerLoud, GravityTunnel, TurbineHum, GumballTab
	ptrSFX	$80, ConveyorPlatform, MagneticSpike, WindQuiet, WindLoud
	ptrSFX	$80, Rumble, BigRumble, SpikeBalls, LightTunnel, CannonTurn
	ptrSFX	$80, LeafBlower, LavaFall, BossPanic, LargeShip, EggmanSiren
	ptrSFX	$80, Rising, BossRotate, DeathEggRiseLoud, DeathEggRiseQuiet

SFXcount =	__sfx-SFXoff		; number of intalled sound effects
SFXlast =	__sfx
; ===========================================================================
; ---------------------------------------------------------------------------
; Define samples
; ---------------------------------------------------------------------------

__samp =	$80
SampleList:
	sample $0000, Stop, Stop			; 80 - Stop sample (DO NOT EDIT)
	sample $0100, Snare, Stop			; 81 - Snare
	sample $0100, HighTom, Stop		; 82 - High Tom
	sample $0100, MidTom, Stop			; 83 - Mid Tom
	sample $0100, LowTom, Stop			; 84 - Low Tom
	sample $00CD, LowTom, Stop, LowerTom		; 85 - Lower Tom

	sample $0100, Kick, Stop			; 86 - Kick
	sample $0100, KickSnare, Stop			; 87 - Kick Snare
	sample $0100, CrashCymbal, Stop			; 88 - Crash Cymbal
	sample $0100, RideCymbal, Stop			; 89 - Ride Cymbal
	sample $0100, MetalBlock, Stop, HighMetalBlock	; 8A - High Metal Hit
	sample $00D0, MetalBlock, Stop, LowMetalBlock	; 8B - Low Metal Hit
	sample $0100, MutedWood, Stop			; 8C - Muted Wood Block
	sample $0100, CowBell, Stop, HighCowBell	; 8D - High Cow Bell
	sample $00C7, CowBell, Stop, LowCowBell		; 8E - Low Cow Bell

	sample $0100, Clap, Stop			; 8F - Clap
	sample $0100, ElecTom, Stop, HighElecTom	; 90 - High Electric Tom
	sample $00C5, ElecTom, Stop, MidElecTom		; 91 - Mid Electric Tom
	sample $00A8, ElecTom, Stop, LowElecTom		; 92 - Low Electric Tom
	sample $008C, ElecTom, Stop, LowerElecTom	; 93 - Lower Electric Tom

	sample $0100, HeavyTom, Stop, HighHeavyTom	; 94 - High Heavy Tom
	sample $00CD, HeavyTom, Stop, MidHeavyTom	; 95 - Mid Heavy Tom
	sample $00B3, HeavyTom, Stop, LowHeavyTom	; 96 - Low Heavy Tom
	sample $0093, HeavyTom, Stop, LowerHeavyTom	; 97 - Lower Heavy Tom

	sample $0100, Timpani, Stop, HighTimpani	; 98 - High Timpani
	sample $00BA, Timpani, Stop, MidTimpani		; 99 - Mid Timpani
	sample $00A9, Timpani, Stop, LowTimpani		; 9A - Low Timpani
	sample $0100, LooseSnare, Stop			; 9B - Loose Snare
	sample $0100, VocalClick, Stop			; 9C - Vocal Click
	sample $0100, VocalKick, Stop			; 9D - Vocal Kick

	sample $0100, VocalSnare, Stop			; 9E - Vocal Snare
	sample $0100, JamHit, Stop			; 9F - Jam! Hit
	sample $0100, JamHitShort, Stop			; A0 - Short Jam! Hit
	sample $0100, GlassKick, Stop			; A1 - Glass Kick
	sample $0100, GlassSmash, Stop			; A2 - Glass Smash

	sample $0100, DanceSnare, Stop			; A3 - Dance Kick Snare
	sample $0100, DanceKick, Stop			; A4 - Dance Kick
	sample $0100, ComeOn, Stop			; A5 - Come On
	sample $0100, HeavySnare, Stop			; A6 - Dance Snare
	sample $0100, LowKick, Stop			; A7 - Low Kick
	sample $0100, LowKickShort, Stop		; A8 - Short Low Kick
	sample $0100, Whoo, Stop			; A9 - Whoo
	sample $0100, Go, Stop				; AA - Go
	sample $0100, SnareGo, Stop			; AB - Go with a Snare
	sample $0100, PowerTom, Stop			; AC - Power Tom

	sample $0100, Wood, Stop, HighWood		; AD - High Wood Block
	sample $00C4, Wood, Stop, LowWood		; AE - Low Wood Block
	sample $0100, Congo, Stop, HighCongo		; AF - High Congo Drum
	sample $00AE, Congo, Stop, LowCongo		; B0 - Low Congo Drum

	sample $0100, CrashHit, Stop			; B1 - Metal Crash Hit
	sample $0100, EchoClap, Stop, HighEchoClap	; B2 - High Echoed Clap
	sample $00C3, EchoClap, Stop, LowEchoClap	; B3 - Low Echoed Clap
	sample $0100, OrchHit, Stop, HighOrchHit	; B4 - High Orchestral Hit
	sample $00EF, OrchHit, Stop, MidOrchHit		; B5 - Mid Orchestral Hit
	sample $0100, KickUh, Stop			; B6 - Kick Uh
	sample $0100, ElecKick, Stop			; B7 - Eletric Kick
	sample $0100, SynthHit, Stop			; B8 - Synth Hit
	sample $0100, SynthHit, Stop, SynthHit2		; B9 - Synth Hit 2

	sample $0100, ReverseCrash, Stop		; BA - Reverse Fading Wind
	sample $0100, Scratch, Stop			; BB - Scratch
	sample $0100, SynthHit3, Stop			; BC - Synth Hit 3
	sample $0100, HeavyKick, Stop			; BD - Heavy Kick
	sample $0100, WhooCrash, Stop			; BE - Crash with a Whoo
	sample $0100, SideStick, Stop			; BF - Side Stick
	sample $0100, KickOh, Stop			; C0 - Kick Oh

	sample $00E1, OrchHit, Stop, LowOrchHit		; C1 - Low Orchestral Hit
	sample $00D1, OrchHit, Stop, LowerOrchHit	; C2 - Lower Orchestral Hit
	sample $00C9, OrchHit, Stop, LowestOrchHit	; C3 - Lowest Orchestral Hit
	sample $010B, OrchHit, Stop, HigherOrchHit	; C4 - Higher Orchestral Hit

	sample $0100, EchoClapS3, Stop, HighEchoClapS3	; C5 - High Echoed Clap (Sonic 3)
	sample $00C3, EchoClapS3, Stop, LowEchoClapS3	; C6 - Low Echoed Clap Hit (Sonic 3)

	sample $0100, SEGAStart, SEGALoop			; C7 - SEGA
	sample $0100, SEGALoop, SEGALoop			; C7 - SEGA
	sample $0100, SEGAEnd, Stop		; C7 - SEGA
; ===========================================================================
; ---------------------------------------------------------------------------
; Define volume envelopes and their data
; ---------------------------------------------------------------------------

vNone =		$00
__venv =	$01

VolEnvs:
	volenv 01, 02, 03, 04, 05, 06, 07, 08
	volenv 09, 0A, 0B, 0C, 0D, 0E, 0F, 10
	volenv 11, 12, 13, 14, 15, 16, 17, 18
	volenv 19, 1A, 1B, 1C, 1D, 1E, 1F, 20
	volenv 21, 22, 23, 24, 25, 26, 27, 28
VolEnvs_End:
; ---------------------------------------------------------------------------

vd0E:
vd01:		dc.b $10, eStop

vd0F:
vd02:		dc.b $00, $10, $20, $30, $40, $7F, eStop

vd03:		dc.b $10, $08, $00, $00, $08, $10, $10, $10
		dc.b $10, $10, $10, $10, $10, $10, $10, $10
		dc.b $10, $18, $18, $18, $20, $20, $20, $28
		dc.b eHold

vd04:		dc.b $00, $00, $10, $18, $20, $20, $28, $28
		dc.b $28, $30, $30, eHold

vd05:		dc.b $18, $00, $08, $08, $08, $10, $18, $20
		dc.b $20, $28, eHold

vd07:		dc.b $01, $0C, $03, $0F, $02, $07, $03, $0F, eReset

vd08:		dc.b $00, $00, $00, $10, $18, $18, $20, $28
		dc.b $30, $38, $40, $48, $50, $58, $60, $7F
		dc.b eStop

vd16:
vd09:		dc.b $18, $10, $08, $08, $00, $00, $08, $10
		dc.b $18, $20, eHold

vd0A:		dc.b $08, $00, $00, $00, $00, $08, $08, $08
		dc.b $10, $10, $10, $18, $18, $18, $18, $20
		dc.b $20, $20, $28, $28, eHold

vd0B:		dc.b $10, $20, $30, $40, $30, $20, $10, $00
		dc.b $F0, eReset

vd19:
vd1B:
vd0C:		dc.b $00, $00, $08, $08, $18, $18, $20, $28
		dc.b eStop

vd0D:		dc.b $00, eHold

vd10:		dc.b $08, $08, $08, $00, $00, $00, eHold

vd11:		dc.b $08, $08, $08, $00, $00, $00, eHold

vd12:		dc.b $18, $00, $08, $08, $08, $10, $08, $20
		dc.b $20, $28, eHold

vd06:
vd13:		dc.b $00, $00, $08, $08, $10, $18, $20, $28
		dc.b $28, $30, $40, $38, $38, $30, eHold

vd14:		dc.b $50, $28, $00, $20, $40, eStop

vd15:		dc.b $00, $00, $00, $10, $18, $18, $20, $28
		dc.b $30, $38, $40, $48, $50, $58, $60, $78
		dc.b eStop

vd17:		dc.b $08, $00, $00, $00, $00, $08, $08, $08
		dc.b $10, $10, $10, $10, $18, $18, $18, $20
		dc.b $20, $20, $28, $28, eHold

vd18:		dc.b $10, $20, $30, $40, $30, $20, $10, $00
		dc.b eReset

vd1A:		dc.b $00, $02, $04, $06, $08, $16, eStop

vd1C:		dc.b $20, $20, $20, $20, $18, $18, $18, $18
		dc.b $10, $10, $10, $10, $08, $08, $08, $08
		dc.b eStop

vd1D:		dc.b $00, $00, $00, $00, $08, $08, $08, $08
		dc.b $10, $10, $10, $10, $18, $18, $18, $18
		dc.b $20, $20, $20, $20, $28, $28, $28, $28
		dc.b $30, $30, $30, $30, $38, $38, $38, $38
		dc.b $40, $40, $40, $40, $48, $48, $48, $48
		dc.b $50, $50, $50, $50, eHold

vd1E:		dc.b $00, $50, eStop

vd1F:		dc.b $00, $10, $20, eHold

vd20:		dc.b $30, $20, $10, $00, $00, $00, $00, $00
		dc.b $08, $10, $20, $30, eHold

vd21:		dc.b $00, $20, $20, $20, $20, $20, $20, $20
		dc.b $20, $20, $20, $30, $30, $30, $40, $40
		dc.b $50, eStop

vd22:		dc.b $00, $10, $18, $20, $30, $38, eHold

vd23:		dc.b $10, $08, $00, $00, $00, $10, $20, $38
		dc.b eHold

vd24:		dc.b $78, $08, $28, eStop

vd25:		dc.b $40, $30, $10, $18, $20, $28, $30, $38
		dc.b $40, $48, $50, $58, $60, $68, $78, $78
		dc.b $7F, eStop

vd26:		dc.b $00, $00, $00, $00, $00, $00, $00, $00
		dc.b $00, $00, $08, $08, $08, $08, $08, $08
		dc.b $08, $08, $08, $08, $10, $10, $10, $10
		dc.b $10, $10, $10, $10, $10, $10, $18, $18
		dc.b $18, $18, $18, $18, $18, $18, $18, $18
		dc.b $20, $20, $20, $20, $20, $20, $20, $20
		dc.b $20, $20, $28, $28, $28, $28, $28, $28
		dc.b $28, $28, $28, $28, $30, $30, $30, $30
		dc.b $30, $30, $30, $30, $30, $30, $38, $38
		dc.b $38, $38, $38, $38, $38, $38, $38, $38
		dc.b $40, $40, $40, $40, $40, $40, $40, $40
		dc.b $40, $40, $48, $48, $48, $48, $48, $48
		dc.b $48, $48, eStop

vd27:		dc.b $00, $10, $10, $10, $18, $18, $18, $20
		dc.b $20, $20, $28, $28, eStop

vd28:		dc.b $00, $00, $00, $08, $08, $08, $10, $10
		dc.b $10, $18, $18, $18, $20, $20, $20, $28
		dc.b $28, $28, $30, $30, $30, $38, eHold
; ===========================================================================
; ---------------------------------------------------------------------------
; Define volume envelopes and their data
; ---------------------------------------------------------------------------

mNone =		$00
__menv =	$01

ModEnvs:
	modenv 01, 02, 03, 04, 05, 06, 07, 08
ModEnvs_End:
; ---------------------------------------------------------------------------

	if FEATURE_MODENV
md02:		dc.b  $00

md01:		dc.b  $01, $02, $01, $00,-$01,-$02,-$03,-$04
		dc.b -$03,-$02,-$01, eHold

md03:		dc.b  $00, $00, $00, $00, $13, $26, $39, $4C
		dc.b  $5F, $72, $7F, $72, eHold

md04:		dc.b  $01, $02, $03, $02, $01, $00,-$01,-$02
		dc.b -$03,-$02,-$01, $00, eLoop, $00

md05:		dc.b  $00, $00, $01, $03, $01, $00,-$01,-$03
		dc.b -$01, $00, eLoop, $02

md06:		dc.b  $00, $00, $00, $00, $00, $0A, $14, $1E
		dc.b  $14, $0A, $00,-$0A,-$14,-$1E,-$14,-$0A
        	dc.b eLoop, $04

md07:		dc.b  $00, $00, $00, $00, $16, $2C, $42, $2C
		dc.b  $16, $00,-$16,-$2C,-$42,-$2C,-$16
		dc.b eLoop,  $03

md08:		dc.b  $01, $02, $03, $04, $03, $02, $01, $00
		dc.b -$01,-$02,-$03,-$04,-$03,-$02,-$01, $00
        	dc.b eLoop, $01
		even
	endif
; ===========================================================================
; ---------------------------------------------------------------------------
; Include music, sound effects and voice bank
; ---------------------------------------------------------------------------

	include "AMPS/Voices.s2a"	; include universal voice bank
	opt ae-				; disable automatic evens
; ---------------------------------------------------------------------------

sfxaddr	incSFX				; include all sfx
musaddr	incMus				; include all music
musend
; ===========================================================================
; ---------------------------------------------------------------------------
; Include samples and filters
; ---------------------------------------------------------------------------

		align	$8000		; must be aligned to bank. By the way, these are also used in Z80.asm. Be sure to check it out
fLog:		incbin "AMPS/filters/Logarithmic.dat"	; logarithmic filter (no filter)
;fLinear:	incbin "AMPS/filters/Linear.dat"	; linear filter (no filter)

dacaddr		dcb.b Z80E_Read*(MaxPitch/$100),$00
SWF_Stop:	dcb.b $8000-(2*Z80E_Read*(MaxPitch/$100)),$80
SWFR_Stop:	dcb.b Z80E_Read*(MaxPitch/$100),$00
; ---------------------------------------------------------------------------

	incSWF	Snare, HighTom, MidTom, LowTom, Kick, KickSnare, CrashCymbal, RideCymbal, MetalBlock, MutedWood, Wood
	incSWF	CowBell, Clap, ElecTom, HeavyTom, Timpani, LooseSnare, VocalClick, VocalKick
	incSWF	VocalSnare, JamHit, JamHitShort, GlassKick, GlassSmash, DanceSnare, DanceKick, Go
	incSWF	ComeOn, HeavySnare, LowKick, LowKickShort, Whoo, SnareGo, PowerTom, LowerKick
	incSWF	Congo, CrashHit, EchoClap, EchoClapS3, KickUh, ElecKick, SynthHit, ReverseCrash
	incSWF	SynthHit3, HeavyKick, WhooCrash, SideStick, KickOh, BigOrchHit, OrchHit, Scratch

	incSWF	SplashCymbal, SlowCongo, Timbale, Clink;, HighCymbal, Weird, Bang, Bing, Gong
	incSWF	SEGAStart, SEGALoop, SEGAEnd
	even
	opt ae+				; enable automatic evens
	list				; continue source listing
; ===========================================================================
