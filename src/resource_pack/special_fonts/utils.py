
# Imports
import stouputils as stp
from beet import Font
from stewbeet.core import Mem

from .shared_memory import SharedMemory


# Generate few textures
def generate_few_textures() -> None:
	""" Add the sapphire glyph (16x16), shown when talking about money, to the special font. """
	ns: str = Mem.ctx.project_id
	SharedMemory.providers.append({"type":"bitmap","file":f"{ns}:item/sapphire.png","ascent":8,"chars":["S"]})


# Functions
def write_final_file() -> None:
	ns: str = Mem.ctx.project_id
	Mem.ctx.assets.fonts[f"{ns}:{SharedMemory.FONT_FILE_PATH}"] = Font(stp.json_dump({"providers": SharedMemory.providers}))

