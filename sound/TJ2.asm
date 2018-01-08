TJ2_Header:
	sHeaderInit	; Z80 offset is $B355
	sHeaderPatch	TJ2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $00
	sHeaderDAC	TJ2_DAC
	sHeaderFM	TJ2_FM1, $E8, $19
	sHeaderFM	TJ2_FM2, $DC, $10
	sHeaderFM	TJ2_FM3, $E8, $19
	sHeaderFM	TJ2_FM4, $E8, $19
	sHeaderFM	TJ2_FM5, $E8, $17
	sHeaderPSG	TJ2_PSG1, $DC, $05, $00, VolEnv_00
	sHeaderPSG	TJ2_PSG2, $DC, $06, $00, VolEnv_00
	sHeaderPSG	TJ2_PSG3, $00, $03, $00, VolEnv_00

TJ2_FM1:
	sCall		TJ2_Call17
	sPatFM		$01

TJ2_Loop25:
TJ2_Jump8:
	sCall		TJ2_Call18
	sLoop		$01, $02, TJ2_Loop25
	saTranspose	$0C
	ssModZ80	$20, $01, $05, $05
	sPatFM		$04
	sCall		TJ2_Call10
	dc.b sHold, $30, sHold, $30
	sCall		TJ2_Call10
	dc.b sHold, $30
	saTranspose	$F4
	sCall		TJ2_Call11
	dc.b nE6, $0C

TJ2_Loop26:
	dc.b sHold, $18
	saVolFM		$FE
	sLoop		$00, $04, TJ2_Loop26
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop27:
	dc.b nE7, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop27
	saVolFM		$D8
	saVolFM		$08
	ssModZ80	$40, $01, $05, $05

TJ2_Loop28:
	sCall		TJ2_Call12
	sLoop		$00, $02, TJ2_Loop28
	sPatFM		$01
	sJump		TJ2_Jump8

TJ2_Call18:
	ssModZ80	$36, $01, $1B, $FF
	dc.b nE5, $30, sHold, $30
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop23:
	dc.b nE6, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop23
	saVolFM		$D8
	ssModZ80	$36, $01, $1B, $FF
	dc.b nFs5, $30, sHold, $30
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop24:
	dc.b nFs6, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop24
	saVolFM		$D8
	sRet	

TJ2_Call10:
	dc.b nE6, $48, nG6, $18, nFs6, $30, $10, nD6
	dc.b nFs6, nFs6, $24, nE6, $3C, sHold, $30, sHold
	dc.b $30, nE6, $48, nG6, $18, nFs6, $30, $10
	dc.b nG6, nA6, nA6, $24, nG6, $06, nFs6, nE6
	dc.b $30
	sRet	

TJ2_Call17:
	sPatFM		$03
	dc.b nG6, $06, nG6, nG6, nG6, nRst, $18, nG6
	dc.b $06, nG6, nG6, nG6, nRst, $18, nRst, $06
	dc.b nG6, $06, $06, nRst, nG6, $08, $08, $08
	dc.b nRst, $30
	sRet	

TJ2_Call11:
	sPatFM		$05
	ssModZ80	$08, $01, $06, $05
	dc.b sHold, $18, nA5, $0C, nB5, nC6, $24, nB5
	dc.b $0C, nA5, nC6, nB6, nG6, sHold, $24, nD6
	dc.b $0C, nF6, $18, nE6, nD6, $06, nC6, nRst
	dc.b nC6, nRst, nC6, nB5, $0C, nC6, nA5, nRst
	dc.b $18, nD6, $06, nC6, nRst, nC6, nRst, nC6
	dc.b nB5, $0C, nC6, $06, nE5, nRst, nG5, nRst
	dc.b nA5, nRst, nB5, nC6, $24, nB5, $0C, nA5
	dc.b nC6, nB6, nG6, sHold, $24, nD6, $0C, nF6
	dc.b $06, nE6, nRst, nD6, nRst, nC6
	sRet	

