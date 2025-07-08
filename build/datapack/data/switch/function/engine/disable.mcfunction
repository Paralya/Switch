
#> switch:engine/disable
#
# @within	switch:engine/force_start_macro
#			switch:modes/_coupdetat/_force_start
#

scoreboard players set #engine_state switch.data 3
scoreboard players set #disable switch.data 1
execute in switch:game run function switch:engine/stop

time set 6000

scoreboard players set #engine_state switch.data -1
schedule clear switch:engine/voting_time/tick

