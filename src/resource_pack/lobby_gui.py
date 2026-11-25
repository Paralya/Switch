""" Overlay drawn over the whole inventory screen of lobby players, and over the effects sidebar on its right.

An item model is at most 48 units wide at a GUI scale of 4, 192 GUI pixels, so the drawing is split in two oversized items.
Both are flat planes at scale 4, one texel per GUI pixel: texel (tx, ty) of `lobby.png` lands on GUI pixel (tx - 8, ty - 20) of the inventory screen.
The client draws slots in order, so the main part sits in the first slot of the grid: the jumps, the hotbar and the offhand are drawn over it.
"""
# Imports
from typing import NamedTuple

import stouputils as stp
from beet import ItemModel, Model, Texture
from stewbeet import JsonDict, Mem

ROOT: str = stp.get_root_path(__file__)


class OverlayPart(NamedTuple):
	slot: int
	""" The part sits in inventory.<slot>, and its display translation is measured from that slot. """
	x: tuple[int, int]
	""" Model x span of the plane, in units of 4 GUI pixels. """
	u: tuple[float, float]
	""" Horizontal UV span in `lobby.png` (320 x 192 px, 20 px per UV unit). """
	translation: tuple[int, int]


PARTS: dict[str, OverlayPart] = {
	"lobby": OverlayPart(slot=0, x=(-16, 32), u=(0, 9.6), translation=(72, 16)),
	"lobby_wing": OverlayPart(slot=26, x=(2, 32), u=(9.6, 15.6), translation=(48, 52)),
}

HIDDEN: JsonDict = {"scale": [0, 0, 0]}
""" Every display but the GUI, should a player end up holding a part or dropping it. """


def write_lobby_gui() -> None:
	""" Register the overlay texture and one item model per part. """
	ns: str = Mem.ctx.project_id
	texture: str = f"{ns}:item/gui/lobby"
	Mem.ctx.assets[ns].textures["item/gui/lobby"] = Texture(source_path=f"{ROOT}/textures/item/gui/lobby.png")

	for name, part in PARTS.items():
		Mem.ctx.assets[ns].models[f"item/gui/{name}"] = Model(stp.json_dump({
			"textures": {"layer0": texture, "particle": texture},
			"elements": [{
				"from": [part.x[0], -16, 15.9375],
				"to": [part.x[1], 32, 16],
				"faces": {"south": {"uv": [part.u[0], 0, part.u[1], 16], "texture": "#layer0"}},
			}],
			"display": {
				"gui": {"translation": [*part.translation, -76], "scale": [4, 4, 4]},
				**dict.fromkeys(("firstperson_righthand", "firstperson_lefthand", "thirdperson_righthand", "thirdperson_lefthand", "ground", "head", "fixed"), HIDDEN),
			},
			"gui_light": "front",
		}, max_level=3))
		Mem.ctx.assets[ns].item_models[f"gui/{name}"] = ItemModel(stp.json_dump({
			"model": {"type": "minecraft:model", "model": f"{ns}:item/gui/{name}"},
			"oversized_in_gui": True,
		}, max_level=3))

