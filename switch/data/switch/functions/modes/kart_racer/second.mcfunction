
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #kart_racer_seconds switch.data 1

execute if score #kart_racer_seconds switch.data matches 0.. run function switch:modes/kart_racer/xp_bar

