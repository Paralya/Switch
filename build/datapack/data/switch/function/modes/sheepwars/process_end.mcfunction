
#> switch:modes/sheepwars/process_end
#
# @within	switch:modes/sheepwars/tick
#

# Mise en spectateur
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 run execute as @e[type=!player,type=!marker] run function sheepwars:sheeps/final/disappear
execute if score #process_end switch.data matches 1 run function switch:maps/regenerate_map
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart

