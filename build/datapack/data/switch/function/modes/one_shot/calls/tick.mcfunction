
#> switch:modes/one_shot/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"one_shot"} run function switch:modes/one_shot/tick

