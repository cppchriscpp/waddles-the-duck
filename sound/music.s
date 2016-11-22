;this file for FamiTone2 library generated by text2data tool

music_music_data:
	.byte 7
	.word @instruments
	.word @samples-3
	.word @song0ch0,@song0ch1,@song0ch2,@song0ch3,@song0ch4,307,256
	.word @song1ch0,@song1ch1,@song1ch2,@song1ch3,@song1ch4,245,204
	.word @song2ch0,@song2ch1,@song2ch2,@song2ch3,@song2ch4,245,204
	.word @song3ch0,@song3ch1,@song3ch2,@song3ch3,@song3ch4,307,256
	.word @song4ch0,@song4ch1,@song4ch2,@song4ch3,@song4ch4,307,256
	.word @song5ch0,@song5ch1,@song5ch2,@song5ch3,@song5ch4,307,256
	.word @song6ch0,@song6ch1,@song6ch2,@song6ch3,@song6ch4,307,256

@instruments:
	.byte $30 ;instrument $01
	.word @env2,@env0,@env13
	.byte $00
	.byte $b0 ;instrument $05
	.word @env3,@env0,@env14
	.byte $00
	.byte $b0 ;instrument $0d
	.word @env4,@env0,@env0
	.byte $00
	.byte $30 ;instrument $0e
	.word @env5,@env0,@env15
	.byte $00
	.byte $b0 ;instrument $12
	.word @env4,@env0,@env0
	.byte $00
	.byte $30 ;instrument $14
	.word @env6,@env0,@env0
	.byte $00
	.byte $b0 ;instrument $15
	.word @env4,@env0,@env0
	.byte $00
	.byte $30 ;instrument $17
	.word @env1,@env0,@env0
	.byte $00
	.byte $30 ;instrument $1a
	.word @env1,@env10,@env0
	.byte $00
	.byte $30 ;instrument $1e
	.word @env7,@env0,@env0
	.byte $00
	.byte $30 ;instrument $22
	.word @env8,@env11,@env0
	.byte $00
	.byte $30 ;instrument $27
	.word @env9,@env12,@env0
	.byte $00
	.byte $30 ;instrument $2a
	.word @env1,@env0,@env0
	.byte $00
	.byte $30 ;instrument $2b
	.word @env1,@env10,@env0
	.byte $00

@samples:
@env0:
	.byte $c0,$00,$00
@env1:
	.byte $cc,$00,$00
@env2:
	.byte $c3,$00,$00
@env3:
	.byte $cb,$ce,$c9,$c4,$c1,$c0,$00,$05
@env4:
	.byte $c8,$c7,$c6,$c6,$c5,$c5,$c4,$00,$06
@env5:
	.byte $c2,$c4,$c6,$c6,$c7,$c7,$c8,$c7,$c6,$c5,$c5,$c4,$00,$0b
@env6:
	.byte $c2,$c8,$c6,$c5,$c5,$c4,$c4,$00,$06
@env7:
	.byte $cf,$09,$c0,$cf,$c0,$c0,$cf,$c0,$c0,$cf,$c0,$c0,$cf,$c0,$c0,$cf
	.byte $c0,$02,$cf,$c0,$02,$cf,$c0,$00,$16
@env8:
	.byte $ca,$c3,$c2,$c1,$c0,$00,$04
@env9:
	.byte $cd,$cb,$c9,$c7,$c6,$c5,$c5,$c4,$c4,$c3,$c3,$c2,$04,$c1,$03,$c0
	.byte $00,$0f
@env10:
	.byte $c0,$02,$cc,$cc,$00,$02
@env11:
	.byte $c0,$c2,$c0,$00,$02
@env12:
	.byte $c0,$c0,$c1,$c1,$c2,$c2,$c3,$00,$06
@env13:
	.byte $d9,$ff,$ff,$ff,$00,$03
@env14:
	.byte $ff,$00,$00
@env15:
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
	.byte $84,$62,$63,$6c,$6d,$62,$63,$6c,$6c,$89,$62,$63,$6c,$6d,$62,$63
	.byte $6c,$6c,$87,$62,$63,$6c,$6d,$62,$63,$6c,$6c,$89,$62,$63,$6c,$6d
	.byte $62,$63,$6c,$6c,$8b
	.byte $fd
	.word @song1ch0loop

