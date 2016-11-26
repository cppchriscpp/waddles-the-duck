;this file for FamiTone2 library generated by text2data tool

music_music_data:
	.byte 8
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,245,204
	.word @song2ch0,@song2ch1,@song2ch2,@song2ch3,@song2ch4,245,204
	.word @song3ch0,@song3ch1,@song3ch2,@song3ch3,@song3ch4,307,256
	.word @song4ch0,@song4ch1,@song4ch2,@song4ch3,@song4ch4,307,256
	.word @song5ch0,@song5ch1,@song5ch2,@song5ch3,@song5ch4,307,256
	.word @song6ch0,@song6ch1,@song6ch2,@song6ch3,@song6ch4,307,256
	.word @song7ch0,@song7ch1,@song7ch2,@song7ch3,@song7ch4,307,256

@instruments:
	.byte $30 ;instrument $01
	.word @env1,@env0,@env14
	.byte $00
	.byte $b0 ;instrument $05
	.word @env2,@env0,@env15
	.byte $00
	.byte $b0 ;instrument $0d
	.word @env3,@env0,@env0
	.byte $00
	.byte $30 ;instrument $0e
	.word @env4,@env0,@env16
	.byte $00
	.byte $30 ;instrument $10
	.word @env3,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $12
	.word @env3,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $14
	.word @env5,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $15
	.word @env3,@env0,@env0
	.byte $00
	.byte $30 ;instrument $1e
	.word @env6,@env0,@env0
	.byte $00
	.byte $30 ;instrument $1f
	.word @env7,@env0,@env0
	.byte $00
	.byte $30 ;instrument $22
	.word @env8,@env12,@env0
	.byte $00
	.byte $30 ;instrument $23
	.word @env9,@env0,@env0
	.byte $00
	.byte $30 ;instrument $27
	.word @env10,@env13,@env0
	.byte $00
	.byte $30 ;instrument $2a
	.word @env11,@env0,@env0
	.byte $00

@samples:
@env0:
	.byte $c0,$00,$00
@env1:
	.byte $c3,$00,$00
@env2:
	.byte $cb,$ce,$c9,$c4,$c1,$c0,$00,$05
@env3:
	.byte $c8,$c7,$c6,$c6,$c5,$c5,$c4,$00,$06
@env4:
	.byte $c2,$c4,$c6,$c6,$c7,$c7,$c8,$c7,$c6,$c5,$c5,$c4,$00,$0b
@env5:
	.byte $c2,$c8,$c6,$c5,$c5,$c4,$c4,$00,$06
@env6:
	.byte $cf,$09,$c0,$cf,$c0,$c0,$cf,$c0,$c0,$cf,$c0,$c0,$cf,$c0,$c0,$cf
	.byte $c0,$02,$cf,$c0,$02,$cf,$c0,$00,$16
@env7:
	.byte $c8,$c0,$00,$01
@env8:
	.byte $ca,$c3,$c2,$c1,$c0,$00,$04
@env9:
	.byte $c8,$c7,$c6,$c5,$02,$c4,$02,$c0,$00,$07
@env10:
	.byte $cd,$cb,$c9,$c7,$c6,$c5,$c5,$c4,$c4,$c3,$c3,$c2,$04,$c1,$03,$c0
	.byte $00,$0f
@env11:
	.byte $c2,$00,$00
@env12:
	.byte $c0,$c2,$c0,$00,$02
@env13:
	.byte $c0,$c0,$c1,$c1,$c2,$c2,$c3,$00,$06
@env14:
	.byte $ca,$da,$00,$01
@env15:
	.byte $ff,$00,$00
@env16:
	.byte $c0,$1f,$c1,$c2,$02,$c1,$c0,$00,$02


@song0ch0:
	.byte $fb,$08
@song0ch0loop:
@ref0:
	.byte $9f
@ref1:
	.byte $9f
@ref2:
	.byte $9f
@ref3:
	.byte $9f
	.byte $fd
	.word @song0ch0loop

@song0ch1:
@song0ch1loop:
@ref4:
	.byte $9f
@ref5:
	.byte $9f
