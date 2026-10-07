# Imports
from stewbeet import Mem, write_function


def write_stats_storage() -> None:
	""" Write the functions that copy every player's stats into storage. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /update_stats_storage/every_player
	write_function(f"{path}/update_stats_storage/every_player", f"""
# Get all players and loop
data modify storage {ns}:temp players set from storage {ns}:main UUIDs
function {ns}:player/update_stats_storage/every_player_loop with storage {ns}:temp players[0]
""")

	# /update_stats_storage/every_player_loop
	write_function(f"{path}/update_stats_storage/every_player_loop", f"""
$function {ns}:player/update_stats_storage/of_player {{player:"$(username)"}}

# Continue loop
data remove storage {ns}:temp players[0]
function {ns}:player/update_stats_storage/every_player_loop with storage {ns}:temp players[0]
""")

	# /update_stats_storage/global_stats
	write_function(f"{path}/update_stats_storage/global_stats", f"""
## storage {ns}:stats all run data modify storage {ns}:stats all set value {{
# player:{{
# 	total_played:[{{name:"Stoupy51",value:0}}],
# 	total_wins:[{{name:"Stoupy51",value:0}}],
# 	total_kills:[{{name:"Stoupy51",value:0}}],
# 	total_deaths:[{{name:"Stoupy51",value:0}}],
# 	total_money:[{{name:"Stoupy51",value:0}}],
# 	played_win_ratio:[{{name:"Stoupy51",value:0}}],
# 	advancement_count:[{{name:"Stoupy51",value:0}}],
# }},
# modes:{{
#	pitch_creep:{{total_games:0,played:[],wins:[],played_win_ratio:[]}},
# }}}}

# Initialize to zero if not already set
$scoreboard players add $(player) {ns}.stats.played 0
$scoreboard players add $(player) {ns}.stats.wins 0
$scoreboard players add $(player) {ns}.stats.winrate 0
$scoreboard players add $(player) {ns}.stats.kills 0
$scoreboard players add $(player) {ns}.stats.deaths 0
$scoreboard players add $(player) {ns}.money 0
$scoreboard players add $(player) {ns}.advancements 0

