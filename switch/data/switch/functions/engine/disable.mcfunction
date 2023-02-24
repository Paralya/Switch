
scoreboard players set #state switch.data 3
scoreboard players set #disable switch.data 1
function switch:engine/stop
scoreboard players set #state switch.data -1
schedule clear switch:engine/voting_time/tick

