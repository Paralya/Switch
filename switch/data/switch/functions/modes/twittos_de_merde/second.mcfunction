
scoreboard players add #twittos_de_merde_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time_mdj switch.data matches 1.. run scoreboard players remove #remaining_time_mdj switch.data 1
# si la phase de vote est en cours, on rajoute chaque seconde à timer_phase_de_vote
execute if score #phase_de_vote switch.data matches 1.. run scoreboard players add #timer_phase_de_vote switch.data 1
scoreboard players add #twittos_de_merde_seconds_mdj switch.data 1

execute if score #twittos_de_merde_seconds_mdj switch.data matches 45.. run function switch:modes/twittos_de_merde/start_vote
execute if score #twittos_de_merde_seconds switch.data matches 0.. run function switch:modes/twittos_de_merde/xp_bar
execute if score #twittos_de_merde_seconds switch.data matches 0 as @a[tag=!detached] at @s run function switch:modes/twittos_de_merde/give_items
execute if score #twittos_de_merde_seconds switch.data matches 0 run function switch:modes/twittos_de_merde/theme_aleatoire
