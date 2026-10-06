
#> switch:modes/coin_chaser/calls/stop
#
# @within	switch:engine/signals/macro_stop
#

execute if data storage switch:main {current_game:"coin_chaser"} run function switch:modes/coin_chaser/stop

