
""" Declarative description of a kit and its rendering to mcfunction lines.

Item strings are final command fragments: the declaring module bakes the project namespace in
(f-strings, with {{ / }} escaping around NBT braces where needed). Since the namespace is only
known at build time, kits that reference it cannot be module-level constants; declare them inside
a function that reads Mem.ctx.project_id.

Every kit command in the datapack is rendered here, so a change to how items are placed (such as
honouring the player's layout) is a change to this one file rather than to 15 mode files.

While LAYOUT_ENABLED is False, Kit.write emits the canonical slot literally, which reproduces the
hand-written commands byte for byte. Turning it on swaps the slot for a macro argument that the
{ns}:player/layout/resolve function fills in per player; with every layout score left at 0 the
resolver hands back the canonical slot, so the emitted command is unchanged.
"""

# Imports
from dataclasses import dataclass, field

from stewbeet import Mem, write_function

from .roles import ROLES, SLOT_ID, TARGETS

# Flipped on now that {ns}:player/layout/resolve exists; see module docstring.
LAYOUT_ENABLED: bool = True


@dataclass(frozen=True)
class ScoreCount:
	""" An item count driven by a per-player score (a shop upgrade).

	Expands to one `execute if score @s <objective> matches <k> run ...` line per level, which is
	exactly how spectres_game's arrows, pitchout's ender pearls and spleef's snowballs are spelled
	out by hand today.
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

	@staticmethod
	def _selector(parts: list[str]) -> str:
		""" Build the @s selector from bracket-content parts (e.g. ["team={ns}.temp.red"]). """
		return f"@s[{','.join(parts)}]" if parts else "@s"

	@staticmethod
	def _count_suffix(count: int) -> str:
		""" Vanilla omits the count when it is 1, and so must we (byte-identical output). """
		return "" if count == 1 else f" {count}"

	def _place(self, slot: str, selector: str, item_string: str, count: int) -> str:
		""" The bare placement command, without any execute prefix. """
		if self.loot:
			return f"loot replace entity {selector} {slot}{self._count_suffix(count)} loot {self.loot}"
		if self.from_block:
			return f"item replace entity {selector} {slot} from block {self.from_block}"
		return f"item replace entity {selector} {slot} with {item_string}{self._count_suffix(count)}"

	def emit(self, slot: str) -> list[str]:
		""" Render this item to its command lines.

		The three ways a kit varies an item are independent and compose: `team_items` picks the item
		by team (a selector), `variants` picks it by score (a condition), and a ScoreCount picks the
		count by score (another condition).
		"""
		macro: str = "$" if "$(" in slot else ""
		lines: list[str] = []

		# An item chosen at random rolls once, then branches
		if self.variants and self.variants.roll is not None:
			lines.append(f"execute store result score {self.variants.score} run random value 0..{self.variants.roll - 1}")

		# Which item string, under which condition and selector
		choices: list[tuple[str, str, list[str]]] = []	# (condition, item string, selector parts)
		base_selector: list[str] = [self.selector] if self.selector else []
		if self.variants:
			for condition, string in self.variants.branches():
				choices.append((condition, string, base_selector))
		elif self.team_items:
			for team, string in self.team_items.items():
				choices.append(("", string, [*base_selector, f"team={team}"]))
		else:
			choices.append(("", self.item, base_selector))

		# Which count, under which condition
		counts: list[tuple[str, int]]
		if isinstance(self.count, ScoreCount):
			counts = list(self.count.branches())
		else:
			counts = [("", self.count)]

		for choice_condition, item_string, selector_parts in choices:
			for count_condition, count in counts:
				clauses: list[str] = [c for c in (self.cond, choice_condition, count_condition) if c]
				prefix: str = f"execute {' '.join(clauses)} run " if clauses else ""
				lines.append(macro + prefix + self._place(slot, self._selector(selector_parts), item_string, count))

		# An item modifier applies to whatever landed in the slot, under the same condition as the item
		if self.modify:
			prefix = f"execute {self.cond} run " if self.cond else ""
			lines.append(macro + prefix + f"item modify entity {self._selector(base_selector)} {slot} {self.modify}")

		return lines


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
	layout: bool = True
	""" Whether the player's layout may remap this kit's items; False pins everything to its
	canonical slot (fast-paced modes where sword-first/bow-second must hold for everyone). """

	@property
	def movable(self) -> tuple[KitItem, ...]:
		""" The items the resolver may remap: overrides ride along in another item's slot, so they
		don't count against the slot budget. """
		return tuple(item for item in self.items if not item.pinned and not item.override)

	def validate(self) -> None:
		""" Catch kit mistakes at build time rather than in-game. """
		movable: tuple[KitItem, ...] = self.movable
		if len(movable) > len(TARGETS):
			raise ValueError(f"Kit '{self.name}': {len(movable)} remappable items, but only {len(TARGETS)} slots to put them in")

		slots: list[str] = [item.slot for item in movable]
		if len(set(slots)) != len(slots):
			duplicates: set[str] = {slot for slot in slots if slots.count(slot) > 1}
			raise ValueError(f"Kit '{self.name}': several items declare the same canonical slot {sorted(duplicates)}")

		for item in self.items:
			if item.role is not None and item.role not in ROLES:
				raise ValueError(f"Kit '{self.name}': unknown role '{item.role}'")
			counts: tuple[int, ...] = item.count.per_level() if isinstance(item.count, ScoreCount) else (item.count,)
			if any(count > 64 for count in counts):
				raise ValueError(
					f"Kit '{self.name}': count {max(counts)} exceeds a stack; `item replace` caps its count at 99 and"
					" one over 64 fails the whole macro instantiation (no kit item given at all) —"
					" split the surplus into a second, pinned inventory.* item"
				)
			if not item.pinned and not item.override and item.slot not in SLOT_ID:
				raise ValueError(f"Kit '{self.name}': role '{item.role}' sits on '{item.slot}', which players cannot remap")
			if item.override and item.pinned:
				raise ValueError(f"Kit '{self.name}': an override needs a role, so it knows which item it replaces")
			if "$(" in item.item:
				raise ValueError(f"Kit '{self.name}': item string contains a macro reference, which would be substituted away")

	def _table(self, ns: str) -> str:
		""" The one-command item table the resolver reads: reserved slots + one entry per movable item.

		`claim` defaults to "the first item of its role in declaration order"; `canon` is the declared
		slot, 1-indexed into TARGETS (the resolver's 0 means "unset").
		"""
		claimed_roles: set[str] = set()
		entries: list[str] = []
		for index, item in enumerate(self.movable):
			claim: bool = item.claim if item.claim is not None else (item.role not in claimed_roles)
			if claim:
				claimed_roles.add(item.role or "")
			entries.append(f'{{i:{index},role:"{item.role}",claim:{int(claim)},canon:{SLOT_ID[item.slot]},sibling:{int(item.sibling)}}}')
		reserved: str = ",".join(f"{{s:{SLOT_ID[slot]}}}" for slot in self.reserved)
		return f"data modify storage {ns}:layout kit set value {{reserved:[{reserved}],items:[{','.join(entries)}]}}"

	def write(self, path: str) -> None:
		""" Write this kit's give function at `path`.

		When the layout system is on, the movable items go to a `<path>/items` macro body whose slots
		come from the player's resolved layout; pinned items and the raw pre/post lines stay in `path`.

		Args:
			path (str):  Full function path, e.g. f"{ns}:modes/castagne/give_items".
		"""
		self.validate()
		ns: str = Mem.ctx.project_id
		use_layout: bool = LAYOUT_ENABLED and self.layout
		body: list[str] = []
		items_body: list[str] = []

		if self.pre:
			body.append(self.pre.strip("\n"))

		index: int = 0
		role_slot: dict[str, str] = {}
		for item in self.items:
			if item.pinned:
				body.extend(item.emit(item.slot))
				continue
			if item.override:
				# Lands wherever the item of the same role landed, so it never claims a slot of its own
				if item.role not in role_slot:
					raise ValueError(f"Kit '{self.name}': '{item.role}' override has nothing to override")
				slot: str = role_slot[item.role]
			else:
				slot = f"$(s{index})" if use_layout else item.slot
				role_slot.setdefault(item.role or "", slot)
				index += 1
			(items_body if use_layout else body).extend(item.emit(slot))

		if use_layout and index > 0:
			body.append(self._table(ns))
			body.append(f"function {ns}:player/layout/resolve")
			body.append(f"function {path}/items with storage {ns}:layout out")
			write_function(f"{path}/items", "\n".join(items_body) + "\n")

		if self.post:
			body.append(self.post.strip("\n"))

		write_function(path, "\n".join(body) + "\n")
