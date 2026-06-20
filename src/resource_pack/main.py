
# Imports
import glob
import os

import stouputils as stp
from beet import Context, Language, ResourcePack

_HERE: str = os.path.dirname(__file__)


def load_resource_pack_json(ctx: Context) -> None:
	""" Move-and-load the hand-authored resource pack JSON (language files) via Python, then merge
		the static passthrough assets (binary textures/sounds, GLSL shaders, vanilla sounds.json
		overrides) which can't be expressed as code. """
	for path in glob.glob(f"{_HERE}/lang/*.json"):
		key: str = os.path.splitext(os.path.basename(path))[0]
		lang = Language(stp.json_load(path))
		lang.encoder = lambda x: stp.json_dump(x)
		ctx.assets["minecraft"].languages[key] = lang

	# Merge the static passthrough resource pack (binary assets + vanilla overrides). The switch
	# sounds.json here ("explosion") is unioned with the entries the sounds plugin generates later.
	ctx.assets.merge(ResourcePack(path=f"{_HERE}/_static"))
