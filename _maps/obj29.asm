; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_Z87fq:	
		dc.w SME_Z87fq_A-SME_Z87fq, SME_Z87fq_3D-SME_Z87fq	
		dc.w SME_Z87fq_66-SME_Z87fq, SME_Z87fq_71-SME_Z87fq	
		dc.w SME_Z87fq_81-SME_Z87fq	
SME_Z87fq_A:	dc.b $A	
		dc.b $C1, 5, 0, 0, $E4	
		dc.b $D0, 3, 0, 4, $E6	
		dc.b $F0, 3, 0, 4, $E6	
		dc.b $10, 1, 0, 8, $E7	
		dc.b $D5, 5, 0, $A, $C	
		dc.b $E0, 3, 0, $E, $11	
		dc.b $10, 1, 0, $12, $11	
		dc.b 0, 3, 0, $E, $11	
		dc.b $20, $D, 0, $14, $E0	
		dc.b $20, $D, 8, $14, 0	
SME_Z87fq_3D:	dc.b 8	
		dc.b $C1, 5, 0, 0, $E4	
		dc.b $D0, 3, 0, 4, $E6	
		dc.b $F0, 3, 0, 4, $E6	
		dc.b $10, 1, 0, $2C, $E6	
		dc.b $D5, 5, 0, $A, $C	
		dc.b $E0, 3, 0, $E, $11	
		dc.b $18, 1, 0, $2E, $11	
		dc.b 0, 3, 0, $E, $11	
SME_Z87fq_66:	dc.b 2	
		dc.b $20, $D, 0, $14, $E0	
		dc.b $20, $D, 8, $14, 0	
SME_Z87fq_71:	dc.b 3	
		dc.b $D8, 5, 0, $1C, $F8	
		dc.b $E8, 7, 0, $20, $F8	
		dc.b 8, 7, 0, $20, $F8	
SME_Z87fq_81:	dc.b 3	
		dc.b $D8, 5, 0, $28, $F8	
		dc.b $E8, 7, 8, $20, $F8	
		dc.b 8, 7, 8, $20, $F8	
		even