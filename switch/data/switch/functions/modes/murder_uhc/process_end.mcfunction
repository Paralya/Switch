
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 run tag @a remove switch.murder_uhc.second_life
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/murder_uhc/death/player

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