@ref6:
	.byte $9f
@ref7:
	.byte $9f
	.byte $fd
	.word @song0ch1loop

@song0ch2:
@song0ch2loop:
@ref8:
	.byte $80,$42,$83,$00,$5c,$83,$00,$42,$42,$42,$5c,$83,$00,$81
@ref9:
	.byte $42,$83,$00,$5c,$83,$00,$42,$42,$42,$5d,$00,$46,$48
@ref10:
	.byte $42,$83,$00,$5c,$83,$00,$42,$42,$42,$5d,$50,$50,$81
@ref11:
	.byte $42,$83,$00,$5c,$83,$00,$42,$42,$42,$5c,$00,$68,$6c,$81
	.byte $fd
	.word @song0ch2loop

@song0ch3:
@song0ch3loop:
@ref12:
	.byte $80,$18,$00,$19,$1c,$00,$1d,$0e,$00,$19,$00,$85
@ref13:
	.byte $18,$00,$19,$1c,$00,$1d,$0e,$00,$19,$00,$85
	.byte $ff,$0b
	.word @ref13
	.byte $ff,$0b
	.word @ref13
	.byte $fd
	.word @song0ch3loop

@song0ch4:
@song0ch4loop:
@ref16:
	.byte $9f
@ref17:
	.byte $9f
@ref18:
	.byte $9f
@ref19:
	.byte $9f
	.byte $fd
	.word @song0ch4loop


@song1ch0:
	.byte $fb,$08
@song1ch0loop:
@ref20:
	.byte $84,$62,$63,$6c,$6d,$62,$63,$6c,$6c,$89
@ref21:
	.byte $62,$63,$6c,$6d,$62,$63,$6c,$6c,$89
	.byte $ff,$09
	.word @ref21
	.byte $ff,$09
	.word @ref21
	.byte $fd
	.word @song1ch0loop

@song1ch1:
@song1ch1loop:
@ref24:
	.byte $9a,$02,$85,$02,$87,$06,$8b
@ref25:
	.byte $02,$8d,$0a,$8d
@ref26:
	.byte $02,$85,$02,$87,$06,$8b
@ref27:
	.byte $02,$8d,$0a,$8d
	.byte $fd
	.word @song1ch1loop

@song1ch2:
@song1ch2loop:
@ref28:
	.byte $84,$6c,$70,$75,$7a,$83,$6d,$75,$7a,$87
@ref29:
	.byte $6c,$70,$75,$7a,$83,$6d,$75,$6c,$87
@ref30:
	.byte $6c,$70,$75,$7a,$83,$6d,$75,$7a,$87
	.byte $ff,$09
	.word @ref29
	.byte $fd
	.word @song1ch2loop

@song1ch3:
@song1ch3loop:
@ref32:
	.byte $81,$92,$1e,$8d,$21,$20,$87
@ref33:
	.byte $81,$1e,$8d,$21,$20,$87
	.byte $ff,$06
	.word @ref33
	.byte $ff,$06
	.word @ref33
	.byte $fd
	.word @song1ch3loop

@song1ch4:
@song1ch4loop:
@ref36:
	.byte $9f
@ref37:
	.byte $9f
@ref38:
	.byte $9f
@ref39:
	.byte $9f
	.byte $fd
	.word @song1ch4loop


@song2ch0:
	.byte $fb,$06
@song2ch0loop:
@ref40:
	.byte $88,$67,$00,$6b,$6d,$75,$00,$7b,$01,$00,$7a,$df
@ref41:
	.byte $8e,$58,$f9,$83
@ref42:
	.byte $8c,$52,$f9,$83
	.byte $fd
	.word @song2ch0loop

@song2ch1:
@song2ch1loop:
@ref43:
	.byte $f9,$85
@ref44:
	.byte $8e,$41,$45,$4f,$41,$45,$4f,$41,$45,$4f,$41,$45,$4f,$29,$2d,$37
	.byte $29,$2d,$37,$29,$2d,$37,$29,$2d,$36,$a1
