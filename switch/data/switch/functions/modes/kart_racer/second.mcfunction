
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #kart_racer_seconds switch.data 1
scoreboard players remove #remaining_time switch.data 1

execute if score #kart_racer_seconds switch.data matches 0.. run function switch:modes/kart_racer/xp_bar
execute if score #detect_end switch.data matches 0 if score #remaining_time switch.data matches 0 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 unless entity @a[tag=switch.playing] run scoreboard players set #detect_end switch.data 1

