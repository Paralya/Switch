
#> switch:modes/laser_game/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"laser_game"} run function switch:modes/laser_game/stop

