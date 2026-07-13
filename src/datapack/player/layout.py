
# ruff: noqa: E501
""" Per-player inventory layout: where each kit ROLE lands in the hotbar/offhand.

Each player owns one {ns}.layout.<role> score per role (0 = no preference, 1..9 = hotbar.0..8,
10 = weapon.offhand). Every kit's give function feeds its item table to /player/layout/resolve,
which turns those preferences into an injective item-index -> slot-string map ({ns}:layout out);
the kit's /items macro body then substitutes $(s<i>) with the chosen slot.

With every score at 0 the resolver is the identity: each item falls back to the canonical slot the
kit declares, which is byte-for-byte the slot it used before this system existed.

Resolution, per kit and per player:
- reserve:  slots that raw kit lines write to (e.g. beat_the_kings' king gaps) are taken first.
- claim:    each item flagged claim whose role is mapped takes the player's slot, first come first
            served; a colliding claim is simply dropped to the fill phase, never lost.
- fill:     every remaining item takes, in order: the slot right after its role's chosen one when
            flagged sibling (keeps potion pairs adjacent), else its canonical slot, else the lowest
            free slot. A kit never has more than 10 remappable items (build-time assert), so the
            last fallback always succeeds and no two items ever share a slot.
"""

# Imports
from stewbeet import Mem, write_function

from ..kits.roles import MARKER_ITEM, ROLES, TARGETS

# Editor marker texts per role: (FR name, EN name, color, FR examples, EN examples)
ROLE_TEXT: dict[str, tuple[str, str, str, str, str]] = {
	"melee": ("Mêlée", "Melee", "#FF5555", "Épées, armes de corps à corps", "Swords, melee weapons"),
	"axe": ("Hache", "Axe", "#D87F33", "Haches de combat", "Battle axes"),
	"ranged": ("Distance", "Ranged", "#55FFFF", "Arcs, arbalètes, fusils", "Bows, crossbows, guns"),
	"ammo": ("Munitions", "Ammo", "#FFFF55", "Flèches", "Arrows"),
	"tool": ("Outil", "Tool", "#AAAAAA", "Pioches, pelles, cannes à pêche", "Pickaxes, shovels, fishing rods"),
	"blocks": ("Blocs", "Blocks", "#FFAA00", "Blocs de construction, laine", "Building blocks, wool"),
	"mobility": ("Mobilité", "Mobility", "#55FF55", "Seau d'eau, ender pearls", "Water bucket, ender pearls"),
	"heal": ("Soin", "Healing", "#FF55FF", "Pommes dorées, potions de soin", "Golden apples, healing potions"),
	"food": ("Nourriture", "Food", "#D8A56B", "Pain, pommes", "Bread, apples"),
	"explosive": ("Explosifs", "Explosives", "#FF0000", "TNT, briquet", "TNT, flint and steel"),
	"throwable": ("Potions offensives", "Offensive potions", "#9932CC", "Potions à lancer", "Splash potions"),
	"special": ("Spécial", "Special", "#FFD700", "Gadgets du mode (baguette, enclume...)", "Mode gadgets (wand, anvil...)"),
}

# Markers that are edible by nature get the component stripped, so they can't be eaten away
UNEATABLE: tuple[str, ...] = ("golden_apple", "bread")

# Fixed editor slots for the two control items and the palette of unmapped markers
SAVE_SLOT: str = "inventory.26"
RESET_SLOT: str = "inventory.24"


