
#> switch:modes/sheepwars/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"sheepwars"} run function switch:modes/sheepwars/tick

