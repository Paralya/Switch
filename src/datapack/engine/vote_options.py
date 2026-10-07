# Imports
from stewbeet import Mem, write_function


def write_vote_options() -> None:
	""" Write the getters reading the game, group and player bounds of each vote option. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine"

	# /voting_time/get/index_information
	index_information: str = "\n".join(
		f"execute if score #index {ns}.data matches {i} if score #list_index {ns}.data = #game_{i} {ns}.data store success score #success {ns}.data run data modify storage {ns}:main selections append from storage {ns}:main copy[0]"
		for i in range(1, 9)
	)
	write_function(f"{path}/voting_time/get/index_information", f"""
scoreboard players set #success {ns}.data 0
{index_information}

data remove storage {ns}:main copy[0]
scoreboard players add #list_index {ns}.data 1
execute if score #success {ns}.data matches 0 if data storage {ns}:main copy[0] run function {ns}:engine/voting_time/get/index_information
""")

	# /voting_time/get/index_max_players
	write_function(f"{path}/voting_time/get/index_max_players", f"""
execute unless score #index {ns}.data matches 1 if score #list_index {ns}.data = #random {ns}.data store result score #max_players {ns}.data run data get storage {ns}:main copy[0].max_players
execute if score #index {ns}.data matches 1 if score #list_index {ns}.data = #game_1 {ns}.data store result score #max_players {ns}.data run data get storage {ns}:main copy[0].max_players

data remove storage {ns}:main copy[0]
scoreboard players add #list_index {ns}.data 1
execute if score #max_players {ns}.data matches 0 if data storage {ns}:main copy[0] run function {ns}:engine/voting_time/get/index_max_players
""")

	# /voting_time/get/index_min_players
	write_function(f"{path}/voting_time/get/index_min_players", f"""
execute unless score #index {ns}.data matches 1 if score #list_index {ns}.data = #random {ns}.data store result score #min_players {ns}.data run data get storage {ns}:main copy[0].min_players
execute if score #index {ns}.data matches 1 if score #list_index {ns}.data = #game_1 {ns}.data store result score #min_players {ns}.data run data get storage {ns}:main copy[0].min_players

data remove storage {ns}:main copy[0]
scoreboard players add #list_index {ns}.data 1
execute if score #min_players {ns}.data matches 0 if data storage {ns}:main copy[0] run function {ns}:engine/voting_time/get/index_min_players
""")

	# /voting_time/get/information
	write_function(f"{path}/voting_time/get/information", f"""
scoreboard players set #list_index {ns}.data 1
data modify storage {ns}:main copy set from storage {ns}:main groups
function {ns}:engine/voting_time/get/index_information

scoreboard players add #index {ns}.data 1
execute if score #index {ns}.data matches ..8 run function {ns}:engine/voting_time/get/information
""")

	# /voting_time/get/max_players
	write_function(f"{path}/voting_time/get/max_players", f"""
scoreboard players set #max_players {ns}.data 0
scoreboard players set #list_index {ns}.data 1
data modify storage {ns}:main copy set from storage {ns}:main groups
function {ns}:engine/voting_time/get/index_max_players
execute if score #max_players {ns}.data matches -1 run scoreboard players set #max_players {ns}.data 2147483647
""")

	# /voting_time/get/min_players
	write_function(f"{path}/voting_time/get/min_players", f"""
scoreboard players set #min_players {ns}.data 0
scoreboard players set #list_index {ns}.data 1
data modify storage {ns}:main copy set from storage {ns}:main groups
function {ns}:engine/voting_time/get/index_min_players
""")

	# /voting_time/get/random
	write_function(f"{path}/voting_time/get/random", f"""
scoreboard players set #random {ns}.data 0
execute store result score #random {ns}.data run data get entity @s UUID[0]
scoreboard players operation #random {ns}.data %= #modulo_rand {ns}.data
scoreboard players add #random {ns}.data 1
kill @s
""")

