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

---

MIT License

Copyright (c) 2025 Mark West

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