@song1ch1:
@song1ch1loop:
@ref21:
	.byte $98,$02,$85,$02,$87,$06,$8d,$02,$8d,$8e,$0a,$89,$98,$02,$85,$02
	.byte $87,$06,$8d,$02,$8d,$8e,$0a,$8d
	.byte $fd
	.word @song1ch1loop

@song1ch2:
@song1ch2loop:
@ref22:
	.byte $84,$6c,$70,$75,$7a,$83,$6d,$75,$7a,$89,$70,$75,$7a,$83,$6d,$75
	.byte $6c,$85,$6c,$70,$75,$7a,$83,$6d,$75,$7a,$89,$70,$75,$7a,$83,$6d
	.byte $75,$6c,$89
	.byte $fd
	.word @song1ch2loop

@song1ch3:
@song1ch3loop:
@ref23:
	.byte $f9,$85
	.byte $fd
	.word @song1ch3loop

@song1ch4:
@song1ch4loop:
@ref24:
	.byte $f9,$85
	.byte $fd
	.word @song1ch4loop


@song2ch0:
	.byte $fb,$06
@song2ch0loop:
@ref25:
	.byte $9a,$67,$00,$6b,$6d,$75,$00,$7b,$01,$00,$7a,$9f
@ref26:
	.byte $bf
@ref27:
	.byte $8a,$54,$bd
@ref28:
	.byte $bf
@ref29:
	.byte $52,$bd
@ref30:
	.byte $bf
	.byte $fd
	.word @song2ch0loop

@song2ch1:
@song2ch1loop:
@ref31:
	.byte $bf
@ref32:
	.byte $bf
@ref33:
	.byte $8a,$4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55
	.byte $00,$81
@ref34:
	.byte $4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$55,$00
	.byte $81
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $fd
	.word @song2ch1loop

@song2ch2:
@song2ch2loop:
@ref37:
	.byte $bf
@ref38:
	.byte $bf
@ref39:
	.byte $bf
@ref40:
	.byte $bf
@ref41:
	.byte $bf
@ref42:
	.byte $bf
	.byte $fd
	.word @song2ch2loop

@song2ch3:
@song2ch3loop:
@ref43:
	.byte $bf
@ref44:
	.byte $bf
@ref45:
	.byte $bf
@ref46:
	.byte $bf
@ref47:
	.byte $bf
@ref48:
	.byte $bf
	.byte $fd
	.word @song2ch3loop

@song2ch4:
@song2ch4loop:
@ref49:
	.byte $bf
@ref50:
	.byte $bf
@ref51:
	.byte $bf
@ref52:
	.byte $bf
@ref53:
	.byte $bf
@ref54:
	.byte $bf
	.byte $fd
	.word @song2ch4loop


@song3ch0:
	.byte $fb,$06
@song3ch0loop:
@ref55:
	.byte $8f,$8a,$6c,$74,$83,$6a,$70,$83,$6c,$83,$00,$d7
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
	.byte $82,$14,$8d,$96,$08,$0a,$01,$08,$0a,$01,$0b,$05,$00,$d5
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
	.byte $8c,$42,$85,$50,$85,$57,$51,$57,$50,$99,$00,$85
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
	.byte $88,$12,$83,$00,$2c,$83,$00,$12,$12,$12,$2c,$83,$01,$12,$83,$00
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
	.byte $8a,$52,$85,$01,$55,$58,$89,$01,$6a,$89,$01,$62,$89,$00,$81
@ref91:
	.byte $67,$01,$62,$95,$00,$9d
@ref92:
	.byte $54,$85,$01,$57,$5a,$89,$01,$6c,$89,$01,$68,$89,$00,$81
@ref93:
	.byte $6d,$01,$68,$95,$00,$9d
@ref94:
	.byte $52,$85,$01,$55,$58,$89,$01,$6a,$89,$01,$62,$89,$00,$81
