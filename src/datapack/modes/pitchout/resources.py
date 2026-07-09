
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the pitchout mode. """
	ns: str = Mem.ctx.project_id
	Mem.ctx.data[ns].advancements["pitchout/hurt_entity"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:player_hurt_entity",
			"conditions": {"entity": {"entity_type": "minecraft:player"}},
		}},
		"rewards": {"function": f"{ns}:modes/pitchout/advancements/hurt_player"},
	}))
