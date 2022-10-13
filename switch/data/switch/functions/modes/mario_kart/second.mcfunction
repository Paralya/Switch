
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #mario_kart_seconds switch.data 1

execute if score #mario_kart_seconds switch.data matches 0.. run function switch:modes/mario_kart/xp_bar

