
# Imports
import re
from collections.abc import Iterator
from typing import Any, cast

from beet import Context, TextFileBase
from stewbeet import Mem

# Constants
PALETTE: dict[str, str] = {
	"red": "#FF3347",
	"dark_red": "#8F172B",
	"gold": "#FFA600",
	"yellow": "#FFE60A",
	"green": "#2EFF8B",
	"dark_green": "#1FA83C",
	"aqua": "#00E5FF",
	"dark_aqua": "#12A4B8",
	"blue": "#2E9BFF",
	"dark_blue": "#2A35C9",
	"light_purple": "#FF8FD8",
	"dark_purple": "#A53DE0",
	"white": "#E4ECF7",
	"gray": "#AEBBD0",
	"dark_gray": "#6B788F",
}
""" Hex replacement of each named text color. `team modify <team> color` and bossbars only accept names, so they are left alone. """

NAMED_COLOR: re.Pattern[str] = re.compile(rf'("color":\s*"|merge value \{{color:")({"|".join(PALETTE)})"')
""" A text component color, or the advancement category color stored for the `"color":"$(color)"` macros. """


# Main function is run after every plugin that writes a text component of the namespace
def beet_default(ctx: Context) -> None:
	ns: str = Mem.ctx.project_id
	text_files = cast("Iterator[tuple[str, TextFileBase[Any]]]", ctx.data.list_files(".mcfunction", ".json"))
	for path, file in text_files:
		if not path.startswith(f"data/{ns}/"):
			continue
		file.text = NAMED_COLOR.sub(lambda match: f'{match[1]}{PALETTE[match[2]]}"', file.text)

