
## Fonction executée tous les ticks lorsque le mode de jeu est activé

scoreboard players add #feed_fast_ticks switch.data 1

# Pour chaque joueur,
execute as @a[tag=!detached,gamemode=!spectator] run function switch:modes/feed_fast/tick_player

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #remaining_time switch.data matches 1.. unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function switch:modes/feed_fast/process_end

