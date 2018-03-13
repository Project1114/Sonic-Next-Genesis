; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_2ObIP:	
		dc.w SME_2ObIP_A-SME_2ObIP, SME_2ObIP_38-SME_2ObIP	
		dc.w SME_2ObIP_3E-SME_2ObIP, SME_2ObIP_44-SME_2ObIP	
		dc.w SME_2ObIP_4A-SME_2ObIP	
SME_2ObIP_A:	dc.b 9	
		dc.b $F0, 9, 0, 0, $A4	
		dc.b 0, $E, 0, 6, $A4	
		dc.b 0, 7, 0, $12, $C4	
		dc.b $F8, $F, 0, $1A, $D4	
		dc.b $18, $C, 0, $2A, $D4	
		dc.b $F8, $C, 0, $2E, $F4	
		dc.b 0, $B, 0, $32, $F4	
		dc.b $20, 5, 0, $3E, $FC	
		dc.b 8, 2, 0, $42, $C	
SME_2ObIP_38:	dc.b 1	
		dc.b $F4, 2, 0, $45, $FC	
SME_2ObIP_3E:	dc.b 1	
		dc.b $F4, 2, 0, $48, $FC	
SME_2ObIP_44:	dc.b 1	
		dc.b $F4, 2, 0, $4B, $FC	
SME_2ObIP_4A:	dc.b 1	
		dc.b $F4, 2, 0, $4E, $FC	
		even