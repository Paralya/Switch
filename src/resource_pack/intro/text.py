""" Text of the intro card, drawn with the game's own bitmap font into the texture a chain samples. """
# Imports
from dataclasses import dataclass

from beet import ResourcePack
from PIL import Image

# Constants
TEXT_WIDTH: int = 256
""" Width of the text texture, in font pixels: the longest line a mode can show. """

LINE_HEIGHT: int = 12
""" Height of one text line: 3 pixels of accents, 7 of capitals, 2 of descenders. """

BASELINE: int = 10
""" Row of a line its glyphs sit on, counted from the top of the line. """


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


def vanilla_glyphs(assets: ResourcePack) -> dict[str, Glyph]:
	""" Every character of the bitmap providers of the default vanilla font, with the advances the game gives them.

	Args:
		assets: Vanilla resource pack holding `font/include/default.json` and the `textures/font` it names.
	"""
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

