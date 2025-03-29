
# Utility function
from python_datapack.manual.shared_import import *

# Constants
class SharedMemory:
	config: dict = {}
	
	# Constants
	FONT_FILE_PATH: str = "/assets/switch/font/special.json"
	BLACK_PIXEL_TEXTURE_PATH: str = "/assets/switch/textures/font/special/black_pixel.png"
	BLACK_PIXEL_FONT: str = get_next_font()

	# Variables
	providers: list[dict] = []	# Providers variables (used for the final font file)



