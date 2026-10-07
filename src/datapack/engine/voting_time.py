# Imports
from stewbeet import Mem, write_function

from .vote_options import write_vote_options


def write_voting_time() -> None:
	""" Write the game vote, its weights and its messages. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"

	# /voting_time/add_option
	write_function(f"{path}/voting_time/add_option", f"""
# Add the current index to the options
execute store result storage {ns}:temp index int 1 run scoreboard players get #fill_index {ns}.data
data modify storage bs:in random.weighted_choice.options append from storage {ns}:temp index

# Increment the index
scoreboard players add #fill_index {ns}.data 1

# Continue loop until the list is empty
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_option
""")

	# /voting_time/add_weights
	write_function(f"{path}/voting_time/add_weights", f"""
# Add time_since_last_play to the weights
data modify storage {ns}:temp weight set value 1
$data modify storage {ns}:temp weight set from storage {ns}:main history.time_since_last_play.$(id)
data modify storage bs:in random.weighted_choice.weights append from storage {ns}:temp weight

# Continue loop until the list is empty
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_weights with storage {ns}:temp copy[0]
""")

	write_vote_options()

	# /voting_time/main
	# #game_1 uses `add` (preserve any pre-set value), #game_2..8 are reset to 0
	game_reset: str = f"scoreboard players add #game_1 {ns}.data 0\n" + "\n".join(
		f"scoreboard players set #game_{i} {ns}.data 0" for i in range(2, 9)
	)
	vote_game_reset: str = "\n".join(f"scoreboard players set #vote_game_{i} {ns}.data 0" for i in range(1, 9))
	write_function(f"{path}/voting_time/main", f"""
gamerule minecraft:send_command_feedback false
scoreboard players set #engine_state {ns}.data 2
scoreboard players set #voting_timer {ns}.data 399
schedule clear {ns}:engine/launch_game/launch

# Round 1: vote between groups of games (8 slots: 7 groups + random)
scoreboard players set #vote_round {ns}.data 1
scoreboard players set #vote_slots {ns}.data 8

execute store result score #modulo_rand {ns}.data run data get storage {ns}:main groups

# Setup the random choice options
scoreboard players set #fill_index {ns}.data 1
data modify storage bs:in random.weighted_choice.options set value []
data modify storage {ns}:temp copy set from storage {ns}:main groups
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_option

# Setup the weights list
data modify storage bs:in random.weighted_choice.weights set value []
data modify storage {ns}:temp copy set from storage {ns}:main groups
execute if data storage {ns}:temp copy[0] run function {ns}:engine/voting_time/add_weights with storage {ns}:temp copy[0]


# Set the vote counts to 0
{game_reset}
scoreboard players set #index {ns}.data 1

scoreboard players set #player_count {ns}.data 0
execute store result score #player_count {ns}.data if entity @a[tag=!detached]
scoreboard players set #max_tries {ns}.data 1000
function {ns}:engine/voting_time/select_random_games

data modify storage {ns}:main selections set value []

scoreboard players set #index {ns}.data 1
function {ns}:engine/voting_time/get/information

{vote_game_reset}
scoreboard players set @a {ns}.trigger.game_vote 0
execute as @a[tag=!detached] run function {ns}:engine/voting_time/message

schedule function {ns}:engine/voting_time/tick 1t
""")

	# /voting_time/group_vote (second vote: decide between the games of the winning group)
	write_function(f"{path}/voting_time/group_vote", f"""
# The games of the group become the vote selections
data modify storage {ns}:main selections set from storage {ns}:main group_pool_filtered
scoreboard players set #vote_round {ns}.data 2
scoreboard players operation #vote_slots {ns}.data = #pool_size {ns}.data
scoreboard players set #voting_timer {ns}.data 200

# Reset the votes and show the new vote to everyone
schedule clear {ns}:engine/voting_time/schedule_message
{vote_game_reset}
scoreboard players set @a {ns}.trigger.game_vote 0
execute as @a[tag=!detached] at @s run playsound block.note_block.pling ambient @s
execute as @a[tag=!detached] run function {ns}:engine/voting_time/message

