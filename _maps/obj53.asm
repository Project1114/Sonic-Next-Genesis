; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_HkEPj:	
		dc.w SME_HkEPj_C-SME_HkEPj, SME_HkEPj_21-SME_HkEPj	
		dc.w SME_HkEPj_4A-SME_HkEPj, SME_HkEPj_5F-SME_HkEPj	
		dc.w SME_HkEPj_88-SME_HkEPj, SME_HkEPj_93-SME_HkEPj	
SME_HkEPj_C:	dc.b 4	
		dc.b $F8, $D, 0, 0, $E0	
		dc.b 8, $D, 0, 0, $E0	
		dc.b $F8, $D, 0, 0, 0	
		dc.b 8, $D, 0, 0, 0	
SME_HkEPj_21:	dc.b 8	
		dc.b $F8, 5, 0, 0, $E0	
		dc.b $F8, 5, 0, 0, $F0	
		dc.b $F8, 5, 0, 0, 0	
		dc.b $F8, 5, 0, 0, $10	
		dc.b 8, 5, 0, 0, $E0	
		dc.b 8, 5, 0, 0, $F0	
		dc.b 8, 5, 0, 0, 0	
		dc.b 8, 5, 0, 0, $10	
SME_HkEPj_4A:	dc.b 4	
		dc.b $F8, $D, 0, 0, $E0	
		dc.b 8, $D, 0, 8, $E0	
		dc.b $F8, $D, 0, 0, 0	
		dc.b 8, $D, 0, 8, 0	
SME_HkEPj_5F:	dc.b 8	
		dc.b $F8, 5, 0, 0, $E0	
		dc.b $F8, 5, 0, 4, $F0	
		dc.b $F8, 5, 0, 0, 0	
		dc.b $F8, 5, 0, 4, $10	
		dc.b 8, 5, 0, 8, $E0	
		dc.b 8, 5, 0, $C, $F0	
		dc.b 8, 5, 0, 8, 0	
		dc.b 8, 5, 0, $C, $10	
SME_HkEPj_88:	dc.b 2	
		dc.b $F8, $F, 0, $55, $E0	
		dc.b $F8, $F, 8, $55, 0	
SME_HkEPj_93:	dc.b 8	
		dc.b $F8, 3, 0, $55, $E0	
		dc.b $F8, 3, 0, $59, $E8	
		dc.b $F8, 3, 0, $5D, $F0	
		dc.b $F8, 3, 0, $61, $F8	
		dc.b $F8, 3, 8, $61, 0	
		dc.b $F8, 3, 8, $5D, 8	
		dc.b $F8, 3, 8, $59, $10	
		dc.b $F8, 3, 8, $55, $18	
		even