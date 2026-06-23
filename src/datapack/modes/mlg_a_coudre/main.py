
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
execute if score @s switch.temp.lives matches 1.. run scoreboard players remove @s switch.temp.lives 1
function {translations}/death
execute if score @s switch.temp.lives matches 0 run scoreboard players reset @s switch.temp.lives

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /define_order
	write_function(f"{path}/define_order", """
scoreboard players set @s switch.temp.lives 2
scoreboard players add #position switch.data 1
scoreboard players operation @s switch.temp.order = #position switch.data
""")

	# /done
	write_function(f"{path}/done", f"""
scoreboard players operation #block switch.data = @s switch.temp.order
function switch:modes/_common/set_wool_color

scoreboard players set #success switch.data 0
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
function switch:utils/reset_attributes

# Reset player and make spectator
scoreboard players reset @s switch.temp.order
scoreboard players reset @s switch.temp.lives
function {path}/death
""")

	# /mlg_a_coudre
	write_function(f"{path}/mlg_a_coudre", f"""
setblock ~ ~ ~ emerald_block
function {translations}/mlg_a_coudre
execute if score @s switch.temp.lives matches ..1 run scoreboard players add @s switch.temp.lives 1
scoreboard players set #success switch.data 1

# Advancement
scoreboard players add @s switch.temp.nb_de_a_coudre 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.nb_de_a_coudre matches 3 run advancement grant @s only switch:visible/21
""")

	# /next_player
	write_function(f"{path}/next_player", f"""
scoreboard players operation #next switch.data %= #max switch.data
scoreboard players add #next switch.data 1

scoreboard players set #success switch.data 0
execute as @a[scores={{switch.temp.lives=1..}}] if score @s switch.temp.order = #next switch.data run function {path}/next_player_teleport
execute if score #success switch.data matches 0 if score #next switch.data < #max switch.data run function {path}/next_player
""")

	# /next_player_teleport
	write_function(f"{path}/next_player_teleport", """
scoreboard players set #success switch.data 1

clear @s
item replace entity @s hotbar.0 with water_bucket[can_place_on={blocks:["blue_concrete"]}]

gamemode adventure @s
scoreboard players set #remaining_time switch.data 15
execute if data storage switch:main {map:"mlg_a_coudre_1"} run tp @s 31026 206 31045 90 0
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #position switch.data matches 1 as @a[tag=!detached,scores={{switch.temp.lives=1..}}] at @s run function switch:engine/add_win
function {translations}/process_end
execute if score #process_end switch.data matches 1 run scoreboard players reset @a[tag=!detached] switch.temp.lives
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /remove_water
	write_function(f"{path}/remove_water", """
# Maps
execute if data storage switch:main {map:"mlg_a_coudre_1"} run fill 30986 100 30986 31014 100 31014 air replace water
execute if data storage switch:main {map:"mlg_a_coudre_1"} run fill 31009 101 30991 30991 101 31009 air replace water
execute if data storage switch:main {map:"mlg_a_coudre_1"} run fill 30999 102 31012 30988 102 30988 air replace water
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #mlg_a_coudre_seconds switch.data 1

function {path}/xp_bar
execute if score #remaining_time switch.data matches -6.. run scoreboard players remove #remaining_time switch.data 1
execute if score #remaining_time switch.data matches 0 as @a[tag=!detached,gamemode=adventure] at @s if entity @s[y=190,dy=100] run kill @s
execute if score #remaining_time switch.data matches -6 run kill @a[tag=!detached,gamemode=adventure]
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
function switch:utils/choose_map_for {{id:"mlg_a_coudre", maps:["mlg_a_coudre_1"]}}

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #mlg_a_coudre_seconds switch.data -9
scoreboard players set #mlg_a_coudre_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #detect_end switch.data 0
scoreboard objectives add switch.temp.order dummy
scoreboard objectives add switch.temp.lives dummy {{"text":"Remaining Lives","color":"red"}}
scoreboard objectives add switch.temp.nb_de_a_coudre dummy
scoreboard objectives setdisplay sidebar switch.temp.lives

## Order selection
scoreboard players set #position switch.data 0
scoreboard players set #next switch.data 0
execute as @a[tag=!detached,sort=random] run function {path}/define_order
scoreboard players operation #max switch.data = #position switch.data

# Teleport all players to the jump place
execute as @a[tag=!detached] run function {path}/next_player_teleport
gamemode spectator @a[tag=!detached]
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.order
scoreboard objectives remove switch.temp.lives
scoreboard objectives remove switch.temp.nb_de_a_coudre
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #mlg_a_coudre_ticks switch.data 1

## Global tick
execute as @e[type=player,tag=!detached,gamemode=adventure,predicate=switch:in_water] at @s run function {path}/done
function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute if score #mlg_a_coudre_seconds switch.data matches 1.. if score #detect_end switch.data matches 0 unless entity @a[tag=!detached,gamemode=adventure] if entity @a[tag=!detached] run function {path}/next_player

## End game
scoreboard players set #position switch.data 0
execute store result score #position switch.data if entity @a[scores={{switch.temp.lives=1..}}]
execute if score #detect_end switch.data matches 0 if score #position switch.data matches ..1 run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 0 if score #mlg_a_coudre_seconds switch.data matches 600.. run scoreboard players set #detect_end switch.data 1
execute if score #detect_end switch.data matches 1 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 15)
