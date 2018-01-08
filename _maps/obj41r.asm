; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_Bcmze:	
		dc.w SME_Bcmze_16-SME_Bcmze, SME_Bcmze_21-SME_Bcmze	
		dc.w SME_Bcmze_27-SME_Bcmze, SME_Bcmze_32-SME_Bcmze	
		dc.w SME_Bcmze_3D-SME_Bcmze, SME_Bcmze_43-SME_Bcmze	
		dc.w SME_Bcmze_4E-SME_Bcmze, SME_Bcmze_59-SME_Bcmze	
		dc.w SME_Bcmze_6E-SME_Bcmze, SME_Bcmze_7E-SME_Bcmze	
		dc.w SME_Bcmze_98-SME_Bcmze	
SME_Bcmze_16:	dc.b 2	
		dc.b $F8, $C, 0, 0, $F0	
		dc.b 0, 4, $20, 4, $F8	
SME_Bcmze_21:	dc.b 1	
		dc.b 0, $C, 0, 0, $F0	
SME_Bcmze_27:	dc.b 2	
		dc.b $E8, $C, 0, 0, $F0	
		dc.b $F0, 6, $20, 6, $F8	
SME_Bcmze_32:	dc.b 2	
		dc.b $F0, 3, 0, 0, 0	
		dc.b $F8, 1, $20, 4, $F8	
SME_Bcmze_3D:	dc.b 1	
		dc.b $F0, 3, 0, 0, $F8	
SME_Bcmze_43:	dc.b 2	
		dc.b $F0, 3, 0, 0, $10	
		dc.b $F8, 9, $20, 6, $F8	
SME_Bcmze_4E:	dc.b 2	
		dc.b $F8, 4, $30, 4, $F8	
		dc.b 0, $C, $10, 0, $F0	
SME_Bcmze_59:	dc.b 4	
		dc.b $F0, 8, 0, 0, $F0	
		dc.b $F8, 8, 0, 3, $F8	
		dc.b 0, 5, 0, 6, 0	
		dc.b $FB, 5, $20, $A, $F6	
SME_Bcmze_6E:	dc.b 3	
		dc.b $F6, 8, 0, 0, $EA	
		dc.b $FE, 8, 0, 3, $F2	
		dc.b 6, 5, 0, 6, $FA	
SME_Bcmze_7E:	dc.b 5	
		dc.b $E6, 8, 0, 0, $FB	
		dc.b $EE, 8, 0, 3, 3	
		dc.b $F6, 5, 0, 6, $B	
		dc.b $F5, 4, $20, $E, $FF	
		dc.b $FD, 4, $20, $10, $F7	
SME_Bcmze_98:	dc.b 4	
		dc.b 8, 8, $10, 0, $F0	
		dc.b 0, 8, $10, 3, $F8	
		dc.b $F0, 5, $10, 6, 0	
		dc.b $F5, 5, $30, $A, $F6	
		even