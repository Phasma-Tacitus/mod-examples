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

While hacker is in the first room, the reactor code is created by three random timers.
Two timers are creating digits for the two code-parts, the third timer is shifting the two parts for the next digit.
Timers are stopped by entering one of the two far-end tiles of the room.

The code needs to be generated before hacker can take the data reader, as changing any quest variable closes the data reader.

#### Game variables in use:

* Boolean 331 to mark completion of the two parts.
* Integer 31 and 32 (the actual code).
* Integer 36 and 37, for internal state, reset to zero after completion.
