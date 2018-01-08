; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_l7eSy:	
		dc.w SME_l7eSy_8-SME_l7eSy, SME_l7eSy_1D-SME_l7eSy	
		dc.w SME_l7eSy_32-SME_l7eSy, SME_l7eSy_42-SME_l7eSy	
SME_l7eSy_8:	dc.b 4	
		dc.b $F0, $E, 0, 0, $E0	
		dc.b 8, $D, 0, $C, $E0	
		dc.b $F0, $E, 8, 0, 0	
		dc.b 8, $D, 0, $C, 0	
SME_l7eSy_1D:	dc.b 4	
		dc.b $F0, $E, 0, 0, $E0	
		dc.b 8, $D, 0, $C, $E0	
		dc.b $F0, $E, 8, 0, 0	
		dc.b 8, $D, 0, $C, 0	
SME_l7eSy_32:	dc.b 3	
		dc.b $F0, 6, 0, 0, $F0	
		dc.b $F0, 6, 8, 0, 0	
		dc.b 8, $D, 0, $C, $F0	
SME_l7eSy_42:	dc.b 7	
		dc.b $F0, $E, 0, 0, $D0	
		dc.b $F0, 6, 0, 6, $F0	
		dc.b $F0, 6, 8, 6, 0	
		dc.b $F0, $E, 8, 0, $10	
		dc.b 8, $D, 0, $C, $D0	
		dc.b 8, $D, 0, $C, $F0	
		dc.b 8, $D, 0, $C, $10	
		even