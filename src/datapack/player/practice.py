
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


def write_practice_functions() -> None:
	""" Write the practice mode functions at switch:player/practice/* (Geometry Dash-like checkpoints for the lobby jumps).

	The toggle item (stardust fragment) sits in a corner of the lobby inventory: dropping it out toggles the practice mode.
	When enabled, 3 action items are given in the hotbar (place checkpoint / respawn / remove checkpoint).
	Checkpoints are stored in the "{ns}:practice" storage (never entities, so they can't be killed), 5 max per player.
	"""
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player/practice"
	write_practice_translations()

	# Storage setup (appended to switch:load)
	write_function(f"{ns}:load", f"""
# Practice mode storage (lobby jumps checkpoints)
execute unless data storage {ns}:practice players run data modify storage {ns}:practice players set value []
""")

	# /tick (called by {ns}:player/tick_detach, before the lobby respawn detection)
	write_function(f"{path}/tick", f"""
# Toggle item detection (only when the jump inventory is stable, setup_lobby_inventory handles the other cases)
execute if score #inventory {ns}.data matches 13 run function {ns}:player/practice/check_inventory

# The rest is only for players with practice mode enabled
execute unless entity @s[tag={ns}.practice] run return 1

# Right click actions on the practice items
execute if score @s {ns}.right_click matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.practice_place run function {ns}:player/practice/place_checkpoint
execute if score @s {ns}.right_click matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.practice_respawn run function {ns}:player/practice/respawn_click
execute if score @s {ns}.right_click matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.practice_remove run function {ns}:player/practice/remove_checkpoint

# Respawn to the last checkpoint when falling (runs before the default lobby respawn detection)
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=127] run function {ns}:player/practice/respawn_fall

# Show own checkpoints particles when holding the place/remove items
execute if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.practice_viewer run function {ns}:player/practice/show_particles
""")

	# /check_inventory (uses the Inventory copy made by tick_detach in {ns}:temp)
	write_function(f"{path}/check_inventory", f"""
# If the toggle item is missing from the inventory, the player dropped it out: toggle the practice mode
# (unless the practice items were never given, e.g. inventories saved before this feature existed: just give them)
scoreboard players set #has_toggle {ns}.data 0
execute store success score #has_toggle {ns}.data if data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.practice_toggle
execute if score #has_toggle {ns}.data matches 0 if entity @s[tag={ns}.practice_given] run return run function {ns}:player/practice/toggle
execute if score #has_toggle {ns}.data matches 0 run return run function {ns}:player/practice/give_items

# If practice mode is enabled and an action item is missing, re-give the practice items
execute unless entity @s[tag={ns}.practice] run return 1
execute store result score #practice_count {ns}.data if data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.practice_action
execute unless score #practice_count {ns}.data matches 3 run function {ns}:player/practice/give_items
""")

	# /toggle
	write_function(f"{path}/toggle", f"""
# Get current state
scoreboard players set #was_active {ns}.data 0
execute if entity @s[tag={ns}.practice] run scoreboard players set #was_active {ns}.data 1

# Clear the player's checkpoints in both cases
data modify storage {ns}:temp practice_input set value {{id:0}}
execute store result storage {ns}:temp practice_input.id int 1 run scoreboard players get @s {ns}.id
function {ns}:player/practice/clear_checkpoints_macro with storage {ns}:temp practice_input

# OFF -> ON
execute if score #was_active {ns}.data matches 0 run tag @s add {ns}.practice
execute if score #was_active {ns}.data matches 0 run playsound block.beacon.activate ambient @s
execute if score #was_active {ns}.data matches 0 run function {ns}:player/translations/practice_enabled

# ON -> OFF (teleport back to the start of the jump, so the player can't complete it from where they practiced)
execute if score #was_active {ns}.data matches 1 run tag @s remove {ns}.practice
execute if score #was_active {ns}.data matches 1 run tag @s add {ns}.lobby_respawn
execute if score #was_active {ns}.data matches 1 run playsound block.beacon.deactivate ambient @s
execute if score #was_active {ns}.data matches 1 run function {ns}:player/translations/practice_disabled

# Re-give the practice items
function {ns}:player/practice/give_items
""")

	# /clear_checkpoints_macro
	write_function(f"{path}/clear_checkpoints_macro", f"""
$data remove storage {ns}:practice players[{{id:$(id)}}]
""")

	# /give_items (called by setup_lobby_inventory and toggle, as/at the player)
	write_function(f"{path}/give_items", f"""
# Kill the practice items dropped on the ground nearby, then clear the ones in the inventory
kill @e[type=item,distance=..16,nbt={{Item:{{components:{{"minecraft:custom_data":{{{ns}:{{practice_item:true}}}}}}}}}}]
clear @s stone[custom_data~{{"{ns}":{{"practice_item":true}}}}]
clear @s warped_fungus_on_a_stick[custom_data~{{"{ns}":{{"practice_item":true}}}}]

# Give the items in the player's language, and remember they were given at least once (see check_inventory)
function {ns}:player/translations/practice_give_items
tag @s add {ns}.practice_given
""")

	# /place_checkpoint
	write_function(f"{path}/place_checkpoint", f"""
# Prevent placing a checkpoint in the fall/void zone (would cause an infinite respawn loop)
execute if entity @s[y=-64,dy=127] run playsound entity.villager.no ambient @s
execute if entity @s[y=-64,dy=127] run return run function {ns}:player/translations/practice_cant_place_here

# Build the checkpoint compound from the current position
data modify storage {ns}:temp practice_cp set value {{x:0.0d,y:0.0d,z:0.0d,yaw:0.0f,pitch:0.0f}}
data modify storage {ns}:temp practice_cp.x set from entity @s Pos[0]
data modify storage {ns}:temp practice_cp.y set from entity @s Pos[1]
data modify storage {ns}:temp practice_cp.z set from entity @s Pos[2]
data modify storage {ns}:temp practice_cp.yaw set from entity @s Rotation[0]
data modify storage {ns}:temp practice_cp.pitch set from entity @s Rotation[1]

# Append it to the player's checkpoint list (kills the oldest one above 5)
data modify storage {ns}:temp practice_input set value {{id:0}}
execute store result storage {ns}:temp practice_input.id int 1 run scoreboard players get @s {ns}.id
function {ns}:player/practice/place_checkpoint_macro with storage {ns}:temp practice_input

# Feedback
playsound block.respawn_anchor.set_spawn ambient @s
particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 15 force @s
function {ns}:player/translations/practice_place_checkpoint
""")

	# /place_checkpoint_macro
	write_function(f"{path}/place_checkpoint_macro", f"""
$execute unless data storage {ns}:practice players[{{id:$(id)}}] run data modify storage {ns}:practice players append value {{id:$(id),checkpoints:[]}}
$data modify storage {ns}:practice players[{{id:$(id)}}].checkpoints append from storage {ns}:temp practice_cp
$execute if data storage {ns}:practice players[{{id:$(id)}}].checkpoints[5] run data remove storage {ns}:practice players[{{id:$(id)}}].checkpoints[0]
""")

	# /get_last_checkpoint (fills {ns}:temp practice_cp if the player has at least one checkpoint)
	write_function(f"{path}/get_last_checkpoint", f"""
data remove storage {ns}:temp practice_cp
data modify storage {ns}:temp practice_input set value {{id:0}}
execute store result storage {ns}:temp practice_input.id int 1 run scoreboard players get @s {ns}.id
function {ns}:player/practice/get_last_checkpoint_macro with storage {ns}:temp practice_input
""")

	# /get_last_checkpoint_macro
	write_function(f"{path}/get_last_checkpoint_macro", f"""
$execute if data storage {ns}:practice players[{{id:$(id)}}].checkpoints[-1] run data modify storage {ns}:temp practice_cp set from storage {ns}:practice players[{{id:$(id)}}].checkpoints[-1]
""")

	# /respawn_click (right click on the wormhole potion)
	write_function(f"{path}/respawn_click", f"""
function {ns}:player/practice/get_last_checkpoint
execute unless data storage {ns}:temp practice_cp.x run playsound entity.villager.no ambient @s
execute unless data storage {ns}:temp practice_cp.x run return run function {ns}:player/translations/practice_no_checkpoint
function {ns}:player/practice/teleport
""")

	# /respawn_fall (no error message: without checkpoint, the default lobby respawn takes over)
	write_function(f"{path}/respawn_fall", f"""
function {ns}:player/practice/get_last_checkpoint
execute if data storage {ns}:temp practice_cp.x run function {ns}:player/practice/teleport
""")

	# /teleport (to the checkpoint in {ns}:temp practice_cp)
	write_function(f"{path}/teleport", f"""
function {ns}:player/practice/teleport_macro with storage {ns}:temp practice_cp
execute at @s run playsound {ns}:wormhole_potion ambient @s
execute at @s run particle portal ~ ~1 ~ 0.4 0.8 0.4 0.5 200
""")

	# /teleport_macro
	write_function(f"{path}/teleport_macro", """
$tp @s $(x) $(y) $(z) $(yaw) $(pitch)
""")

	# /remove_checkpoint
	write_function(f"{path}/remove_checkpoint", f"""
function {ns}:player/practice/get_last_checkpoint
execute unless data storage {ns}:temp practice_cp.x run playsound entity.villager.no ambient @s
execute unless data storage {ns}:temp practice_cp.x run return run function {ns}:player/translations/practice_no_checkpoint

# Remove the last checkpoint ({ns}:temp practice_input still holds the player id from get_last_checkpoint)
function {ns}:player/practice/remove_checkpoint_macro with storage {ns}:temp practice_input
function {ns}:player/practice/removed_particles_macro with storage {ns}:temp practice_cp
playsound block.respawn_anchor.deplete ambient @s
function {ns}:player/translations/practice_remove_checkpoint
""")

	# /remove_checkpoint_macro
	write_function(f"{path}/remove_checkpoint_macro", f"""
$data remove storage {ns}:practice players[{{id:$(id)}}].checkpoints[-1]
""")

	# /removed_particles_macro
	write_function(f"{path}/removed_particles_macro", """
$execute positioned $(x) $(y) $(z) run particle smoke ~ ~1 ~ 0.2 0.5 0.2 0.01 20 force @s
""")

	# /show_particles (particles on own checkpoints, only visible by the owner)
	write_function(f"{path}/show_particles", f"""
data modify storage {ns}:temp practice_input set value {{id:0}}
execute store result storage {ns}:temp practice_input.id int 1 run scoreboard players get @s {ns}.id
data modify storage {ns}:temp practice_cps set value []
function {ns}:player/practice/copy_checkpoints_macro with storage {ns}:temp practice_input
execute if data storage {ns}:temp practice_cps[0] run function {ns}:player/practice/particles_loop with storage {ns}:temp practice_cps[0]
""")

	# /copy_checkpoints_macro
	write_function(f"{path}/copy_checkpoints_macro", f"""
$execute if data storage {ns}:practice players[{{id:$(id)}}] run data modify storage {ns}:temp practice_cps set from storage {ns}:practice players[{{id:$(id)}}].checkpoints
""")

	# /particles_loop
	write_function(f"{path}/particles_loop", f"""
# Show a beam of particles at the checkpoint (only visible by the owner)
$execute positioned $(x) $(y) $(z) run particle end_rod ~ ~1 ~ 0.1 0.5 0.1 0 3 force @s

# Continue loop
data remove storage {ns}:temp practice_cps[0]
execute if data storage {ns}:temp practice_cps[0] run function {ns}:player/practice/particles_loop with storage {ns}:temp practice_cps[0]
""")


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
