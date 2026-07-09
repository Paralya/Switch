
# Imports
from beet import Advancement
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the capture_the_flag mode. """
	ns: str = Mem.ctx.project_id
	Mem.ctx.data[ns].advancements["capture_the_flag/right_click"] = set_json_encoder(Advancement({
		"criteria": {"requirement": {
			"trigger": "minecraft:using_item",
			"conditions": {"item": {"predicates": {"minecraft:custom_data": f"{{{ns}:{{ctf_class:true}}}}"}}},
		}},
		"rewards": {"function": f"{ns}:modes/capture_the_flag/right_click"},
	}))
