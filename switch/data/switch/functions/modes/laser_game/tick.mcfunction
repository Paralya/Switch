
##Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #laser_game_ticks switch.data 1

scoreboard players add @a switch.temp.cooldown 0
scoreboard players add @a switch.temp.dead_cooldown 0
scoreboard players add @a[scores={switch.temp.cooldown=..-1}] switch.temp.cooldown 1
execute as @a[scores={switch.temp.dead_cooldown=..-1}] at @s run function switch:modes/laser_game/death_animation
execute as @a[scores={switch.right_click=1..},sort=random] at @s run function switch:modes/laser_game/right_click
execute as @a run function switch:modes/laser_game/give_items
kill @e[type=item]

execute if score #remaining_time switch.data matches ..0 run function switch:modes/laser_game/process_end

