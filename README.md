# PETSCII Panic

https://m0nde.itch.io

```
  PETSCII PANIC  HTTPS://M0NDE.ITCH.IO

  HOLD THE LAWN AGAINST 6 ZOMBIE WAVES

  JOYSTICK (PORT 2)   KEYBOARD
  STICK ... MOVE      W A S D . MOVE
  FIRE .... PLANT     SPACE ... PLANT
  KEYS 1-4 CHOOSE SEED (BOTH MODES)

  1 PEASHOOTER  100  SHOOTS ITS LANE
  2 SUNFLOWER    50  MAKES MORE SUN
  3 WALL-NUT     50  BLOCKS ZOMBIES
  4 CHERRY BOMB 150  CLEARS A 3X3 AREA

  EACH LANE HAS ONE LAWNMOWER. IF A
  ZOMBIE GETS PAST IT AGAIN, GAME OVER!
```

A lawn-defense game for the Commodore 64, written in pure BASIC V2 with stock PETSCII graphics.

## Running

```
LOAD"PETSCIIPANIC",8
RUN
```

On the title screen, press **fire** for joystick or **space** for keyboard, then choose **Easy**, **Normal** or **Hard**.

## Tips

- Sun arrives on its own. The meter on the top row fills up before each payout, and sunflowers make every payout bigger.
- In the seed bar, white means ready, gray means recharging and red means not enough sun.
- More peashooters in a lane means harder-hitting peas.
- The bottom row shows the zombies left in the wave: dim heads are still coming, bright ones are on the lawn.
- The cherry bomb costs more on Normal (175) and Hard (200).

## Files

- `petsciipanic.bas`: the BASIC listing (lowercase, petcat style)
- `petsciipanic.prg`: ready-to-load program
