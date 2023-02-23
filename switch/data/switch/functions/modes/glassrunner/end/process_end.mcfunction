
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=switch.alive] at @s run function switch:engine/add_money



execute if score #process_end switch.data matches 1 as @a[sort=random] run function switch:modes/glassrunner/death
execute if score #process_end switch.data matches 1 run gamemode spectator @a

execute if score #process_end switch.data matches 1 positioned 3000 -64 3000 run function switch:modes/glassrunner/reset/start

execute if score #process_end switch.data matches 1..399 as @e[tag=switch.glassrunner.reset] at @s run function switch:modes/glassrunner/reset/tick

execute if score #process_end switch.data matches 399 positioned 3000 -64 3000 run function switch:modes/glassrunner/reset/end


# Obligatoire
execute if score #process_end switch.data matches 400.. run function switch:engine/restart

execute if score #process_end switch.data matches 400.. run scoreboard players set #process_end switch.data 0