
""" Semantic roles for kit items, and the inventory slots a player may remap them to.

A kit item is tagged with a role (what it is *for*), not a slot. Each player owns one global
role -> slot map (the {ns}.layout.<role> scores), so "my sword is always on slot 4" holds in
every mode. A role left at 0 means "no preference": the item falls back to the slot the kit
declares, which is exactly the slot it used before this system existed.
"""

# Roles, in editor palette order.
# `axe` is deliberately distinct from `melee`: nearly every combat kit carries BOTH a sword and a
# damage-boosted axe, so merging them would make a same-role duplicate out of every single kit.
# `throwable` (offensive potions) is likewise distinct from `heal`, which keeps capture_the_flag's
# chemister (4 lingering potions) from collapsing into a 4-way duplicate.
ROLES: tuple[str, ...] = (
	"melee",		# sword, "Fishy Fish"
	"axe",			# axe used as a weapon (carries an attack_damage modifier)
	"ranged",		# bow, crossbow, laser gun
	"ammo",			# arrow
	"tool",			# pickaxe, shovel, shears, fishing rod
	"blocks",		# planks, wool, concrete, cut sandstone, stairs, bricks, snow block
	"mobility",		# water bucket, ender pearl, swiftness potion
	"heal",			# golden apple, healing potion
	"food",			# bread, apple
	"explosive",	# tnt, flint and steel
	"throwable",	# offensive splash/lingering potion
	"special",		# mode gadget: fireball wand, ravager egg, grappling hook, anvil, spawn egg
)

# The slots a player may remap a role to. Index in this tuple + 1 == the value stored in the
# {ns}.layout.<role> score (0 is reserved for "no preference"), and also the index into the
# {ns}:layout `slots` storage list that the resolver reads.
TARGETS: tuple[str, ...] = (
	"hotbar.0", "hotbar.1", "hotbar.2", "hotbar.3", "hotbar.4",
	"hotbar.5", "hotbar.6", "hotbar.7", "hotbar.8", "weapon.offhand",
)
SLOT_ID: dict[str, int] = {slot: i + 1 for i, slot in enumerate(TARGETS)}

# Items shown in the lobby layout editor, one per role. Purely cosmetic: the editor reads the
# arrangement back with *[custom_data~{...}], so these need not be unique.
MARKER_ITEM: dict[str, str] = {
	"melee": "iron_sword",
	"axe": "stone_axe",
	"ranged": "bow",
	"ammo": "arrow",
	"tool": "iron_pickaxe",
	"blocks": "oak_planks",
	"mobility": "ender_pearl",
	"heal": "golden_apple",
	"food": "bread",
	"explosive": "tnt",
	"throwable": "splash_potion",
	"special": "nether_star",
}
