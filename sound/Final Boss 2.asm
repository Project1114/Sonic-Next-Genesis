FinalBoss2_Header:
	sHeaderInit	; Z80 offset is $907B
	sHeaderPatch	FinalBoss2_Patches
	sHeaderCh	$06, $03
	sHeaderTempo	$01, $80
	sHeaderDAC	FinalBoss2_DAC
	sHeaderFM	FinalBoss2_FM1, $F4, $11
	sHeaderFM	FinalBoss2_FM2, $F4, $05
	sHeaderFM	FinalBoss2_FM3, $E8, $11
	sHeaderFM	FinalBoss2_FM4, $E8, $11
	sHeaderFM	FinalBoss2_FM5, $F4, $16
	sHeaderPSG	FinalBoss2_PSG1, $D0, $04, $00, VolEnv_00
	sHeaderPSG	FinalBoss2_PSG2, $D0, $04, $00, VolEnv_00
	sHeaderPSG	FinalBoss2_PSG3, $00, $01, $00, VolEnv_02

FinalBoss2_FM1:
	sPatFM		$04

FinalBoss2_Loop23:
FinalBoss2_Jump7:
	dc.b nRst, $30
	sLoop		$00, $04, FinalBoss2_Loop23
	sCall		FinalBoss2_Call3
	sCall		FinalBoss2_Call4
	saVolFM		$05
	sCall		FinalBoss2_Call15
	sCall		FinalBoss2_Call16
	saVolFM		$FB
	dc.b nB6, $03, $03, $03, nRst, $09, nB6, $03
	dc.b nRst, $09, nB6, $03, nRst, nB6, nB6, nB6
	dc.b nRst, nB6, nB6, nB6, nB6, nB6, nRst, $21
	sPatFM		$01
	saVolFM		$05

FinalBoss2_Loop24:
	sCall		FinalBoss2_Call17
	dc.b nD7
	sLoop		$00, $03, FinalBoss2_Loop24
	sPatFM		$04
	saVolFM		$FB
	sJump		FinalBoss2_Jump7

FinalBoss2_Call15:
	dc.b nA6, $06, nRst, $03, nA6, nE7, $18, sHold
	dc.b $0C, sHold, $18, sHold, $18, sHold, $30, sHold
	dc.b $30
	sRet	

FinalBoss2_Call3:
	dc.b nB5, $04, nE6, nB6, nG6, $24, sHold, $0C
	dc.b nA6, nE6, nD6, $04, nE6, nG6, nE6, $30
	dc.b sHold, $30
	sRet	

FinalBoss2_Call4:
	dc.b nB5, $04, nE6, nG6, nF6, $24, sHold, $0C
	dc.b nD6, nG6, nB6, nB6, $04, nC7, nB6, nA6
	dc.b $24, sHold, $18, nB6, $04, nC7, nD7, nC7
	dc.b nB6, nG6
	sRet	

FinalBoss2_Call16:
	dc.b nA6, $06, nRst, $03, nA6, nC7, $24, nB6
	dc.b $30, nC7, nB6
	sRet	

FinalBoss2_Call17:
	saVolFM		$09
	dc.b nC7, $03, nB6, nA6, nE6, nC7, nB6, nA6
	dc.b nE6, nC7, nB6, nA6, nE6, nC7, nB6, nA6
	dc.b nE6
	saVolFM		$FD
	dc.b nC7, nB6, nA6, nD6, nC7, nB6, nA6, nD6
	dc.b nC7, nB6, nA6, nD6, nC7, nB6, nA6, nD6
	saVolFM		$FD
	dc.b nC7, nB6, nG6, nE6, nC7, nB6, nG6, nE6
	dc.b nC7, nB6, nG6, nE6, nC7, nB6, nG6, nE6
	saVolFM		$FD
	dc.b nC7, nA6, nF6, nC7, nD7, nB6, nG6, nD7
	dc.b nF7, nC7, nA6, nF7, nD7, nB6, nG6
	sRet	

FinalBoss2_FM2:
	sPatFM		$00

FinalBoss2_Loop18:
FinalBoss2_Jump6:
	sCall		FinalBoss2_Call11
	sLoop		$00, $04, FinalBoss2_Loop18

FinalBoss2_Loop19:
	sCall		FinalBoss2_Call12
	sLoop		$00, $02, FinalBoss2_Loop19

FinalBoss2_Loop20:
	sCall		FinalBoss2_Call11
	sLoop		$00, $02, FinalBoss2_Loop20

FinalBoss2_Loop21:
	sCall		FinalBoss2_Call12
	sLoop		$00, $02, FinalBoss2_Loop21
	sCall		FinalBoss2_Call13

