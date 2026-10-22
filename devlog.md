# PETSCII Panic — Devlog

A lawn-defense game for the Commodore 64, written in BASIC V2. It started as one program drawn entirely in stock PETSCII, and is now a disk with two versions of the game (multicolor graphics and the original PETSCII), demos, a glyph showcase, a trailer and its own music.

https://m0nde.itch.io/petscii-panic

---

## 2026-10-11 — From "is this even possible?" to six waves

### The question

Can a Plants-vs-Zombies-style game run in C64 BASIC? BASIC V2 is slow, and this genre is real-time with lots of things moving at once. But it's also forgiving: zombies are slow, the board is a fixed 9×5 grid, and everything lives in discrete cells. That makes it much more doable than an action game.

### Core design

- **Round-robin lanes.** Each pass of the main loop updates one lane: zombies, pea, firing. When the board gets busy the whole game slows down evenly instead of stuttering.
- **Tick-based movement.** Zombies move one column every few lane visits, not on a timer, so difficulty stays consistent no matter how loaded the loop is.
- **Sorted zombie lists.** Each lane keeps its zombies ordered front to back, and they queue instead of overtaking. A pea always hits zombie 0, so hit detection is a single comparison, with no searching or PEEKing.
- **One pea per lane.** Instead of tracking dozens of projectiles, each lane has one pea in flight, and its damage equals the number of peashooters in the lane. Stacking shooters still matters, and the game never has more than five moving shots.
- **Stock PETSCII only.** No custom charset means the full ~38K for BASIC and no charset loading at boot. Everything is built from block, line and circle characters plus color RAM.
- **Speed housekeeping.** The hot loop sits at the lowest line numbers, because GOTO/GOSUB search from the top. The most-used variables are created first, because BASIC V2 finds variables by scanning in creation order.

### The cast

| | Look | Notes |
|---|---|---|
| Peashooter | `●─` / `│` | fires down its lane |
| Sunflower | `○○` / `││` | more sun per payout |
| Wall-nut | solid brown block | soaks bites |
| Cherry bomb | `╱╲` / `●●` | instant 3×3 clear |
| Zombie | `○` / `π` | basic, conehead, buckethead by color |
| Lawnmower | `┌█` / `└█` | one per lane, single use |

### Controls

Joystick in port 2 or keyboard. On the title screen, fire picks joystick and space picks keyboard. Keyboard uses W/A/S/D to move and space to plant. Keys 1–4 choose a seed in either mode.

### Things that changed after playtesting

- **Peas out of the mouth.** Peas originally flew on their own row below the plants and looked like they passed under the zombies. They now travel on the head row, straight out of the peashooter's snout. They are only drawn on empty cells and only erased if they're still a pea, so they pass "behind" plants without wiping them.
- **Too much sun.** With five sunflowers the bank hit 4,600+. The sun interval was slowed and zombies were toughened.
- **Difficulty levels.** Easy, Normal and Hard, chosen with the stick or A/D after picking controls:

  | | Easy | Normal | Hard |
  |---|---|---|---|
  | Sun interval | fast | medium | slow |
  | Basic / Cone / Bucket HP | 10 / 25 / 65 | 15 / 35 / 80 | 20 / 40 / 85 |
  | Wall-nut HP | 35 | 30 | 20 |
  | Cherry bomb cost | 150 | 175 | 200 |
  | Waves | standard | standard | bigger, more armor |

  Peashooters and sunflowers have 5 HP on every difficulty.

### HUD

The top row is now a dashboard:

```
SUN  125 ████░░░░ +75   NORMAL  WAVE 2/6
```

- **Sun meter.** Eight blocks fill in yellow as the next payout approaches, so you can see when sun is coming. It costs one comparison per sweep and one color POKE per block.
- **Payout label.** Shows what the next drop is worth, and updates when a sunflower is planted or eaten.
- **Seed bar colors.** White means ready, dark gray means recharging, red means not enough sun.
- **Message row.** Wave announcements on the left, the selected seed's name in the middle, and **RECHARGING** or **NEED 50 MORE** on the right.
- **Plant health.** The row below shows the health of the plant under the cursor (e.g. `WALL-NUT 18/20 HP`), ticking down live as it gets bitten.
- **Wave heads.** The bottom row shows one head per zombie in the wave, in spawn order. Heads waiting to spawn are drawn in dark shades (dark gray, brown, blue). They light up (light gray, orange, light blue) when the zombie hits the lawn, and disappear when it dies. To make this work, each wave's zombie types are now rolled when the wave starts instead of at spawn time, with the same odds as before.

### The lawnmower

The mower started as a single red block. It's now a 2×2 sprite-in-characters: a gray handle made from box corners (`┌` `└`) and a red reversed-space body. Because it's two rows tall, it has to drive over the plants rather than under them. Each step saves the four cells underneath, draws the mower, then restores the old position. The first version erased before drawing and flickered badly. Drawing the new position first and then restoring the old one keeps the mower on screen the whole time.

### Bug of the day: the CIA