TJ2_Call12:
	saTranspose	$0C
	sPatFM		$07
	dc.b nC7, $12, nB6, nA6, $0C, sHold, $06
	saTranspose	$F4
	sPatFM		$08
	dc.b nD5, nE5, nG5, nD5, nE5, nG5, nD5, nC6
	dc.b nC6, nB5, nA5, nRst, nA5, nG5, nA5, nC6
	dc.b nA5
	saTranspose	$0C
	sPatFM		$07
	dc.b nG6, $0C, nA6, nG6, nB6, $12, nG6, nD6
	dc.b $0C, sHold, $0C, nC6, nB5, nG5, nB5, $12
	dc.b nC6, nD6, $0C, sHold, $06, nB5, $12, nD6
	dc.b $0C, nG6
	saTranspose	$F4
	sRet	

TJ2_FM2:
	sPatFM		$00
	sCall		TJ2_Call13

TJ2_Loop21:
TJ2_Jump7:
	sCall		TJ2_Call14
	sLoop		$00, $18, TJ2_Loop21
	sCall		TJ2_Call15
	sCall		TJ2_Call14
	dc.b nA4, $06, $06, nA5, $0C, nA4, $06, nA5
	dc.b nA4, nA4, $06, $06, nG4, nRst, nG4, nRst
	dc.b nG4, nRst, nG4
	sCall		TJ2_Call15
	sCall		TJ2_Call13

TJ2_Loop22:
	sCall		TJ2_Call14
	sCall		TJ2_Call14
	sCall		TJ2_Call16
	sCall		TJ2_Call16
	sLoop		$00, $02, TJ2_Loop22
	sJump		TJ2_Jump7

TJ2_Call13:
	dc.b nE4, $06, nE4, nE4, nE4, nRst, $18, nE4
	dc.b $06, nE4, nE4, nE4, nRst, $18, nRst, $06
	dc.b nE4, $06, $06, nRst, nE4, $08, $08, $08
	dc.b nRst, $30
	sRet	

TJ2_Call14:
	dc.b nA4, $06, $06, nA5, $0C, nA4, $06, nA5
	dc.b nA4, nA4, $06, $06, nA5, nG5, nA4, nA4
	dc.b $06, nG5, nA5, nA4
	sRet	

TJ2_Call15:
	dc.b nF4, $06, $06, nF5, $0C, nF4, $06, nF5
	dc.b nF4, nF4, $06, $06, nF5, nC5, nF4, nF4
	dc.b $06, nC5, nF5, nF4
TJ2_Call16:
	dc.b nG4, $06, $06, nG5, $0C, nG4, $06, nG5
	dc.b nG4, nG4, $06, $06, nG5, nD5, nG4, nG4
	dc.b $06, nD5, nG5, nG4
	sRet	

TJ2_FM3:
	sCall		TJ2_Call8
	sPatFM		$01

TJ2_Loop20:
TJ2_Jump6:
	sCall		TJ2_Call9
	sLoop		$01, $02, TJ2_Loop20
	saTranspose	$0C
	ssModZ80	$00, $00, $00, $00
	saVolFM		$0A
	sPatFM		$04
	dc.b nRst, $0C
	sCall		TJ2_Call10
	dc.b sHold, $30, sHold, $30
	sCall		TJ2_Call10
	dc.b sHold, $30
	saTranspose	$F4
	sCall		TJ2_Call11
	saVolFM		$F6
	sCall		TJ2_Call8
	saVolFM		$0A
	dc.b nRst, $0C
	sCall		TJ2_Call12
	saTranspose	$0C
	sPatFM		$07
	dc.b nC7, $12, nB6, nA6, $0C, sHold, $06
	saTranspose	$F4
	sPatFM		$08
	dc.b nD5, nE5, nG5, nD5, nE5, nG5, nD5, nC6
	dc.b nC6, nB5, nA5, nRst, nA5, nG5, nA5, nC6
	dc.b nA5
	saTranspose	$0C
	sPatFM		$07
	dc.b nG6, $0C, nA6, nG6, nB6, $12, nG6, nD6
	dc.b $0C, sHold, $0C, nC6, nB5, nG5, nB5, $12
	dc.b nC6, nD6, $0C, sHold, $06, nB5, $12, nD6
	dc.b $0C
	saTranspose	$F4
	saVolFM		$F6
	sPatFM		$01
	sJump		TJ2_Jump6

TJ2_Call9:
	ssModZ80	$36, $01, $1B, $FF
	dc.b nC5, $30, sHold, $30
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop18:
	dc.b nC6, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop18
	saVolFM		$D8
	ssModZ80	$36, $01, $1B, $FF
	dc.b nD5, $30, sHold, $30
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop19:
	dc.b nD6, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop19
	saVolFM		$D8
	sRet	

