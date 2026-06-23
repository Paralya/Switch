
# ruff: noqa: E501
# Imports
import json
from typing import Any

import stouputils as stp
from beet import Advancement
from stewbeet.core import Mem, write_function

from .shared_memory import (
	ALL_ADVANCEMENTS,
	CATEGORIES_COLOR,
	CHALLENGES,
	LOAD_FILE,
	UPDATE_PERCENTAGES_FILE,
)


def make_load_file() -> None:
	""" Generates the load file which initializes and updates the advancements storage. """
	write_function(LOAD_FILE, """
# Setup storages
execute unless data storage switch:advancements all run data modify storage switch:advancements all set value []
""")
	for adv in ALL_ADVANCEMENTS:
		string_id: str = adv["string_id"]
		write_function(LOAD_FILE, f"execute unless data storage switch:advancements all[{{id:{string_id}}}] run data modify storage switch:advancements all append value {{id:{string_id}, percent:{{int:0, digits:0}}, players:[], total:0}}\n")

	# For each advancement, generate the merge line
	write_function(LOAD_FILE, """
# Update storages
""")
	for adv in ALL_ADVANCEMENTS:
		string_id: str = adv["string_id"]
		author: str = adv["author"]
		color: str = CATEGORIES_COLOR[adv["category"]]
		name: str = adv["title"]
		desc_fr: str = adv["desc_fr"]
		desc_en: str = adv["desc_en"]
		write_function(LOAD_FILE, f"""data modify storage switch:advancements all[{{id:{string_id}}}] merge value {{color:"{color}", auteur:"{author}", name:"{name}", description:"{desc_fr}", desc_en:"{desc_en}"}}""")


def make_update_percentages() -> None:
	""" Generates the update_percentages file which updates the advancements storage. """
	# Write the first part of the file
	write_function(UPDATE_PERCENTAGES_FILE, """
# Update percentage
setblock 0 16 0 air
setblock 0 16 0 yellow_shulker_box
loot insert 0 16 0 loot switch:get_username
data modify storage switch:main input set value {id:"", username:""}
data modify storage switch:main input.username set from block 0 16 0 Items[0].components."minecraft:profile".name

## For each advancement, check if the player has the advancement
scoreboard players set @s switch.advancements 0
""")

	# For each advancement, generate the check line
	for adv in ALL_ADVANCEMENTS:
		id: str = adv["id"]
		string_id: str = adv["string_id"]
		if not string_id.startswith('"') and not string_id.endswith('"'):
			string_id = f'"{string_id}"'
		write_function(UPDATE_PERCENTAGES_FILE, f"execute if entity @s[advancements={{switch:visible/{id}=true}}] run function switch:advancements/_pre_macro {{id:{string_id}}}")

	# Write the last part of the file
	write_function(UPDATE_PERCENTAGES_FILE, "setblock 0 16 0 air")


def hidden_advancements() -> None:
	""" Generates the hidden advancements so that they show up in the advancement GUI. """
	# For each advancement that doesn't have children, generate a hidden advancement
	for adv in ALL_ADVANCEMENTS:
		if len(adv["children"]) == 0:
			id: str = adv["id"]
			json_dict: dict[str, Any] = {
				"criteria": {"requirement": {"trigger": "minecraft:tick"}},
				"requirements": [["requirement"]],
				"parent": f"switch:visible/{id}"
			}
			adv = Advancement(json_dict)
			adv.encoder = lambda x: stp.json_dump(x, max_level=-1)
			Mem.ctx.data["switch"].advancements[f"hidden_ends/{id}"] = adv


def visible_advancements() -> None:
	""" Generates the visible advancements. """
	# For each advancement, generate the file
	for adv in ALL_ADVANCEMENTS:
		id: str = adv["id"]
		category: str = adv["category"]
		if category == "jump":
			category = "jumps/" + id.replace("jump_", "")

		json_dict: dict[str, Any] = {
			"display": {
				"icon": json.loads(adv["icon"]),
				"title": {"text": adv["title"], "color": "yellow"},
				"description": {"text": adv["desc_en"], "color": "aqua"},
				"frame": "task" if id not in CHALLENGES else "challenge",
				"show_toast": True,
				"announce_to_chat": True,
				"hidden": False
			},
			"criteria": {"requirement": {"trigger": "minecraft:impossible"}},
			"requirements": [["requirement"]],
			"rewards": {"function": f"switch:advancements/{category}"},
			"parent": f"switch:visible/{adv['parent']}"
		}
		adv = Advancement(json_dict)
		adv.encoder = lambda x: stp.json_dump(x, max_level=2)
		Mem.ctx.data["switch"].advancements[f"visible/{id}"] = adv

		# Display child on the advancement tree (one tick-trigger node per visible advancement)
		end = Advancement({
			"criteria": {"requirement": {"trigger": "minecraft:tick"}},
			"requirements": [["requirement"]],
			"parent": f"switch:visible/{id}",
		})
		end.encoder = lambda x: stp.json_dump(x, max_level=2)
		Mem.ctx.data["switch"].advancements[f"visible/categories/ends/{id}"] = end


# Difficulty/category parent nodes shown under the tutorial root: name -> (icon, title, description)
CATEGORY_PARENTS: dict[str, tuple[str, str, str]] = {
	"easy": ("minecraft:lime_dye", "Easy", "25 Saphirs par succès"),
	"medium": ("minecraft:yellow_dye", "Medium", "50 Saphirs par succès"),
	"hard": ("minecraft:red_dye", "Hard", "100 Saphirs par succès"),
	"jumps": ("minecraft:slime_block", "Jumps", "Catégorie des jumps"),
}


