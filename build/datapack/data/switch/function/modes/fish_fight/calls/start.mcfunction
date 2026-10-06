
#> switch:modes/fish_fight/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"fish_fight"} run function switch:modes/fish_fight/start

