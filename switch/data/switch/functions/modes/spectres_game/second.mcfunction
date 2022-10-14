
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #spectres_game_seconds switch.data 1

execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement



