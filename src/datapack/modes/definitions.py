""" Storage entries built from the minigame catalogue.

Turns the declarative MODES and GROUPS tables into the "minigames" and "groups" lists that the
vote, the lore and the starting pop-ups read at runtime.
"""
# Imports
import json

from stewbeet import Mem, TextComponent, write_function
from stouputils.typing import JsonDict

from .catalogue import GROUPS_BY_ID, MODES
from .spec import GroupSpec, ModeSpec

# Constants
GROUP_NAME_COLOR: str = "#FFCC00"
""" Between yellow and gold, distinguishes multi-game groups in the vote message. """

LANG_PRETEXT: dict[str, dict[str, str]] = {
	"fr": {"estimated_time": "Estimation :",	"inspiration": "Inspiration :",	"suggested": "Proposé par",		"developed": "Développé par"},
	"en": {"estimated_time": "Estimated:",		"inspiration": "Inspiration:",	"suggested": "Suggested by",	"developed": "Developed by"},
}
""" Lore labels for a single mode, per language. """

LANG_GROUP_PRETEXT: dict[str, dict[str, str]] = {
	"fr": {"includes": "Contient :",	"second_vote": "Un second vote départagera la variante"},
	"en": {"includes": "Includes:",		"second_vote": "A second vote will decide the variant"},
}
""" Extra lore labels for a multi-mode group, per language. """



# Functions
def mode_lore(mode: ModeSpec, lang: str) -> list[TextComponent]:
	""" Build the vote lore of one mode: title, description lines, then the four credit lines.

	Args:
		mode (ModeSpec): The mode to describe
		lang (str):      Language key, ex: "fr" or "en"
	Returns:
		list[TextComponent]: The lore, ready to be stored
	"""
	pretext: dict[str, str] = LANG_PRETEXT[lang]
	description: tuple[str, ...] = mode.description.fr if lang == "fr" else mode.description.en
	return [
		"",
		{"text": f"[{mode.name_fr}]\n", "color": "yellow"},
		*({"text": f"{line}\n"} for line in description),
		{"text": f"\n[{pretext['estimated_time']} {mode.estimated_time}]", "color": "gold"},
		{"text": f"\n[{pretext['inspiration']} {mode.inspiration}]", "color": "green"},
		{"text": f"\n[{pretext['suggested']} {mode.suggested_by}]", "color": "aqua"},
		{"text": f"\n[{pretext['developed']} {mode.developed_by}]", "color": "aqua"},
	]


def group_lore(group: GroupSpec, modes: tuple[ModeSpec, ...], lang: str) -> list[TextComponent]:
	""" Build the vote lore of a multi-mode group: title, description, duration, members, hint.

	Args:
		group (GroupSpec):          The group to describe
		modes (tuple[ModeSpec...]): Its members, in vote order
		lang  (str):                Language key, ex: "fr" or "en"
	Returns:
		list[TextComponent]: The lore, ready to be stored
	"""
	pretext: dict[str, str] = LANG_PRETEXT[lang]
	group_pretext: dict[str, str] = LANG_GROUP_PRETEXT[lang]
	description: tuple[str, ...] = group.description.fr if lang == "fr" else group.description.en
	included: str = ", ".join(mode.name_fr for mode in modes)
	return [
		"",
		{"text": f"[{group.name_fr}]\n", "color": GROUP_NAME_COLOR},
		*({"text": f"{line}\n"} for line in description),
		{"text": f"\n[{pretext['estimated_time']} {group.estimated_time}]", "color": "gold"},
		{"text": f"\n[{group_pretext['includes']} {included}]", "color": "green"},
		{"text": f"\n[{group_pretext['second_vote']}]", "color": "aqua"},
	]


def storage_max_players(max_players: int | None) -> int:
	""" Storage form of a player cap, where unlimited is -1.

	Args:
		max_players (int | None): The cap, or UNLIMITED
	Returns:
		int: The stored value

	Examples:
		>>> storage_max_players(UNLIMITED)
		-1
		>>> storage_max_players(8)
		8
	"""
	return -1 if max_players is None else max_players


