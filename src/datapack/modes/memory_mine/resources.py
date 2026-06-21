
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the memory_mine mode. """
	Mem.ctx.data["switch"].advancements["memory_mine/right_click"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:using_item",
			"conditions": {"item": {"predicates": {"minecraft:custom_data": "{switch:{memory_mine:true}}"}}},
		}},
		"rewards": {"function": "switch:modes/memory_mine/place_mine"},
	}))
