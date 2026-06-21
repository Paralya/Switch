
# Imports
from beet import SoundConfig
from stewbeet.core import Mem, set_json_encoder


def write_sounds() -> None:
	""" Build the sounds.json configs explicitly. The minecraft one silences the vanilla explosion;
		the switch one ("explosion") is unioned with the entries the sounds plugin generates later. """
	# Vanilla override: silence the default explosion sound
	Mem.ctx.assets["minecraft"].sound_config = set_json_encoder(SoundConfig({
		"entity.generic.explode": {"replace": True, "sounds": [], "subtitle": "subtitles.entity.generic.explode"},
	}))

	# Custom switch explosion (the sounds plugin re-encodes this config after merging its own entries)
	Mem.ctx.assets["switch"].sound_config = set_json_encoder(SoundConfig({
		"explosion": {
			"sounds": ["random/explode1", "random/explode2", "random/explode3", "random/explode4"],
			"subtitle": "subtitles.entity.generic.explode",
		},
	}))
