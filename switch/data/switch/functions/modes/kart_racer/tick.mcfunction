
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #kart_racer_ticks switch.data 1

execute as @e[type=marker,tag=switch.checkpoint] at @s run function switch:modes/kart_racer/checkpoints/tick
execute as @a[scores={switch.right_click=1..}] run function switch:modes/kart_racer/right_click

execute if score #kart_racer_seconds switch.data matches -7..-1 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 1b
execute if score #kart_racer_seconds switch.data matches ..-1 run scoreboard players set @e[tag=shopping_kart.kart] shopping_kart.engine 0
execute if score #kart_racer_seconds switch.data matches 0 as @e[tag=shopping_kart.kart] run data modify entity @s NoAI set value 0b

clear @a[nbt=!{Inventory:[{Slot:0b},{Slot:1b},{Slot:8b}]}] warped_fungus_on_a_stick
item replace entity @a[nbt=!{Inventory:[{Slot:0b,tag:{switch:{classic_respawn:1b}}}]}] hotbar.0 with warped_fungus_on_a_stick{CustomModelData:2013171,switch:{classic_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Classic Respawn","color":"yellow","italic":false}'}}
item replace entity @a[nbt=!{Inventory:[{Slot:1b,tag:{switch:{hard_respawn:1b}}}]}] hotbar.1 with warped_fungus_on_a_stick{CustomModelData:2013170,switch:{hard_respawn:1b},Unbreakable:1b,display:{Name:'{"text":"Hard Respawn","color":"yellow","italic":false}'}}
item replace entity @a[nbt=!{Inventory:[{Slot:8b,tag:{switch:{change_map:1b}}}]}] hotbar.8 with warped_fungus_on_a_stick{CustomModelData:2013219,switch:{change_map:1b},Unbreakable:1b,display:{Name:'{"text":"Voter pour changer de map","color":"yellow","italic":false}'}}
kill @e[type=item]

##Fin de la partie
execute if score #detect_end switch.data matches 1.. run function switch:modes/kart_racer/process_end

