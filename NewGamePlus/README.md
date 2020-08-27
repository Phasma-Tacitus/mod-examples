## New Game Plus

This is an example/template mission to showcase the game state editing capabilities of the editor `HackEd`.

This mission overrides the game state for compatible engines and gives hacker on Citadel some initial inventory for demonstration.

It is not meant to be a "static" mission - Rather, it is a prepared mod that can be installed and then changed with `HackEd`.

> This mission is only available for compatible engines with mod support. The classic engines do not support overriding the starting state.


### Contained changes

The following has been changed as an example:

* Weapons: Pipe, and pistol with 1 clip and 10 rounds (standard)
* Patches: 3 medi patches
* Hardware: View Screen active (starts the game in "fullscreen" mode - this should be the default nowadays)


### How to install

#### System Shock Enhanced Edition, Source Port

* Copy the entire sub-folder `new-game-plus` to `%APPDATA%\Nightdive Studios\System Shock EE\missions`
* Start the game
* Under `modifications`, `missions` select `New Game Plus`
* Start a new game
* Enjoy


#### [Shockolate](https://github.com/Interrupt/systemshock)

Not available until feature request [379](https://github.com/Interrupt/systemshock/issues/379) is implemented.


### How to modify

If you want to change the initial state, do the following:

* Download the [latest release](https://github.com/inkyblackness/hacked/releases) of `HackEd`
* Load the mod as active mod. If you load the mod from the installed `mods` directory, you can immediately test it by running the engine in parallel.
* Optionally load the static game resources. See [here](https://github.com/inkyblackness/hacked/wiki/Project#loading-original-resources).
* Open the `Archive` window, switch to `Game State`
* Change the values as you like. See [here](https://github.com/inkyblackness/hacked/wiki/Archive#game-state) for details.

> When editing the mod with the engine in parallel, beware to wait for the save timer in the editor to complete before starting a new game.
> Otherwise the engine might crash if the editor is saving the file at the same time.


#### Initial power level of hacker

Although the game state specifies a power level of 100%, a dedicated trigger on the first level reduces this value.
If you want to avoid this and have the game state dictate the power level exclusively, you need to do the following:

* Load the mod as described above
* Open up level `1` (is by default)
* Zoom in on the starting area
* Locate and select the `LEVEL ENTRY TRIGGER` with Object ID `695`. The object is placed withinin the wall "behind" hacker.
  * Notice the `Class Properties` that describe a `PowerDelta` of 208, which is to be removed.
* In the `Level Objects` window, either change these values to your liking, or even delete the object - Use button **Delete Selected** 

