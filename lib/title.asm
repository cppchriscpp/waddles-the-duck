.macro draw_title_screen num
	set_ppu_addr $2000
	store #<(.ident(.concat("title_tile_", .string(num)))), tempAddr
	store #>(.ident(.concat("title_tile_", .string(num)))), tempAddr+1
	jsr PKB_unpackblk

	store #<(.ident(.concat("title_sprites_", .string(num)))), tempAddr
	store #>(.ident(.concat("title_sprites_", .string(num)))), tempAddr+1
	jsr draw_title_sprites
.endmacro

.macro draw_title_text_only num
	set_ppu_addr $21c0
	store #<(.ident(.concat("title_tile_", .string(num)))), tempAddr
	store #>(.ident(.concat("title_tile_", .string(num)))), tempAddr+1
	jsr PKB_unpackblk

	store #<(.ident(.concat("title_sprites_", .string(num)))), tempAddr
	store #>(.ident(.concat("title_sprites_", .string(num)))), tempAddr+1
	jsr draw_title_sprites
.endmacro

show_intro:
	lda #SONG_INTRO
	jsr music_play

	lda #%11001000
	sta ppuCtrlBuffer
	lda #0
	sta scrollX
	sta scrollY
	reset_ppu_scrolling_and_ctrl

	lda #MENU_PALETTE_ID
	sta currentPalette

	lda #$0f
	sta currentBackgroundColorOverride

	lda #0 ; High-resolution timer for events... tempe = lo, tempf = hi
	sta tempe
	sta tempf 

	draw_title_screen 1

	set_ppu_addr $3f00
	lda #0
	ldx #0
	@loop_pal:
		sta PPU_DATA
		inx
		cpx #32
		bne @loop_pal


	reset_ppu_scrolling_and_ctrl
	jsr vblank_wait

	jsr vblank_wait
	jsr enable_all

	jsr do_menu_fade_in


	@loop:
		jsr sound_update
		jsr read_controller
		lda ctrlButtons
		cmp #CONTROLLER_START
		beq @no_start
		lda lastCtrlButtons
		cmp #CONTROLLER_START
		bne @no_start
			rts
		@no_start:
		inc tempe
		lda #0
		cmp tempe
		bne @no_increment
			inc tempf
		@no_increment:
		
		jsr vblank_wait


		bne16 250, tempe, @not_flash
			jsr bright_flash
		@not_flash:
		bne16 289, tempe, @not_1st_fadeout
			jsr do_menu_fade_out
		@not_1st_fadeout:
		; Look up where in the cycle we are and if we need to take action.
		bne16 290, tempe, @not_2nd
			jsr disable_all
			jsr vblank_wait
			jsr sound_update
			draw_title_screen 2
			reset_ppu_scrolling_and_ctrl
			jsr vblank_wait
			jsr sound_update
			jsr enable_all
		@not_2nd:
		bne16 320, tempe, @not_2nd_fadein
			jsr do_menu_fade_in
		@not_2nd_fadein:
		bne16 649, tempe, @not_2nd_fadeout
			jsr do_menu_fade_out
		@not_2nd_fadeout:
		bne16 650, tempe, @not_3rd
			jsr disable_all
			jsr vblank_wait
			jsr sound_update
			draw_title_text_only 3
			reset_ppu_scrolling_and_ctrl
			jsr vblank_wait
			jsr sound_update
			jsr enable_all
		@not_3rd:
		bne16 690, tempe, @not_3rd_fadein
			jsr do_menu_fade_in
		@not_3rd_fadein:
		bne16 1110, tempe, @not_3rd_fadeout
			jsr do_menu_fade_out
			rts
		@not_3rd_fadeout:
		jmp @loop
		


do_menu_fade_out:
	phx
	ldx #0
	stx temp0
	@loop:

		txa
		pha ; Shove it into the stack so we can get it back.
		lsr
		lsr ; Now between 0-3 decreasing
		asl
		asl
		asl
		asl ; Now a multiple of 16
		sta temp0
		
		jsr do_fade_anim
		reset_ppu_scrolling_and_ctrl
		jsr sound_update
		

		pla
		tax ; x is back.
		inx
		
		cpx #17
		bne @loop

	plx
	rts

