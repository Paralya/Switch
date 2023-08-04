
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 run gamemode spectator @a
execute if score #process_end switch.data matches 1 as @a run function switch:modes/gay_shooter/death

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

