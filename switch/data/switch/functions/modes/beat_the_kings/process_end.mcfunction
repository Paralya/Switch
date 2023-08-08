
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/beat_the_kings/death/player

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

