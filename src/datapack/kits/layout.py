""" The layout a kit learns per player: its slot groups, its registry entry and the functions that find its items.

A group is found by content, never by slot, so whatever a `give` or a raw line wrote before is swapped away rather than overwritten.
A player's memory of a kit is one score of the kit's objective: digit j (units first) is the LEARNED_SLOTS index of group j, no score meaning never learned.
Temporaries hold slots as index + 1, 0 meaning unknown.
"""
# Imports
import zlib
from dataclasses import dataclass

from stewbeet import Mem, write_function

from .model import KitItem

# Constants
LEARNED_SLOTS: tuple[str, ...] = (
	"hotbar.0", "hotbar.1", "hotbar.2", "hotbar.3", "hotbar.4",
	"hotbar.5", "hotbar.6", "hotbar.7", "hotbar.8", "weapon.offhand",
)
""" The slots whose arrangement a player's layout remembers, per kit. """

REGISTRY: str = "layout_kits"
""" `Mem.ctx.meta` key of the list of LearnedKit, whose index + 1 is the value of the {ns}.layout.kit score. """


# Classes
@dataclass(frozen=True)
class SlotGroup:
	""" The items of a kit that share one learned slot: an item and the ones replacing it. """
	slot: str
	items: tuple[KitItem, ...]
	predicates: tuple[str, ...]
	""" `if items` item predicates, any of which recognises the group's item. Bare ids, unless an id is shared with another group of the kit. """

	@property
	def canonical(self) -> int:
		""" Index of the declared slot in LEARNED_SLOTS. """
		return LEARNED_SLOTS.index(self.slot)

	def search_order(self) -> list[int]:
		""" Slot indexes to look for the group's item in: its declared slot first, then the others in order. """
		return [self.canonical, *(index for index in range(len(LEARNED_SLOTS)) if index != self.canonical)]


