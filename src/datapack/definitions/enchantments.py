
# Imports
from beet import Enchantment
from stewbeet.core import Mem, set_json_encoder


def write_enchantments() -> None:
	""" Build the shared/generic enchantments explicitly under the switch namespace. """
	ns: str = Mem.ctx.project_id
	enchantments = Mem.ctx.data[ns].enchantments

	# Applies minecraft:damage_immunity in any slot (not obtainable through survival gameplay, hence the 99 costs)
	enchantments["invulnerable"] = set_json_encoder(Enchantment({
		"description": "Invulnerable",
		"supported_items": "minecraft:stone",
		"exclusive_set": "#minecraft:exclusive_set/armor",
		"weight": 1,
		"max_level": 1,
		"min_cost": {"base": 99, "per_level_above_first": 1},
		"max_cost": {"base": 99, "per_level_above_first": 1},
		"anvil_cost": 99,
		"slots": ["any"],
		"effects": {"minecraft:damage_immunity": [{"effect": {}}]},
	}), max_level=-1)

