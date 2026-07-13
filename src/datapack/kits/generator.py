
""" Turns a declarative Kit into mcfunction lines.

Every kit command in the datapack is rendered here, so a change to how items are placed (such as
honouring the player's layout) is a change to this one file rather than to 15 mode files.

While LAYOUT_ENABLED is False the generator writes the canonical slot literally, which reproduces
the hand-written commands byte for byte. Turning it on swaps the slot for a macro argument that the
{ns}:player/layout/resolve function fills in per player; with every layout score left at 0 the
resolver hands back the canonical slot, so the emitted command is unchanged.
"""

# Imports
from stewbeet import Mem, write_function

from .model import Kit, KitItem, ScoreCount
from .roles import ROLES, SLOT_ID, TARGETS

# Flipped on now that {ns}:player/layout/resolve exists; see module docstring.
LAYOUT_ENABLED: bool = True


# Utility
def _ns(text: str) -> str:
	""" Resolve the "{ns}" token in a kit string to the project namespace. """
	return text.replace("{ns}", Mem.ctx.project_id)


def _selector(parts: list[str]) -> str:
	""" Build the @s selector from bracket-content parts (e.g. ["team={ns}.temp.red"]). """
	return f"@s[{','.join(parts)}]" if parts else "@s"


def _count_suffix(count: int) -> str:
	""" Vanilla omits the count when it is 1, and so must we (byte-identical output). """
	return "" if count == 1 else f" {count}"


def _validate(kit: Kit) -> None:
	""" Catch kit mistakes at build time rather than in-game. """
	# Overrides ride along in another item's slot, so they don't count against the budget
	movable: list[KitItem] = [item for item in kit.items if not item.pinned and not item.override]

	if len(movable) > len(TARGETS):
		raise ValueError(f"Kit '{kit.name}': {len(movable)} remappable items, but only {len(TARGETS)} slots to put them in")

	slots: list[str] = [item.slot for item in movable]
	if len(set(slots)) != len(slots):
		duplicates: set[str] = {slot for slot in slots if slots.count(slot) > 1}
		raise ValueError(f"Kit '{kit.name}': several items declare the same canonical slot {sorted(duplicates)}")

	for item in kit.items:
		if item.role is not None and item.role not in ROLES:
			raise ValueError(f"Kit '{kit.name}': unknown role '{item.role}'")
		if not item.pinned and not item.override and item.slot not in SLOT_ID:
			raise ValueError(f"Kit '{kit.name}': role '{item.role}' sits on '{item.slot}', which players cannot remap")
		if item.override and item.pinned:
			raise ValueError(f"Kit '{kit.name}': an override needs a role, so it knows which item it replaces")
		if "$(" in item.item:
			raise ValueError(f"Kit '{kit.name}': item string contains a macro reference, which would be substituted away")


# Rendering
def _place(item: KitItem, slot: str, selector: str, item_string: str, count: int) -> str:
	""" The bare placement command, without any execute prefix. """
	if item.loot:
		count_part: str = "" if count == 1 else f" {count}"
		return f"loot replace entity {selector} {slot}{count_part} loot {item.loot}"
	if item.from_block:
		return f"item replace entity {selector} {slot} from block {item.from_block}"
	return f"item replace entity {selector} {slot} with {item_string}{_count_suffix(count)}"


