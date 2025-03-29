
# Imports
import stouputils as stp
from python_datapack.utils.database_helper import *
from user.special_fonts.shared_memory import *
from PIL import Image

def convert_path_to_namespace(path: str) -> str:
	""" Convert an asset file path to a namespaced resource location.\n
	Args:
		path: The full file path to convert (e.g. ".../assets/switch/textures/font/special/black_pixel.png")
	Returns:
		The namespaced resource location (e.g. "switch:textures/font/special/black_pixel")
	"""
	return "switch:" + path.split("switch/textures/")[1]

# Generate few textures
def generate_few_textures() -> None:
	""" Generate the few textures needed for the special fonts such as:
	- Black image (1x1) that will be used for smooth transitions
	- None yet
	"""
	# Generate the black pixel texture and add it to the providers
	os.makedirs(os.path.dirname(SharedMemory.BLACK_PIXEL_TEXTURE_PATH), exist_ok=True)
	black_pixel = Image.new("RGB", (1, 1), (0, 0, 0))
	black_pixel.save(SharedMemory.BLACK_PIXEL_TEXTURE_PATH)
	SharedMemory.providers.append({"type":"bitmap","file":convert_path_to_namespace(SharedMemory.BLACK_PIXEL_TEXTURE_PATH),"ascent":4000,"height":8000,"chars":[SharedMemory.BLACK_PIXEL_FONT]})


# Links
def write_black_transition() -> None:
	write_function(SharedMemory.config, "switch:utils/black_transition", f"""
# Seconds for (fade in, hold, fade out) = (1.5, 1.5, 1.5)
title @s times 10 30 10

# Display the black pixel
title @s title {{"text":"{SharedMemory.BLACK_PIXEL_FONT}","font":"switch:special"}}
""")



# Functions
def write_final_file() -> None:
	write_file(SharedMemory.FONT_FILE_PATH, stp.super_json_dump({"providers": SharedMemory.providers}).replace("\\\\", "\\"))

