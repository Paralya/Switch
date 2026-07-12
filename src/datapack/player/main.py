
# ruff: noqa: E501, W291
# Imports
import stouputils as stp
from stewbeet import Mem, write_function

from .jump_timer import JUMPS, write_jump_timer_functions
from .practice import write_practice_functions
from .translations import write_translations


@stp.measure_time(message="Generated player files")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:player"
	write_translations()
	write_practice_functions()
	write_jump_timer_functions()

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
# - {ns}.easter_egg.cc_001001 ; Coucou, tu veux voir ma 01001100 ; same
# - {ns}.easter_egg.pi ; 3.141895 ; plus de décimales
# - {ns}.easter_egg.ping ; Ping ; Pong
# - {ns}.easter_egg.pong ; Pong ; Ping
# - {ns}.easter_egg.42 ; 42 ; La réponse à la vie
# - {ns}.easter_egg.ayjaraQ ; ayjaraQ ; A long time ago
# - {ns}.easter_egg.luxium ; Luxium ; in a galaxy far, 
# - {ns}.easter_egg.friends_cube ; Friends Cube ; far away


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
give @s oak_sign[item_name={{"text":"Coucou tu veux voir ma"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"Coucou","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.cc_001001\"}}"}}}},{{"text":"tu veux voir ma"}},{{"text":"000101"}}]}}}}]
give @s oak_sign[item_name={{"text":"3.141592 - pi"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"3.141592...","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.pi\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Ping - Pong"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"Pong","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.ping\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Pong - Ping"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"Ping","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.pong\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"42 - La réponse à la vie"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"La réponse à la","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.42\"}}"}}}},{{"text":"vie"}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"ayjaraQ - A long time ago"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"A long time ago","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.ayjaraQ\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Luxium - in a galaxy,"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"in a galaxy,","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.luxium\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
give @s oak_sign[item_name={{"text":"Friends Cube - far away"}},block_entity_data={{"id": "minecraft:sign",front_text:{{messages:[{{"text":""}},{{"text":"far away","click_event":{{"action":"run_command","command":"function {ns}:player/easter_egg {{tag:\"{ns}.easter_egg.friends_cube\"}}"}}}},{{"text":""}},{{"text":""}}]}}}}]
""")

	# /joined
	write_function(f"{path}/joined", f"""
# Add 0 to every shop score
function {ns}:shop/initialize_shop_scores

# Check if new username
function {ns}:player/username_change/check

# Update advancements just in case
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

	# /setup_lobby_inventory
	write_function(f"{path}/setup_lobby_inventory", f"""
item replace entity @s[advancements={{{ns}:visible/jump_dripstone=false}}] inventory.3 with dripstone_block[item_name={{"text":"Dripstone Jump","color":"gold"}},lore=[{{"text":"by AirDox","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_dripstone":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_dripstone=true}}] inventory.3 with dripstone_block[item_name={{"text":"Dripstone Jump","color":"gold"}},lore=[{{"text":"by AirDox","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_dripstone":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_pink=false}}] inventory.4 with pink_concrete[item_name={{"text":"Pink Jump","color":"light_purple"}},lore=[{{"text":"by OfChara","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_pink":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_pink=true}}] inventory.4 with pink_concrete[item_name={{"text":"Pink Jump","color":"light_purple"}},lore=[{{"text":"by OfChara","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_pink":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_bricks=false}}] inventory.5 with bricks[item_name={{"text":"Bricks Jump","color":"#BC4A3C"}},lore=[{{"text":"by Thitanas","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_bricks":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_bricks=true}}] inventory.5 with bricks[item_name={{"text":"Bricks Jump","color":"#BC4A3C"}},lore=[{{"text":"by Thitanas","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_bricks":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_green=false}}] inventory.10 with lime_concrete[item_name={{"text":"Green Jump","color":"green"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_green":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_green=true}}] inventory.10 with lime_concrete[item_name={{"text":"Green Jump","color":"green"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_green":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_white=false}}] inventory.11 with white_concrete[item_name={{"text":"White Jump","color":"white"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_white":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_white=true}}] inventory.11 with white_concrete[item_name={{"text":"White Jump","color":"white"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_white":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_blue=false}}] inventory.12 with blue_concrete[item_name={{"text":"Blue Jump","color":"blue"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_blue":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_blue=true}}] inventory.12 with blue_concrete[item_name={{"text":"Blue Jump","color":"blue"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_blue":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_yellow=false}}] inventory.13 with yellow_concrete[item_name={{"text":"Yellow Jump","color":"yellow"}},lore=[{{"text":"by ArtiGrrr","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_yellow":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_yellow=true}}] inventory.13 with yellow_concrete[item_name={{"text":"Yellow Jump","color":"yellow"}},lore=[{{"text":"by ArtiGrrr","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_yellow":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_red=false}}] inventory.14 with red_concrete[item_name={{"text":"Red Jump","color":"red"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_red":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_red=true}}] inventory.14 with red_concrete[item_name={{"text":"Red Jump","color":"red"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_red":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_brown=false}}] inventory.15 with brown_concrete[item_name={{"text":"Brown Jump","color":"#8B4513"}},lore=[{{"text":"by OfChara","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_brown":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_brown=true}}] inventory.15 with brown_concrete[item_name={{"text":"Brown Jump","color":"#8B4513"}},lore=[{{"text":"by OfChara","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_brown":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_purple=false}}] inventory.16 with purple_concrete[item_name={{"text":"Purple Jump","color":"light_purple"}},lore=[{{"text":"by AirDox","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_purple":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_purple=true}}] inventory.16 with purple_concrete[item_name={{"text":"Purple Jump","color":"light_purple"}},lore=[{{"text":"by AirDox","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_purple":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_duality=false}}] inventory.21 with copper_block[item_name={{"text":"Duality Jump","color":"#B87333"}},lore=[{{"text":"by Stoupy / AirDox / OfChara","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_duality":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_duality=true}}] inventory.21 with copper_block[item_name={{"text":"Duality Jump","color":"#B87333"}},lore=[{{"text":"by Stoupy / AirDox / OfChara","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_duality":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_graviglitch=false}}] inventory.22 with suspicious_gravel[item_name={{"text":"GraviGlitch Jump","color":"#676767"}},lore=[{{"text":"by OfChara / Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_graviglitch":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_graviglitch=true}}] inventory.22 with suspicious_gravel[item_name={{"text":"GraviGlitch Jump","color":"#676767"}},lore=[{{"text":"by OfChara / Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_graviglitch":true}}}},tooltip_style="success"]

item replace entity @s[advancements={{{ns}:visible/jump_obsidian=false}}] inventory.23 with crying_obsidian[item_name={{"text":"Obsidian Jump","color":"dark_gray"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_obsidian":true}}}},tooltip_style="failure"]
item replace entity @s[advancements={{{ns}:visible/jump_obsidian=true}}] inventory.23 with crying_obsidian[item_name={{"text":"Obsidian Jump","color":"dark_gray"}},lore=[{{"text":"by Stoupy","color":"gray","italic":false}}],custom_data={{"{ns}":{{"jump":true,"jump_obsidian":true}}}},tooltip_style="success"]

# Practice mode items (toggle + action items if enabled)
function {ns}:player/practice/give_items
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
""")

	# /tick_detach
	# Jump completions from the JUMPS data (see jump_timer.py): finishing requires an active timer for
	# that jump, and practice mode players (tag {ns}.practice) get the practice run advancement instead
	finish_lines: str = "\n".join(
		f'execute if entity @s[x={x},y={y},z={z},distance=..{d},gamemode=!creative,gamemode=!spectator,tag=!{ns}.practice] if score @s {ns}.jump_timer_id matches {jump_id} run function {ns}:player/jump_timer/finish {{jump:"{key}"}}'
		for jump_id, key, _, _, _, (x, y, z, d) in JUMPS if key != "duality"
	)
	practice_grants: str = "\n".join(
		f"advancement grant @s[x={x},y={y},z={z},distance=..{d},gamemode=!creative,gamemode=!spectator,tag={ns}.practice] only {ns}:visible/jump_practice"
		for _, key, _, _, _, (x, y, z, d) in JUMPS if key != "duality"
	)
	duality_id: int = next(jump_id for jump_id, key, _, _, _, _ in JUMPS if key == "duality")
	write_function(f"{path}/tick_detach", f"""
# Global variable indicating number of players in the lobby
scoreboard players add #players_in_lobby {ns}.data 1

gamemode adventure @s[gamemode=creative,tag=!can_creative]
team join {ns}.detached @s[team=!{ns}.tutorial]
tp @s[team={ns}.tutorial] -500 69.69 -500 0 0

effect give @s[gamemode=survival] mining_fatigue 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] resistance 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] weakness 1 127 true
attribute @s[gamemode=!creative,gamemode=!spectator] safe_fall_distance base set 1024

## Teleport inventory
# Get number of blocks
data modify storage {ns}:temp Inventory set from entity @s Inventory
scoreboard players set #inventory {ns}.data 0
execute store result score #inventory {ns}.data if data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump

# If lost (only) one item, check where
execute unless score #inventory {ns}.data matches 13 unless score #inventory {ns}.data matches 0 run scoreboard players set #inventory {ns}.data -1
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_green run scoreboard players set @s {ns}.lobby_respawn 1
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_white run scoreboard players set @s {ns}.lobby_respawn 2
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_blue run scoreboard players set @s {ns}.lobby_respawn 3
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_yellow run scoreboard players set @s {ns}.lobby_respawn 4
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_red run scoreboard players set @s {ns}.lobby_respawn 5
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_brown run scoreboard players set @s {ns}.lobby_respawn 6
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_purple run scoreboard players set @s {ns}.lobby_respawn 7
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_dripstone run scoreboard players set @s {ns}.lobby_respawn 8
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_pink run scoreboard players set @s {ns}.lobby_respawn 9
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_bricks run scoreboard players set @s {ns}.lobby_respawn 10
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_obsidian run scoreboard players set @s {ns}.lobby_respawn 11
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_duality run scoreboard players set @s {ns}.lobby_respawn 12
execute if score #inventory {ns}.data matches -1 unless data storage {ns}:temp Inventory[].components."minecraft:custom_data".{ns}.jump_graviglitch run scoreboard players set @s {ns}.lobby_respawn 13
execute if score #inventory {ns}.data matches -1 run tag @s add {ns}.lobby_respawn
execute if score #inventory {ns}.data matches -1 run clear @s

## Practice mode (checkpoints on lobby jumps, must run before the respawn detection below)
function {ns}:player/practice/tick

# Teleport to respawn point
scoreboard players add @s {ns}.lobby_respawn 0
execute if entity @s[tag=!{ns}.lobby_respawn,gamemode=!creative,gamemode=!spectator,y=-64,dy=127] run tag @s add {ns}.lobby_respawn
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=0}}] run function {ns}:cinematic/launch {{x:0.5,y:69.69,z:0.5,time:20,with:{{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=1}}] run function {ns}:cinematic/launch {{x:0.5,y:70.1,z:-9.5,time:20,with:{{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=2}}] run function {ns}:cinematic/launch {{x:0.5,y:70.1,z:-9.5,time:20,with:{{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=3}}] run function {ns}:cinematic/launch {{x:0.5,y:75.51,z:-23.5,time:20,with:{{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=4}}] run function {ns}:cinematic/launch {{x:9.5,y:74.51,z:23.5,time:20,with:{{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=5}}] run function {ns}:cinematic/launch {{x:-14.5,y:73.51,z:9.5,time:20,with:{{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=6}}] run function {ns}:cinematic/launch {{x:-34.5,y:73.1,z:-8.5,time:20,with:{{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=7}}] run function {ns}:cinematic/launch {{x:-8.5,y:73.1,z:35.5,time:20,with:{{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=8}}] run function {ns}:cinematic/launch {{x:9.5,y:73.1,z:47.5,time:20,with:{{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=9}}] run function {ns}:cinematic/launch {{x:-46.5,y:76.1,z:10.5,time:20,with:{{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=10}}] run function {ns}:cinematic/launch {{x:-84.5,y:70.1,z:0.5,time:20,with:{{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=11}}] run function {ns}:cinematic/launch {{x:51.5,y:74.6,z:-8.5,time:20,with:{{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=12}}] run function {ns}:cinematic/launch {{x:9.5,y:74.6,z:111.5,time:20,with:{{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}}}
execute if entity @s[tag={ns}.lobby_respawn,scores={{{ns}.lobby_respawn=13}}] run function {ns}:cinematic/launch {{x:-11.5,y:74.1,z:91.5,time:20,with:{{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}}}
tag @s remove {ns}.lobby_respawn

# If lost at least one item, setup inventory
execute unless score #inventory {ns}.data matches 13 run function {ns}:player/setup_lobby_inventory


## Jump timers (start lines detection, timer ticking + actionbar)
function {ns}:player/jump_timer/tick

## Jumps completion: requires an active timer for that jump (practice mode players get the practice run advancement instead)
{finish_lines}
execute if entity @a[gamemode=adventure,x=43,y=86,z=84,dx=0,dy=0,dz=0] if entity @a[gamemode=adventure,x=45,y=86,z=84,dx=0,dy=0,dz=0] if entity @s[gamemode=adventure,x=44,y=86,z=84,distance=..2,tag=!{ns}.practice] if score @s {ns}.jump_timer_id matches {duality_id} run function {ns}:player/jump_timer/finish {{jump:"duality"}}
{practice_grants}
execute if entity @a[gamemode=adventure,x=43,y=86,z=84,dx=0,dy=0,dz=0] if entity @a[gamemode=adventure,x=45,y=86,z=84,dx=0,dy=0,dz=0] run advancement grant @a[gamemode=adventure,x=44,y=86,z=84,distance=..2,tag={ns}.practice] only {ns}:visible/jump_practice

# GraviGlitch jump gives
execute store success score #graviglitch_give {ns}.data if entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37,predicate=!{ns}:nbt/enough_gravel]
execute if score #graviglitch_give {ns}.data matches 1 run clear @s suspicious_gravel[minecraft:custom_data~{{{ns}:{{"to_place":true}}}}]
execute if score #graviglitch_give {ns}.data matches 1 run give @s suspicious_gravel[can_place_on={{blocks:["smooth_red_sandstone","orange_wall_banner","red_sandstone_wall"]}},custom_data={{"{ns}":{{"to_place":true}}}}] 42
execute unless entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37] run clear @s suspicious_gravel[custom_data~{{"{ns}":{{"to_place":true}}}}]
""")

	# /trigger/attach/main
	write_function(f"{path}/trigger/attach/main", f"""
scoreboard players set @s {ns}.trigger.attach 0
execute if score #can_attach {ns}.data matches 1 if score @s {ns}.lang matches 0.. run function {ns}:player/trigger/attach/real_attach
execute if score @s {ns}.lang matches 0.. run function {ns}:player/translations/trigger_attach_
""")

	# /trigger/attach/real_attach
	write_function(f"{path}/trigger/attach/real_attach", f"""
execute unless entity @s[team={ns}.tutorial] run tag @s remove detached
execute unless entity @s[team={ns}.tutorial] run team leave @s
execute unless entity @s[team={ns}.tutorial] run function {ns}:player/practice/disable

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s {ns}.alive 0
execute unless entity @s[team={ns}.tutorial] if score #engine_state {ns}.data matches 2 run function {ns}:engine/voting_time/player_join
execute unless entity @s[team={ns}.tutorial] if score #engine_state {ns}.data matches 3 run scoreboard players set #reconnect {ns}.data 0
execute unless entity @s[team={ns}.tutorial] if score #engine_state {ns}.data matches 3 run function {ns}:engine/signals/joined

# Check if enough players
execute store result score #nb_attached {ns}.data if entity @a[tag=!detached]
function {ns}:player/translations/trigger_attach_real_attach
""")

	# /trigger/changelog/main
	write_function(f"{path}/trigger/changelog/main", f"""
function {ns}:translations/changelog
scoreboard players set @s {ns}.trigger.changelog 0
""")

	# /trigger/coupdetat/action
	write_function(f"{path}/trigger/coupdetat/action", f"""
# Error if a game is not running or someone is already in a coup d'état
execute unless score #engine_state {ns}.data matches 3 run return run function {ns}:player/trigger/coupdetat/error
execute if score #coupdetat {ns}.data matches 1 run return run function {ns}:player/trigger/coupdetat/error

# Start the vote for coup d'état
data modify storage {ns}:temp input set value {{index_hundred:0}}
execute store result storage {ns}:temp input.index_hundred int 1 run scoreboard players get @s {ns}.trigger.coupdetat
function {ns}:player/trigger/coupdetat/launch_vote with storage {ns}:temp input
""")

	# /trigger/coupdetat/display
	write_function(f"{path}/trigger/coupdetat/display", f"""
## For each of the game, print it in order
function {ns}:player/translations/trigger_coupdetat_display

# Create a list of all minigames (with clickable text)
scoreboard players set #alternate {ns}.data 0
data modify storage {ns}:temp tellraw set value []
data modify storage {ns}:temp copy set from storage {ns}:main minigames
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/coupdetat/display_loop with storage {ns}:temp copy[0]

# Remove the last comma from the tellraw
data remove storage {ns}:temp tellraw[-1][-1]

# Display the text component
tellraw @s {{"nbt":"tellraw","storage":"{ns}:temp","interpret":true}}
""")

	# /trigger/coupdetat/display_loop
	write_function(f"{path}/trigger/coupdetat/display_loop", f"""
# Prepare the TextComponent for this minigame
$data modify storage {ns}:temp text_component set value [{{"text":"X","color":"aqua","hover_event":{{"action":"show_text","value":[]}},"click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.coupdetat set $(index_hundred)"}}}},{{"text":", ","color":"gray"}}]

# Fill the gaps
$execute if score @s {ns}.lang matches 0 run data modify storage {ns}:temp text_component[0].text set value "$(name_fr)"
$execute if score @s {ns}.lang matches 1 run data modify storage {ns}:temp text_component[0].text set value "$(name_en)"
$execute if score @s {ns}.lang matches 0 run data modify storage {ns}:temp text_component[0].hover_event.value set value [{{"text":"Dépensez 100","color":"gray"}},{{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}},{{"text":" pour lancer un coup d'état vers ","color":"gray"}},{{"text":"$(name_fr)","color":"yellow"}}]
$execute if score @s {ns}.lang matches 1 run data modify storage {ns}:temp text_component[0].hover_event.value set value [{{"text":"Spend 100","color":"gray"}},{{"nbt":"SapphireEN","storage":"{ns}:main","interpret":true}},{{"text":" to start a coup d'état for ","color":"gray"}},{{"text":"$(name_en)","color":"yellow"}}]

# Alternate colors for better readability
scoreboard players add #alternate {ns}.data 1
execute if score #alternate {ns}.data matches 1 run data modify storage {ns}:temp text_component[0].color set value "dark_aqua"
execute if score #alternate {ns}.data matches 2 run data modify storage {ns}:temp text_component[0].color set value "aqua"
execute if score #alternate {ns}.data matches 2 run scoreboard players set #alternate {ns}.data 0

# Add the text component to the tellraw
data modify storage {ns}:temp tellraw append from storage {ns}:temp text_component

# Continue loop
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/coupdetat/display_loop with storage {ns}:temp copy[0]
""")

	# /trigger/coupdetat/error
	write_function(f"{path}/trigger/coupdetat/error", f"""
# Playsound and tellraw
playsound entity.villager.no ambient @s
function {ns}:player/translations/trigger_coupdetat_error
""")

	# /trigger/coupdetat/launch_vote
	write_function(f"{path}/trigger/coupdetat/launch_vote", f"""
# Extract the wanted minigame by using the index_hundred
$data modify storage {ns}:main coupdetat set from storage {ns}:main minigames[{{index_hundred:$(index_hundred)}}]

# Set up score vote
scoreboard objectives remove {ns}.trigger.coupdetat_vote
scoreboard objectives add {ns}.trigger.coupdetat_vote trigger
scoreboard players enable @a[tag=!detached] {ns}.trigger.coupdetat_vote
scoreboard players set #coupdetat {ns}.data 1

# Remove 100 sapphires from the player
scoreboard players remove @s {ns}.money 100
function {ns}:stats/util_update_player

# Tag player to indicate they are in a coup d'état
tag @a remove {ns}.coupdetat
tag @s add {ns}.coupdetat

# Ask players to support the coup d'état
function {ns}:player/translations/trigger_coupdetat_launch_vote
""")

	# /trigger/coupdetat/main
	write_function(f"{path}/trigger/coupdetat/main", f"""
# Display & Actions
execute if score @s {ns}.trigger.coupdetat matches 1 run function {ns}:player/trigger/coupdetat/display
execute if score @s {ns}.trigger.coupdetat matches 100.. run function {ns}:player/trigger/coupdetat/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s {ns}.trigger.coupdetat 0
""")

	# /trigger/coupdetat/player_vote
	write_function(f"{path}/trigger/coupdetat/player_vote", f"""
# Display & Actions
function {ns}:player/translations/trigger_coupdetat_player_vote
playsound ui.button.click ambient @s

# Set to -1 to prevent spamming the message if the player clicks multiple times
scoreboard players set @s {ns}.trigger.coupdetat_vote -1
""")

	# /trigger/detach/basic_stuff
	write_function(f"{path}/trigger/detach/basic_stuff", f"""
execute in minecraft:overworld run spawnpoint @s 0 70 0
scoreboard players set @s {ns}.lobby_respawn 0
function {ns}:player/jump_timer/cancel
function {ns}:player/practice/disable
effect clear @s
function {ns}:utils/reset_attributes
effect give @s saturation infinite 0 true
effect give @s regeneration 10 255 true
gamemode adventure @s
clear @s
team join {ns}.no_pvp @s
xp set @s 0 levels
xp set @s 0 points

# Kill any cinematic entity that was linked to the player
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute as @e[tag={ns}.cinematic,predicate={ns}:has_same_id] run function {ns}:cinematic/kill

# Teleport to the lobby (cinematic if close, otherwise tp)
scoreboard players set #is_close {ns}.data 0
execute at @s if dimension minecraft:overworld positioned 0 69.69 0 store success score #is_close {ns}.data if entity @s[distance=..200]
execute if score #is_close {ns}.data matches 1 run function {ns}:cinematic/launch {{x:0.5,y:69.69,z:0.5,time:20,with:{{pitch:0,yaw:0,particle:1,interpolation:2}}}}
execute if score #is_close {ns}.data matches 0 in minecraft:overworld run tp @s 0 69.69 0 0 0
""")

	# /trigger/detach/main
	write_function(f"{path}/trigger/detach/main", f"""
# Finish tutorial
execute if score @s {ns}.tutorial matches 6 run function {ns}:player/tutorial/finish

# If in tutorial but not finished, ignore a little
execute unless entity @s[team={ns}.tutorial] run tag @s add detached
execute unless entity @s[team={ns}.tutorial] run function {ns}:player/trigger/detach/basic_stuff

# Privileged actions
execute if score @s {ns}.trigger.detach matches 20231211 run tp @s 84069 100 84069
execute if score @s {ns}.trigger.detach matches 20231211 run gamemode creative @s
execute if score @s {ns}.trigger.detach matches 20240927 in {ns}:void run tp @s 152.08 79.16 -128.08 80.11 26.04
execute if score @s {ns}.trigger.detach matches 20240927 run gamemode creative @s

# Reset score
scoreboard players set @s {ns}.trigger.detach 0
""")

	# /trigger/enable
	write_function(f"{path}/trigger/enable", f"""
scoreboard players enable @s {ns}.trigger.lang
scoreboard players enable @s {ns}.trigger.help
scoreboard players enable @s {ns}.trigger.money
scoreboard players enable @s {ns}.trigger.game_vote
scoreboard players enable @s {ns}.trigger.stats
scoreboard players enable @s {ns}.trigger.changelog
scoreboard players enable @s {ns}.trigger.detach
scoreboard players enable @s {ns}.trigger.attach
scoreboard players enable @s {ns}.trigger.shop
scoreboard players enable @s {ns}.trigger.tutorial
scoreboard players enable @s {ns}.trigger.succes
scoreboard players enable @s {ns}.trigger.rating
scoreboard players enable @s {ns}.trigger.night_vision
scoreboard players enable @s {ns}.trigger.music
scoreboard players enable @s {ns}.trigger.coupdetat
scoreboard players enable @s {ns}.trigger.coupdetat_vote
""")

	# /trigger/help/main
	write_function(f"{path}/trigger/help/main", f"""
# Tutorial stuff
execute if score @s {ns}.tutorial matches 5 run scoreboard players set @s {ns}.tutorial 6

function {ns}:player/translations/trigger_help_

scoreboard players set @s {ns}.trigger.help 0
""")

	# /trigger/lang/main
	write_function(f"{path}/trigger/lang/main", f"""
# If player write /lang, show the language selection
execute if score @s {ns}.trigger.lang matches 1 run function {ns}:player/trigger/lang/tellraw

# Depending on the score, choose the right language
execute if score @s {ns}.trigger.lang matches 10 run scoreboard players set @s {ns}.lang 0
execute if score @s {ns}.trigger.lang matches 11 run scoreboard players set @s {ns}.lang 1

# Messages
execute if score @s {ns}.trigger.lang matches 10 run tellraw @s [{{"text":"Vous avez choisi la langue française !\\nFaites '/lang' pour re-changer la langue","color":"aqua"}}]
execute if score @s {ns}.trigger.lang matches 11 run tellraw @s [{{"text":"You have chosen the English language!\\nType '/lang' to change the language","color":"aqua"}}]

# Clear the effects and reset the trigger score
scoreboard players set @s {ns}.trigger.lang 0
""")

	# /trigger/lang/tellraw
	write_function(f"{path}/trigger/lang/tellraw", f"""
tellraw @s "\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n\\n"
tellraw @s [{{"text":"Please choose a language by clicking it:","color":"aqua"}}]
tellraw @s [{{"text":"\\n[Français]","color":"yellow","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.lang set 10"}},"hover_event":{{"action":"show_text","value":{{"text":"[Cliquez pour choisir Français]","color":"yellow"}}}}}}]
tellraw @s [{{"text":"\\n[English]","color":"yellow","click_event":{{"action":"run_command","command":"/trigger {ns}.trigger.lang set 11"}},"hover_event":{{"action":"show_text","value":{{"text":"[Click to choose English]","color":"yellow"}}}}}}]
""")

	# /trigger/lang/tick_undefined
	write_function(f"{path}/trigger/lang/tick_undefined", f"""
execute if entity @s[tag=!detached] run function {ns}:player/trigger/detach/main

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true
effect give @s slowness 5 255 true
effect give @s night_vision 5 255 true

execute if score #tick {ns}.data matches 5 run function {ns}:player/trigger/lang/tellraw
""")

	# /trigger/main
	write_function(f"{path}/trigger/main", f"""
function {ns}:player/trigger/enable

execute unless score @s {ns}.trigger.lang matches 0 run function {ns}:player/trigger/lang/main
execute unless score @s {ns}.trigger.help matches 0 run function {ns}:player/trigger/help/main
execute unless score @s {ns}.trigger.money matches 0 run function {ns}:player/trigger/money/main
execute unless score @s {ns}.trigger.stats matches 0 run function {ns}:player/trigger/stats/entry
execute unless score @s {ns}.trigger.changelog matches 0 run function {ns}:player/trigger/changelog/main
execute unless score @s {ns}.trigger.detach matches 0 run function {ns}:player/trigger/detach/main
execute unless score @s {ns}.trigger.attach matches 0 run function {ns}:player/trigger/attach/main
execute unless score @s {ns}.trigger.shop matches 0 run function {ns}:shop/trigger
execute unless score @s {ns}.trigger.tutorial matches 0 run function {ns}:player/tutorial/next_dialogue
execute unless score @s {ns}.trigger.succes matches 0 in minecraft:overworld run function {ns}:player/trigger/succes/entry
execute unless score @s {ns}.trigger.rating matches 0 run function {ns}:player/trigger/rating/main
execute unless score @s {ns}.trigger.night_vision matches 0 run function {ns}:player/trigger/night_vision/main
execute unless score @s {ns}.trigger.music matches 0 run function {ns}:player/trigger/music/main
execute unless score @s {ns}.trigger.coupdetat matches 0 run function {ns}:player/trigger/coupdetat/main
execute if score @s {ns}.trigger.coupdetat_vote matches 1 run function {ns}:player/trigger/coupdetat/player_vote

function {ns}:player/trigger/enable
""")

	# /trigger/money/main
	write_function(f"{path}/trigger/money/main", f"""
function {ns}:player/translations/trigger_money_
scoreboard players set @s {ns}.trigger.money 0
""")

	# /trigger/music/main
	write_function(f"{path}/trigger/music/main", f"""
# If trigger equal 1, show musics
execute if score @s {ns}.trigger.music matches 1 run function {ns}:music/browser

# Action buttons
execute if score @s {ns}.trigger.music matches 2 run function {ns}:music/actions/random
execute if score @s {ns}.trigger.music matches 2 run function {ns}:music/browser
execute if score @s {ns}.trigger.music matches 3 run function {ns}:music/actions/previous
execute if score @s {ns}.trigger.music matches 4 run scoreboard players operation @s {ns}.music.progress *= #-1 {ns}.data
execute if score @s {ns}.trigger.music matches 5 run function {ns}:music/actions/next
execute if score @s {ns}.trigger.music matches 6 run function {ns}:music/actions/repeat_all
execute if score @s {ns}.trigger.music matches 7 run function {ns}:music/actions/repeat_only_same

# If trigger >= 100 : play song
execute if score @s {ns}.trigger.music matches 100.. run scoreboard players operation @s {ns}.music.current = @s {ns}.trigger.music
execute if score @s {ns}.trigger.music matches 100.. run scoreboard players set @s {ns}.music.progress 1
execute if score @s {ns}.trigger.music matches 100.. run function {ns}:music/browser

# Reset trigger
scoreboard players set @s {ns}.trigger.music 0
""")

	# /trigger/night_vision/main
	write_function(f"{path}/trigger/night_vision/main", f"""
# Toggle night vision
scoreboard players set #success {ns}.data 0
execute if data entity @s active_effects[{{id:"night_vision"}}] run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 0 run effect give @s night_vision infinite 255 true
execute if score #success {ns}.data matches 1 run effect clear @s night_vision
scoreboard players set @s {ns}.trigger.night_vision 0
""")

	# /trigger/rating/action
	write_function(f"{path}/trigger/rating/action", f"""
# Get the digit
scoreboard players operation #digits {ns}.data = @s {ns}.trigger.rating
scoreboard players operation #digits {ns}.data %= #100 {ns}.data
scoreboard players operation #int {ns}.data = @s {ns}.trigger.rating
scoreboard players operation #int {ns}.data /= #100 {ns}.data

# Get game index
data modify storage {ns}:temp input set value {{index:0,index_hundred:0,digits:0}}
execute store result storage {ns}:temp input.index int 1 run scoreboard players get #int {ns}.data
execute store result storage {ns}:temp input.index_hundred int 100 run scoreboard players get #int {ns}.data
execute store result storage {ns}:temp input.digits int 1 run scoreboard players get #digits {ns}.data

# Get username
setblock 0 12 0 air
setblock 0 12 0 yellow_shulker_box
loot insert 0 12 0 loot {ns}:get_username
data modify storage {ns}:temp input.player set from block 0 12 0 Items[0].components."minecraft:profile".name
setblock 0 12 0 air

# If the digit is 0, print function
execute if score #digits {ns}.data matches 0 run function {ns}:player/trigger/rating/print with storage {ns}:temp input

# Else, take account the note if it's between 1 and 5
execute if score #digits {ns}.data matches 1..5 run function {ns}:player/trigger/rating/note with storage {ns}:temp input
""")

	# /trigger/rating/display
	write_function(f"{path}/trigger/rating/display", f"""
## For each of the game, print it in order
function {ns}:player/translations/trigger_rating_display

# Done advancements
data modify storage {ns}:temp copy set from storage {ns}:ratings all
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/rating/display_loop with storage {ns}:temp copy[0]

scoreboard players set @s {ns}.trigger.rating 0
""")

	# /trigger/rating/display_loop
	write_function(f"{path}/trigger/rating/display_loop", f"""
# Tellraw
data modify storage {ns}:temp temp set from storage {ns}:temp copy[0]
$data modify storage {ns}:temp name_fr set from storage {ns}:main minigames[{{id:"$(id)"}}].name_fr
$data modify storage {ns}:temp name_en set from storage {ns}:main minigames[{{id:"$(id)"}}].name_en
execute store result score #digits {ns}.data run data get storage {ns}:temp temp.digits
execute store result score #nb_ratings {ns}.data if data storage {ns}:temp temp.players[]
function {ns}:player/translations/trigger_rating_display_loop with storage {ns}:temp temp

# Continue loop
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/rating/display_loop with storage {ns}:temp copy[0]
""")

	# /trigger/rating/get_max_loop
	write_function(f"{path}/trigger/rating/get_max_loop", f"""
# Get max
scoreboard players set #int {ns}.data 0
scoreboard players set #digits {ns}.data 0
execute store result score #int {ns}.data run data get storage {ns}:main copy[0].int
execute store result score #digits {ns}.data run data get storage {ns}:main copy[0].digits
execute if score #int {ns}.data > #max_int {ns}.data run data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute if score #int {ns}.data > #max_int {ns}.data run scoreboard players operation #max_digits {ns}.data = #digits {ns}.data
execute if score #int {ns}.data > #max_int {ns}.data run scoreboard players operation #max_int {ns}.data = #int {ns}.data
execute if score #int {ns}.data >= #max_int {ns}.data if score #digits {ns}.data > #max_digits {ns}.data run data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute if score #int {ns}.data >= #max_int {ns}.data if score #digits {ns}.data > #max_digits {ns}.data run scoreboard players operation #max_int {ns}.data = #int {ns}.data
execute if score #int {ns}.data >= #max_int {ns}.data if score #digits {ns}.data > #max_digits {ns}.data run scoreboard players operation #max_digits {ns}.data = #digits {ns}.data

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/rating/get_max_loop
""")

	# /trigger/rating/main
	write_function(f"{path}/trigger/rating/main", f"""
# Display & Actions
execute if score @s {ns}.trigger.rating matches 1 run function {ns}:player/trigger/rating/display
execute if score @s {ns}.trigger.rating matches 100.. run function {ns}:player/trigger/rating/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s {ns}.trigger.rating 0
""")

	# /trigger/rating/note
	write_function(f"{path}/trigger/rating/note", f"""
## Advancement
scoreboard objectives add {ns}.rates_given dummy
scoreboard players add @s {ns}.rates_given 1
execute unless score #test_mode {ns}.data matches 1 if score @s {ns}.rates_given matches 20.. run advancement grant @s only {ns}:visible/56


## {{index:0,index_hundred:0,digits:0,player:""}}
# Add player to list of players
scoreboard players set #previous {ns}.data 0
$execute store result score #previous {ns}.data run data get storage {ns}:ratings all[{{index:$(index)}}].players[{{name:"$(player)"}}].value
$execute if score #previous {ns}.data matches 0 run data modify storage {ns}:ratings all[{{index:$(index)}}].players append value {{name:"$(player)",value:$(digits)}}
$data modify storage {ns}:ratings all[{{index:$(index)}}].players[{{name:"$(player)"}}].value set value $(digits)

## Update game rating
# Calculate new points
$execute store result score #points {ns}.data run data get storage {ns}:ratings all[{{index:$(index)}}].points
scoreboard players operation #points {ns}.data -= #previous {ns}.data
$scoreboard players add #points {ns}.data $(digits)
$execute store result storage {ns}:ratings all[{{index:$(index)}}].points int 1 run scoreboard players get #points {ns}.data

# Calculate int and digits rating
$execute store result score #count {ns}.data run data get storage {ns}:ratings all[{{index:$(index)}}].players
scoreboard players operation #points {ns}.data *= #1000 {ns}.data
scoreboard players operation #digits {ns}.data = #points {ns}.data
scoreboard players operation #points {ns}.data /= #count {ns}.data
scoreboard players operation #points {ns}.data /= #1000 {ns}.data
scoreboard players operation #digits {ns}.data %= #count {ns}.data
$execute store result storage {ns}:ratings all[{{index:$(index)}}].int int 1 run scoreboard players get #points {ns}.data
$execute store result storage {ns}:ratings all[{{index:$(index)}}].digits int 1 run scoreboard players get #digits {ns}.data

# Verbose
$scoreboard players set #temp {ns}.data $(digits)
function {ns}:player/translations/trigger_rating_note with storage {ns}:temp input

# Sort all the ratings
function {ns}:player/trigger/rating/sort
""")

	# /trigger/rating/print
	write_function(f"{path}/trigger/rating/print", f"""
# Macro input {{index:0,index_hundred:0,digits:0}}

data remove storage {ns}:temp temp
$data modify storage {ns}:temp temp set from storage {ns}:ratings all[{{index:$(index)}}].players[{{name:"$(player)"}}].value
function {ns}:player/translations/trigger_rating_print with storage {ns}:temp input
""")

	# /trigger/rating/print_current_game
	write_function(f"{path}/trigger/rating/print_current_game", f"""
scoreboard players operation @s {ns}.trigger.rating = #current_game_index {ns}.data
scoreboard players operation @s {ns}.trigger.rating *= #100 {ns}.data
function {ns}:player/trigger/main
""")

	# /trigger/rating/remove_max
	write_function(f"{path}/trigger/rating/remove_max", f"""
$data remove storage {ns}:ratings all[{{index:$(index)}}]
""")

	# /trigger/rating/sort
	write_function(f"{path}/trigger/rating/sort", f"""
data modify storage {ns}:temp sorted set value []
function {ns}:player/trigger/rating/sort_loop
data modify storage {ns}:ratings all set from storage {ns}:temp sorted
""")

	# /trigger/rating/sort_loop
	write_function(f"{path}/trigger/rating/sort_loop", f"""
# Search for the highest value
data modify storage {ns}:main copy set from storage {ns}:ratings all
data modify storage {ns}:main max set from storage {ns}:main copy[0]
scoreboard players set #max_int {ns}.data 0
scoreboard players set #max_digits {ns}.data 0
execute store result score #max_int {ns}.data run data get storage {ns}:main max.int
execute store result score #max_digits {ns}.data run data get storage {ns}:main max.digits
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/rating/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage {ns}:temp sorted append from storage {ns}:main max
function {ns}:player/trigger/rating/remove_max with storage {ns}:main max

# Continue loop
execute if data storage {ns}:ratings all[0] run function {ns}:player/trigger/rating/sort_loop
""")

	# /trigger/reset
	write_function(f"{path}/trigger/reset", f"""
function {ns}:player/trigger/enable
scoreboard players set @s {ns}.trigger.help 0
scoreboard players set @s {ns}.trigger.money 0
scoreboard players set @s {ns}.trigger.game_vote 0
scoreboard players set @s {ns}.trigger.stats 0
scoreboard players set @s {ns}.trigger.changelog 0
scoreboard players set @s {ns}.trigger.detach 0
scoreboard players set @s {ns}.trigger.attach 0
scoreboard players set @s {ns}.trigger.shop 0
scoreboard players set @s {ns}.trigger.tutorial 0
scoreboard players set @s {ns}.trigger.succes 0
scoreboard players set @s {ns}.trigger.rating 0
scoreboard players set @s {ns}.trigger.night_vision 0
scoreboard players set @s {ns}.trigger.music 0
scoreboard players set @s {ns}.trigger.coupdetat 0
""")

	# /trigger/stats/display_loop
	write_function(f"{path}/trigger/stats/display_loop", f"""
# Display
function {ns}:player/translations/trigger_stats_display_loop with storage {ns}:temp sorted_stats[0]

# Continue loop
data remove storage {ns}:temp sorted_stats[0]
execute if data storage {ns}:temp sorted_stats[0] run function {ns}:player/trigger/stats/display_loop
""")

	# /trigger/stats/entry
	write_function(f"{path}/trigger/stats/entry", f"""
data modify storage {ns}:main input set value {{player:"@s"}}
function {ns}:player/trigger/stats/main with storage {ns}:main input
""")

	# /trigger/stats/get_loop
	write_function(f"{path}/trigger/stats/get_loop", f"""
# Prepare compound
$data modify storage {ns}:main temp set value {{name_fr:"$(name_fr)", name_en:"$(name_en)", count:0, wins:0, winrate:0}}
$execute store result storage {ns}:main temp.count int 1 run scoreboard players get $(player) {ns}.stats.played.$(id)
$execute store result storage {ns}:main temp.wins int 1 run scoreboard players get $(player) {ns}.stats.wins.$(id)
execute store result score #winrate {ns}.data run data get storage {ns}:main temp.wins 100
$scoreboard players operation #winrate {ns}.data /= $(player) {ns}.stats.played.$(id)
execute store result storage {ns}:main temp.winrate int 1 run scoreboard players get #winrate {ns}.data
data modify storage {ns}:main stats append from storage {ns}:main temp

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_loop with storage {ns}:main copy[0]
""")

	# /trigger/stats/get_max_loop
	write_function(f"{path}/trigger/stats/get_max_loop", f"""
# Get max
execute store result score #temp {ns}.data run data get storage {ns}:main copy[0].count
execute if score #temp {ns}.data > #max {ns}.data run data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute if score #temp {ns}.data > #max {ns}.data run scoreboard players operation #max {ns}.data = #temp {ns}.data

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_max_loop
""")

	# /trigger/stats/main
	write_function(f"{path}/trigger/stats/main", f"""
# Bases
function {ns}:player/translations/trigger_stats_main with storage {ns}:main input

# Prepare a compound list containing the number of games played and the name for each game
data modify storage {ns}:main stats set value []
data modify storage {ns}:main copy set from storage {ns}:main minigames
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_loop with storage {ns}:main copy[0]

# Sort the list by number of games played (descending)
data modify storage {ns}:temp sorted_stats set value []
execute if data storage {ns}:main stats[0] run function {ns}:player/trigger/stats/sort_loop

# Display the list
execute if data storage {ns}:temp sorted_stats[0] run function {ns}:player/trigger/stats/display_loop

# Total victories (all games)
$scoreboard players add $(player) {ns}.stats.wins 0

# Reset trigger
scoreboard players set @s {ns}.trigger.stats 0
data remove storage {ns}:main input
""")

	# /trigger/stats/remove_max
	write_function(f"{path}/trigger/stats/remove_max", f"""
$data remove storage {ns}:main stats[{{name_fr:"$(name_fr)"}}]
""")

	# /trigger/stats/sort_loop
	write_function(f"{path}/trigger/stats/sort_loop", f"""
# Search for the highest value
data modify storage {ns}:main copy set from storage {ns}:main stats
data modify storage {ns}:main max set from storage {ns}:main copy[0]
execute store result score #max {ns}.data run data get storage {ns}:main max.count
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run function {ns}:player/trigger/stats/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage {ns}:temp sorted_stats append from storage {ns}:main max
function {ns}:player/trigger/stats/remove_max with storage {ns}:main max

# Continue loop
execute if data storage {ns}:main stats[0] run function {ns}:player/trigger/stats/sort_loop
""")

	# /trigger/succes/display_continue (macro: pop copy[0] then carry $(player) onto the next entry;
	# shared continue-loop tail of display_loop and display_loop_2)
	write_function(f"{path}/trigger/succes/display_continue", f"""
data remove storage {ns}:temp copy[0]
$execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0].player set value $(player)
""")

	# /trigger/succes/display_loop
	write_function(f"{path}/trigger/succes/display_loop", f"""
# Tellraw
data modify storage {ns}:temp temp set from storage {ns}:temp copy[0]
function {ns}:player/translations/trigger_succes_display_loop with storage {ns}:temp temp

# Continue loop
function {ns}:player/trigger/succes/display_continue with storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/display_loop with storage {ns}:temp copy[0]
""")

	# /trigger/succes/display_loop_2
	write_function(f"{path}/trigger/succes/display_loop_2", f"""
# Tellraw
data modify storage {ns}:temp temp set from storage {ns}:temp copy[0]
function {ns}:player/translations/trigger_succes_display_loop_2 with storage {ns}:temp temp

# Continue loop
function {ns}:player/trigger/succes/display_continue with storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/display_loop_2 with storage {ns}:temp copy[0]
""")

	# /trigger/succes/entry
	write_function(f"{path}/trigger/succes/entry", f"""
scoreboard players set @s {ns}.trigger.succes 0

setblock 0 13 0 air
setblock 0 13 0 yellow_shulker_box
loot insert 0 13 0 loot {ns}:get_username
data modify storage {ns}:main input set value {{player:"@s"}}
data modify storage {ns}:main input.player set from block 0 13 0 Items[0].components."minecraft:profile".name
setblock 0 13 0 air

function {ns}:player/trigger/succes/main with storage {ns}:main input
""")

	# /trigger/succes/main (list each advancement done/not-done, grouped by category color)
	SUCCES_COLORS: tuple[str, ...] = ("blue", "green", "yellow", "red")
	def succes_blocks(loop: str) -> str:
		ns: str = Mem.ctx.project_id
		return "\n".join(
			f"data modify storage {ns}:temp copy set value []\n"
			f'data modify storage {ns}:temp copy append from storage {ns}:advancements all[{{color:"{c}"}}]\n'
			f'$execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0].player set value "$(player)"\n'
			f"execute if data storage {ns}:temp copy[0] run function {ns}:player/trigger/succes/{loop} with storage {ns}:temp copy[0]"
			for c in SUCCES_COLORS
		)
	write_function(f"{path}/trigger/succes/main", f"""
## For each of the advancements, print it in order : [done:{{green,yellow,red}},not done:{{green,yellow,red}}]
function {ns}:player/translations/trigger_succes_main with storage {ns}:main input

# Done advancements
{succes_blocks("display_loop")}

# Not done yet
tellraw @s ""
{succes_blocks("display_loop_2")}
""")

	# /tutorial/finish
	write_function(f"{path}/tutorial/finish", f"""
team leave @s
scoreboard players reset @s {ns}.tutorial
advancement grant @s only {ns}:tutorial
execute in minecraft:overworld run tp @s 0 69.69 0
clear @s

function {ns}:stats/util_update_player
""")

	# /tutorial/next_dialogue
	write_function(f"{path}/tutorial/next_dialogue", f"""
scoreboard players add @s[team={ns}.tutorial] {ns}.tutorial 1
execute if score @s {ns}.tutorial matches ..6 run playsound ui.button.click ambient @s
execute if score @s {ns}.tutorial matches ..6 run function {ns}:player/tutorial/second
scoreboard players set @s {ns}.trigger.tutorial 0
""")

	# /tutorial/second
	write_function(f"{path}/tutorial/second", rf"""
## Objectives:
# How to vote
# Shop
# Help
# Attach/Detach
# End

# If player is not in the tutorial area, teleport them
execute in minecraft:overworld positioned -500 69.69 -500 unless entity @s[distance=..50] run tp @s ~ ~ ~ 0 0
gamemode adventure @s[gamemode=!adventure]

# Init dialog
execute if score @s {ns}.tutorial matches 0 run data modify storage {ns}:temp cutted_username set string entity @s equipment.head.components."minecraft:profile".name 0 4
execute if score @s {ns}.tutorial matches 0 run data modify storage {ns}:temp username set from entity @s equipment.head.components."minecraft:profile".name
execute if score @s {ns}.tutorial matches 0 run scoreboard players operation #dialog_type {ns}.data = @s {ns}.id
execute if score @s {ns}.tutorial matches 0 run scoreboard players operation #dialog_type {ns}.data %= #6 {ns}.data

# Second dialog
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_1 {ns}.data 2
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_2 {ns}.data 1
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_3 {ns}.data 0
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_4 {ns}.data 0
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_5 {ns}.data 9
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #vote_game_6 {ns}.data 1
execute if score @s {ns}.tutorial matches 2 run scoreboard players set #for_tutorial {ns}.data 1
execute if score @s {ns}.tutorial matches 2 run function {ns}:engine/voting_time/message

# Third dialog
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -500 69.1 -497 0.1 0 1.5 0 150 force @s
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -500 69.6 -496 0.1 0 0.35 0 35 force @s
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -500 70.1 -491 0.1 0 2 0 200 force @s
execute if score @s {ns}.tutorial matches 3 run particle dust{{color:[0.0,1.0,0.0],scale:1.0}} -502 70.1 -487 1 0 0.1 0 100 force @s

# Fourth dialog
execute if score @s {ns}.tutorial matches 4 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s {ns}.tutorial matches 4 run function {ns}:shop/initialize_shop_scores
execute if score @s {ns}.tutorial matches 4 run function {ns}:shop/pitchout

# Sixth dialog
execute if score @s {ns}.tutorial matches 6 run scoreboard players set @s {ns}.trigger.help 1
execute if score @s {ns}.tutorial matches 6 run function {ns}:player/trigger/help/main

# Go next dialog
function {ns}:player/translations/tutorial_second
""")

	# /tutorial/start
	write_function(f"{path}/tutorial/start", f"""
# Detach, join tutorial team, and set up tutorial score
tag @s add detached
team join {ns}.tutorial @s
scoreboard players set @s {ns}.tutorial 0
execute unless score @s {ns}.stats.wins matches 1.. run scoreboard players set @s {ns}.stats.wins 0
execute unless score @s {ns}.money matches 100.. run scoreboard players set @s {ns}.money 100
function {ns}:player/trigger/reset

# Teleport & Get username
execute in minecraft:overworld run tp @s -500 69.69 -500 0 0
gamemode adventure @s
clear @s
loot replace entity @s armor.head loot {ns}:get_username
execute at @s run playsound ui.toast.challenge_complete ambient @s

advancement revoke @s only {ns}:tutorial

# Empty title (fix for LunarClient first title not showing up)
title @s title ""
title @s subtitle ""
""")

	# /update_stats_storage/every_player
	write_function(f"{path}/update_stats_storage/every_player", f"""
# Get all players and loop
data modify storage {ns}:temp players set from storage {ns}:main UUIDs
function {ns}:player/update_stats_storage/every_player_loop with storage {ns}:temp players[0]
""")

	# /update_stats_storage/every_player_loop
	write_function(f"{path}/update_stats_storage/every_player_loop", f"""
$function {ns}:player/update_stats_storage/of_player {{player:"$(username)"}}

# Continue loop
data remove storage {ns}:temp players[0]
function {ns}:player/update_stats_storage/every_player_loop with storage {ns}:temp players[0]
""")

	# /update_stats_storage/global_stats
	write_function(f"{path}/update_stats_storage/global_stats", f"""
## storage {ns}:stats all run data modify storage {ns}:stats all set value {{
# player:{{
# 	total_played:[{{name:"Stoupy51",value:0}}],
# 	total_wins:[{{name:"Stoupy51",value:0}}],
# 	total_kills:[{{name:"Stoupy51",value:0}}],
# 	total_deaths:[{{name:"Stoupy51",value:0}}],
# 	total_money:[{{name:"Stoupy51",value:0}}],
# 	played_win_ratio:[{{name:"Stoupy51",value:0}}],
# 	advancement_count:[{{name:"Stoupy51",value:0}}],
# }},
# modes:{{
#	pitch_creep:{{total_games:0,played:[],wins:[],played_win_ratio:[]}},
# }}}}

# Initialize to zero if not already set
$scoreboard players add $(player) {ns}.stats.played 0
$scoreboard players add $(player) {ns}.stats.wins 0
$scoreboard players add $(player) {ns}.stats.winrate 0
$scoreboard players add $(player) {ns}.stats.kills 0
$scoreboard players add $(player) {ns}.stats.deaths 0
$scoreboard players add $(player) {ns}.money 0
$scoreboard players add $(player) {ns}.advancements 0

# Update global total stats
$execute unless data storage {ns}:stats all.player.total_played[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_played append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_played[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.played
$execute unless data storage {ns}:stats all.player.total_wins[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_wins append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_wins[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.wins
$execute unless data storage {ns}:stats all.player.total_kills[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_kills append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_kills[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.kills
$execute unless data storage {ns}:stats all.player.total_deaths[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_deaths append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_deaths[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.deaths
$execute unless data storage {ns}:stats all.player.total_money[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.total_money append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.total_money[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.money

## Winrate
# Compute winrate and store it globally only if the player has at least 25 wins
$execute unless data storage {ns}:stats all.player.played_win_ratio[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.played_win_ratio append value {{name:"$(player)",value:0}}
$scoreboard players operation #temp {ns}.data = $(player) {ns}.stats.wins
scoreboard players operation #temp {ns}.data *= #100000 {ns}.data
$scoreboard players operation #temp {ns}.data /= $(player) {ns}.stats.played
$execute if score $(player) {ns}.stats.wins matches 25.. store result storage {ns}:stats all.player.played_win_ratio[{{name:"$(player)"}}].value float 0.001 run scoreboard players get #temp {ns}.data
$execute unless score $(player) {ns}.stats.wins matches 25.. run data modify storage {ns}:stats all.player.played_win_ratio[{{name:"$(player)"}}].value set value 0.0f

# Store winrate in the player's stats anyway (no digits, e.g. 35.15% -> 35%)
#$tellraw @a [{{"text":"$(player)","color":"gold"}},{{"text":" has a winrate of ","color":"gray"}},{{"score":{{"name":"#temp","objective":"{ns}.data"}},"color":"gold"}},{{"text":"%","color":"gray"}}]
$scoreboard players operation $(player) {ns}.stats.winrate = #temp {ns}.data
$scoreboard players operation $(player) {ns}.stats.winrate /= #1000 {ns}.data

# Update advancements count
$execute unless data storage {ns}:stats all.player.advancement_count[{{name:"$(player)"}}] run data modify storage {ns}:stats all.player.advancement_count append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.player.advancement_count[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.advancements
""")

	# /update_stats_storage/main
	write_function(f"{path}/update_stats_storage/main", f"""
# Get username
setblock 0 14 0 air
setblock 0 14 0 yellow_shulker_box
loot insert 0 14 0 loot {ns}:get_username
data modify storage {ns}:main input set value {{player:""}}
data modify storage {ns}:main input.player set from block 0 14 0 Items[0].components."minecraft:profile".name
setblock 0 14 0 air

# Insert global stats
function {ns}:player/update_stats_storage/global_stats with storage {ns}:main input

# Insert stats per game
data modify storage {ns}:main copy set from storage {ns}:main minigames
execute store result score #total_games_not_won {ns}.data if data storage {ns}:main minigames[]
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/update_stats_storage/stats_per_minigame with storage {ns}:main copy[0]

# Advancement "Multigamer"
execute unless score #test_mode {ns}.data matches 1 if score #total_games_not_won {ns}.data matches 0 run advancement grant @s only {ns}:visible/60
""")

	# /update_stats_storage/of_player
	write_function(f"{path}/update_stats_storage/of_player", f"""
# Get username
$data modify storage {ns}:main input set value {{player:"$(player)"}}

# Insert global stats
function {ns}:player/update_stats_storage/global_stats with storage {ns}:main input

# Insert stats per game
data modify storage {ns}:main copy set from storage {ns}:main minigames
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/update_stats_storage/stats_per_minigame with storage {ns}:main copy[0]
""")

	# /update_stats_storage/stats_per_minigame
	write_function(f"{path}/update_stats_storage/stats_per_minigame", f"""
## storage {ns}:stats all run data modify storage {ns}:stats all set value {{
# player:{{
# 	total_played:[{{name:"Stoupy51",value:0}}],
# 	total_wins:[{{name:"Stoupy51",value:0}}],
# 	total_kills:[{{name:"Stoupy51",value:0}}],
# 	total_deaths:[{{name:"Stoupy51",value:0}}],
# 	total_money:[{{name:"Stoupy51",value:0}}],
# 	played_win_ratio:[{{name:"Stoupy51",value:0}}],
# 	advancement_count:[{{name:"Stoupy51",value:0}}],
# }},
# modes:{{
#	pitch_creep:{{total_games:0,played:[],wins:[],played_win_ratio:[]}},
# }}}}

# Set number of games played and wins
$execute unless data storage {ns}:stats all.modes.$(id).played[{{name:"$(player)"}}] run data modify storage {ns}:stats all.modes.$(id).played append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.modes.$(id).played[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.played.$(id)
$execute unless data storage {ns}:stats all.modes.$(id).wins[{{name:"$(player)"}}] run data modify storage {ns}:stats all.modes.$(id).wins append value {{name:"$(player)",value:0}}
$execute store result storage {ns}:stats all.modes.$(id).wins[{{name:"$(player)"}}].value int 1 run scoreboard players get $(player) {ns}.stats.wins.$(id)
$execute unless data storage {ns}:stats all.modes.$(id).played_win_ratio[{{name:"$(player)"}}] run data modify storage {ns}:stats all.modes.$(id).played_win_ratio append value {{name:"$(player)",value:0}}
$scoreboard players operation #temp {ns}.data = $(player) {ns}.stats.wins.$(id)
scoreboard players operation #temp {ns}.data *= #100000 {ns}.data
$scoreboard players operation #temp {ns}.data /= $(player) {ns}.stats.played.$(id)
$execute unless score $(player) {ns}.stats.played.$(id) matches 5.. run scoreboard players set #temp {ns}.data 0
$execute store result storage {ns}:stats all.modes.$(id).played_win_ratio[{{name:"$(player)"}}].value float 0.001 run scoreboard players get #temp {ns}.data

# Advancement
$execute if score $(player) {ns}.stats.wins.$(id) matches 1.. run scoreboard players remove #total_games_not_won {ns}.data 1

# Continue loop
data remove storage {ns}:main copy[0]
execute if data storage {ns}:main copy[0] run data modify storage {ns}:main copy[0].player set from storage {ns}:main input.player
execute if data storage {ns}:main copy[0] run function {ns}:player/update_stats_storage/stats_per_minigame with storage {ns}:main copy[0]
""")

	# /username_change/check
	write_function(f"{path}/username_change/check", f"""
# Get username and UUID
setblock 0 15 0 air
setblock 0 15 0 yellow_shulker_box
loot insert 0 15 0 loot {ns}:get_username
data modify storage {ns}:temp input set value {{username:"",UUID:[]}}
data modify storage {ns}:temp input.username set from block 0 15 0 Items[0].components."minecraft:profile".name
data modify storage {ns}:temp input.UUID set from entity @s UUID
setblock 0 15 0 air

# Macro with UUID and username
function {ns}:player/username_change/with_macro with storage {ns}:temp input
""")

	# /username_change/compare_usernames
	write_function(f"{path}/username_change/compare_usernames", f"""
$data modify storage {ns}:temp old_username set from storage {ns}:main UUIDs[{{UUID:"$(UUID)"}}].username
$data modify storage {ns}:temp copy set value "$(username)"

# Lowercase both usernames for case-insensitive comparison
data modify storage bs:in string.lower.str set from storage {ns}:temp old_username
function #bs.string:lower
data modify storage {ns}:temp old_username_lower set from storage bs:out string.lower

data modify storage bs:in string.lower.str set from storage {ns}:temp copy
function #bs.string:lower
data modify storage {ns}:temp copy_lower set from storage bs:out string.lower

# Check if there is a difference
scoreboard players set #diff {ns}.data 1
scoreboard players set #lower_diff {ns}.data 1
execute store success score #diff {ns}.data run data modify storage {ns}:temp copy set from storage {ns}:temp old_username
execute store success score #lower_diff {ns}.data run data modify storage {ns}:temp copy_lower set from storage {ns}:temp old_username_lower

# If there is no difference in lowercase but there is a difference in default case, kick the player since it would break the = operator
$execute if score #lower_diff {ns}.data matches 0 if score #diff {ns}.data matches 1 run function {ns}:player/username_change/kick_player {{username:"$(username)"}}

# If there is a difference, we have to update everything
data modify storage {ns}:temp input.old_username set from storage {ns}:temp old_username
execute if score #diff {ns}.data matches 1 run function {ns}:player/username_change/update_everything with storage {ns}:temp input
""")

	# /username_change/kick_player
	write_function(f"{path}/username_change/kick_player", """
$kick $(username) "Ratio"
""")

	# /username_change/continue_loop (pop copy[0] then merge the shared input onto the next entry;
	# shared continue-loop prep of update_advancements_loop / update_ratings_loop / update_stats_loop)
	write_function(f"{path}/username_change/continue_loop", f"""
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
""")

	# /username_change/update_advancements_loop
	write_function(f"{path}/username_change/update_advancements_loop", f"""
# Update username
$data remove storage {ns}:advancements all[{{name:"$(name)"}}].players[{{name:"$(username)"}}]
$execute if data storage {ns}:advancements all[{{name:"$(name)"}}].players[{{name:"$(old_username)"}}] run data modify storage {ns}:advancements all[{{name:"$(name)"}}].players[{{name:"$(old_username)"}}].name set value "$(username)"

# Continue loop
function {ns}:player/username_change/continue_loop
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_advancements_loop with storage {ns}:temp copy[0]
""")

	# /username_change/update_everything
	write_function(f"{path}/username_change/update_everything", f"""
# Basic objectives
$scoreboard players operation $(username) {ns}.id = $(old_username) {ns}.id
$scoreboard players operation $(username) {ns}.tutorial = $(old_username) {ns}.tutorial
$scoreboard players operation $(username) {ns}.money = $(old_username) {ns}.money
$scoreboard players operation $(username) {ns}.money_bonus = $(old_username) {ns}.money_bonus
$scoreboard players operation $(username) {ns}.last_total_games = $(old_username) {ns}.last_total_games
$scoreboard players operation $(username) {ns}.reconnect = $(old_username) {ns}.reconnect
$scoreboard players operation $(username) {ns}.advancements = $(old_username) {ns}.advancements
$scoreboard players operation $(username) {ns}.play_time = $(old_username) {ns}.play_time
$scoreboard players operation $(username) {ns}.last_death = $(old_username) {ns}.last_death
$scoreboard players operation $(username) {ns}.stats.kills = $(old_username) {ns}.stats.kills
$scoreboard players operation $(username) {ns}.stats.deaths = $(old_username) {ns}.stats.deaths
$scoreboard players operation $(username) {ns}.stats.played = $(old_username) {ns}.stats.played
$scoreboard players operation $(username) {ns}.stats.wins = $(old_username) {ns}.stats.wins
$scoreboard players operation $(username) {ns}.stats.win_streak = $(old_username) {ns}.stats.win_streak

# Stats {{player:{{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}},modes:{{}}}}
data modify storage {ns}:temp copy set from storage {ns}:main minigames
data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_stats_loop with storage {ns}:temp copy[0]
$data modify storage {ns}:stats all.player.total_played[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_wins[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_kills[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_deaths[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.total_money[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.played_win_ratio[{{name:"$(old_username)"}}].name set value "$(username)"
$data modify storage {ns}:stats all.player.advancement_count[{{name:"$(old_username)"}}].name set value "$(username)"

# Advancements
data modify storage {ns}:temp copy set from storage {ns}:advancements all
data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_advancements_loop with storage {ns}:temp copy[0]

# Ratings
data modify storage {ns}:temp copy set from storage {ns}:ratings all
data modify storage {ns}:temp copy[0] merge from storage {ns}:temp input
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_ratings_loop with storage {ns}:temp copy[0]


# Shops
$function {ns}:player/username_change/update_shops {{username:"$(username)", old_username:"$(old_username)"}}

# Jump best times
$function {ns}:player/jump_timer/username_change {{username:"$(username)", old_username:"$(old_username)"}}
""")

	# /username_change/update_ratings_loop
	write_function(f"{path}/username_change/update_ratings_loop", f"""
# Update username
$data remove storage {ns}:ratings all[{{id:"$(id)"}}].players[{{name:"$(username)"}}]
$execute if data storage {ns}:ratings all[{{id:"$(id)"}}].players[{{name:"$(old_username)"}}] run data modify storage {ns}:ratings all[{{id:"$(id)"}}].players[{{name:"$(old_username)"}}].name set value "$(username)"

# Continue loop
function {ns}:player/username_change/continue_loop
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_ratings_loop with storage {ns}:temp copy[0]
""")

	# /username_change/update_stats_loop
	write_function(f"{path}/username_change/update_stats_loop", f"""
# Update username
$data remove storage {ns}:stats all.modes.$(id).played[{{name:"$(username)"}}]
$data remove storage {ns}:stats all.modes.$(id).wins[{{name:"$(username)"}}]
$execute if data storage {ns}:stats all.modes.$(id).played[{{name:"$(old_username)"}}] run data modify storage {ns}:stats all.modes.$(id).played[{{name:"$(old_username)"}}].name set value "$(username)"
$execute if data storage {ns}:stats all.modes.$(id).wins[{{name:"$(old_username)"}}] run data modify storage {ns}:stats all.modes.$(id).wins[{{name:"$(old_username)"}}].name set value "$(username)"
$scoreboard players operation $(username) {ns}.stats.played.$(id) = $(old_username) {ns}.stats.played.$(id)
$scoreboard players operation $(username) {ns}.stats.wins.$(id) = $(old_username) {ns}.stats.wins.$(id)

# Continue loop
function {ns}:player/username_change/continue_loop
execute if data storage {ns}:temp copy[0] run function {ns}:player/username_change/update_stats_loop with storage {ns}:temp copy[0]
""")

	# /username_change/with_macro
	write_function(f"{path}/username_change/with_macro", f"""
# Compare usernames
$execute if data storage {ns}:main UUIDs[{{UUID:"$(UUID)"}}] run function {ns}:player/username_change/compare_usernames {{UUID:"$(UUID)",username:"$(username)"}}

# Add/update player to list in every case
$data modify storage {ns}:main UUIDs[{{UUID:"$(UUID)"}}].username set value "$(username)"
""")
