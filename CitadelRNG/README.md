## Citadel RNG

This is a modified Citadel archive that randomizes the reactor code by itself.

Such a modification is necessary due to a bug in the "Enhanced Edition" of the game, which always sets a static code.
See details and further links about this [here](https://www.systemshock.org/index.php?topic=9890.0).

This archive must be used for starting a new game. If you need to randomize the code for existing save-games, use the ["reactor-rng" tool](https://github.com/inkyblackness/reactor-rng), which is also part of the [deck package](https://github.com/inkyblackness/deck/releases) since version 1.1.0.

### Installation Instructions

Copy the ```archive.dat``` file over the original file in the directory of the resources.
Then start a new game.

### Requirements

* Any release version of System Shock 1, though only recommended for the (buggy) "Enhanced Edition"

### Technical Details

Because of the length of the code and the complexity of the generation, the randomization is split up in two parts.
The first part is generated while the player is in level 1, the second part then on level 2.

Each digit is handled by timers with varying timings.

#### Game variables in use:

* Boolean 331 and 332 to mark completion of the two parts.
* Integer 31 and 32 (the actual code).
* Integer 36, 37, and 38 for internal state, reset to zero after completion.
