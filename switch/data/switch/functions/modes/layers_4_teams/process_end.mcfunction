
# Mise en spectateur
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!switch.detached]

# Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

