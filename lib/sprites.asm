; Definitions for all sprites used by our app, and some useful constants.

SPRITE_TYPE_COLLECTIBLE 		= 0
SPRITE_TYPE_JUMPABLE_ENEMY		= 1
SPRITE_TYPE_INVULN_ENEMY		= 2
SPRITE_TYPE_DIMENSIONER			= 3
SPRITE_TYPE_FIREBALL			= 4
SPRITE_TYPE_SHARK				= 5
SPRITE_TYPE_PROFESSOR			= 6
SPRITE_TYPE_TELEPORT			= 7
SPRITE_TYPE_TELEPORT_2			= 8
SPRITE_TYPE_GRABBER				= 9 

SPRITE_SIZE_DEFAULT					= 0
SPRITE_SIZE_TINY					= 1
SPRITE_SIZE_2X1						= 2
SPRITE_SIZE_3X1						= 3
SPRITE_SIZE_4X1						= 4
SPRITE_SIZE_TINY_NORMAL_ALIGNMENT 	= 5
SPRITE_SIZE_TELEPORTER				= 6

SPRITE_ANIMATION_NONE 			= 0
SPRITE_ANIMATION_NORMAL			= 1
SPRITE_ANIMATION_BINARY			= 2 ; first tile, second tile, first tile, second tile...
SPRITE_ANIMATION_LR				= 3 ; 1 for left, 1 for right
SPRITE_ANIMATION_FAST			= 4
SPRITE_ANIMATION_DYING			= $a0 ; NOTE: This must not match any dimensions or things will fall apart. This is %10100000

SPRITE_TYPE_COIN 		= 0
SPRITE_TYPE_TURTLE		= 1
SPRITE_TYPE_GATOR		= 2
SPRITE_TYPE_SNAKE		= 3
SPRITE_TYPE_PLATFORM	= 4

PALETTE_0				= %00000000
PALETTE_1				= %00000001
PALETTE_2				= %00000010
PALETTE_3				= %00000011

COLLECTIBLE_SPRITE_ID	= 0

sprite_definitions: 
	; Type, width, height, size, animation, first tile id, palette, speed.
	.byte SPRITE_TYPE_COLLECTIBLE, 8, 8, SPRITE_SIZE_TINY, SPRITE_ANIMATION_NONE, $2, PALETTE_0, 0		; 0. Coin
	.byte SPRITE_TYPE_JUMPABLE_ENEMY, 16, 8, SPRITE_SIZE_2X1, SPRITE_ANIMATION_NORMAL, $20, PALETTE_1, 1 		; 1. Turtle
	.byte SPRITE_TYPE_JUMPABLE_ENEMY, 16, 8, SPRITE_SIZE_2X1, SPRITE_ANIMATION_NORMAL, $24, PALETTE_1, 1		; 2. Gator
	.byte SPRITE_TYPE_JUMPABLE_ENEMY, 24, 8, SPRITE_SIZE_3X1, SPRITE_ANIMATION_NORMAL, $28, PALETTE_1, 2		; 3. Snake
	.byte SPRITE_TYPE_INVULN_ENEMY, 16, 14, SPRITE_SIZE_DEFAULT, SPRITE_ANIMATION_NORMAL, $40, PALETTE_1, 1	; 4. Militarized turtle
	.byte SPRITE_TYPE_PLATFORM, 32, 8, SPRITE_SIZE_4X1, SPRITE_ANIMATION_NORMAL, $03, PALETTE_1, 0 ; Falling platform.
	.byte SPRITE_TYPE_FIREBALL, 10, 11, SPRITE_SIZE_DEFAULT, SPRITE_ANIMATION_FAST, $44, PALETTE_1, 64 ; fireball (extra data/speed = how high the ball goes)
	.byte SPRITE_TYPE_SHARK, 16, 8, SPRITE_SIZE_2X1, SPRITE_ANIMATION_LR, $68, PALETTE_1, 0 ; Blank sprites to keep dimension stuff on one line.

; Dimension Swappers
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_PLAIN, $0, PALETTE_0, DIMENSION_BARREN
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_PLAIN, $0, PALETTE_0, DIMENSION_ICE_AGE
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_BARREN, $0, PALETTE_0, DIMENSION_ICE_AGE
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_AGGRESSIVE, $0, PALETTE_0, DIMENSION_PLAIN
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_AGGRESSIVE, $0, PALETTE_0, DIMENSION_ICE_AGE
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_BARREN, $0, PALETTE_0, DIMENSION_AGGRESSIVE
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_AGGRESSIVE, $0, PALETTE_0, DIMENSION_END_OF_DAYS
	.byte SPRITE_TYPE_DIMENSIONER, 32, 16, SPRITE_SIZE_TINY_NORMAL_ALIGNMENT, DIMENSION_PLAIN, $0, PALETTE_0, DIMENSION_END_OF_DAYS

	.byte SPRITE_TYPE_PROFESSOR, 32, 32, SPRITE_SIZE_DEFAULT, SPRITE_ANIMATION_NONE, $07, PALETTE_0, 0
	.byte SPRITE_TYPE_PROFESSOR, 16, 32, SPRITE_SIZE_DEFAULT, SPRITE_ANIMATION_NONE, $09, PALETTE_0, 0
	.byte SPRITE_TYPE_TELEPORT, 24, 8, SPRITE_SIZE_TELEPORTER, SPRITE_ANIMATION_BINARY, $48, PALETTE_2, 0
	.byte SPRITE_TYPE_TELEPORT_2, 24, 8, SPRITE_SIZE_TELEPORTER, SPRITE_ANIMATION_BINARY, $48, PALETTE_2, 0 ; Intentional duplicate... based on id, first one only shows in normal dim, second only in dark.
	.byte SPRITE_TYPE_GRABBER, 16, 16, SPRITE_SIZE_DEFAULT, SPRITE_ANIMATION_NORMAL, $80, PALETTE_1, 3