
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #twittos_de_merde_ticks switch.data 1

execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/twittos_de_merde/death
execute at @e[type=marker,tag=switch.selected_map,limit=1] run kill @a[tag=!switch.detached,distance=50..,scores={switch.alive=1..}]
execute unless entity @a[tag=!switch.detached,scores={switch.alive=1..}] run function switch:modes/twittos_de_merde/process_end
execute if score #remaining_time switch.data matches 0 run function switch:modes/twittos_de_merde/process_end
execute if entity @a[tag=!switch.detached,scores={switch.temp.passage_vote=0..1}] run scoreboard players enable @a[tag=!switch.detached] switch.temp.rating_vote

execute store result score #remaining_players switch.data if entity @a[tag=!switch.detached,gamemode=adventure]
execute if score #remaining_players switch.data matches ..1 run function switch:modes/twittos_de_merde/process_end