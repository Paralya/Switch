
#> switch:modes/shoot_da_sheep/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"shoot_da_sheep"} run function switch:modes/shoot_da_sheep/tick

