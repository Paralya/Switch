
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #spleef_seconds switch.data 1

execute if score #spleef_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #spleef_seconds switch.data matches ..-1 run kill @e[type=creeper]

execute if score #spleef_seconds switch.data matches -3 as @a at @s run function switch:modes/spleef/give_items

