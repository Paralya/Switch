
# ruff: noqa: W291
# Imports
from stewbeet import Mem, write_function

from ...resource_pack.lobby_gui import PARTS as OVERLAY_PARTS
from .jump_timer import write_jump_timer_functions
from .jumps import LOBBY_ITEMS
from .layout import write_layout_functions
from .practice import write_practice_functions
from .stats_storage import write_stats_storage
from .tick_detach import write_tick_detach
from .translations import write_translations
from .trigger_attach import write_trigger_attach
from .trigger_coupdetat import write_trigger_coupdetat
from .trigger_rating import write_trigger_rating
from .trigger_stats import write_trigger_stats
from .trigger_succes import write_trigger_succes
from .triggers import write_triggers
from .tutorial import write_tutorial
from .username_change import write_username_change


def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"
	write_translations()
	write_practice_functions()
	write_jump_timer_functions()
	write_layout_functions()

	# /detached_action_bar
	write_function(f"{path}/detached_action_bar", f"""
# Get the number of players in-game and stop if no players are found
execute store result score #players_in_game {ns}.data if entity @a[tag=!detached]
execute if score #players_in_game {ns}.data matches 0 run return fail

# Title action bar
function {ns}:player/translations/detached_action_bar
""")

	# /easter_egg
	write_function(f"{path}/easter_egg", f"""
# Tak

# Liste des easter eggs : 
# - $(tag) ; Texte qui s'affiche ; Panneau
# - {ns}.easter_egg.cc_001001 ; Coucou, tu veux voir ma 01001100 ; same (16 74 83)
# - {ns}.easter_egg.pi ; 3.141895 ; plus de décimales (24 69 8)
# - {ns}.easter_egg.ping ; Ping ; Pong (-82 70 8)
# - {ns}.easter_egg.pong ; Pong ; Ping (47 70 8)
# - {ns}.easter_egg.42 ; 42 ; La réponse à la vie (-51 73 10)
# - {ns}.easter_egg.ayjaraQ ; ayjaraQ ; A long time ago (25 76 52)
# - {ns}.easter_egg.luxium ; Luxium ; in a galaxy far (2 68 140)
# - {ns}.easter_egg.friends_cube ; Friends Cube ; far away (-36 68 -7)


$tag @s add $(tag).temp


# Si la personne a déjà cliqué sur un easter egg, on lui affiche un message
execute if entity @s[tag={ns}.easter_egg.cc_001001.temp,tag={ns}.easter_egg.cc_001001] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.pi.temp,tag={ns}.easter_egg.pi] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.ping.temp,tag={ns}.easter_egg.ping] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.pong.temp,tag={ns}.easter_egg.pong] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.42.temp,tag={ns}.easter_egg.42] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.ayjaraQ.temp,tag={ns}.easter_egg.ayjaraQ] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.luxium.temp,tag={ns}.easter_egg.luxium] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]
execute if entity @s[tag={ns}.easter_egg.friends_cube.temp,tag={ns}.easter_egg.friends_cube] run tellraw @s ["",{{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}}]



# Si la personne clique sur un easter egg, on lui affiche un message
execute if entity @s[tag={ns}.easter_egg.cc_001001.temp] run tellraw @s ["",{{"text":"Coucou, tu veux voir ma 01001100 ?","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.pi.temp] run tellraw @s ["",{{"text":"3.141592653589793238462643383279...","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.ping.temp] run tellraw @s ["",{{"text":"Ping","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.pong.temp] run tellraw @s ["",{{"text":"Pong","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.42.temp] run tellraw @s ["",{{"text":"42","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.ayjaraQ.temp] run tellraw @s ["",{{"text":"ayjaraQ","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.luxium.temp] run tellraw @s ["",{{"text":"Luxium","color":"gold"}}]
execute if entity @s[tag={ns}.easter_egg.friends_cube.temp] run tellraw @s ["",{{"text":"Friends Cube","color":"gold"}}]



# Si la personne clique pour la première fois sur un easter egg, on lui ajoute un point
execute unless entity @s[tag={ns}.easter_egg.cc_001001] if entity @s[tag={ns}.easter_egg.cc_001001.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.pi] if entity @s[tag={ns}.easter_egg.pi.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.ping] if entity @s[tag={ns}.easter_egg.ping.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.pong] if entity @s[tag={ns}.easter_egg.pong.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.42] if entity @s[tag={ns}.easter_egg.42.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.ayjaraQ] if entity @s[tag={ns}.easter_egg.ayjaraQ.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.luxium] if entity @s[tag={ns}.easter_egg.luxium.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1
execute unless entity @s[tag={ns}.easter_egg.friends_cube] if entity @s[tag={ns}.easter_egg.friends_cube.temp] run scoreboard players add @s {ns}.lobby_easter_egg_counter 1



tellraw @s[scores={{{ns}.lobby_easter_egg_counter=1}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu as trouvé un easter egg sur 8 !","color":"green"}}]
tellraw @s[scores={{{ns}.lobby_easter_egg_counter=2..}}] ["",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Tu as trouvé ","color":"green"}},{{"score":{{"name":"@s","objective":"{ns}.lobby_easter_egg_counter"}},"color":"gold"}},{{"text":" easter eggs sur 8 !","color":"green"}}]

# Grant advancement if all easter eggs are found
execute if score @s {ns}.lobby_easter_egg_counter matches 8 run advancement grant @s only {ns}:visible/83

$tag @s remove $(tag).temp
$tag @s add $(tag)
""")

	# /easter_egg_give
	write_function(f"{path}/easter_egg_give", rf"""
give @s oak_sign[item_name={{"text":"Coucou tu veux voir ma"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"Coucou","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.cc_001001\"}}"}}}},{{"text":"tu veux voir ma"}},{{"text":"000101"}}]}}}}]
give @s oak_sign[item_name={{"text":"3.141592 - pi"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"3.141592...","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.pi\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Ping - Pong"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"Pong","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.ping\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Pong - Ping"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"Ping","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.pong\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"42 - La réponse à la vie"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"La réponse à la","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.42\"}}"}}}},{{"text":"vie"}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"ayjaraQ - A long time ago"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"A long time ago","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.ayjaraQ\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Luxium - in a galaxy,"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"in a galaxy,","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.luxium\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Friends Cube - far away"}},block_entity_data={{"id": "minecraft:sign",allow_op_features:true,front_text:{{messages:[{{"text":""}},{{"text":"far away","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.friends_cube\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
""")

	# /joined
	write_function(f"{path}/joined", f"""
# A post effect is saved with the player, so leaving during a card would bring it back
function {ns}:engine/launch_game/intro/remove
function {ns}:engine/role_card/remove

# Add 0 to every shop score
function {ns}:shop/initialize_shop_scores

# Check if new username
function {ns}:player/username_change/check

# Update advancements just in case
execute if entity @s[advancements={{{ns}:tutorial=true,{ns}:a_switch=false}}] run function {ns}:player/tutorial/grant_root
function {ns}:advancements/update_percentages

# Update player storage
function {ns}:player/update_stats_storage/main
function {ns}:stats/async/sort_player_stats

# On détecte si c'est une reconnexion ou non
scoreboard players set #reconnect {ns}.data 0
execute if score @s {ns}.last_total_games = total_games {ns}.last_total_games run scoreboard players set #reconnect {ns}.data 1

# Si ce n'est pas une reconnexion, on reset ses attributs
execute if score #reconnect {ns}.data matches 0 run function {ns}:utils/reset_attributes

# Si le joueur n'a pas joué depuis plus de 600 secondes, on le détache
scoreboard players operation @s {ns}.reconnect -= #score {ns}.reconnect
execute if score @s[tag=!detached] {ns}.reconnect matches -600.. run function {ns}:player/make_join
function {ns}:player/translations/joined
execute unless score @s {ns}.reconnect matches -600.. run function {ns}:player/trigger/detach/main

# A lobby inventory saved by another datapack version gets the current jump items
execute if items entity @s[tag=detached] inventory.* *[custom_data~{{"{ns}":{{"jump":true}}}}] run function {ns}:player/setup_lobby_jumps

# Prevent calling this function again
scoreboard players operation @s {ns}.reconnect = #score {ns}.reconnect
""")

	# /kill_out_of_map
	write_function(f"{path}/kill_out_of_map", f"""
function {ns}:player/translations/kill_out_of_map
tp @s ~ ~1 ~
kill @s
""")

	# /make_join
	write_function(f"{path}/make_join", f"""
# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s {ns}.alive 0
execute if score #engine_state {ns}.data matches 2 run function {ns}:engine/voting_time/player_join
execute if score #engine_state {ns}.data matches 3 run function {ns}:engine/signals/joined
execute unless score #engine_state {ns}.data matches 2..3 run function {ns}:player/trigger/detach/basic_stuff
""")

	# /set_id
	write_function(f"{path}/set_id", f"""
scoreboard players add #next_id {ns}.id 1
scoreboard players operation @s {ns}.id = #next_id {ns}.id

# Update player stats
function {ns}:stats/util_update_player

# Launch tutorial
function {ns}:player/tutorial/start
""")

	# /restore_lobby_gui: a piece leaves its slot to the cursor, the hotbar or the ground, and `clear` also empties the cursor
	# Each `clear` or `item replace` on a player fires inventory_changed at once: {ns}.lobby_setup keeps this function from running again mid-write
	in_place: str = " ".join(f'if items entity @s inventory.{part.slot} *[item_model="{ns}:gui/{name}"]' for name, part in OVERLAY_PARTS.items())
	write_function(f"{path}/restore_lobby_gui", f"""
execute {in_place} run return 0
execute unless items entity @s inventory.* *[custom_data~{{"{ns}":{{"jump":true}}}}] run return 0

tag @s add {ns}.lobby_setup
clear @s *[custom_data~{{"{ns}":{{"lobby_gui":true}}}}]
execute as @e[type=item,distance=..4] if items entity @s contents *[custom_data~{{"{ns}":{{"lobby_gui":true}}}}] run kill @s
function {ns}:player/setup_lobby_inventory
""")

	# /setup_lobby_jumps: safe to call at any time, since rewriting an unchanged jump item fires no inventory_changed
	jump_lines: str = "\n".join(
		f'item replace entity @s[advancements={{{ns}:visible/jump_{key}={done}}}] inventory.{slot} with {item}[item_name={{"text":"{name}","color":"{color}"}},lore=[{{"text":"by {authors}","color":"gray","italic":false}}],item_model="{ns}:jump/{key}_{state}",custom_data={{"{ns}":{{"jump":true,"jump_{key}":true}}}},tooltip_style="{style}"]'
		for key, slot, item, name, color, authors in LOBBY_ITEMS
		for done, state, style in (("false", "todo", "failure"), ("true", "done", "success"))
	)
	write_function(f"{path}/setup_lobby_jumps", jump_lines)
	write_function(f"{ns}:load", f"""
# Lobby inventories saved by another datapack version get the current jump items
execute as @a[tag=detached] if items entity @s inventory.* *[custom_data~{{"{ns}":{{"jump":true}}}}] run function {ns}:player/setup_lobby_jumps
""")

	# /setup_lobby_inventory
	overlay_lines: str = "\n".join(
		f'item replace entity @s inventory.{part.slot} with paper[item_model="{ns}:gui/{name}",max_stack_size=1,tooltip_display={{hide_tooltip:true}},custom_data={{"{ns}":{{"lobby_gui":true}}}}]'
		for name, part in OVERLAY_PARTS.items()
	)
	write_function(f"{path}/setup_lobby_inventory", f"""
tag @s add {ns}.lobby_setup

function {ns}:player/setup_lobby_jumps

# Overlay drawn over the whole inventory screen and the effects sidebar (see src/resource_pack/lobby_gui.py)
{overlay_lines}

# Practice mode items (toggle + action items if enabled)
function {ns}:player/practice/give_items

tag @s remove {ns}.lobby_setup
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Check if new username
execute unless score @s {ns}.reconnect = #score {ns}.reconnect run function {ns}:player/username_change/check

# Handle player trigger inputs
function {ns}:player/trigger/main

# Ask for a lang if not set
execute unless score @s {ns}.lang matches 0.. run function {ns}:player/trigger/lang/tick_undefined
execute unless score @s {ns}.lang matches 0.. run tag @s add detached
execute unless score @s {ns}.lang matches 0.. run return 1

# Set player id
execute unless score @s {ns}.id matches 1.. run function {ns}:player/set_id

# Check if player reconnected
execute unless score @s {ns}.reconnect = #score {ns}.reconnect run function {ns}:player/joined
scoreboard players operation @s {ns}.last_total_games = total_games {ns}.last_total_games

# 1 money per kill
execute if score @s {ns}.kill matches 1.. run scoreboard players operation @s {ns}.money += @s {ns}.kill
execute if score @s {ns}.kill matches 1.. run scoreboard players reset @s {ns}.kill

# Detach tick at spawn
execute if dimension minecraft:overworld if entity @s[tag=detached,x=0,y=69,z=0,distance=..200] run function {ns}:player/tick_detach

# Noteblock
execute at @s if score @s {ns}.music.progress matches 1.. run function {ns}:music/player_tick

# Learn where the player moved the items of their kit
execute if entity @s[tag={ns}.layout.dirty] run function {ns}:player/layout/tick
""")

	write_tick_detach()

	write_trigger_attach()

	write_trigger_coupdetat()

	write_triggers()

	write_trigger_rating()

	write_trigger_stats()

	write_trigger_succes()

	write_tutorial()

	write_stats_storage()

	write_username_change()

