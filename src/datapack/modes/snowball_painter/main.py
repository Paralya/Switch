
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "snowball_painter"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:modes/snowball_painter/death"})
	write_translations()


	# /color/actionbar
	write_function(f"{path}/color/actionbar", f"""
## File attribut: Ignore translations
title @s[scores={{{ns}.temp.color=0}}] actionbar {{"translate":"block.minecraft.orange_wool","color":"#ff8000"}}
title @s[scores={{{ns}.temp.color=1}}] actionbar {{"translate":"block.minecraft.magenta_wool","color":"#ff8000"}}
title @s[scores={{{ns}.temp.color=2}}] actionbar {{"translate":"block.minecraft.light_blue_wool","color":"#00ffff"}}
title @s[scores={{{ns}.temp.color=3}}] actionbar {{"translate":"block.minecraft.yellow_wool","color":"#ffff00"}}
title @s[scores={{{ns}.temp.color=4}}] actionbar {{"translate":"block.minecraft.lime_wool","color":"#00ff00"}}
title @s[scores={{{ns}.temp.color=5}}] actionbar {{"translate":"block.minecraft.pink_wool","color":"#ff00ff"}}
title @s[scores={{{ns}.temp.color=6}}] actionbar {{"translate":"block.minecraft.gray_wool","color":"#808080"}}
title @s[scores={{{ns}.temp.color=7}}] actionbar {{"translate":"block.minecraft.light_gray","color":"#c0c0c0"}}
title @s[scores={{{ns}.temp.color=8}}] actionbar {{"translate":"block.minecraft.cyan_wool","color":"#0080ff"}}
title @s[scores={{{ns}.temp.color=9}}] actionbar {{"translate":"block.minecraft.purple_wool","color":"#8000ff"}}
title @s[scores={{{ns}.temp.color=10}}] actionbar {{"translate":"block.minecraft.blue_wool","color":"#0000ff"}}
title @s[scores={{{ns}.temp.color=11}}] actionbar {{"translate":"block.minecraft.brown_wool","color":"#804000"}}
title @s[scores={{{ns}.temp.color=12}}] actionbar {{"translate":"block.minecraft.green_wool","color":"#008000"}}
title @s[scores={{{ns}.temp.color=13}}] actionbar {{"translate":"block.minecraft.red_wool","color":"#ff0000"}}
title @s[scores={{{ns}.temp.color=14}}] actionbar {{"translate":"block.minecraft.black_wool","color":"#000000"}}
title @s[scores={{{ns}.temp.color=15}}] actionbar {{"translate":"block.minecraft.orange_concrete_powder","color":"#ff8000"}}
title @s[scores={{{ns}.temp.color=16}}] actionbar {{"translate":"block.minecraft.magenta_concrete_powder","color":"#ff8000"}}
title @s[scores={{{ns}.temp.color=17}}] actionbar {{"translate":"block.minecraft.light_blue_concrete_powder","color":"#00ffff"}}
title @s[scores={{{ns}.temp.color=18}}] actionbar {{"translate":"block.minecraft.yellow_concrete_powder","color":"#ffff00"}}
title @s[scores={{{ns}.temp.color=19}}] actionbar {{"translate":"block.minecraft.lime_concrete_powder","color":"#00ff00"}}
title @s[scores={{{ns}.temp.color=20}}] actionbar {{"translate":"block.minecraft.pink_concrete_powder","color":"#ff00ff"}}
title @s[scores={{{ns}.temp.color=21}}] actionbar {{"translate":"block.minecraft.gray_concrete_powder","color":"#808080"}}
title @s[scores={{{ns}.temp.color=22}}] actionbar {{"translate":"block.minecraft.light_gray","color":"#c0c0c0"}}
title @s[scores={{{ns}.temp.color=23}}] actionbar {{"translate":"block.minecraft.cyan_concrete_powder","color":"#0080ff"}}
title @s[scores={{{ns}.temp.color=24}}] actionbar {{"translate":"block.minecraft.purple_concrete_powder","color":"#8000ff"}}
title @s[scores={{{ns}.temp.color=25}}] actionbar {{"translate":"block.minecraft.blue_concrete_powder","color":"#0000ff"}}
title @s[scores={{{ns}.temp.color=26}}] actionbar {{"translate":"block.minecraft.brown_concrete_powder","color":"#804000"}}
title @s[scores={{{ns}.temp.color=27}}] actionbar {{"translate":"block.minecraft.green_concrete_powder","color":"#008000"}}
title @s[scores={{{ns}.temp.color=28}}] actionbar {{"translate":"block.minecraft.red_concrete_powder","color":"#ff0000"}}
title @s[scores={{{ns}.temp.color=29}}] actionbar {{"translate":"block.minecraft.black_concrete_powder","color":"#000000"}}
title @s[scores={{{ns}.temp.color=30}}] actionbar {{"translate":"block.minecraft.orange_terracotta","color":"#ff8000"}}
title @s[scores={{{ns}.temp.color=31}}] actionbar {{"translate":"block.minecraft.magenta_terracotta","color":"#ff8000"}}
title @s[scores={{{ns}.temp.color=32}}] actionbar {{"translate":"block.minecraft.light_blue_terracotta","color":"#00ffff"}}
title @s[scores={{{ns}.temp.color=33}}] actionbar {{"translate":"block.minecraft.yellow_terracotta","color":"#ffff00"}}
title @s[scores={{{ns}.temp.color=34}}] actionbar {{"translate":"block.minecraft.lime_terracotta","color":"#00ff00"}}
title @s[scores={{{ns}.temp.color=35}}] actionbar {{"translate":"block.minecraft.pink_terracotta","color":"#ff00ff"}}
title @s[scores={{{ns}.temp.color=36}}] actionbar {{"translate":"block.minecraft.gray_terracotta","color":"#808080"}}
title @s[scores={{{ns}.temp.color=37}}] actionbar {{"translate":"block.minecraft.light_gray","color":"#c0c0c0"}}
title @s[scores={{{ns}.temp.color=38}}] actionbar {{"translate":"block.minecraft.cyan_terracotta","color":"#0080ff"}}
title @s[scores={{{ns}.temp.color=39}}] actionbar {{"translate":"block.minecraft.purple_terracotta","color":"#8000ff"}}
title @s[scores={{{ns}.temp.color=40}}] actionbar {{"translate":"block.minecraft.blue_terracotta","color":"#0000ff"}}
title @s[scores={{{ns}.temp.color=41}}] actionbar {{"translate":"block.minecraft.brown_terracotta","color":"#804000"}}
title @s[scores={{{ns}.temp.color=42}}] actionbar {{"translate":"block.minecraft.green_terracotta","color":"#008000"}}
title @s[scores={{{ns}.temp.color=43}}] actionbar {{"translate":"block.minecraft.red_terracotta","color":"#ff0000"}}
title @s[scores={{{ns}.temp.color=44}}] actionbar {{"translate":"block.minecraft.black_terracotta","color":"#000000"}}
""")

	# /color/place (only refs remove_point_to_old_color, no braces)
	colors = [
		(0, "orange_wool"), (1, "magenta_wool"), (2, "light_blue_wool"), (3, "yellow_wool"),
		(4, "lime_wool"), (5, "pink_wool"), (6, "gray_wool"), (7, "light_gray_wool"),
		(8, "cyan_wool"), (9, "purple_wool"), (10, "blue_wool"), (11, "brown_wool"),
		(12, "green_wool"), (13, "red_wool"), (14, "black_wool"),
	]
	place_lines = ["", "# Depending on the color, place the corresponding block"]
	def emit_place(idx: int, block: str) -> None:
		place_lines.append(f"execute if score #new_color {ns}.data matches {idx} unless block ~ ~ ~ {block} run scoreboard players add @p[tag={ns}.temp] {ns}.temp.points 1")
		place_lines.append(f"execute if score #new_color {ns}.data matches {idx} unless block ~ ~ ~ {block} run function {path}/color/remove_point_to_old_color")
		place_lines.append(f"execute if score #new_color {ns}.data matches {idx} unless block ~ ~ ~ {block} run setblock ~ ~ ~ {block}")
	for idx, block in colors:
		emit_place(idx, block)
	place_lines.append("")
	powders = ["orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray", "light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black"]
	for i, name in enumerate(powders):
		emit_place(15 + i, f"{name}_concrete_powder")
	place_lines.append("")
	for i, name in enumerate(powders):
		emit_place(30 + i, f"{name}_terracotta")
	write_function(f"{path}/color/place", "\n".join(place_lines) + "\n")

	# /color/remove_point_to_old_color (scores braces, no refs)
	rm_lines = ["", "# Depending on the block, remove a point to the corresponding player"]
	for idx, block in colors:
		rm_lines.append(f"execute unless score #new_color {ns}.data matches {idx} if block ~ ~ ~ {block} run scoreboard players remove @p[scores={{{ns}.temp.color={idx}}}] {ns}.temp.points 1")
	rm_lines.append("")
	for i, name in enumerate(powders):
		idx = 15 + i
		rm_lines.append(f"execute unless score #new_color {ns}.data matches {idx} if block ~ ~ ~ {name}_concrete_powder run scoreboard players remove @p[scores={{{ns}.temp.color={idx}}}] {ns}.temp.points 1")
	rm_lines.append("")
	for i, name in enumerate(powders):
		idx = 30 + i
		rm_lines.append(f"execute unless score #new_color {ns}.data matches {idx} if block ~ ~ ~ {name}_terracotta run scoreboard players remove @p[scores={{{ns}.temp.color={idx}}}] {ns}.temp.points 1")
	write_function(f"{path}/color/remove_point_to_old_color", "\n".join(rm_lines) + "\n")

	# /death
	write_function(f"{path}/death", f"""
gamemode spectator @s
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /define_color
	write_function(f"{path}/define_color", f"""
scoreboard players operation @s {ns}.temp.color = #position {ns}.data
scoreboard players add #position {ns}.data 1
""")

	# /explode_marker
	explode = ["", "# Search the player corresponding with the score",
		f"execute at @a[tag=!detached] if score @s {ns}.temp.color = @p {ns}.temp.color run tag @p add {ns}.temp",
		"", "# Fill the area with the color (3x3x3)",
		f"scoreboard players operation #new_color {ns}.data = @s {ns}.temp.color"]
	for dx in (1, 0, -1):
		for dy in (1, 0, -1):
			for dz in (1, 0, -1):
				explode.append(f"execute positioned ~{dx} ~{dy} ~{dz} if block ~ ~ ~ #{ns}:snowball_painter run function {path}/color/place")
	explode += ["", "# Remove the temp tag", f"tag @a[tag=!detached,tag={ns}.temp] remove {ns}.temp", "", "# Kill marker", "kill @s"]
	write_function(f"{path}/explode_marker", "\n".join(explode) + "\n")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

kill @e[type=marker,tag={ns}.marker]
kill @e[type=snowball,tag={ns}.marker]
function {ns}:modes/_common/process_end/winner_by_points
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,scores={{{ns}.temp.points=51}}] only {ns}:visible/39
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /ride_marker_on_snowball
	write_function(f"{path}/ride_marker_on_snowball", f"""
# Summon marker and make it ride the player
tag @s add {ns}.temp
execute summon marker run ride @s mount @e[tag={ns}.temp,limit=1,sort=nearest,distance=..1]
tag @s remove {ns}.temp

# Add the tag to the marker
tag @s add {ns}.marker

# Copy owner color ID to marker
execute on origin run scoreboard players operation #color {ns}.data = @s {ns}.temp.color
execute on passengers run scoreboard players operation @s {ns}.temp.color = #color {ns}.data
execute on passengers run tag @s add {ns}.marker
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #snowball_painter_seconds {ns}.data 1

execute as @a[tag=!detached,gamemode=adventure] run function {path}/color/actionbar
""")

	# /start (translation ref rewritten)
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
function {ns}:utils/choose_map_for {{id:"snowball_painter", maps:["snowball_painter"]}}

function {ns}:modes/snowball_painter/translations/start

scoreboard players set #snowball_painter_seconds {ns}.data -10
scoreboard players set #snowball_painter_ticks {ns}.data 0
scoreboard players set #remaining_time {ns}.data 1000
scoreboard players set #process_end {ns}.data 0
scoreboard objectives add {ns}.temp.color dummy
scoreboard objectives add {ns}.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives setdisplay sidebar {ns}.temp.points

## Order selection
scoreboard players set #position {ns}.data 0
execute as @a[tag=!detached,sort=random] run function {ns}:modes/snowball_painter/define_color
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.color
scoreboard objectives remove {ns}.temp.points
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #snowball_painter_ticks {ns}.data 1

## Global tick
# XP bar update
function {path}/xp_bar

# Give snowball every 4 ticks
execute if score #snowball_painter_seconds {ns}.data matches 0.. run scoreboard players operation #snowball_painter_ticks {ns}.data %= #4 {ns}.data
execute if score #snowball_painter_ticks {ns}.data matches 0 run clear @a[tag=!detached,gamemode=!spectator] snowball
execute if score #snowball_painter_ticks {ns}.data matches 0 run give @a[tag=!detached,gamemode=!spectator] snowball

# Make a marker ride snowballs that don't have one
execute as @e[type=snowball,tag=!{ns}.marker] at @s run function {path}/ride_marker_on_snowball

# For each marker, check if they still have a vehicle
execute as @e[type=marker,tag={ns}.marker,predicate=!{ns}:has_vehicle,sort=random] at @s run function {path}/explode_marker

# Unknown death
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}

## End game
scoreboard players remove #remaining_time {ns}.data 1
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
