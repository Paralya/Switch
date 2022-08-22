
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_seconds switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function switch:modes/pitch_creep/xp_bar
execute if score #pitch_creep_seconds switch.data matches 0.. run summon creeper 100 110 110 {AbsorptionAmount:2048f}
execute if score #pitch_creep_seconds switch.data matches 0.. run summon creeper 100 110 110 {AbsorptionAmount:2048f}
execute if score #pitch_creep_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #pitch_creep_seconds switch.data matches ..-1 run kill @e[type=creeper]

