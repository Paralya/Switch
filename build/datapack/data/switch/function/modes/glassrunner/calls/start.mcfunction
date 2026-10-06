
#> switch:modes/glassrunner/calls/start
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:engine/signals/macro_start
#

execute if data storage switch:main {current_game:"glassrunner"} positioned 3000 128 3000 run function switch:modes/glassrunner/start

