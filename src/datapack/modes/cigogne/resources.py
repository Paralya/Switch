
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the cigogne mode. """
	Mem.ctx.data["switch"].advancements["cigogne/killed_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:player_killed_entity",
			"conditions": {"entity": {"type": "player"}},
		}},
		"rewards": {"function": "switch:modes/cigogne/killed_player"},
	}))
