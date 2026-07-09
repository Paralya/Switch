
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
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:{LOAD_FILE}", f"""
# Setup storages
execute unless data storage {ns}:advancements all run data modify storage {ns}:advancements all set value []
""")
	for adv in ALL_ADVANCEMENTS:
		string_id: str = adv["string_id"]
		write_function(f"{ns}:{LOAD_FILE}", f"execute unless data storage {ns}:advancements all[{{id:{string_id}}}] run data modify storage {ns}:advancements all append value {{id:{string_id}, percent:{{int:0, digits:0}}, players:[], total:0}}\n")

	# For each advancement, generate the merge line
	write_function(f"{ns}:{LOAD_FILE}", """
# Update storages
""")
	for adv in ALL_ADVANCEMENTS:
		string_id: str = adv["string_id"]
		author: str = adv["author"]
		color: str = CATEGORIES_COLOR[adv["category"]]
		name: str = adv["title"]
		desc_fr: str = adv["desc_fr"]
		desc_en: str = adv["desc_en"]
		write_function(f"{ns}:{LOAD_FILE}", f"""data modify storage {ns}:advancements all[{{id:{string_id}}}] merge value {{color:"{color}", auteur:"{author}", name:"{name}", description:"{desc_fr}", desc_en:"{desc_en}"}}""")


def make_update_percentages() -> None:
	""" Generates the update_percentages file which updates the advancements storage. """
	ns: str = Mem.ctx.project_id
	# Write the first part of the file
	write_function(f"{ns}:{UPDATE_PERCENTAGES_FILE}", f"""
# Update percentage
setblock 0 16 0 air
setblock 0 16 0 yellow_shulker_box
loot insert 0 16 0 loot {ns}:get_username
data modify storage {ns}:main input set value {{id:"", username:""}}
data modify storage {ns}:main input.username set from block 0 16 0 Items[0].components."minecraft:profile".name

