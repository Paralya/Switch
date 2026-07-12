
# Imports
from typing import Any

from beet import LootTable
from stewbeet.core import Mem, set_json_encoder


def single_block_drop(name: str, functions: list[dict[str, Any]]) -> dict[str, Any]:
	""" A block loot table dropping a single item with the given functions. """
	return {
		"type": "minecraft:block",
		"pools": [{
			"rolls": 1,
			"bonus_rolls": 0,
			"entries": [{"type": "minecraft:item", "name": name, "functions": functions}],
		}],
	}


def write_loot_tables() -> None:
	""" Build the shared/generic loot tables explicitly under the switch namespace. """
	ns: str = Mem.ctx.project_id
	loot_tables = Mem.ctx.data[ns].loot_tables

	# A player head filled with the looter's name (used to fetch usernames)
	loot_tables["get_username"] = set_json_encoder(LootTable(single_block_drop(
		"minecraft:player_head",
		[{"function": "minecraft:fill_player_head", "entity": "this"}],
	)))

	# A throwaway tagged stone item
	loot_tables["temp_item"] = set_json_encoder(LootTable(single_block_drop(
		"minecraft:stone",
		[{"function": "minecraft:set_components", "components": {"minecraft:custom_data": {ns: {"temp_item": True}}}}],
	)))

