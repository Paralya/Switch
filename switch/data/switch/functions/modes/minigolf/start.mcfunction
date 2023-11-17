
team join switch.no_pvp @a[tag=!detached]
team modify switch.no_pvp seeFriendlyInvisibles false
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time
gamerule fallDamage false
gamerule fireDamage false
gamerule drowningDamage false
gamerule freezeDamage false

## Téléportation des joueurs
scoreboard players set #is_adventure switch.data 1
function switch:choose_map_for/minigolf

tellraw @a[tag=!detached] ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Lancement de la partie de MiniGolf, vous avez 5 secondes de préparation !"}]
tellraw @a[tag=!detached] ["\n",{"nbt":"ParalyaAstuce","storage":"switch:main","interpret":true},{"text":" La puissance de votre coup est déterminée par le slot sélectionné de votre hotbar !"}]

scoreboard players set #minigolf_seconds switch.data -5
scoreboard players set #minigolf_ticks switch.data 0
scoreboard players set #remaining_time switch.data 245
scoreboard players set #process_end switch.data 0
scoreboard objectives add switch.temp.respawn dummy

# Choose map
execute if data storage switch:main {map:"gg_grass_1"} run tp @a 124021 121 124070
execute if data storage switch:main {map:"gg_grass_2"} run tp @a 124020 124 124023
execute if data storage switch:main {map:"gg_grass_3"} run tp @a 124144 125 124112
execute if data storage switch:main {map:"gg_snow_1"} run tp @a 124068 120 124016
execute if data storage switch:main {map:"gg_snow_2"} run tp @a 124062 125 124069
execute if data storage switch:main {map:"gg_ice_1"} run tp @a 124103 115 124070
execute if data storage switch:main {map:"gg_temple"} run tp @a 124103 117 124013
execute if data storage switch:main {map:"gg_volcano"} run tp @a 124136 130 124035
execute if data storage switch:main {map:"gg_desert_1"} run tp @a 124144 125 124069
execute if data storage switch:main {map:"gg_end_1"} run tp @a 124102 135 124114
execute if data storage switch:main {map:"gg_chamber"} run tp @a 124064 129 124118

# Record
scoreboard players reset #new_record switch.data
execute unless data storage switch:records minigolf run data modify storage switch:records minigolf set value {}
data modify storage switch:records minigolf.current_map set from storage switch:main map
function switch:modes/minigolf/record_tellraw with storage switch:records minigolf

