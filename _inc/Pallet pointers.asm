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
	dc.l Pal_WOZ	;4
	dc.w $FB20
	dc.w $17
	dc.l Pal_TJZ	;5
	dc.w $FB20
	dc.w $17
	dc.l Pal_DDZ	;6
	dc.w $FB20
	dc.w $17
	dc.l Pal_KVZ	;7
	dc.w $FB20
	dc.w $17
	dc.l Pal_CCZ	;8
	dc.w $FB20
	dc.w $17
	dc.l Pal_ABZ	;9
	dc.w $FB20
	dc.w $17
	dc.l Pal_Special	;A
	dc.w $FB20
	dc.w $17
	dc.l Pal_TJZWater	;B
	dc.w $FB00
	dc.w $1F
	dc.l Pal_WOZ	;C
	dc.w $FB20
	dc.w $17
	dc.l Pal_WOZ	;D
	dc.w $FB20
	dc.w $17
	dc.l Pal_ABZWater	;E
	dc.w $FB20
	dc.w $17
	dc.l Pal_TJZSonWater	;F
	dc.w $FB00
	dc.w 7
	dc.l Pal_ABZ3SonWat	;10
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
	dc.l Pal_KVZWater	;15
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
	dc.l Pal_TJZSonWater2	;1C
	dc.w $FB00
	dc.w 7
	dc.l Pal_TJZShaWater	;1D
	dc.w $FB00
	dc.w 7
	dc.l Pal_TJZSilWater	;1E
	dc.w $FB00
	dc.w 7
	dc.l Pal_TJZSilGWater	;1F
	dc.w $FB00
	dc.w 7
	dc.l Pal_SilverSon	;20
	dc.w $FB00
	dc.w 7
	dc.l Pal_SilverSha	;21
	dc.w $FB00
	dc.w 7
	dc.l Pal_WAZ	;22
	dc.w $FB20
	dc.w $17
	dc.l Pal_FCZ	;23
	dc.w $FB20
	dc.w $17
	dc.l Pal_RTZ	;24
	dc.w $FB20
	dc.w $17
	dc.l Pal_SZ	;25
	dc.w $FB20
	dc.w $17
	dc.l Pal_WOZWater	;26
	dc.w $FB20
	dc.w $17