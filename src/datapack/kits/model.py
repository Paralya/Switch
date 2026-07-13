
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
	out by hand today.
	"""
	objective: str
	""" Objective holding the upgrade level, e.g. "{ns}.spectres_game.sp_arrows". """
	base: int = 0
	""" Item count at the first level. """
	step: int = 0
	""" Item count added per level. """
	levels: int = 1
	""" Number of branches to generate. """
	counts: tuple[int, ...] | None = None
	""" Explicit per-level counts; overrides base/step when set. """
	start: int = 0
	""" Score value of the first branch (for upgrades that only kick in at 1). """
	last_open: bool = True
	""" Whether the last branch matches open-ended ("matches 3.."). """
	first_unless: bool = False
	""" Whether the first branch is "unless matches <start+1>.." (sheepwars style). """

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
	score: str
	""" Score holder and objective, e.g. "#random {ns}.data" or "@s {ns}.sheepwars.chosen_kit". """
	items: tuple[str, ...]
	""" One item string per score value, index == value. """
	roll: int | None = None
	""" If set, roll `random value 0..roll-1` into `score` before branching. """
	last_open: bool = False
	""" Whether the last branch matches open-ended ("matches <k>.."). """


@dataclass(frozen=True)
class KitItem:
	""" One item of a kit.

	`role` is the semantic slot ("melee", "blocks", ...) that the player's layout can remap.
	`role=None` pins the item: armour and inventory.* overflow are never remapped.
	"""
	item: str = ""
	""" The item string, e.g. "diamond_sword[enchantments={sharpness:1}]". """
	slot: str = ""
	""" Canonical slot: "hotbar.0" | "weapon.offhand" | "armor.chest" | "inventory.25". """
	role: str | None = None
	""" Semantic role the player's layout can remap; None pins the item to its slot. """
	count: int | ScoreCount = 1
	""" Item count, fixed or driven by a shop-upgrade score. """
	variants: Variants | None = None
	""" Random skins / score-selected item strings, still occupying this single slot. """
	team_items: dict[str, str] = field(default_factory=dict[str, str])
	""" Team name -> item string, e.g. {"{ns}.temp.red": "red_wool"}. """
	selector: str = ""
	""" Extra @s condition, written WITHOUT brackets: "team={ns}.temp.spectre". """
	cond: str = ""
	""" Execute clauses inserted before "run", e.g. "if score #x {ns}.data matches 1". """
	loot: str = ""
	""" Loot table id: place with `loot replace entity` instead of `item replace ... with`. """
	from_block: str = ""
	""" Container source, e.g. "0 10 0 container.0": place with `item replace ... from block`. """
	modify: str = ""
	""" Item modifier applied to the slot right after placing the item. """
	claim: bool | None = None
	""" Which item of a duplicated role owns the player's slot (default: the first declared). """
	sibling: bool = False
	""" A 2nd item of a role: prefer <role slot>+1 before falling back to its canonical slot. """
	override: bool = False
	""" Swap out the item of the same role in the SAME slot (a king's sword replacing a soldier's),
	rather than asking for a slot of its own. """

	@property
	def pinned(self) -> bool:
		""" Whether this item keeps its declared slot no matter the player's layout. """
		return self.role is None


@dataclass(frozen=True)
class Kit:
	""" A full loadout: raw command lines around an ordered list of items. """
	name: str
	""" Kit name, e.g. "archer"; used only for build-time error messages. """
	items: tuple[KitItem, ...] = ()
	""" The items, in declaration order (which is also the resolver's processing order). """
	pre: str = ""
	""" Raw lines emitted before the items (clear @s, effect clear, ...). """
	post: str = ""
	""" Raw lines emitted after the items (attribute, effect give, loot give, ...). """
	reserved: tuple[str, ...] = ()
	""" Remappable-range slots that raw pre/post lines write to (e.g. beat_the_kings' king gaps):
	never handed out by the resolver. """

