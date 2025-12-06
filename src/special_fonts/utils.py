
# Imports
import stouputils as stp
from beet import Font, Texture
from PIL import Image
from stewbeet.core import Mem, write_function

from .shared_memory import *


# Generate few textures
def generate_few_textures() -> None:
	""" Generate the few textures needed for the special fonts such as:

	- Black image (1x1) that will be used for smooth transitions
	- Sapphire image (16x16) that will be used when talking about money
	"""
	# Generate the black pixel texture and add it to the providers
	black_pixel = Image.new("RGB", (1, 1), (0, 0, 0))
	Mem.ctx.assets.textures[SharedMemory.BLACK_PIXEL_TEXTURE_PATH] = Texture(black_pixel)
	SharedMemory.providers.append({"type":"bitmap","file":(SharedMemory.BLACK_PIXEL_TEXTURE_PATH + ".png"),"ascent":4000,"height":8000,"chars":[SharedMemory.BLACK_PIXEL_CHAR]})

	# Add the sapphire texture and font to the providers
	SharedMemory.providers.append({"type":"bitmap","file":"switch:item/sapphire.png","ascent":8,"chars":["S"]})


# Links
def write_black_transition() -> None:
	write_function("switch:utils/black_transition", f"""
# Seconds for (fade in, hold, fade out) = (1.5, 1.5, 1.5)
title @s times 10 30 10

# Display the black pixel
title @s title {{"text":"{SharedMemory.BLACK_PIXEL_CHAR}","font":"switch:main"}}
""")



# Functions
def write_final_file() -> None:
	Mem.ctx.assets.fonts[SharedMemory.FONT_FILE_PATH] = Font(stp.json_dump({"providers": SharedMemory.providers}))

