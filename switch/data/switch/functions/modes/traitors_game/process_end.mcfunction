
scoreboard players add #process_end switch.data 1

#TODO : détruire la map
execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/traitors_game/death

#Obligatoire
execute if score #process_end switch.data matches 100 run function switch:engine/restart