def category_advancements() -> None:
	""" Generates the difficulty/category parent advancements (easy/medium/hard/jumps). """
	for name, (icon, title, description) in CATEGORY_PARENTS.items():
		adv = Advancement({
			"display": {
				"icon": {"id": icon},
				"title": {"text": title, "color": "yellow"},
				"description": {"text": description, "color": "aqua"},
				"frame": "goal",
				"show_toast": False,
				"announce_to_chat": False,
				"hidden": False,
			},
			"criteria": {"requirement": {"trigger": "minecraft:impossible"}},
			"requirements": [["requirement"]],
			"parent": "switch:tutorial",
		})
		adv.encoder = lambda x: stp.json_dump(x, max_level=2)
		Mem.ctx.data["switch"].advancements[f"visible/categories/{name}"] = adv



# Reward functions (easy/medium/hard difficulties + the 13 parkour jumps).
# All share the same 4-line body, differing only by the money reward.
DIFFICULTY_REWARDS: dict[str, int] = {"easy": 25, "medium": 50, "hard": 100}
JUMP_REWARDS: dict[str, int] = {
	"blue": 151, "white": 123, "red": 350, "yellow": 151, "green": 51,
	"brown": 450, "pink": 400, "purple": 500, "dripstone": 169,
	"obsidian": 1234, "bricks": 500, "duality": 400, "graviglitch": 500,
}


def reward_function(name: str, money: int) -> None:
	write_function(f"switch:advancements/{name}", f"""
scoreboard players set #add_override switch.money {money}
function switch:engine/add_money
function switch:stats/util_update_player
function switch:advancements/update_percentages
""")


def make_reward_functions() -> None:
	""" Generates the difficulty + jump reward functions (identical bodies, different money values). """
	for name, money in DIFFICULTY_REWARDS.items():
		reward_function(name, money)
	for color, money in JUMP_REWARDS.items():
		reward_function(f"jumps/{color}", money)


def make_percentages_recalculations() -> None:
	""" Generates the percentages recalculation loop (recomputes every advancement's % on demand). """
	write_function("switch:advancements/percentages_recalculations", """
data modify storage switch:temp copy set from storage switch:advancements all
data modify storage switch:temp new set value []
execute if data storage switch:temp copy[0] run function switch:advancements/percentages_recalculation_loop
data modify storage switch:advancements all set from storage switch:temp new
""")
	write_function("switch:advancements/percentages_recalculation_loop", """
## Calculation
# Get local and global totals
execute store result score #local_total switch.data run data get storage switch:temp copy[0].total
scoreboard players operation #total_players switch.data = #next_id switch.id

# Calculate percentages
scoreboard players operation #local_total switch.data *= #100000 switch.data
scoreboard players operation #local_total switch.data /= #total_players switch.data
scoreboard players operation #digits switch.data = #local_total switch.data
scoreboard players operation #digits switch.data %= #1000 switch.data
scoreboard players operation #local_total switch.data /= #1000 switch.data

# Store the results
execute store result storage switch:temp copy[0].percent.int int 1 run scoreboard players get #local_total switch.data
execute store result storage switch:temp copy[0].percent.digits int 1 run scoreboard players get #digits switch.data

# Append to the new list
data modify storage switch:temp new append from storage switch:temp copy[0]

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:advancements/percentages_recalculation_loop
""")


def make_advancement_macros() -> None:
	""" Generates the per-player advancement grant macro (registers a player and updates the global %). """
	write_function("switch:advancements/_pre_macro", """
scoreboard players add @s switch.advancements 1

$data modify storage switch:main input.id set value $(id)
function switch:advancements/_macro with storage switch:main input
""")
	write_function("switch:advancements/_macro", r"""
# [
# 	{"text": "Aider à la construction d'une map ou la création d'un mini-jeu\n", "color": "aqua"},
# 	{"nbt": "all.1.percent.int", "storage": "switch:advancements", "color":"green"},
# 	{"text":".", "color":"green"},
# 	{"nbt": "all.1.percent.digits", "storage": "switch:advancements", "color":"green"},
# 	{"text":"% des joueurs", "color":"green"}
# ]

scoreboard players set #success switch.data 0
$execute if data storage switch:advancements all[{id:$(id)}].players[{name:"$(username)"}] run scoreboard players set #success switch.data 1
$execute if score #success switch.data matches 0 store result score #local_total switch.data run data get storage switch:advancements all[{id:$(id)}].total
execute if score #success switch.data matches 0 run scoreboard players add #local_total switch.data 1
$execute if score #success switch.data matches 0 store result storage switch:advancements all[{id:$(id)}].total int 1 run scoreboard players get #local_total switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #total_players switch.data = #next_id switch.id
execute if score #success switch.data matches 0 run scoreboard players operation #local_total switch.data *= #100000 switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #local_total switch.data /= #total_players switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #digits switch.data = #local_total switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #digits switch.data %= #1000 switch.data
execute if score #success switch.data matches 0 run scoreboard players operation #local_total switch.data /= #1000 switch.data
$execute if score #success switch.data matches 0 store result storage switch:advancements all[{id:$(id)}].percent.int int 1 run scoreboard players get #local_total switch.data
$execute if score #success switch.data matches 0 store result storage switch:advancements all[{id:$(id)}].percent.digits int 1 run scoreboard players get #digits switch.data
$execute if score #success switch.data matches 0 run data modify storage switch:advancements all[{id:$(id)}].players append value {name:"$(username)"}
""")
