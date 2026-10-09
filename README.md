# Reactions

My TensorReactions profiles: a general base profile, PvP, Blunderville, and timelines for Dancing Mad (Ultimate) and R12S.

## Requirements

- TensorCore
- TensorReactions

## Optional
- AnyoneCore for easy updating and additional WorldText
- Argus for a lot of the reactions

## Installation

1. In AnyoneCore, go to SYSTEM > Third Party, then the Sources tab.
2. Add the repository URL:

   ```
   https://github.com/Malformed9970/Reactions
   ```

3. Update and reload from the Updater tab. The profiles then show up under Lj in TensorReactions, in both general and timeline reactions.

- If you want to manually install then download the files from here and place in `MINIONAPP\Bots\FFXIVMinion64\LuaMods\TensorReactions` in their respective folders. Keep in mind you will have to do this every time I change a file to receive updates if you do not use AnyoneCore for updates.

## Loading them

Lj\base and Lj\pvp are meant to be inherited, not used on their own. Add them as inherited profiles under your normal job profile so your own reactions still run alongside them.

Anything with a settings window saves to LuaMods\ffxivminion\Lj.

## General Reactions

### Lj\base

The profile I inherit into everything else.

Toolbox
- Shortcuts to TensorReactions, the AnyoneCore Dev Monitor and ACR options
- Role selector, exposed as GetCurrentRole() for quick reactions. Fine for "am I M1", no good for anything that needs the whole party's roles
- Map effects debugger for writing reactions
- Duty helper with combat and raid options

Countdown
- Food reminder
- Turns Assist off if the countdown is cancelled, someone is dead, or the countdown is too short (5s by default, change it in the GUI condition)

Death, wipe and map change
- Assist off when you die
- On wipe: food reminder, clears timed shapes, extra brightness, slidecast hold, LockFace, hotbars, target, and resets things like BRD song order and SMN pet order
- Swaps duty hotbars on and off when you enter or leave the relevant maps

World
- Countdown on every AoE it can detect
- Looks away from gazes and lets go of LockFace once they finish
- TTS for raidwides and head markers (stack, spread, tankbuster and so on)

Older content
- Quantum target selector (99, Normal and Quantum)
- Variant Merchant's Tale helper (Spirit Dart, Rampart, light healing)

### Lj\pvp

Inherits Anyone's PvP profile for you.

- Assist on/off when you enter or leave PvP
- Draws: your max range, lines from your team to their targets, lines from enemies targeting you, and enemy LBs (Contradance, Relentless Rush, Mesotes, Megaflare)
- Guard and Recuperate against enemy LBs, plus a warning when an enemy NIN has their LB up
- Retargets away from bad buffs (Chiten, invulns) and onto anyone trying to elixir
- Toggles CDs depending on whether your target has Guard
- Role buffs in combat
- Crystalline Conflict: target counter window showing who is being focused, with click to retarget, says hello at start of the match
- Rival Wings: prioritises mechs and goblin mercs, CDs off on mammets, defensives in mech attacks, Ceruleum fuel draws

### Lj\blunderville

Gold Saucer Blunderville (map 1165).

- Telegraphs for every stage, learned while you play and saved between runs
- Stage 3 route overlay that plans a safe way up the ramp
- Steers Misdirection by camera
- Holds still for Acceleration Bomb and faces the path for forced march
- Optional speed hack with a hold key and multiplier

## Timeline Reactions

### Dancing Mad (Ultimate) - Lj\umad

Two draw profiles, one per strat:
- draws_lpdu for LPDU
- draws_na for NA

Both cover arrows to your spots throughout, Limit Cut, crystals, black holes, Forsaken, gaze baits, exaflares and so on. The settings window turns on the optional parts: P1 uptime arrows, stompies, Limit Cut and P4 macros, P4 auto marking, and accel bomb stillness/motion handling.


Also in here:
- accel_bomb_only: only the accel bomb handling, if you want it without the draws
- mit_dps_lpdu: DPS mit plan for LPDU (Feint, Addle, ranged mit, Magick Barrier, Minne, Mantra). Turns off Anyone's mit
- sge: Sage timeline with its own settings for potions and the first Zoe shield. Does not follow a specific mit plan but works fine in NA and EU PF with no changes usually
- sam_autosim and vpr_autosim: AutoSim timelines for SAM and VPR. VPR has a limit break mode per phase

### Lj\r12s_p2_bananacodex

Draws for Banana Codex in R12S phase 2.