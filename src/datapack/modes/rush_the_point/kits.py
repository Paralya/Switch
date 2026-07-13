
""" The five rush_the_point class loadouts.

Armour stays in the /classes/_common and /classes/_armor functions: it is never remapped, so there
is nothing to gain from lifting it into the kit. Only the items a player can rearrange live here.

The item strings embed the project namespace (can_break/can_place block tags, the fireball wand),
so the kits are built lazily by build_kits() instead of living at module level: the stewbeet CLI
imports this module before Mem.ctx exists.
"""

# Imports
from stewbeet import Mem

from ...kits import Kit, KitItem

UNBREAKABLE: str = 'unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}'

# The two healing potions and the bread every class ends on. The second potion trails the first, so
# a player who moves "heal" keeps the pair together.
HEALING_FOOD: tuple[KitItem, ...] = (
	KitItem(role="heal", item='potion[potion_contents="minecraft:strong_healing"]', slot="hotbar.6"),
	KitItem(role="heal", item='potion[potion_contents="minecraft:strong_healing"]', slot="hotbar.7", sibling=True),
	KitItem(role="food", item="bread", count=42, slot="hotbar.8"),
)


def build_kits() -> tuple[Kit, Kit, Kit, tuple[KitItem, ...]]:
	""" Build (archer, builder, destroyer, swordsman): the three standalone class kits, plus the
	shared diamond-sword loadout of the aviateur and the guerrier. """
	ns: str = Mem.ctx.project_id
	can_break: str = f'can_break={{blocks:"#{ns}:rush_the_point/can_break"}}'
	can_place: str = f'can_place_on={{blocks:"#{ns}:rush_the_point/can_place_on"}}'

	sand: str = f"cut_sandstone[{can_place}]"
	stairs: str = f"smooth_sandstone_stairs[{can_place}]"
	ravager: str = f"ravager_spawn_egg[{can_place}]"
	diamond_sword: str = f'diamond_sword[{UNBREAKABLE},enchantments={{"knockback":1}},{can_break}]'
	iron_sword: str = f'iron_sword[{UNBREAKABLE},enchantments={{"knockback":1}},{can_break}]'
	pickaxe: str = f"diamond_pickaxe[{UNBREAKABLE},{can_break}]"
	bow: str = f'bow[{UNBREAKABLE},enchantments={{"power":1}},{can_break}]'
	fireball_wand: str = f'warped_fungus_on_a_stick[{UNBREAKABLE},item_name={{"text":"Fireball Wand","color":"gold","italic":false}},item_model="{ns}:fireball_wand",custom_data={{{ns}:{{fireball_wand:true}}}}]'

	# The offhand sandstone is for bridging, so it keeps the offhand and lets the hotbar stack own
	# the "blocks" role: a player who moves blocks to another slot still bridges from the offhand.
	offhand_sand: KitItem = KitItem(role="blocks", item=sand, count=64, slot="weapon.offhand", claim=False)

	kit_base_pre: str = f"function {ns}:modes/rush_the_point/classes/_common\n\nfunction {ns}:modes/rush_the_point/classes/_armor\n"

	# Shared diamond-sword loadout of the aviateur and the guerrier
	swordsman: tuple[KitItem, ...] = (
		offhand_sand,
		KitItem(role="melee", item=diamond_sword, slot="hotbar.0"),
		KitItem(role="tool", item=pickaxe, slot="hotbar.1"),
		KitItem(role="blocks", item=sand, count=64, slot="hotbar.2", claim=True),
		*HEALING_FOOD,
	)

	archer: Kit = Kit("archer", pre=kit_base_pre, items=(
		offhand_sand,
		KitItem(role="ranged", item=bow, slot="hotbar.0"),
		KitItem(role="melee", item=iron_sword, slot="hotbar.1"),
		KitItem(role="tool", item=pickaxe, slot="hotbar.2"),
		KitItem(role="blocks", item=sand, count=64, slot="hotbar.3", claim=True),
		KitItem(role="mobility", item="ender_pearl", slot="hotbar.4"),
		*HEALING_FOOD,
		KitItem(item="arrow", count=64, slot="inventory.0"),
	))

	builder: Kit = Kit("builder", pre=kit_base_pre, items=(
		offhand_sand,
		KitItem(role="melee", item=iron_sword, slot="hotbar.0"),
		KitItem(role="blocks", item=stairs, count=64, slot="hotbar.1", sibling=True),
		KitItem(role="tool", item=pickaxe, slot="hotbar.2"),
		KitItem(role="blocks", item=sand, count=64, slot="hotbar.3", claim=True),
		KitItem(role="special", item=ravager, slot="hotbar.5"),
		*HEALING_FOOD,
	))

	destroyer: Kit = Kit("destroyer", pre=kit_base_pre, items=(
		offhand_sand,
		KitItem(role="special", item=fireball_wand, slot="hotbar.0"),
		KitItem(role="melee", item=iron_sword, slot="hotbar.1"),
		KitItem(role="tool", item=pickaxe, slot="hotbar.2"),
		KitItem(role="blocks", item=sand, count=64, slot="hotbar.3", claim=True),
		*HEALING_FOOD,
	))

	return archer, builder, destroyer, swordsman
