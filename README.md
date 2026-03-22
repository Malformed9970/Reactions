# Reactions

General Reaction Base Profile Notes:

**Toolbox**

Quick Shortcuts to:
- Tensor Reactions
- AnyoneCore Dev Monitor
- ACR Options
- Custom Map Effects Debugger

There is also a role selector, this is used for quick reactions such as choosing if you're M1, R1 etc. not anything. This is exposed as a global function `GetCurrentRole()` so you can easily do a quick reaction based on that, won't help you for complex ones which require checking all party member roles.

Map Effects Debugger is built on Riku's new stuff, a few things in there to help write Reactions but most writers probably have their own thing anyway.

The Toolbox is not normally closeable but I've provided 2 conditions you can link to choose between only showing inside an Instance, or inside a Highend Duty (ENGLISH ONLY).

**Countdown**

Various reactions that I use in my Prepull for all jobs with this inherited profiles
- Food Reminder Alert
- Disables Assist if anybody dies (e.g. walls)
- Disables Assist if countdown is cancelled
- Disables Assist if countdown is too short (set to 5s, easily adjustable via GUI condition)

**OBS**
- Disables recording when Boss is killed, relies on AnyoneCore OBS integration

**OnDeath & OnWipe**
- Disable Assist on Death
- Food Reminder when wiping
- Resets following on wipe
  - Disable Start Combat
  - Delete Argus Timed Shapes
  - Disable ArgusDraws+ Extra Brightness
  - Disable Slidecast Forcehold
  - Disable LockFace
  - Disable active Hotbars
  - Disable RDM Ressurection Combo Break
  - Reset BRD Song Priority
  - Reset SMN Pet Order
  - Remove Target
 
**OnMapChange**
- Disable/Enable Duty Hotbars when entering relevant Maps

**Quantum | Target Selector**
- Works in 99 boss, Normal and Quantum
- Stops you moving during Chains of Condemnation
- Targets appropriate boss based on debuff
- Targets Nail or Add while they're alive
- Target Flameborn yourself, strats vary too much. Autotarget will switch back to correct boss once you select anything else
- Only runs while Assist is enabled

**Variant | Merchant's Tale**
- Supports both Variant and Advanced map
- Maintains Spirit Dart and Rampart Uptime
- Heals anyone below 55% HP
- Won't heal during RDM combo as it breaks it
- Only runs with Assist

**PvP**
- Example reaction for how to automatically Guard a MCH LB

**World Overlay**
- Countdown timer on all automatically detected AoE events

**Generic Gaze Handler**
- Automatically looks away from any target with a Gaze VFX
- Ends LockFace 250ms after Gaze has finished
