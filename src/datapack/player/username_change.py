# Imports
from stewbeet import Mem, write_function


def write_username_change() -> None:
	""" Write the functions that move a player's data over when their username changes. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"

	# /username_change/check
	write_function(f"{path}/username_change/check", f"""
# Get username and UUID
setblock 0 15 0 air
setblock 0 15 0 yellow_shulker_box
loot insert 0 15 0 loot {ns}:get_username
data modify storage {ns}:temp input set value {{username:"",UUID:[]}}
data modify storage {ns}:temp input.username set from block 0 15 0 Items[0].components."minecraft:profile".name
data modify storage {ns}:temp input.UUID set from entity @s UUID
setblock 0 15 0 air

# Macro with UUID and username
function {ns}:player/username_change/with_macro with storage {ns}:temp input
""")

	# /username_change/compare_usernames
	write_function(f"{path}/username_change/compare_usernames", f"""
$data modify storage {ns}:temp old_username set from storage {ns}:main UUIDs[{{UUID:"$(UUID)"}}].username
$data modify storage {ns}:temp copy set value "$(username)"

# Lowercase both usernames for case-insensitive comparison
data modify storage bs:in string.lower.str set from storage {ns}:temp old_username
function #bs.string:lower
data modify storage {ns}:temp old_username_lower set from storage bs:out string.lower

data modify storage bs:in string.lower.str set from storage {ns}:temp copy
function #bs.string:lower
data modify storage {ns}:temp copy_lower set from storage bs:out string.lower

# Check if there is a difference
scoreboard players set #diff {ns}.data 1
scoreboard players set #lower_diff {ns}.data 1
execute store success score #diff {ns}.data run data modify storage {ns}:temp copy set from storage {ns}:temp old_username
execute store success score #lower_diff {ns}.data run data modify storage {ns}:temp copy_lower set from storage {ns}:temp old_username_lower

# If there is no difference in lowercase but there is a difference in default case, kick the player since it would break the = operator
$execute if score #lower_diff {ns}.data matches 0 if score #diff {ns}.data matches 1 run function {ns}:player/username_change/kick_player {{username:"$(username)"}}

# If there is a difference, we have to update everything
data modify storage {ns}:temp input.old_username set from storage {ns}:temp old_username
execute if score #diff {ns}.data matches 1 run function {ns}:player/username_change/update_everything with storage {ns}:temp input
""")

	# /username_change/kick_player
	write_function(f"{path}/username_change/kick_player", """
$kick $(username) "Ratio"
""")

	# /username_change/continue_loop (pop copy[0] then merge the shared input onto the next entry;
	# shared continue-loop prep of update_advancements_loop / update_ratings_loop / update_stats_loop)
	write_function(f"{path}/username_change/continue_loop", f"""
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
""")

	# /username_change/update_advancements_loop
	write_function(f"{path}/username_change/update_advancements_loop", f"""
# Update username
$data remove storage {ns}:advancements all[{{name:"$(name)"}}].players[{{name:"$(username)"}}]
$execute if data storage {ns}:advancements all[{{name:"$(name)"}}].players[{{name:"$(old_username)"}}] run data modify storage {ns}:advancements all[{{name:"$(name)"}}].players[{{name:"$(old_username)"}}].name set value "$(username)"

# Continue loop
function {ns}:player/username_change/continue_loop
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_advancements_loop with storage {ns}:temp copy[0]
""")

	# /username_change/update_everything
	write_function(f"{path}/username_change/update_everything", f"""