Right after the sun meter went in, the keyboard stopped working mid-game and the meter stayed white. The culprit was one address. The meter's color POKEs used 56329 instead of 55305, and 56329 is `$DC09`, inside CIA1, not color RAM. Writing "colors" there hit the interrupt control register and timer A control. That switched off the KERNAL's timer IRQ, which stopped keyboard scanning and froze the jiffy clock, and with it every seed cooldown. One wrong number, three symptoms. Fixed by pointing the POKEs at real color RAM.

### Under the hood

- About 225 lines of BASIC V2, every line under 80 characters so it can be typed in, numbered strictly in steps of 10.
- No machine code. All drawing is POKEs to screen and color RAM, with PRINT only for the HUD text.
- SID: a triangle "pop" for pea hits, sawtooth for planting and errors, noise for chomps, explosions and the mower.

### Next

- Playtest balance across all three difficulties.
- More zombie and plant variety.
- Maybe falling suns to catch, instead of automatic income.

---

## 2026-10-21 to 2026-10-22: v01 to v05, from one program to a disk

### Two versions of the game

The game now comes in two versions that are kept in step:

- **Multicolor graphics** (`PANICMC`): 52 custom multicolor characters, built at $C800 with Eyvind Ebsen's fast font copy trick. Every object is a 2×2 glyph, and they animate by swapping characters: zombies walk and chomp, peashooters fire, wall-nuts show their damage, cherry bombs explode.
- **Original PETSCII** (`PANICPETSCII`): the stock-PETSCII game from the first entry.

The sound effects were rebuilt to match recorded samples (a punch, digging) with SID waveforms, envelopes and the filter, instead of generic tones.

### Music: Backyard Panic!

An original three-voice tune in D minor, played by a small machine code IRQ player loaded at $9000 (`PANICMUSIC`). With a second SID at $D420 the music gets a chip of its own; with one SID it shares the chip with the sound effects. It is also released as `.sid` files for PAL and NTSC.

Volume follows PETSCII Pit's rule: with two SIDs, **M** and **E** set the music and sound effects volume and the music starts at its lowest setting; with one SID, **V** sets the volume and everything starts at its loudest.

### A menu, like PETSCII Pit

The disk now starts with a loader (`PETSCIIPANIC`) in the same style as PETSCII Pit's. It loads the music, detects the SIDs, builds the character set and shows a menu, with one lane of double-size sprites playing the game on the title screen. From the menu: the two games, the glyph showcase, the demos, the trailer, instructions, credits, SID setup and quit. **Q** in a game goes back to the menu.

The menu's settings (SID choice and volumes) are kept in memory the programs share, so they survive going from one program to another.

The disk directory has PETSCII art in the same style as Pit's: a peashooter under the loader, then the zombie and the links, then the rest of the files.

### Versions

From v01 every release carries its version, as in PETSCII Pit: the disk ID is the version, and it shows on the title screens, instructions, credits and every program's line 10 REM. Loading messages say only what's loading, not the version.

- **v01:** the two games, the music, the menu and the glyph showcase. The music is stopped during every disk load (as in Pit) because playing it while loading corrupted it.
- **v02:** a faster pace. A shorter wait before wave 1 and between waves, zombie speed now depends on the difficulty, and hard mode's zombies are twice as fast and arrive about a third sooner. The title screen got sound effects, and its zombies bite at the hard-mode rate.
- **v03:** a first self-playing demo at the menu's double size.
- **v04:** the demo was rebuilt at the game's normal multicolor size: the real game with a computer player that moves the cursor to each square and plants. The lawnmower's handle is white in the multicolor graphics. The first scene trailer: a song line scrolling at the top, one huge lane of game characters playing, and a scroller at the bottom, in both machine code and BASIC.
- **v05:** the full trailer goes on from the huge lane into the multicolor game and then the PETSCII game, each well into wave 3, joined by top-to-bottom wipes, and loops until **Q**. The game footage comes from a port of the game's rules and the demo's planting, run to wave 3 and recorded. The BASIC trailer stays as the huge lane. The demo now has an original PETSCII version too, and **D** in the menu asks which.

### Bugs of the week

- **Lines cut at 80 characters.** A few listing lines were silently cut off when pasted, which showed up as `?BAD SUBSCRIPT`. Every line is now kept under 80 characters.
- **The trailer and `CLR`.** When the menu loads another program, that program moves BASIC's variable area to just past itself. The new trailer didn't `CLR` afterwards, so its first variable landed on stale pointers: `?ILLEGAL QUANTITY`. It now clears, like the other programs.
- **The trailer and zero page.** The trailer's machine code used $57–$6E for its pointers. That's BASIC's floating-point work area, and two of those bytes are still read by BASIC afterwards, so quitting with **Q** gave `?ILLEGAL QUANTITY` with a garbled line number. The trailer now saves $57–$70 when it starts and puts them back when it returns.

### Under the hood

- The games, the demos, the menu, the glyph showcase and the BASIC trailer are all BASIC V2. Machine code is used only for the music player and the full trailer.
- The games are about 270 (PETSCII) and 320 (multicolor) lines.
- The games and demos still run on their own and load the music themselves. The glyph showcase and the trailers need the menu run first.

What's next is in `roadmap.md`.
