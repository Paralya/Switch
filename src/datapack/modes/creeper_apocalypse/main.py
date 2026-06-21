
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "creeper_apocalypse"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /creeper_exploded
	write_function(f"{path}/creeper_exploded", """
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~1 {AbsorptionAmount:2048.0f,Motion:[0.3d,1.69d,0.5d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
execute if predicate switch:chance/0.5 run summon creeper ~.5 ~ ~-1 {AbsorptionAmount:2048.0f,Motion:[0.3d,1.69d,-0.5d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
execute if predicate switch:chance/0.5 run summon creeper ~1 ~ ~.5 {AbsorptionAmount:2048.0f,Motion:[0.5d,1.69d,0.3d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
execute if predicate switch:chance/0.5 run summon creeper ~-1 ~ ~.5 {AbsorptionAmount:2048.0f,Motion:[-0.5d,1.69d,0.3d],attributes:[{id:"minecraft:max_absorption",base:2048.0}],powered:true}
kill @s
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
function switch:utils/classic_death
scoreboard players set @s switch.alive 0
""")

	# /give_items
	write_function(f"{path}/give_items", """
give @s golden_apple 5
give @s flint_and_steel
attribute @s max_health base set 40.0
item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with diamond_boots
scoreboard players set @s switch.temp.ocelot 1
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join
gamemode spectator @s
function {path}/death
""")

	# /kill_creeper_if_too_close
	write_function(f"{path}/kill_creeper_if_too_close", """
# Comptage des creepers à proximité
execute store result score #count switch.data if entity @e[type=creeper,distance=..5]

# Si il y a au moins 20 creepers à proximité, on tue le creeper
execute if score #count switch.data matches 20.. run kill @s
""")

	# /ocelot_advancement
	write_function(f"{path}/ocelot_advancement", """
execute store result score #health switch.data run data get entity @s Health
execute if score #health switch.data matches ..19 run scoreboard players reset @s switch.temp.ocelot
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=1..}}] at @s run function switch:engine/add_win
function switch:translations/common/process_end_survivors
execute if score #process_end switch.data matches 1 unless score #test_mode switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=1..,switch.temp.ocelot=1}}] run advancement grant @s only switch:visible/25
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #creeper_apocalypse_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #creeper_apocalypse_seconds switch.data matches 0.. run function {path}/xp_bar
execute if score #creeper_apocalypse_seconds switch.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0 {{Tags:["switch.useless"]}}
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {{map:"enchanting_island"}} as @e[limit=8] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {{map:"friends_pvpbox_hills"}} as @e[limit=48] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {{map:"friends_cube_lobby"}} as @e[limit=6] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {{map:"zonweeb_main"}} as @e[limit=24] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {{map:"jn_countries_castle"}} as @e[limit=8] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 if data storage switch:main {{map:"even_old_japan"}} as @e[limit=6] summon creeper run function switch:maps/spread_one_player
execute if score #creeper_apocalypse_seconds switch.data matches 0 run kill @e[type=marker,tag=switch.useless]

# Tuer les creepers qui sont trop proches d'autres creepers
execute if score #creeper_apocalypse_seconds switch.data matches 0.. as @e[type=creeper] at @s run function {path}/kill_creeper_if_too_close

# Veillez à ce que le nombre de creepers ne dépasse pas 200
execute store result score #count switch.data if entity @e[type=creeper]
execute if score #count switch.data matches 200.. run kill @e[type=creeper,limit=25,sort=random]

# Ocelot advancement
execute as @a[tag=!detached] run function {path}/ocelot_advancement

# Clear des anciens mobs si il y en a
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run tp @e[type=creeper] 0 -10000 0
execute if score #creeper_apocalypse_seconds switch.data matches ..-1 run kill @e[type=creeper]
""")

	# /start
	write_function(f"{path}/start", f"""
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] night_vision infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
effect give @a[tag=!detached] resistance 12 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"creeper_apocalypse", maps:["enchanting_island","friends_cube_lobby","zonweeb_main","jn_countries_castle","even_old_japan"]}}

execute in switch:game run gamerule minecraft:mob_griefing true
execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #remaining_time switch.data 105
scoreboard players set #creeper_apocalypse_seconds switch.data -10
scoreboard players set #creeper_apocalypse_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives setdisplay list switch.health
scoreboard objectives add switch.temp.duplication dummy
scoreboard objectives add switch.temp.ocelot dummy

execute as @a[tag=!detached] at @s run function {path}/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.duplication
scoreboard objectives remove switch.temp.ocelot
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #creeper_apocalypse_ticks switch.data 1

execute as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier run kill @s
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Creeper stuff
effect give @e[type=creeper] resistance infinite 0 true
execute as @e[type=area_effect_cloud] at @s run function {path}/creeper_exploded
execute as @e[type=creeper] run scoreboard players add @e[type=creeper,sort=random,limit=1] switch.temp.duplication 1
execute as @e[type=creeper,scores={{switch.temp.duplication=200..}}] run data modify entity @s ignited set value 1b
execute as @e[type=creeper] at @s if block ~ ~-1 ~ barrier run tp @s 0 -10000 0
kill @e[type=item]

# Creeper Count
scoreboard players set #creeper_count switch.data 0
execute store result score #creeper_count switch.data if entity @e[type=creeper]
function {translations}/tick

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #creeper_apocalypse_seconds switch.data matches 1.. if score #remaining_time switch.data matches 1.. unless entity @a[scores={{switch.alive=1..}}] run function {path}/process_end
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 100, "#creeper_apocalypse_seconds")

