
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_seconds switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function switch:modes/pitch_creep/xp_bar

execute if score #pitch_creep_seconds switch.data matches 0.. at @e[limit=2] at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f}
execute if score #pitch_creep_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #pitch_creep_seconds switch.data matches ..-1 run kill @e[type=creeper]

