
""" The five rush_the_point class loadouts.

Armour stays in the /classes/_common and /classes/_armor functions: it is never remapped, so there
is nothing to gain from lifting it into the kit. Only the items a player can rearrange live here.
"""

# Imports
from ...kits import Kit, KitItem

# Item strings. Plain strings, so NBT braces need no escaping; "{ns}" is resolved by the generator.
UNBREAKABLE: str = 'unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}'
CAN_BREAK: str = 'can_break={blocks:"#{ns}:rush_the_point/can_break"}'
CAN_PLACE: str = 'can_place_on={blocks:"#{ns}:rush_the_point/can_place_on"}'

SAND: str = f"cut_sandstone[{CAN_PLACE}]"
STAIRS: str = f"smooth_sandstone_stairs[{CAN_PLACE}]"
RAVAGER: str = f"ravager_spawn_egg[{CAN_PLACE}]"
DIAMOND_SWORD: str = f'diamond_sword[{UNBREAKABLE},enchantments={{"knockback":1}},{CAN_BREAK}]'
IRON_SWORD: str = f'iron_sword[{UNBREAKABLE},enchantments={{"knockback":1}},{CAN_BREAK}]'
PICKAXE: str = f"diamond_pickaxe[{UNBREAKABLE},{CAN_BREAK}]"
BOW: str = f'bow[{UNBREAKABLE},enchantments={{"power":1}},{CAN_BREAK}]'
FIREBALL_WAND: str = f'warped_fungus_on_a_stick[{UNBREAKABLE},item_name={{"text":"Fireball Wand","color":"gold","italic":false}},item_model="{{ns}}:fireball_wand",custom_data={{{{ns}}:{{fireball_wand:true}}}}]'

# The two healing potions and the bread every class ends on. The second potion trails the first, so
# a player who moves "heal" keeps the pair together.
HEALING_FOOD: tuple[KitItem, ...] = (
	KitItem(role="heal", item='potion[potion_contents="minecraft:strong_healing"]', slot="hotbar.6"),
	KitItem(role="heal", item='potion[potion_contents="minecraft:strong_healing"]', slot="hotbar.7", sibling=True),
	KitItem(role="food", item="bread", count=42, slot="hotbar.8"),
)

# The offhand sandstone is for bridging, so it keeps the offhand and lets the hotbar stack own the
# "blocks" role: a player who moves blocks to another slot still bridges from the offhand.
OFFHAND_SAND: KitItem = KitItem(role="blocks", item=SAND, count=64, slot="weapon.offhand", claim=False)

COMMON: str = "function {ns}:modes/rush_the_point/classes/_common"
ARMOR: str = "function {ns}:modes/rush_the_point/classes/_armor"
KIT_BASE_PRE: str = f"{COMMON}\n\n{ARMOR}\n"

# Shared diamond-sword loadout of the aviateur and the guerrier
SWORDSMAN: tuple[KitItem, ...] = (
	OFFHAND_SAND,
	KitItem(role="melee", item=DIAMOND_SWORD, slot="hotbar.0"),
	KitItem(role="tool", item=PICKAXE, slot="hotbar.1"),
	KitItem(role="blocks", item=SAND, count=64, slot="hotbar.2", claim=True),
	*HEALING_FOOD,
)

ARCHER: Kit = Kit("archer", pre=KIT_BASE_PRE, items=(
	OFFHAND_SAND,
	KitItem(role="ranged", item=BOW, slot="hotbar.0"),
	KitItem(role="melee", item=IRON_SWORD, slot="hotbar.1"),
	KitItem(role="tool", item=PICKAXE, slot="hotbar.2"),
	KitItem(role="blocks", item=SAND, count=64, slot="hotbar.3", claim=True),
	KitItem(role="mobility", item="ender_pearl", slot="hotbar.4"),
	*HEALING_FOOD,
	KitItem(item="arrow", count=64, slot="inventory.0"),
))

BUILDER: Kit = Kit("builder", pre=KIT_BASE_PRE, items=(
	OFFHAND_SAND,
	KitItem(role="melee", item=IRON_SWORD, slot="hotbar.0"),
	KitItem(role="blocks", item=STAIRS, count=64, slot="hotbar.1", sibling=True),
	KitItem(role="tool", item=PICKAXE, slot="hotbar.2"),
	KitItem(role="blocks", item=SAND, count=64, slot="hotbar.3", claim=True),
	KitItem(role="special", item=RAVAGER, slot="hotbar.5"),
	*HEALING_FOOD,
))

DESTROYER: Kit = Kit("destroyer", pre=KIT_BASE_PRE, items=(
	OFFHAND_SAND,
	KitItem(role="special", item=FIREBALL_WAND, slot="hotbar.0"),
	KitItem(role="melee", item=IRON_SWORD, slot="hotbar.1"),
	KitItem(role="tool", item=PICKAXE, slot="hotbar.2"),
	KitItem(role="blocks", item=SAND, count=64, slot="hotbar.3", claim=True),
	*HEALING_FOOD,
))
