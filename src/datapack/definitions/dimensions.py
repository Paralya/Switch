
# Imports
from beet.contrib.worldgen import Dimension
from stewbeet.core import Mem, set_json_encoder


def void_generator() -> dict:
	""" A fresh flat-void generator dict (shared shape by the game & void dimensions). """
	return {
		"type": "minecraft:overworld",
		"generator": {
			"type": "minecraft:flat",
			"settings": {
				"biome": "minecraft:the_void",
				"lakes": False,
				"features": False,
				"layers": [],
				"structure_overrides": [],
			},
		},
	}


def write_dimensions() -> None:
	""" Build the shared dimensions explicitly under the switch namespace.
		(Dimension is registered as a custom type in load_datapack_json beforehand.) """
	switch = Mem.ctx.data["switch"]
	switch[Dimension]["game"] = set_json_encoder(Dimension(void_generator()))
	switch[Dimension]["void"] = set_json_encoder(Dimension(void_generator()))
