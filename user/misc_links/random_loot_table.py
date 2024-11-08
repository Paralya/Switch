
# Imports
import requests
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
	vanilla_path: str = clean_path(f"{loot_tables_path}/random/vanilla.json")
	all_path: str = clean_path(f"{loot_tables_path}/random/all.json")

	# If the loot tables already exists, prevent them from being deleted (cache system)
	if INITIAL_FILES.get(vanilla_path) and INITIAL_FILES.get(all_path):
		del INITIAL_FILES[vanilla_path]
		del INITIAL_FILES[all_path]
		return progress(f"The random loot tables 'vanilla.json' and 'all.json' already exists, skipping the generation")

	# Insert all items into the loot table
	items: list[str] = requests.get(ITEMS_LINK).text.strip().split("\n")
	items = [item for item in items if item not in ["", "minecraft:air"]]
	loot_table: dict[str, list[dict[str, str|int]]] = {"pools": [{"rolls": 1, "entries": []}]}
	for item in items:
		if "ender_dragon_spawn_egg" in item or item == "":
			continue
		loot_table["pools"][0]["entries"].append(get_entry(item))

	# Save the vanilla loot table
	write_to_file(vanilla_path, super_json_dump(loot_table, max_level = -1))

	# For each item in the database, add it to the loot table and save it
	database: dict[str, dict] = config["database"]
	for item in database.keys():
		loot_table["pools"][0]["entries"].append({"type": "minecraft:loot_table", "value": f"switch:i/{item}"})
	write_to_file(all_path, super_json_dump(loot_table, max_level = -1))
	progress(f"The random loot tables 'vanilla.json' and 'all.json' have been generated")