def write_layout_functions() -> None:
	""" Write the {ns}:player/layout/* resolver and register the layout scores/storage at load. """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/layout"

	# Score objectives + the slot-id -> slot-string lookup (appended to {ns}:load)
	objectives: str = "\n".join(f"scoreboard objectives add {ns}.layout.{role} dummy" for role in ROLES)
	slots: str = ",".join(f'"{slot}"' for slot in TARGETS)
	write_function(f"{ns}:load", f"""
# Per-player inventory layout (one score per kit role, 0 = default slot)
{objectives}
data modify storage {ns}:layout slots set value ["",{slots}]
""")

	# /init (as a new player: make sure every layout score exists, so the resolver's copies succeed)
	write_function(f"{path}/init", "\n".join(f"scoreboard players add @s {ns}.layout.{role} 0" for role in ROLES) + "\n")

	# /resolve (as the player receiving a kit; reads {ns}:layout kit, writes {ns}:layout out)
	free_all: str = ",".join(f"s{i}:1b" for i in range(1, len(TARGETS) + 1))
	write_function(f"{path}/resolve", f"""
data modify storage {ns}:layout free set value {{{free_all}}}
data modify storage {ns}:layout out set value {{}}

# Slots written by raw kit lines are never handed out
data modify storage {ns}:layout todo set from storage {ns}:layout kit.reserved
execute if data storage {ns}:layout todo[0] run function {path}/reserve_loop

# Claim phase: mapped roles take their slot
data modify storage {ns}:layout todo set from storage {ns}:layout kit.items
execute if data storage {ns}:layout todo[0] run function {path}/claim_loop

# Fill phase: everything else falls back (sibling, then canonical, then lowest free)
data modify storage {ns}:layout todo set from storage {ns}:layout kit.items
execute if data storage {ns}:layout todo[0] run function {path}/fill_loop
""")

	# /reserve_loop + /reserve
	write_function(f"{path}/reserve_loop", f"""
function {path}/reserve with storage {ns}:layout todo[0]
data remove storage {ns}:layout todo[0]
execute if data storage {ns}:layout todo[0] run function {path}/reserve_loop
""")
	write_function(f"{path}/reserve", f"""
$data modify storage {ns}:layout free.s$(s) set value 0b
""")

	# /claim_loop + /claim
	write_function(f"{path}/claim_loop", f"""
function {path}/claim with storage {ns}:layout todo[0]
data remove storage {ns}:layout todo[0]
execute if data storage {ns}:layout todo[0] run function {path}/claim_loop
""")
	write_function(f"{path}/claim", f"""
scoreboard players set #slot {ns}.data 0
$scoreboard players set #claim {ns}.data $(claim)
$execute if score #claim {ns}.data matches 1 run scoreboard players operation #slot {ns}.data = @s {ns}.layout.$(role)
$execute if score #slot {ns}.data matches 1..10 run function {path}/try_commit {{i:$(i)}}
""")

	# /fill_loop + /place
	write_function(f"{path}/fill_loop", f"""
function {path}/place with storage {ns}:layout todo[0]
data remove storage {ns}:layout todo[0]
execute if data storage {ns}:layout todo[0] run function {path}/fill_loop
""")
	write_function(f"{path}/place", f"""
$execute if data storage {ns}:layout out.s$(i) run return 0

scoreboard players set #slot {ns}.data 0
scoreboard players set #want {ns}.data 0

# Sibling rule: the slot right after the role's chosen one (kept within the hotbar)
$scoreboard players set #sibling {ns}.data $(sibling)
$execute if score #sibling {ns}.data matches 1 run scoreboard players operation #want {ns}.data = @s {ns}.layout.$(role)
execute unless score #want {ns}.data matches 1..8 run scoreboard players set #want {ns}.data -1
scoreboard players add #want {ns}.data 1
execute if score #want {ns}.data matches 2..9 run function {path}/check_free

# Canonical slot
$execute if score #slot {ns}.data matches 0 run scoreboard players set #want {ns}.data $(canon)
execute if score #slot {ns}.data matches 0 run function {path}/check_free

# Lowest free slot
execute if score #slot {ns}.data matches 0 run function {path}/lowest_free

$execute if score #slot {ns}.data matches 1..10 run function {path}/try_commit {{i:$(i)}}
""")

	# /check_free (sets #slot to #want when that slot is still free)
	write_function(f"{path}/check_free", f"""
execute store result storage {ns}:layout v.w int 1 run scoreboard players get #want {ns}.data
function {path}/check_free_macro with storage {ns}:layout v
""")
	write_function(f"{path}/check_free_macro", f"""
$execute if data storage {ns}:layout free{{s$(w):1b}} run scoreboard players set #slot {ns}.data $(w)
""")

	# /lowest_free
	write_function(f"{path}/lowest_free", "\n".join(
		f"execute if data storage {ns}:layout free{{s{i}:1b}} run return run scoreboard players set #slot {ns}.data {i}"
		for i in range(1, len(TARGETS) + 1)
	) + "\n")

	# /try_commit (macro arg i: commit #slot to out.s<i> when the slot is still free)
	write_function(f"{path}/try_commit", f"""
execute store result storage {ns}:layout v.s int 1 run scoreboard players get #slot {ns}.data
$data modify storage {ns}:layout v.i set value $(i)
function {path}/commit with storage {ns}:layout v
""")
	write_function(f"{path}/commit", f"""
$execute unless data storage {ns}:layout free{{s$(s):1b}} run return 0
$data modify storage {ns}:layout free.s$(s) set value 0b
$data modify storage {ns}:layout out.s$(i) set from storage {ns}:layout slots[$(s)]
""")

	# /username_change (macro: carry the layout over when a player renames, like the shop scores)
	write_function(f"{path}/username_change", "\n".join(
		f"$scoreboard players operation $(username) {ns}.layout.{role} = $(old_username) {ns}.layout.{role}"
		for role in ROLES
	) + "\n")

	write_layout_editor()


