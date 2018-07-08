; ---------------------------------------------------------------------------
; Special stage	mappings and VRAM pointers
; ---------------------------------------------------------------------------
	dc.l Map_SSWalls	; address of mappings ;1
	dc.w $142		; VRAM setting
	dc.l Map_SSWalls ;2
	dc.w $142
	dc.l Map_SSWalls ;3
	dc.w $142
	dc.l Map_SSWalls ;4
	dc.w $142
	dc.l Map_SSWalls ;5
	dc.w $142
	dc.l Map_SSWalls ;6
	dc.w $142
	dc.l Map_SSWalls ;7
	dc.w $142
	dc.l Map_SSWalls ;8
	dc.w $142
	dc.l Map_SSWalls ;9
	dc.w $142
	dc.l Map_SSWalls ;A
	dc.w $2142
	dc.l Map_SSWalls ;B
	dc.w $2142
	dc.l Map_SSWalls ;C
	dc.w $2142
	dc.l Map_SSWalls ;D
	dc.w $2142
	dc.l Map_SSWalls ;E
	dc.w $2142
	dc.l Map_SSWalls ;F
	dc.w $2142
	dc.l Map_SSWalls ;10
	dc.w $2142
	dc.l Map_SSWalls ;11
	dc.w $2142
	dc.l Map_SSWalls ;12
	dc.w $2142
	dc.l Map_SSWalls ;13
	dc.w $4142
	dc.l Map_SSWalls ;14
	dc.w $4142
	dc.l Map_SSWalls ;15
	dc.w $4142
	dc.l Map_SSWalls ;16
	dc.w $4142
	dc.l Map_SSWalls ;17
	dc.w $4142
	dc.l Map_SSWalls ;18
	dc.w $4142
	dc.l Map_SSWalls ;19
	dc.w $4142
	dc.l Map_SSWalls ;1A
	dc.w $4142
	dc.l Map_SSWalls ;1B
	dc.w $4142
	dc.l Map_SSWalls ;1C
	dc.w $6142
	dc.l Map_SSWalls ;1D
	dc.w $6142
	dc.l Map_SSWalls ;1E
	dc.w $6142
	dc.l Map_SSWalls ;1F
	dc.w $6142
	dc.l Map_SSWalls ;20
	dc.w $6142
	dc.l Map_SSWalls ;21
	dc.w $6142
	dc.l Map_SSWalls ;22
	dc.w $6142
	dc.l Map_SSWalls ;23
	dc.w $6142
	dc.l Map_SSWalls ;24
	dc.w $6142
	dc.l Map_SSWalls ;25
	dc.w $223B
	dc.l Map_SS_R ;26
	dc.w $2570
	dc.l Map_SS_R ;27
	dc.w $2251
	dc.l Map_SS_R ;28
	dc.w $370
	dc.l Map_SS_Up ;29
	dc.w $4263
	dc.l Map_SS_Down ;2A
	dc.w $4263
	dc.l Map_SS_R ;2B
	dc.w $22F0
	dc.l Map_SS_RedWhi ;2C
	dc.w $4470
	dc.l Map_SS_Glass ;2D
	dc.w $5F0
	dc.l Map_SS_Glass ;2E
	dc.w $65F0
	dc.l Map_SS_Glass ;2F
	dc.w $45F0
	dc.l Map_SS_Glass ;30
	dc.w $25F0
	dc.l Map_SS_R ;31
	dc.w $42F0
	dc.l Map_SSWalls+$1000000	; add frame no.	* $1000000 ;32
	dc.w $223B
	dc.l Map_SSWalls+$2000000 ;33
	dc.w $223B
	dc.l Map_SS_R ;34
	dc.w $2797
	dc.l Map_SS_R ;35
	dc.w $27A0
	dc.l Map_SS_R ;36
	dc.w $27A9
	dc.l Map_SS_R ;37
	dc.w $2797
	dc.l Map_SS_R ;38
	dc.w $27A0
	dc.l Map_SS_R ;39
	dc.w $27A9
	dc.l Map_obj25 ;3A
	dc.w $26C0
	dc.l Map_SS_Chaos3 ;3B
	dc.w $770
	dc.l Map_SS_Chaos3 ;3C
	dc.w $2770
	dc.l Map_SS_Chaos3 ;3D
	dc.w $4770
	dc.l Map_SS_Chaos3 ;3E
	dc.w $6770
	dc.l Map_SS_Chaos1 ;3F
	dc.w $770
	dc.l Map_SS_Chaos2 ;40
	dc.w $770
	dc.l Map_SS_R ;41
	dc.w $44F0
	dc.l Map_obj25+$1000000 ;42
	dc.w $26C0
	dc.l Map_obj25+$2000000 ;43
	dc.w $26C0
	dc.l Map_obj25+$3000000 ;44
	dc.w $26C0
	dc.l Map_obj25+$4000000 ;45
	dc.w $26C0
	dc.l Map_SS_Glass ;46
	dc.w $23F0
	dc.l Map_SS_Glass+$1000000 ;47
	dc.w $23F0
	dc.l Map_SS_Glass+$2000000 ;48
	dc.w $23F0
	dc.l Map_SS_Glass+$3000000 ;49
	dc.w $23F0
	dc.l Map_SS_R+$2000000
	dc.w $4F0
	dc.l Map_SSWalls ;4B
	dc.w $6142
	dc.l Map_SSWalls ;4C
	dc.w $2142
	dc.l Map_SSWalls ;4D
	dc.w $4142
	dc.l Map_SS_Glass ;4F
	dc.w $65F0
	dc.l Map_SS_Glass ;50
	dc.w $25F0
	dc.l Map_SS_Glass ;51
	dc.w $45F0