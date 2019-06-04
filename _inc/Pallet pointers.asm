; ---------------------------------------------------------------------------
; Pallet pointers
; ---------------------------------------------------------------------------
	dc.l Pal_SegaBG		; pallet address
	dc.w $FB00		; RAM address
	dc.w $1F		; (pallet length / 2) - 1
	dc.l Pal_Title	;1
	dc.w $FB00
	dc.w $1F
	dc.l Pal_LevelSel	;2
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Sonic	;3
	dc.w $FB00
	dc.w 7
	dc.l Pal_AAZ	;4
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZWater	;5
	dc.w $FB20
	dc.w $17
	dc.l Pal_CCZ	;6
	dc.w $FB20
	dc.w $17
	dc.l Pal_DDZ	;7
	dc.w $FB20
	dc.w $17
	dc.l Pal_EEZ	;8
	dc.w $FB20
	dc.w $17
	dc.l Pal_FFZ	;9
	dc.w $FB20
	dc.w $17
	dc.l Pal_Special	;A
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ;BBZWater	;B
	dc.w $FB00
	dc.w $1F
	dc.l Pal_AAZ	;C
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ	;D
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ;FFZWater	;E
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ;BBZSonWater	;F
	dc.w $FB00
	dc.w 7
	dc.l Pal_AAZ;FFZ3SonWat	;10
	dc.w $FB00
	dc.w 7
	dc.l Pal_SpeResult	;11
	dc.w $FB00
	dc.w $1F
	dc.l Pal_SpeContinue	;12
	dc.w $FB00
	dc.w $F
	dc.l Pal_Ending	;13
	dc.w $FB20
	dc.w $17
	dc.l Menu_Palette	;14
	dc.w $FB00
	dc.w $1F
	dc.l Pal_AAZ;KVZWater	;15
	dc.w $FB00
	dc.w $1F
	dc.l Pal_Silver	;16
	dc.w $FB00
	dc.w 7
	dc.l Pal_Shadow	;17
	dc.w $FB00
	dc.w 7
	dc.l Pal_SilverGlow	;18
	dc.w $FB00
	dc.w 7
	dc.l Pal_SSZ	;19
	dc.w $FB20
	dc.w $17
	dc.l Pal_Sonic2	;1A
	dc.w $FB00
	dc.w 7
	dc.l Pal_Eggman	;1B
	dc.w $FB20
	dc.w 7
	dc.l Pal_AAZ;BBZSonWater2	;1C
	dc.w $FB00
	dc.w 7
	dc.l Pal_AAZ;BBZShaWater	;1D
	dc.w $FB00
	dc.w 7
	dc.l Pal_AAZ;BBZSilWater	;1E
	dc.w $FB00
	dc.w 7
	dc.l Pal_AAZ;BBZSilGWater	;1F
	dc.w $FB00
	dc.w 7
	dc.l Pal_SilverSon	;20
	dc.w $FB00
	dc.w 7
	dc.l Pal_SilverSha	;21
	dc.w $FB00
	dc.w 7
	dc.l Pal_AAZ	;22
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ	;23
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ	;24
	dc.w $FB20
	dc.w $17
	dc.l Pal_AAZ	;25
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZWater;AAZWater	;26
	dc.w $FB20
	dc.w $17
	dc.l Pal_Knuckles	;27
	dc.w $FB00
	dc.w 7
	dc.l Pal_BBZa
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZb
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZc
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZd
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZe
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZf
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZg
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZh
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZi
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZj
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZk
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZl
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZm
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZn
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZo
	dc.w $FB20
	dc.w $17
	dc.l Pal_BBZp
	dc.w $FB20
	dc.w $17