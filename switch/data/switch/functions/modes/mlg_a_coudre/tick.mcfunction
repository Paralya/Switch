
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #mlg_a_coudre_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!switch.detached,gamemode=adventure,predicate=switch:in_water] at @s run function switch:modes/mlg_a_coudre/done
execute as @a[tag=!switch.detached,x=0,y=69,z=0,distance=..10] run function switch:modes/mlg_a_coudre/death
execute if score #detect_end switch.data matches 0 unless entity @a[tag=!switch.detached,gamemode=adventure] run function switch:modes/mlg_a_coudre/next_player

## Fin de partie
scoreboard players set #position switch.data 0
execute store result score #position switch.data if entity @a[tag=!switch.detached,scores={switch.temp.lives=1..}]
execute if score #detect_end switch.data matches 0 if score #position switch.data matches ..1 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 if score #mlg_a_coudre_seconds switch.data matches 600.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1 run function switch:modes/mlg_a_coudre/process_end