TJ2_Call8:
	sPatFM		$03
	dc.b nD6, $06, nD6, nD6, nD6, nRst, $18, nD6
	dc.b $06, nD6, nD6, nD6, nRst, $18, nRst, $06
	dc.b nD6, $06, $06, nRst, nD6, $08, $08, $08
	dc.b nRst, $30
	sRet	

TJ2_FM4:
	saTranspose	$0C
	sCall		TJ2_Call5
	sPatFM		$01

TJ2_Loop15:
TJ2_Jump5:
	sCall		TJ2_Call6
	sLoop		$01, $02, TJ2_Loop15
	saTranspose	$F4

TJ2_Loop16:
	dc.b nRst, $30
	sLoop		$00, $10, TJ2_Loop16
	ssModZ80	$20, $01, $05, $05
	saTranspose	$18
	sPatFM		$04
	sCall		TJ2_Call7
	saTranspose	$E8
	sPatFM		$06
	saVolFM		$F6
	sPan		spRight, $00
	dc.b nRst, $18, nA5, nC6, nE6, nG6, $30, nD6
	dc.b $18, nB5, $0C, nG5, nA5, $30, nRst, $06
	dc.b nA5, nG5, nA5, nRst, nA5, nG5, nA5, nA5
	dc.b $30, nRst, $06, nG5, nRst, nB5, nRst, nD6
	dc.b nRst, nF6, nRst, $18, nA5, nC6, nE6, nG6
	dc.b $30, nD6, $30
	saVolFM		$0A
	sPan		spCenter, $00
	sCall		TJ2_Call5
	ssModZ80	$40, $01, $05, $05
	saVolFM		$05

TJ2_Loop17:
	saTranspose	$0C
	sPatFM		$07
	dc.b nE6, $12, nD6, nC6, $0C, sHold, $06
	saTranspose	$F4
	sPan		spRight, $00
	sPatFM		$08
	dc.b nD5, nE5, nG5, nD5, nE5, nG5, nD5, nC6
	dc.b nC6, nB5, nA5, nRst, nA5, nG5, nA5, nC6
	dc.b nA5
	saTranspose	$0C
	sPan		spCenter, $00
	sPatFM		$07
	dc.b nB5, $0C, nC6, nB5, nD6, $12, nB5, nG5
	dc.b $0C, sHold, $0C, nF5, nD5, nB4, nD5, $12
	dc.b nE5, nF5, $0C, sHold, $06, nD5, $12, nG5
	dc.b $0C, nB5
	saTranspose	$F4
	sLoop		$00, $02, TJ2_Loop17
	saVolFM		$FB
	sPatFM		$01
	saTranspose	$0C
	sJump		TJ2_Jump5

TJ2_Call6:
	ssModZ80	$36, $01, $1B, $FF
	dc.b nA4, $30, sHold, $30
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop13:
	dc.b nA5, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop13
	saVolFM		$D8
	ssModZ80	$36, $01, $1B, $FF
	dc.b nA4, $30, sHold, $30
	ssModZ80	$0A, $01, $D6, $FF

TJ2_Loop14:
	dc.b nA5, $18
	saVolFM		$0A
	sLoop		$00, $04, TJ2_Loop14
	saVolFM		$D8
	sRet	

TJ2_Call7:
	dc.b nC6, $48, nE6, $18, nD6, $30, $10, nB5
	dc.b nD6, nD6, $24, nC6, $3C, sHold, $30, sHold
	dc.b $30, nC6, $48, nE6, $18, nD6, $30, $10
	dc.b nE6, nFs6, nFs6, $24, nE6, $06, nD6, nC6
	dc.b $30, sHold, $30, sHold, $30
	sRet	

TJ2_Call5:
	sPatFM		$03
	dc.b nAb5, $06, nAb5, nAb5, nAb5, nRst, $18, nAb5
	dc.b $06, nAb5, nAb5, nAb5, nRst, $18, nRst, $06
	dc.b nAb5, $06, $06, nRst, nAb5, $08, $08, $08
	dc.b nRst, $30
	sRet	

TJ2_FM5:
	sPatFM		$02
	sCall		TJ2_Call3
	dc.b nRst, $30, nRst, $30

