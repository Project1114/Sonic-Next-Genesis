; ---------------------------------------------------------------------------
; Main level load blocks
;
; ===FORMAT===
; level	patterns + (1st	PLC num	* 10^6)
; 16x16	mappings + (2nd	PLC num	* 10^6)
; 256x256 mappings
; blank, music (unused), pal index (unused), pal index
; ---------------------------------------------------------------------------
	dc.l Kos_AAZ+$4000000
	dc.l Blk16_AAZ+$5000000
	dc.l Blk256_AAZ
	dc.b 0,	$81, 4,	4
	dc.l Kos_BBZ+$6000000
	dc.l Blk16_BBZ+$7000000
	dc.l Blk256_BBZ
	dc.b 0,	$82, 5,	5
	dc.l Kos_CCZ+$8000000
	dc.l Blk16_CCZ+$9000000
	dc.l Blk256_CCZ
	dc.b 0,	$83, 6,	6
	dc.l Kos_DDZ+$A000000
	dc.l Blk16_DDZ+$B000000
	dc.l Blk256_DDZ
	dc.b 0,	$84, 7,	7
	dc.l Kos_EEZ+$C000000
	dc.l Blk16_EEZ+$D000000
	dc.l Blk256_EEZ
	dc.b 0,	$85, 8,	8
	dc.l Kos_FFZ+$E000000
	dc.l Blk16_FFZ+$F000000
	dc.l Blk256_FFZ
	dc.b 0,	$86, 9,	9
	dc.l Kos_AAZ	; main load block for ending
	dc.l Blk16_AAZ
	dc.l Blk256_AAZ
	dc.b 0,	$86, $13, $13
	dc.l Kos_SSZ+$21000000
	dc.l Blk16_SSZ+$22000000
	dc.l Blk256_SSZ
	dc.b 0,	$8C, $19, $19
	even