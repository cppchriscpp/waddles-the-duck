# Waddles the Duck

**Warning** The engine behind this game has severe issues which will never be fixed. 

You're more than welcome to reference this code, but there are much, much better games out there to look at. I made a number of really crummy mistakes with collisions of all sorts, the story, the title, the warping mechanic, the level design, and pretty much everything else- it is not worth the additional time and effort to fix, nor is that even a realistic thing to do. As such, referencing this code is probably unwise.

I consider this project a failure, and an embarrassment.

This repo remains as a lesson in how not to build a game, and to me, a reminder to get people looking at what I work on as early as possible.


Cheers,
Chris

-----

![Waddles](http://cpprograms.net/wp-content/uploads/main-6.png)!

Waddles the Duck is a new NES game developed in 2016/2017 for the [2016 NESDev Competition](http://nesdevcompo.nintendoage.com/contest16/). 

The basic story is, you're a duck that was taken out of his timeline by a mysterious force, trying to make your way home.

This is here to hopefully help someone figure out how to put together an NES game. Hopefully there are some good examples somewhere
in this project. That said, this project was developed with a pretty strict deadline, so some corners were cut, and much of this is not well 
organized, nor well documented. If you get completely stuck, please reach out to the author! (@cppchriscpp)

## Local Setup

_All development was originally done on Windows due to wider availability of tools for that system. Everything works off of a makefile and
basic unix commands, so most things should work on any unix-based OS, but as of yet this is untested. If you run into non-windows issues, feel
free to submit pull requests!_

This admittedly isn't the most friendly toolset - I opted to use tools I knew, even if they aren't the most available. I try to document everything,
but I apologize for the potentially painful setup.

After checking out this git repository to a fresh directory, follow the steps below to get compiling up and working.

1. Install [cc65](http://cc65.github.io/cc65/), and get it on your system's PATH. (How you do this depends on your OS - search google for details)
2. (Windows Only) Install [Gnu on Windows (GOW)](https://github.com/bmatzelle/gow/wiki), or something like Cygwin to use unix commands. 
3. Install [nodejs](https://nodejs.org/en/) 4.2 or later for some level conversion scripts.
4. Download and install tools as required from the tools/ folder. Each folder has a readme explaining its purpose. 
    - **Note**: At minimum, you want _p8nes_, and either _fceux_ or _nintendulatordx_.
5. Type `make` and hope for the best! 
6. Assuming the rom compiles and you installed _fceux_ above, type `make run` to start the game!

## Project layout

_Second warning: This game's layout isn't the most sane thing you will ever work with. I suggest figuring out a system that works for you, probably
with more organization than I use, then sticking to it. Some might say this file should really only be a bunch of includes of other files, for example.
You have been warned._

- `main.asm` - This contains the majority of the source of the game, and much of what is in the kernel.
- `menus.asm` - Some title/ending screens, start menu, and ready screens.
- `bin/` - This is where your roms go! (And lots of intermediate files)
- `ca65-utils/nesgame-chr.cfg` - CA65 configuration used to put together various prg banks, etc into a coherent rom file.
- `graphics/` - All graphics for the game
	- `*.nam` - Output files from NES Screen Tool for various pre-rendered screens.
	- `*.pal` - Output files from NES Screen Tool for palette definitions.
	- `blocks_x4.bmp` - Bitmap version of game tiles that Tiled can understand - used to draw out level.
	- `tiled_sprites.bmp` - Bitmap version of sprites (all cut to 16x16) that Tiled can understand - used to draw out level.
	- `*.chr` - Graphics files the NES can understand - generated with NES Screen Tool.
- `levels/` - All information pertaining to levels
	- `lvlx.json` - Json export from Tiled for the level
	- `lvlx.tmx` - tmx files for Tiled
	- `lvlx_meta.asm` - Meta information about the level; tells compiler where to find things - see `lvl1_meta.asm` for an example.
- `lib/` - Various helper code.
	- `controller.asm` - Input routines 
	- `ending.asm` - Scripts to show ending animations/text
	- `famitone2.s` - Famitone2 library by Shiru
	- `gem_data.asm` - Little bit of code to update gem parts of the hud. (Split out to put in a non-primary bank.)
	- `hud.asm` - Heads up display stuff. (The thing that has the gem count)
	- `nes_constants.asm` - Exactly what it says on the tin
	- `nes_macros.asm` - CA65 macros to aid in doing common assembly stuff. 
	- `project_constants.asm` - Auto-generated by makefile. Has information like build #, etc.
	- `sound.asm` - Small wrapper library for famitone2 that also switches banks automatically.
	- `sprites.asm` - All sprite definitions - Sprite number used in maps references this file.
	- `text.asm` - All of the text from the two times the professor talks to waddles in the game.
	- `tile_definitions.asm` - What tiles line up to what ids? The constants in this file can tell you!
	- `title.asm` - Scripts to show pre-title animations/text
	- `unpkb.asm` - Packbits decoding asm by Damian Yerrick. (Used for most nametables)
- `sound/` - All music and sound effects code for the game. 
- `tools/` - Various tools to aid development, mostly referenced from `make` commands. Most of these need some work to install.
	- `level-converter` - Nodejs tool to convert the tiles in a level to an asm file, which goes into `levels/processed` by default.
	- `sprite-converter` - Nodejs tool to convert the tiles in a level to an asm file, which goes into `levels/processed` by default.

## Development

### Code

All code is compiled with ca65, so it should follow the syntax rules for that language. 
Code is laid out into 4 (almost) logically separated banks.

- Kernel: All primary game code. Always loaded; not switchable.
- Bank 1: All level information, including tiles, sprites, and meta information.
- Bank 2: Music/Sound and chr Graphics. Famitone2 library, and data files for music and sound. Also contains all graphics used in the game.
- Bank 3: Bulky data. Contains all screens (and some code) for the title/endings, as well as the in-game text engine.

You will have to manually bank switch for anything that is not music. Look for examples of code using things defined in the areas above to see how.
The basic version is to use the bank macros defined in `lib/nes_macros.asm` to do this. They will cache the last bank you were in, so you can use
a temporary bank, then jump back to the previous value. 

As I write more of this readme, I realize how complicated of a beast this thing has become. If you decide to do anything, don't be afraid to reach
out for help. I fear I've left some obnoxious things in here I've completely failed to document, due to a simple inability to recall them all.

### Levels

Level design is done using a program called [Tiled](http://www.mapeditor.org/), then converted using two simple nodejs scripts in the tools folder.

Open any level with the editor and you should see the level layout, sprites and all. A few notes:
- Levels are split into two layers - one contains all sprites, and one contains all tiles.
	- The tile layer cannot have any blank space - every tile must be defined. It cannot contain anything from the sprite tileset.
	- The sprite layer has blank space anywhere there is not a sprite. It cannot contain anything from the regular Tileset.
- All tile images are from `blocks_x4.bmp` - the color palette is decided by which group you grab from. New tiles have to be imported into this 4 times.
- Tile images should not come from rows 2, 4, or 5 - instead always using row 3. The game will intelligently swap between rows based on which dimension
  the player is in.
- All sprite images are from `tiled_sprites.bmp` - The sprite will spawn at the top-left of the location. New sprites need to be added to this.
- After saving your level, you must export it to json using ctrl+e. Tiled does not have a great way to automate this. (Yet?)

### Sound

Music and sound effects are both made using [FamiTracker](http://famitracker.com/). They are brought in using the 
[famitone2](https://shiru.untergrund.net/code.shtml) driver. _This imposes a number of restrictions on the music and sounds created._ Please see the 
famitone2 readme file for details.

All sound effects are in `sound/sfx.ftm` and all music is in `sound/music.ftm`. These should be exported from FamiTracker into `sound/sfx.nsf` and 
`sound/music.txt`. (Details in the readme for famitone2 - yes, this is a little weird, but it's the default for that library.)

### Graphics

Graphics are designed using a tool called [NES Screen Tool](https://shiru.untergrund.net/software.shtml). They are generally put in files named *.chr, and
compressed using PackBits compression from the [Pin8 Legacy NES Tools](https://pineight.com/pc/#ted) collection. (With the exception of map_tiles.chr - because 
we access that data randomly.) 

Palette data is also generated from NES Screen Tool - mainly so that we can reimport them into the tool to see what images will look like in the real world.
Palettes are named (roughly) for the dimension they represent.

`graphics/map_tiles.chr` is a special case, as rows 2-5 of it are swapped out by the game based on what dimension we are looking at. The dimension the graphics
are for can be looked up from constants in `main.asm`. 

## Version History

#### 1.0
- Initial release

#### 1.1 
- _Development still in progress_
- Fixed some obvious level issues
- Now plays sfx when in warp areas
- Intro is now slower. (And sounds crummier... sorry :()
- Jump sound effect made less annoying (maybe)

# Tools Used

I've referenced most tools used inline, but here's a full list if you want the cliffnotes version of what you might want to install.

- [FamiTracker](http://famitracker.com/)
- [famitone2](https://shiru.untergrund.net/code.shtml)
- [NES Screen Tool](https://shiru.untergrund.net/software.shtml)
- [NES Space Checker](https://shiru.untergrund.net/software.shtml)
- [Pin8 Legacy NES Tools](https://pineight.com/pc/#ted)
- [cc65](http://cc65.github.io/cc65/) (Mainly use ca65, included with cc65)
- [Gnu on Windows (GOW)](https://github.com/bmatzelle/gow/wiki)
- [nodejs](https://nodejs.org/en/)
- [fceux](http://www.fceux.com/web/home.html)
- [NintendulatorDx](https://kkfos.aspekt.fi/)
- [readnes3](https://github.com/AaronBottegal/ReadNES3) (Strips header from roms for writing to INL cartridges)
- [INL Retro Prog](http://www.infiniteneslives.com/kazzo.php) (For writing actual cartridges)
- [VS Code](https://code.visualstudio.com/) and [MADS Assembly Syntax](https://marketplace.visualstudio.com/items?itemName=mirao.mads) (Okay, this is personal preference, but if you haven't given this a shot yet and you don't hate the idea of an IDE, I recommend it!)
