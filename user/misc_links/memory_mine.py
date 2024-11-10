
# Imports
from python_datapack.utils.database_helper import *
import math

# Constants
RADIUS: int = 3
N_POINTS: int = 100
ROUND_PRECISION: int = 5
FUNCTION_PATH: str = "switch:modes/memory_mine/zone/particles"

# Main function
@measure_time(progress, "Generated the particles for the memory mine zone")
def main(config: dict) -> None:

	# On file
	write_to_function(config, FUNCTION_PATH, f"""
# Particles
""")
	for i in range(N_POINTS):
		theta: float = i * 2 * math.pi / N_POINTS
		x: float = RADIUS * math.cos(theta)
		z: float = RADIUS * math.sin(theta)
		write_to_function(config, FUNCTION_PATH, f"particle dust{{color:[0.0,1.0,0.0],scale:1.0}} ~{round(x, ROUND_PRECISION)} ~ ~{round(z, ROUND_PRECISION)} 0 0 0 0 5 force\n")
	write_to_function(config, FUNCTION_PATH, f"""particle dust{{color:[0.0,0.75,0.0],scale:2.0}} ~ ~ ~ 2 0 2 0 10 force

# Sound & glowing
playsound block.note_block.harp ambient @a[distance=..50] ~ ~ ~ 1 1 1
effect give @a[tag=!detached,gamemode=adventure,distance=..3] glowing 1 0 true
""")