TJ2_Loop11:
TJ2_Jump4:
	sCall		TJ2_Call3
	sLoop		$00, $18, TJ2_Loop11
	sCall		TJ2_Call3
	sCall		TJ2_Call4
	sCall		TJ2_Call3
	dc.b nE5, $06, nA4, nA4, nC5, nA4, nA4, nD5
	dc.b nA4, nB4, nG4, nRst, nG4, nRst, nG4, nRst
	dc.b nG4
	sCall		TJ2_Call3
	sCall		TJ2_Call4
	sPatFM		$02
	sCall		TJ2_Call3
	dc.b nRst, $30, nRst, $30

TJ2_Loop12:
	sCall		TJ2_Call3
	sCall		TJ2_Call3
	sCall		TJ2_Call4
	sCall		TJ2_Call4
	sLoop		$00, $02, TJ2_Loop12
	sJump		TJ2_Jump4

TJ2_Call3:
	dc.b nE5, $06, nA4, nA4, nC5, nA4, nA4, nD5
	dc.b nA4, nA4, nB4, nA4, nA4, nC5, nA4, nD5
	dc.b nA4
	sRet	

TJ2_Call4:
	dc.b nE5, $06, nG4, nG4, nB4, nG4, nG4, nD5
	dc.b nG4, nG4, nB4, nG4, nG4, nC5, nG4, nD5
	dc.b nG4
	sRet	

TJ2_PSG1:
	sVolEnvPSG	VolEnv_03

TJ2_Loop6:
	dc.b nRst, $30
	sLoop		$00, $14, TJ2_Loop6

TJ2_Loop7:
TJ2_Jump3:
	sCall		TJ2_Call1
	sLoop		$00, $10, TJ2_Loop7
	sCall		TJ2_Call1
	sCall		TJ2_Call2
	sCall		TJ2_Call1
	dc.b nE5, $06, nA4, nA4, nC5, nA4, nA4, nD5
	dc.b nA4, nB4, nG4, nRst, nG4, nRst, nG4, nRst
	dc.b nG4
	sCall		TJ2_Call1
	sCall		TJ2_Call2
	dc.b nG6, $06, nG6, nG6, nG6, nRst, $18, nG6
	dc.b $06, nG6, nG6, nG6, nRst, $18, nRst, $06
	dc.b nG6, $06, $06, nRst, nG6, $08, $08, $08
	dc.b nRst, $30
	saVolPSG	$02
	sVolEnvPSG	VolEnv_01

TJ2_Loop8:
	dc.b nE6, $06, nC6, nA5, nE6, nC6, nA5, nE6
	dc.b nC6, nA5, nE6, nC6, nA5, nE6, nC6, nA5
	dc.b nE6
	sLoop		$00, $02, TJ2_Loop8

TJ2_Loop9:
	dc.b nD6, nB5, nG5, nD6, nB5, nG5, nD6, nB5
	dc.b nG5, nD6, nB5, nG5, nD6, nB5, nG5, nD6
	sLoop		$00, $02, TJ2_Loop9
	sLoop		$01, $02, TJ2_Loop8
	sVolEnvPSG	VolEnv_03
	saVolPSG	$FE

TJ2_Loop10:
	dc.b nRst, $30
	sLoop		$00, $10, TJ2_Loop10
	sJump		TJ2_Jump3

TJ2_PSG2:
	dc.b nRst, $06
	sVolEnvPSG	VolEnv_03

TJ2_Loop1:
	dc.b nRst, $30
	sLoop		$00, $14, TJ2_Loop1

TJ2_Loop2:
TJ2_Jump2:
	sCall		TJ2_Call1
	sLoop		$00, $10, TJ2_Loop2
	sCall		TJ2_Call1
	sCall		TJ2_Call2
	sCall		TJ2_Call1
	dc.b nE5, $06, nA4, nA4, nC5, nA4, nA4, nD5
	dc.b nA4, nB4, nG4, nRst, nG4, nRst, nG4, nRst
	dc.b nG4
	sCall		TJ2_Call1
	sCall		TJ2_Call2
	dc.b nG5, $06, nG5, nG5, nG5, nRst, $18, nG5
	dc.b $06, nG5, nG5, nG5, nRst, $18, nRst, $06
	dc.b nG5, $06, $06, nRst, nG5, $08, $08, $08
	dc.b nRst, $2A
	sVolEnvPSG	VolEnv_01
	saVolPSG	$01

