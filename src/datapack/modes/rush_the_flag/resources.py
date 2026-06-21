
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the rush_the_flag mode. """
	Mem.ctx.data["switch"].advancements["rush_the_flag/break_obsidian"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:tick",
			"conditions": {"player": [{
				"condition": "minecraft:entity_scores",
				"entity": "this",
				"scores": {"switch.temp.break_obsidian": {"min": 1}},
			}]},
		}},
		"rewards": {"function": "switch:modes/rush_the_flag/advancements/break_obsidian"},
	}))