@ref45:
	.byte $8c,$4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55
	.byte $01,$4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55
	.byte $00,$81
	.byte $fd
	.word @song2ch1loop

@song2ch2:
@song2ch2loop:
@ref46:
	.byte $f9,$85
@ref47:
	.byte $f9,$85
@ref48:
	.byte $96,$1e,$8d,$18,$8d,$18,$8d,$18,$8d,$1e,$8d,$14,$8d,$18,$8d,$18
	.byte $85,$18,$85
	.byte $fd
	.word @song2ch2loop

@song2ch3:
@song2ch3loop:
@ref49:
	.byte $f9,$85
@ref50:
	.byte $96,$09,$09,$0d,$09,$09,$0d,$09,$09,$0d,$09,$09,$0d,$09,$09,$0d
	.byte $09,$09,$0d,$09,$09,$0d,$09,$0d,$0c,$a1
@ref51:
	.byte $92,$05,$05,$1a,$85,$05,$05,$1a,$85,$05,$05,$1a,$85,$05,$05,$1a
	.byte $85,$05,$05,$1a,$85,$05,$05,$1b,$05,$05,$05,$1b,$05,$05,$05,$1b
	.byte $20,$81
	.byte $fd
	.word @song2ch3loop

@song2ch4:
@song2ch4loop:
@ref52:
	.byte $f9,$85
@ref53:
	.byte $f9,$85
@ref54:
	.byte $f9,$85
	.byte $fd
	.word @song2ch4loop


@song3ch0:
	.byte $fb,$06
@song3ch0loop:
@ref55:
	.byte $8f,$8c,$6c,$74,$83,$6a,$70,$83,$6c,$83,$00,$d7
	.byte $fd
	.word @song3ch0loop

@song3ch1:
@song3ch1loop:
@ref56:
	.byte $f9,$85
	.byte $fd
	.word @song3ch1loop

@song3ch2:
@song3ch2loop:
@ref57:
	.byte $f9,$85
	.byte $fd
	.word @song3ch2loop

@song3ch3:
@song3ch3loop:
@ref58:
	.byte $82,$14,$8d,$98,$08,$0a,$01,$08,$0a,$01,$0b,$05,$00,$d5
	.byte $fd
	.word @song3ch3loop

@song3ch4:
@song3ch4loop:
@ref59:
	.byte $f9,$85
	.byte $fd
	.word @song3ch4loop


@song4ch0:
	.byte $fb,$08
@song4ch0loop:
@ref60:
	.byte $8e,$42,$85,$50,$85,$57,$51,$57,$50,$99,$00,$85
@ref61:
	.byte $5a,$85,$68,$85,$6f,$69,$6f,$68,$99,$00,$85
@ref62:
	.byte $42,$85,$50,$85,$57,$51,$57,$50,$99,$00,$85
	.byte $ff,$0b
	.word @ref61
@ref64:
	.byte $35,$01,$35,$01,$39,$00,$87,$00,$35,$01,$35,$01,$39,$00,$89
@ref65:
	.byte $4d,$01,$4d,$01,$51,$00,$87,$00,$4d,$01,$4d,$01,$51,$00,$89
	.byte $fd
	.word @song4ch0loop

@song4ch1:
@song4ch1loop:
@ref66:
	.byte $8a,$12,$83,$00,$2c,$83,$00,$12,$12,$12,$2c,$83,$01,$12,$83,$00
	.byte $2c,$83,$00,$12,$12,$12,$2d,$00,$16,$18
@ref67:
	.byte $12,$83,$00,$2c,$83,$00,$12,$12,$12,$2d,$20,$21,$12,$83,$00,$2c
	.byte $83,$00,$12,$12,$12,$2c,$00,$38,$3c,$81
@ref68:
	.byte $12,$83,$00,$2c,$83,$00,$12,$12,$12,$2c,$83,$01,$12,$83,$00,$2c
	.byte $83,$00,$12,$12,$12,$2d,$00,$16,$18
	.byte $ff,$1a
	.word @ref67
	.byte $ff,$19
	.word @ref68
	.byte $ff,$1a
	.word @ref67
	.byte $fd
	.word @song4ch1loop