## For each advancement, check if the player has the advancement
scoreboard players set @s {ns}.advancements 0
""")

	# For each advancement, generate the check line
	for adv in ALL_ADVANCEMENTS:
		id: str = adv["id"]
		string_id: str = adv["string_id"]
		if not string_id.startswith('"') and not string_id.endswith('"'):
			string_id = f'"{string_id}"'
		write_function(f"{ns}:{UPDATE_PERCENTAGES_FILE}", f"execute if entity @s[advancements={{{ns}:visible/{id}=true}}] run function {ns}:advancements/_pre_macro {{id:{string_id}}}")

	# Write the last part of the file
	write_function(f"{ns}:{UPDATE_PERCENTAGES_FILE}", "setblock 0 16 0 air")


def hidden_advancements() -> None:
	""" Generates the hidden advancements so that they show up in the advancement GUI. """
	ns: str = Mem.ctx.project_id
	# For each advancement that doesn't have children, generate a hidden advancement
	for adv in ALL_ADVANCEMENTS:
		if len(adv["children"]) == 0:
			id: str = adv["id"]
			json_dict: dict[str, Any] = {
				"criteria": {"requirement": {"trigger": "minecraft:tick"}},
				"requirements": [["requirement"]],
				"parent": f"{ns}:visible/{id}"
			}
			adv = Advancement(json_dict)
			adv.encoder = lambda x: stp.json_dump(x, max_level=-1)
			Mem.ctx.data[ns].advancements[f"hidden_ends/{id}"] = adv


def visible_advancements() -> None:
	""" Generates the visible advancements. """
	ns: str = Mem.ctx.project_id
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
			"rewards": {"function": f"{ns}:advancements/{category}"},
			"parent": f"{ns}:visible/{adv['parent']}"
		}
		adv = Advancement(json_dict)
		adv.encoder = lambda x: stp.json_dump(x, max_level=2)
		Mem.ctx.data[ns].advancements[f"visible/{id}"] = adv

		# Display child on the advancement tree (one tick-trigger node per visible advancement)
		end = Advancement({
			"criteria": {"requirement": {"trigger": "minecraft:tick"}},
			"requirements": [["requirement"]],
			"parent": f"{ns}:visible/{id}",
		})
		end.encoder = lambda x: stp.json_dump(x, max_level=2)
		Mem.ctx.data[ns].advancements[f"visible/categories/ends/{id}"] = end


# Difficulty/category parent nodes shown under the tutorial root: name -> (icon, title, description)
CATEGORY_PARENTS: dict[str, tuple[str, str, str]] = {
	"easy": ("minecraft:lime_dye", "Easy", "25 Saphirs par succès"),
	"medium": ("minecraft:yellow_dye", "Medium", "50 Saphirs par succès"),
	"hard": ("minecraft:red_dye", "Hard", "100 Saphirs par succès"),
	"jumps": ("minecraft:slime_block", "Jumps", "Catégorie des jumps"),
}


def category_advancements() -> None:
	""" Generates the difficulty/category parent advancements (easy/medium/hard/jumps). """
	ns: str = Mem.ctx.project_id
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
			"parent": f"{ns}:tutorial",
		})
		adv.encoder = lambda x: stp.json_dump(x, max_level=2)
		Mem.ctx.data[ns].advancements[f"visible/categories/{name}"] = adv



# Reward functions (easy/medium/hard difficulties + the 13 parkour jumps).
# All share the same 4-line body, differing only by the money reward.
DIFFICULTY_REWARDS: dict[str, int] = {"easy": 25, "medium": 50, "hard": 100}
JUMP_REWARDS: dict[str, int] = {
	"blue": 151, "white": 123, "red": 350, "yellow": 151, "green": 51,
	"brown": 450, "pink": 400, "purple": 500, "dripstone": 169,
	"obsidian": 1234, "bricks": 500, "duality": 400, "graviglitch": 500,
}


def reward_function(name: str, money: int) -> None:
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:advancements/{name}", f"""
scoreboard players set #add_override {ns}.money {money}
function {ns}:engine/add_money
function {ns}:stats/util_update_player
function {ns}:advancements/update_percentages
""")


def make_reward_functions() -> None:
	""" Generates the difficulty + jump reward functions (identical bodies, different money values). """
	for name, money in DIFFICULTY_REWARDS.items():
		reward_function(name, money)
	for color, money in JUMP_REWARDS.items():
		reward_function(f"jumps/{color}", money)


def make_percentages_recalculations() -> None:
	""" Generates the percentages recalculation loop (recomputes every advancement's % on demand). """
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:advancements/percentages_recalculations", f"""
data modify storage {ns}:temp copy set from storage {ns}:advancements all
data modify storage {ns}:temp new set value []
execute if data storage {ns}:temp copy[0] run function {ns}:advancements/percentages_recalculation_loop
data modify storage {ns}:advancements all set from storage {ns}:temp new
""")
	write_function(f"{ns}:advancements/percentages_recalculation_loop", f"""
## Calculation
# Get local and global totals
execute store result score #local_total {ns}.data run data get storage {ns}:temp copy[0].total
scoreboard players operation #total_players {ns}.data = #next_id {ns}.id

# Calculate percentages
scoreboard players operation #local_total {ns}.data *= #100000 {ns}.data
scoreboard players operation #local_total {ns}.data /= #total_players {ns}.data
scoreboard players operation #digits {ns}.data = #local_total {ns}.data
scoreboard players operation #digits {ns}.data %= #1000 {ns}.data
scoreboard players operation #local_total {ns}.data /= #1000 {ns}.data

# Store the results
execute store result storage {ns}:temp copy[0].percent.int int 1 run scoreboard players get #local_total {ns}.data
execute store result storage {ns}:temp copy[0].percent.digits int 1 run scoreboard players get #digits {ns}.data

# Append to the new list
data modify storage {ns}:temp new append from storage {ns}:temp copy[0]

# Continue loop
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:advancements/percentages_recalculation_loop
""")


def make_advancement_macros() -> None:
	""" Generates the per-player advancement grant macro (registers a player and updates the global %). """
	ns: str = Mem.ctx.project_id
	write_function(f"{ns}:advancements/_pre_macro", f"""
scoreboard players add @s {ns}.advancements 1

$data modify storage {ns}:main input.id set value $(id)
function {ns}:advancements/_macro with storage {ns}:main input
""")
	write_function(f"{ns}:advancements/_macro", rf"""
# [
# 	{{"text": "Aider à la construction d'une map ou la création d'un mini-jeu\n", "color": "aqua"}},
# 	{{"nbt": "all.1.percent.int", "storage": "{ns}:advancements", "color":"green"}},
# 	{{"text":".", "color":"green"}},
# 	{{"nbt": "all.1.percent.digits", "storage": "{ns}:advancements", "color":"green"}},
# 	{{"text":"% des joueurs", "color":"green"}}
# ]

scoreboard players set #success {ns}.data 0
$execute if data storage {ns}:advancements all[{{id:$(id)}}].players[{{name:"$(username)"}}] run scoreboard players set #success {ns}.data 1
$execute if score #success {ns}.data matches 0 store result score #local_total {ns}.data run data get storage {ns}:advancements all[{{id:$(id)}}].total
execute if score #success {ns}.data matches 0 run scoreboard players add #local_total {ns}.data 1
$execute if score #success {ns}.data matches 0 store result storage {ns}:advancements all[{{id:$(id)}}].total int 1 run scoreboard players get #local_total {ns}.data
execute if score #success {ns}.data matches 0 run scoreboard players operation #total_players {ns}.data = #next_id {ns}.id
execute if score #success {ns}.data matches 0 run scoreboard players operation #local_total {ns}.data *= #100000 {ns}.data
execute if score #success {ns}.data matches 0 run scoreboard players operation #local_total {ns}.data /= #total_players {ns}.data
execute if score #success {ns}.data matches 0 run scoreboard players operation #digits {ns}.data = #local_total {ns}.data
execute if score #success {ns}.data matches 0 run scoreboard players operation #digits {ns}.data %= #1000 {ns}.data
execute if score #success {ns}.data matches 0 run scoreboard players operation #local_total {ns}.data /= #1000 {ns}.data
$execute if score #success {ns}.data matches 0 store result storage {ns}:advancements all[{{id:$(id)}}].percent.int int 1 run scoreboard players get #local_total {ns}.data
$execute if score #success {ns}.data matches 0 store result storage {ns}:advancements all[{{id:$(id)}}].percent.digits int 1 run scoreboard players get #digits {ns}.data
$execute if score #success {ns}.data matches 0 run data modify storage {ns}:advancements all[{{id:$(id)}}].players append value {{name:"$(username)"}}
""")

