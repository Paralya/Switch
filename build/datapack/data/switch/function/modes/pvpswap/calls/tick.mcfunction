
#> switch:modes/pvpswap/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"pvpswap"} run function switch:modes/pvpswap/tick