@song4ch2:
@song4ch2loop:
@ref72:
	.byte $bf
@ref73:
	.byte $bf
@ref74:
	.byte $bf
@ref75:
	.byte $bf
@ref76:
	.byte $bf
@ref77:
	.byte $bf
	.byte $fd
	.word @song4ch2loop

@song4ch3:
@song4ch3loop:
@ref78:
	.byte $80,$18,$00,$19,$1c,$00,$1d,$0e,$00,$19,$00,$85,$18,$00,$19,$1c
	.byte $00,$1d,$0e,$00,$19,$00,$85
@ref79:
	.byte $18,$00,$19,$1c,$00,$1d,$0e,$00,$19,$00,$85,$18,$00,$19,$1c,$00
	.byte $1d,$0e,$00,$19,$00,$85
	.byte $ff,$16
	.word @ref79
	.byte $ff,$16
	.word @ref79
	.byte $ff,$16
	.word @ref79
	.byte $ff,$16
	.word @ref79
	.byte $fd
	.word @song4ch3loop

@song4ch4:
@song4ch4loop:
@ref84:
	.byte $bf
@ref85:
	.byte $bf
@ref86:
	.byte $bf
@ref87:
	.byte $bf
@ref88:
	.byte $bf
@ref89:
	.byte $bf
	.byte $fd
	.word @song4ch4loop


@song5ch0:
	.byte $fb,$03
@song5ch0loop:
@ref90:
	.byte $8c,$52,$85,$01,$55,$58,$89,$01,$6a,$89,$01,$62,$89,$01,$67,$01
	.byte $62,$a5,$00,$8d
@ref91:
	.byte $54,$85,$01,$57,$5a,$89,$01,$6c,$89,$01,$68,$89,$01,$6d,$01,$68
	.byte $a5,$00,$8d
@ref92:
	.byte $52,$85,$01,$55,$58,$89,$01,$6a,$89,$01,$62,$89,$01,$67,$01,$62
	.byte $91,$01,$67,$01,$6a,$8d,$00,$85
@ref93:
	.byte $52,$85,$01,$55,$58,$89,$01,$6a,$89,$01,$62,$89,$01,$67,$01,$62
	.byte $ad,$00,$85
@ref94:
	.byte $3a,$85,$01,$3d,$40,$89,$01,$52,$89,$01,$4a,$89,$01,$4f,$01,$4a
	.byte $95,$00,$9d
@ref95:
	.byte $3c,$85,$01,$3f,$42,$89,$01,$54,$89,$01,$50,$89,$01,$55,$01,$50
	.byte $95,$00,$9d
@ref96:
	.byte $3a,$85,$01,$3d,$40,$89,$01,$52,$89,$01,$4a,$89,$01,$4f,$01,$4a
	.byte $91,$01,$4f,$01,$52,$8d,$00,$85
@ref97:
	.byte $3a,$85,$01,$3d,$40,$89,$01,$52,$89,$01,$4a,$89,$01,$4f,$01,$4a
	.byte $ad,$00,$85
	.byte $fd
	.word @song5ch0loop

@song5ch1:
@song5ch1loop:
	.byte $ff,$21
	.word @ref45
@ref99:
	.byte $4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55,$01
	.byte $4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55,$00
	.byte $81
	.byte $ff,$21
	.word @ref99
	.byte $ff,$21
	.word @ref99
	.byte $ff,$21
	.word @ref99
@ref103:
	.byte $4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55,$01
	.byte $4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$54,$85
	.byte $ff,$21
	.word @ref99
	.byte $ff,$21
	.word @ref99
	.byte $fd
	.word @song5ch1loop

@song5ch2:
@song5ch2loop:
	.byte $ff,$12
	.word @ref48
@ref107:
	.byte $1e,$8d,$18,$8d,$18,$8d,$18,$8d,$1e,$8d,$14,$8d,$18,$8d,$18,$85
	.byte $18,$85
	.byte $ff,$12
	.word @ref107
	.byte $ff,$12
	.word @ref107
	.byte $ff,$12
	.word @ref107
	.byte $ff,$12
	.word @ref107
	.byte $ff,$12
	.word @ref107
	.byte $ff,$12
	.word @ref107
	.byte $fd
	.word @song5ch2loop

