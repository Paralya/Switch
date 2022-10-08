
##Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_seconds switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function switch:modes/creeper_apocalypse/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"enchanting_island"} at @e[limit=10] at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"spectre_original"} as @e[limit=12] run summon creeper 2489 165 2488 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"spectre_original"} as @e[limit=12] run summon creeper 2512 160 2510 {AbsorptionAmount:2048f}

#Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]

