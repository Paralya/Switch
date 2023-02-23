
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function switch:modes/creeper_apocalypse/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"enchanting_island"} at @e[limit=10] at @e[type=marker,tag=switch.selected_map,limit=1] run summon creeper ~ ~ ~ {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=2] run summon creeper 17000 120 17024 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=2] run summon creeper 16992 140 16984 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=2] run summon creeper 17009 130 17012 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 31989 115 32012 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 31967 117 32028 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 31972 116 31992 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 32000 134 31976 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 32033 133 32000 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 32000 138 32027 {AbsorptionAmount:2048f}

# Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]