@song5ch3:
@song5ch3loop:
	.byte $ff,$21
	.word @ref51
@ref115:
	.byte $05,$05,$1a,$85,$05,$05,$1a,$85,$05,$05,$1a,$85,$05,$05,$1a,$85
	.byte $05,$05,$1a,$85,$05,$05,$1b,$05,$05,$05,$1b,$05,$05,$05,$1b,$20
	.byte $81
	.byte $ff,$21
	.word @ref115
	.byte $ff,$21
	.word @ref115
	.byte $ff,$21
	.word @ref115
	.byte $ff,$21
	.word @ref115
	.byte $ff,$21
	.word @ref115
	.byte $ff,$21
	.word @ref115
	.byte $fd
	.word @song5ch3loop

@song5ch4:
@song5ch4loop:
@ref122:
	.byte $f9,$85
@ref123:
	.byte $f9,$85
@ref124:
	.byte $f9,$85
@ref125:
	.byte $f9,$85
@ref126:
	.byte $f9,$85
@ref127:
	.byte $f9,$85
@ref128:
	.byte $f9,$85
@ref129:
	.byte $f9,$85
	.byte $fd
	.word @song5ch4loop


@song6ch0:
	.byte $fb,$03
@song6ch0loop:
@ref130:
	.byte $90,$38,$8d,$00,$85,$38,$83,$00,$3e,$85,$00,$85,$39,$01,$35,$01
	.byte $38,$8d,$00,$ad
@ref131:
	.byte $8e,$59,$5d,$67,$59,$5d,$67,$59,$5d,$67,$59,$5d,$67,$41,$45,$4f
	.byte $41,$45,$4f,$41,$45,$4f,$41,$45,$4f,$00,$8d,$8c,$54,$8d
	.byte $fd
	.word @song6ch0loop

@song6ch1:
@song6ch1loop:
@ref132:
	.byte $f9,$85
	.byte $ff,$19
	.word @ref44
	.byte $fd
	.word @song6ch1loop

@song6ch2:
@song6ch2loop:
@ref134:
	.byte $f9,$85
@ref135:
	.byte $f9,$85
	.byte $fd
	.word @song6ch2loop

@song6ch3:
@song6ch3loop:
@ref136:
	.byte $f9,$85
	.byte $ff,$19
	.word @ref50
	.byte $fd
	.word @song6ch3loop

@song6ch4:
@song6ch4loop:
@ref138:
	.byte $f9,$85
@ref139:
	.byte $f9,$85
	.byte $fd
	.word @song6ch4loop


@song7ch0:
	.byte $fb,$03
@song7ch0loop:
@ref140:
	.byte $f9,$85
@ref141:
	.byte $8e,$58,$f9,$83
@ref142:
	.byte $8c,$52,$85,$01,$55,$58,$89,$01,$6a,$89,$01,$62,$89,$01,$67,$01
	.byte $62,$95,$00,$9d
	.byte $fd
	.word @song7ch0loop

@song7ch1:
@song7ch1loop:
@ref143:
	.byte $f9,$85
	.byte $ff,$19
	.word @ref44
	.byte $ff,$21
	.word @ref45
	.byte $fd
	.word @song7ch1loop

@song7ch2:
@song7ch2loop:
	.byte $ff,$12
	.word @ref48
@ref147:
	.byte $f9,$85
	.byte $ff,$12
	.word @ref107
	.byte $fd
	.word @song7ch2loop

@song7ch3:
@song7ch3loop:
	.byte $ff,$21
	.word @ref51
	.byte $ff,$19
	.word @ref50
	.byte $ff,$21
	.word @ref51
	.byte $fd
	.word @song7ch3loop

@song7ch4:
@song7ch4loop:
@ref152:
	.byte $f9,$85
@ref153:
	.byte $f9,$85
@ref154:
	.byte $f9,$85
	.byte $fd
	.word @song7ch4loop
