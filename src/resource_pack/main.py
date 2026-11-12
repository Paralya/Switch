
# Imports
from .intro.card import write_intro_effects
from .intro.role import write_role_effects
from .intro.text import Glyph, vanilla_glyphs
from .shaders import write_shaders
from .sounds import write_sounds
from .textures import write_textures


def load_resource_pack_json() -> None:
	""" Build the hand-authored resource pack content explicitly in Python (sounds.json,
		GLSL shaders, tooltip textures). Binary warden sound overrides are co-located in the
		warden_escape mode (registered from its resources.py). """
	write_sounds()
	write_shaders()
	glyphs: dict[str, Glyph] = vanilla_glyphs()
	write_intro_effects(glyphs)
	write_role_effects(glyphs)
	write_textures()

