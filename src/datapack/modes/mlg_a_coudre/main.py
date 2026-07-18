
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "mlg_a_coudre"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
execute if score @s {ns}.temp.lives matches 1.. run scoreboard players remove @s {ns}.temp.lives 1
function {translations}/death
execute if score @s {ns}.temp.lives matches 0 run scoreboard players reset @s {ns}.temp.lives

gamemode spectator @s
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /define_order
	write_function(f"{path}/define_order", f"""
scoreboard players set @s {ns}.temp.lives 2
scoreboard players add #position {ns}.data 1
scoreboard players operation @s {ns}.temp.order = #position {ns}.data
""")

	# /done
	write_function(f"{path}/done", f"""
scoreboard players operation #block {ns}.data = @s {ns}.temp.order
function {ns}:modes/_common/set_wool_color

scoreboard players set #success {ns}.data 0
execute unless block ~1 ~ ~ water unless block ~-1 ~ ~ water unless block ~ ~ ~1 water unless block ~ ~ ~-1 water unless block ~1 ~ ~ air unless block ~-1 ~ ~ air unless block ~ ~ ~1 air unless block ~ ~ ~-1 air run function {path}/mlg_a_coudre
function {translations}/done

schedule function {path}/remove_water 1s

execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
gamemode spectator @s
""")

	# /give_items (empty)
	write_function(f"{path}/give_items", "\n")

	# /joined
	write_function(f"{path}/joined", f"""
# Reset attributes (like safe_fall_distance)
function {ns}:utils/reset_attributes

# Reset player and make spectator
scoreboard players reset @s {ns}.temp.order
scoreboard players reset @s {ns}.temp.lives
function {path}/death
""")

	# /mlg_a_coudre
	write_function(f"{path}/mlg_a_coudre", f"""
setblock ~ ~ ~ emerald_block
function {translations}/mlg_a_coudre
execute if score @s {ns}.temp.lives matches ..1 run scoreboard players add @s {ns}.temp.lives 1
scoreboard players set #success {ns}.data 1

# Advancement
scoreboard players add @s {ns}.temp.nb_de_a_coudre 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.nb_de_a_coudre matches 3 run advancement grant @s only {ns}:visible/21
""")

	# /next_player
	write_function(f"{path}/next_player", f"""
scoreboard players operation #next {ns}.data %= #max {ns}.data
scoreboard players add #next {ns}.data 1

scoreboard players set #success {ns}.data 0
execute as @a[scores={{{ns}.temp.lives=1..}}] if score @s {ns}.temp.order = #next {ns}.data run function {path}/next_player_teleport
execute if score #success {ns}.data matches 0 if score #next {ns}.data < #max {ns}.data run function {path}/next_player
""")

	# /next_player_teleport
	write_function(f"{path}/next_player_teleport", f"""
scoreboard players set #success {ns}.data 1

clear @s
item replace entity @s hotbar.0 with water_bucket[can_place_on={{blocks:["blue_concrete"]}}]

gamemode adventure @s
scoreboard players set #remaining_time {ns}.data 15
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run tp @s 31026 206 31045 90 0
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #position {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.temp.lives=1..}}] at @s run function {ns}:engine/add_win
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 run scoreboard players reset @a[tag=!detached] {ns}.temp.lives
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /remove_water
	write_function(f"{path}/remove_water", f"""
# Maps
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run fill 30986 100 30986 31014 100 31014 air replace water
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run fill 31009 101 30991 30991 101 31009 air replace water
execute if data storage {ns}:main {{map:"mlg_a_coudre_1"}} run fill 30999 102 31012 30988 102 30988 air replace water
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #mlg_a_coudre_seconds {ns}.data 1

function {path}/xp_bar
execute if score #remaining_time {ns}.data matches -6.. run scoreboard players remove #remaining_time {ns}.data 1
execute if score #remaining_time {ns}.data matches 0 as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time {ns}.data matches -6 run kill @a[tag=!detached,gamemode=adventure]
""")

	# /start
	write_function(f"{path}/start", f"""
clear @a[tag=!detached]
effect clear @a[tag=!detached]
team leave @a[tag=!detached]

kill @e[type=item]

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
difficulty normal
time set 6000
weather clear

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"mlg_a_coudre", maps:["mlg_a_coudre_1"]}}

execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #mlg_a_coudre_seconds {ns}.data -1
scoreboard players set #mlg_a_coudre_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #detect_end {ns}.data 0
scoreboard objectives add {ns}.temp.order dummy
scoreboard objectives add {ns}.temp.lives dummy {{"text":"Remaining Lives","color":"red"}}
scoreboard objectives add {ns}.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar {ns}.temp.lives

## Order selection
scoreboard players set #position {ns}.data 0
scoreboard players set #next {ns}.data 0
execute as @a[tag=!detached,sort=random] run function {path}/define_order
scoreboard players operation #max {ns}.data = #position {ns}.data

# Teleport all players to the jump place
execute as @a[tag=!detached] run function {path}/next_player_teleport
gamemode spectator @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.order
scoreboard objectives remove {ns}.temp.lives
scoreboard objectives remove {ns}.temp.nb_de_a_coudre
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #mlg_a_coudre_ticks {ns}.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate={ns}:in_water] at @s run function {path}/done
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
execute if score #mlg_a_coudre_seconds {ns}.data matches 1.. if score #detect_end {ns}.data matches 0 unless entity @a[tag=!detached,gamemode=adventure] if entity @a[tag=!detached] run function {path}/next_player

## End game
scoreboard players set #position {ns}.data 0
execute store result score #position {ns}.data if entity @a[scores={{{ns}.temp.lives=1..}}]
execute if score #detect_end {ns}.data matches 0 if score #position {ns}.data matches ..1 run scoreboard players set #detect_end {ns}.data 1
execute if score #detect_end {ns}.data matches 0 if score #mlg_a_coudre_seconds {ns}.data matches 600.. run scoreboard players set #detect_end {ns}.data 1
execute if score #detect_end {ns}.data matches 1 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 15)
