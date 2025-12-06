
# Imports
import os

import requests
import stouputils as stp
from beet import LootTable
from stewbeet.core import Mem

# Constants
ITEMS_LINK: str = "https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/MAJOR.MINOR/releases/MAJOR.MINOR.PATCH/custom-generated/registries/item.txt"
SPAWN_EGG_WEIGHT: int = 2
IGNORE_SPAWN_EGG: list[str] = ["wither", "ghast"]

# Function to convert loot table name to entry
def get_entry(item: str) -> dict[str, str|int]:
	entry = {"type": "minecraft:item", "name": item}
	if "spawn_egg" in item and all(ignore not in item for ignore in IGNORE_SPAWN_EGG):
		entry["weight"] = SPAWN_EGG_WEIGHT
	return entry

# Main function
def main() -> None:
	loot_tables_path: str = f"{Mem.ctx.output_directory}/data/switch/loot_table"
	vanilla_path: str = stp.clean_path(f"{loot_tables_path}/random/vanilla.json")
	all_path: str = stp.clean_path(f"{loot_tables_path}/random/all.json")

	# If the loot tables already exists, prevent them from being deleted (cache system)
	if all(os.path.exists(x) for x in [vanilla_path, all_path]):
		Mem.ctx.data["switch"].loot_tables["random/vanilla"] = LootTable(source_path=vanilla_path)
		Mem.ctx.data["switch"].loot_tables["random/all"] = LootTable(source_path=all_path)
		return stp.progress("The random loot tables 'vanilla.json' and 'all.json' already exists, skipping the generation")

	# Get all items
	major, minor, patch = Mem.ctx.minecraft_version.split(".")
	updated_link: str = ITEMS_LINK.replace("MAJOR.MINOR", f"{major}.{minor}").replace("PATCH", patch)
	items: list[str] = requests.get(updated_link).text.strip().split("\n")
	items = [item for item in items if item not in ["", "minecraft:air"]]

	# Insert all items into the loot table
	loot_table: dict[str, list[dict[str, str|int]]] = {"pools": [{"rolls": 1, "entries": []}]}
	for item in items:
		if "ender_dragon_spawn_egg" in item or item == "":
			continue
		loot_table["pools"][0]["entries"].append(get_entry(item))

	# Save the vanilla loot table
	Mem.ctx.data["switch"].loot_tables["random/vanilla"] = LootTable(stp.json_dump(loot_table, max_level = -1))

	# For each item in the item definitions, add it to the loot table and save it
	for item in Mem.definitions.keys():
		loot_table["pools"][0]["entries"].append({"type": "minecraft:loot_table", "value": f"switch:i/{item}"})
	Mem.ctx.data["switch"].loot_tables["random/all"] = LootTable(stp.json_dump(loot_table, max_level = -1))
	stp.progress("The random loot tables 'vanilla.json' and 'all.json' have been generated")

