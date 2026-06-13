
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "feed_fast"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /death
	write_function(f"{path}/death", """
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
scoreboard players set @s switch.alive 0
gamemode spectator @s
effect clear @s
clear @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join
function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_points
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #feed_fast_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1
effect give @a[tag=!detached,gamemode=!spectator] hunger infinite 255 true

# Summon food
execute if score #feed_fast_seconds switch.data matches 0.. run function {path}/xp_bar
execute if score #feed_fast_seconds switch.data matches 0 as @e[limit=2] as @e[limit=2] as @e[limit=2] run summon marker 0 0 0
execute if score #feed_fast_seconds switch.data matches 0 at @e[limit=8] at @a[tag=!detached,gamemode=!spectator] run function {path}/summon_food
execute if score #feed_fast_seconds switch.data matches 1.. at @a[tag=!detached,gamemode=!spectator] run function {path}/summon_food
execute if score #feed_fast_seconds switch.data matches 0.. as @e[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{switch:{{}}}}}}}}}}] run data modify entity @s Glowing set value 1b

execute if score #feed_fast_seconds switch.data matches ..-1 run kill @e[type=item]
execute if score #feed_fast_seconds switch.data matches ..-1 run scoreboard players set @a[tag=!detached,gamemode=!spectator] switch.temp.previous_food 20
execute if score #feed_fast_seconds switch.data matches ..-1 run scoreboard players reset @a[tag=!detached,gamemode=!spectator] switch.temp.points
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] regeneration infinite 255 true
difficulty hard
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #dont_regenerate switch.data 1
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"feed_fast", maps:["mushroom_plains","friends_pvpbox_ice","friends_pvpbox_hills","friends_pvpbox_end","kart_racer_relai","nature_house"]}}

execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:keep_inventory true

function {translations}/start

scoreboard players set #remaining_time switch.data 50
scoreboard players set #feed_fast_seconds switch.data -10
scoreboard players set #feed_fast_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.previous_food dummy
scoreboard objectives add switch.temp.points dummy {{"text":"Points","color":"red"}}
scoreboard objectives setdisplay sidebar switch.temp.points

scoreboard players set @a[tag=!detached] switch.temp.previous_food 20
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.previous_food
scoreboard objectives remove switch.temp.points
""")

	# /summon_food
	write_function(f"{path}/summon_food", """
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~ loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~ loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~ ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~ ~ ~-6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~-6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~6 ~ ~6 loot switch:feed_fast
execute if predicate switch:chance/0.1 run loot spawn ~-6 ~ ~-6 loot switch:feed_fast
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #feed_fast_ticks switch.data 1

# Pour chaque joueur,
function switch:utils/on_death_run_function {{function:"{path}/death"}}
execute as @a[tag=!detached,gamemode=!spectator] run function {path}/tick_player

# Fin de la partie si il n'y a plus de joueur en vie, ou que le temps est écoulé
execute if score #feed_fast_seconds switch.data matches 1.. if score #remaining_time switch.data matches 1.. unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 0 run function {path}/process_end
""")

	# /tick_player
	write_function(f"{path}/tick_player", """
# Si son niveau de Food est supérieur à son ancien, ajouter la différence
scoreboard players set #foodLevel switch.data 0
execute store result score #foodLevel switch.data run data get entity @s foodLevel
scoreboard players operation #foodLevel switch.data -= @s switch.temp.previous_food
execute if score #foodLevel switch.data matches 1.. run scoreboard players operation @s switch.temp.points += #foodLevel switch.data

# Modifier son ancien niveau de Food
execute store result score @s switch.temp.previous_food run data get entity @s foodLevel

# Advancement
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.points matches 50.. run advancement grant @s only switch:visible/8
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 45 seconds = 100%
# 0 seconds = 0%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 45000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")