# Basic objectives
$scoreboard players operation $(username) {ns}.id = $(old_username) {ns}.id
$scoreboard players operation $(username) {ns}.tutorial = $(old_username) {ns}.tutorial
$scoreboard players operation $(username) {ns}.money = $(old_username) {ns}.money
$scoreboard players operation $(username) {ns}.money_bonus = $(old_username) {ns}.money_bonus
$scoreboard players operation $(username) {ns}.last_total_games = $(old_username) {ns}.last_total_games
$scoreboard players operation $(username) {ns}.reconnect = $(old_username) {ns}.reconnect
$scoreboard players operation $(username) {ns}.advancements = $(old_username) {ns}.advancements
$scoreboard players operation $(username) {ns}.play_time = $(old_username) {ns}.play_time
$scoreboard players operation $(username) {ns}.last_death = $(old_username) {ns}.last_death
$scoreboard players operation $(username) {ns}.stats.kills = $(old_username) {ns}.stats.kills
$scoreboard players operation $(username) {ns}.stats.deaths = $(old_username) {ns}.stats.deaths
$scoreboard players operation $(username) {ns}.stats.played = $(old_username) {ns}.stats.played
$scoreboard players operation $(username) {ns}.stats.wins = $(old_username) {ns}.stats.wins
$scoreboard players operation $(username) {ns}.stats.win_streak = $(old_username) {ns}.stats.win_streak

# Stats {{player:{{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}},modes:{{}}}}
data modify storage {ns}:temp copy set from storage {ns}:main minigames
data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_stats_loop with storage {ns}:temp copy[0]
$data modify storage {ns}:stats all.player.total_played[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_wins[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_kills[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_deaths[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_money[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.played_win_ratio[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.advancement_count[{{name:"$(old_username)"}}].name set value "$(username)"

# Advancements
data modify storage {ns}:temp copy set from storage {ns}:advancements all
data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_advancements_loop with storage {ns}:temp copy[0]

# Ratings
data modify storage {ns}:temp copy set from storage {ns}:ratings all
data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_ratings_loop with storage {ns}:temp copy[0]


# Shops
$function {ns}:player/username_change/update_shops {{username:"$(username)", old_username:"$(old_username)"}}

# Jump best times
$function {ns}:player/jump_timer/username_change {{username:"$(username)", old_username:"$(old_username)"}}

# Inventory layout
$function {ns}:player/layout/username_change {{username:"$(username)", old_username:"$(old_username)"}}
""")

	# /username_change/update_ratings_loop
	write_function(f"{path}/username_change/update_ratings_loop", f"""
# Update username
$data remove storage {ns}:ratings all[{{id:"$(id)"}}].players[{{name:"$(username)"}}]
$execute if data storage {ns}:ratings all[{{id:"$(id)"}}].players[{{name:"$(old_username)"}}] run data modify storage {ns}:ratings all[{{id:"$(id)"}}].players[{{name:"$(old_username)"}}].name set value "$(username)"

# Continue loop
function {ns}:player/username_change/continue_loop
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_ratings_loop with storage {ns}:temp copy[0]
""")

	# /username_change/update_stats_loop
	write_function(f"{path}/username_change/update_stats_loop", f"""
# Update username
$data remove storage {ns}:stats all.modes.$(id).played[{{name:"$(username)"}}]
$data remove storage {ns}:stats all.modes.$(id).wins[{{name:"$(username)"}}]
$execute if data storage {ns}:stats all.modes.$(id).played[{{name:"$(old_username)"}}] run data modify storage {ns}:stats all.modes.$(id).played[{{name:"$(old_username)"}}].name set value "$(username)"
$execute if data storage {ns}:stats all.modes.$(id).wins[{{name:"$(old_username)"}}] run data modify storage {ns}:stats all.modes.$(id).wins[{{name:"$(old_username)"}}].name set value "$(username)"
$scoreboard players operation $(username) {ns}.stats.played.$(id) = $(old_username) {ns}.stats.played.$(id)
$scoreboard players operation $(username) {ns}.stats.wins.$(id) = $(old_username) {ns}.stats.wins.$(id)

# Continue loop
function {ns}:player/username_change/continue_loop
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_stats_loop with storage {ns}:temp copy[0]
""")

	# /username_change/with_macro
	write_function(f"{path}/username_change/with_macro", f"""
# Compare usernames
$execute if data storage {ns}:main UUIDs[{{UUID:"$(UUID)"}}] run function {ns}:player/username_change/compare_usernames {{UUID:"$(UUID)",username:"$(username)"}}

# Add/update player to list in every case
$data modify storage {ns}:main UUIDs[{{UUID:"$(UUID)"}}].username set value "$(username)"
""")

