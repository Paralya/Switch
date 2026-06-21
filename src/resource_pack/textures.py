
# Imports
import stouputils as stp
from beet import Texture, TextureMcmeta
from stewbeet.core import Mem, set_json_encoder, texture_mcmeta
# FIXME: in stewbeet there is a write helper for textures ("texture_mcmeta"), may consider using it

ROOT: str = stp.get_root_path(__file__)


def nine_slice(border: int, stretch_inner: bool = False) -> dict:
	""" A GUI nine-slice scaling mcmeta. """
	scaling: dict = {"type": "nine_slice", "width": 100, "height": 100, "border": border}
	if stretch_inner:
		scaling["stretch_inner"] = True
	return {"gui": {"scaling": scaling}}


# Tooltip sprite name -> its mcmeta
TOOLTIPS: dict[str, dict] = {
	"success_background": nine_slice(30),
	"success_frame": nine_slice(15, stretch_inner=True),
	"failure_background": nine_slice(30),
	"failure_frame": nine_slice(15, stretch_inner=True),
}


def write_textures() -> None:
	""" Register the tooltip sprites (binary .png stay on disk under src/resource_pack/textures/)
		with their mcmeta defined inline as Python dicts, under the minecraft namespace. """
	textures = Mem.ctx.assets["minecraft"].textures
	textures_mcmeta = Mem.ctx.assets["minecraft"].textures_mcmeta
	for name, mcmeta in TOOLTIPS.items():
		key: str = f"gui/sprites/tooltip/{name}"
		textures[key] = Texture(source_path=f"{ROOT}/textures/{key}.png")
		textures_mcmeta[key] = set_json_encoder(TextureMcmeta(mcmeta), max_level=-1, indent=4)

