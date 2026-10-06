
#> switch:modes/creeper_apocalypse/calls/tick
#
# @within	switch:engine/signals/macro_tick
#

execute if data storage switch:main {current_game:"creeper_apocalypse"} run function switch:modes/creeper_apocalypse/tick

