
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "moutron"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /adv_kill
	write_function(f"{path}/adv_kill", """
scoreboard players add @s switch.temp.kill 1
execute unless score #test_mode switch.data matches 1 if score @s switch.temp.kill matches 3 run advancement grant @s only switch:visible/27
""")

	# /death
	write_function(f"{path}/death", f"""
function {translations}/death
execute if entity @s[gamemode=!spectator] at @s as @p[tag=switch.moutron_killer] run function {path}/adv_kill
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

ride @s dismount
execute if entity @s[gamemode=spectator] at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
gamemode spectator @s
effect clear @s
effect give @s night_vision infinite 255 true
clear @s
""")

	# /joined
	write_function(f"{path}/joined", f"""
gamemode spectator @s
function {path}/death
""")

	# /kill_kart
	write_function(f"{path}/kill_kart", f"""
# Add a temporary tag to the owner of the block that killed the kart
execute as @n[type=marker,tag=switch.moutron_marker,distance=1..3] run function {path}/tag_owner/as_nearest_marker

# Dismount passengers and kill them
execute on passengers run function {path}/death

# Remove the temporary tag
tag @a[tag=switch.moutron_killer] remove switch.moutron_killer

# Kill the sheep
tp @s 0 -10000 0
kill @s
""")

	# /marker_tick
	write_function(f"{path}/marker_tick", """
# Increase score
scoreboard players add @s switch.temp.moutron 1

# Place stained glass depending on color
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 1 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 orange_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 2 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 magenta_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 3 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 light_blue_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 4 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 yellow_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 5 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 lime_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 6 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 pink_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 7 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 gray_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 8 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 light_gray_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 9 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 cyan_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 10 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 purple_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 11 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 blue_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 12 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 brown_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 13 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 green_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 14 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 red_stained_glass replace air
execute if score @s switch.temp.moutron matches 3 if score @s switch.temp.color matches 15 run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 black_stained_glass replace air

# If score reaches life time, kill the entity and remove the block
execute if score @s switch.temp.moutron > #life_time switch.data run fill ~-0.2 ~ ~-0.2 ~0.2 ~ ~0.2 air replace #switch:moutron/glass
execute if score @s switch.temp.moutron > #life_time switch.data run kill @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=!spectator] at @s run function switch:engine/add_win
function switch:translations/common/process_end_solo_winner
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /second
	write_function(f"{path}/second", f"""
# Classic timer
scoreboard players add #moutron_seconds switch.data 1

# Summon sheeps at max speed
execute if score #moutron_seconds switch.data matches -7 run scoreboard players set #next_model switch.data 0
execute if score #moutron_seconds switch.data matches -7 as @a[tag=!detached] at @s run function {path}/summon_kart
execute if score #moutron_seconds switch.data matches ..-1 run scoreboard players operation @e[tag=shopping_kart.kart] shopping_kart.engine = #default_max_engine shopping_kart.data

# Start countdown
execute if score #moutron_seconds switch.data matches -5..0 as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
function {translations}/second

# Increase markers life_time
execute if score #moutron_seconds switch.data matches 0.. run scoreboard players add #life_time switch.data 3

# XP bar
function {path}/xp_bar
""")

	# /start
	write_function(f"{path}/start", f"""
effect give @a[tag=!detached] weakness infinite 255 true
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance infinite 255 true
effect give @a[tag=!detached] night_vision infinite 255 true
function switch:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"moutron", maps:["whity_lab","the_four_elements","arti_ancient_city"]}}
execute if data storage switch:main {{map:"whity_lab"}} run function {path}/spread_players/whity_lab

execute in switch:game run gamerule minecraft:fall_damage false

function {translations}/start

scoreboard objectives add switch.temp.moutron dummy
scoreboard objectives add switch.temp.color dummy
scoreboard objectives add switch.temp.kill dummy

scoreboard players set #moutron_seconds switch.data -16
scoreboard players set #moutron_ticks switch.data -100
scoreboard players set #process_end switch.data 0
scoreboard players set #life_time switch.data 20
""")

	# /stop
	write_function(f"{path}/stop", """
scoreboard objectives remove switch.temp.moutron
scoreboard objectives remove switch.temp.color
scoreboard objectives remove switch.temp.kill
""")

	# /summon_kart (brace-heavy: plain string)
	write_function(f"{path}/summon_kart", """
# Tag the current player to ride the new kart
tag @s add shopping_kart.owner

# Summon the kart depending on model score
scoreboard players add #next_model switch.data 1
execute if score #next_model switch.data matches 1 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:1}
execute if score #next_model switch.data matches 2 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:2}
execute if score #next_model switch.data matches 3 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:3}
execute if score #next_model switch.data matches 4 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:4}
execute if score #next_model switch.data matches 5 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:5}
execute if score #next_model switch.data matches 6 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:6}
execute if score #next_model switch.data matches 7 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:7}
execute if score #next_model switch.data matches 8 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:8}
execute if score #next_model switch.data matches 9 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:9}
execute if score #next_model switch.data matches 10 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:10}
execute if score #next_model switch.data matches 11 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:11}
execute if score #next_model switch.data matches 12 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:12}
execute if score #next_model switch.data matches 13 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:13}
execute if score #next_model switch.data matches 14 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:14}
execute if score #next_model switch.data matches 15 run summon sheep ~ ~1 ~ {Tags:["shopping_kart.new_kart","shopping_kart.forced_acceleration"],Color:15}
execute if score #next_model switch.data matches 15 run scoreboard players set #next_model switch.data 0

