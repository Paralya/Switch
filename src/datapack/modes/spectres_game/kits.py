
""" The two spectres_game loadouts.

Spectres and visibles get different gear, so they are two kits rather than one: a single kit would
have to squeeze both teams' items into the same nine hotbar slots, and the layout resolver would
hand the spectre's sword and the visible's sword different slots for the same "melee" role.

Both kits keep their team selector on every line, so they can be called unconditionally and still
only reach the team they belong to.
"""

# Imports
from ...kits import Kit, KitItem, ScoreCount

SPECTRE: str = "team={ns}.temp.spectre"
VISIBLE: str = "team={ns}.temp.visible"

AXE: str = 'stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}]]'
TASKS_GAME: str = "if score #TASKS_GAME {ns}.data matches 1"

SPECTRE_KIT: Kit = Kit("spectre", items=(
	KitItem(role="mobility", item="water_bucket", slot="hotbar.0", selector=SPECTRE),
	KitItem(role="melee", item="stone_sword[enchantments={unbreaking:3,sharpness:3,fire_aspect:1}]", slot="hotbar.1", selector=SPECTRE),
	KitItem(role="ranged", item="bow[enchantments={punch:1}]", slot="hotbar.3", selector=SPECTRE),
	KitItem(role="heal", item="golden_apple", count=8, slot="hotbar.7", selector=SPECTRE),
	KitItem(role="blocks", item="oak_planks", count=64, slot="hotbar.8", selector=SPECTRE),
	KitItem(item="arrow", slot="inventory.0", selector=SPECTRE,
		count=ScoreCount(objective="{ns}.spectres_game.sp_arrows", base=24, step=2, levels=10)),
	KitItem(item=AXE, slot="inventory.1", selector=SPECTRE),
	# Emerald pickaxe if task game
	KitItem(role="tool", slot="hotbar.4", selector=SPECTRE, cond=TASKS_GAME,
		loot="{ns}:i/emerald_pickaxe", modify='{"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}'),
), post="""
effect give @s[{SPECTRE}] invisibility infinite 255 true
effect give @s[{SPECTRE}] resistance infinite 0 true
effect give @s[{SPECTRE}] resistance 30 1 true
effect give @s[{SPECTRE}] speed infinite 0 true
""".replace("{SPECTRE}", SPECTRE))

VISIBLE_KIT: Kit = Kit("visible", items=(
	KitItem(item="chainmail_helmet[enchantments={protection:1}]", slot="armor.head", selector=VISIBLE),
	KitItem(item="iron_chestplate[enchantments={fire_protection:1}]", slot="armor.chest", selector=VISIBLE),
	KitItem(item="iron_leggings[enchantments={protection:1}]", slot="armor.legs", selector=VISIBLE),
	KitItem(item="diamond_boots[enchantments={fire_protection:1}]", slot="armor.feet", selector=VISIBLE),
	KitItem(role="melee", item="stone_sword[enchantments={sharpness:1}]", slot="hotbar.0", selector=VISIBLE),
	KitItem(role="ranged", item="bow", slot="hotbar.1", selector=VISIBLE),
	KitItem(role="axe", item=AXE, slot="hotbar.2", selector=VISIBLE),
	KitItem(role="blocks", item="oak_planks", count=64, slot="hotbar.3", selector=VISIBLE),
	KitItem(role="mobility", item="water_bucket", slot="hotbar.7", selector=VISIBLE),
	KitItem(role="heal", item="golden_apple", count=5, slot="hotbar.8", selector=VISIBLE),
	KitItem(item="arrow", slot="inventory.0", selector=VISIBLE,
		count=ScoreCount(objective="{ns}.spectres_game.vi_arrows", base=16, step=2, levels=9)),
	# Emerald pickaxe if task game
	KitItem(role="tool", slot="hotbar.4", selector=VISIBLE, cond=TASKS_GAME,
		loot="{ns}:i/emerald_pickaxe", modify='{"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}'),
))