schedule function {ns}:engine/voting_time/tick 1t
""")

	# /voting_time/message
	write_function(f"{path}/voting_time/message", rf"""
data modify storage {ns}:main msg_votes set value [" vote", " vote", " vote", " vote", " vote", " vote", " vote", " vote"]
execute if score #vote_game_1 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[0] set value " votes"
execute if score #vote_game_2 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[1] set value " votes"
execute if score #vote_game_3 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[2] set value " votes"
execute if score #vote_game_4 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[3] set value " votes"
execute if score #vote_game_5 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[4] set value " votes"
execute if score #vote_game_6 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[5] set value " votes"
execute if score #vote_game_7 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[6] set value " votes"
execute if score #vote_game_8 {ns}.data matches 2.. run data modify storage {ns}:main msg_votes[7] set value " votes"

# Edit the last vote to make it hidden (round 1 only, round 2 has no random slot)
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].lore_fr set value ["",{{"text":"[Aléatoire]\n","color":"yellow"}},{{"text":"Jeu totalement aléatoire qui n'est pas\n"}},{{"text":"présent parmi les 7 au dessus"}}]
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].name_fr set value "Aléatoire"
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].display_name_fr set value {{"text":"Aléatoire","color":"yellow"}}
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].lore_en set value ["",{{"text":"[Random]\n","color":"yellow"}},{{"text":"Game completely random that is not\n"}},{{"text":"present among the 7 above"}}]
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].name_en set value "Random"
execute if score #vote_round {ns}.data matches 1 run data modify storage {ns}:main selections[7].display_name_en set value {{"text":"Random","color":"yellow"}}

# Tellraw
function {ns}:engine/translations/voting_time_message
scoreboard players reset #for_tutorial {ns}.data
""")

	# /voting_time/player_join
	write_function(f"{path}/voting_time/player_join", f"""
clear @s[tag=!convention.debug]
effect clear @s
gamemode spectator @s[tag=!convention.debug]
tp @s[tag=!convention.debug] 0 169 0
tp @s[tag=!convention.debug] @r[tag=!detached]

function {ns}:engine/voting_time/message
""")

	# /voting_time/schedule_message
	write_function(f"{path}/voting_time/schedule_message", f"""
execute as @a[tag=!detached] run function {ns}:engine/voting_time/message
""")

	# /voting_time/select_random_games
	write_function(f"{path}/voting_time/select_random_games", f"""
# Randomly select a minigame based on weights
execute in minecraft:overworld run function #bs.random:weighted_choice
execute store result score #random {ns}.data run data get storage bs:out random.weighted_choice

scoreboard players set #wrong {ns}.data 0
function {ns}:engine/voting_time/get/min_players
function {ns}:engine/voting_time/get/max_players
execute if score #index {ns}.data matches 1 if score #player_count {ns}.data < #min_players {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 1 if score #player_count {ns}.data > #max_players {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 2.. if score #random {ns}.data = #game_1 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 3.. if score #random {ns}.data = #game_2 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 4.. if score #random {ns}.data = #game_3 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 5.. if score #random {ns}.data = #game_4 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 6.. if score #random {ns}.data = #game_5 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 7.. if score #random {ns}.data = #game_6 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #index {ns}.data matches 8.. if score #random {ns}.data = #game_7 {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #wrong {ns}.data matches 0 if score #player_count {ns}.data < #min_players {ns}.data run scoreboard players add #wrong {ns}.data 1
execute if score #wrong {ns}.data matches 0 if score #player_count {ns}.data > #max_players {ns}.data run scoreboard players add #wrong {ns}.data 1

execute if score #wrong {ns}.data matches 1 if score #index {ns}.data matches 1 run scoreboard players operation #game_1 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 2 run scoreboard players operation #game_2 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 3 run scoreboard players operation #game_3 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 4 run scoreboard players operation #game_4 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 5 run scoreboard players operation #game_5 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 6 run scoreboard players operation #game_6 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 7 run scoreboard players operation #game_7 {ns}.data = #random {ns}.data
execute if score #wrong {ns}.data matches 0 if score #index {ns}.data matches 8 run scoreboard players operation #game_8 {ns}.data = #random {ns}.data
execute if score #index {ns}.data matches 2.. if score #wrong {ns}.data matches 0 run scoreboard players add #index {ns}.data 1
execute if score #index {ns}.data matches 1 run scoreboard players add #index {ns}.data 1

