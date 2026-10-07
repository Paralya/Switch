# Imports
from stewbeet import Mem, write_function


def write_trigger_stats() -> None:
	""" Write the reset and stats triggers. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /trigger/reset
	write_function(f"{path}/trigger/reset", f"""
function {ns}:player/trigger/enable
scoreboard players set @s {ns}.trigger.help 0
scoreboard players set @s {ns}.trigger.money 0
scoreboard players set @s {ns}.trigger.game_vote 0
scoreboard players set @s {ns}.trigger.stats 0
scoreboard players set @s {ns}.trigger.changelog 0
scoreboard players set @s {ns}.trigger.detach 0
scoreboard players set @s {ns}.trigger.attach 0
scoreboard players set @s {ns}.trigger.shop 0
scoreboard players set @s {ns}.trigger.tutorial 0
scoreboard players set @s {ns}.trigger.succes 0
scoreboard players set @s {ns}.trigger.rating 0
scoreboard players set @s {ns}.trigger.night_vision 0
scoreboard players set @s {ns}.trigger.music 0
scoreboard players set @s {ns}.trigger.coupdetat 0
""")

	# /trigger/stats/display_loop
	write_function(f"{path}/trigger/stats/display_loop", f"""
# Display
function {ns}:player/translations/trigger_stats_display_loop with storage {ns}:temp sorted_stats[0]

# Continue loop
data remove storage {ns}:temp sorted_stats[0]
execute if data storage {ns}:temp sorted_stats[0] run function {ns}:player/trigger/stats/display_loop
""")

	# /trigger/stats/entry
	write_function(f"{path}/trigger/stats/entry", f"""
data modify storage {ns}:main input set value {{player:"@s"}}
function {ns}:player/trigger/stats/main with storage {ns}:main input
""")

	# /trigger/stats/get_loop
	write_function(f"{path}/trigger/stats/get_loop", f"""
# Prepare compound
$data modify storage {ns}:main temp set value {{name_fr:"$(name_fr)", name_en:"$(name_en)", count:0, wins:0, winrate:0}}
$execute store result storage {ns}:main temp.count int 1 run scoreboard players get $(player) {ns}.stats.played.$(id)
$execute store result storage {ns}:main temp.wins int 1 run scoreboard players get $(player) {ns}.stats.wins.$(id)
execute store result score #winrate {ns}.data run data get storage {ns}:main temp.wins 100
$scoreboard players operation #winrate {ns}.data /= $(player) {ns}.stats.played.$(id)
execute store result storage {ns}:main temp.winrate int 1 run scoreboard players get #winrate {ns}.data
data modify storage {ns}:main stats append from storage {ns}:main temp

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_loop with storage {ns}:main copy[0]
""")

	# /trigger/stats/get_max_loop
	write_function(f"{path}/trigger/stats/get_max_loop", f"""
# Get max
execute store result score #temp {ns}.data run data get storage {ns}:main copy[0].count
execute if score #temp {ns}.data > #max {ns}.data run data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute if score #temp {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #temp {ns}.data

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_max_loop
""")

	# /trigger/stats/main
	write_function(f"{path}/trigger/stats/main", f"""
# Bases
function {ns}:player/translations/trigger_stats_main with storage {ns}:main input

# Prepare a compound list containing the number of games played and the name for each game
data modify storage {ns}:main stats set value []
data modify storage {ns}:main copy set from storage {ns}:main minigames
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_loop with storage {ns}:main copy[0]

# Sort the list by number of games played (descending)
data modify storage {ns}:temp sorted_stats set value []
execute if data storage {ns}:main stats[0] run function {ns}:player/trigger/stats/sort_loop

# Display the list
execute if data storage {ns}:temp sorted_stats[0] run function {ns}:player/trigger/stats/display_loop

# Total victories (all games)
$scoreboard players add $(player) {ns}.stats.wins 0

# Reset trigger
scoreboard players set @s {ns}.trigger.stats 0
data remove storage {ns}:main input
""")

	# /trigger/stats/remove_max
	write_function(f"{path}/trigger/stats/remove_max", f"""
$data remove storage {ns}:main stats[{{name_fr:"$(name_fr)"}}]
""")

	# /trigger/stats/sort_loop
	write_function(f"{path}/trigger/stats/sort_loop", f"""
# Search for the highest value
data modify storage {ns}:main copy set from storage {ns}:main stats
data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute store result score #max {ns}.data run data get storage {ns}:main max.count
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage {ns}:temp sorted_stats append from storage {ns}:main max
function {ns}:player/trigger/stats/remove_max with storage {ns}:main max

# Continue loop
execute if data storage {ns}:main stats[0] run function {ns}:player/trigger/stats/sort_loop
""")

