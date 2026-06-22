
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "simultaneous_jump"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
function switch:translations/common/death_missed_jump
function {path}/teleport
""")

	# /define_color
	write_function(f"{path}/define_color", """
scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.color = #position switch.data
""")

	# /done (translation ref rewritten)
	write_function(f"{path}/done", """
scoreboard players operation #block switch.data = @s switch.temp.color
function switch:modes/_common/set_wool_color

scoreboard players set #points switch.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1

execute unless score #test_mode switch.data matches 1 if score #points switch.data matches 5 on attacker run advancement grant @s only switch:visible/44
execute if score #points switch.data matches 5 run setblock ~ ~ ~ emerald_block
execute if score #points switch.data matches 5 run summon firework_rocket ~ ~1 ~ {LifeTime:30,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;65280]}]}}}}
execute if score #points switch.data matches 1..4 run summon firework_rocket ~ ~1 ~ {LifeTime:15,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:fireworks":{explosions:[{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;255]}]}}}}

execute if score #points switch.data matches 5 run scoreboard players set #points switch.data 6
execute if score #points switch.data matches 6 run scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21
function switch:modes/simultaneous_jump/translations/done
scoreboard players operation @s switch.temp.points += #points switch.data

function switch:modes/simultaneous_jump/teleport
execute at @s run playsound entity.player.levelup ambient @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Reset attributes (like safe_fall_distance)
function switch:utils/reset_attributes

# Set player to adventure and handle reconnection
gamemode adventure @s
execute if score #reconnect switch.data matches 0 run scoreboard players add #max switch.data 1
execute if score #reconnect switch.data matches 0 run scoreboard players operation @s switch.temp.color = #max switch.data
function {path}/teleport
""")

	# /process_end
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

function switch:modes/_common/process_end/winner_by_points
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 run clear @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #simultaneous_jump_seconds switch.data 1
execute if score #remaining_time switch.data matches 0.. run scoreboard players remove #remaining_time switch.data 1

# XP bar
function {path}/xp_bar
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", """
effect give @a[tag=!detached] saturation infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
function switch:utils/choose_map_for {id:"simultaneous_jump", maps:["de_a_coudre_1","mlg_a_coudre_1"]}

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:keep_inventory true

function switch:modes/simultaneous_jump/translations/start

scoreboard players set #simultaneous_jump_seconds switch.data -8
scoreboard players set #simultaneous_jump_ticks switch.data 0
scoreboard players set #remaining_time switch.data 65
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.points dummy {"text":"Points","color":"red"}
scoreboard objectives add switch.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar switch.temp.points

## Order selection for the color
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!detached,sort=random] run function switch:modes/simultaneous_jump/define_color
scoreboard players operation #max switch.data = #position switch.data
execute as @a[tag=!detached] run function switch:modes/simultaneous_jump/teleport
gamemode adventure @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.color
scoreboard objectives remove switch.temp.points
scoreboard objectives remove switch.temp.nb_de_a_coudre
""")

	# /teleport
	write_function(f"{path}/teleport", """
# Utils
clear @s

# De a coudre
execute if data storage switch:main {map:"de_a_coudre_1"} run tp @s 29034 162 29023 90 0

# MLG a coudre
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.0 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.1 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.2 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.3 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.4 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.5 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.6 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.7 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run item replace entity @s hotbar.8 with water_bucket[can_place_on={blocks:["blue_concrete"]}]
execute if data storage switch:main {map:"mlg_a_coudre_1"} run tp @s 31026 206 31045 90 0
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #simultaneous_jump_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate=switch:in_water] at @s run function {path}/done
function switch:utils/on_death_run_function {{function:"{path}/death"}}

## End game
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 60)
