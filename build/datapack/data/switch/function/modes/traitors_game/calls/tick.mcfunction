
#> switch:modes/traitors_game/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"traitors_game"} run function switch:modes/traitors_game/tick

