


execute if score #process_end switch.data matches 1 as @a[tag=switch.alive] at @s run function switch:engine/add_money



execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/glassrunner/death
execute if score #process_end switch.data matches 1 run gamemode spectator @a

# Obligatoire
execute if score #process_end switch.data matches 100.. run function switch:engine/restart

scoreboard players add #process_end switch.data 1