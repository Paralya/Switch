
#> switch:modes/traitors_game/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"traitors_game"} run function switch:modes/traitors_game/stop

