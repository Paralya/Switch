# Imports
from stewbeet import Mem, write_function

from ...resource_pack.intro.role import ROLE_TICKS, role_effect_path
from ..modes.catalogue import DISABLED_MODES, MODES
from ..modes.definitions import LANG_PRETEXT


def write_role_cards() -> None:
	""" Write `engine/role_card/<mode>/<role>`, which a mode runs as a player to show them their role card, and its cleanup. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:engine/role_card"
	cards: list[tuple[str, str]] = [(mode.id, role.id) for mode in (*MODES, *DISABLED_MODES) for role in mode.roles]

	# Each card plays once in its own time, so the latest one schedules the removal of all of them
	for mode_id, role_id in cards:
		write_function(f"{path}/{mode_id}/{role_id}", "\n".join((
			*(f"posteffect add @s[scores={{{ns}.lang={score}}}] {ns}:{role_effect_path(mode_id, role_id, lang)}" for score, lang in enumerate(LANG_PRETEXT)),
			f"schedule function {path}/stop {ROLE_TICKS + 20}t replace",
		)))
	write_function(f"{path}/stop", f"execute as @a run function {path}/remove")
	write_function(f"{path}/remove", "\n".join(
		f"posteffect remove @s {ns}:{role_effect_path(mode_id, role_id, lang)}" for mode_id, role_id in cards for lang in LANG_PRETEXT
	))

