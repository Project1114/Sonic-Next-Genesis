; ===========================================================================
Current_Character   equ     $FFFFFFEC       ; whatever the character you are using is
Current_Partner     equ     $FFFFFFED       ; whatever the character you are using is
Water_Flag          equ     $FFFFF629       ; if the level has water
Universal_Timer     equ     $FFFFF664       ; timer that never resets during gameplay
Universal_Timer2    equ     $FFFFF666       ; lowest word of timer
Day_Time            equ     $FFFFF668       ; time of day
Day_Time_Pal        equ     $FFFFF66A       ; flag for changing palette
Flying_carrying_flag: equ   $FFFFF748    ;
v_camera_pan:       equ     $FFFFF7A0    ; Extended Camera - how far the camera/view is panned to the left or right of Sonic (2 bytes)
Scroll_Lock:        equ     $FFFFFE12    ;
HIntJump:           equ     $FFFFFFC4
HIntAddr:           equ     $FFFFFFC6
VIntJump:           equ     $FFFFFFCA
VIntAddr:           equ     $FFFFFFCC
HIntCounter:        equ     $FFFFFFE8
HIntCode:           equ     $FFFFE600
TitlePal:           equ     $FFFFE680

Z80_Space = $80C            ; The amount of space reserved for Z80 driver. The compressor tool may ask you to increase the size...
z80_ram:    equ $A00000
z80_bus_request equ $A11100
z80_reset:  equ $A11200
ConsoleRegion   equ $FFFFFFF8
Drvmem      equ $FFFFF000

ChecksumAddr    equ $FFFFFFEC       ; the checksum address we're checking (4 bytes)
ChecksumValue   equ $FFFFFFF0       ; the accumulated value of checksum check (2 bytes)
ChecksumStart   equ $FFFFFFF4       ; set if start button was pressed during checksum check

align macro
        cnop 0,\1
        endm

; Macro for playing a command
command     macro id
    move.b #id,mQueue.w
    endm

; Macro for playing music
music       macro id
    move.b #id,mQueue+1.w
    endm

; Macro for playing sound effect
sfx     macro id
    move.b #id,mQueue+2.w
    endm

        opt w-      ; disable warnings
; ===========================================================================
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
aaz_act_1        = $0000
aaz_act_2        = $0001
aaz_act_3        = $0002
aaz_act_4        = $0003

bbz_act_1         = $0100
bbz_act_2         = $0101
bbz_act_3         = $0102
bbz_act_4         = $0103

ccz_act_1    = $0200
ccz_act_2    = $0201
ccz_act_3    = $0202
ccz_act_4    = $0203
                
ddz_act_1        = $0300
ddz_act_2        = $0301
ddz_act_3        = $0302
ddz_act_4        = $0303

eez_act_1       = $0400
eez_act_2       = $0401
eez_act_3       = $0402
eez_act_4       = $0403
                
ffz_act_1       = $0500
ffz_act_2       = $0501
ffz_act_3       = $0502
ffz_act_4       = $0503

ggz_act_1       = $0600
ggz_act_2       = $0601
ggz_act_3       = $0602
ggz_act_4       = $0603

special_stage_act_1       = $0700
special_stage_act_2       = $0701
special_stage_act_3       = $0702
special_stage_act_4       = $0703

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

; ---------------------------------------------------------------------------
; Set a VRAM address via the VDP control port.
; input: 16-bit VRAM address, control port (default is ($C00004).l)
; ---------------------------------------------------------------------------

locVRAM:    macro loc,controlport
        if (narg=1)
        move.l  #($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),($C00004).l
        else
        move.l  #($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),controlport
        endc
        endm

; ---------------------------------------------------------------------------
; Store a VRAM address in d0
; input: 16-bit VRAM address
; ---------------------------------------------------------------------------

locVRAMd0:  macro loc
        move.l  #($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),d0
        endm

; ---------------------------------------------------------------------------
; DMA copy data from 68K (ROM/RAM) to the VRAM
; input: source, length, destination
; ---------------------------------------------------------------------------

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

hudVRAM:    macro loc
        move.l  #($40000000+((loc&$3FFF)<<16)+((loc&$C000)>>14)),d0
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

