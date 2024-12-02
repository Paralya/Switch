
# Utility function
from python_datapack.manual.shared_import import *

# Utils functions for fonts (item start at 0x0000, pages at 0xa000)
# Return the character that will be used for font, ex: "\u0002" with i = 2
next_font: int = 0
def get_font(i: int):
	i += 0x0020	# Minecraft only allow starting this value
	if i > 0xffff:
		error(f"Font index {i} is too big. Maximum is 0xffff.")
	return f"\\u{i:04x}"
def get_next_font() -> str:	# Returns an incrementing value for each craft
	global next_font
	next_font += 1
	return get_font(next_font)

# Constants
class SharedMemory:
	config: dict = {}
	
	# Constants
	FONT_FILE_PATH: str = "/assets/switch/font/special.json"
	BLACK_PIXEL_TEXTURE_PATH: str = "/assets/switch/textures/font/special/black_pixel.png"
	BLACK_PIXEL_FONT: str = get_next_font()

	# Variables
	providers: list[dict] = []	# Providers variables (used for the final font file)