FinalBoss2_Loop22:
	sCall		FinalBoss2_Call14
	sLoop		$00, $03, FinalBoss2_Loop22
	sJump		FinalBoss2_Jump6

FinalBoss2_Call11:
	dc.b nA3, $06, nRst, $18, nC4, $06, nRst, $0C
	dc.b nD4, $06, nRst, $18, nB3, $06, nRst, $0C
	sRet	

FinalBoss2_Call12:
	dc.b nF3, $06, nRst, $18, nC4, $06, nRst, $0C
	dc.b nG3, $06, nRst, $18, nD4, $06, nRst, $0C
	sRet	

FinalBoss2_Call13:
	dc.b nA3, $03, $03, $03, nRst, $09, nA3, $03
	dc.b nRst, $09, nA3, $03, nRst, nA3, nA3, nA3
	dc.b nRst, nA3, nA3, nA3, nA3, nA3, nRst, $21
	sRet	

FinalBoss2_Call14:
	dc.b nA3, $30, nB3, nC4, nD4, $0C, nE4, nF4
	dc.b nG4
	sRet	

FinalBoss2_FM3:
FinalBoss2_Loop13:
FinalBoss2_Jump5:
	sPatFM		$02
	sCall		FinalBoss2_Call9
	sLoop		$00, $04, FinalBoss2_Loop13

FinalBoss2_Loop14:
	sCall		FinalBoss2_Call10
	sLoop		$00, $02, FinalBoss2_Loop14

FinalBoss2_Loop15:
	sCall		FinalBoss2_Call9
	sLoop		$00, $02, FinalBoss2_Loop15

FinalBoss2_Loop16:
	sCall		FinalBoss2_Call10
	sLoop		$00, $02, FinalBoss2_Loop16
	dc.b nG6, $03, $03, $03, nRst, $09, nG6, $03
	dc.b nRst, $09, nG6, $03, nRst, nG6, nG6, nG6
	dc.b nRst, nG6, nG6, nG6, nG6, nG6, nRst, $21

FinalBoss2_Loop17:
	dc.b nRst, $30
	sLoop		$00, $08, FinalBoss2_Loop17
	sPatFM		$03
	saVolFM		$F3
	dc.b nRst, $02
	sCall		FinalBoss2_Call7
	dc.b nE6, $02
	saVolFM		$0D
	sJump		FinalBoss2_Jump5

FinalBoss2_Call9:
	dc.b nB5, $06
	saVolFM		$05
	dc.b $06, $06, $06, $06
	saVolFM		$FB
	dc.b $06
	saVolFM		$05
	dc.b $06, $06
	saVolFM		$FB
	dc.b nC6
	saVolFM		$05
	dc.b nC6, nC6, nC6, nC6
	saVolFM		$FB
	dc.b nD6
	saVolFM		$05
	dc.b nD6, nD6
	saVolFM		$FB
	sRet	

FinalBoss2_Call10:
	dc.b nF5, $06
	saVolFM		$05
	dc.b $06, $06, $06, $06
	saVolFM		$FB
	dc.b $06
	saVolFM		$05
	dc.b $06, $06
	saVolFM		$FB
	dc.b nG5
	saVolFM		$05
	dc.b nG5, nG5, nG5, nG5
	saVolFM		$FB
	dc.b nA5
	saVolFM		$05
	dc.b nA5, nA5
	saVolFM		$FB
	sRet	

FinalBoss2_Call7:
	dc.b nRst, $0C, nA5, nE6, nA6, nG6, $24, nD6
	dc.b $04, nE6, nF6, nE6, $30, nF6, $0C, nG6
	dc.b nA6, nB6, $04, nG6
	sRet	

FinalBoss2_FM4:
	sPatFM		$02

FinalBoss2_Loop10:
FinalBoss2_Jump4:
	sCall		FinalBoss2_Call1
	sLoop		$00, $04, FinalBoss2_Loop10

FinalBoss2_Loop11:
	sCall		FinalBoss2_Call2
	sLoop		$00, $02, FinalBoss2_Loop11
	sPatFM		$03
	ssModZ80	$04, $01, $03, $05
	saVolFM		$F6
	sCall		FinalBoss2_Call3
	sCall		FinalBoss2_Call4
	ssModZ80	$00, $00, $00, $00
	saVolFM		$0A
	sPatFM		$02
	dc.b nE6, $03, $03, $03, nRst, $09, nE6, $03
	dc.b nRst, $09, nE6, $03, nRst, nE6, nE6, nE6
	dc.b nRst, nE6, nE6, nE6, nE6, nE6, nRst, $21
	sPatFM		$01
	saVolFM		$05
	saTranspose	$0C
	ssModZ80	$04, $01, $03, $05

