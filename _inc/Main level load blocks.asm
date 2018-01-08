; ---------------------------------------------------------------------------
; Main level load blocks
;
; ===FORMAT===
; level	patterns + (1st	PLC num	* 10^6)
; 16x16	mappings + (2nd	PLC num	* 10^6)
; 256x256 mappings
; blank, music (unused), pal index (unused), pal index
; ---------------------------------------------------------------------------
	dc.l Kos_WOZ+$4000000
	dc.l Blk16_WOZ+$5000000
	dc.l Blk256_WOZ
	dc.b 0,	$81, 4,	4
	dc.l Kos_TJZ+$6000000
	dc.l Blk16_TJZ+$7000000
	dc.l Blk256_TJZ
	dc.b 0,	$82, 5,	5
	dc.l Kos_DDZ+$8000000
	dc.l Blk16_DDZ+$9000000
	dc.l Blk256_DDZ
	dc.b 0,	$83, 6,	6
	dc.l Kos_KVZ+$A000000
	dc.l Blk16_KVZ+$B000000
	dc.l Blk256_KVZ
	dc.b 0,	$84, 7,	7
	dc.l Kos_CCZ+$C000000
	dc.l Blk16_CCZ+$D000000
	dc.l Blk256_CCZ
	dc.b 0,	$85, 8,	8
	dc.l Kos_ABZ+$E000000
	dc.l Blk16_ABZ+$F000000
	dc.l Blk256_ABZ
	dc.b 0,	$86, 9,	9
	dc.l Kos_WOZ	; main load block for ending
	dc.l Blk16_WOZ
	dc.l Blk256_WOZ
	dc.b 0,	$86, $13, $13
	dc.l Kos_SSZ+$21000000
	dc.l Blk16_SSZ+$22000000
	dc.l Blk256_SSZ
	dc.b 0,	$8C, $19, $19
	dc.l Kos_WAZ+$23000000
	dc.l Blk16_WAZ+$24000000
	dc.l Blk256_WAZ
	dc.b 0,	$81, 4,	$22
	dc.l Kos_FCZ+$25000000
	dc.l Blk16_FCZ+$26000000
	dc.l Blk256_FCZ
	dc.b 0,	$82, 5,	$23
	dc.l Kos_RTZ+$27000000
	dc.l Blk16_RTZ+$28000000
	dc.l Blk256_RTZ
	dc.b 0,	$83, 6,	$24
	dc.l Kos_SZ+$29000000
	dc.l Blk16_SZ+$2A000000
	dc.l Blk256_SZ
	dc.b 0,	$84, 7,	$25
	even