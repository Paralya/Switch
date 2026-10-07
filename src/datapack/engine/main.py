
# Imports
from stewbeet import Mem, write_function

from .launch_game import write_launch_game
from .log_message import write_log_message
from .pop_ups import write_pop_ups
from .signals import write_signals
from .translations import write_translations
from .voting_time import write_voting_time


def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"
	write_translations()
	write_pop_ups()

	# /add_money
	write_function(f"{path}/add_money", f"""
# Money to add
scoreboard players set #add {ns}.money 10
execute if score #add_override {ns}.money matches 1.. run scoreboard players operation #add {ns}.money = #add_override {ns}.money
execute if score #add_override {ns}.money matches 1.. run scoreboard players reset #add_override {ns}.money

# Money bonus multiplier
scoreboard players operation #bonus {ns}.money = #add {ns}.money
scoreboard players operation #bonus {ns}.money *= @s {ns}.money_bonus
scoreboard players operation #bonus {ns}.money /= #100 {ns}.data
scoreboard players operation #add {ns}.money += #bonus {ns}.money

# Apply money
scoreboard players operation @s {ns}.money += #add {ns}.money

# Messages
execute store result score #random {ns}.data run random value 0..5
function {ns}:engine/translations/add_money

playsound entity.player.levelup ambient @s ^ ^ ^ .2

execute if score @s {ns}.money matches 400.. run advancement grant @s only {ns}:visible/3
""")

	# /add_time
	write_function(f"{path}/add_time", f"""
# Add time & playsound
scoreboard players add #voting_timer {ns}.data 300
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

# Tellraw & titles
function {ns}:engine/translations/add_time
""")

	# /add_win
	write_function(f"{path}/add_win", f"""
execute if score #test_mode {ns}.data matches 1.. run return 1

scoreboard players add @s {ns}.win_streak 6
execute if score @s {ns}.win_streak matches 5.. unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/30
scoreboard players add @s {ns}.stats.wins 1
execute unless score #test_mode {ns}.data matches 1 run advancement grant @s only {ns}:visible/4
function {ns}:engine/add_win_macro with storage {ns}:main
function {ns}:engine/add_money
""")

	# /add_win_macro
	write_function(f"{path}/add_win_macro", f"""
$scoreboard players add @s {ns}.stats.wins.$(current_game) 1
""")

	# /check_coupdetat
	write_function(f"{path}/check_coupdetat", f"""
# Check if there is a coup d'état in progress, if so, check if the vote is successful (>= 50% of players)
execute store result score #coupdetat_votes {ns}.data if entity @a[scores={{{ns}.trigger.coupdetat_vote=-1}},tag=!detached]
scoreboard players operation #percentage {ns}.data = #coupdetat_votes {ns}.data
scoreboard players operation #percentage {ns}.data *= #100 {ns}.data
scoreboard players operation #percentage {ns}.data /= #nb_attached {ns}.data

# If the number of votes is < 50% of the players, the coup d'état is unsuccessful
execute if score #percentage {ns}.data matches ..49 run scoreboard players set #coupdetat {ns}.data 0
execute if score #percentage {ns}.data matches ..49 as @a[tag={ns}.coupdetat] run function {ns}:engine/translations/check_coupdetat
execute if score #percentage {ns}.data matches ..49 run tag @a[tag={ns}.coupdetat] remove {ns}.coupdetat

# Else, everything's fine, the coup d'état is successful, don't need to do anything since `{ns}:engine/start` will handle it
""")

	# /disable
	write_function(f"{path}/disable", f"""
scoreboard players set #engine_state {ns}.data 3
scoreboard players set #disable {ns}.data 1
execute in {ns}:game run function {ns}:engine/stop

time set 6000

scoreboard players set #engine_state {ns}.data -1
schedule clear {ns}:engine/voting_time/tick
schedule clear {ns}:engine/launch_game/launch
""")

	# /force_start_macro
	write_function(f"{path}/force_start_macro", f"""
# Stop everything
function {ns}:engine/disable

# Set the current game (and its group, used for voting weights and as slot 1 of the next vote)
$data modify storage {ns}:main current_game set value "$(id)"
$data modify storage {ns}:main current_game_name set from storage {ns}:main minigames[{{id:"$(id)"}}].name_fr
$data modify storage {ns}:main current_group set from storage {ns}:main minigames[{{id:"$(id)"}}].group
$execute store result score #current_game_index {ns}.data run data get storage {ns}:main minigames[{{id:"$(id)"}}].index
function {ns}:engine/group_index with storage {ns}:main
tag @s remove detached

# Tellraw message (unless removed)
execute unless score #no_force_start_msg {ns}.data matches 1 run function {ns}:engine/translations/force_start_macro
scoreboard players reset #no_force_start_msg {ns}.data

# Start the game with the right state
function {ns}:engine/start_state
scoreboard players remove @a[tag=!detached] {ns}.win_streak 5
scoreboard players set @a[tag=!detached,scores={{{ns}.win_streak=..-6}}] {ns}.win_streak -5
""")

	# /group_index (store the group index of the current group, used as slot 1 of the next vote)
	write_function(f"{path}/group_index", f"""
$execute store result score #game_1 {ns}.data run data get storage {ns}:main groups[{{id:"$(current_group)"}}].index
scoreboard players operation #group_index {ns}.data = #game_1 {ns}.data
""")

	# /start_state (shared: enter the playing state, reset players/entities, fire the start signal)
	write_function(f"{path}/start_state", f"""
# Start the game with the right state
scoreboard players set #engine_state {ns}.data 3
scoreboard players reset #set_spec {ns}.data
scoreboard players reset #do_spreadplayers {ns}.data
scoreboard players reset #dont_regenerate {ns}.data
function {ns}:utils/reset_players

# End the cinematics of the players entering the game, then wipe the entities they leave behind.
# The mass kill spares global.ignore.kill so it never strips a lobby player of the entity they are
# spectating: that would leave them stuck in spectator with the counter still claiming it is alive.
execute as @a[tag=!detached] run function #cinemalya:v1/stop {{with:{{restore:false}}}}
function {ns}:utils/safe_kill_macro {{selector:"@e[type=!player,tag=!detached,tag=!global.ignore.kill]"}}
function {ns}:engine/signals/start

# Disable the practice mode of the players joining the game (force start / coup d'état attach without the attach trigger)
execute as @a[tag=!detached,tag={ns}.practice] run function {ns}:player/practice/disable

# Close the layout editor of any player still editing (no save: the save item is the only way to save)
execute as @a[tag=!detached,tag={ns}.layout_editor] run function {ns}:player/layout/editor/force_close

execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @a[tag=!detached] at @s run playsound ui.toast.in ambient @s
""")

	write_launch_game()

	write_log_message()

	# /restart
	write_function(f"{path}/restart", f"""
# For each player, update their stats storage, then sort player stats arrays
execute as @a run function {ns}:player/update_stats_storage/main
function {ns}:stats/async/sort_player_stats

# Stop the engine and launch stop signal
execute in {ns}:game run function {ns}:engine/stop

# Check if enough players
execute store result score #nb_attached {ns}.data if entity @a[tag=!detached]
function {ns}:engine/translations/restart

# Start the engine and launch start signal
execute in {ns}:game run function {ns}:engine/start
""")

	write_signals()

	# /start
	write_function(f"{path}/start", f"""
# Get the number of players currently attached to the switch engine
execute store result score #nb_attached {ns}.data if entity @a[tag=!detached]

# Check if there is a coup d'état in progress, if it's valid, stop the vote by launching the game mode
execute if score #coupdetat {ns}.data matches 1 run function {ns}:engine/check_coupdetat
execute if score #coupdetat {ns}.data matches 1 as @n[tag={ns}.coupdetat] in {ns}:game run return run function {ns}:modes/_coupdetat/_force_start

# Check if there are enough players to start the game
execute if score #nb_attached {ns}.data >= #min_required {ns}.data run function {ns}:engine/voting_time/main

# Else,
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run gamerule minecraft:send_command_feedback true
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data run gamemode spectator @a[tag=!detached]
execute unless score #nb_attached {ns}.data >= #min_required {ns}.data in minecraft:overworld as @a[tag=!detached] unless entity @s[x=0,y=69,z=0,distance=..200] run tp @s 0 69 0
""")

	# /stop
	write_function(f"{path}/stop", f"""
execute unless score #engine_state {ns}.data matches 3 unless score #disable {ns}.data matches 1 in minecraft:overworld run tp @a[tag=!detached] 0 69 0
scoreboard players set #engine_state {ns}.data 0
scoreboard players set #cut_clean {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard players set #set_spec {ns}.data 1
function {ns}:utils/reset_players
worldborder set 59999968
worldborder center 0 0
scoreboard objectives setdisplay list {ns}.stats.wins
execute unless score #dont_regenerate {ns}.data matches 1 unless score #already_regenerated {ns}.data matches 1 run function {ns}:maps/regenerate_map
scoreboard players reset #dont_regenerate {ns}.data

scoreboard objectives setdisplay sidebar
scoreboard players reset #disable {ns}.data
scoreboard players reset * {ns}.alive
execute in minecraft:overworld run function {ns}:utils/reset_gamerules
execute in {ns}:game run function {ns}:utils/reset_gamerules

function {ns}:engine/signals/stop
execute as @a[tag=!detached] run function #cinemalya:v1/stop {{with:{{restore:false}}}}
function {ns}:utils/safe_kill_macro {{selector:"@e[type=!player,tag=!detached,tag=!global.ignore.kill]"}}

# Update the stats of the minigame
execute if score #test_mode {ns}.data matches 1.. run return 1
data modify storage {ns}:main input set value {{id:""}}
data modify storage {ns}:main input.id set from storage {ns}:main current_game
function {ns}:stats/sort_minigames_stats/update_minigame with storage {ns}:main input
""")

	write_voting_time()

	# /who_voted (admin command: list which players voted for each game)
	write_function(f"{ns}:engine/who_voted", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 1 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-1}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 2 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-2}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 3 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-3}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 4 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-4}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 5 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-5}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 6 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-6}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 7 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-7}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 8 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-8}}]"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 1 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-1}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 2 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-2}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 3 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-3}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 4 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-4}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 5 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-5}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 6 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-6}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 7 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-7}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 8 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-8}}]"}}]
""")

