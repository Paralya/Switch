
# Imports
import requests
import json
import os

# Constants
ITEMS_LINK = "https://raw.githubusercontent.com/PixiGeko/Minecraft-generated-data/master/1.20/releases/1.20.4/custom-generated/registries/item.txt"
PATH = os.path.dirname(os.path.realpath(__file__)).replace("\\", "/") + "/all.json"

# Get the loot tables
response = requests.get(ITEMS_LINK)
items = response.text.split("\n")

# Function to convert loot table name to entry
def get_entry(item: str) -> dict:
	entry = {"type": "minecraft:item", "name": item}
	if "spawn_egg" in item and "wither" not in item and "ghast" not in item:
		entry["weight"] = 2
	return entry

# Insert all items into the loot table
loot_table = {"pools": [{"rolls": 1, "entries": []}]}
for item in items:
	if "ender_dragon_spawn_egg" in item or item == "":
		continue
	loot_table["pools"][0]["entries"].append(get_entry(item))

# Save the loot table
with open(PATH, "w", encoding = "utf-8") as file:
	file.write(json.dumps(loot_table, indent = '\t') + "\n")

