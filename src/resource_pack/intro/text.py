""" Text of the intro card, drawn with the game's own bitmap font into the texture a chain samples. """
# Imports
from dataclasses import dataclass

from beet import ResourcePack
from beet.contrib.vanilla import Vanilla
from PIL import Image
from stewbeet import Mem

# Constants
TEXT_WIDTH: int = 256
""" Width of the text texture, in font pixels: the longest line a mode can show. """

LINE_HEIGHT: int = 12
""" Height of one text line: 3 pixels of accents, 7 of capitals, 2 of descenders. """

BASELINE: int = 10
""" Row of a line its glyphs sit on, counted from the top of the line. """

TEXT_SCALE: float = 0.9
""" Size of the card texts relative to the layout unit, rounded per text to whole screen pixels per font pixel. """

TEXT_GLSL: str = f"""
#define TEXT_WIDTH {TEXT_WIDTH}.0
#define LINE_HEIGHT {LINE_HEIGHT}.0

uniform sampler2D TextSampler;

float ease_out(float x) {{
    x = 1.0 - clamp(x, 0.0, 1.0);
    return 1.0 - x * x * x;
}}

// Screen pixels per font pixel for a text `size` layout units tall, whole so the font pixels stay square.
float text_scale(float size, float unit) {{
    return max(1.0, floor(size * unit * {TEXT_SCALE} + 0.5));
}}

// Coverage of one text line, centred on `center` (screen pixels, y down), `scale` screen pixels per font pixel.
float text(int line, vec2 pixel, vec2 center, float scale) {{
    vec2 local = floor((pixel - center) / scale + vec2(TEXT_WIDTH, LINE_HEIGHT) * 0.5);
    if (local.x < 0.0 || local.x >= TEXT_WIDTH || local.y < 0.0 || local.y >= LINE_HEIGHT) return 0.0;
    return texelFetch(TextSampler, ivec2(local) + ivec2(0, line * int(LINE_HEIGHT)), 0).r;
}}

// White text over its own drop shadow.
vec3 draw_text(vec3 color, int line, vec2 pixel, vec2 center, float scale, float alpha) {{
    color = mix(color, vec3(0.0), 0.75 * alpha * text(line, pixel - vec2(scale), center, scale));
    return mix(color, vec3(1.0), alpha * text(line, pixel, center, scale));
}}
"""
""" GLSL reading a text texture of this module, for a shader that samples it as `Text`. """


# Classes
@dataclass(frozen=True)
class Glyph:
	""" One character of the vanilla bitmap font. """

	image: Image.Image
	""" Its cell, white where the glyph is drawn. """

	ascent: int
	""" Rows of the cell that sit above the baseline. """

	advance: int
	""" Pixels to the next character, as the game computes it: the drawn width plus one. """


# Functions
def text_texture(lines: tuple[str, ...], glyphs: dict[str, Glyph]) -> Image.Image:
	""" Draw each line centred in its own LINE_HEIGHT band of a greyscale texture, white on black. """
	texture: Image.Image = Image.new("L", (TEXT_WIDTH, LINE_HEIGHT * len(lines)))
	for index, line in enumerate(lines):
		width: int = sum(glyphs[char].advance for char in line) - 1
		assert width <= TEXT_WIDTH, f"'{line}' is {width} pixels wide, an intro line holds {TEXT_WIDTH}"

		x: int = (TEXT_WIDTH - width) // 2
		for char in line:
			glyph: Glyph = glyphs[char]
			texture.paste(glyph.image, (x, index * LINE_HEIGHT + BASELINE - glyph.ascent), glyph.image)
			x += glyph.advance
	return texture


def vanilla_glyphs() -> dict[str, Glyph]:
	""" Every character of the bitmap providers of the default vanilla font, with the advances the game gives them. """
	vanilla = Vanilla(ctx=Mem.ctx)
	vanilla.mount("assets/minecraft/font")
	assets: ResourcePack = vanilla.mount("assets/minecraft/textures/font").assets

	glyphs: dict[str, Glyph] = {" ": Glyph(image=Image.new("L", (1, 1)), ascent=0, advance=4)}
	for provider in assets.fonts["minecraft:include/default"].data["providers"]:
		if provider["type"] != "bitmap":
			continue

		sheet: Image.Image = assets.textures[provider["file"].removesuffix(".png")].image.convert("RGBA").getchannel("A")
		rows: list[str] = provider["chars"]
		cell_width, cell_height = sheet.width // len(rows[0]), sheet.height // len(rows)
		for row, chars in enumerate(rows):
			for column, char in enumerate(chars):
				cell: Image.Image = sheet.crop((column * cell_width, row * cell_height, (column + 1) * cell_width, (row + 1) * cell_height))
				box = cell.getbbox()
				if box is not None and char not in glyphs:
					glyphs[char] = Glyph(image=cell.point(lambda alpha: 255 if alpha else 0), ascent=provider["ascent"], advance=box[2] + 1)
	return glyphs

