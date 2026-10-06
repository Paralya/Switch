
#> switch:modes/creeper_apocalypse/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"creeper_apocalypse"} run function switch:modes/creeper_apocalypse/start