scoreboard players remove #max_tries {ns}.data 1
execute if score #max_tries {ns}.data matches 1.. if score #index {ns}.data matches ..8 run function {ns}:engine/voting_time/select_random_games
""")

	# /voting_time/speed_up
	write_function(f"{path}/voting_time/speed_up", f"""
execute as @a[tag=!detached] at @s run playsound entity.villager.celebrate ambient @s
function {ns}:engine/translations/voting_time_speed_up
scoreboard players set #voting_timer {ns}.data 99
""")

	# /voting_time/tick
	write_function(f"{path}/voting_time/tick", f"""
# Return if not in voting state (2)
execute unless score #engine_state {ns}.data matches 2 run return 1

# Check for new votes and update
scoreboard players set #success {ns}.data 0
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=1..}}] run function {ns}:engine/voting_time/update_votes
execute if score #success {ns}.data matches 1 run schedule function {ns}:engine/voting_time/schedule_message 1s replace

# Count total players and votes
scoreboard players set #vote_count {ns}.data 0
scoreboard players set #player_count {ns}.data 0
execute store result score #player_count {ns}.data if entity @a[tag=!detached]
execute store result score #vote_count {ns}.data if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}]
# Speed up voting if everyone has voted and more than 5 seconds left
execute if score #voting_timer {ns}.data matches 100.. if score #player_count {ns}.data = #vote_count {ns}.data run function {ns}:engine/voting_time/speed_up

# Decrease timer if at least one vote exists
execute if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=..-1}}] run scoreboard players remove #voting_timer {ns}.data 1

# Calculate and display remaining time in seconds
scoreboard players set #remaining {ns}.data 0
scoreboard players operation #remaining {ns}.data = #voting_timer {ns}.data
scoreboard players operation #remaining {ns}.data /= #20 {ns}.data
scoreboard players add #remaining {ns}.data 1
function {ns}:engine/translations/voting_time_tick

# End of voting sequence
# execute if score #voting_timer {ns}.data matches 1 run scoreboard players remove @a[tag=!detached] {ns}.stats.deaths 1
# execute if score #voting_timer {ns}.data matches 1 run kill @a[tag=!detached]
execute if score #voting_timer {ns}.data matches 0 run function {ns}:engine/launch_game/main

# Schedule next tick if timer hasn't expired
execute if score #voting_timer {ns}.data matches 1.. run schedule function {ns}:engine/voting_time/tick 1t
""")

	# /voting_time/update_votes
	vote_reset: str = "\n".join(f"scoreboard players set #vote_game_{i} {ns}.data 0" for i in range(1, 9))
	vote_count: str = "\n".join(
		f"execute store result score #vote_game_{i} {ns}.data if entity @a[tag=!detached,scores={{{ns}.trigger.game_vote=-{i}}}]"
		for i in range(1, 9)
	)
	write_function(f"{path}/voting_time/update_votes", f"""
{vote_reset}

# Ignore clicks on vote options that do not exist in the current round (e.g. old messages in the chat)
execute unless score #vote_slots {ns}.data matches 1.. run scoreboard players set #vote_slots {ns}.data 8
execute as @a[tag=!detached,scores={{{ns}.trigger.game_vote=1..}}] unless score @s {ns}.trigger.game_vote <= #vote_slots {ns}.data run scoreboard players set @s {ns}.trigger.game_vote 0

tag @a[tag=!detached,scores={{{ns}.trigger.game_vote=1..}}] add {ns}.temp
execute as @a[tag={ns}.temp] at @s run playsound ui.button.click ambient @s
scoreboard players operation @a[tag={ns}.temp] {ns}.trigger.game_vote *= #-1 {ns}.data
{vote_count}

scoreboard players set #success {ns}.data 1

# Update the message for the player who just voted
execute as @a[tag={ns}.temp] run function {ns}:engine/voting_time/message
tag @a[tag={ns}.temp] remove {ns}.temp
""")