do_menu_fade_in:
	phx
	ldx #16
	stx temp0
	@loop:

		txa
		pha ; Shove it into the stack so we can get it back.
		lsr
		lsr ; Now between 0-3 decreasing
		asl
		asl
		asl
		asl ; Now a multiple of 16
		sta temp0
		
		jsr do_fade_anim
		reset_ppu_scrolling_and_ctrl
		jsr sound_update

		pla
		tax ; x is back.
		dex
		
		cpx #255
		bne @loop

	plx
	rts

bright_flash:
	phx

	jsr vblank_wait
	set_ppu_addr $3f00
	lda #$10
	ldx #0
	@loop_pal_0:
		sta PPU_DATA
		inx
		cpx #16
		bne @loop_pal_0
	reset_ppu_scrolling_and_ctrl
	jsr sound_update

	; Everyone is gone!
	ldx #24
	lda #SPRITE_OFFSCREEN
	@loop_desprite:
		sta SPRITE_DATA, x
		inx
		cpx #0
		bne @loop_desprite
	
	.repeat 4 
		jsr vblank_wait
		jsr sound_update
	.endrepeat

	jsr vblank_wait
	set_ppu_addr $3f00
	lda #$30
	ldx #0
	@loop_pal_1:
		sta PPU_DATA
		inx
		cpx #16
		bne @loop_pal_1
	reset_ppu_scrolling_and_ctrl
	jsr sound_update
	
	jsr vblank_wait
	set_ppu_addr $3f00
	lda #$10
	ldx #0
	@loop_pal_2:
		sta PPU_DATA
		inx
		cpx #16
		bne @loop_pal_2
	reset_ppu_scrolling_and_ctrl
	jsr sound_update

	jsr vblank_wait
	jsr load_palettes_for_dimension
	plx
	rts

draw_title_sprites: 
	phy
	ldy #0
	@loop:
		lda (tempAddr), y
		cmp #$ff
		beq @done
		sta SPRITE_DATA, y
		iny
		.repeat 3
			lda (tempAddr), y
			sta SPRITE_DATA, y
		.endrepeat
		jmp @loop
	@done:
	ply
	rts

title_tile_1:
	.incbin "graphics/processed/title_0.nam.pkb"
title_sprites_1:
	.scope TITLE_SPRITE_0
		DX1 = 60
		DY1 = 48
		.byte DY1, $c0, 0, DX1, DY1, $c1, 0, DX1+8, DY1, $c2, 0, DX1+16
		.byte DY1+8, $d0, 0, DX1, DY1+8, $d1, 0, DX1+8, DY1+8, $d2, 0, DX1+16
		
		DX2 = 160
		DY2 = 48
		.byte DY2, $c2, $40, DX2, DY2, $c1, $40, DX2+8, DY2, $c0, $40, DX2+16
		.byte DY2+8, $d2, $40, DX2, DY2+8, $d1, $40, DX2+8, DY2+8, $d0, $40, DX2+16

		DX3 = 90
		DY3 = 40
		.byte DY3, $c4, 0, DX3, DY3, $c5, 0, DX3+8

		DX4 = 140
		DY4 = 40
		.byte DY4, $c5, $40, DX4, DY4, $c4, $40, DX4+8

		DX5 = 120
		DY5 = 60
		.byte DY5, $c4, 0, DX5, DY5, $c5, 0, DX5+8



		.byte $ff
	.endscope

title_tile_2:
	.incbin "graphics/processed/title_1.nam.pkb"
title_sprites_2:
title_sprites_3:
	.scope TITLE_SPRITE_1
		DX1 = 160
		DY1 = 48
		.byte DY1, $c6, 0, DX1, DY1, $c7, 0, DX1+8, DY1, $c8, 0, DX1+16
		.byte DY1+8, $d6, 0, DX1, DY1+8, $d7, 0, DX1+8, DY1+8, $d8, 0, DX1+16
		
		DX2 = 190
		DY2 = 48
		.byte DY2, $c8, $40, DX2, DY2, $c7, $40, DX2+8, DY2, $c6, $40, DX2+16
		.byte DY2+8, $d8, $40, DX2, DY2+8, $d7, $40, DX2+8, DY2+8, $d6, $40, DX2+16

		.byte $ff
	.endscope

title_tile_3:
	.incbin "graphics/processed/title_2_half.nam.pkb"