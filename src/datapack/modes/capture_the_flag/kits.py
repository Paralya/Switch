
""" The five capture_the_flag class loadouts.

Each class ends on the same three items (a suicide potion, a stack of team wool and bread), which
used to be repeated verbatim in five functions; here they are the suicide / wool / BREAD pieces
below. The armour and attribute lines that surround a kit stay raw, in `pre` / `post`.

The kits embed the project namespace (axe modifier id, wool teams, pre/post function calls), so
they are built lazily by classes() instead of living at module level: the stewbeet CLI imports
this module before Mem.ctx exists.
"""

# Imports
from stewbeet import Mem

from ...kits import Kit, KitItem

# Item strings without a namespace; the ns-dependent ones live in classes().
HEAL_POTION: str = 'potion[potion_contents="minecraft:strong_healing"]'
_SUICIDE: str = 'potion[item_name={"text":"Suicide Potion","color":"dark_purple"},potion_contents={custom_color:4391004,custom_effects:[{id:"instant_damage",amplifier:AMPb,duration:20},{id:"wither",amplifier:10b,duration:-1},{id:"poison",amplifier:10b,duration:-1}]}]'


def suicide(amplifier: int) -> str:
	""" The class-specific "Suicide Potion" (only its instant_damage amplifier varies). """
	return _SUICIDE.replace("AMP", str(amplifier))


def wool(count: int, slot: str = "hotbar.7") -> KitItem:
	""" The team-coloured building wool every class carries. """
	ns: str = Mem.ctx.project_id
	return KitItem(role="blocks", count=count, slot=slot,
		team_items={f"{ns}.temp.red": "red_wool", f"{ns}.temp.blue": "blue_wool"})


BREAD: KitItem = KitItem(role="food", item="bread", count=21, slot="hotbar.8")


def classes() -> dict[str, Kit]:
	""" Build the five class loadouts, name -> Kit. """
	ns: str = Mem.ctx.project_id
	axe: str = f'stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]'
	common_pre: str = f"function {ns}:modes/capture_the_flag/classes/_common"
	soldier_attrs: str = f"function {ns}:modes/capture_the_flag/classes/_soldier_attrs"

	# The iron sword / damage axe / healing potion opener shared by the demolisher and the warrior
	soldier_base: tuple[KitItem, ...] = (
		KitItem(item="iron_chestplate", slot="armor.chest"),
		KitItem(item="chainmail_leggings", slot="armor.legs"),
		KitItem(item="iron_boots", slot="armor.feet"),
		KitItem(role="melee", item="iron_sword", slot="hotbar.0"),
		KitItem(role="axe", item=axe, slot="hotbar.1"),
		KitItem(role="heal", item=HEAL_POTION, slot="hotbar.2"),
	)

	archer: Kit = Kit("archer", pre=common_pre, items=(
		KitItem(item="chainmail_chestplate", slot="armor.chest"),
		KitItem(item="iron_leggings", slot="armor.legs"),
		KitItem(item="chainmail_boots", slot="armor.feet"),
		KitItem(role="melee", item="stone_sword", slot="hotbar.0"),
		KitItem(role="ranged", item='crossbow[charged_projectiles=[{id:"minecraft:arrow"}]]', slot="hotbar.1"),
		KitItem(role="axe", item=axe, slot="hotbar.2"),
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

	chemister: Kit = Kit("chemister", pre=common_pre, items=(
		KitItem(item="golden_chestplate", slot="armor.chest"),
		KitItem(item="diamond_leggings", slot="armor.legs"),
		KitItem(item="golden_boots", slot="armor.feet"),
		KitItem(role="melee", item="iron_sword", slot="hotbar.0"),
		KitItem(role="axe", item=axe, slot="hotbar.1"),
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
	demolisher: Kit = Kit("demolisher", pre=common_pre, items=(
		*soldier_base,
		KitItem(role="special", item=suicide(1), slot="hotbar.4"),
		wool(8, slot="hotbar.5"),
		KitItem(role="explosive", item="flint_and_steel", slot="hotbar.6", sibling=True),
		KitItem(role="explosive", item="tnt", count=2, slot="hotbar.7", claim=True),
		BREAD,
	), post=soldier_attrs)

	tank: Kit = Kit("tank", pre=common_pre, items=(
		KitItem(item="diamond_chestplate", slot="armor.chest"),
		KitItem(item="chainmail_leggings", slot="armor.legs"),
		KitItem(item="iron_boots", slot="armor.feet"),
		KitItem(role="melee", item="stone_sword", slot="hotbar.0"),
		KitItem(role="axe", item=axe, slot="hotbar.1"),
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

	warrior: Kit = Kit("warrior", pre=common_pre, items=(
		*soldier_base,
		KitItem(role="heal", item=HEAL_POTION, slot="hotbar.3", sibling=True),
		KitItem(role="special", item=suicide(1), slot="hotbar.6"),
		wool(12),
		BREAD,
	), post=soldier_attrs)

	return {
		"archer": archer,
		"chemister": chemister,
		"demolisher": demolisher,
		"tank": tank,
		"warrior": warrior,
	}
