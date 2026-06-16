
# Imports
from stewbeet import Mem, write_function


# Functions
def write_modes_calls(mode: str, calls: tuple[str, ...] = ("joined", "second", "start", "stop", "tick")):
	ns: str = Mem.ctx.project_id
	for call in calls:
		write_function(f"{ns}:modes/{mode}/calls/{call}", f"""
execute if data storage switch:main {{current_game:"{mode}"}} run function switch:modes/{mode}/{call}
""")

