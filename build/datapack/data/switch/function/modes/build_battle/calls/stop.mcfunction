
#> switch:modes/build_battle/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"build_battle"} in switch:build_battle run function switch:modes/build_battle/stop