@dataclass(frozen=True)
class LearnedKit:
	""" A kit whose layout is learned. """
	key: str
	""" Name of the kit's memory, e.g. "modes/capture_the_flag/classes/archer". """
	path: str
	""" Give function holding the kit's `<path>/layout/*` functions. """
	groups: tuple[SlotGroup, ...]

	@property
	def objective(self) -> str:
		""" Objective of the players' memories, named after the key and the groups so a changed kit starts from new memories. """
		signature: int = zlib.crc32(repr((self.key, [(group.slot, group.predicates) for group in self.groups])).encode())
		return f"{Mem.ctx.project_id}.layout.{signature:08x}"

	@staticmethod
	def registry() -> list[LearnedKit]:
		""" Every kit registered so far in this build, in {ns}.layout.kit order. """
		return Mem.ctx.meta.setdefault(REGISTRY, [])

	@staticmethod
	def register(kit: LearnedKit) -> tuple[int, LearnedKit]:
		""" Index (1 and up) and entry of the kit learned under `kit.key`, registering `kit` when the key is new.

		Raises:
			ValueError: A group of `kit` is missing from the kit already registered under its key, or `kit` has more groups than a score has digits.
		"""
		registry: list[LearnedKit] = LearnedKit.registry()
		for index, known in enumerate(registry, start=1):
			if known.key != kit.key:
				continue
			strangers: list[str] = [group.slot for group in kit.groups if (group.slot, group.predicates) not in {(g.slot, g.predicates) for g in known.groups}]
			if strangers:
				raise ValueError(f"Kit {kit.path} shares the memory of {known.path} but its items on {strangers} are not in it")
			return index, known
		if len(kit.groups) > 9:
			raise ValueError(f"Kit {kit.path} learns {len(kit.groups)} slots, one more than the 9 digits its memory score holds")
		registry.append(kit)
		kit.write_functions()
		return len(registry), kit

	def write_functions(self) -> None:
		""" Write the kit's `<path>/layout/` functions: find_<j> and stayed_<j> per group, then apply and learn.

		find_<j> returns the first slot no pass took that holds the group's item, stayed_<j> succeeds and takes the slot when the item is still on its learned one.
		"""
		ns: str = Mem.ctx.project_id
		path: str = f"{self.path}/layout"
		for j, group in enumerate(self.groups):
			write_function(f"{path}/find_{j}", "".join(
				f"execute if score #f{k} {ns}.data matches 0 if items entity @s {LEARNED_SLOTS[k]} {predicate} run return {k + 1}\n"
				for k in group.search_order() for predicate in group.predicates) + "return 0\n")
			write_function(f"{path}/stayed_{j}", "".join(
				f"execute if score #m{j} {ns}.data matches {k + 1} if items entity @s {slot} {predicate} run return run scoreboard players set #f{k} {ns}.data 1\n"
				for k, slot in enumerate(LEARNED_SLOTS) for predicate in group.predicates) + "return 0\n")
		write_function(f"{path}/apply", self.apply_body())
		write_function(f"{path}/learn", self.learn_body())

	def apply_body(self) -> str:
		""" Move each group's item to the slot the player's memory holds, by swapping it with whatever sits there. """
		ns: str = Mem.ctx.project_id
		shared: str = f"{ns}:player/layout"
		steps: str = "".join(f"""
scoreboard players operation #t {ns}.data = #m{j} {ns}.data
execute store result score #k {ns}.data run function {self.path}/layout/find_{j}
execute if score #k {ns}.data matches 1.. unless score #k {ns}.data = #t {ns}.data run function {shared}/swap
execute if score #k {ns}.data matches 1.. run function {shared}/flag
""" for j in range(len(self.groups)))
		return f"""scoreboard players operation #p {ns}.data = @s {self.objective}
function {shared}/unpack
function {shared}/clear_flags
{steps}"""

	def learn_body(self) -> str:
		""" Read back where the player put each group's item and save the layout when it moved. """
		ns: str = Mem.ctx.project_id
		shared: str = f"{ns}:player/layout"
		groups: range = range(len(self.groups))
		declared: int = sum(group.canonical * 10 ** j for j, group in enumerate(self.groups))
		stayed: str = "".join(f"""scoreboard players set #n{j} {ns}.data 0
execute if function {self.path}/layout/stayed_{j} run scoreboard players operation #n{j} {ns}.data = #m{j} {ns}.data
""" for j in groups)
		moved: str = "".join(f"""execute if score #n{j} {ns}.data matches 0 store result score #n{j} {ns}.data run function {self.path}/layout/find_{j}
scoreboard players operation #t {ns}.data = #n{j} {ns}.data
function {shared}/flag
""" for j in groups)
		missing: str = "".join(f"""execute if score #n{j} {ns}.data matches 0 run scoreboard players operation #t {ns}.data = #m{j} {ns}.data
execute if score #n{j} {ns}.data matches 0 if function {shared}/is_free run scoreboard players operation #n{j} {ns}.data = #t {ns}.data
execute if score #n{j} {ns}.data matches 0 store result score #n{j} {ns}.data run function {shared}/free/{group.canonical}
scoreboard players operation #t {ns}.data = #n{j} {ns}.data
function {shared}/flag
""" for j, group in enumerate(self.groups))
		all_stayed: str = " ".join(f"if score #n{j} {ns}.data matches 1.." for j in groups)
		none_found: str = " ".join(f"unless score #n{j} {ns}.data matches 1.." for j in groups)
		unchanged: str = " ".join(f"if score #n{j} {ns}.data = #m{j} {ns}.data" for j in groups)
		pack: str = "".join(f"""scoreboard players operation @s {self.objective} *= #10 {ns}.data
scoreboard players operation @s {self.objective} += #n{j} {ns}.data
scoreboard players remove @s {self.objective} 1
""" for j in reversed(groups))
		return f"""execute unless items entity @s hotbar.* * unless items entity @s weapon.offhand * run return 0
scoreboard players set #p {ns}.data {declared}
execute if score @s {self.objective} matches 0.. run scoreboard players operation #p {ns}.data = @s {self.objective}
function {shared}/unpack
function {shared}/clear_flags

# Items still on their learned slot keep it, before a moved twin can take it
{stayed}execute {all_stayed} run return 0

# Moved items, wherever they are now
{moved}
# An emptied or replaced inventory teaches nothing
execute {none_found} run return 0

# Missing items keep their learned slot when it is free
{missing}
execute {unchanged} run return 0
scoreboard players set @s {self.objective} 0
{pack}"""

