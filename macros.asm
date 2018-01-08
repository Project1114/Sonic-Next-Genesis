; ===========================================================================
Current_Character       equ     $FFFFFFEC       ; whatever the character you are using is
Current_Partner       equ     $FFFFFFEE       ; whatever the character you are using is
Water_Flag              equ     $FFFFF629 ; if the level has water
align macro
        cnop 0,\1
        endm

; ---------------------------------------------------------------------------
; check if object moves out of range
; input: location to jump to if out of range, x-axis pos (obX(a0) by default)
; ---------------------------------------------------------------------------

obRange:        macro exit,pos
                move.w  8(a0),d0      ; get object position
                andi.w  #$FF80,d0       ; round down to nearest $80
                move.w  ($FFFFF700).w,d1 ; get screen position
                subi.w  #128,d1
                andi.w  #$FF80,d1
                sub.w   d1,d0
                cmpi.w  #128+320+192,d0
                bhi.w   exit            ; if object moves out of range, branch
                endm

obRanges:        macro exit,pos     
                move.w  8(a0),d0      ; get object position
                andi.w  #$FF80,d0       ; round down to nearest $80
                move.w  ($FFFFF700).w,d1 ; get screen position
                subi.w  #128,d1
                andi.w  #$FF80,d1
                sub.w   d1,d0
                cmpi.w  #128+320+192,d0
                bhi.s   exit            ; if object moves out of range, branch
                endm

; ===========================================================================
; ---------------------------------------------------------------------------
; Kosinski decompression routine
;
; Created by vladikcomper
; Special thanks to flamewing and MarkeyJester
; ---------------------------------------------------------------------------
 
_Kos_RunBitStream macro
        dbf     d2,@skip\@
        moveq   #7,d2
        move.b  d1,d0
        swap    d3
        bpl.s   @skip\@
        move.b  (a0)+,d0                        ; get desc. bitfield
        move.b  (a0)+,d1                        ;
        move.b  (a4,d0.w),d0                    ; reload converted desc. bitfield from a LUT
        move.b  (a4,d1.w),d1                    ;
@skip\@
        endm
; ==============================================================================

lvlord_sega             = $0000
wave_ocean_act_1        = $0000
wave_ocean_act_2        = $0001
wave_ocean_act_3        = $0002
wave_ocean_act_4        = $0003

dusty_desert_act_1    = $0200
dusty_desert_act_2    = $0201
dusty_desert_act_3    = $0202
dusty_desert_act_4    = $0203
                
crisis_city_act_1       = $0400
crisis_city_act_2       = $0401
crisis_city_act_3       = $0402
crisis_city_act_4       = $0403

tropical_jungle_act_1         = $0100
tropical_jungle_act_2         = $0101
tropical_jungle_act_3         = $0102
tropical_jungle_act_4         = $0103
                
kingdom_valley_act_1        = $0300
kingdom_valley_act_2        = $0301
kingdom_valley_act_3        = $0302
kingdom_valley_act_4        = $0303

aquatic_base_act_1       = $0500
aquatic_base_act_2       = $0501
aquatic_base_act_3       = $0502
aquatic_base_act_4       = $0503

special_stage_act_1       = $0700
special_stage_act_2       = $0701
special_stage_act_3       = $0702
special_stage_act_4       = $0703

white_acropolis_act_1       = $0800
white_acropolis_act_2       = $0801
white_acropolis_act_3       = $0802
white_acropolis_act_4       = $0803

flame_core_act_1       = $0900
flame_core_act_2       = $0901
flame_core_act_3       = $0902
flame_core_act_4       = $0903

radical_train_act_1       = $0A00
radical_train_act_2       = $0A01
radical_train_act_3       = $0A02
radical_train_act_4       = $0A03

soleanna_act_1       = $0B00
soleanna_act_2       = $0B01
soleanna_act_3       = $0B02
soleanna_act_4       = $0B03

Snd_Special_FadeOut             equ     $E0
Snd_Special_SEGA                equ     $E1
Snd_Special_StopSng             equ     $E4
RAM_SpriteAddr                  equ     $FFFFB000               ;(Only used in SegaScreen) Change: $FFFFD000 for s1 or $FFFFB000 for s2

Game_Mode                       equ     $FFFFF600               ;Delete this variable if you are using the S2 AS disasm
ModeID_Title                    equ     $4

;Don't add these variables if you used the 6 button guide
RAM_Control_1_Press             equ     $FFFFF605
JoyStart                        equ     $80

