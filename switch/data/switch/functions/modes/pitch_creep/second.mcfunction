
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #pitch_creep_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #pitch_creep_seconds switch.data matches 0.. run function switch:modes/pitch_creep/xp_bar
execute if score #pitch_creep_seconds switch.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0
execute if score #pitch_creep_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} as @e[limit=6] summon creeper run function switch:maps/spread_one_player
execute if score #pitch_creep_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=24] summon creeper run function switch:maps/spread_one_player
execute if score #pitch_creep_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_end"} as @e[limit=8] summon creeper run function switch:maps/spread_one_player
execute if score #pitch_creep_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=6] summon creeper run function switch:maps/spread_one_player
execute if score #pitch_creep_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=24] summon creeper run function switch:maps/spread_one_player
execute as @e[type=creeper] run data merge entity @s {AbsorptionAmount:2048.0f,Attributes:[{Name:"generic.follow_range",Base:500.0d}]}

# Dupliquer les creepers
execute as @e[type=creeper,sort=random,limit=10] at @s run function switch:modes/pitch_creep/duplicate_creeper

# Veillez à ce que le nombre de creepers ne dépasse pas 500
execute store result score #count switch.data if entity @e[type=creeper]
execute if score #count switch.data matches 500.. run kill @e[type=creeper,limit=69,sort=random]

# Clear des anciens mobs si il y en a
execute if score #pitch_creep_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #pitch_creep_seconds switch.data matches ..-1 run kill @e[type=creeper]