@ref95:
	.byte $67,$01,$62,$91,$01,$67,$01,$6a,$8d,$00,$85
	.byte $ff,$0e
	.word @ref94
@ref97:
	.byte $67,$01,$62,$ad,$00,$85
@ref98:
	.byte $3a,$85,$01,$3d,$40,$89,$01,$52,$89,$01,$4a,$89,$00,$81
@ref99:
	.byte $4f,$01,$4a,$95,$00,$9d
@ref100:
	.byte $3c,$85,$01,$3f,$42,$89,$01,$54,$89,$01,$50,$89,$00,$81
@ref101:
	.byte $55,$01,$50,$95,$00,$9d
	.byte $ff,$0e
	.word @ref98
@ref103:
	.byte $4f,$01,$4a,$91,$01,$4f,$01,$52,$8d,$00,$85
	.byte $ff,$0e
	.word @ref98
@ref105:
	.byte $4f,$01,$4a,$ad,$00,$85
	.byte $fd
	.word @song5ch0loop

@song5ch1:
@song5ch1loop:
	.byte $ff,$11
	.word @ref33
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
@ref117:
	.byte $4b,$01,$53,$01,$4b,$01,$53,$01,$4f,$01,$55,$01,$4f,$01,$54,$85
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $ff,$11
	.word @ref34
	.byte $fd
	.word @song5ch1loop

@song5ch2:
@song5ch2loop:
@ref122:
	.byte $bf
@ref123:
	.byte $bf
@ref124:
	.byte $bf
@ref125:
	.byte $bf
@ref126:
	.byte $bf
@ref127:
	.byte $bf
@ref128:
	.byte $bf
@ref129:
	.byte $bf
@ref130:
	.byte $bf
@ref131:
	.byte $bf
@ref132:
	.byte $bf
@ref133:
	.byte $bf
@ref134:
	.byte $bf
@ref135:
	.byte $bf
@ref136:
	.byte $bf
@ref137:
	.byte $bf
	.byte $fd
	.word @song5ch2loop

@song5ch3:
@song5ch3loop:
@ref138:
	.byte $bf
@ref139:
	.byte $bf
@ref140:
	.byte $bf
@ref141:
	.byte $bf
@ref142:
	.byte $bf
@ref143:
	.byte $bf
@ref144:
	.byte $bf
@ref145:
	.byte $bf
@ref146:
	.byte $bf
@ref147:
	.byte $bf
@ref148:
	.byte $bf
@ref149:
	.byte $bf
@ref150:
	.byte $bf
@ref151:
	.byte $bf
@ref152:
	.byte $bf
@ref153:
	.byte $bf
	.byte $fd
	.word @song5ch3loop

@song5ch4:
@song5ch4loop:
@ref154:
	.byte $bf
@ref155:
	.byte $bf
@ref156:
	.byte $bf
@ref157:
	.byte $bf
@ref158:
	.byte $bf
@ref159:
	.byte $bf
@ref160:
	.byte $bf
@ref161:
	.byte $bf
@ref162:
	.byte $bf
@ref163:
	.byte $bf
@ref164:
	.byte $bf
@ref165:
	.byte $bf
@ref166:
	.byte $bf
@ref167:
	.byte $bf
@ref168:
	.byte $bf
@ref169:
	.byte $bf
	.byte $fd
	.word @song5ch4loop


@song6ch0:
	.byte $fb,$03
@song6ch0loop:
@ref170:
	.byte $92,$38,$8d,$00,$85,$38,$83,$00,$3e,$85,$00,$85,$39,$01,$35,$01
	.byte $38,$8d,$00,$ad
	.byte $fd
	.word @song6ch0loop

@song6ch1:
@song6ch1loop:
@ref171:
	.byte $f9,$85
	.byte $fd
	.word @song6ch1loop

@song6ch2:
@song6ch2loop:
@ref172:
	.byte $f9,$85
	.byte $fd
	.word @song6ch2loop

@song6ch3:
@song6ch3loop:
@ref173:
	.byte $f9,$85
	.byte $fd
	.word @song6ch3loop

@song6ch4:
@song6ch4loop:
@ref174:
	.byte $f9,$85
	.byte $fd
	.word @song6ch4loop
