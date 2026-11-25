""" Icons of the 13 lobby jumps, two per jump, in the shape of the Stardust Fragment: its dim outline while the jump is to do, the whole fragment pulsing once done.

The two states differ by shape and brightness besides hue, so they read apart without colour vision.
`player/setup_lobby_jumps` picks `{ns}:jump/<key>_todo` or `{ns}:jump/<key>_done` from the jump's advancement.
"""
# Imports
import colorsys
import math

import stouputils as stp
from beet import ItemModel, Model, Texture
from PIL import Image
from stewbeet import JsonDict, Mem

COLORS: dict[str, tuple[int, int, int]] = {
	"green": (60, 210, 116), "white": (222, 230, 240), "blue": (0, 0, 255), "yellow": (250, 212, 32),
	"red": (234, 50, 68), "brown": (150, 86, 40), "purple": (156, 72, 220), "dripstone": (184, 146, 112),
	"pink": (244, 136, 184), "bricks": (190, 84, 64), "obsidian": (88, 36, 150), "duality": (204, 120, 60),
	"graviglitch": (136, 138, 146),
}
""" Midtone of each jump's fragment, after its lobby block and the palette of `src/recolor.py`. """

FRAGMENT: str = "assets/textures/stardust/stardust_fragment.png"
FRAGMENT_TONES: dict[tuple[int, int, int], int] = {(0, 104, 185): 0, (0, 175, 238): 1, (103, 215, 255): 2, (196, 247, 255): 3}
""" The fragment is 16 x 16 pixel art drawn at 32 x 32. Its four colours become tones: 0 outline, 1 body, 2 light, 3 heart. """

FRAMES: int = 12
ANIMATION: JsonDict = {"frametime": 3, "interpolate": True}

SHADOW_HUE: tuple[float, float] = (0.68, 0.06)
LIGHT_HUE: tuple[float, float] = (0.14, 0.08)
""" Hue a tone leans toward, and by which fraction of the way: shadows turn blue, lights turn yellow. """


def write_jump_icons() -> None:
	""" Register a texture, a model and an item model for both states of every jump, each done fragment pulsing out of step with the others. """
	ns: str = Mem.ctx.project_id
	tones: dict[tuple[int, int], int] = fragment_tones()
	for index, (key, rgb) in enumerate(COLORS.items()):
		textures: dict[str, Texture] = {
			"todo": Texture(todo_fragment(rgb, tones)),
			"done": Texture(done_strip(rgb, tones, phase=index * FRAMES // len(COLORS)), mcmeta={"animation": ANIMATION}),
		}
		for state, texture in textures.items():
			name: str = f"jump/{key}_{state}"
			Mem.ctx.assets[ns].textures[f"item/{name}"] = texture
			Mem.ctx.assets[ns].models[f"item/{name}"] = Model(stp.json_dump({"parent": "minecraft:item/generated", "textures": {"layer0": f"{ns}:item/{name}"}}))
			Mem.ctx.assets[ns].item_models[name] = ItemModel(stp.json_dump({"model": {"type": "minecraft:model", "model": f"{ns}:item/{name}"}}))


def fragment_tones() -> dict[tuple[int, int], int]:
	""" Every pixel of the fragment at 16 x 16 with its tone. """
	fragment: Image.Image = Image.open(f"{Mem.ctx.directory}/{FRAGMENT}").convert("RGBA")
	rgba: bytes = fragment.tobytes()
	tones: dict[tuple[int, int], int] = {}
	for y in range(16):
		for x in range(16):
			offset: int = 4 * (2 * y * fragment.width + 2 * x)
			red, green, blue, alpha = rgba[offset:offset + 4]
			if alpha:
				tones[x, y] = FRAGMENT_TONES[red, green, blue]
	return tones


def todo_fragment(rgb: tuple[int, int, int], tones: dict[tuple[int, int], int]) -> Image.Image:
	image: Image.Image = Image.new("RGBA", (16, 16))
	dim: tuple[int, int, int, int] = shade(rgb, 0.48, SHADOW_HUE, saturation=0.55)
	for pixel in (pixel for pixel, tone in tones.items() if tone == 0):
		image.putpixel(pixel, dim)
	return image


def done_strip(rgb: tuple[int, int, int], tones: dict[tuple[int, int], int], phase: int) -> Image.Image:
	""" The animation frames stacked from the top, starting `phase` frames into the pulse. The small sparkle at the bottom right pulses against the big one. """
	strip: Image.Image = Image.new("RGBA", (16, 16 * FRAMES))
	for frame in range(FRAMES):
		pulse: float = math.sin(2 * math.pi * (frame + phase) / FRAMES)
		for (x, y), tone in tones.items():
			strip.putpixel((x, 16 * frame + y), done_tone(rgb, tone, -pulse if x > 9 and y > 9 else pulse))
	return strip


def done_tone(rgb: tuple[int, int, int], tone: int, glow: float) -> tuple[int, int, int, int]:
	""" The colour of a tone of a done fragment, `glow` from -1 to 1 dimming or brightening all but the outline. """
	lightness: float = colorsys.rgb_to_hls(*(c / 255 for c in rgb))[1]
	if tone == 0:
		return shade(rgb, max(lightness - 0.30, 0.16), SHADOW_HUE)
	if tone == 3:
		return shade(rgb, 0.84 + 0.12 * glow, LIGHT_HUE, saturation=0.5)
	return shade(rgb, lightness + (tone - 1) * 0.14 + (tone * 0.05) * glow, LIGHT_HUE)


def shade(rgb: tuple[int, int, int], lightness: float, hue: tuple[float, float], saturation: float = 1) -> tuple[int, int, int, int]:
	""" The colour of `rgb` at an absolute HLS lightness, its hue leaning toward `hue`. """
	h, _, s = colorsys.rgb_to_hls(*(c / 255 for c in rgb))
	target, fraction = hue
	h += ((target - h + 0.5) % 1 - 0.5) * fraction
	r, g, b = colorsys.hls_to_rgb(h % 1, min(max(lightness, 0), 1), min(s * saturation, 1))
	return (round(r * 255), round(g * 255), round(b * 255), 255)

