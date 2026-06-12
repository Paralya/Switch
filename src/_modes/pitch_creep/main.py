
import stouputils as stp
from stewbeet import Mem, write_function, write_function_tag, write_advancement, write_tag


def pitch_creep_files():
	# Namespace and base path of the mode
	ns: str = Mem.ctx.project_id # equal to "switch"
	mode: str = "pitch_creep"
	path: str = f"{ns}:modes/pitch_creep" # /start, /tick, etc.
	translations: str = f"{ns}:translations/pitch_creep" # _start, _tick, etc.


