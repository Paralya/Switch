""" A full kit and its rendering to its give function.

Every kit command in the datapack is rendered here, so a change to how items are placed is a change to this one file rather than to 15 mode files.
"""
# Imports
from dataclasses import dataclass

from stewbeet import Mem, write_function

from .layout import LEARNED_SLOTS, LearnedKit, SlotGroup
from .model import KitItem


# Classes
@dataclass(frozen=True)
class Kit:
	""" A full loadout: raw command lines around an ordered list of items. """
	name: str
	""" Kit name, e.g. "archer"; used only for build-time error messages. """
	items: tuple[KitItem, ...] = ()
	""" The items, in declaration order; a later item on the same slot replaces an earlier one. """
	pre: str = ""
	""" Raw lines emitted before the items (clear @s, effect clear, ...). """
	post: str = ""
	""" Raw lines emitted after the items (attribute, effect give, loot give, ...). """
	key: str = ""
	""" Memory of another kit to learn into, e.g. "modes/spectres_game/give_items/visible"; that kit must be written first. Defaults to this kit's own path. """

	def write(self, path: str) -> None:
		""" Write this kit's give function at `path`, e.g. f"{ns}:modes/castagne/give_items".

		The items land on their declared slots, then move to the slots the player's memory of this kit holds.
		"""
		self.validate()
		ns: str = Mem.ctx.project_id
		lines: list[str] = [self.pre.strip("\n")] if self.pre else []
		lines.extend(line for item in self.items for line in item.emit())
		if self.post:
			lines.append(self.post.strip("\n"))

		groups: tuple[SlotGroup, ...] = self.groups()
		if not groups:
			write_function(path, "\n".join(lines) + "\n")
			return

		index, learned = LearnedKit.register(LearnedKit(key=self.key or path.split(":", 1)[1], path=path, groups=groups))
		write_function(path, f"function {ns}:player/layout/deactivate\n" + "\n".join(lines) + f"""

# Layout learned for this kit
scoreboard players set @s {ns}.layout.kit {index}
execute if score @s {learned.objective} matches 0.. run function {learned.path}/layout/apply
tag @s add {ns}.layout.active
""")

	def validate(self) -> None:
		""" Catch kit mistakes at build time rather than in-game. """
		for item in self.items:
			item.validate(self.name)
			if item.slot in LEARNED_SLOTS and (item.loot or item.from_block) and not item.match:
				raise ValueError(f"Kit '{self.name}': the {item.loot or item.from_block} item on {item.slot} needs a `match`, so its layout can find it")

	def groups(self) -> tuple[SlotGroup, ...]:
		""" The items on learned slots, grouped by slot in order of first declaration. """
		by_slot: dict[str, list[KitItem]] = {}
		for item in self.items:
			if item.slot in LEARNED_SLOTS:
				by_slot.setdefault(item.slot, []).append(item)
		ids: dict[str, set[str]] = {slot: {string.split("[")[0] for item in items for string in item.strings()} for slot, items in by_slot.items()}

		groups: list[SlotGroup] = []
		for slot, items in by_slot.items():
			shared: bool = any(ids[slot] & others for other, others in ids.items() if other != slot)
			if shared and any("[" not in item.match for item in items if item.loot or item.from_block):
				raise ValueError(f"Kit '{self.name}': an item id on {slot} is also on another slot, so the `match` of its loot item needs components to tell them apart")
			strings: list[str] = [string if shared else string.split("[")[0] for item in items for string in item.strings()]
			groups.append(SlotGroup(slot=slot, items=tuple(items), predicates=tuple(dict.fromkeys(strings))))
		return tuple(groups)

