

# Constants
from stewbeet import JsonDict


class SharedMemory:

	# Constants
	FONT_FILE_PATH: str = "switch:main"
	BLACK_PIXEL_TEXTURE_PATH: str = "switch:font/special/black_pixel"
	BLACK_PIXEL_CHAR: str = "B"

	# Variables
	providers: list[JsonDict] = []	# Providers variables (used for the final font file)  # noqa: RUF012

