""" Coordinate helpers shared by the map generation files. """
# Imports
from stewbeet.core import Mem

from .shared_memory import SharedMemory


# Functions
def convert_tick_to_strings(tick: int, name: str) -> tuple[str, str]:
	""" Converts "tick" in entry to formatted strings such as "XX seconds (XXmXXs)" or "XX seconds"
	if the tick is less than 60 and a tellraw command to display the time

	Args:
		tick: The tick to convert
		name: The name of the map
	Returns:
		(str, str): The formatted strings
	"""
	ns: str = Mem.ctx.project_id
	# Get variables
	secs: int = tick // 20
	isec: int = secs % 60
	imin: int = secs // 60

	# Convert the tick to a string
	secsString: str = str(isec)
	if isec < 10 and imin > 0:
		secsString = f"0{isec}"
	minsString: str = str(imin)

	# Create the parenthesis string
	parenthesis: str = ""
	if secs >= 60:
		parenthesis = f" ({minsString}m{secsString}s)"

	# Create the tellraw string
	if imin > 0:
		tellraw: str = f'tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Map \'","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"\' regenerated in ","color":"yellow"}},{{"text":"{minsString}","color":"gold"}},{{"text":"m","color":"yellow"}},{{"text":"{secsString}","color":"gold"}},{{"text":"s","color":"yellow"}}]'
	else:
		tellraw: str = f'tellraw @a ["",{{"nbt":"ParalyaWarning","storage":"{ns}:main","interpret":true}},{{"text":" Map \'","color":"yellow"}},{{"text":"{name}","color":"gold"}},{{"text":"\' regenerated in ","color":"yellow"}},{{"text":"{secsString}","color":"gold"}},{{"text":"s","color":"yellow"}}]'

	# Return
	return (f"{secs} seconds{parenthesis}", tellraw)


def calculate_divider(start_pos: tuple[int, ...], end_pos: tuple[int, ...]) -> int:
	""" Calculates the divider of the regeneration area depending on the area
	The more the area is big, the more the divider is big
	The divider is calculated so that the area is divided into 3200 blocks

	Args:
		start_pos (tuple)	: The start position of the regeneration area end_pos (tuple)		: The end position of the regeneration area
	Returns:
		(int)				: The divider
	"""
	area: int = (end_pos[0] - start_pos[0]) * (end_pos[2] - start_pos[2])
	return (area // SharedMemory.BLOCKS_PER_DIVISION + 2)


def get_middle_from_start_and_end(start_pos: tuple[int, ...], end_pos: tuple[int, ...], paste_start_height: int = 0) -> tuple[int, int, int]:
	""" Gets the middle coordinates of the regeneration area

	Args:
		start_pos (tuple)		: The start position of the regeneration area end_pos (tuple)			: The end position of the regeneration area
	Returns:
		(int, int, int)	: The x, y and z coordinates
	"""
	# x and z
	x = int((start_pos[0] + end_pos[0]) / 2)
	z = int((start_pos[2] + end_pos[2]) / 2)

	# Calculate the y coordinate
	decal = paste_start_height - start_pos[1]
	a = start_pos[1] + decal
	b = end_pos[1] + decal
	middle_y = (a + b) / 2
	y = int(middle_y)

	# Return
	return x, y, z


def create_tp_coords_string_from_view(view: tuple[float, float, float, float, float]) -> str:
	""" Creates a string with the tp coordinates

	Args:
		x (int)		: The x coordinate y (int)		: The y coordinate z (int)		: The z coordinate
	Returns:
		(str)		: The tp coordinates string
	"""
	x, y, z = view[:3]
	return f"[{round(x)}.5d, {round(y)}.5d, {round(z)}.5d]"


def create_splitted_coordinates(start_pos: tuple[int, ...], end_pos: tuple[int, ...], divider: int) -> list[list[int]]:
	""" Creates a list with the splitted coordinates of
	the regeneration area depending on the divider argument

	Args:
		start_pos (tuple)	: The start position of the regeneration area end_pos (tuple)		: The end position of the regeneration area divider (int)		: How the coordinates are splitted (default: 1)
	Returns:
		(list[list])	: The splitted coordinates
	"""
	# Prepare the start and end coordinates
	c1 = [start_pos[0], start_pos[2], end_pos[0], end_pos[2]]
	d = (c1[2] - c1[0]) / divider

	# Create the splitted coordinates
	c: list[list[int]] = []
	for i in range(divider):
		# Calculate x1 (the first x coordinate of the clone command)
		x1 = round(c1[0] + d*i)
		# Calculate x2, z1 and z2
		x2 = c1[1]
		z1 = round(c1[0] + d*(i+1))
		z2 = c1[3]

		# Append the coordinates to the list
		c.append([ x1, x2, z1, z2 ])

	# Return
	return c