BitMapXpos      equ     4
BitMapYpos      equ     2
BitMapWidth     equ     256
BitMapHeight    equ     128
BitMapCellHeight        equ     (BitMapHeight/8)
BitMapCellWidth equ     (BitMapWidth/8)
WallPalBits     equ     $2000
MapRowWidth     equ     64
bitmapaddr      equ $8000
scrollAaddr     equ     $C000
spriteaddr      equ     $D800
hscrolladdr     equ     $DC00
scrollBaddr     equ     $E000
windowaddr      equ     $F000
DMA_ByteInc     equ     $0
DMA_Length1     equ     $2
DMA_Length2     equ     $4
DMA_SrcAdr1     equ     $6
DMA_SrcAdr2     equ     $8
DMA_SrcAdr3     equ     $A
DMA_DMAenbl     equ     $C
DMA_DstAdr1     equ     $E
DMA_DstAdr2     equ     $10
DMA_DMADisbl    equ     $12
SNDADD            EQU    $A04000
SNDDAT            EQU    $A04001
CNTLA              EQU   $A10008
CNTLB              EQU   $A1000A
CNTLC              EQU   $A1000C
CNTLAW            EQU    $A10009
CNTLBW            EQU    $A1000B
CNTLCW            EQU    $A10009
PPCNTL            EQU    $A1000D
PPDATA            EQU    $A10007
BUSREQ            EQU    $A11100
BUSRES            EQU    $A11200
Z80RAM            EQU    $A00000
VDATA              EQU   $C00000
VCTRL              EQU   $C00004
SetVdpRegister  MACRO
                MOVE.W  #$8000|(\1<<8)|\2,VCTRL; check out the SEGA manual
                ENDM
SetVdpRegisterCode        MACRO
                and.w   #$00ff,\2                         ; Mask off high part
                or.w    #$8000|(\1<<8),\2
                move.w  \2,VCTRL
                ENDM
AutoIncrement   MACRO
                SetVdpRegister  15,\1
                ENDM
VramWrtAddr  MACRO
                MOVE.L  #$40000000|((\1&$3fff)<<16)|((\1>>14)&3),\2
                ENDM
VSramWrtAddr  MACRO
                MOVE.L  #$40000010|((\1&$3fff)<<16)|((\1>>14)&3),\2
                ENDM
CramWrtAddr  MACRO
                MOVE.L  #$C0000000|((\1&$3fff)<<16)|((\1>>14)&3),\2
                ENDM
CalcVramWrtAddrCode MACRO
                move.w  \1,\2             ; Copy for lower 14 bits
                and.l   #$3fff,\2         ; mask
                lsl.l   #8,\2
                lsl.l   #8,\2             ; Shift up
                or.l    #$40000000,\2  ; Set bit that tells VDP it's a VRAM WRITE
                lsr.l   #8,\1
                lsr.l   #6,\1             ; Shift down 14 bits
                and.l   #$3,\1
                or.l    \1,\2             ; and combine
                ENDM

; (since the DAC banks are incbin'd, this macro isn't in use, yet)
; for DAC pointers
zPtrDAC: macro addr
     dc.w ((((addr&$7FFF)+$8000)<<8)&$FF00)+(((addr&$7FFF)+$8000)>>8)
     endm

; for special pointers in the driver itself
zPtrSpec: macro addr
     dc.w (((addr&$1FFF)>>$08)|((addr&$1FFF)<<$08))&$FFFF
     endm

; for pointers to things that the 68k will interact with in the Z80 Driver
z68kPtr: macro addr
     dc.w (((addr&$FFFF)|$8000>>$08)|((addr&$FFFF)|$8000<<$08))&$FFFF
     endm

Max_Rings = 511 ; default. maximum number possible is 759
Rings_Space = (Max_Rings+1)*2

writeVRAM:  macro
        lea ($C00004).l,a5
        move.l  #$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
        move.l  #$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
        move.w  #$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
        move.w  #$4000+(\3&$3FFF),(a5)
        move.w  #$80+((\3&$C000)>>14),($FFFFF640).w
        move.w  ($FFFFF640).w,(a5)
        endm

writeCRAM:  macro
        lea ($C00004).l,a5
        move.l  #$94000000+(((\2>>1)&$FF00)<<8)+$9300+((\2>>1)&$FF),(a5)
        move.l  #$96000000+(((\1>>1)&$FF00)<<8)+$9500+((\1>>1)&$FF),(a5)
        move.w  #$9700+((((\1>>1)&$FF0000)>>16)&$7F),(a5)
        move.w  #$C000+(\3&$3FFF),(a5)
        move.w  #$80+((\3&$C000)>>14),($FFFFF640).w
        move.w  ($FFFFF640).w,(a5)
        endm

vram:  macro
        if (narg=1)
        move.l #($40000000+((\1&$3FFF)<<16)+((\1&$C000)>>14)),($C00004).l
        else
        move.l #($40000000+((\1&$3FFF)<<16)+((\1&$C000)>>14)),\2
        endc
        endm

; ---------------------------------------------------------------------------
; Copy a tilemap from 68K (ROM/RAM) to the VRAM without using DMA
; input: source, destination, width [cells], height [cells]
; ---------------------------------------------------------------------------

copyTilemap:    macro source,loc,width,height
        lea (source).l,a1
        move.l  #$40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14),d0
        moveq   #width,d1
        moveq   #height,d2
        bsr.w   ShowVDPGraphics
        endm

;watertransheader macro {INTLABEL}
;__LABEL__ label *
;    ; Number of entries in list minus one
;    dc.w (((__LABEL___End - __LABEL__ - 2) / 2) - 1)
;    endm

; tells the Z80 to stop, and waits for it to finish stopping (acquire bus)
stopZ80 macro
    move.w  #$100,($A11100).l ; stop the Z80
loop:   btst    #0,($A11100).l
    bne.s   loop ; loop until it says it's stopped
    endm

; tells the Z80 to start again
startZ80 macro
    move.w  #0,($A11100).l    ; start the Z80
    endm