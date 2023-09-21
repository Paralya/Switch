
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_ticks switch.data 1

execute as @a[gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier run kill @s
execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/creeper_apocalypse/death

# Creeper stuff
effect give @e[type=creeper] resistance infinite 0 true
execute as @e[type=area_effect_cloud] at @s run function switch:modes/creeper_apocalypse/creeper_exploded
execute as @e[type=creeper] run scoreboard players add @e[type=creeper,sort=random,limit=1] switch.temp.duplication 1
execute as @e[type=creeper,scores={switch.temp.duplication=200..}] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if block ~ ~-1 ~ barrier run tp @s 0 -10000 0
kill @e[type=item]

# Creeper Count
scoreboard players set #creeper_count switch.data 0
execute store result score #creeper_count switch.data if entity @e[type=creeper]
title @a actionbar ["",{"text":"Nombre de creepers : ","color":"dark_green"},{"score":{"name":"#creeper_count","objective":"switch.data"},"color":"green"}]

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute unless entity @a[scores={switch.alive=1..}] run function switch:modes/creeper_apocalypse/process_end
execute if score #creeper_apocalypse_seconds switch.data matches 100.. run function switch:modes/creeper_apocalypse/process_end

