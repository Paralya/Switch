
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #laser_game_ticks switch.data 1

execute as @a[tag=!switch.detached] run function switch:modes/laser_game/xp_bar
execute as @a[tag=!switch.detached,scores={switch.right_click=1..},sort=random] at @s run function switch:modes/laser_game/right_click
execute as @a[tag=!switch.detached] run function switch:modes/laser_game/give_items
kill @e[type=item]

execute if score #remaining_time switch.data matches ..0 run function switch:modes/laser_game/process_end

