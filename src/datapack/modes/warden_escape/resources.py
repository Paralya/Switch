
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder

from ..common import register_sounds


def write_resources() -> None:
	""" Datapack resources owned by the warden_escape mode. """
	Mem.ctx.data["switch"].advancements["warden_escape/laser_beam"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:entity_killed_player",
			"conditions": {
				"entity": {"entity_type": "minecraft:warden"},
				"killing_blow": {"tags": [{"id": "minecraft:bypasses_armor", "expected": True}]},
			},
		}},
		"rewards": {"function": "switch:modes/warden_escape/calls/laser_beam"},
	}))

	# Binary vanilla warden sound overrides (minecraft namespace)
	register_sounds("warden_escape", ns="minecraft")
