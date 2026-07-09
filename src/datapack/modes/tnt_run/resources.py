
# Imports
from beet import BlockTag
from stewbeet.core import Mem, set_json_encoder


def write_resources() -> None:
	""" Datapack resources owned by the tnt_run mode. """
	ns: str = Mem.ctx.project_id
	Mem.ctx.data[ns].block_tags["tnt_run"] = set_json_encoder(BlockTag({"values": ["tnt", "sand", "gravel"]}))
