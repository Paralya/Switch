
#> switch:modes/coin_chaser/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"coin_chaser"} run function switch:modes/coin_chaser/tick

