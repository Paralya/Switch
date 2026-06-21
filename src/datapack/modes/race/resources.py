
# Imports
from typing import Any

from beet import Advancement, BlockTag, Predicate
from stewbeet.core import Mem, set_json_encoder

# Standard 16 wool/concrete colours, in vanilla order
COLORS: tuple[str, ...] = (
	"white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray",
	"light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black",
)


def same_score(objective: str, target: str) -> dict[str, Any]:
	""" entity_scores predicate where 'objective' equals the fixed #target score on switch.data. """
	bound: dict[str, Any] = {"type": "minecraft:score", "target": {"type": "minecraft:fixed", "name": target}, "score": "switch.data"}
	return {"condition": "minecraft:entity_scores", "entity": "this", "scores": {objective: {"min": bound, "max": bound}}}


def write_resources() -> None:
	""" Datapack resources owned by the race / kart_racer mode. """
	switch = Mem.ctx.data["switch"]

	# Advancements (race + kart_racer share the inventory_changed signal)
	switch.advancements["race/inventory_changed"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:inventory_changed"}},
		"rewards": {"function": "switch:modes/race/advancements/inventory_changed"},
	}))
	switch.advancements["kart_racer/inventory_changed"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:inventory_changed"}},
		"rewards": {"function": "switch:modes/kart_racer/advancements/inventory_changed"},
	}))

	# Predicates
	switch.predicates["has_same_classement"] = set_json_encoder(Predicate(same_score("switch.temp.classement", "#predicate")))
	switch.predicates["has_same_respawn_cp_id"] = set_json_encoder(Predicate(same_score("switch.temp.id", "#respawn_cp_id")))

	# Kart surface block tags
	switch.block_tags["kart_surfaces/fast"] = set_json_encoder(BlockTag({"values": [f"{c}_concrete" for c in COLORS]}))
	switch.block_tags["kart_surfaces/slippery"] = set_json_encoder(BlockTag({"values": ["ice", "packed_ice", "blue_ice"]}))
	switch.block_tags["kart_surfaces/slow"] = set_json_encoder(BlockTag({"values": [
		"dirt", "coarse_dirt", "sand", "soul_sand", "mud",
		"mud_brick_slab", "mud_brick_stairs", "mud_brick_wall", "snow_block", "snow",
	]}))
