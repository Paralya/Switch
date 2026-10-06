
#> switch:modes/layers_2_teams/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"layers_2_teams"} run function switch:modes/layers_2_teams/start

