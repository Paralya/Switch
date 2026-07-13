
""" The pitchout loadout: a random sword skin, a random bow skin, arrows, and shop-upgraded gear.

The sword and the bow are one item each, not four and three: `Variants` picks the skin, so each
still occupies a single slot that the player's layout can move. Same idea for the boots (the shop
level picks the item) and the ender pearls (the shop level picks the count).
"""

# Imports
from ...kits import Kit, KitItem, ScoreCount, Variants

UNBREAKABLE: str = 'unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]}'


def _sword(model: str) -> str:
	return f'diamond_sword[item_model="{{ns}}:{model}",{UNBREAKABLE},enchantments={{"knockback":3}}]'


def _bow(model: str) -> str:
	return f'bow[item_model="{{ns}}:{model}",{UNBREAKABLE},enchantments={{"punch":3, "infinity":1}}]'


def _boots(max_damage: int) -> str:
	return f"leather_boots[max_damage={max_damage}]"


PITCHOUT_KIT: Kit = Kit("pitchout", items=(
	# Give sword
	KitItem(role="melee", slot="hotbar.0", variants=Variants(score="#random {ns}.data", roll=4, items=(
		_sword("stardust_sword"), _sword("legendarium_sword"), _sword("solarium_sword"), _sword("darkium_sword"),
	))),
	# Give bow
	KitItem(role="ranged", slot="hotbar.1", variants=Variants(score="#random {ns}.data", roll=3, items=(
		_bow("stardust_bow"), _bow("awakened_stardust_bow"), _bow("ultimate_bow"),
	))),
	# Give arrows
	KitItem(role="ammo", item="arrow", count=64, slot="hotbar.2"),
	# Give depending on the upgrades
	KitItem(slot="armor.feet", variants=Variants(score="@s {ns}.pitchout.boots", last_open=True, items=(
		_boots(5), _boots(20), _boots(30), _boots(40), _boots(50), _boots(65),
	))),
	KitItem(role="mobility", item='ender_pearl[item_model="{ns}:dragon_pearl"]', slot="hotbar.8",
		count=ScoreCount(objective="{ns}.pitchout.ender_pearl", counts=(3, 4, 5))),
))