TJ2_Loop3:
	dc.b nA6, $06, nE6, nC6, nA6, nE6, nC6, nA6
	dc.b nE6, nC6, nA6, nE6, nC6, nA6, nE6, nC6
	dc.b nA6
	sLoop		$00, $02, TJ2_Loop3

TJ2_Loop4:
	dc.b nG6, nD6, nB5, nG6, nD6, nB5, nG6, nD6
	dc.b nB5, nG6, nD6, nB5, nG6, nD6, nB5, nG6
	sLoop		$00, $02, TJ2_Loop4
	sLoop		$01, $02, TJ2_Loop3
	saVolPSG	$FF
	sVolEnvPSG	VolEnv_03

TJ2_Loop5:
	dc.b nRst, $30
	sLoop		$00, $10, TJ2_Loop5
	dc.b nRst, $06
	sJump		TJ2_Jump2

TJ2_Call1:
	dc.b nE5, $06, nA4, nA4, nC5, nA4, nA4, nD5
	dc.b nA4, nA4, nB4, nA4, nA4, nC5, nA4, nD5
	dc.b nA4
	sRet	

TJ2_Call2:
	dc.b nE5, $06, nG4, nG4, nB4, nG4, nG4, nD5
	dc.b nG4, nG4, nB4, nG4, nG4, nC5, nG4, nD5
	dc.b nG4
	sRet	

TJ2_PSG3:
	sNoisePSG	$E7
	sVolEnvPSG	VolEnv_02

TJ2_Jump1:
	dc.b nG4, $06
	saVolPSG	$03
	dc.b $06
	saVolPSG	$FD
	sJump		TJ2_Jump1

TJ2_DAC:
	sCall		TJ2_Call19

TJ2_Loop29:
TJ2_Jump9:
	sCall		TJ2_Call20
	sLoop		$00, $0E, TJ2_Loop29
	sCall		TJ2_Call21
	sLoop		$01, $03, TJ2_Loop29

TJ2_Loop30:
	sCall		TJ2_Call20
	sLoop		$00, $07, TJ2_Loop30
	dc.b dKick, $06, dSnare, dKick, dSnare, dKick, dSnare, dKick
	dc.b dSnare

TJ2_Loop31:
	sCall		TJ2_Call20
	sLoop		$00, $04, TJ2_Loop31
	sCall		TJ2_Call19

TJ2_Loop32:
	sCall		TJ2_Call20
	sLoop		$00, $0E, TJ2_Loop32
	sCall		TJ2_Call21
	sJump		TJ2_Jump9

TJ2_Call20:
	dc.b dKick, $0C, dSnare, dKick, $06, dKick, dSnare, $0C
	sRet	

TJ2_Call21:
	dc.b dKick, $06, dSnare, dSnare, dSnare, dKick, dSnare, dKick
	dc.b dSnare, dKick, $06, dSnare, dSnare, dSnare, dMidTom, dMidTom
	dc.b dLowTom, dFloorTom
	sRet	

TJ2_Call19:
	dc.b dSnare, $06, dSnare, dSnare, dSnare, dKick, dSnare, dKick
	dc.b dKick, dSnare, dSnare, dSnare, dSnare, dKick, dSnare, dKick
	dc.b dKick, dKick, dSnare, dSnare, dKick, dHighTom, $04, dSnare
	dc.b dHighTom, dSnare, dHighTom, dSnare, dSnare, $04, dSnare, dSnare
	dc.b dMidTom, dMidTom, dMidTom, dLowTom, dLowTom, dLowTom, dFloorTom, dFloorTom
	dc.b dFloorTom
	sRet	

