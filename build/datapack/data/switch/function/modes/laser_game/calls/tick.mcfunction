
#> switch:modes/laser_game/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"laser_game"} run function switch:modes/laser_game/tick