def _marker(ns: str, role: str, lang: str, mapped: bool) -> str:
	""" The editor marker item string for a role, in one language, mapped (green) or not (red). """
	fr_name, en_name, color, fr_ex, en_ex = ROLE_TEXT[role]
	name: str = fr_name if lang == "fr" else en_name
	examples: str = fr_ex if lang == "fr" else en_ex
	hint: str = (
		"Glisse-moi sur le slot voulu, ou jette-moi pour le slot par défaut" if lang == "fr"
		else "Drag me onto the wanted slot, or drop me out for the default slot"
	)
	uneatable: str = "!minecraft:consumable," if MARKER_ITEM[role] in UNEATABLE else ""
	state: str = 'enchantment_glint_override=true,tooltip_style="success"' if mapped else 'tooltip_style="failure"'
	return (
		f"{MARKER_ITEM[role]}[{uneatable}"
		f'item_name={{"text":"{name}","color":"{color}","italic":false}},'
		f'lore=[{{"text":"{examples}","color":"gray","italic":false}},{{"text":"{hint}","color":"dark_gray","italic":false}}],'
		f'custom_data={{"{ns}":{{"layout_item":true,"layout_role":"{role}"}}}},{state}]'
	)


def _control_item(ns: str, lang: str, save: bool) -> str:
	""" The save-and-exit / reset-to-defaults control item string, in one language. """
	if save:
		name = "Sauvegarder et quitter" if lang == "fr" else "Save and exit"
		hint = "Jette cet objet pour sauvegarder le layout" if lang == "fr" else "Drop this item to save the layout"
		return (f'lime_dye[item_name={{"text":"{name}","color":"green","italic":false}},'
			f'lore=[{{"text":"{hint}","color":"dark_gray","italic":false}}],'
			f'custom_data={{"{ns}":{{"layout_item":true,"layout_save":true}}}}]')
	name = "Réinitialiser" if lang == "fr" else "Reset to defaults"
	hint = "Jette cet objet pour tout remettre par défaut" if lang == "fr" else "Drop this item to reset every role"
	return (f'barrier[item_name={{"text":"{name}","color":"red","italic":false}},'
		f'lore=[{{"text":"{hint}","color":"dark_gray","italic":false}}],'
		f'custom_data={{"{ns}":{{"layout_item":true,"layout_reset":true}}}}]')


def write_layout_editor() -> None:
	""" Write the lobby drag-and-drop editor at {ns}:player/layout/editor/*.

	The player gets one marker item per role plus two control items; markers dragged into the
	hotbar/offhand become the layout, markers left in the palette (or dropped out) mean "default
	slot". Dropping the save item reads the arrangement back into the {ns}.layout.* scores;
	dropping the reset item zeroes them. Closing clears the inventory and lets the lobby tick
	rebuild the jump menu on its own (setup_lobby_inventory self-heals whenever an item is missing).
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/layout/editor"
	tr: str = f"{ns}:player/translations"
	kill_dropped: str = f"kill @e[type=item,distance=..16,nbt={{Item:{{components:{{\"minecraft:custom_data\":{{{ns}:{{layout_item:true}}}}}}}}}}]"

	# /entry (from the trigger; triggering again while editing = save and exit)
	write_function(f"{path}/entry", f"""
scoreboard players set @s {ns}.trigger.layout 0
execute if entity @s[tag=detached] run return 0
execute if entity @s[team={ns}.tutorial] run return 0
execute if score #engine_state {ns}.data matches 2..3 run return run function {tr}/layout_editor_unavailable
execute if entity @s[tag={ns}.layout_editor] run return run function {path}/save_and_close
function {path}/open
""")

	# /open
	write_function(f"{path}/open", f"""
function {ns}:player/practice/disable
tag @s add {ns}.layout_editor
function {path}/give_markers
function {tr}/layout_editor_open
playsound block.note_block.bell ambient @s
""")

	# /give_markers (mapped roles go straight to their slot, the rest to the palette)
	write_function(f"{path}/give_markers", f"""
