
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #a_template_seconds switch.data 1

execute if score #a_template_seconds switch.data matches 0.. run function switch:modes/a_template/xp_bar
execute if score #a_template_seconds switch.data matches 0.. run summon creeper 100 110 110 {AbsorptionAmount:2048.0f}
execute if score #a_template_seconds switch.data matches 0.. run summon creeper 100 110 110 {AbsorptionAmount:2048.0f}

# Clear des anciens mobs si il y en a
execute if score #a_template_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #a_template_seconds switch.data matches ..-1 run kill @e[type=creeper]