def _emit(item: KitItem, slot: str) -> list[str]:
	""" Render one kit item to its command lines.

	The three ways a kit varies an item are independent and compose: `team_items` picks the item by
	team (a selector), `variants` picks it by score (a condition), and a ScoreCount picks the count
	by score (another condition).
	"""
	macro: str = "$" if "$(" in slot else ""
	lines: list[str] = []

	# An item chosen at random rolls once, then branches
	if item.variants and item.variants.roll is not None:
		lines.append(f"execute store result score {item.variants.score} run random value 0..{item.variants.roll - 1}")

	# Which item string, under which condition and selector
	choices: list[tuple[str, str, list[str]]] = []	# (condition, item string, selector parts)
	base_selector: list[str] = [item.selector] if item.selector else []
	if item.variants:
		last: int = len(item.variants.items) - 1
		for value, string in enumerate(item.variants.items):
			match: str = f"{value}.." if (item.variants.last_open and value == last) else str(value)
			choices.append((f"if score {item.variants.score} matches {match}", string, base_selector))
	elif item.team_items:
		for team, string in item.team_items.items():
			choices.append(("", string, [*base_selector, f"team={team}"]))
	else:
		choices.append(("", item.item, base_selector))

	# Which count, under which condition
	counts: list[tuple[str, int]] = []
	if isinstance(item.count, ScoreCount):
		per_level: tuple[int, ...] = item.count.per_level()
		last_level: int = len(per_level) - 1
		for index, count in enumerate(per_level):
			level: int = item.count.start + index
			if item.count.first_unless and index == 0:
				counts.append((f"unless score @s {item.count.objective} matches {level + 1}..", count))
				continue
			match = f"{level}.." if (item.count.last_open and index == last_level) else str(level)
			counts.append((f"if score @s {item.count.objective} matches {match}", count))
	else:
		counts.append(("", item.count))

	for choice_condition, item_string, selector_parts in choices:
		for count_condition, count in counts:
			clauses: list[str] = [c for c in (item.cond, choice_condition, count_condition) if c]
			prefix: str = f"execute {' '.join(clauses)} run " if clauses else ""
			lines.append(macro + prefix + _place(item, slot, _selector(selector_parts), item_string, count))

	# An item modifier applies to whatever landed in the slot, under the same condition as the item
	if item.modify:
		prefix = f"execute {item.cond} run " if item.cond else ""
		lines.append(macro + prefix + f"item modify entity {_selector(base_selector)} {slot} {item.modify}")

	return lines


def _kit_table(kit: Kit) -> str:
	""" The one-command item table the resolver reads: reserved slots + one entry per movable item.

	`claim` defaults to "the first item of its role in declaration order"; `canon` is the declared
	slot, 1-indexed into TARGETS (the resolver's 0 means "unset").
	"""
	claimed_roles: set[str] = set()
	entries: list[str] = []
	index: int = 0
	for item in kit.items:
		if item.pinned or item.override:
			continue
		claim: bool = item.claim if item.claim is not None else (item.role not in claimed_roles)
		if claim:
			claimed_roles.add(item.role or "")
		entries.append(f'{{i:{index},role:"{item.role}",claim:{int(claim)},canon:{SLOT_ID[item.slot]},sibling:{int(item.sibling)}}}')
		index += 1
	reserved: str = ",".join(f"{{s:{SLOT_ID[slot]}}}" for slot in kit.reserved)
	return f"data modify storage {{ns}}:layout kit set value {{reserved:[{reserved}],items:[{','.join(entries)}]}}"


def write_kit(path: str, kit: Kit) -> None:
	""" Write a kit's give function at `path`.

	When the layout system is on, the movable items go to a `<path>/items` macro body whose slots
	come from the player's resolved layout; pinned items and the raw pre/post lines stay in `path`.

	Args:
		path (str):  Full function path, e.g. f"{ns}:modes/castagne/give_items".
		kit  (Kit):  The loadout to hand out.
	"""
	_validate(kit)
	ns: str = Mem.ctx.project_id
	body: list[str] = []
	items_body: list[str] = []

	if kit.pre:
		body.append(kit.pre.strip("\n"))

	index: int = 0
	role_slot: dict[str, str] = {}
	for item in kit.items:
		if item.pinned:
			body.extend(_emit(item, item.slot))
			continue
		if item.override:
			# Lands wherever the item of the same role landed, so it never claims a slot of its own
			if item.role not in role_slot:
				raise ValueError(f"Kit '{kit.name}': '{item.role}' override has nothing to override")
			slot: str = role_slot[item.role]
		else:
			slot = f"$(s{index})" if LAYOUT_ENABLED else item.slot
			role_slot.setdefault(item.role or "", slot)
			index += 1
		(items_body if LAYOUT_ENABLED else body).extend(_emit(item, slot))

	if LAYOUT_ENABLED and index > 0:
		body.append(_kit_table(kit))
		body.append(f"function {ns}:player/layout/resolve")
		body.append(f"function {path}/items with storage {ns}:layout out")
		write_function(f"{path}/items", _ns("\n".join(items_body) + "\n"))

	if kit.post:
		body.append(kit.post.strip("\n"))

	write_function(path, _ns("\n".join(body) + "\n"))
