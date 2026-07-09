
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
function {ns}:translations/common/death_missed_jump
function {path}/teleport
""")

	# /define_color
	write_function(f"{path}/define_color", f"""
scoreboard players add #position {ns}.data 1
scoreboard players operation @s {ns}.temp.color = #position {ns}.data
""")

	# /done (translation ref rewritten)
	write_function(f"{path}/done", f"""
function {ns}:modes/_common/place_wool_count_sides

execute unless score #test_mode {ns}.data matches 1 if score #points {ns}.data matches 5 on attacker run advancement grant @s only {ns}:visible/44
execute if score #points {ns}.data matches 5 run setblock ~ ~ ~ emerald_block
execute if score #points {ns}.data matches 5 run summon firework_rocket ~ ~1 ~ {{LifeTime:30,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;65280]}}]}}}}}}}}
execute if score #points {ns}.data matches 1..4 run summon firework_rocket ~ ~1 ~ {{LifeTime:15,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:fireworks":{{explosions:[{{shape:"burst",has_twinkle:true,has_trail:true,colors:[I;255]}}]}}}}}}}}

execute if score #points {ns}.data matches 5 run scoreboard players set #points {ns}.data 6
execute if score #points {ns}.data matches 6 run scoreboard players add @s {ns}.temp.nb_de_a_coudre 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.nb_de_a_coudre matches 3 run advancement grant @s only {ns}:visible/21
function {ns}:modes/simultaneous_jump/translations/done
scoreboard players operation @s {ns}.temp.points += #points {ns}.data

function {ns}:modes/simultaneous_jump/teleport
execute at @s run playsound entity.player.levelup ambient @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Reset attributes (like safe_fall_distance)
function {ns}:utils/reset_attributes

# Set player to adventure and handle reconnection
gamemode adventure @s
execute if score #reconnect {ns}.data matches 0 run scoreboard players add #max {ns}.data 1
execute if score #reconnect {ns}.data matches 0 run scoreboard players operation @s {ns}.temp.color = #max {ns}.data
function {path}/teleport
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

function {ns}:modes/_common/process_end/winner_by_points
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 run clear @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #simultaneous_jump_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 0.. run scoreboard players remove #remaining_time {ns}.data 1

# XP bar
function {path}/xp_bar
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"simultaneous_jump", maps:["de_a_coudre_1","mlg_a_coudre_1"]}}

execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {ns}:modes/simultaneous_jump/translations/start

scoreboard players set #simultaneous_jump_seconds {ns}.data -8
scoreboard players set #simultaneous_jump_ticks {ns}.data 0
scoreboard players set #remaining_time {ns}.data 65
scoreboard players set #process_end {ns}.data 0
scoreboard players set #detect_end {ns}.data 0
scoreboard objectives add {ns}.temp.color dummy
scoreboard objectives add {ns}.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives add {ns}.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar {ns}.temp.points

## Order selection for the color
scoreboard players set #position {ns}.data 0
scoreboard players set #next {ns}.data 0
execute as @a[tag=!detached,sort=random] run function {ns}:modes/simultaneous_jump/define_color
scoreboard players operation #max {ns}.data = #position {ns}.data
execute as @a[tag=!detached] run function {ns}:modes/simultaneous_jump/teleport
gamemode adventure @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.color
scoreboard objectives remove {ns}.temp.points
scoreboard objectives remove {ns}.temp.nb_de_a_coudre
""")

	# /teleport
	write_function(f"{path}/teleport", f"""
# Utils
clear @s

# De a coudre
execute if data storage {ns}:main {{map:"de_a_coudre_1"}} run tp @s 29034 162 29023 90 0

# MLG a coudre
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.0 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.1 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.2 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.3 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.4 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.5 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.6 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.7 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run item replace entity @s hotbar.8 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run tp @s 31026 206 31045 90 0
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #simultaneous_jump_ticks {ns}.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate={ns}:in_water] at @s run function {path}/done
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}

## End game
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 60)
