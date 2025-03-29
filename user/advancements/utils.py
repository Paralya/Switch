
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *
from user.advancements.shared_memory import *



def make_load_file(config: dict) -> None:
	""" Generates the load file which initializes and updates the advancements storage.\n
	Args:
		config (dict): Configuration dictionary for writing functions
	"""
	write_function(config, LOAD_FILE, """
# Setup storages
execute unless data storage switch:advancements all run data modify storage switch:advancements all set value []
""")
	for adv in ALL_ADVANCEMENTS:
		string_id: str = adv["string_id"]
		write_function(config, LOAD_FILE, f"execute unless data storage switch:advancements all[{{id:{string_id}}}] run data modify storage switch:advancements all append value {{id:{string_id}, percent:{{int:0, digits:0}}, players:[], total:0}}\n")

	# For each advancement, generate the merge line
	write_function(config, LOAD_FILE, """
# Update storages
""")
	for adv in ALL_ADVANCEMENTS:
		string_id: str = adv["string_id"]
		author: str = adv["author"]
		color: str = CATEGORIES_COLOR[adv["category"]]
		name: str = adv["title"]
		desc_fr: str = adv["desc_fr"]
		desc_en: str = adv["desc_en"]
		write_function(config, LOAD_FILE, f"""data modify storage switch:advancements all[{{id:{string_id}}}] merge value {{color:"{color}", auteur:"{author}", name:"{name}", description:"{desc_fr}", desc_en:"{desc_en}"}}\n""")


def make_update_percentages(config: dict) -> None:
	""" Generates the update_percentages file which updates the advancements storage.\n
	Args:
		config (dict): Configuration dictionary for writing functions
	"""
	# Write the first part of the file
	write_function(config, UPDATE_PERCENTAGES_FILE, """
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
		write_function(config, UPDATE_PERCENTAGES_FILE, f"""execute if entity @s[advancements={{switch:visible/{id}=true}}] run function switch:advancements/_pre_macro {{id:{string_id}}}\n""")

	# Write the last part of the file
	write_function(config, UPDATE_PERCENTAGES_FILE, "setblock 0 16 0 air")


def hidden_advancements(config: dict) -> None:
	""" Generates the hidden advancements so that they show up in the advancement GUI.\n
	Args:
		config (dict): Configuration dictionary for writing functions
	"""
	advancement_folder: str = f"{config['build_datapack']}/data/switch/advancement/hidden_ends"

	# For each advancement that doesn't have children, generate a hidden advancement
	for adv in ALL_ADVANCEMENTS:
		if len(adv["children"]) == 0:
			id: str = adv["id"]
			json_dict: dict = {
				"criteria": {"requirement": {"trigger": "minecraft:tick"}},
				"requirements": [["requirement"]],
				"parent": f"switch:visible/{id}"
			}
			write_file(f"{advancement_folder}/{id}.json", stp.super_json_dump(json_dict, max_level=1))


def visible_advancements(config: dict) -> None:
	""" Generates the visible advancements.\n
	Args:
		config (dict): Configuration dictionary for writing functions
	"""
	advancement_folder: str = f"{config['build_datapack']}/data/switch/advancement/visible"

	# For each advancement, generate the file
	for adv in ALL_ADVANCEMENTS:
		id: str = adv["id"]
		category: str = adv["category"]
		if category == "jump":
			category = "jumps/" + id.replace("jump_", "")

		json_dict: dict = {
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
		write_file(f"{advancement_folder}/{id}.json", stp.super_json_dump(json_dict, max_level=2))

