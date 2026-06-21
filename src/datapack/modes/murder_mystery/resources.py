
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the murder_mystery mode. """
	advancements = Mem.ctx.data["switch"].advancements

	advancements["murder_mystery/entity_hurt_player"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {"trigger": "minecraft:entity_hurt_player"}},
		"requirements": [["requirement"]],
		"rewards": {"function": "switch:modes/murder_mystery/calls/entity_hurt_player"},
	}))

	advancements["murder_mystery/right_click"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:using_item",
			"conditions": {"item": {"predicates": {"minecraft:custom_data": "{switch:{murder_knife:true}}"}}},
		}},
		"rewards": {"function": "switch:modes/murder_mystery/throw/advancement"},
	}))
