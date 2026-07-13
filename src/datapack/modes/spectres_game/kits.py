
""" The two spectres_game loadouts.

Spectres and visibles get different gear, so they are two kits rather than one: a single kit would
have to squeeze both teams' items into the same nine hotbar slots, and the layout resolver would
hand the spectre's sword and the visible's sword different slots for the same "melee" role.

Both kits keep their team selector on every line, so they can be called unconditionally and still
only reach the team they belong to.

The kits embed the project namespace (team selectors, shop objectives, loot tables), so they are
built lazily by spectre_kit() / visible_kit() instead of living at module level: the stewbeet CLI
imports this module before Mem.ctx exists.
"""

# Imports
from stewbeet import Mem

from ...kits import Kit, KitItem, ScoreCount


def _axe(ns: str) -> str:
	return f'stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]'


def spectre_kit() -> Kit:
	""" Build the spectre loadout. """
	ns: str = Mem.ctx.project_id
	spectre: str = f"team={ns}.temp.spectre"
	return Kit("spectre", items=(
		KitItem(role="mobility", item="water_bucket", slot="hotbar.0", selector=spectre),
		KitItem(role="melee", item="stone_sword[enchantments={unbreaking:3,sharpness:3,fire_aspect:1}]", slot="hotbar.1", selector=spectre),
		KitItem(role="ranged", item="bow[enchantments={punch:1}]", slot="hotbar.3", selector=spectre),
		KitItem(role="heal", item="golden_apple", count=8, slot="hotbar.7", selector=spectre),
		KitItem(role="blocks", item="oak_planks", count=64, slot="hotbar.8", selector=spectre),
		KitItem(item="arrow", slot="inventory.0", selector=spectre,
			count=ScoreCount(objective=f"{ns}.spectres_game.sp_arrows", base=24, step=2, levels=10)),
		KitItem(item=_axe(ns), slot="inventory.1", selector=spectre),
		# Emerald pickaxe if task game
		KitItem(role="tool", slot="hotbar.4", selector=spectre, cond=f"if score #TASKS_GAME {ns}.data matches 1",
			loot=f"{ns}:i/emerald_pickaxe", modify='{"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}'),
	), post=f"""
effect give @s[{spectre}] invisibility infinite 255 true
effect give @s[{spectre}] resistance infinite 0 true
effect give @s[{spectre}] resistance 30 1 true
effect give @s[{spectre}] speed infinite 0 true
""")


def visible_kit() -> Kit:
	""" Build the visible loadout. """
	ns: str = Mem.ctx.project_id
	visible: str = f"team={ns}.temp.visible"
	return Kit("visible", items=(
		KitItem(item="chainmail_helmet[enchantments={protection:1}]", slot="armor.head", selector=visible),
		KitItem(item="iron_chestplate[enchantments={fire_protection:1}]", slot="armor.chest", selector=visible),
		KitItem(item="iron_leggings[enchantments={protection:1}]", slot="armor.legs", selector=visible),
		KitItem(item="diamond_boots[enchantments={fire_protection:1}]", slot="armor.feet", selector=visible),
		KitItem(role="melee", item="stone_sword[enchantments={sharpness:1}]", slot="hotbar.0", selector=visible),
		KitItem(role="ranged", item="bow", slot="hotbar.1", selector=visible),
		KitItem(role="axe", item=_axe(ns), slot="hotbar.2", selector=visible),
		KitItem(role="blocks", item="oak_planks", count=64, slot="hotbar.3", selector=visible),
		KitItem(role="mobility", item="water_bucket", slot="hotbar.7", selector=visible),
		KitItem(role="heal", item="golden_apple", count=5, slot="hotbar.8", selector=visible),
		KitItem(item="arrow", slot="inventory.0", selector=visible,
			count=ScoreCount(objective=f"{ns}.spectres_game.vi_arrows", base=16, step=2, levels=9)),
		# Emerald pickaxe if task game
		KitItem(role="tool", slot="hotbar.4", selector=visible, cond=f"if score #TASKS_GAME {ns}.data matches 1",
			loot=f"{ns}:i/emerald_pickaxe", modify='{"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}'),
	))