mainspr_mapframe    = $B
mainspr_width        = $E
mainspr_childsprites     = $F    ; amount of child sprites
mainspr_height        = $14
sub2_x_pos        = $10    ;x_vel
sub2_y_pos        = $12    ;y_vel
sub2_mapframe        = $15
sub3_x_pos        = $16    ;y_radius
sub3_y_pos        = $18    ;priority
sub3_mapframe        = $1B    ;anim_frame
sub4_x_pos        = $1C    ;anim
sub4_y_pos        = $1E    ;anim_frame_duration
sub4_mapframe        = $21    ;collision_property
sub5_x_pos        = $22    ;status
sub5_y_pos        = $24    ;routine
sub5_mapframe        = $27
sub6_x_pos        = $28    ;subtype
sub6_y_pos        = $2A
sub6_mapframe        = $2D
sub7_x_pos        = $2E
sub7_y_pos        = $30
sub7_mapframe        = $33
sub8_x_pos        = $34
sub8_y_pos        = $36
sub8_mapframe        = $39
sub9_x_pos        = $3A
sub9_y_pos        = $3C
sub9_mapframe        = $3F
next_subspr       = $6

make_art_tile: macro addr,pal,pri
    move.w  #((pri&1)<<15)|((pal&3)<<13)|(addr&$7FF),2(a0)
    endm

; Universal Art
ArtTile_TornadoSign = $4D9  ; $A tiles
ArtTile_Spikes = $4E3       ; $10 tiles
ArtTile_DSpring = $4F3      ; $20 tiles
ArtTile_HSpring = $513      ; $10 tiles
ArtTile_VSpring = $523      ; $10 tiles
ArtTile_Animal1 = $533      ; $12 tiles
ArtTile_Animal2 = $545      ; $12 tiles
ArtTile_Explode = $557      ; $65 tiles
ArtTile_Shield = $5BC       ; $24 tiles
ArtTile_Dust = $5E0         ; $10 tiles
ArtTile_Dust2 = $5F0        ; $10 tiles
; $600-$67F is reserved
ArtTile_Monitor = $680      ; $4F tiles
ArtTile_Lamp = $6D0         ; $14 tiles
ArtTile_Rings = $6E4        ; 8 tiles
ArtTile_HUDBase = $6EC      ; 0 tiles
ArtTile_HUDMarks = $6EC     ; 2 tiles
ArtTile_HUDCent = $6EE      ; 4 tiles
ArtTile_HUDMin = $6F2       ; 4 tiles
ArtTile_HUDSec = $6F6       ; 4 tiles
ArtTile_HUDRings = $6FA     ; 6 tiles
; $700-$77F is reserved
ArtTile_Main = $780         ; $20 tiles ($10 for Tails)
ArtTile_MainSec = $790      ; $10 tiles
ArtTile_Partner = $7A0      ; $20 tiles ($10 for Tails)
ArtTile_PartnerSec = $7B0   ; $10 tiles

; End of Level
ArtTile_HUDBonus = $570

; AAZ
; BBZ
ArtTile_Orbinaut = $428 
; CCZ
; DDZ
; EEZ
; FFZ
; GGZ
; SSZ

; Bonus
ArtTile_HUDBaseSS = $21B
ArtTile_HUDMarksSS = $21B
ArtTile_HUDCentSS = $21D
ArtTile_HUDMinSS = $221
ArtTile_HUDSecSS = $225
ArtTile_HUDRingsSS = $229

; Subsprite SSTs
mainspr_mapframe    = $B
mainspr_width        = $E
mainspr_childsprites     = $F    ; amount of child sprites
mainspr_height        = $14
sub2_x_pos        = $10    ;x_vel
sub2_y_pos        = $12    ;y_vel
sub2_mapframe        = $15
sub3_x_pos        = $16    ;y_radius
sub3_y_pos        = $18    ;priority
sub3_mapframe        = $1B    ;anim_frame
sub4_x_pos        = $1C    ;anim
sub4_y_pos        = $1E    ;anim_frame_duration
sub4_mapframe        = $21    ;collision_property
sub5_x_pos        = $22    ;status
sub5_y_pos        = $24    ;routine
sub5_mapframe        = $27
sub6_x_pos        = $28    ;subtype
sub6_y_pos        = $2A
sub6_mapframe        = $2D
sub7_x_pos        = $2E
sub7_y_pos        = $30
sub7_mapframe        = $33
sub8_x_pos        = $34
sub8_y_pos        = $36
sub8_mapframe        = $39
sub9_x_pos        = $3A
sub9_y_pos        = $3C
sub9_mapframe        = $3F
next_subspr       = $6