# Update global total stats
$execute unless data storage {ns}:stats all.player.total_played[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_played append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_played[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.played
$execute unless data storage {ns}:stats all.player.total_wins[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_wins append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_wins[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.wins
$execute unless data storage {ns}:stats all.player.total_kills[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_kills append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_kills[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.kills
$execute unless data storage {ns}:stats all.player.total_deaths[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_deaths append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_deaths[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.deaths
$execute unless data storage {ns}:stats all.player.total_money[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_money append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_money[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.money

## Winrate
# Compute winrate and store it globally only if the player has at least 25 wins
$execute unless data storage {ns}:stats all.player.played_win_ratio[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.played_win_ratio append value {{name:"$(player)",value:0}}
$scoreboard players operation #temp {ns}.data = $(player) {ns}.stats.wins
scoreboard players operation #temp {ns}.data *= #100000 {ns}.data
$scoreboard players operation #temp {ns}.data /= $(player) {ns}.stats.played
$execute if score $(player) {ns}.stats.wins matches 25.. store result storage {ns}:stats all.player.played_win_ratio[{{name:"$(player)"}}].value float 0.001 run scoreboard players get #temp {ns}.data
$execute unless score $(player) {ns}.stats.wins matches 25.. run data modify storage {ns}:stats all.player.played_win_ratio[{{name:"$(player)"}}].value set value 0.0f

# Store winrate in the player's stats anyway (no digits, e.g. 35.15% -> 35%)
#$tellraw @a [{{"text":"$(player)","color":"gold"}},{{"text":" has a winrate of ","color":"gray"}},{{"score":{{"name":"#temp","objective":"{ns}.data"}},"color":"gold"}},{{"text":"%","color":"gray"}}]
$scoreboard players operation $(player) {ns}.stats.winrate = #temp {ns}.data
$scoreboard players operation $(player) {ns}.stats.winrate /= #1000 {ns}.data

# Update advancements count
$execute unless data storage {ns}:stats all.player.advancement_count[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.advancement_count append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.advancement_count[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.advancements
""")

	# /update_stats_storage/main
	write_function(f"{path}/update_stats_storage/main", f"""
# Get username
setblock 0 14 0 air
setblock 0 14 0 yellow_shulker_box
loot insert 0 14 0 loot {ns}:get_username
data modify storage {ns}:main input set value {{player:""}}
data modify storage {ns}:main input.player set from block 0 14 0 Items[0].components."minecraft:profile".name
setblock 0 14 0 air

# Insert global stats
function {ns}:player/update_stats_storage/global_stats with storage {ns}:main input

# Insert stats per game
data modify storage {ns}:main copy set from storage {ns}:main minigames
execute store result score #total_games_not_won {ns}.data if data storage {ns}:main minigames[]
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/update_stats_storage/stats_per_minigame with storage {ns}:main copy[0]

# Advancement "Multigamer"
execute unless score #test_mode {ns}.data matches 1 if score #total_games_not_won {ns}.data matches 0 run advancement grant @s only {ns}:visible/60
""")

	# /update_stats_storage/of_player
	write_function(f"{path}/update_stats_storage/of_player", f"""
# Get username
$data modify storage {ns}:main input set value {{player:"$(player)"}}

# Insert global stats
function {ns}:player/update_stats_storage/global_stats with storage {ns}:main input

# Insert stats per game
data modify storage {ns}:main copy set from storage {ns}:main minigames
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/update_stats_storage/stats_per_minigame with storage {ns}:main copy[0]
""")

	# /update_stats_storage/stats_per_minigame
	write_function(f"{path}/update_stats_storage/stats_per_minigame", f"""
## storage {ns}:stats all run data modify storage {ns}:stats all set value {{
# player:{{
# 	total_played:[{{name:"Stoupy51",value:0}}],
# 	total_wins:[{{name:"Stoupy51",value:0}}],
# 	total_kills:[{{name:"Stoupy51",value:0}}],
# 	total_deaths:[{{name:"Stoupy51",value:0}}],
# 	total_money:[{{name:"Stoupy51",value:0}}],
# 	played_win_ratio:[{{name:"Stoupy51",value:0}}],
# 	advancement_count:[{{name:"Stoupy51",value:0}}],
# }},
# modes:{{
#	pitch_creep:{{total_games:0,played:[],wins:[],played_win_ratio:[]}},
# }}}}

# Set number of games played and wins
$execute unless data storage {ns}:stats all.modes.$(id).played[{{name:"$(player)"}}] run data modify storage {ns}:stats all.modes.$(id).played append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.modes.$(id).played[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.played.$(id)
$execute unless data storage {ns}:stats all.modes.$(id).wins[{{name:"$(player)"}}] run data modify storage {ns}:stats all.modes.$(id).wins append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.modes.$(id).wins[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.wins.$(id)
$execute unless data storage {ns}:stats all.modes.$(id).played_win_ratio[{{name:"$(player)"}}] run data modify storage {ns}:stats all.modes.$(id).played_win_ratio append value {{name:"$(player)",value:0}}
$scoreboard players operation #temp {ns}.data = $(player) {ns}.stats.wins.$(id)
scoreboard players operation #temp {ns}.data *= #100000 {ns}.data
$scoreboard players operation #temp {ns}.data /= $(player) {ns}.stats.played.$(id)
$execute unless score $(player) {ns}.stats.played.$(id) matches 5.. run scoreboard players set #temp {ns}.data 0
$execute store result storage {ns}:stats all.modes.$(id).played_win_ratio[{{name:"$(player)"}}].value float 0.001 run scoreboard players get #temp {ns}.data

# Advancement
$execute if score $(player) {ns}.stats.wins.$(id) matches 1.. run scoreboard players remove #total_games_not_won {ns}.data 1

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/update_stats_storage/stats_per_minigame with storage {ns}:main copy[0]
""")