def mode_entry(mode: ModeSpec, index: int) -> JsonDict:
	""" Storage entry of one mode, appended to the "minigames" list.

	Key insertion order is part of the generated output: an explicit group sits right after the
	id, a defaulted one is added last. Reordering rewrites every function file for nothing.

	Args:
		mode  (ModeSpec): The mode to store
		index (int):      Its 1-based rank, used by /rating and /coupdetat
	Returns:
		JsonDict: The entry
	"""
	entry: JsonDict = {
		"min_players": mode.min_players,
		"max_players": storage_max_players(mode.max_players),
		"id": mode.id,
	}
	if mode.group is not None:
		entry["group"] = mode.group
	entry["name_fr"] = mode.name_fr
	entry["estimated_time"] = mode.estimated_time
	entry["inspiration"] = mode.inspiration
	entry["suggested_by"] = mode.suggested_by
	entry["developed_by"] = mode.developed_by
	entry["lore_fr"] = mode_lore(mode, "fr")
	entry["lore_en"] = mode_lore(mode, "en")
	entry["index"] = index
	entry["index_hundred"] = index * 100
	entry["display_name_fr"] = {"text": mode.display_name("fr"), "color": "yellow"}
	entry["display_name_en"] = {"text": mode.display_name("en"), "color": "yellow"}
	if mode.group is None:
		entry["group"] = mode.id
	return entry


def group_entry(group_id: str, modes: tuple[ModeSpec, ...], index: int) -> JsonDict:
	""" Storage entry of one vote group, appended to the "groups" list.

	A group holding a single mode is the mode itself, so the first vote shows it directly.

	Args:
		group_id (str):                The group id, ex: "layers"
		modes    (tuple[ModeSpec...]): Its members, in vote order
		index    (int):                Its 1-based rank
	Returns:
		JsonDict: The entry
	"""
	if len(modes) == 1:
		mode: ModeSpec = modes[0]
		return {
			"min_players": mode.min_players,
			"max_players": storage_max_players(mode.max_players),
			"id": group_id,
			"name_fr": mode.name_fr,
			"name_en": mode.display_name("en"),
			"display_name_fr": {"text": mode.display_name("fr"), "color": "yellow"},
			"display_name_en": {"text": mode.display_name("en"), "color": "yellow"},
			"lore_fr": mode_lore(mode, "fr"),
			"lore_en": mode_lore(mode, "en"),
			"index": index,
		}

	group: GroupSpec = GROUPS_BY_ID[group_id]
	bounded: list[int] = [mode.max_players for mode in modes if mode.max_players is not None]
	return {
		"min_players": min(mode.min_players for mode in modes),
		"max_players": max(bounded) if len(bounded) == len(modes) else -1,
		"id": group_id,
		"name_fr": group.name_fr,
		"name_en": group.display_name("en"),
		"display_name_fr": {"text": group.name_fr, "color": GROUP_NAME_COLOR},
		"display_name_en": {"text": group.display_name("en"), "color": GROUP_NAME_COLOR},
		"lore_fr": group_lore(group, modes, "fr"),
		"lore_en": group_lore(group, modes, "en"),
		"index": index,
	}


def grouped_modes() -> dict[str, tuple[ModeSpec, ...]]:
	""" Modes bucketed by vote group, keeping the declaration order of MODES.

	Returns:
		dict[str, tuple[ModeSpec, ...]]: Group id -> its members
	"""
	members: dict[str, list[ModeSpec]] = {}
	for mode in MODES:
		members.setdefault(mode.vote_group, []).append(mode)
	return {group_id: tuple(modes) for group_id, modes in members.items()}


def write_modes_load_file() -> None:
	""" Write switch:modes/load, which fills the minigames and groups storage lists. """
	ns: str = Mem.ctx.project_id
	lines: list[str] = [
		f"data modify storage {ns}:main minigames append value " + json.dumps(mode_entry(mode, index), ensure_ascii=False)
		for index, mode in enumerate(MODES, start=1)
	]
	lines.append("\n# Voting groups (the first vote shows groups, a second vote decides between the games of the winning group)")
	lines.append(f"data modify storage {ns}:main groups set value []")
	lines += [
		f"data modify storage {ns}:main groups append value " + json.dumps(group_entry(group_id, modes, index), ensure_ascii=False)
		for index, (group_id, modes) in enumerate(grouped_modes().items(), start=1)
	]
	write_function(f"{ns}:modes/load", "\n".join(lines))

