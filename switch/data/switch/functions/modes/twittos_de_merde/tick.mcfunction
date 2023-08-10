
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #twittos_de_merde_ticks switch.data 1

execute as @a[scores={switch.temp.deathCount=1..},x=0,y=69,z=0,distance=..10,sort=random] run function switch:modes/twittos_de_merde/death
execute at @e[type=marker,tag=switch.selected_map,limit=1] run kill @a[distance=50..,tag=switch.alive]

execute unless entity @a[tag=switch.alive] run function switch:modes/twittos_de_merde/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/twittos_de_merde/process_end

