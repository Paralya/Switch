""" End of game recap: one chat line per player, ranked, with the columns the mode asked for.

The ranking is a selection loop rather than a sort: Minecraft has no "order this selector by score",
so the best player still unlisted is picked, printed, marked, and the function calls itself again.
"""
# Imports
from dataclasses import dataclass

from stewbeet import Mem, write_function


# Classes
@dataclass(frozen=True, kw_only=True)
class RecapColumn:
	""" One score shown on a recap line. """

	objective: str
	""" Name under switch.temp, ex: "kills" gives the objective switch.temp.kills. """

	criterion: str
	""" Criterion the objective is created with, ex: "playerKillCount". """

	color: str
	""" Colour of the number, ex: "red". """

	label_fr: str
	""" French word following the number, ex: "morts". """

	label_en: str
	""" English word following the number, ex: "deaths". """

	divide: int = 1
	""" Divisor applied once before printing, for the criteria that count in tenths. """


@dataclass(frozen=True, kw_only=True)
class RecapLayout:
	""" The columns one family of modes shows, named after the function a mode calls to pick it. """

	name: str
	""" Function name under recap/start, ex: "points" for switch:modes/_common/recap/start/points. """

	columns: tuple[RecapColumn, ...]
	""" Columns shown left to right. The first one also orders the ranking. """


# Constants
POINTS: RecapColumn = RecapColumn(objective="points", criterion="dummy",                                color="gold",         label_fr="points", label_en="points")
KILLS:  RecapColumn = RecapColumn(objective="kills",  criterion="playerKillCount",                      color="red",          label_fr="kills",  label_en="kills")
DEATHS: RecapColumn = RecapColumn(objective="deaths", criterion="deathCount",                           color="aqua",         label_fr="morts",  label_en="deaths")
DAMAGE: RecapColumn = RecapColumn(objective="damage", criterion="minecraft.custom:minecraft.damage_dealt", color="light_purple", label_fr="dégâts", label_en="damage", divide=10)
""" Damage dealt is counted in tenths of a health point, so it is divided back before printing. """

LAYOUTS: tuple[RecapLayout, ...] = (
	RecapLayout(name="kills",  columns=(KILLS, DEATHS)),
	RecapLayout(name="points", columns=(POINTS, KILLS, DEATHS)),
	RecapLayout(name="damage", columns=(KILLS, DEATHS, DAMAGE)),
)
""" One entry per family of modes, picked by calling switch:modes/_common/recap/start/<name>. """

COLUMNS: tuple[RecapColumn, ...] = (POINTS, KILLS, DEATHS, DAMAGE)
""" Every column any layout can show. All of them are created and removed, whatever the layout. """

RANK: str = "recap_rank"
""" Objective holding the ranking key, a copy of the layout's first column. """


# Functions
def score(column: RecapColumn, lang: int) -> str:
	""" The number and its label, as the two text components of one recap column.

	Args:
		column (RecapColumn): The column to render
		lang   (int):         0 for French, 1 for English
	Returns:
		str: The two components, comma separated

	Examples:
		>>> score(DEATHS, 1).endswith('{"text":" deaths","color":"gray"}')
		True
	"""
	ns: str = Mem.ctx.project_id
	label: str = column.label_fr if lang == 0 else column.label_en
	return (f'{{"score":{{"name":"@s","objective":"{ns}.temp.{column.objective}"}},"color":"{column.color}"}},'
		f'{{"text":" {label}","color":"gray"}}')


def line(layout: RecapLayout, lang: int) -> str:
	""" The whole tellraw listing one player, executed as that player.

	Args:
		layout (RecapLayout): The layout whose columns are shown
		lang   (int):         0 for French, 1 for English
	Returns:
		str: The tellraw command
	"""
	ns: str = Mem.ctx.project_id
	columns: str = ',{"text":", ","color":"dark_gray"},'.join(score(column, lang) for column in layout.columns)
	return (f'tellraw @a[scores={{{ns}.lang={lang}}},tag=!detached] ["",{{"text":"- ","color":"dark_gray"}},'
		f'{{"selector":"@s"}},{{"text":" : ","color":"dark_gray"}},{columns}]')


