
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_ticks switch.data 1

# Death management
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/pitch_creep/death
execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier run kill @s
execute as @e[type=creeper] at @s if block ~ ~-1 ~ barrier run kill @s

# Exploser des creepers randoms
execute if predicate switch:chance/0.1 as @e[type=creeper,sort=random,limit=1] run data modify entity @s ignited set value 1b

# Creeper Count
scoreboard players set #creeper_count switch.data 0
execute store result score #creeper_count switch.data if entity @e[type=creeper]
title @a actionbar ["",{"text":"Nombre de creepers : ","color":"dark_green"},{"score":{"name":"#creeper_count","objective":"switch.data"},"color":"green"}]

execute unless entity @a[tag=switch.alive] run function switch:modes/pitch_creep/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/pitch_creep/process_end

