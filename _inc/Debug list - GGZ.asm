; ---------------------------------------------------------------------------
; Debug	list - Green Hill
; ---------------------------------------------------------------------------
	dc.w 2			; number of items in list
	dc.l Map_obj25+$25000000	; mappings pointer, object type * 10^6
	dc.b 0,	0, $27,	$B2		; subtype, frame, VRAM setting (2 bytes)
	dc.l Map_obj26+$26000000
	dc.b 0,	0, 6, $80
	even