
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the gay_shooter mode. """
	advancements = Mem.ctx.data["switch"].advancements

	advancements["gay_shooter/shot_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:player_hurt_entity",
			"conditions": {"player": {"equipment": {"mainhand": {"items": ["bow"]}}}},
		}},
		"rewards": {"function": "switch:modes/gay_shooter/shot_player"},
	}))

	advancements["gay_shooter/shot_taken"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:entity_hurt_player"}},
		"rewards": {"function": "switch:modes/gay_shooter/shot_taken"},
	}))
