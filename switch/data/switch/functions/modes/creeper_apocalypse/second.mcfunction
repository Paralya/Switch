
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function switch:modes/creeper_apocalypse/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"enchanting_island"} as @e[limit=8] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} as @e[limit=4] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=16] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_end"} as @e[limit=4] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=4] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=16] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"sumo_lawef"} as @e[limit=2] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"find_the_shulker"} as @e[limit=16] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"blindtest"} as @e[limit=8] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"kart_racer_relai"} as @e[limit=12] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"sky_island_tower"} as @e[limit=12] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"lava_castle"} as @e[limit=12] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"nature_house"} as @e[limit=4] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"werewolf_village"} as @e[limit=8] summon creeper run function switch:maps/spread_one_player


# Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]

