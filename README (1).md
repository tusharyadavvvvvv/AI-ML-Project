# Smart-Rock-Paper-Scissors-Arena
# PrologRPS – Intelligent Rock-Paper-Scissors in SWI-Prolog
**Course:** CSA2001 – Fundamentals in AI and ML
**CO2 + CO6 Mapping:** Knowledge Representation, Logic Programming, Prolog  
**Submitted by:** Sanway Das | 25BOE10009 | 25th November 2025

A complete **intelligent Rock-Paper-Scissors game** implemented in **SWI-Prolog** demonstrating:
- Facts, Rules, Recursion, Backtracking
- Dynamic database (learns from past games)
- Rule-based AI opponent with strategy
- Full interactive gameplay

**Features**
- Classic mode with validation
- Intelligent AI that remembers and exploits player patterns
- Dynamic history using `assert/1` and `retract/1`
- Three difficulty levels

**How to Run**
1. Install SWI-Prolog[](https://www.swi-prolog.org)
2. Open terminal → `swipl`
3. Load main file:
   ```prolog
   ?- [play_game].
   ?- start_game.
