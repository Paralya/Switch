
# Imports
import stouputils as stp
from stewbeet import Item, JsonDict, LootTable, Mem

# Constants
ITEMS_LINK: str = "https://raw.githubusercontent.com/misode/mcmeta/VERSION-summary/registries/data.min.json"
SPAWN_EGG_WEIGHT: int = 2
IGNORE_SPAWN_EGG: list[str] = ["wither", "ghast"]

# Function to convert loot table name to entry
def get_entry(item: str) -> JsonDict:
	entry: JsonDict = {"type": "minecraft:item", "name": item}
	if "spawn_egg" in item and all(ignore not in item for ignore in IGNORE_SPAWN_EGG):
		entry["weight"] = SPAWN_EGG_WEIGHT
	return entry

# Main function
def write_resources() -> None:
	ns: str = Mem.ctx.project_id

	# Get all items from the vanilla registries, downloaded once per minecraft version thanks to the beet cache
	registries_path: str = str(Mem.ctx.cache["switch"].download(ITEMS_LINK.replace("VERSION", Mem.ctx.minecraft_version)))
	registries: JsonDict = stp.json_load(registries_path)
	items: list[str] = [f"minecraft:{item}" for item in registries["item"] if item != "air"]

	# Insert all items into the loot table
	loot_table: JsonDict = {"pools": [{"rolls": 1, "entries": []}]}
	for item in items:
		if "ender_dragon_spawn_egg" in item or item == "":
			continue
		loot_table["pools"][0]["entries"].append(get_entry(item))

	# Save the vanilla loot table
	Mem.ctx.data[ns].loot_tables["random/vanilla"] = LootTable(stp.json_dump(loot_table, max_level=-1))

	# For each item in the item definitions (except skipped ones), add it to the loot table and save it
	for item in Mem.definitions.keys():
		if Item.from_id(item).skip_gives:
			continue
		loot_table["pools"][0]["entries"].append({"type": "minecraft:loot_table", "value": f"{ns}:i/{item}"})
	Mem.ctx.data[ns].loot_tables["random/all"] = LootTable(stp.json_dump(loot_table, max_level=-1))

