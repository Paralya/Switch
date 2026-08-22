
# Imports
import stouputils as stp
from stewbeet import Item, JsonDict, LootTable, Mem

# Constants
ITEMS_LINK: str = "https://raw.githubusercontent.com/misode/mcmeta/VERSION-summary/registries/data.min.json"
SPAWN_EGG_WEIGHT: int = 2
IGNORE_SPAWN_EGG: list[str] = ["wither", "ghast"]
THROWN_POTIONS: tuple[str, ...] = ("minecraft:splash_potion", "minecraft:lingering_potion")
""" Potion containers rolled with every vanilla potion variant.

Drinkable potions are left out on purpose: a pillar is a one block platform, so a potion that only
works on the drinker is a dead roll while a thrown one is always playable.
"""

# Function to convert loot table name to entry
def get_entry(item: str) -> JsonDict:
	entry: JsonDict = {"type": "minecraft:item", "name": item}
	if "spawn_egg" in item and all(ignore not in item for ignore in IGNORE_SPAWN_EGG):
		entry["weight"] = SPAWN_EGG_WEIGHT
	return entry

def get_potion_entry(item: str, potion: str) -> JsonDict:
	""" Build the loot table entry giving one potion container filled with one potion variant.

	Args:
		item   (str): Container item id, ex: "minecraft:splash_potion"
		potion (str): Potion id from the vanilla registry, ex: "strength"
	Returns:
		JsonDict: The entry, setting the potion_contents component on the container

	Examples:
		>>> get_potion_entry("minecraft:lingering_potion", "luck")["functions"][0]["components"]
		{'minecraft:potion_contents': {'potion': 'minecraft:luck'}}
	"""
	return {"type": "minecraft:item", "name": item, "functions": [
		{"function": "minecraft:set_components", "components": {"minecraft:potion_contents": {"potion": f"minecraft:{potion}"}}},
	]}

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

	# Roll every potion variant, the bare container item only ever gives a water bottle
	for container in THROWN_POTIONS:
		for potion in registries["potion"]:
			loot_table["pools"][0]["entries"].append(get_potion_entry(container, potion))

	# Save the vanilla loot table
	Mem.ctx.data[ns].loot_tables["random/vanilla"] = LootTable(stp.json_dump(loot_table, max_level=-1))

	# For each item in the item definitions (except skipped ones), add it to the loot table and save it
	for item in Mem.definitions.keys():
		if Item.from_id(item).skip_gives:
			continue
		loot_table["pools"][0]["entries"].append({"type": "minecraft:loot_table", "value": f"{ns}:i/{item}"})
	Mem.ctx.data[ns].loot_tables["random/all"] = LootTable(stp.json_dump(loot_table, max_level=-1))

