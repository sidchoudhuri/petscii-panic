# PETSCII Panic — Devlog

A lawn-defense game for the Commodore 64, written in pure BASIC V2 and drawn entirely in stock PETSCII.

https://m0nde.itch.io

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
