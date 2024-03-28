
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 run scoreboard objectives remove switch.temp.role
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/traitors_game/death/player
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart

