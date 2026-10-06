
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder

from ...definitions.predicates import entity_properties


def write_resources() -> None:
	""" Datapack resources owned by the cigogne mode. """
	ns: str = Mem.ctx.project_id
	Mem.ctx.data[ns].advancements["cigogne/killed_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:player_killed_entity",
			"conditions": {"entity": entity_properties({"entity_type": "minecraft:player"})},
		}},
		"rewards": {"function": f"{ns}:modes/cigogne/killed_player"},
	}))
