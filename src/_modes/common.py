
# Imports
import stouputils as stp
from .definitions import write_modes_load_file
from stewbeet import Mem, write_function


# Functions
def write_modes_calls(mode: str):
	ns: str = Mem.ctx.project_id
	for call in ("joined", "second", "start", "stop", "tick"):
		write_function(f"{ns}:modes/{mode}/calls/{call}", f"""
execute if data storage switch:main {{current_game:"{mode}"}} run function switch:modes/{mode}/joined
""")

