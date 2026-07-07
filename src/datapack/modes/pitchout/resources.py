
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the pitchout mode. """
	Mem.ctx.data["switch"].advancements["pitchout/hurt_entity"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:player_hurt_entity",
			"conditions": {"entity": {"entity_type": "minecraft:player"}},
		}},
		"rewards": {"function": "switch:modes/pitchout/advancements/hurt_player"},
	}))
