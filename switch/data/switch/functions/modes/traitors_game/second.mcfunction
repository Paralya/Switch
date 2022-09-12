
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #traitors_game_seconds switch.data 1

execute if score #traitors_game_seconds switch.data matches 0 run function switch:modes/traitors_game/roles/announcement