FinalBoss2_Loop12:
	sCall		FinalBoss2_Call8
	dc.b nF6, $03
	sLoop		$00, $03, FinalBoss2_Loop12
	saTranspose	$F4
	sPatFM		$02
	saVolFM		$FB
	sJump		FinalBoss2_Jump4

FinalBoss2_Call1:
	dc.b nE5, $06
	saVolFM		$03, $05
	dc.b $06, $06, $06, $06
	saVolFM		$FD, $FB
	dc.b $06
	saVolFM		$03, $05
	dc.b $06, $06
	saVolFM		$FD, $FB
	dc.b nF5
	saVolFM		$03, $05
	dc.b nF5, nF5, nF5, nF5
	saVolFM		$FD, $FB
	dc.b nG5
	saVolFM		$03, $05
	dc.b nG5, nG5
	saVolFM		$FD, $FB
	sRet	

FinalBoss2_Call2:
	dc.b nC5, $06
	saVolFM		$03, $05
	dc.b $06, $06, $06, $06
	saVolFM		$FD, $FB
	dc.b $06
	saVolFM		$03, $05
	dc.b $06, $06
	saVolFM		$FD, $FB
	dc.b nD5
	saVolFM		$03, $05
	dc.b nD5, nD5, nD5, nD5
	saVolFM		$FD, $FB
	dc.b nD5
	saVolFM		$03, $05
	dc.b nD5, nD5
	saVolFM		$FD, $FB
	sRet	

FinalBoss2_Call8:
	saVolFM		$09
	dc.b nE6, $03, nD6, nC6, nA5, nE6, nD6, nC6
	dc.b nA5, nE6, nD6, nC6, nA5, nE6, nD6, nC6
	dc.b nA5
	saVolFM		$FD
	dc.b nE6, nD6, nC6, nG5, nE6, nD6, nC6, nG5
	dc.b nE6, nD6, nC6, nG5, nE6, nD6, nC6, nG5
	saVolFM		$FD
	dc.b nE6, nD6, nC6, nG5, nE6, nD6, nC6, nG5
	dc.b nE6, nD6, nC6, nG5, nE6, nD6, nC6, nG5
	saVolFM		$FD
	dc.b nE6, nC6, nA5, nE6, nF6, nD6, nB5, nF6
	dc.b nA6, nE6, nC6, nA6, nF6, nD6, nB5
	sRet	

FinalBoss2_FM5:
FinalBoss2_Jump3:
	sPatFM		$04
	ssModZ80	$04, $01, $03, $05
	dc.b nRst, $03

FinalBoss2_Loop8:
	dc.b nRst, $30
	sLoop		$00, $04, FinalBoss2_Loop8
	sCall		FinalBoss2_Call3
	sCall		FinalBoss2_Call4
	saVolFM		$03
	sCall		FinalBoss2_Call5
	sCall		FinalBoss2_Call6
	dc.b nC6, $03, $03, $03, nRst, $09, nC6, $03
	dc.b nRst, $09, nC6, $03, nRst, nC6, nC6, nC6
	dc.b nRst, nC6, nC6, nC6, nC6, nC6, nRst, $21
	saVolFM		$FD

FinalBoss2_Loop9:
	dc.b nRst, $30
	sLoop		$00, $08, FinalBoss2_Loop9
	saVolFM		$F3
	sPatFM		$03
	sCall		FinalBoss2_Call7
	dc.b nE6, $04
	saVolFM		$0D
	sJump		FinalBoss2_Jump3

FinalBoss2_Call5:
	dc.b nRst, $21, nC6, $06, nRst, $03, nC6, nG6
	dc.b $18, nF5, $06, nRst, $03, nF5, nC6, $0C
	dc.b nB6, $30, sHold, $30
	sRet	

FinalBoss2_Call6:
	dc.b nRst, $24, nC6, $06, nRst, $03, nC6, nG6
	dc.b $18, nG5, $06, nRst, $03, nG5, nD6, $0C
	dc.b nA6, $30, nG6
	sRet	

FinalBoss2_PSG1:
	saDetune	$02

FinalBoss2_PSG2:
	saTranspose	$0C

FinalBoss2_Loop3:
FinalBoss2_Jump2:
	sCall		FinalBoss2_Call1
	sLoop		$00, $04, FinalBoss2_Loop3

FinalBoss2_Loop4:
	sCall		FinalBoss2_Call2
	sLoop		$00, $02, FinalBoss2_Loop4

FinalBoss2_Loop5:
	sCall		FinalBoss2_Call1
	sLoop		$00, $02, FinalBoss2_Loop5

FinalBoss2_Loop6:
	sCall		FinalBoss2_Call2
	sLoop		$00, $02, FinalBoss2_Loop6
	dc.b nE5, $03, $03, $03, nRst, $09, nE5, $03
	dc.b nRst, $09, nE5, $03, nRst, nE5, nE5, nE5
	dc.b nRst, nE5, nE5, nE5, nE5, nE5, nRst, $21

FinalBoss2_Loop7:
	dc.b nRst, $30
	sLoop		$00, $0C, FinalBoss2_Loop7
	sJump		FinalBoss2_Jump2

FinalBoss2_PSG3:
	sNoisePSG	$E7

FinalBoss2_Loop1:
FinalBoss2_Jump1:
	dc.b nF6, $03, $03, $18, $12, $03, $03, $18
	dc.b $06, $03, $03, $03, $03
	sLoop		$00, $0B, FinalBoss2_Loop1
	saVolPSG	$04

FinalBoss2_Loop2:
	dc.b $03
	saVolFM		$02
	dc.b $03, $03, $03
	saVolFM		$FE
	sLoop		$00, $04, FinalBoss2_Loop2
	saVolPSG	$FF
	sLoop		$01, $04, FinalBoss2_Loop2
	saVolPSG	$04
	sLoop		$02, $03, FinalBoss2_Loop2
	saVolPSG	$FC
	sJump		FinalBoss2_Jump1

FinalBoss2_DAC:
FinalBoss2_Loop25:
FinalBoss2_Jump8:
	dc.b dHiTimpani, $03, $03, $18, $12, $03, $03, $18
	dc.b $06, $03, $03, $03, $03
	sLoop		$00, $0A, FinalBoss2_Loop25
	sCall		FinalBoss2_Call18

FinalBoss2_Loop26:
	dc.b nRst, $30
	sLoop		$00, $08, FinalBoss2_Loop26
	sCall		FinalBoss2_Call18
	sCall		FinalBoss2_Call18
	sJump		FinalBoss2_Jump8

FinalBoss2_Call18:
	dc.b dLowTimpani, $03, $03, $0C, $0C, $06, $03, $03
	dc.b $06, $03, $03, $03, $03, $24
	sRet	

FinalBoss2_Patches:
	; Patch $00
	; $24
	; $00, $00, $00, $00,	$1F, $1F, $1F, $1F
	; $1F, $1D, $18, $17,	$0A, $0A, $06, $06
	; $09, $09, $0F, $0F,	$0F, $82, $18, $80
	spAlgorithm	$04
	spFeedback	$04
	spDetune	$00, $00, $00, $00
	spMultiple	$00, $00, $00, $00
	spRateScale	$00, $00, $00, $00
	spAttackRt	$1F, $1F, $1F, $1F
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$1F, $18, $1D, $17
	spSustainRt	$0A, $06, $0A, $06
	spSustainLv	$00, $00, $00, $00
	spReleaseRt	$09, $0F, $09, $0F
	spTotalLv	$0F, $18, $02, $00

	; Patch $01
	; $3D
	; $01, $02, $02, $02,	$1F, $08, $8A, $0A
	; $08, $08, $08, $08,	$00, $01, $00, $00
	; $0F, $1F, $1F, $1F,	$1F, $88, $88, $87
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $02, $02, $02
	spRateScale	$00, $02, $00, $00
	spAttackRt	$1F, $0A, $08, $0A
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$08, $08, $08, $08
	spSustainRt	$00, $00, $01, $00
	spSustainLv	$00, $01, $01, $01
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1F, $08, $08, $07

	; Patch $02
	; $3D
	; $01, $01, $01, $01,	$8E, $52, $14, $4C
	; $06, $08, $0F, $03,	$00, $05, $05, $05
	; $3F, $1F, $1F, $0F,	$1E, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $0F, $08, $03
	spSustainRt	$00, $05, $05, $05
	spSustainLv	$03, $01, $01, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1E, $00, $00, $00

	; Patch $03
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

	; Patch $04
	; $3D
	; $01, $01, $01, $01,	$8E, $52, $14, $4C
	; $06, $08, $0F, $03,	$00, $05, $05, $05
	; $3F, $1F, $1F, $0F,	$1B, $80, $80, $80
	spAlgorithm	$05
	spFeedback	$07
	spDetune	$00, $00, $00, $00
	spMultiple	$01, $01, $01, $01
	spRateScale	$02, $00, $01, $01
	spAttackRt	$0E, $14, $12, $0C
	spAmpMod	$00, $00, $00, $00
	spDecayRt	$06, $0F, $08, $03
	spSustainRt	$00, $05, $05, $05
	spSustainLv	$03, $01, $01, $00
	spReleaseRt	$0F, $0F, $0F, $0F
	spTotalLv	$1B, $00, $00, $00
