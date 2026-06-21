
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the castagne mode. """
	Mem.ctx.data["switch"].advancements["castagne/entity_hurt_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:entity_hurt_player"}},
		"requirements": [["requirement"]],
		"rewards": {"function": "switch:modes/castagne/calls/entity_hurt_player"},
	}))
