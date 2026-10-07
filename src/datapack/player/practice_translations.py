""" Messages and item names of the practice mode. """
# Imports
from stewbeet import Mem, write_function


# Functions
def write_practice_translations() -> None:
	""" Write the practice mode translation functions at switch:player/translations/practice_* """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/translations"

	# /practice_give_items (toggle item with green tooltip when the practice mode is enabled, action items only when enabled)
	write_function(f"{path}/practice_give_items", f"""
# French
item replace entity @s[scores={{{ns}.lang=0}},tag=!{ns}.practice] inventory.8 with stone[item_model="{ns}:stardust_fragment",item_name={{"text":"Practice Mode","color":"aqua"}},lore=[{{"text":"Clic pour activer le Practice Mode","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_toggle":true}}}},tooltip_style="failure"]
item replace entity @s[scores={{{ns}.lang=0}},tag={ns}.practice] inventory.8 with stone[item_model="{ns}:stardust_fragment",enchantment_glint_override=true,item_name={{"text":"Practice Mode","color":"aqua"}},lore=[{{"text":"Clic pour désactiver le Practice Mode","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_toggle":true}}}},tooltip_style="success"]
item replace entity @s[scores={{{ns}.lang=0}},tag={ns}.practice] hotbar.3 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="{ns}:stardust_fragment",item_name={{"text":"Place Checkpoint","color":"aqua"}},lore=[{{"text":"Clic droit pour poser un checkpoint (5 max)","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_action":true,"practice_place":true,"practice_viewer":true}}}}]
item replace entity @s[scores={{{ns}.lang=0}},tag={ns}.practice] hotbar.4 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="{ns}:wormhole_potion",item_name={{"text":"Respawn","color":"light_purple"}},lore=[{{"text":"Clic droit (ou tombe) pour revenir au dernier checkpoint","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_action":true,"practice_respawn":true}}}}]
item replace entity @s[scores={{{ns}.lang=0}},tag={ns}.practice] hotbar.5 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="{ns}:awakened_stardust",item_name={{"text":"Remove Checkpoint","color":"red"}},lore=[{{"text":"Clic droit pour retirer le dernier checkpoint","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_action":true,"practice_remove":true,"practice_viewer":true}}}}]

# English
item replace entity @s[scores={{{ns}.lang=1}},tag=!{ns}.practice] inventory.8 with stone[item_model="{ns}:stardust_fragment",item_name={{"text":"Practice Mode","color":"aqua"}},lore=[{{"text":"Click enable the Practice Mode","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_toggle":true}}}},tooltip_style="failure"]
item replace entity @s[scores={{{ns}.lang=1}},tag={ns}.practice] inventory.8 with stone[item_model="{ns}:stardust_fragment",enchantment_glint_override=true,item_name={{"text":"Practice Mode","color":"aqua"}},lore=[{{"text":"Click disable the Practice Mode","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_toggle":true}}}},tooltip_style="success"]
item replace entity @s[scores={{{ns}.lang=1}},tag={ns}.practice] hotbar.3 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="{ns}:stardust_fragment",item_name={{"text":"Place Checkpoint","color":"aqua"}},lore=[{{"text":"Right click to place a checkpoint (5 max)","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_action":true,"practice_place":true,"practice_viewer":true}}}}]
item replace entity @s[scores={{{ns}.lang=1}},tag={ns}.practice] hotbar.4 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="{ns}:wormhole_potion",item_name={{"text":"Respawn","color":"light_purple"}},lore=[{{"text":"Right click (or fall) to return to the last checkpoint","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_action":true,"practice_respawn":true}}}}]
item replace entity @s[scores={{{ns}.lang=1}},tag={ns}.practice] hotbar.5 with warped_fungus_on_a_stick[unbreakable={{}},tooltip_display={{"hidden_components":["minecraft:unbreakable"]}},item_model="{ns}:awakened_stardust",item_name={{"text":"Remove Checkpoint","color":"red"}},lore=[{{"text":"Right click to remove the last checkpoint","color":"gray","italic":false}}],custom_data={{"{ns}":{{"practice_item":true,"practice_action":true,"practice_remove":true,"practice_viewer":true}}}}]
""")

	# /practice_enabled
	write_function(f"{path}/practice_enabled", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Practice Mode activé !","color":"green"}},{{"text":"\\n➤ Fragment : pose un checkpoint (5 max, le plus ancien est supprimé)","color":"gray"}},{{"text":"\\n➤ Potion : respawn au dernier checkpoint (tomber fonctionne aussi)","color":"gray"}},{{"text":"\\n➤ Awakened Fragment : retire le dernier checkpoint","color":"gray"}},{{"text":"\\nLes jumps terminés en Practice Mode ne comptent pas !","color":"red"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Practice Mode enabled!","color":"green"}},{{"text":"\\n➤ Fragment: places a checkpoint (5 max, the oldest one is removed)","color":"gray"}},{{"text":"\\n➤ Potion: respawn to the last checkpoint (falling works too)","color":"gray"}},{{"text":"\\n➤ Awakened Fragment: removes the last checkpoint","color":"gray"}},{{"text":"\\nJumps completed in Practice Mode don't count!","color":"red"}}]
""")

	# /practice_disabled
	write_function(f"{path}/practice_disabled", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Practice Mode désactivé, retour au début du jump !","color":"yellow"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Practice Mode disabled, back to the start of the jump!","color":"yellow"}}]
""")

	# /practice_place_checkpoint
	write_function(f"{path}/practice_place_checkpoint", f"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"Checkpoint posé !","color":"green"}}

# English
title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"Checkpoint placed!","color":"green"}}
""")

	# /practice_remove_checkpoint
	write_function(f"{path}/practice_remove_checkpoint", f"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"Checkpoint retiré !","color":"yellow"}}

# English
title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"Checkpoint removed!","color":"yellow"}}
""")

	# /practice_no_checkpoint
	write_function(f"{path}/practice_no_checkpoint", f"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"Tu n'as aucun checkpoint !","color":"red"}}

# English
title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"You don't have any checkpoint!","color":"red"}}
""")

	# /practice_cant_place_here
	write_function(f"{path}/practice_cant_place_here", f"""
# French
title @s[scores={{{ns}.lang=0}}] actionbar {{"text":"Impossible de poser un checkpoint ici !","color":"red"}}

# English
title @s[scores={{{ns}.lang=1}}] actionbar {{"text":"You can't place a checkpoint here!","color":"red"}}
""")

