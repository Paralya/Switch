
scoreboard players set #state switch.data 3
scoreboard players set #disable switch.data 1
execute in overworld run function switch:engine/stop

time set 6000

scoreboard players set #state switch.data -1
schedule clear switch:engine/voting_time/tick

