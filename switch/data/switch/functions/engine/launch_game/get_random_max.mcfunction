
summon marker 0 0 0 {Tags:["switch.random"]}
execute as @e[tag=switch.random] run function switch:engine/voting_time/get_random

scoreboard players set #index switch.data 0
function switch:engine/launch_game/get_id

