
""" The five capture_the_flag class loadouts.

Each class ends on the same three items (a suicide potion, a stack of team wool and bread), which
used to be repeated verbatim in five functions; here they are the SUICIDE / wool / BREAD pieces
below. The armour and attribute lines that surround a kit stay raw, in `pre` / `post`.
"""

# Imports
from ...kits import Kit, KitItem

# Item strings. Plain strings, so NBT braces need no escaping; "{ns}" is resolved by the generator.
AXE: str = 'stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}]]'
HEAL_POTION: str = 'potion[potion_contents="minecraft:strong_healing"]'
_SUICIDE: str = 'potion[item_name={"text":"Suicide Potion","color":"dark_purple"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:AMPb,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}]'


def suicide(amplifier: int) -> str:
	""" The class-specific "Suicide Potion" (only its instant_damage amplifier varies). """
	return _SUICIDE.replace("AMP", str(amplifier))


def wool(count: int, slot: str = "hotbar.7") -> KitItem:
	""" The team-coloured building wool every class carries. """
	return KitItem(role="blocks", count=count, slot=slot,
		team_items={"{ns}.temp.red": "red_wool", "{ns}.temp.blue": "blue_wool"})


BREAD: KitItem = KitItem(role="food", item="bread", count=21, slot="hotbar.8")

# The iron sword / damage axe / healing potion opener shared by the demolisher and the warrior
SOLDIER_BASE: tuple[KitItem, ...] = (
	KitItem(item="iron_chestplate", slot="armor.chest"),
	KitItem(item="chainmail_leggings", slot="armor.legs"),
	KitItem(item="iron_boots", slot="armor.feet"),
	KitItem(role="melee", item="iron_sword", slot="hotbar.0"),
	KitItem(role="axe", item=AXE, slot="hotbar.1"),
	KitItem(role="heal", item=HEAL_POTION, slot="hotbar.2"),
)

COMMON_PRE: str = "function {ns}:modes/capture_the_flag/classes/_common"
SOLDIER_ATTRS: str = "function {ns}:modes/capture_the_flag/classes/_soldier_attrs"

ARCHER: Kit = Kit("archer", pre=COMMON_PRE, items=(
	KitItem(item="chainmail_chestplate", slot="armor.chest"),
	KitItem(item="iron_leggings", slot="armor.legs"),
	KitItem(item="chainmail_boots", slot="armor.feet"),
	KitItem(role="melee", item="stone_sword", slot="hotbar.0"),
	KitItem(role="ranged", item='crossbow[charged_projectiles=[{id:"minecraft:arrow"}]]', slot="hotbar.1"),
	KitItem(role="axe", item=AXE, slot="hotbar.2"),
	KitItem(role="heal", item=HEAL_POTION, slot="hotbar.3"),
	KitItem(role="ammo", item="arrow", count=24, slot="hotbar.4"),
	KitItem(role="special", item=suicide(3), slot="hotbar.6"),
	wool(24),
	BREAD,
), post="""
attribute @s movement_speed base set 0.11
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset
""")

CHEMISTER: Kit = Kit("chemister", pre=COMMON_PRE, items=(
	KitItem(item="golden_chestplate", slot="armor.chest"),
	KitItem(item="diamond_leggings", slot="armor.legs"),
	KitItem(item="golden_boots", slot="armor.feet"),
	KitItem(role="melee", item="iron_sword", slot="hotbar.0"),
	KitItem(role="axe", item=AXE, slot="hotbar.1"),
	KitItem(role="heal", item='lingering_potion[potion_contents="minecraft:strong_healing"]', slot="hotbar.2"),
	KitItem(role="mobility", item='lingering_potion[potion_contents="minecraft:long_swiftness"]', slot="hotbar.3"),
	KitItem(role="throwable", item='lingering_potion[potion_contents="minecraft:strong_harming"]', slot="hotbar.4"),
	KitItem(role="throwable", item='lingering_potion[potion_contents="minecraft:strong_poison"]', slot="hotbar.5", sibling=True),
	KitItem(role="special", item=suicide(1), slot="hotbar.6"),
	wool(8),
	BREAD,
), post="""
attribute @s movement_speed base set 0.10
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset
""")

# The demolisher carries both halves of a bomb: the TNT is what a player means by "my explosive
# slot", so it claims the role and the flint and steel trails it.
DEMOLISHER: Kit = Kit("demolisher", pre=COMMON_PRE, items=(
	*SOLDIER_BASE,
	KitItem(role="special", item=suicide(1), slot="hotbar.4"),
	wool(8, slot="hotbar.5"),
	KitItem(role="explosive", item="flint_and_steel", slot="hotbar.6", sibling=True),
	KitItem(role="explosive", item="tnt", count=2, slot="hotbar.7", claim=True),
	BREAD,
), post=SOLDIER_ATTRS)

TANK: Kit = Kit("tank", pre=COMMON_PRE, items=(
	KitItem(item="diamond_chestplate", slot="armor.chest"),
	KitItem(item="chainmail_leggings", slot="armor.legs"),
	KitItem(item="iron_boots", slot="armor.feet"),
	KitItem(role="melee", item="stone_sword", slot="hotbar.0"),
	KitItem(role="axe", item=AXE, slot="hotbar.1"),
	KitItem(role="heal", item="golden_apple", count=2, slot="hotbar.2"),
	KitItem(role="special", item=suicide(1), slot="hotbar.6"),
	wool(18),
	BREAD,
), post="""
attribute @s movement_speed base set 0.09
attribute @s attack_speed base set 2048
attribute @s max_health base set 24
attribute @s jump_strength base reset
""")

WARRIOR: Kit = Kit("warrior", pre=COMMON_PRE, items=(
	*SOLDIER_BASE,
	KitItem(role="heal", item=HEAL_POTION, slot="hotbar.3", sibling=True),
	KitItem(role="special", item=suicide(1), slot="hotbar.6"),
	wool(12),
	BREAD,
), post=SOLDIER_ATTRS)

CLASSES: dict[str, Kit] = {
	"archer": ARCHER,
	"chemister": CHEMISTER,
	"demolisher": DEMOLISHER,
	"tank": TANK,
	"warrior": WARRIOR,
}