TJ2_Patches:
	; Patch $00
	; $24
	; $71, $41, $71, $51,	$1F, $1F, $1F, $1F
	; $0F, $07, $4F, $4F,	$0B, $0B, $0E, $0A
	; $79, $79, $79, $79,	$10, $80, $0E, $80
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$07, $07, $04, $05
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0F, $07, $0F
	spSustainRt	$0B, $0E, $0B, $0A
	spSustainLv	$07, $07, $07, $07
	spReleaseRt	$09, $09, $09, $09
	spTotalLv	$10, $0E, $00, $00

	; Patch $01
	; $3C
	; $14, $14, $32, $22,	$1F, $1F, $1F, $1F
	; $12, $0E, $1F, $1F,	$08, $05, $05, $05
	; $07, $0A, $07, $07,	$14, $80, $19, $80
	spAlgorithm	$04
	spFeedback	$07
	spDetune	$01, $03, $01, $02
	spMultiple	$04, $02, $04, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$12, $1F, $0E, $1F
	spSustainRt	$08, $05, $05, $05
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$07, $07, $0A, $07
	spTotalLv	$14, $19, $00, $00

	; Patch $02
	; $03
	; $7F, $01, $42, $18,	$1F, $1F, $1F, $1F
	; $17, $0E, $0F, $0D,	$15, $0E, $0C, $0F
	; $1E, $1E, $1F, $1F,	$17, $14, $14, $80
	spAlgorithm	$03
	spFeedback	$00
	spDetune	$07, $04, $00, $01
	spMultiple	$0F, $02, $01, $08
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$17, $0F, $0E, $0D
	spSustainRt	$15, $0C, $0E, $0F
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0E, $0F, $0E, $0F
	spTotalLv	$17, $14, $14, $00

	; Patch $03
	; $3B
	; $19, $15, $12, $12,	$1F, $1F, $1F, $1F
	; $0F, $3E, $0E, $0F,	$0F, $4E, $0F, $0D
	; $0F, $4F, $0E, $0D,	$13, $0F, $1E, $80
	spAlgorithm	$03
	spFeedback	$07
	spDetune	$01, $01, $01, $01
	spMultiple	$09, $02, $05, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$0F, $0E, $1E, $0F
	spSustainRt	$0F, $0F, $4E, $0D
	spSustainLv	$00, $00, $04, $00
	spReleaseRt	$0F, $0E, $0F, $0D
	spTotalLv	$13, $1E, $0F, $00

	; Patch $04
	; $35
	; $11, $12, $12, $11,	$0F, $0F, $0D, $0F
	; $07, $06, $08, $09,	$07, $08, $08, $06
	; $06, $09, $06, $07,	$12, $82, $84, $85
	spAlgorithm	$05
	spFeedback	$06
	spDetune	$01, $01, $01, $01
	spMultiple	$01, $02, $02, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0D, $0F, $0F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $08, $06, $09
	spSustainRt	$07, $08, $08, $06
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$06, $06, $09, $07
	spTotalLv	$12, $04, $02, $05

	; Patch $05
	; $37
	; $14, $16, $12, $72,	$1F, $1F, $1F, $1F
	; $07, $08, $08, $09,	$08, $08, $08, $08
	; $0B, $0B, $0B, $0B,	$80, $80, $87, $82
	spAlgorithm	$07
	spFeedback	$06
	spDetune	$01, $01, $01, $07
	spMultiple	$04, $02, $06, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $08, $08, $09
	spSustainRt	$08, $08, $08, $08
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$0B, $0B, $0B, $0B
	spTotalLv	$00, $07, $00, $02

	; Patch $06
	; $3A
	; $51, $01, $11, $01,	$0F, $10, $0F, $0E
	; $08, $0A, $00, $06,	$01, $01, $01, $01
	; $1F, $1F, $1F, $1F,	$28, $29, $2D, $80
	spAlgorithm	$02
	spFeedback	$07
	spDetune	$05, $01, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$00, $00, $00, $00
	spAttackRt	$0F, $0F, $10, $0E
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $00, $0A, $06
	spSustainRt	$01, $01, $01, $01
	spSustainLv	$01, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$28, $2D, $29, $00

	; Patch $07
	; $2B
	; $32, $21, $11, $02,	$1F, $1F, $1F, $1F
	; $07, $06, $06, $05,	$04, $05, $06, $05
	; $04, $06, $04, $06,	$1A, $1D, $1C, $81
	spAlgorithm	$03
	spFeedback	$05
	spDetune	$03, $01, $02, $00
	spMultiple	$02, $01, $01, $02
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$07, $06, $06, $05
	spSustainRt	$04, $06, $05, $05
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$04, $04, $06, $06
	spTotalLv	$1A, $1C, $1D, $01

	; Patch $08
	; $3D
	; $02, $02, $02, $02,	$8E, $52, $14, $4C
	; $06, $08, $0F, $03,	$00, $00, $00, $00
	; $3F, $1F, $1F, $1F,	$1B, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$02, $02, $02, $02
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $0F, $08, $03
	spSustainRt	$00, $00, $00, $00
	spSustainLv	$03, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $00, $00, $00
