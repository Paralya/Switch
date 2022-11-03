
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #kart_racer_ticks switch.data 1

execute as @e[type=marker,tag=switch.checkpoint] at @s run function switch:modes/kart_racer/checkpoints/tick
execute as @a[scores={switch.right_click=1..}] run function switch:modes/kart_racer/right_click

execute if score #kart_racer_seconds switch.data matches -7..-1 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 1b
execute if score #kart_racer_seconds switch.data matches ..-1 run scoreboard players set @e[tag=shopping_kart.kart] shopping_kart.engine 0
execute if score #kart_racer_seconds switch.data matches 0 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 0b

execute as @a run function switch:modes/kart_racer/player_tick
kill @e[type=item]

##Fin de la partie
execute if score #detect_end switch.data matches 1.. run function switch:modes/kart_racer/process_end

