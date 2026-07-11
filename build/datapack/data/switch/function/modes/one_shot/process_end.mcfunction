
#> switch:modes/one_shot/process_end
#
# @within	switch:modes/one_shot/tick
#

scoreboard players add #process_end switch.data 1

# Reward the player(s) with the most kills (reaching 18 kills ends the game early, on timeout the current leader(s) win)
scoreboard players set #max_kills switch.data 0
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run scoreboard players operation #max_kills switch.data > @s switch.temp.kills
execute if score #process_end switch.data matches 1 if score #max_kills switch.data matches 1.. as @a[tag=!detached] if score @s switch.temp.kills = #max_kills switch.data at @s run function switch:engine/add_win
function switch:modes/one_shot/translations/process_end
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart

