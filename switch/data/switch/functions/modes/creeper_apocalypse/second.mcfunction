
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_seconds switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function switch:modes/creeper_apocalypse/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 run summon creeper 100 110 110 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 run summon creeper 100 110 110 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 run summon creeper 100 110 110 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 run summon creeper 100 110 110 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 run summon creeper 100 110 110 {AbsorptionAmount:2048f}

#Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]