# Apply init functions to new kart
scoreboard players reset #model shopping_kart.data
execute as @e[tag=shopping_kart.new_kart] at @s run function shopping_kart:kart/switch_model/init_functions

# Remove the temporary player tag
tag @s remove shopping_kart.owner
""")

	# /summon_marker
	write_function(f"{path}/summon_marker", f"""
# Remove jump strength
attribute @s jump_strength base set 0

# Get owner of the sheep
execute on passengers if entity @s[type=player] run data modify storage switch:temp Owner set from entity @s UUID

# Summon marker with sheep color
execute store result score #color switch.data run data get entity @s Color
execute unless entity @e[type=marker,tag=switch.moutron_marker,distance=..0.5] summon marker run function {path}/summoned_marker
""")

	# /summoned_marker
	write_function(f"{path}/summoned_marker", """
# Add tag & set color
tag @s add switch.moutron_marker
scoreboard players operation @s switch.temp.color = #color switch.data

# Remember owner for kill detection
data modify entity @s data.Owner set from storage switch:temp Owner
""")

	# /tick
	write_function(f"{path}/tick", f"""
## Death system
# At each shopping kart, summon a new marker
execute if score #moutron_seconds switch.data matches 0.. as @e[tag=shopping_kart.kart] at @s positioned ~ ~.5 ~ run function {path}/summon_marker

# For each marker, increase their score, place a block and remove it after "life_time" ticks
execute as @e[type=marker,tag=switch.moutron_marker] at @s run function {path}/marker_tick

# Force riding the kart
execute as @a[tag=!detached,gamemode=adventure] at @s run ride @s mount @n[tag=shopping_kart.kart,predicate=!switch:has_player_passenger]

# If a kart is below 300 for engine, kill it and the player
execute if score #moutron_seconds switch.data matches 0.. as @e[tag=shopping_kart.kart,scores={{shopping_kart.engine=..300}}] at @s run function {path}/kill_kart

# Trails duration
scoreboard players operation #temp switch.data = #life_time switch.data
scoreboard players operation #temp switch.data /= #20 switch.data
function {translations}/tick
execute unless score #test_mode switch.data matches 1 if score #temp switch.data matches 15.. run advancement grant @a[tag=!detached,gamemode=adventure] only switch:visible/38

# Unknown death
function switch:utils/on_death_run_function {{function:"{path}/death"}}

## End game
scoreboard players set #remaining_players switch.data 0
execute store result score #remaining_players switch.data if entity @a[tag=!detached,gamemode=!spectator]
execute if score #moutron_seconds switch.data matches 1.. if score #remaining_players switch.data matches ..1 run function {path}/process_end
execute if score #moutron_seconds switch.data matches 600.. run function {path}/process_end
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 1000 points = 100%
scoreboard players operation #points switch.data = #moutron_ticks switch.data
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #moutron_ticks switch.data
function switch:modes/_common/xp_bar/levels
""")

	# /spread_players/_ensure_spread_whity_lab
	write_function(f"{path}/spread_players/_ensure_spread_whity_lab", """
execute as @a[tag=!detached] at @s if entity @s[y=0,dy=99] run spreadplayers 91051 91051 2 25 under 106 false @s
execute as @a[tag=!detached] at @s if block ~ ~-1 ~ barrier run spreadplayers 91051 91051 2 25 under 106 false @s
""")

	# /spread_players/whity_lab
	write_function(f"{path}/spread_players/whity_lab",
		"\nspreadplayers 91051 91051 2 25 under 106 false @a[tag=!detached]\n\n## Assurance commands\n"
		+ f"function {path}/spread_players/_ensure_spread_whity_lab\n" * 12)

	# /tag_owner/as_nearest_marker
	write_function(f"{path}/tag_owner/as_nearest_marker", f"""
# Retrieve owner UUID
data modify storage switch:temp Owner set from entity @s data.Owner

# For each player, we compare if they are the owner
execute as @a run function {path}/tag_owner/as_player
""")

	# /tag_owner/as_player
	write_function(f"{path}/tag_owner/as_player", """
# Copy owner UUID
data modify storage switch:temp copy set from storage switch:temp Owner

# If copy replaced, it's not the player
scoreboard players set #success switch.data 1
execute store success score #success switch.data run data modify storage switch:temp copy set from entity @s UUID

# Add temporary tag if it's player (copy not replaced = same data)
execute if score #success switch.data matches 0 run tag @s add switch.moutron_killer
""")