# Kill editor items dropped on the ground nearby, then rebuild the inventory from scratch
{kill_dropped}
clear @s
function {tr}/layout_editor_markers
""")

	# /translations/layout_editor_markers (generated: 2 control items + 12 roles x 11 lines, per language)
	marker_lines: list[str] = []
	for lang_score, lang in ((0, "fr"), (1, "en")):
		selector: str = f"@s[scores={{{ns}.lang={lang_score}}}]"
		marker_lines.append(f"# {'French' if lang == 'fr' else 'English'}")
		marker_lines.append(f"item replace entity {selector} {SAVE_SLOT} with {_control_item(ns, lang, save=True)}")
		marker_lines.append(f"item replace entity {selector} {RESET_SLOT} with {_control_item(ns, lang, save=False)}")
		for index, role in enumerate(ROLES):
			marker_lines.append(f"execute unless score @s {ns}.layout.{role} matches 1..10 run item replace entity {selector} inventory.{index} with {_marker(ns, role, lang, mapped=False)}")
			for slot_id, slot in enumerate(TARGETS, start=1):
				marker_lines.append(f"execute if score @s {ns}.layout.{role} matches {slot_id} run item replace entity {selector} {slot} with {_marker(ns, role, lang, mapped=True)}")
		marker_lines.append("")
	write_function(f"{tr}/layout_editor_markers", "\n".join(marker_lines))

	# /tick (called by the lobby player tick, right after the practice tick; uses the {ns}:temp
	# Inventory copy made earlier in the same tick)
	write_function(f"{path}/tick", f"""
execute unless entity @s[tag={ns}.layout_editor] run return 0

# Kill any editor item dropped on the ground (dropping IS the action, the ground entity is noise)
{kill_dropped}

# Dropped the save item -> save and exit
scoreboard players set #has_item {ns}.data 0
execute store success score #has_item {ns}.data if data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.layout_save
execute if score #has_item {ns}.data matches 0 run return run function {path}/save_and_close

# Dropped the reset item -> every role back to its default slot
scoreboard players set #has_item {ns}.data 0
execute store success score #has_item {ns}.data if data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.layout_reset
execute if score #has_item {ns}.data matches 0 run return run function {path}/reset
""")

	# /read (scan hotbar + offhand for each role's marker; anywhere else = 0 = default slot)
	read_lines: list[str] = []
	for role in ROLES:
		read_lines.append(f"scoreboard players set @s {ns}.layout.{role} 0")
		for slot_id, slot in enumerate(TARGETS, start=1):
			read_lines.append(f'execute if items entity @s {slot} *[custom_data~{{{ns}:{{layout_role:"{role}"}}}}] run scoreboard players set @s {ns}.layout.{role} {slot_id}')
	write_function(f"{path}/read", "\n".join(read_lines) + "\n")

	# /save_and_close (the lobby tick re-gives the jump menu on its own once the tag is gone)
	write_function(f"{path}/save_and_close", f"""
function {path}/read
tag @s remove {ns}.layout_editor
clear @s
function {tr}/layout_editor_saved
playsound entity.player.levelup ambient @s
""")

	# /reset
	write_function(f"{path}/reset", "\n".join(
		f"scoreboard players set @s {ns}.layout.{role} 0" for role in ROLES
	) + f"""
function {path}/give_markers
function {tr}/layout_editor_reset
playsound block.note_block.hat ambient @s
""")

	# /force_close (game start / attach / detach: no save, the save item is the only way to save)
	write_function(f"{path}/force_close", f"""
execute unless entity @s[tag={ns}.layout_editor] run return 0
tag @s remove {ns}.layout_editor
clear @s
""")

	# Messages
	write_function(f"{tr}/layout_editor_open", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Éditeur de layout d'inventaire :","color":"yellow"}}]
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"Glisse chaque repère sur le slot (barre d'action ou main secondaire) où tu veux recevoir ce type d'item en début de partie."}}]
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"Repère laissé dans l'inventaire (ou jeté) = slot par défaut."}}]
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"Jette "}},{{"text":"Sauvegarder et quitter","color":"green"}},{{"text":" pour enregistrer, ou "}},{{"text":"Réinitialiser","color":"red"}},{{"text":" pour tout remettre par défaut."}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Inventory layout editor:","color":"yellow"}}]
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"Drag each marker onto the slot (hotbar or offhand) where you want that item type at the start of a game."}}]
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"Marker left in the inventory (or dropped out) = default slot."}}]
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"text":"➤ ","color":"gold"}},{{"text":"Drop "}},{{"text":"Save and exit","color":"green"}},{{"text":" to save, or "}},{{"text":"Reset to defaults","color":"red"}},{{"text":" to start over."}}]
""")
	write_function(f"{tr}/layout_editor_saved", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Layout sauvegardé ! Il s'appliquera aux kits de tous les mini-jeux.","color":"green"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["\\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Layout saved! It will apply to every mini-game kit.","color":"green"}}]
""")
	write_function(f"{tr}/layout_editor_reset", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Layout réinitialisé : tous les rôles utilisent leur slot par défaut.","color":"yellow"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Layout reset: every role is back to its default slot.","color":"yellow"}}]
""")
	write_function(f"{tr}/layout_editor_unavailable", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" L'éditeur de layout n'est pas disponible pendant une partie.","color":"red"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" The layout editor is not available during a game.","color":"red"}}]
""")
