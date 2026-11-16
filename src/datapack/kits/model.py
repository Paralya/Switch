""" Declarative description of the items of a kit.

Item strings are final command fragments: the declaring module bakes the project namespace in (f-strings, with {{ / }} escaping around NBT braces where needed).
Since the namespace is only known at build time, kits that reference it cannot be module-level constants; declare them inside a function that reads Mem.ctx.project_id.
"""
# Imports
from dataclasses import dataclass, field


# Classes
@dataclass(frozen=True)
class ScoreCount:
	""" An item count driven by a per-player score (a shop upgrade).

	Expands to one `execute if score @s <objective> matches <k> run ...` line per level, as for spectres_game's arrows, pitchout's ender pearls and spleef's snowballs.
	"""
	objective: str
	""" Objective holding the upgrade level, e.g. f"{ns}.spectres_game.sp_arrows". """
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

	def branches(self) -> tuple[tuple[str, int], ...]:
		""" The (execute condition, item count) pair for each level, in order. """
		per_level: tuple[int, ...] = self.per_level()
		last: int = len(per_level) - 1
		pairs: list[tuple[str, int]] = []
		for index, count in enumerate(per_level):
			level: int = self.start + index
			if self.first_unless and index == 0:
				pairs.append((f"unless score @s {self.objective} matches {level + 1}..", count))
				continue
			match: str = f"{level}.." if (self.last_open and index == last) else str(level)
			pairs.append((f"if score @s {self.objective} matches {match}", count))
		return tuple(pairs)


@dataclass(frozen=True)
class Variants:
	""" Mutually exclusive item strings selected by a score.

	One logical item, so it still occupies exactly ONE slot: this is why a random sword skin is a
	single KitItem with 4 variants, and not 4 KitItems fighting over the same slot.
	"""
	score: str
	""" Score holder and objective, e.g. f"#random {ns}.data" or f"@s {ns}.sheepwars.chosen_kit". """
	items: tuple[str, ...]
	""" One item string per score value, index == value. """
	roll: int | None = None
	""" If set, roll `random value 0..roll-1` into `score` before branching. """
	last_open: bool = False
	""" Whether the last branch matches open-ended ("matches <k>.."). """

	def branches(self) -> tuple[tuple[str, str], ...]:
		""" The (execute condition, item string) pair for each score value, in order. """
		last: int = len(self.items) - 1
		pairs: list[tuple[str, str]] = []
		for value, string in enumerate(self.items):
			match: str = f"{value}.." if (self.last_open and value == last) else str(value)
			pairs.append((f"if score {self.score} matches {match}", string))
		return tuple(pairs)


@dataclass(frozen=True)
class KitItem:
	""" One item of a kit, given at its canonical slot.

	Several items may share a slot: a later one replaces an earlier one under its own condition (a king's sword over a soldier's).
	"""
	item: str = ""
	""" The item string, e.g. "diamond_sword[enchantments={sharpness:1}]". """
	slot: str = ""
	""" Canonical slot: "hotbar.0" | "weapon.offhand" | "armor.chest" | "inventory.25". """
	count: int | ScoreCount = 1
	""" Item count, fixed or driven by a shop-upgrade score. """
	variants: Variants | None = None
	""" Random skins / score-selected item strings, still occupying this single slot. """
	team_items: dict[str, str] = field(default_factory=dict[str, str])
	""" Team name -> item string, e.g. {f"{ns}.temp.red": "red_wool"}. """
	selector: str = ""
	""" Extra @s condition, written WITHOUT brackets: f"team={ns}.temp.spectre". """
	cond: str = ""
	""" Execute clauses inserted before "run", e.g. f"if score #x {ns}.data matches 1". """
	loot: str = ""
	""" Loot table id: place with `loot replace entity` instead of `item replace ... with`. """
	from_block: str = ""
	""" Container source, e.g. "0 10 0 container.0": place with `item replace ... from block`. """
	modify: str = ""
	""" Item modifier applied to the slot right after placing the item. """
	match: str = ""
	""" What `if items` recognises the given item by, e.g. "iron_sword" for a loot table that gives one. Required when a `loot` or `from_block` item sits on a learned slot. """

	def strings(self) -> tuple[str, ...]:
		""" Every item string this item may be given as, `match` standing in for the others. """
		if self.match:
			return (self.match,)
		if self.variants:
			return self.variants.items
		if self.team_items:
			return tuple(self.team_items.values())
		return (self.item,)

	@staticmethod
	def _selector(parts: list[str]) -> str:
		""" Build the @s selector from bracket-content parts (e.g. ["team={ns}.temp.red"]). """
		return f"@s[{','.join(parts)}]" if parts else "@s"

	@staticmethod
	def _count_suffix(count: int) -> str:
		""" Vanilla omits the count when it is 1, and so must we (byte-identical output). """
		return "" if count == 1 else f" {count}"

	def _place(self, selector: str, item_string: str, count: int) -> str:
		""" The bare placement command, without any execute prefix. """
		if self.loot:
			return f"loot replace entity {selector} {self.slot}{self._count_suffix(count)} loot {self.loot}"
		if self.from_block:
			return f"item replace entity {selector} {self.slot} from block {self.from_block}"
		return f"item replace entity {selector} {self.slot} with {item_string}{self._count_suffix(count)}"

	def emit(self) -> list[str]:
		""" Render this item to its command lines.

		The three ways a kit varies an item are independent and compose: `team_items` picks the item
		by team (a selector), `variants` picks it by score (a condition), and a ScoreCount picks the
		count by score (another condition).
		"""
		lines: list[str] = []

		# An item chosen at random rolls once, then branches
		if self.variants and self.variants.roll is not None:
			lines.append(f"execute store result score {self.variants.score} run random value 0..{self.variants.roll - 1}")

		base_selector: list[str] = [self.selector] if self.selector else []
		counts: list[tuple[str, int]] = list(self.count.branches()) if isinstance(self.count, ScoreCount) else [("", self.count)]
		for choice_condition, item_string, selector_parts in self._choices(base_selector):
			for count_condition, count in counts:
				prefix: str = self._execute_prefix(self.cond, choice_condition, count_condition)
				lines.append(prefix + self._place(self._selector(selector_parts), item_string, count))

		# An item modifier applies to whatever landed in the slot, under the same condition as the item
		if self.modify:
			lines.append(self._execute_prefix(self.cond) + f"item modify entity {self._selector(base_selector)} {self.slot} {self.modify}")

		return lines

	def _choices(self, base_selector: list[str]) -> list[tuple[str, str, list[str]]]:
		""" The (execute condition, item string, selector parts) of each item this slot may receive. """
		if self.variants:
			return [(condition, string, base_selector) for condition, string in self.variants.branches()]
		if self.team_items:
			return [("", string, [*base_selector, f"team={team}"]) for team, string in self.team_items.items()]
		return [("", self.item, base_selector)]

	@staticmethod
	def _execute_prefix(*clauses: str) -> str:
		""" The `execute ... run ` prefix holding the non-empty clauses, or nothing when all are empty. """
		kept: list[str] = [clause for clause in clauses if clause]
		return f"execute {' '.join(kept)} run " if kept else ""

	def validate(self, kit: str) -> None:
		""" Catch this item's mistakes at build time rather than in-game.

		Args:
			kit: Name of the kit holding this item, for the error messages.
		"""
		counts: tuple[int, ...] = self.count.per_level() if isinstance(self.count, ScoreCount) else (self.count,)
		if any(count > 64 for count in counts):
			raise ValueError(f"Kit '{kit}': count {max(counts)} exceeds a stack, split the surplus into a second item on an inventory.* slot")

