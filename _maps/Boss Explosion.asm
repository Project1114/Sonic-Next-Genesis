; ---------------------------------------------------------------------------
; Sprite mappings - explosion from when	a boss is destroyed
; ---------------------------------------------------------------------------
Map_obj3F:	dc.w byte_8ED0-Map_obj3F
		dc.w byte_8F16-Map_obj3F
		dc.w byte_8F1C-Map_obj3F
		dc.w byte_8EE2-Map_obj3F
		dc.w byte_8EF7-Map_obj3F
byte_8F16:	dc.b 1
		dc.b $F0, $F, 0, $40, $F0
byte_8F1C:	dc.b 1
		dc.b $F0, $F, 0, $50, $F0
		even