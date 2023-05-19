
scoreboard players add #process_end switch.data 1

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

