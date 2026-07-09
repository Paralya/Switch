
# Imports
from beet import Advancement, FunctionTag, Predicate
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the sheepwars mode (incl. the sheepwars dependency signal hooks). """
	ns: str = Mem.ctx.project_id
	switch = Mem.ctx.data[ns]

	switch.advancements["sheepwars/lightning_strike"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:lightning_strike"}},
		"rewards": {"function": f"{ns}:modes/sheepwars/advancements/lightning_strike"},
	}))

	switch.predicates["between/100_and_110"] = set_json_encoder(Predicate({
		"condition": "minecraft:location_check",
		"predicate": {"position": {"y": {"min": 100, "max": 110}}},
	}))

	# Integration hooks into the SheepWars dependency's signal function tags (beet's default 2-space
	# encoder, matching the upstream files).
	hooks = Mem.ctx.data["sheepwars"].function_tags
	hooks["signals/magic_wool_shot"] = FunctionTag({"values": [f"{ns}:modes/sheepwars/magic_wool/slot"]})
	hooks["signals/player_killed"] = FunctionTag({"values": [f"{ns}:modes/sheepwars/advancements/call_player_killed"]})
