# PETSCII Panic!

A lawn-defense game for the Commodore 64, written in C64 BASIC V2. Hold the lawn against six waves of zombies.

- Get it: https://m0nde.itch.io/petscii-panic (pay what you want)
- Play it in your browser: https://m0n.de/?disk=petscii-panic

```
  PETSCII PANIC! V05

  HOLD THE LAWN AGAINST 6 ZOMBIE WAVES

  JOYSTICK (PORT 2)   KEYBOARD
  STICK ... MOVE      W A S D . MOVE
  FIRE .... PLANT     SPACE ... PLANT
  KEYS 1-4 CHOOSE SEED (BOTH MODES)

  1 PEASHOOTER  100  SHOOTS ITS LANE
  2 SUNFLOWER    50  MAKES MORE SUN
  3 WALL-NUT     50  BLOCKS ZOMBIES
  4 CHERRY BOMB 150+ CLEARS A 3X3 AREA

  EACH LANE HAS ONE LAWNMOWER. IF A
  ZOMBIE GETS PAST IT AGAIN, GAME OVER!
```

## Running

Attach `petscii-panic.d64` as drive 8 and load the first program on the disk, which is the menu:

```
LOAD"PETSCIIPANIC",8
RUN
```

The menu plays the game's music, with zombies and a peashooter on screen. Press a key:

| Key | |
| --- | --- |
| M | the game, with multicolor graphics |
| O | the original PETSCII version of the game |
| G | glyph showcase: the custom characters and their animations |
| D | self-playing demo, multicolor or original PETSCII |
| T | trailer: the full one (BASIC and machine code) or the BASIC one |
| I | instructions |
| C | credits |
| S | SID setup: auto detect, one SID, or two with the music on the second at $D420 |
| Q | quit |

Start everything from the menu: the other programs need what it sets up, and they say so if you run them on their own.

On the game's title screen, press **fire** for joystick or **space** for keyboard, then choose **Easy**, **Normal** or **Hard**.

## Keys in the game

- **M** / **E**: music and sound effects volume, with two SIDs. **V**: volume, with one SID.
- **Q**: back to the menu (asks to confirm).

With two SIDs the music starts at its lowest setting. With one SID, sound and music start at their loudest.

## Tips

- Sun arrives on its own. The meter on the top row fills up before each payout, and sunflowers make every payout bigger.
- In the seed bar, white means ready, gray means recharging and red means not enough sun.
- More peashooters in a lane means harder-hitting peas.
- The bottom row shows the zombies left in the wave: dim heads are still coming, bright ones are on the lawn.
- The cherry bomb costs more on Normal (175) and Hard (200).

## Files

- `petscii-panic.d64`: the disk, version 05 (disk ID `05`).
- `src/`: the BASIC listings (lowercase, petcat style) of the programs that are pure BASIC:

  | File | |
  | --- | --- |
  | `petsciipanic.bas` | the menu (loader) |
  | `panicmc.bas` | the game, multicolor graphics |
  | `panicpetscii.bas` | the game, original PETSCII |
  | `panicglyphs.bas` | glyph showcase |
  | `panicdemo.bas` | self-playing demo, multicolor |
  | `panicdemopetscii.bas` | self-playing demo, original PETSCII |
  | `panictrailerb.bas` | the BASIC trailer |

- `prg/`: every program on the disk, ready to load. Besides the ones above:

  | File | |
  | --- | --- |
  | `panictrailer.prg` | the full trailer: a short BASIC start, then machine code and data |
  | `panictrailerdat.prg` | the BASIC trailer's data, loaded at $5000 |
  | `panicmusic.prg` | the music player and tune, loaded at $9000 |

- `sid/`: the music, *Backyard Panic* by m0nde, as `.sid` files for PAL and NTSC.
- `devlog.md`: how the game was made.

## Credits

- Design, code, graphics and music by m0nde.
- Font copy trick by Eyvind Ebsen.
