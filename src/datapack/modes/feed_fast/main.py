
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "feed_fast"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:modes/feed_fast/death"})
	write_translations()


	# /death
	write_function(f"{path}/death", f"""
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s {ns}.alive 0
gamemode spectator @s
effect clear @s
clear @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

function {ns}:modes/_common/process_end/winner_by_points
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #feed_fast_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1
effect give @a[tag=!detached,gamemode=!spectator] hunger infinite 255 true

# Summon food
execute if score #feed_fast_seconds {ns}.data matches 0.. run function {path}/xp_bar
execute if score #feed_fast_seconds {ns}.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0
execute if score #feed_fast_seconds {ns}.data matches 0 at @e[limit=8] at @a[tag=!detached,gamemode=!spectator] run function {path}/summon_food
execute if score #feed_fast_seconds {ns}.data matches 1.. at @a[tag=!detached,gamemode=!spectator] run function {path}/summon_food
execute if score #feed_fast_seconds {ns}.data matches 0.. as @e[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{{ns}:{{}}}}}}}}}}] run data modify entity @s Glowing set value 1b

execute if score #feed_fast_seconds {ns}.data matches ..-1 run kill @e[type=item]
execute if score #feed_fast_seconds {ns}.data matches ..-1 run scoreboard players set @a[tag=!detached,gamemode=!spectator] {ns}.temp.previous_food 20
execute if score #feed_fast_seconds {ns}.data matches ..-1 run scoreboard players reset @a[tag=!detached,gamemode=!spectator] {ns}.temp.points
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
difficulty hard
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #dont_regenerate {ns}.data 1
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"feed_fast", maps:["mushroom_plains","friends_pvpbox_ice","friends_pvpbox_hills","friends_pvpbox_end","kart_racer_relai","nature_house"]}}

execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #remaining_time {ns}.data 50
scoreboard players set #feed_fast_seconds {ns}.data -3
execute if data storage {ns}:main {{map:"kart_racer_relai"}} run scoreboard players set #feed_fast_seconds {ns}.data -10
scoreboard players set #feed_fast_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard objectives add {ns}.temp.previous_food dummy
scoreboard objectives add {ns}.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives setdisplay sidebar {ns}.temp.points

scoreboard players set @a[tag=!detached] {ns}.temp.previous_food 20
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.previous_food
scoreboard objectives remove {ns}.temp.points
""")

	# /summon_food
	write_function(f"{path}/summon_food", f"""
execute if predicate {ns}:chance/0.1 run loot spawn ~6 ~ ~ loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~-6 ~ ~ loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~ ~ ~6 loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~ ~ ~-6 loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~6 ~ ~6 loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~-6 ~ ~-6 loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~6 ~ ~6 loot {ns}:feed_fast
execute if predicate {ns}:chance/0.1 run loot spawn ~-6 ~ ~-6 loot {ns}:feed_fast
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #feed_fast_ticks {ns}.data 1

# Pour chaque joueur,
function {ns}:utils/on_death_run_function {{function:"{path}/death"}}
execute as @a[tag=!detached,gamemode=!spectator] run function {path}/tick_player

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #feed_fast_seconds {ns}.data matches 1.. if score #remaining_time {ns}.data matches 1.. unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches 0 run function {path}/process_end
""")

	# /tick_player
	write_function(f"{path}/tick_player", f"""
# Si son niveau de Food est supérieur à son ancien, ajouter la différence
scoreboard players set #foodLevel {ns}.data 0
execute store result score #foodLevel {ns}.data run data get entity @s foodLevel
scoreboard players operation #foodLevel {ns}.data -= @s {ns}.temp.previous_food
execute if score #foodLevel {ns}.data matches 1.. run scoreboard players operation @s {ns}.temp.points += #foodLevel {ns}.data

# Modifier son ancien niveau de Food
execute store result score @s {ns}.temp.previous_food run data get entity @s foodLevel

# Advancement
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.temp.points matches 50.. run advancement grant @s only {ns}:visible/8
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 45)
