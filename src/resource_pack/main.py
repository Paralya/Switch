
# Imports
from beet import Context

from .lang import write_lang
from .shaders import write_shaders
from .sounds import write_sounds
from .textures import write_textures


def load_resource_pack_json(ctx: Context) -> None:
	""" Build the hand-authored resource pack content explicitly in Python (languages, sounds.json,
		GLSL shaders, tooltip textures). Binary warden sound overrides are co-located in the
		warden_escape mode (registered from its resources.py). """
	write_lang()
	write_sounds()
	write_shaders()
	write_textures()

