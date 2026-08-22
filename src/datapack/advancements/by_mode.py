""" Which minigame each advancement belongs to, derived from where the datapack grants it.

Nothing declares the link. An advancement belongs to every mode whose own functions grant it, so
moving a grant from one mode to another moves the advancement with it, with nothing to update.
"""
# Imports
import re

from stewbeet import Mem, write_function

from ..modes.catalogue import MODES
from .shared_memory import ALL_ADVANCEMENTS, LOAD_FILE, get_id

# Constants
GRANT_PATTERN: re.Pattern[str] = re.compile(r"advancement grant [^\n]*? only [a-z0-9_]+:visible/([a-z0-9_/]+)")
""" Captures the granted advancement, ex: "59" in `advancement grant @s only switch:visible/59`. """

MODE_FUNCTION: re.Pattern[str] = re.compile(r"^[a-z0-9_]+:modes/([a-z0-9_]+)/")
""" Captures the mode owning a generated function, ex: "pitchout" in "switch:modes/pitchout/tick". """


# Functions
def granted_by_mode() -> dict[str, list[str]]:
	""" Advancement ids each playable minigame grants, in the order of the advancement list.

	An advancement several modes grant is listed under each of them, which is what a player sees:
	it really is obtainable in each. Modes missing from the vote are skipped, nobody can play them.

	Returns:
		dict[str, list[str]]: Mode id -> advancement ids it grants
	"""
	order: dict[str, int] = {str(adv["id"]): rank for rank, adv in enumerate(ALL_ADVANCEMENTS)}
	playable: frozenset[str] = frozenset(mode.id for mode in MODES)

	granted: dict[str, set[str]] = {}
	for path, function in Mem.ctx.data.functions.items():
		owner: re.Match[str] | None = MODE_FUNCTION.match(path)
		if owner is not None and owner.group(1) in playable:
			granted.setdefault(owner.group(1), set()).update(GRANT_PATTERN.findall(function.text))

	return {mode: sorted(ids, key=lambda id: order.get(id, len(order)))
		for mode, ids in sorted(granted.items()) if ids}


def write_by_mode_index() -> None:
	""" Append the mode -> advancements index to the advancements load file. """
	ns: str = Mem.ctx.project_id
	entries: str = ", ".join(
		f"{mode}:[{','.join(f'{{id:{get_id(id)}}}' for id in ids)}]"
		for mode, ids in granted_by_mode().items()
	)
	write_function(f"{ns}:{LOAD_FILE}", f"""
# Advancements obtainable in each minigame, read by switch:player/trigger/succes/mode_section
data modify storage {ns}:advancements by_mode set value {{{entries}}}
""")

