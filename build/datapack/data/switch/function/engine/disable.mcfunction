
#> switch:engine/disable
#
# @executed	as @n[tag=switch.coupdetat] & in switch:game
#
# @within	switch:modes/_coupdetat/_force_start
#			switch:engine/force_start_macro
#

scoreboard players set #engine_state switch.data 3
scoreboard players set #disable switch.data 1
execute in switch:game run function switch:engine/stop

time set 6000

scoreboard players set #engine_state switch.data -1
schedule clear switch:engine/voting_time/tick
schedule clear switch:engine/launch_game/launch

