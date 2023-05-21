
## Fonction executée toutes les secondes lorsque le mode de jeu est activé

scoreboard players add #creeper_apocalypse_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function switch:modes/creeper_apocalypse/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"enchanting_island"} at @e[limit=10] run summon creeper 7000 140 7000 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} run summon creeper 10978 120 10984 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} run summon creeper 10977 123 11021 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} run summon creeper 11017 124 11018 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} run summon creeper 11016 122 10982 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_ice"} run summon creeper 11000 125 11002 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=2] run summon creeper 12000 143 12015 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=2] run summon creeper 12026 145 11985 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=2] run summon creeper 12033 135 12042 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=2] run summon creeper 11974 122 12041 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_hills"} as @e[limit=2] run summon creeper 11976 136 11993 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_pvpbox_end"} as @e[limit=10] run summon creeper 13000 116 13000 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=2] run summon creeper 17000 120 17024 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=2] run summon creeper 16992 140 16984 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"friends_cube_lobby"} as @e[limit=2] run summon creeper 17009 130 17012 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 31989 115 32012 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 31967 117 32028 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 31972 116 31992 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 32000 134 31976 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 32033 133 32000 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"zonweeb_main"} as @e[limit=2] run summon creeper 32000 138 32027 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"sumo_lawef"} as @e[limit=10] run summon creeper 55000 127 55016 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"find_the_shulker"} as @e[limit=4] run summon creeper 57067 150 57066 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"find_the_shulker"} as @e[limit=4] run summon creeper 57022 116 57104 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"find_the_shulker"} as @e[limit=4] run summon creeper 57030 145 57018 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"find_the_shulker"} as @e[limit=4] run summon creeper 57065 132 57014 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"blindtest"} as @e[limit=10] run summon creeper 62044 110 62046 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"kart_racer_relai"} as @e[limit=10] run summon creeper 64044 111 64053 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"sky_island_tower"} as @e[limit=4] run summon creeper 77067 231 77045 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"sky_island_tower"} as @e[limit=4] run summon creeper 77044 224 77030 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"sky_island_tower"} as @e[limit=4] run summon creeper 77043 207 77048 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"lava_castle"} as @e[limit=10] run summon creeper 83032 173 83026 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"lava_castle"} as @e[limit=10] run summon creeper 83032 131 83044 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"nature_house"} as @e[limit=10] run summon creeper 88039 123 88025 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"werewolf_village"} as @e[limit=4] run summon creeper 93081 137 93038 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"werewolf_village"} as @e[limit=4] run summon creeper 93086 136 93089 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"werewolf_village"} as @e[limit=4] run summon creeper 93035 144 93089 {AbsorptionAmount:2048f}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {map:"werewolf_village"} as @e[limit=4] run summon creeper 93061 114 93061 {AbsorptionAmount:2048f}

# Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]

