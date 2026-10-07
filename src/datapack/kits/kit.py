""" A full kit and its rendering to the give functions.

Every kit command in the datapack is rendered here, so a change to how items are placed (such as honouring the player's layout) is a change to this one file rather than to 15 mode files.

While LAYOUT_ENABLED is False, Kit.write emits the canonical slot literally, which reproduces the hand-written commands byte for byte.
Turning it on swaps the slot for a macro argument that the {ns}:player/layout/resolve function fills in per player; with every layout score left at 0 the resolver hands back the canonical slot, so the emitted command is unchanged.
"""
# Imports
from dataclasses import dataclass

from stewbeet import Mem, write_function

from .model import KitItem
from .roles import SLOT_ID, TARGETS

# Constants
LAYOUT_ENABLED: bool = True
""" Whether kits place their movable items where each player's layout puts them. """


# Classes
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
			item.validate(self.name)

	def _table(self, ns: str) -> str:
		""" The one-command item table the resolver reads: reserved slots + one entry per movable item.

		`claim` defaults to "the first item of its role in declaration order"; `canon` is the declared slot, 1-indexed into TARGETS (the resolver's 0 means "unset").
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

	def _placements(self, use_layout: bool) -> list[tuple[KitItem, str]]:
		""" Each item with the slot it is written to, in declaration order.

		Args:
			use_layout: Whether movable items get a `$(s<i>)` macro slot instead of their canonical one.
		"""
		placements: list[tuple[KitItem, str]] = []
		role_slot: dict[str, str] = {}
		index: int = 0
		for item in self.items:
			if item.pinned:
				placements.append((item, item.slot))
				continue

			# An override lands wherever the item of the same role landed, so it never claims a slot of its own
			if item.override:
				if item.role not in role_slot:
					raise ValueError(f"Kit '{self.name}': '{item.role}' override has nothing to override")
				placements.append((item, role_slot[item.role]))
				continue

			slot: str = f"$(s{index})" if use_layout else item.slot
			role_slot.setdefault(item.role or "", slot)
			placements.append((item, slot))
			index += 1
		return placements

	def write(self, path: str) -> None:
		""" Write this kit's give function at `path`.

		When the layout system is on, the movable items go to a `<path>/items` macro body whose slots
		come from the player's resolved layout; pinned items and the raw pre/post lines stay in `path`.

		Args:
			path: Full function path, e.g. f"{ns}:modes/castagne/give_items".
		"""
		self.validate()
		ns: str = Mem.ctx.project_id
		use_layout: bool = LAYOUT_ENABLED and self.layout
		body: list[str] = []
		items_body: list[str] = []

		if self.pre:
			body.append(self.pre.strip("\n"))

		for item, slot in self._placements(use_layout):
			(items_body if use_layout and not item.pinned else body).extend(item.emit(slot))

		if items_body:
			body.append(self._table(ns))
			body.append(f"function {ns}:player/layout/resolve")
			body.append(f"function {path}/items with storage {ns}:layout out")
			write_function(f"{path}/items", "\n".join(items_body) + "\n")

		if self.post:
			body.append(self.post.strip("\n"))

		write_function(path, "\n".join(body) + "\n")

