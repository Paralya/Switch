
""" Declarative description of a kit: what a player receives, as data instead of command strings.

Item strings are plain (non-f) Python strings and may contain the literal token "{ns}", which the
generator swaps for the project namespace. Writing them as plain strings means NBT braces need no
{{ / }} escaping, unlike the f-string command blocks the rest of the codebase uses.
"""

# Imports
from dataclasses import dataclass, field


@dataclass(frozen=True)
class ScoreCount:
	""" An item count driven by a per-player score (a shop upgrade).

	Expands to one `execute if score @s <objective> matches <k> run ...` line per level, which is
	exactly how spectres_game's arrows, pitchout's ender pearls and spleef's snowballs are spelled
	out by hand today. The last level matches open-ended (`matches <levels-1>..`).
	"""
	objective: str						# "{ns}.spectres_game.sp_arrows"
	base: int = 0						# count at the first level
	step: int = 0						# added per level
	levels: int = 1						# number of branches
	counts: tuple[int, ...] | None = None	# explicit per-level counts, instead of base/step
	start: int = 0						# score value of the first branch (upgrades that only kick in at 1)
	last_open: bool = True				# the last branch matches open-ended ("matches 3..")
	first_unless: bool = False			# the first branch is "unless matches <start+1>.." (sheepwars style)

	def per_level(self) -> tuple[int, ...]:
		""" The item count for each level, in order. """
		if self.counts is not None:
			return self.counts
		return tuple(self.base + self.step * level for level in range(self.levels))


@dataclass(frozen=True)
class Variants:
	""" Mutually exclusive item strings selected by a score.

	One logical item, so it still occupies exactly ONE slot: this is why a random sword skin is a
	single KitItem with 4 variants, and not 4 KitItems fighting over the same slot.
	"""
	score: str							# "#random {ns}.data" or "@s {ns}.sheepwars.chosen_kit"
	items: tuple[str, ...]				# one item string per score value, index == value
	roll: int | None = None				# if set, roll `random value 0..roll-1` into `score` first
	last_open: bool = False				# last branch matches open-ended (`matches <k>..`)


@dataclass(frozen=True)
class KitItem:
	""" One item of a kit.

	`role` is the semantic slot ("melee", "blocks", ...) that the player's layout can remap.
	`role=None` pins the item: armour and inventory.* overflow are never remapped.
	"""
	item: str = ""						# "diamond_sword[enchantments={sharpness:1}]"
	slot: str = ""						# canonical slot: "hotbar.0" | "weapon.offhand" | "armor.chest" | "inventory.25"
	role: str | None = None				# None => pinned, never remapped
	count: "int | ScoreCount" = 1
	variants: Variants | None = None	# random skins / score-selected items
	team_items: dict[str, str] = field(default_factory=dict[str, str])	# team -> item string ({"{ns}.temp.red": "red_wool"})
	selector: str = ""					# extra @s condition, written WITHOUT brackets: "team={ns}.temp.spectre"
	cond: str = ""						# execute clauses inserted before "run", e.g. "if score #x {ns}.data matches 1"
	loot: str = ""						# loot table id => `loot replace entity` instead of `item replace ... with`
	from_block: str = ""				# "0 10 0 container.0" => `item replace entity @s <slot> from block ...`
	modify: str = ""					# item modifier applied to the slot right after placing it
	claim: bool | None = None			# which item of a duplicated role owns the player's slot (default: the first)
	sibling: bool = False				# a 2nd item of a role: prefer <role slot>+1 before falling back to canonical
	override: bool = False				# swap out the previous item in the SAME slot (a king's sword replacing a soldier's),
										# rather than asking for a slot of its own

	@property
	def pinned(self) -> bool:
		""" Whether this item keeps its declared slot no matter the player's layout. """
		return self.role is None


@dataclass(frozen=True)
class Kit:
	""" A full loadout: raw command lines around an ordered list of items. """
	name: str							# "archer", used only for build-time error messages
	items: tuple[KitItem, ...] = ()
	pre: str = ""						# raw lines emitted before the items (clear @s, effect clear, ...)
	post: str = ""						# raw lines emitted after the items (attribute, effect give, loot give, ...)
