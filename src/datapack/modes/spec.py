""" Typed model of a minigame and of a vote group.

Pure data: no beet, no stewbeet, no Mem. Everything the vote message, the lore and the starting
pop-ups need is declared here, and definitions.py turns it into storage entries.
"""
# Imports
from dataclasses import dataclass

# Constants
UNLIMITED: None = None
""" Value of ModeSpec.max_players when a mode accepts any number of players. """


# Classes
@dataclass(frozen=True, kw_only=True)
class Localized:
	""" One short text in both supported languages, split into displayed lines.

	Lines are stored without their trailing newline: the emitter adds it back.
	"""

	fr: tuple[str, ...]
	""" French lines, ex: ("Survivez en repoussant les creepers", "dans une arène fermée") """

	en: tuple[str, ...]
	""" English lines, ex: ("Survive by pushing away creepers", "in a closed arena") """


@dataclass(frozen=True, kw_only=True)
class ModeSpec:
	""" Everything the engine needs to know about one minigame, outside of its logic.

	The id must match the folder name under src/datapack/modes/, which is what the build validates.
	"""

	id: str
	""" Folder name and storage id, ex: "tnt_run". Frozen forever: the stats objectives embed it. """

	name_fr: str
	""" Name shown in the vote message, ex: "TNT Run" """

	name_en: str | None = None
	""" English name when it differs from the French one, otherwise name_fr is used. """

	min_players: int
	""" Smallest player count that allows the mode to be voted. """

	max_players: int | None = UNLIMITED
	""" Largest player count, or UNLIMITED when the mode has no upper bound. """

	group: str | None = None
	""" Vote group this mode belongs to, or None when the mode is its own group. """

	estimated_time: str
	""" Human readable duration shown in the lore, ex: "1-4 mins" """

	inspiration: str
	""" Where the concept comes from, ex: "Grian (2013)" """

	suggested_by: str
	""" Who proposed the mode. """

	developed_by: str
	""" Who implemented the mode. """

	description: Localized
	""" Two or three lines pitching the mode, shown in the vote lore. """

	@property
	def vote_group(self) -> str:
		""" The group this mode is voted under, defaulting to its own id.

		Returns:
			str: The group id
		"""
		return self.group if self.group is not None else self.id

	def display_name(self, lang: str) -> str:
		""" The mode name in the given language, falling back to French.

		Args:
			lang (str): Language key, ex: "fr" or "en"
		Returns:
			str: The localized name
		"""
		return self.name_en if lang == "en" and self.name_en is not None else self.name_fr


@dataclass(frozen=True, kw_only=True)
class GroupSpec:
	""" A vote entry gathering several minigames, shown before the second vote picks one. """

	id: str
	""" Group id, referenced by ModeSpec.group, ex: "layers" """

	name_fr: str
	""" Name shown in the vote message, ex: "Layers" """

	name_en: str | None = None
	""" English name when it differs from the French one, otherwise name_fr is used. """

	estimated_time: str
	""" Human readable duration covering every mode of the group, ex: "4-10 mins" """

	description: Localized
	""" Two lines pitching what the group has in common. """

	def display_name(self, lang: str) -> str:
		""" The group name in the given language, falling back to French.

		Args:
			lang (str): Language key, ex: "fr" or "en"
		Returns:
			str: The localized name
		"""
		return self.name_en if lang == "en" and self.name_en is not None else self.name_fr

