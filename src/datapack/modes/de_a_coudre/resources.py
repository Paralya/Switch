
# Imports
from beet import BlockTag
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the de_a_coudre mode (also used by mlg_a_coudre & simultaneous_jump). """
	ns: str = Mem.ctx.project_id
	Mem.ctx.data[ns].block_tags["de_a_coudre"] = set_json_encoder(BlockTag({
		"values": ["#wool", "emerald_block", "water"],
	}))
