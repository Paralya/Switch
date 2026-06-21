
# Imports
from typing import Any

from beet import LootTable
from stewbeet.core import Mem, set_json_encoder

# Plain food items handed out by feed_fast (one entry each)
FOODS: tuple[str, ...] = (
	"apple", "golden_apple", "melon_slice", "sweet_berries", "glow_berries", "carrot", "golden_carrot",
	"potato", "baked_potato", "poisonous_potato", "beetroot", "dried_kelp", "beef", "cooked_beef",
	"porkchop", "cooked_porkchop", "mutton", "cooked_mutton", "chicken", "cooked_chicken", "rabbit",
	"cooked_rabbit", "cod", "cooked_cod", "salmon", "cooked_salmon", "tropical_fish", "pufferfish",
	"bread", "cookie", "pumpkin_pie", "mushroom_stew", "beetroot_soup", "rabbit_stew",
)


def write_resources() -> None:
	""" Datapack resources owned by the feed_fast mode. """
	entries: list[dict[str, Any]] = [{"type": "minecraft:item", "name": f"minecraft:{food}"} for food in FOODS]
	entries.append({"type": "minecraft:item", "name": "minecraft:potion", "functions": [{
		"function": "minecraft:set_components",
		"components": {"minecraft:potion_contents": {"custom_color": 10569486, "custom_effects": [{"id": "minecraft:saturation", "amplifier": 4}]}},
	}]})

	Mem.ctx.data["switch"].loot_tables["feed_fast"] = set_json_encoder(LootTable({
		"pools": [{"rolls": 1, "entries": entries}],
		"functions": [{"function": "minecraft:set_components", "components": {"minecraft:custom_data": "{\"switch\":{}}"}}],
	}))
