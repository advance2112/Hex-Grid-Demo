# Hex Grid Demo

Play here: https://advance2112.itch.io/hex-grid-demo


I could not have made this without this guide: https://www.redblobgames.com/grids/hexagons

---
WASD to move

Scroll wheel zoom in/out

F3 to cycle debugger menu

Page Up will re-randomize colors

---

It's pretty easy to crash if you zoom all the way out and move around a lot. There is no deloading of chunks, which might help that. 

The second largest zoom level is meant to be the max zoom before you can see the chunk edges, and at that level you can wander around without seeing any loading. Well, aside from the lag spike when loading chunks.

Oh yeah also the console will spit out information when you load a chunk or click. When a chunk loads, it says the index of the chunk that loaded, as well as how many chunks and hexagons are loaded. When you click it tells you the exact hexagon you clicked on (in axial coordinates) and what chunk that hexagon is in.
