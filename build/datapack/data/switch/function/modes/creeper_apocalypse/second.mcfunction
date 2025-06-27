
#> switch:modes/creeper_apocalypse/second
#
# @within	switch:modes/creeper_apocalypse/calls/second
#

scoreboard players add #creeper_apocalypse_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function switch:modes/creeper_apocalypse/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0 {Tags:["switch.useless"]}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"enchanting_island"} as @e[limit=8] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=48] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=6] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=24] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 run kill @e[type=marker,tag=switch.useless]

# Tuer les creepers qui sont trop proches d'autres creepers
execute if score #creeper_apocalypse_seconds switch.data matches 0.. as @e[type=creeper] at @s run function switch:modes/creeper_apocalypse/kill_creeper_if_too_close

# Veillez à ce que le nombre de creepers ne dépasse pas 200
execute store result score #count switch.data if entity @e[type=creeper]
execute if score #count switch.data matches 200.. run kill @e[type=creeper,limit=25,sort=random]

# Ocelot advancement
execute as @a[tag=!detached] run function switch:modes/creeper_apocalypse/ocelot_advancement

# Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]