def write_recap() -> None:
	""" Write the shared recap functions at switch:modes/_common/recap/* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/_common/recap"
	objectives: tuple[str, ...] = (*(f"{ns}.temp.{column.objective}" for column in COLUMNS), f"{ns}.temp.{RANK}")

	# /start/<layout> (one entry point per layout, so the call site says which columns it wants)
	for index, layout in enumerate(LAYOUTS):
		created: str = "\n".join(f"scoreboard objectives add {ns}.temp.{c.objective} {c.criterion}" for c in COLUMNS)
		write_function(f"{path}/start/{layout.name}", f"""
{created}
scoreboard objectives add {ns}.temp.{RANK} dummy
scoreboard players set #recap_layout {ns}.data {index}
""")

	# /stop
	write_function(f"{path}/stop", "\n" + "".join(f"scoreboard objectives remove {name}\n" for name in objectives))

	# /show
	initialized: str = "\n".join(f"scoreboard players add @a[tag=!detached] {ns}.temp.{c.objective} 0" for c in COLUMNS)
	divided: str = "\n".join(
		f"scoreboard players operation @a[tag=!detached] {ns}.temp.{c.objective} /= #{c.divide} {ns}.data"
		for c in COLUMNS if c.divide > 1)
	ranked: str = "\n".join(
		f"execute if score #recap_layout {ns}.data matches {index} as @a[tag=!detached] "
		f"run scoreboard players operation @s {ns}.temp.{RANK} = @s {ns}.temp.{layout.columns[0].objective}"
		for index, layout in enumerate(LAYOUTS))
	write_function(f"{path}/show", f"""
# A player who never scored has no value on the objective, which would leave them out of the ranking
{initialized}

# Criteria counting in tenths are brought back to the unit the label announces
{divided}

# The leftmost column of the layout is what the ranking sorts on
{ranked}

tag @a remove {ns}.temp.recap_done
function {path}/translations/header
execute if entity @a[tag=!detached] run function {path}/next
""")

	# /next
	write_function(f"{path}/next", f"""
# Print the best player still unlisted, ties broken by taking whichever the selector returns first
execute store result score #recap_left {ns}.data if entity @a[tag=!detached,tag=!{ns}.temp.recap_done]
scoreboard players set #recap_best {ns}.data -2147483648
scoreboard players operation #recap_best {ns}.data > @a[tag=!detached,tag=!{ns}.temp.recap_done] {ns}.temp.{RANK}
execute as @a[tag=!detached,tag=!{ns}.temp.recap_done] if score @s {ns}.temp.{RANK} = #recap_best {ns}.data run tag @s add {ns}.temp.recap_tied
execute as @a[tag={ns}.temp.recap_tied,limit=1] run function {path}/line
tag @a remove {ns}.temp.recap_tied

# Recurse only while the list shrinks: a player the round failed to rank would loop forever
execute store result score #recap_now {ns}.data if entity @a[tag=!detached,tag=!{ns}.temp.recap_done]
execute if score #recap_now {ns}.data matches 1.. if score #recap_now {ns}.data < #recap_left {ns}.data run function {path}/next
""")

	# /line (executed as the player being listed)
	dispatch: str = "\n".join(
		f"execute if score #recap_layout {ns}.data matches {index} run function {path}/translations/{layout.name}"
		for index, layout in enumerate(LAYOUTS))
	write_function(f"{path}/line", f"""
tag @s add {ns}.temp.recap_done
{dispatch}
""")

	# /translations/header
	write_function(f"{path}/translations/header", rf"""
# French
tellraw @a[scores={{{ns}.lang=0}},tag=!detached] ["\n",{{"text":"Récapitulatif de la partie","color":"gold","bold":true}}]

# English
tellraw @a[scores={{{ns}.lang=1}},tag=!detached] ["\n",{{"text":"Game recap","color":"gold","bold":true}}]
""")

	# /translations/<layout> (one player's line, in both languages)
	for layout in LAYOUTS:
		write_function(f"{path}/translations/{layout.name}", f"""
# French
{line(layout, 0)}

# English
{line(layout, 1)}
""")

