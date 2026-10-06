
#> switch:modes/de_a_coudre/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"de_a_coudre"} run function switch:modes/de_a_coudre/start

