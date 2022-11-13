
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #spectres_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #spectres_game_seconds switch.data matches 0.. run function switch:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds switch.data matches 0.. run effect give @a[tag=switch.spectres_game.spectre] resistance 99999 0 true
execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement

