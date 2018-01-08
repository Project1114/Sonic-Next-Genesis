; --------------------------------------------------------------------------------
; Sprite mappings - output from SonMapEd - Sonic 1 format
; --------------------------------------------------------------------------------

SME_Ld2sJ:	
		dc.w SME_Ld2sJ_24-SME_Ld2sJ, SME_Ld2sJ_2A-SME_Ld2sJ	
		dc.w SME_Ld2sJ_30-SME_Ld2sJ, SME_Ld2sJ_36-SME_Ld2sJ	
		dc.w SME_Ld2sJ_3C-SME_Ld2sJ, SME_Ld2sJ_42-SME_Ld2sJ	
		dc.w SME_Ld2sJ_4D-SME_Ld2sJ, SME_Ld2sJ_62-SME_Ld2sJ	
		dc.w SME_Ld2sJ_77-SME_Ld2sJ, SME_Ld2sJ_8C-SME_Ld2sJ	
		dc.w SME_Ld2sJ_A1-SME_Ld2sJ, SME_Ld2sJ_AC-SME_Ld2sJ	
		dc.w SME_Ld2sJ_C1-SME_Ld2sJ, SME_Ld2sJ_E0-SME_Ld2sJ	
		dc.w SME_Ld2sJ_FF-SME_Ld2sJ, SME_Ld2sJ_128-SME_Ld2sJ	
		dc.w SME_Ld2sJ_151-SME_Ld2sJ, SME_Ld2sJ_170-SME_Ld2sJ	
SME_Ld2sJ_24:	dc.b 1	
		dc.b $F8, 5, 0, 0, $F8	
SME_Ld2sJ_2A:	dc.b 1	
		dc.b $F8, 5, 0, 0, $F8	
SME_Ld2sJ_30:	dc.b 1	
		dc.b $F4, $A, 0, 0, $F4	
SME_Ld2sJ_36:	dc.b 1	
		dc.b $F4, $A, 0, 0, $F4	
SME_Ld2sJ_3C:	dc.b 1	
		dc.b $F0, $F, 0, 0, $F0	
SME_Ld2sJ_42:	dc.b 2	
		dc.b $EC, $F, 0, 0, $F0	
		dc.b $C, $C, 0, $10, $F0	
SME_Ld2sJ_4D:	dc.b 4	
		dc.b $EC, 9, 0, 0, $EC	
		dc.b $EC, 6, 0, 6, 4	
		dc.b 4, 9, 0, $C, $FC	
		dc.b $FC, 6, 0, $12, $EC	
SME_Ld2sJ_62:	dc.b 4	
		dc.b $E8, 8, 0, 0, $F4	
		dc.b $F0, $F, 0, 3, $EC	
		dc.b $F0, 3, 0, $13, $C	
		dc.b $10, 8, 0, $17, $F4	
SME_Ld2sJ_77:	dc.b 4	
		dc.b $E0, $F, 0, 0, $E0	
		dc.b $E0, $F, 0, $10, 0	
		dc.b 0, $F, 0, $20, $E0	
		dc.b 0, $F, 0, $30, 0	
SME_Ld2sJ_8C:	dc.b 4	
		dc.b $E0, $F, 0, 0, $E4	
		dc.b $E0, $B, 0, $10, 4	
		dc.b 0, $F, 0, $1C, $E4	
		dc.b 0, $B, 0, $2C, 4	
SME_Ld2sJ_A1:	dc.b 2	
		dc.b $E0, $B, 0, 0, $F4	
		dc.b 0, $B, 0, $C, $F4	
SME_Ld2sJ_AC:	dc.b 4	
		dc.b $E0, $F, 0, 0, $E4	
		dc.b $E0, $B, 0, $10, 4	
		dc.b 0, $F, 0, $1C, $E4	
		dc.b 0, $B, 0, $2C, 4	
SME_Ld2sJ_C1:	dc.b 6	
		dc.b $E0, 8, 0, 0, $FC	
		dc.b $E8, 9, 0, 3, 4	
		dc.b $F8, 0, 0, 9, $14	
		dc.b $18, 8, $10, $A, $FC	
		dc.b 8, 9, $10, $D, 4	
		dc.b 0, 0, 0, $13, $14	
SME_Ld2sJ_E0:	dc.b 6	
		dc.b $E0, $C, 0, 0, $F4	
		dc.b $E8, $D, 0, 4, $FC	
		dc.b $F8, 4, 0, $C, $C	
		dc.b $18, $C, $10, $E, $F4	
		dc.b 8, $D, $10, $12, $FC	
		dc.b 0, 4, 0, $1A, $C	
SME_Ld2sJ_FF:	dc.b 8	
		dc.b $E0, 8, 0, 0, $FC	
		dc.b $E8, $E, 0, 3, $FC	
		dc.b $E0, 5, 8, $F, $EC	
		dc.b $F0, 1, 8, $13, $F4	
		dc.b $18, 8, $10, $15, $FC	
		dc.b 0, $E, $10, $18, $FC	
		dc.b $10, 5, $18, $24, $EC	
		dc.b 0, 1, $18, $28, $F4	
SME_Ld2sJ_128:	dc.b 8	
		dc.b $E0, 8, 8, 0, $E4	
		dc.b $E8, $E, 8, 3, $DC	
		dc.b $E0, 5, 0, $F, $FC	
		dc.b $F0, 1, 0, $13, $FC	
		dc.b $18, 8, $18, $15, $E4	
		dc.b 0, $E, $18, $18, $DC	
		dc.b $10, 5, $10, $24, $FC	
		dc.b 0, 1, $10, $28, $FC	
SME_Ld2sJ_151:	dc.b 6	
		dc.b $E0, $C, 8, 0, $E4	
		dc.b $E8, $D, 8, 4, $DC	
		dc.b $F8, 4, 8, $C, $DC	
		dc.b $18, $C, $18, $E, $E4	
		dc.b 8, $D, $18, $12, $DC	
		dc.b 0, 4, 8, $1A, $DC	
SME_Ld2sJ_170:	dc.b 6	
		dc.b $E0, 8, 8, 0, $E4	
		dc.b $E8, 9, 8, 3, $DC	
		dc.b $F8, 0, 8, 9, $DC	
		dc.b $18, 8, $18, $A, $E4	
		dc.b 8, 9, $18, $D, $DC	
		dc.b 0, 0, 8, $13, $DC	
		even