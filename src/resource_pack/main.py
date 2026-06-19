
# Imports
import glob
import os

import stouputils as stp
from beet import Context, Language

_HERE: str = os.path.dirname(__file__)


def load_resource_pack_json(ctx: Context) -> None:
	""" Move-and-load the hand-authored resource pack JSON (language files) via Python.
		Binary assets (textures, sounds, shaders) and plugin-generated sounds.json stay static. """
	for path in glob.glob(f"{_HERE}/lang/*.json"):
		key: str = os.path.splitext(os.path.basename(path))[0]
		lang = Language(stp.json_load(path))
		lang.encoder = lambda x: stp.json_dump(x)
		ctx.assets["minecraft"].languages[key] = lang
