
# Imports
import requests
import stouputils as stp
from python_datapack.utils.database_helper import *

# Constants
ITEMS_LINK: str = "https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/1.21/releases/1.21.3/custom-generated/registries/item.txt"
SPAWN_EGG_WEIGHT: int = 2
IGNORE_SPAWN_EGG: list[str] = ["wither", "ghast"]

# Function to convert loot table name to entry
def get_entry(item: str) -> dict[str, str|int]:
	entry = {"type": "minecraft:item", "name": item}
	if "spawn_egg" in item and all(ignore not in item for ignore in IGNORE_SPAWN_EGG):
		entry["weight"] = SPAWN_EGG_WEIGHT
	return entry

# Main function
def main(config: dict) -> None:
	loot_tables_path: str = f"{config['build_datapack']}/data/switch/loot_table"
	vanilla_path: str = stp.clean_path(f"{loot_tables_path}/random/vanilla.json")
	all_path: str = stp.clean_path(f"{loot_tables_path}/random/all.json")

	# If the loot tables already exists, prevent them from being deleted (cache system)
	if is_in_initial_files([vanilla_path, all_path]):
		remove_initial_file(vanilla_path)
		remove_initial_file(all_path)
		return stp.progress(f"The random loot tables 'vanilla.json' and 'all.json' already exists, skipping the generation")

	# Insert all items into the loot table
	items: list[str] = requests.get(ITEMS_LINK).text.strip().split("\n")
	items = [item for item in items if item not in ["", "minecraft:air"]]
	loot_table: dict[str, list[dict[str, str|int]]] = {"pools": [{"rolls": 1, "entries": []}]}
	for item in items:
		if "ender_dragon_spawn_egg" in item or item == "":
			continue
		loot_table["pools"][0]["entries"].append(get_entry(item))

	# Save the vanilla loot table
	write_file(vanilla_path, stp.super_json_dump(loot_table, max_level = -1))

	# For each item in the database, add it to the loot table and save it
	database: dict[str, dict] = config["database"]
	for item in database.keys():
		loot_table["pools"][0]["entries"].append({"type": "minecraft:loot_table", "value": f"switch:i/{item}"})
	write_file(all_path, stp.super_json_dump(loot_table, max_level = -1))
	stp.progress(f"The random loot tables 'vanilla.json' and 'all.json' have been generated")

