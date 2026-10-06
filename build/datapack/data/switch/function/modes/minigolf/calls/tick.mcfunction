
#> switch:modes/minigolf/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"minigolf"} run function switch:modes/minigolf/tick

