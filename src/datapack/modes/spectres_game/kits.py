""" The spectres_game loadouts.

Spectres and visibles get different gear, so they are two kits rather than one, each with its own learned layout.
A revived visible gets a lighter loadout that learns into the visible kit's layout.

The kits embed the project namespace (shop objectives, loot tables), so they are built lazily by functions instead of living at module level: the stewbeet CLI imports this module before Mem.ctx exists.
"""

# Imports
from stewbeet import Mem

from ...kits import Kit, KitItem, ScoreCount


def _axe(ns: str) -> str:
	return f'stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]'


def spectre_kit() -> Kit:
	""" Build the spectre loadout. """
	ns: str = Mem.ctx.project_id
	return Kit("spectre", items=(
		KitItem(item="water_bucket", slot="hotbar.0"),
		KitItem(item="stone_sword[enchantments={unbreaking:3,sharpness:3,fire_aspect:1}]", slot="hotbar.1"),
		KitItem(item="bow[enchantments={punch:1}]", slot="hotbar.3"),
		KitItem(item="golden_apple", count=8, slot="hotbar.7"),
		KitItem(item="oak_planks", count=64, slot="hotbar.8"),
		KitItem(item="arrow", slot="inventory.0",
			count=ScoreCount(objective=f"{ns}.spectres_game.sp_arrows", base=24, step=2, levels=10)),
		KitItem(item=_axe(ns), slot="inventory.1"),
		# Emerald pickaxe if task game
		KitItem(slot="hotbar.4", match="diamond_pickaxe", cond=f"if score #TASKS_GAME {ns}.data matches 1",
			loot=f"{ns}:i/emerald_pickaxe", modify='{"type":"minecraft:set_components","components":{"minecraft:max_damage":10}}'),
	), post="""
effect give @s invisibility infinite 255 true
effect give @s resistance infinite 0 true
effect give @s resistance 30 1 true
effect give @s speed infinite 0 true
""")


def visible_kit() -> Kit:
	""" Build the visible loadout. """
	ns: str = Mem.ctx.project_id
	return Kit("visible", items=(
		KitItem(item="chainmail_helmet[enchantments={protection:1}]", slot="armor.head"),
		KitItem(item="iron_chestplate[enchantments={fire_protection:1}]", slot="armor.chest"),
		KitItem(item="iron_leggings[enchantments={protection:1}]", slot="armor.legs"),
		KitItem(item="diamond_boots[enchantments={fire_protection:1}]", slot="armor.feet"),
		KitItem(item="stone_sword[enchantments={sharpness:1}]", slot="hotbar.0"),
		KitItem(item="bow", slot="hotbar.1"),
		KitItem(item=_axe(ns), slot="hotbar.2"),
		KitItem(item="oak_planks", count=64, slot="hotbar.3"),
		KitItem(item="water_bucket", slot="hotbar.7"),
		KitItem(item="golden_apple", count=5, slot="hotbar.8"),
		KitItem(item="arrow", slot="inventory.0",
			count=ScoreCount(objective=f"{ns}.spectres_game.vi_arrows", base=16, step=2, levels=9)),
		# Emerald pickaxe if task game
		KitItem(slot="hotbar.4", match="diamond_pickaxe", cond=f"if score #TASKS_GAME {ns}.data matches 1",
			loot=f"{ns}:i/emerald_pickaxe", modify='{"type":"minecraft:set_components","components":{"minecraft:max_damage":10}}'),
	))



def revive_visible_kit() -> Kit:
	""" Build the loadout of a player revived as a visible, which learns into the layout of the visible kit. """
	ns: str = Mem.ctx.project_id
	return Kit("revive_visible", key="modes/spectres_game/give_items/visible", pre=f"""
scoreboard players set #next_role {ns}.data 1
function {ns}:modes/spectres_game/roles/main
""", items=(
		KitItem(item="diamond_helmet[enchantments={protection:3}]", slot="armor.head"),
		KitItem(item="chainmail_chestplate[enchantments={fire_protection:2}]", slot="armor.chest"),
		KitItem(item="chainmail_leggings[enchantments={protection:3}]", slot="armor.legs"),
		KitItem(item="chainmail_boots[enchantments={fire_protection:2}]", slot="armor.feet"),
		KitItem(item="stone_sword[enchantments={sharpness:1}]", slot="hotbar.0"),
		KitItem(item="bow", slot="hotbar.1"),
		KitItem(item=_axe(ns), slot="hotbar.2"),
		KitItem(item="oak_planks", count=64, slot="hotbar.3"),
		KitItem(item="water_bucket", slot="hotbar.7"),
		KitItem(item="golden_apple", count=3, slot="hotbar.8"),
		KitItem(item="arrow", count=12, slot="inventory.0"),
	), post=f"""
give @s iron_pickaxe[enchantments={{efficiency:2}}]

scoreboard players set @s {ns}.alive 1
function {ns}:maps/spread_one_player
gamemode survival @s
""")

