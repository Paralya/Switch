
# Imports
import stouputils as stp
from stewbeet import write_function

from .translations import write_translations


@stp.measure_time(message="Generated player files")
def main() -> None:
	path: str = "switch:player"
	write_translations()

	# /detached_action_bar
	write_function(f"{path}/detached_action_bar", """
# Get the number of players in-game and stop if no players are found
execute store result score #players_in_game switch.data if entity @a[tag=!detached]
execute if score #players_in_game switch.data matches 0 run return fail

# Title action bar
function switch:player/translations/detached_action_bar
""")

	# /easter_egg
	write_function(f"{path}/easter_egg", """
# Tak

# Liste des easter eggs : 
# - $(tag) ; Texte qui s'affiche ; Panneau
# - switch.easter_egg.cc_001001 ; Coucou, tu veux voir ma 01001100 ; same
# - switch.easter_egg.pi ; 3.141895 ; plus de décimales
# - switch.easter_egg.ping ; Ping ; Pong
# - switch.easter_egg.pong ; Pong ; Ping
# - switch.easter_egg.42 ; 42 ; La réponse à la vie
# - switch.easter_egg.ayjaraQ ; ayjaraQ ; A long time ago
# - switch.easter_egg.luxium ; Luxium ; in a galaxy far, 
# - switch.easter_egg.friends_cube ; Friends Cube ; far away


$tag @s add $(tag).temp


# Si la personne a déjà cliqué sur un easter egg, on lui affiche un message
execute if entity @s[tag=switch.easter_egg.cc_001001.temp,tag=switch.easter_egg.cc_001001] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.pi.temp,tag=switch.easter_egg.pi] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.ping.temp,tag=switch.easter_egg.ping] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.pong.temp,tag=switch.easter_egg.pong] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.42.temp,tag=switch.easter_egg.42] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.ayjaraQ.temp,tag=switch.easter_egg.ayjaraQ] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.luxium.temp,tag=switch.easter_egg.luxium] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]
execute if entity @s[tag=switch.easter_egg.friends_cube.temp,tag=switch.easter_egg.friends_cube] run tellraw @s ["",{"text":"Tu as déjà trouvé cet easter egg !","color":"red"}]



# Si la personne clique sur un easter egg, on lui affiche un message
execute if entity @s[tag=switch.easter_egg.cc_001001.temp] run tellraw @s ["",{"text":"Coucou, tu veux voir ma 01001100 ?","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.pi.temp] run tellraw @s ["",{"text":"3.141592653589793238462643383279...","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.ping.temp] run tellraw @s ["",{"text":"Ping","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.pong.temp] run tellraw @s ["",{"text":"Pong","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.42.temp] run tellraw @s ["",{"text":"42","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.ayjaraQ.temp] run tellraw @s ["",{"text":"ayjaraQ","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.luxium.temp] run tellraw @s ["",{"text":"Luxium","color":"gold"}]
execute if entity @s[tag=switch.easter_egg.friends_cube.temp] run tellraw @s ["",{"text":"Friends Cube","color":"gold"}]



# Si la personne clique pour la première fois sur un easter egg, on lui ajoute un point
execute unless entity @s[tag=switch.easter_egg.cc_001001] if entity @s[tag=switch.easter_egg.cc_001001.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.pi] if entity @s[tag=switch.easter_egg.pi.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.ping] if entity @s[tag=switch.easter_egg.ping.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.pong] if entity @s[tag=switch.easter_egg.pong.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.42] if entity @s[tag=switch.easter_egg.42.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.ayjaraQ] if entity @s[tag=switch.easter_egg.ayjaraQ.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.luxium] if entity @s[tag=switch.easter_egg.luxium.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1
execute unless entity @s[tag=switch.easter_egg.friends_cube] if entity @s[tag=switch.easter_egg.friends_cube.temp] run scoreboard players add @s switch.lobby_easter_egg_counter 1



tellraw @s[scores={switch.lobby_easter_egg_counter=1}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu as trouvé un easter egg sur 8 !","color":"green"}]
tellraw @s[scores={switch.lobby_easter_egg_counter=2..}] ["",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Tu as trouvé ","color":"green"},{"score":{"name":"@s","objective":"switch.lobby_easter_egg_counter"},"color":"gold"},{"text":" easter eggs sur 8 !","color":"green"}]

# Grant advancement if all easter eggs are found
execute if score @s switch.lobby_easter_egg_counter matches 8 run advancement grant @s only switch:visible/83

$tag @s remove $(tag).temp
$tag @s add $(tag)
""")

	# /easter_egg_give
	write_function(f"{path}/easter_egg_give", r"""
give @s oak_sign[item_name={"text":"Coucou tu veux voir ma"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"Coucou","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.cc_001001\"}"}},{"text":"tu veux voir ma"},{"text":"000101"}]}}]
give @s oak_sign[item_name={"text":"3.141592 - pi"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"3.141592...","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.pi\"}"}},{"text":""},{"text":""}]}}]
give @s oak_sign[item_name={"text":"Ping - Pong"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"Pong","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.ping\"}"}},{"text":""},{"text":""}]}}]
give @s oak_sign[item_name={"text":"Pong - Ping"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"Ping","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.pong\"}"}},{"text":""},{"text":""}]}}]
give @s oak_sign[item_name={"text":"42 - La réponse à la vie"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"La réponse à la","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.42\"}"}},{"text":"vie"},{"text":""}]}}]
give @s oak_sign[item_name={"text":"ayjaraQ - A long time ago"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"A long time ago","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.ayjaraQ\"}"}},{"text":""},{"text":""}]}}]
give @s oak_sign[item_name={"text":"Luxium - in a galaxy,"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"in a galaxy,","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.luxium\"}"}},{"text":""},{"text":""}]}}]
give @s oak_sign[item_name={"text":"Friends Cube - far away"},block_entity_data={"id": "minecraft:sign",front_text:{messages:[{"text":""},{"text":"far away","click_event":{"action":"run_command","command":"function switch:player/easter_egg {tag:\"switch.easter_egg.friends_cube\"}"}},{"text":""},{"text":""}]}}]
""")

	# /joined
	write_function(f"{path}/joined", """
# Add 0 to every shop score
function switch:shop/initialize_shop_scores

# Check if new username
function switch:player/username_change/check

# Update advancements just in case
function switch:advancements/update_percentages

# Update player storage
function switch:player/update_stats_storage/main
function switch:stats/async/sort_player_stats

# On détecte si c'est une reconnexion ou non
scoreboard players set #reconnect switch.data 0
execute if score @s switch.last_total_games = total_games switch.last_total_games run scoreboard players set #reconnect switch.data 1

# Si ce n'est pas une reconnexion, on reset ses attributs
execute if score #reconnect switch.data matches 0 run function switch:utils/reset_attributes

# Si le joueur n'a pas joué depuis plus de 600 secondes, on le détache
scoreboard players operation @s switch.reconnect -= #score switch.reconnect
execute if score @s[tag=!detached] switch.reconnect matches -600.. run function switch:player/make_join
function switch:player/translations/joined
execute unless score @s switch.reconnect matches -600.. run function switch:player/trigger/detach/main

# Prevent calling this function again
scoreboard players operation @s switch.reconnect = #score switch.reconnect
""")

	# /kill_out_of_map
	write_function(f"{path}/kill_out_of_map", """
function switch:player/translations/kill_out_of_map
tp @s ~ ~1 ~
kill @s
""")

	# /make_join
	write_function(f"{path}/make_join", """
# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute if score #engine_state switch.data matches 2 run function switch:engine/voting_time/player_join
execute if score #engine_state switch.data matches 3 run function switch:engine/signals/joined
execute unless score #engine_state switch.data matches 2..3 run function switch:player/trigger/detach/basic_stuff
""")

	# /set_id
	write_function(f"{path}/set_id", """
scoreboard players add #next_id switch.id 1
scoreboard players operation @s switch.id = #next_id switch.id

# Update player stats
function switch:stats/util_update_player

# Launch tutorial
function switch:player/tutorial/start
""")

	# /setup_lobby_inventory
	write_function(f"{path}/setup_lobby_inventory", """
item replace entity @s[advancements={switch:visible/jump_dripstone=false}] inventory.3 with dripstone_block[item_name={"text":"Dripstone Jump","color":"gold"},lore=[{"text":"by AirDox","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_dripstone":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_dripstone=true}] inventory.3 with dripstone_block[item_name={"text":"Dripstone Jump","color":"gold"},lore=[{"text":"by AirDox","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_dripstone":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_pink=false}] inventory.4 with pink_concrete[item_name={"text":"Pink Jump","color":"light_purple"},lore=[{"text":"by OfChara","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_pink":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_pink=true}] inventory.4 with pink_concrete[item_name={"text":"Pink Jump","color":"light_purple"},lore=[{"text":"by OfChara","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_pink":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_bricks=false}] inventory.5 with bricks[item_name={"text":"Bricks Jump","color":"#BC4A3C"},lore=[{"text":"by Thitanas","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_bricks":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_bricks=true}] inventory.5 with bricks[item_name={"text":"Bricks Jump","color":"#BC4A3C"},lore=[{"text":"by Thitanas","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_bricks":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_green=false}] inventory.10 with lime_concrete[item_name={"text":"Green Jump","color":"green"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_green":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_green=true}] inventory.10 with lime_concrete[item_name={"text":"Green Jump","color":"green"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_green":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_white=false}] inventory.11 with white_concrete[item_name={"text":"White Jump","color":"white"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_white":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_white=true}] inventory.11 with white_concrete[item_name={"text":"White Jump","color":"white"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_white":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_blue=false}] inventory.12 with blue_concrete[item_name={"text":"Blue Jump","color":"blue"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_blue":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_blue=true}] inventory.12 with blue_concrete[item_name={"text":"Blue Jump","color":"blue"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_blue":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_yellow=false}] inventory.13 with yellow_concrete[item_name={"text":"Yellow Jump","color":"yellow"},lore=[{"text":"by ArtiGrrr","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_yellow":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_yellow=true}] inventory.13 with yellow_concrete[item_name={"text":"Yellow Jump","color":"yellow"},lore=[{"text":"by ArtiGrrr","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_yellow":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_red=false}] inventory.14 with red_concrete[item_name={"text":"Red Jump","color":"red"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_red":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_red=true}] inventory.14 with red_concrete[item_name={"text":"Red Jump","color":"red"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_red":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_brown=false}] inventory.15 with brown_concrete[item_name={"text":"Brown Jump","color":"#8B4513"},lore=[{"text":"by OfChara","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_brown":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_brown=true}] inventory.15 with brown_concrete[item_name={"text":"Brown Jump","color":"#8B4513"},lore=[{"text":"by OfChara","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_brown":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_purple=false}] inventory.16 with purple_concrete[item_name={"text":"Purple Jump","color":"light_purple"},lore=[{"text":"by AirDox","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_purple":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_purple=true}] inventory.16 with purple_concrete[item_name={"text":"Purple Jump","color":"light_purple"},lore=[{"text":"by AirDox","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_purple":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_duality=false}] inventory.21 with copper_block[item_name={"text":"Duality Jump","color":"#B87333"},lore=[{"text":"by Stoupy / AirDox / OfChara","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_duality":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_duality=true}] inventory.21 with copper_block[item_name={"text":"Duality Jump","color":"#B87333"},lore=[{"text":"by Stoupy / AirDox / OfChara","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_duality":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_graviglitch=false}] inventory.22 with suspicious_gravel[item_name={"text":"GraviGlitch Jump","color":"#676767"},lore=[{"text":"by OfChara / Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_graviglitch":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_graviglitch=true}] inventory.22 with suspicious_gravel[item_name={"text":"GraviGlitch Jump","color":"#676767"},lore=[{"text":"by OfChara / Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_graviglitch":true}},tooltip_style="success"]

item replace entity @s[advancements={switch:visible/jump_obsidian=false}] inventory.23 with crying_obsidian[item_name={"text":"Obsidian Jump","color":"dark_gray"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_obsidian":true}},tooltip_style="failure"]
item replace entity @s[advancements={switch:visible/jump_obsidian=true}] inventory.23 with crying_obsidian[item_name={"text":"Obsidian Jump","color":"dark_gray"},lore=[{"text":"by Stoupy","color":"gray","italic":false}],custom_data={"switch":{"jump":true,"jump_obsidian":true}},tooltip_style="success"]
""")

	# /tick
	write_function(f"{path}/tick", """
# Check if new username
execute unless score @s switch.reconnect = #score switch.reconnect run function switch:player/username_change/check

# Handle player trigger inputs
function switch:player/trigger/main

# Ask for a lang if not set
execute unless score @s switch.lang matches 0.. run function switch:player/trigger/lang/tick_undefined
execute unless score @s switch.lang matches 0.. run tag @s add detached
execute unless score @s switch.lang matches 0.. run return 1

# Set player id
execute unless score @s switch.id matches 1.. run function switch:player/set_id

# Check if player reconnected
execute unless score @s switch.reconnect = #score switch.reconnect run function switch:player/joined
scoreboard players operation @s switch.last_total_games = total_games switch.last_total_games

# 1 money per kill
execute if score @s switch.kill matches 1.. run scoreboard players operation @s switch.money += @s switch.kill
execute if score @s switch.kill matches 1.. run scoreboard players reset @s switch.kill

# Detach tick at spawn
execute if dimension minecraft:overworld if entity @s[tag=detached,x=0,y=69,z=0,distance=..200] run function switch:player/tick_detach

# Noteblock
execute at @s if score @s switch.music.progress matches 1.. run function switch:music/player_tick
""")

	# /tick_detach
	write_function(f"{path}/tick_detach", """
# Global variable indicating number of players in the lobby
scoreboard players add #players_in_lobby switch.data 1

gamemode adventure @s[gamemode=creative,tag=!can_creative]
team join switch.detached @s[team=!switch.tutorial]
tp @s[team=switch.tutorial] -500 69.69 -500 0 0

effect give @s[gamemode=survival] mining_fatigue 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] resistance 1 127 true
effect give @s[gamemode=!creative,gamemode=!spectator] weakness 1 127 true
attribute @s[gamemode=!creative,gamemode=!spectator] safe_fall_distance base set 1024

## Teleport inventory
# Get number of blocks
data modify storage switch:temp Inventory set from entity @s Inventory
scoreboard players set #inventory switch.data 0
execute store result score #inventory switch.data if data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump

# If lost (only) one item, check where
execute unless score #inventory switch.data matches 13 unless score #inventory switch.data matches 0 run scoreboard players set #inventory switch.data -1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_green run scoreboard players set @s switch.lobby_respawn 1
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_white run scoreboard players set @s switch.lobby_respawn 2
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_blue run scoreboard players set @s switch.lobby_respawn 3
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_yellow run scoreboard players set @s switch.lobby_respawn 4
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_red run scoreboard players set @s switch.lobby_respawn 5
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_brown run scoreboard players set @s switch.lobby_respawn 6
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_purple run scoreboard players set @s switch.lobby_respawn 7
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_dripstone run scoreboard players set @s switch.lobby_respawn 8
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_pink run scoreboard players set @s switch.lobby_respawn 9
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_bricks run scoreboard players set @s switch.lobby_respawn 10
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_obsidian run scoreboard players set @s switch.lobby_respawn 11
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_duality run scoreboard players set @s switch.lobby_respawn 12
execute if score #inventory switch.data matches -1 unless data storage switch:temp Inventory[].components."minecraft:custom_data".switch.jump_graviglitch run scoreboard players set @s switch.lobby_respawn 13
execute if score #inventory switch.data matches -1 run tag @s add switch.lobby_respawn
execute if score #inventory switch.data matches -1 run clear @s

# Teleport to respawn point
scoreboard players add @s switch.lobby_respawn 0
execute if entity @s[tag=!switch.lobby_respawn,gamemode=!creative,gamemode=!spectator,y=-64,dy=127] run tag @s add switch.lobby_respawn
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=0}] run function switch:cinematic/launch {x:0.5,y:69.69,z:0.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=1}] run function switch:cinematic/launch {x:0.5,y:70.1,z:-9.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=2}] run function switch:cinematic/launch {x:0.5,y:70.1,z:-9.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=3}] run function switch:cinematic/launch {x:0.5,y:75.51,z:-23.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=4}] run function switch:cinematic/launch {x:9.5,y:74.51,z:23.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=5}] run function switch:cinematic/launch {x:-14.5,y:73.51,z:9.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=6}] run function switch:cinematic/launch {x:-34.5,y:73.1,z:-8.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=7}] run function switch:cinematic/launch {x:-8.5,y:73.1,z:35.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=8}] run function switch:cinematic/launch {x:9.5,y:73.1,z:47.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=9}] run function switch:cinematic/launch {x:-46.5,y:76.1,z:10.5,time:20,with:{pitch:0,yaw:0,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=10}] run function switch:cinematic/launch {x:-84.5,y:70.1,z:0.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=11}] run function switch:cinematic/launch {x:51.5,y:74.6,z:-8.5,time:20,with:{pitch:0,yaw:180,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=12}] run function switch:cinematic/launch {x:9.5,y:74.6,z:111.5,time:20,with:{pitch:0,yaw:-90,go_side:1,particle:1,interpolation:2}}
execute if entity @s[tag=switch.lobby_respawn,scores={switch.lobby_respawn=13}] run function switch:cinematic/launch {x:-11.5,y:74.1,z:91.5,time:20,with:{pitch:0,yaw:90,go_side:1,particle:1,interpolation:2}}
tag @s remove switch.lobby_respawn

# If lost at least one item, setup inventory
execute unless score #inventory switch.data matches 13 run function switch:player/setup_lobby_inventory


## Jumps advancements
advancement grant @s[x=-8,y=81,z=-22,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_green
advancement grant @s[x=22,y=88,z=0,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_white
advancement grant @s[x=0,y=82,z=-39,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_blue
advancement grant @s[x=34,y=82,z=47,distance=..1,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_dripstone
advancement grant @s[x=63,y=88,z=10,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_yellow
advancement grant @s[x=-26,y=91,z=15,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_red
advancement grant @s[x=-20,y=75,z=-78,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_brown
advancement grant @s[x=-42,y=94,z=32,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_purple
advancement grant @s[x=-44,y=93,z=27,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_pink
advancement grant @s[x=-123,y=79,z=-11,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_bricks
advancement grant @s[x=36,y=84,z=-73,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_obsidian
execute if entity @a[gamemode=adventure,x=43,y=86,z=84,dx=0,dy=0,dz=0] if entity @a[gamemode=adventure,x=45,y=86,z=84,dx=0,dy=0,dz=0] run advancement grant @a[gamemode=adventure,x=44,y=86,z=84,distance=..2] only switch:visible/jump_duality
advancement grant @s[x=-83,y=100,z=71,distance=..2,gamemode=!creative,gamemode=!spectator] only switch:visible/jump_graviglitch

# GraviGlitch jump gives
execute store success score #graviglitch_give switch.data if entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37,predicate=!switch:nbt/enough_gravel]
execute if score #graviglitch_give switch.data matches 1 run clear @s suspicious_gravel[minecraft:custom_data~{switch:{"to_place":true}}]
execute if score #graviglitch_give switch.data matches 1 run give @s suspicious_gravel[can_place_on={blocks:["smooth_red_sandstone","orange_wall_banner","red_sandstone_wall"]},custom_data={"switch":{"to_place":true}}] 42
execute unless entity @s[x=-87,y=67,z=66,dx=77,dy=38,dz=37] run clear @s suspicious_gravel[custom_data~{"switch":{"to_place":true}}]
""")

	# /trigger/attach/main
	write_function(f"{path}/trigger/attach/main", """
scoreboard players set @s switch.trigger.attach 0
execute if score #can_attach switch.data matches 1 if score @s switch.lang matches 0.. run function switch:player/trigger/attach/real_attach
execute if score @s switch.lang matches 0.. run function switch:player/translations/trigger_attach_
""")

	# /trigger/attach/real_attach
	write_function(f"{path}/trigger/attach/real_attach", """
execute unless entity @s[team=switch.tutorial] run tag @s remove detached
execute unless entity @s[team=switch.tutorial] run team leave @s

# Selon l'état du jeu, on exécute les fonctions correspondantes
scoreboard players add @s switch.alive 0
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 2 run function switch:engine/voting_time/player_join
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 3 run scoreboard players set #reconnect switch.data 0
execute unless entity @s[team=switch.tutorial] if score #engine_state switch.data matches 3 run function switch:engine/signals/joined

# Check if enough players
execute store result score #nb_attached switch.data if entity @a[tag=!detached]
function switch:player/translations/trigger_attach_real_attach
""")

	# /trigger/changelog/main
	write_function(f"{path}/trigger/changelog/main", """
function switch:translations/changelog
scoreboard players set @s switch.trigger.changelog 0
""")

	# /trigger/coupdetat/action
	write_function(f"{path}/trigger/coupdetat/action", """
# Error if a game is not running or someone is already in a coup d'état
execute unless score #engine_state switch.data matches 3 run return run function switch:player/trigger/coupdetat/error
execute if score #coupdetat switch.data matches 1 run return run function switch:player/trigger/coupdetat/error

# Start the vote for coup d'état
data modify storage switch:temp input set value {index_hundred:0}
execute store result storage switch:temp input.index_hundred int 1 run scoreboard players get @s switch.trigger.coupdetat
function switch:player/trigger/coupdetat/launch_vote with storage switch:temp input
""")

	# /trigger/coupdetat/display
	write_function(f"{path}/trigger/coupdetat/display", """
## For each of the game, print it in order
function switch:player/translations/trigger_coupdetat_display

# Create a list of all minigames (with clickable text)
scoreboard players set #alternate switch.data 0
data modify storage switch:temp tellraw set value []
data modify storage switch:temp copy set from storage switch:main minigames
execute if data storage switch:temp copy[0] run function switch:player/trigger/coupdetat/display_loop with storage switch:temp copy[0]

# Remove the last comma from the tellraw
data remove storage switch:temp tellraw[-1][-1]

# Display the text component
tellraw @s {"nbt":"tellraw","storage":"switch:temp","interpret":true}
""")

	# /trigger/coupdetat/display_loop
	write_function(f"{path}/trigger/coupdetat/display_loop", """
# Prepare the TextComponent for this minigame
$data modify storage switch:temp text_component set value [{"text":"X","color":"aqua","hover_event":{"action":"show_text","value":[]},"click_event":{"action":"run_command","command":"/trigger switch.trigger.coupdetat set $(index_hundred)"}},{"text":", ","color":"gray"}]

# Fill the gaps
$execute if score @s switch.lang matches 0 run data modify storage switch:temp text_component[0].text set value "$(name_fr)"
$execute if score @s switch.lang matches 1 run data modify storage switch:temp text_component[0].text set value "$(name_en)"
$execute if score @s switch.lang matches 0 run data modify storage switch:temp text_component[0].hover_event.value set value [{"text":"Dépensez 100","color":"gray"},{"nbt":"SapphireFR","storage":"switch:main","interpret":true},{"text":" pour lancer un coup d'état vers ","color":"gray"},{"text":"$(name_fr)","color":"yellow"}]
$execute if score @s switch.lang matches 1 run data modify storage switch:temp text_component[0].hover_event.value set value [{"text":"Spend 100","color":"gray"},{"nbt":"SapphireEN","storage":"switch:main","interpret":true},{"text":" to start a coup d'état for ","color":"gray"},{"text":"$(name_en)","color":"yellow"}]

# Alternate colors for better readability
scoreboard players add #alternate switch.data 1
execute if score #alternate switch.data matches 1 run data modify storage switch:temp text_component[0].color set value "dark_aqua"
execute if score #alternate switch.data matches 2 run data modify storage switch:temp text_component[0].color set value "aqua"
execute if score #alternate switch.data matches 2 run scoreboard players set #alternate switch.data 0

# Add the text component to the tellraw
data modify storage switch:temp tellraw append from storage switch:temp text_component

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/coupdetat/display_loop with storage switch:temp copy[0]
""")

	# /trigger/coupdetat/error
	write_function(f"{path}/trigger/coupdetat/error", """
# Playsound and tellraw
playsound entity.villager.no ambient @s
function switch:player/translations/trigger_coupdetat_error
""")

	# /trigger/coupdetat/launch_vote
	write_function(f"{path}/trigger/coupdetat/launch_vote", """
# Extract the wanted minigame by using the index_hundred
$data modify storage switch:main coupdetat set from storage switch:main minigames[{index_hundred:$(index_hundred)}]

# Set up score vote
scoreboard objectives remove switch.trigger.coupdetat_vote
scoreboard objectives add switch.trigger.coupdetat_vote trigger
scoreboard players enable @a[tag=!detached] switch.trigger.coupdetat_vote
scoreboard players set #coupdetat switch.data 1

# Remove 100 sapphires from the player
scoreboard players remove @s switch.money 100
function switch:stats/util_update_player

# Tag player to indicate they are in a coup d'état
tag @a remove switch.coupdetat
tag @s add switch.coupdetat

# Ask players to support the coup d'état
function switch:player/translations/trigger_coupdetat_launch_vote
""")

	# /trigger/coupdetat/main
	write_function(f"{path}/trigger/coupdetat/main", """
# Display & Actions
execute if score @s switch.trigger.coupdetat matches 1 run function switch:player/trigger/coupdetat/display
execute if score @s switch.trigger.coupdetat matches 100.. run function switch:player/trigger/coupdetat/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s switch.trigger.coupdetat 0
""")

	# /trigger/coupdetat/player_vote
	write_function(f"{path}/trigger/coupdetat/player_vote", """
# Display & Actions
function switch:player/translations/trigger_coupdetat_player_vote
playsound ui.button.click ambient @s

# Set to -1 to prevent spamming the message if the player clicks multiple times
scoreboard players set @s switch.trigger.coupdetat_vote -1
""")

	# /trigger/detach/basic_stuff
	write_function(f"{path}/trigger/detach/basic_stuff", """
execute in minecraft:overworld run spawnpoint @s 0 70 0
scoreboard players set @s switch.lobby_respawn 0
effect clear @s
function switch:utils/reset_attributes
effect give @s saturation infinite 0 true
effect give @s regeneration 10 255 true
gamemode adventure @s
clear @s
team join switch.no_pvp @s
xp set @s 0 levels
xp set @s 0 points

# Kill any cinematic entity that was linked to the player
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.cinematic,predicate=switch:has_same_id] run function switch:cinematic/kill

# Teleport to the lobby (cinematic if close, otherwise tp)
scoreboard players set #is_close switch.data 0
execute at @s if dimension minecraft:overworld positioned 0 69.69 0 store success score #is_close switch.data if entity @s[distance=..200]
execute if score #is_close switch.data matches 1 run function switch:cinematic/launch {x:0.5,y:69.69,z:0.5,time:20,with:{pitch:0,yaw:0,particle:1,interpolation:2}}
execute if score #is_close switch.data matches 0 in minecraft:overworld run tp @s 0 69.69 0 0 0
""")

	# /trigger/detach/main
	write_function(f"{path}/trigger/detach/main", """
# Finish tutorial
execute if score @s switch.tutorial matches 6 run function switch:player/tutorial/finish

# If in tutorial but not finished, ignore a little
execute unless entity @s[team=switch.tutorial] run tag @s add detached
execute unless entity @s[team=switch.tutorial] run function switch:player/trigger/detach/basic_stuff

# Privileged actions
execute if score @s switch.trigger.detach matches 20231211 run tp @s 84069 100 84069
execute if score @s switch.trigger.detach matches 20231211 run gamemode creative @s
execute if score @s switch.trigger.detach matches 20240927 in switch:void run tp @s 152.08 79.16 -128.08 80.11 26.04
execute if score @s switch.trigger.detach matches 20240927 run gamemode creative @s

# Reset score
scoreboard players set @s switch.trigger.detach 0
""")

	# /trigger/enable
	write_function(f"{path}/trigger/enable", """
scoreboard players enable @s switch.trigger.lang
scoreboard players enable @s switch.trigger.help
scoreboard players enable @s switch.trigger.money
scoreboard players enable @s switch.trigger.game_vote
scoreboard players enable @s switch.trigger.stats
scoreboard players enable @s switch.trigger.changelog
scoreboard players enable @s switch.trigger.detach
scoreboard players enable @s switch.trigger.attach
scoreboard players enable @s switch.trigger.shop
scoreboard players enable @s switch.trigger.tutorial
scoreboard players enable @s switch.trigger.succes
scoreboard players enable @s switch.trigger.rating
scoreboard players enable @s switch.trigger.night_vision
scoreboard players enable @s switch.trigger.music
scoreboard players enable @s switch.trigger.coupdetat
scoreboard players enable @s switch.trigger.coupdetat_vote
""")

	# /trigger/help/main
	write_function(f"{path}/trigger/help/main", """
# Tutorial stuff
execute if score @s switch.tutorial matches 5 run scoreboard players set @s switch.tutorial 6

function switch:player/translations/trigger_help_

scoreboard players set @s switch.trigger.help 0
""")

	# /trigger/lang/main
	write_function(f"{path}/trigger/lang/main", r"""
## File attribut: Ignore translations

# If player write /lang, show the language selection
execute if score @s switch.trigger.lang matches 1 run function switch:player/trigger/lang/tellraw

# Depending on the score, choose the right language
execute if score @s switch.trigger.lang matches 10 run scoreboard players set @s switch.lang 0
execute if score @s switch.trigger.lang matches 11 run scoreboard players set @s switch.lang 1

# Messages
execute if score @s switch.trigger.lang matches 10 run tellraw @s [{"text":"Vous avez choisi la langue française !\nFaites '/lang' pour re-changer la langue","color":"aqua"}]
execute if score @s switch.trigger.lang matches 11 run tellraw @s [{"text":"You have chosen the English language!\nType '/lang' to change the language","color":"aqua"}]

# Clear the effects and reset the trigger score
scoreboard players set @s switch.trigger.lang 0
""")

	# /trigger/lang/tellraw
	write_function(f"{path}/trigger/lang/tellraw", r"""
## File attribut: Ignore translations

tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
tellraw @s [{"text":"Please choose a language by clicking it:","color":"aqua"}]
tellraw @s [{"text":"\n[Français]","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.lang set 10"},"hover_event":{"action":"show_text","value":{"text":"[Cliquez pour choisir Français]","color":"yellow"}}}]
tellraw @s [{"text":"\n[English]","color":"yellow","click_event":{"action":"run_command","command":"/trigger switch.trigger.lang set 11"},"hover_event":{"action":"show_text","value":{"text":"[Click to choose English]","color":"yellow"}}}]
""")

	# /trigger/lang/tick_undefined
	write_function(f"{path}/trigger/lang/tick_undefined", """
## File attribut: Ignore translations

execute if entity @s[tag=!detached] run function switch:player/trigger/detach/main

effect give @s blindness 5 255 true
effect give @s darkness 5 255 true
effect give @s slowness 5 255 true
effect give @s night_vision 5 255 true

execute if score #tick switch.data matches 5 run function switch:player/trigger/lang/tellraw
""")

	# /trigger/main
	write_function(f"{path}/trigger/main", """
function switch:player/trigger/enable

execute unless score @s switch.trigger.lang matches 0 run function switch:player/trigger/lang/main
execute unless score @s switch.trigger.help matches 0 run function switch:player/trigger/help/main
execute unless score @s switch.trigger.money matches 0 run function switch:player/trigger/money/main
execute unless score @s switch.trigger.stats matches 0 run function switch:player/trigger/stats/entry
execute unless score @s switch.trigger.changelog matches 0 run function switch:player/trigger/changelog/main
execute unless score @s switch.trigger.detach matches 0 run function switch:player/trigger/detach/main
execute unless score @s switch.trigger.attach matches 0 run function switch:player/trigger/attach/main
execute unless score @s switch.trigger.shop matches 0 run function switch:shop/trigger
execute unless score @s switch.trigger.tutorial matches 0 run function switch:player/tutorial/next_dialogue
execute unless score @s switch.trigger.succes matches 0 in minecraft:overworld run function switch:player/trigger/succes/entry
execute unless score @s switch.trigger.rating matches 0 run function switch:player/trigger/rating/main
execute unless score @s switch.trigger.night_vision matches 0 run function switch:player/trigger/night_vision/main
execute unless score @s switch.trigger.music matches 0 run function switch:player/trigger/music/main
execute unless score @s switch.trigger.coupdetat matches 0 run function switch:player/trigger/coupdetat/main
execute if score @s switch.trigger.coupdetat_vote matches 1 run function switch:player/trigger/coupdetat/player_vote

function switch:player/trigger/enable
""")

	# /trigger/money/main
	write_function(f"{path}/trigger/money/main", """
function switch:player/translations/trigger_money_
scoreboard players set @s switch.trigger.money 0
""")

	# /trigger/music/main
	write_function(f"{path}/trigger/music/main", """
# If trigger equal 1, show musics
execute if score @s switch.trigger.music matches 1 run function switch:music/browser

# Action buttons
execute if score @s switch.trigger.music matches 2 run function switch:music/actions/random
execute if score @s switch.trigger.music matches 2 run function switch:music/browser
execute if score @s switch.trigger.music matches 3 run function switch:music/actions/previous
execute if score @s switch.trigger.music matches 4 run scoreboard players operation @s switch.music.progress *= #-1 switch.data
execute if score @s switch.trigger.music matches 5 run function switch:music/actions/next
execute if score @s switch.trigger.music matches 6 run function switch:music/actions/repeat_all
execute if score @s switch.trigger.music matches 7 run function switch:music/actions/repeat_only_same

# If trigger >= 100 : play song
execute if score @s switch.trigger.music matches 100.. run scoreboard players operation @s switch.music.current = @s switch.trigger.music
execute if score @s switch.trigger.music matches 100.. run scoreboard players set @s switch.music.progress 1
execute if score @s switch.trigger.music matches 100.. run function switch:music/browser

# Reset trigger
scoreboard players set @s switch.trigger.music 0
""")

	# /trigger/night_vision/main
	write_function(f"{path}/trigger/night_vision/main", """
# Toggle night vision
scoreboard players set #success switch.data 0
execute if data entity @s active_effects[{id:"night_vision"}] run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 0 run effect give @s night_vision infinite 255 true
execute if score #success switch.data matches 1 run effect clear @s night_vision
scoreboard players set @s switch.trigger.night_vision 0
""")

	# /trigger/rating/action
	write_function(f"{path}/trigger/rating/action", """
# Get the digit
scoreboard players operation #digits switch.data = @s switch.trigger.rating
scoreboard players operation #digits switch.data %= #100 switch.data
scoreboard players operation #int switch.data = @s switch.trigger.rating
scoreboard players operation #int switch.data /= #100 switch.data

# Get game index
data modify storage switch:temp input set value {index:0,index_hundred:0,digits:0}
execute store result storage switch:temp input.index int 1 run scoreboard players get #int switch.data
execute store result storage switch:temp input.index_hundred int 100 run scoreboard players get #int switch.data
execute store result storage switch:temp input.digits int 1 run scoreboard players get #digits switch.data

# Get username
setblock 0 12 0 air
setblock 0 12 0 yellow_shulker_box
loot insert 0 12 0 loot switch:get_username
data modify storage switch:temp input.player set from block 0 12 0 Items[0].components."minecraft:profile".name
setblock 0 12 0 air

# If the digit is 0, print function
execute if score #digits switch.data matches 0 run function switch:player/trigger/rating/print with storage switch:temp input

# Else, take account the note if it's between 1 and 5
execute if score #digits switch.data matches 1..5 run function switch:player/trigger/rating/note with storage switch:temp input
""")

	# /trigger/rating/display
	write_function(f"{path}/trigger/rating/display", """
## For each of the game, print it in order
function switch:player/translations/trigger_rating_display

# Done advancements
data modify storage switch:temp copy set from storage switch:ratings all
execute if data storage switch:temp copy[0] run function switch:player/trigger/rating/display_loop with storage switch:temp copy[0]

scoreboard players set @s switch.trigger.rating 0
""")

	# /trigger/rating/display_loop
	write_function(f"{path}/trigger/rating/display_loop", """
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
$data modify storage switch:temp name_fr set from storage switch:main minigames[{id:"$(id)"}].name_fr
$data modify storage switch:temp name_en set from storage switch:main minigames[{id:"$(id)"}].name_en
execute store result score #digits switch.data run data get storage switch:temp temp.digits
execute store result score #nb_ratings switch.data if data storage switch:temp temp.players[]
function switch:player/translations/trigger_rating_display_loop with storage switch:temp temp

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run function switch:player/trigger/rating/display_loop with storage switch:temp copy[0]
""")

	# /trigger/rating/get_max_loop
	write_function(f"{path}/trigger/rating/get_max_loop", """
# Get max
scoreboard players set #int switch.data 0
scoreboard players set #digits switch.data 0
execute store result score #int switch.data run data get storage switch:main copy[0].int
execute store result score #digits switch.data run data get storage switch:main copy[0].digits
execute if score #int switch.data > #max_int switch.data run data modify storage switch:main max set from storage switch:main copy[0]
execute if score #int switch.data > #max_int switch.data run scoreboard players operation #max_digits switch.data = #digits switch.data
execute if score #int switch.data > #max_int switch.data run scoreboard players operation #max_int switch.data = #int switch.data
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run data modify storage switch:main max set from storage switch:main copy[0]
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run scoreboard players operation #max_int switch.data = #int switch.data
execute if score #int switch.data >= #max_int switch.data if score #digits switch.data > #max_digits switch.data run scoreboard players operation #max_digits switch.data = #digits switch.data

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/rating/get_max_loop
""")

	# /trigger/rating/main
	write_function(f"{path}/trigger/rating/main", """
# Display & Actions
execute if score @s switch.trigger.rating matches 1 run function switch:player/trigger/rating/display
execute if score @s switch.trigger.rating matches 100.. run function switch:player/trigger/rating/action
playsound ui.button.click ambient @s

# Reset
scoreboard players set @s switch.trigger.rating 0
""")

	# /trigger/rating/note
	write_function(f"{path}/trigger/rating/note", """
## Advancement
scoreboard objectives add switch.rates_given dummy
scoreboard players add @s switch.rates_given 1
execute unless score #test_mode switch.data matches 1 if score @s switch.rates_given matches 20.. run advancement grant @s only switch:visible/56


## {index:0,index_hundred:0,digits:0,player:""}
# Add player to list of players
scoreboard players set #previous switch.data 0
$execute store result score #previous switch.data run data get storage switch:ratings all[{index:$(index)}].players[{name:"$(player)"}].value
$execute if score #previous switch.data matches 0 run data modify storage switch:ratings all[{index:$(index)}].players append value {name:"$(player)",value:$(digits)}
$data modify storage switch:ratings all[{index:$(index)}].players[{name:"$(player)"}].value set value $(digits)

## Update game rating
# Calculate new points
$execute store result score #points switch.data run data get storage switch:ratings all[{index:$(index)}].points
scoreboard players operation #points switch.data -= #previous switch.data
$scoreboard players add #points switch.data $(digits)
$execute store result storage switch:ratings all[{index:$(index)}].points int 1 run scoreboard players get #points switch.data

# Calculate int and digits rating
$execute store result score #count switch.data run data get storage switch:ratings all[{index:$(index)}].players
scoreboard players operation #points switch.data *= #1000 switch.data
scoreboard players operation #digits switch.data = #points switch.data
scoreboard players operation #points switch.data /= #count switch.data
scoreboard players operation #points switch.data /= #1000 switch.data
scoreboard players operation #digits switch.data %= #count switch.data
$execute store result storage switch:ratings all[{index:$(index)}].int int 1 run scoreboard players get #points switch.data
$execute store result storage switch:ratings all[{index:$(index)}].digits int 1 run scoreboard players get #digits switch.data

# Verbose
$scoreboard players set #temp switch.data $(digits)
function switch:player/translations/trigger_rating_note with storage switch:temp input

# Sort all the ratings
function switch:player/trigger/rating/sort
""")

	# /trigger/rating/print
	write_function(f"{path}/trigger/rating/print", """
# Macro input {index:0,index_hundred:0,digits:0}

data remove storage switch:temp temp
$data modify storage switch:temp temp set from storage switch:ratings all[{index:$(index)}].players[{name:"$(player)"}].value
function switch:player/translations/trigger_rating_print with storage switch:temp input
""")

	# /trigger/rating/print_current_game
	write_function(f"{path}/trigger/rating/print_current_game", """
scoreboard players operation @s switch.trigger.rating = #game_1 switch.data
scoreboard players operation @s switch.trigger.rating *= #100 switch.data
function switch:player/trigger/main
""")

	# /trigger/rating/remove_max
	write_function(f"{path}/trigger/rating/remove_max", """
$data remove storage switch:ratings all[{index:$(index)}]
""")

	# /trigger/rating/sort
	write_function(f"{path}/trigger/rating/sort", """
data modify storage switch:temp sorted set value []
function switch:player/trigger/rating/sort_loop
data modify storage switch:ratings all set from storage switch:temp sorted
""")

	# /trigger/rating/sort_loop
	write_function(f"{path}/trigger/rating/sort_loop", """
# Search for the highest value
data modify storage switch:main copy set from storage switch:ratings all
data modify storage switch:main max set from storage switch:main copy[0]
scoreboard players set #max_int switch.data 0
scoreboard players set #max_digits switch.data 0
execute store result score #max_int switch.data run data get storage switch:main max.int
execute store result score #max_digits switch.data run data get storage switch:main max.digits
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/rating/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage switch:temp sorted append from storage switch:main max
function switch:player/trigger/rating/remove_max with storage switch:main max

# Continue loop
execute if data storage switch:ratings all[0] run function switch:player/trigger/rating/sort_loop
""")

	# /trigger/reset
	write_function(f"{path}/trigger/reset", """
function switch:player/trigger/enable
scoreboard players set @s switch.trigger.help 0
scoreboard players set @s switch.trigger.money 0
scoreboard players set @s switch.trigger.game_vote 0
scoreboard players set @s switch.trigger.stats 0
scoreboard players set @s switch.trigger.changelog 0
scoreboard players set @s switch.trigger.detach 0
scoreboard players set @s switch.trigger.attach 0
scoreboard players set @s switch.trigger.shop 0
scoreboard players set @s switch.trigger.tutorial 0
scoreboard players set @s switch.trigger.succes 0
scoreboard players set @s switch.trigger.rating 0
scoreboard players set @s switch.trigger.night_vision 0
scoreboard players set @s switch.trigger.music 0
scoreboard players set @s switch.trigger.coupdetat 0
""")

	# /trigger/stats/display_loop
	write_function(f"{path}/trigger/stats/display_loop", """
# Display
function switch:player/translations/trigger_stats_display_loop with storage switch:temp sorted_stats[0]

# Continue loop
data remove storage switch:temp sorted_stats[0]
execute if data storage switch:temp sorted_stats[0] run function switch:player/trigger/stats/display_loop
""")

	# /trigger/stats/entry
	write_function(f"{path}/trigger/stats/entry", """
data modify storage switch:main input set value {player:"@s"}
function switch:player/trigger/stats/main with storage switch:main input
""")

	# /trigger/stats/get_loop
	write_function(f"{path}/trigger/stats/get_loop", """
# Prepare compound
$data modify storage switch:main temp set value {name_fr:"$(name_fr)", name_en:"$(name_en)", count:0, wins:0, winrate:0}
$execute store result storage switch:main temp.count int 1 run scoreboard players get $(player) switch.stats.played.$(id)
$execute store result storage switch:main temp.wins int 1 run scoreboard players get $(player) switch.stats.wins.$(id)
execute store result score #winrate switch.data run data get storage switch:main temp.wins 100
$scoreboard players operation #winrate switch.data /= $(player) switch.stats.played.$(id)
execute store result storage switch:main temp.winrate int 1 run scoreboard players get #winrate switch.data
data modify storage switch:main stats append from storage switch:main temp

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_loop with storage switch:main copy[0]
""")

	# /trigger/stats/get_max_loop
	write_function(f"{path}/trigger/stats/get_max_loop", """
# Get max
execute store result score #temp switch.data run data get storage switch:main copy[0].count
execute if score #temp switch.data > #max switch.data run data modify storage switch:main max set from storage switch:main copy[0]
execute if score #temp switch.data > #max switch.data run scoreboard players operation #max switch.data = #temp switch.data

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_max_loop
""")

	# /trigger/stats/main
	write_function(f"{path}/trigger/stats/main", """
# Bases
function switch:player/translations/trigger_stats_main with storage switch:main input

# Prepare a compound list containing the number of games played and the name for each game
data modify storage switch:main stats set value []
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_loop with storage switch:main copy[0]

# Sort the list by number of games played (descending)
data modify storage switch:temp sorted_stats set value []
execute if data storage switch:main stats[0] run function switch:player/trigger/stats/sort_loop

# Display the list
execute if data storage switch:temp sorted_stats[0] run function switch:player/trigger/stats/display_loop

# Total victories (all games)
$scoreboard players add $(player) switch.stats.wins 0

# Reset trigger
scoreboard players set @s switch.trigger.stats 0
data remove storage switch:main input
""")

	# /trigger/stats/remove_max
	write_function(f"{path}/trigger/stats/remove_max", """
$data remove storage switch:main stats[{name_fr:"$(name_fr)"}]
""")

	# /trigger/stats/sort_loop
	write_function(f"{path}/trigger/stats/sort_loop", """
# Search for the highest value
data modify storage switch:main copy set from storage switch:main stats
data modify storage switch:main max set from storage switch:main copy[0]
execute store result score #max switch.data run data get storage switch:main max.count
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run function switch:player/trigger/stats/get_max_loop

# Remove the highest value from the stats list and add it to the sorted list
data modify storage switch:temp sorted_stats append from storage switch:main max
function switch:player/trigger/stats/remove_max with storage switch:main max

# Continue loop
execute if data storage switch:main stats[0] run function switch:player/trigger/stats/sort_loop
""")

	# /trigger/succes/display_loop
	write_function(f"{path}/trigger/succes/display_loop", """
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
function switch:player/translations/trigger_succes_display_loop with storage switch:temp temp

# Continue loop
data remove storage switch:temp copy[0]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value $(player)
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
""")

	# /trigger/succes/display_loop_2
	write_function(f"{path}/trigger/succes/display_loop_2", """
# Tellraw
data modify storage switch:temp temp set from storage switch:temp copy[0]
function switch:player/translations/trigger_succes_display_loop_2 with storage switch:temp temp

# Continue loop
data remove storage switch:temp copy[0]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value $(player)
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
""")

	# /trigger/succes/entry
	write_function(f"{path}/trigger/succes/entry", """
scoreboard players set @s switch.trigger.succes 0

setblock 0 13 0 air
setblock 0 13 0 yellow_shulker_box
loot insert 0 13 0 loot switch:get_username
data modify storage switch:main input set value {player:"@s"}
data modify storage switch:main input.player set from block 0 13 0 Items[0].components."minecraft:profile".name
setblock 0 13 0 air

function switch:player/trigger/succes/main with storage switch:main input
""")

	# /trigger/succes/main
	write_function(f"{path}/trigger/succes/main", """
## File attribut: Ignore translations

## For each of the advancements, print it in order : [done:{green,yellow,red},not done:{green,yellow,red}]
function switch:player/translations/trigger_succes_main with storage switch:main input

# Done advancements
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"blue"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"green"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"yellow"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"red"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop with storage switch:temp copy[0]

# Not done yet
tellraw @s ""
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"blue"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"green"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"yellow"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
data modify storage switch:temp copy set value []
data modify storage switch:temp copy append from storage switch:advancements all[{color:"red"}]
$execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0].player set value "$(player)"
execute if data storage switch:temp copy[0] run function switch:player/trigger/succes/display_loop_2 with storage switch:temp copy[0]
""")

	# /tutorial/finish
	write_function(f"{path}/tutorial/finish", """
team leave @s
scoreboard players reset @s switch.tutorial
advancement grant @s only switch:tutorial
execute in minecraft:overworld run tp @s 0 69.69 0
clear @s

function switch:stats/util_update_player
""")

	# /tutorial/next_dialogue
	write_function(f"{path}/tutorial/next_dialogue", """
scoreboard players add @s[team=switch.tutorial] switch.tutorial 1
execute if score @s switch.tutorial matches ..6 run playsound ui.button.click ambient @s
execute if score @s switch.tutorial matches ..6 run function switch:player/tutorial/second
scoreboard players set @s switch.trigger.tutorial 0
""")

	# /tutorial/second
	write_function(f"{path}/tutorial/second", r"""
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
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp cutted_username set string entity @s equipment.head.components."minecraft:profile".name 0 4
execute if score @s switch.tutorial matches 0 run data modify storage switch:temp username set from entity @s equipment.head.components."minecraft:profile".name
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data = @s switch.id
execute if score @s switch.tutorial matches 0 run scoreboard players operation #dialog_type switch.data %= #6 switch.data

# Second dialog
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_1 switch.data 2
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_2 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_3 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_4 switch.data 0
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_5 switch.data 9
execute if score @s switch.tutorial matches 2 run scoreboard players set #vote_game_6 switch.data 1
execute if score @s switch.tutorial matches 2 run scoreboard players set #for_tutorial switch.data 1
execute if score @s switch.tutorial matches 2 run function switch:engine/voting_time/message

# Third dialog
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -500 69.1 -497 0.1 0 1.5 0 150 force @s
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -500 69.6 -496 0.1 0 0.35 0 35 force @s
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -500 70.1 -491 0.1 0 2 0 200 force @s
execute if score @s switch.tutorial matches 3 run particle dust{color:[0.0,1.0,0.0],scale:1.0} -502 70.1 -487 1 0 0.1 0 100 force @s

# Fourth dialog
execute if score @s switch.tutorial matches 4 run tellraw @s "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"
execute if score @s switch.tutorial matches 4 run function switch:shop/initialize_shop_scores
execute if score @s switch.tutorial matches 4 run function switch:shop/pitchout

# Sixth dialog
execute if score @s switch.tutorial matches 6 run scoreboard players set @s switch.trigger.help 1
execute if score @s switch.tutorial matches 6 run function switch:player/trigger/help/main

# Go next dialog
function switch:player/translations/tutorial_second
""")

	# /tutorial/start
	write_function(f"{path}/tutorial/start", """
# Detach, join tutorial team, and set up tutorial score
tag @s add detached
team join switch.tutorial @s
scoreboard players set @s switch.tutorial 0
execute unless score @s switch.stats.wins matches 1.. run scoreboard players set @s switch.stats.wins 0
execute unless score @s switch.money matches 100.. run scoreboard players set @s switch.money 100
function switch:player/trigger/reset

# Teleport & Get username
execute in minecraft:overworld run tp @s -500 69.69 -500 0 0
gamemode adventure @s
clear @s
loot replace entity @s armor.head loot switch:get_username
execute at @s run playsound ui.toast.challenge_complete ambient @s

advancement revoke @s only switch:tutorial

# Empty title (fix for LunarClient first title not showing up)
title @s title ""
title @s subtitle ""
""")

	# /update_stats_storage/every_player
	write_function(f"{path}/update_stats_storage/every_player", """
# Get all players and loop
data modify storage switch:temp players set from storage switch:main UUIDs
function switch:player/update_stats_storage/every_player_loop with storage switch:temp players[0]
""")

	# /update_stats_storage/every_player_loop
	write_function(f"{path}/update_stats_storage/every_player_loop", """
$function switch:player/update_stats_storage/of_player {player:"$(username)"}

# Continue loop
data remove storage switch:temp players[0]
function switch:player/update_stats_storage/every_player_loop with storage switch:temp players[0]
""")

	# /update_stats_storage/global_stats
	write_function(f"{path}/update_stats_storage/global_stats", """
## storage switch:stats all run data modify storage switch:stats all set value {
# player:{
# 	total_played:[{name:"Stoupy51",value:0}],
# 	total_wins:[{name:"Stoupy51",value:0}],
# 	total_kills:[{name:"Stoupy51",value:0}],
# 	total_deaths:[{name:"Stoupy51",value:0}],
# 	total_money:[{name:"Stoupy51",value:0}],
# 	played_win_ratio:[{name:"Stoupy51",value:0}],
# 	advancement_count:[{name:"Stoupy51",value:0}],
# },
# modes:{
#	pitch_creep:{total_games:0,played:[],wins:[],played_win_ratio:[]},
# }}

# Initialize to zero if not already set
$scoreboard players add $(player) switch.stats.played 0
$scoreboard players add $(player) switch.stats.wins 0
$scoreboard players add $(player) switch.stats.winrate 0
$scoreboard players add $(player) switch.stats.kills 0
$scoreboard players add $(player) switch.stats.deaths 0
$scoreboard players add $(player) switch.money 0
$scoreboard players add $(player) switch.advancements 0

# Update global total stats
$execute unless data storage switch:stats all.player.total_played[{name:"$(player)"}] run data modify storage switch:stats all.player.total_played append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_played[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.played
$execute unless data storage switch:stats all.player.total_wins[{name:"$(player)"}] run data modify storage switch:stats all.player.total_wins append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_wins[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.wins
$execute unless data storage switch:stats all.player.total_kills[{name:"$(player)"}] run data modify storage switch:stats all.player.total_kills append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_kills[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.kills
$execute unless data storage switch:stats all.player.total_deaths[{name:"$(player)"}] run data modify storage switch:stats all.player.total_deaths append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_deaths[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.deaths
$execute unless data storage switch:stats all.player.total_money[{name:"$(player)"}] run data modify storage switch:stats all.player.total_money append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.total_money[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.money

## Winrate
# Compute winrate and store it globally only if the player has at least 25 wins
$execute unless data storage switch:stats all.player.played_win_ratio[{name:"$(player)"}] run data modify storage switch:stats all.player.played_win_ratio append value {name:"$(player)",value:0}
$scoreboard players operation #temp switch.data = $(player) switch.stats.wins
scoreboard players operation #temp switch.data *= #100000 switch.data
$scoreboard players operation #temp switch.data /= $(player) switch.stats.played
$execute if score $(player) switch.stats.wins matches 25.. store result storage switch:stats all.player.played_win_ratio[{name:"$(player)"}].value float 0.001 run scoreboard players get #temp switch.data
$execute unless score $(player) switch.stats.wins matches 25.. run data modify storage switch:stats all.player.played_win_ratio[{name:"$(player)"}].value set value 0.0f

# Store winrate in the player's stats anyway (no digits, e.g. 35.15% -> 35%)
#$tellraw @a [{"text":"$(player)","color":"gold"},{"text":" has a winrate of ","color":"gray"},{"score":{"name":"#temp","objective":"switch.data"},"color":"gold"},{"text":"%","color":"gray"}]
$scoreboard players operation $(player) switch.stats.winrate = #temp switch.data
$scoreboard players operation $(player) switch.stats.winrate /= #1000 switch.data

# Update advancements count
$execute unless data storage switch:stats all.player.advancement_count[{name:"$(player)"}] run data modify storage switch:stats all.player.advancement_count append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.player.advancement_count[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.advancements
""")

	# /update_stats_storage/main
	write_function(f"{path}/update_stats_storage/main", """
# Get username
setblock 0 14 0 air
setblock 0 14 0 yellow_shulker_box
loot insert 0 14 0 loot switch:get_username
data modify storage switch:main input set value {player:""}
data modify storage switch:main input.player set from block 0 14 0 Items[0].components."minecraft:profile".name
setblock 0 14 0 air

# Insert global stats
function switch:player/update_stats_storage/global_stats with storage switch:main input

# Insert stats per game
data modify storage switch:main copy set from storage switch:main minigames
execute store result score #total_games_not_won switch.data if data storage switch:main minigames[]
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/update_stats_storage/stats_per_minigame with storage switch:main copy[0]

# Advancement "Multigamer"
execute unless score #test_mode switch.data matches 1 if score #total_games_not_won switch.data matches 0 run advancement grant @s only switch:visible/60
""")

	# /update_stats_storage/of_player
	write_function(f"{path}/update_stats_storage/of_player", """
# Get username
$data modify storage switch:main input set value {player:"$(player)"}

# Insert global stats
function switch:player/update_stats_storage/global_stats with storage switch:main input

# Insert stats per game
data modify storage switch:main copy set from storage switch:main minigames
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/update_stats_storage/stats_per_minigame with storage switch:main copy[0]
""")

	# /update_stats_storage/stats_per_minigame
	write_function(f"{path}/update_stats_storage/stats_per_minigame", """
## storage switch:stats all run data modify storage switch:stats all set value {
# player:{
# 	total_played:[{name:"Stoupy51",value:0}],
# 	total_wins:[{name:"Stoupy51",value:0}],
# 	total_kills:[{name:"Stoupy51",value:0}],
# 	total_deaths:[{name:"Stoupy51",value:0}],
# 	total_money:[{name:"Stoupy51",value:0}],
# 	played_win_ratio:[{name:"Stoupy51",value:0}],
# 	advancement_count:[{name:"Stoupy51",value:0}],
# },
# modes:{
#	pitch_creep:{total_games:0,played:[],wins:[],played_win_ratio:[]},
# }}

# Set number of games played and wins
$execute unless data storage switch:stats all.modes.$(id).played[{name:"$(player)"}] run data modify storage switch:stats all.modes.$(id).played append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.modes.$(id).played[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.played.$(id)
$execute unless data storage switch:stats all.modes.$(id).wins[{name:"$(player)"}] run data modify storage switch:stats all.modes.$(id).wins append value {name:"$(player)",value:0}
$execute store result storage switch:stats all.modes.$(id).wins[{name:"$(player)"}].value int 1 run scoreboard players get $(player) switch.stats.wins.$(id)
$execute unless data storage switch:stats all.modes.$(id).played_win_ratio[{name:"$(player)"}] run data modify storage switch:stats all.modes.$(id).played_win_ratio append value {name:"$(player)",value:0}
$scoreboard players operation #temp switch.data = $(player) switch.stats.wins.$(id)
scoreboard players operation #temp switch.data *= #100000 switch.data
$scoreboard players operation #temp switch.data /= $(player) switch.stats.played.$(id)
$execute unless score $(player) switch.stats.played.$(id) matches 5.. run scoreboard players set #temp switch.data 0
$execute store result storage switch:stats all.modes.$(id).played_win_ratio[{name:"$(player)"}].value float 0.001 run scoreboard players get #temp switch.data

# Advancement
$execute if score $(player) switch.stats.wins.$(id) matches 1.. run scoreboard players remove #total_games_not_won switch.data 1

# Continue loop
data remove storage switch:main copy[0]
execute if data storage switch:main copy[0] run data modify storage switch:main copy[0].player set from storage switch:main input.player
execute if data storage switch:main copy[0] run function switch:player/update_stats_storage/stats_per_minigame with storage switch:main copy[0]
""")

	# /username_change/check
	write_function(f"{path}/username_change/check", """
# Get username and UUID
setblock 0 15 0 air
setblock 0 15 0 yellow_shulker_box
loot insert 0 15 0 loot switch:get_username
data modify storage switch:temp input set value {username:"",UUID:[]}
data modify storage switch:temp input.username set from block 0 15 0 Items[0].components."minecraft:profile".name
data modify storage switch:temp input.UUID set from entity @s UUID
setblock 0 15 0 air

# Macro with UUID and username
function switch:player/username_change/with_macro with storage switch:temp input
""")

	# /username_change/compare_usernames
	write_function(f"{path}/username_change/compare_usernames", """
$data modify storage switch:temp old_username set from storage switch:main UUIDs[{UUID:"$(UUID)"}].username
$data modify storage switch:temp copy set value "$(username)"

# Lowercase both usernames for case-insensitive comparison
data modify storage bs:in string.lower.str set from storage switch:temp old_username
function #bs.string:lower
data modify storage switch:temp old_username_lower set from storage bs:out string.lower

data modify storage bs:in string.lower.str set from storage switch:temp copy
function #bs.string:lower
data modify storage switch:temp copy_lower set from storage bs:out string.lower

# Check if there is a difference
scoreboard players set #diff switch.data 1
scoreboard players set #lower_diff switch.data 1
execute store success score #diff switch.data run data modify storage switch:temp copy set from storage switch:temp old_username
execute store success score #lower_diff switch.data run data modify storage switch:temp copy_lower set from storage switch:temp old_username_lower

# If there is no difference in lowercase but there is a difference in default case, kick the player since it would break the = operator
$execute if score #lower_diff switch.data matches 0 if score #diff switch.data matches 1 run function switch:player/username_change/kick_player {username:"$(username)"}

# If there is a difference, we have to update everything
data modify storage switch:temp input.old_username set from storage switch:temp old_username
execute if score #diff switch.data matches 1 run function switch:player/username_change/update_everything with storage switch:temp input
""")

	# /username_change/kick_player
	write_function(f"{path}/username_change/kick_player", """
$kick $(username) "Ratio"
""")

	# /username_change/update_advancements_loop
	write_function(f"{path}/username_change/update_advancements_loop", """
# Update username
$data remove storage switch:advancements all[{name:"$(name)"}].players[{name:"$(username)"}]
$execute if data storage switch:advancements all[{name:"$(name)"}].players[{name:"$(old_username)"}] run data modify storage switch:advancements all[{name:"$(name)"}].players[{name:"$(old_username)"}].name set value "$(username)"

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_advancements_loop with storage switch:temp copy[0]
""")

	# /username_change/update_everything
	write_function(f"{path}/username_change/update_everything", """
# Basic objectives
$scoreboard players operation $(username) switch.id = $(old_username) switch.id
$scoreboard players operation $(username) switch.tutorial = $(old_username) switch.tutorial
$scoreboard players operation $(username) switch.money = $(old_username) switch.money
$scoreboard players operation $(username) switch.money_bonus = $(old_username) switch.money_bonus
$scoreboard players operation $(username) switch.last_total_games = $(old_username) switch.last_total_games
$scoreboard players operation $(username) switch.reconnect = $(old_username) switch.reconnect
$scoreboard players operation $(username) switch.advancements = $(old_username) switch.advancements
$scoreboard players operation $(username) switch.play_time = $(old_username) switch.play_time
$scoreboard players operation $(username) switch.last_death = $(old_username) switch.last_death
$scoreboard players operation $(username) switch.stats.kills = $(old_username) switch.stats.kills
$scoreboard players operation $(username) switch.stats.deaths = $(old_username) switch.stats.deaths
$scoreboard players operation $(username) switch.stats.played = $(old_username) switch.stats.played
$scoreboard players operation $(username) switch.stats.wins = $(old_username) switch.stats.wins
$scoreboard players operation $(username) switch.stats.win_streak = $(old_username) switch.stats.win_streak

# Stats {player:{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{}}
data modify storage switch:temp copy set from storage switch:main minigames
data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_stats_loop with storage switch:temp copy[0]
$data modify storage switch:stats all.player.total_played[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_wins[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_kills[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_deaths[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.total_money[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.played_win_ratio[{name:"$(old_username)"}].name set value "$(username)"
$data modify storage switch:stats all.player.advancement_count[{name:"$(old_username)"}].name set value "$(username)"

# Advancements
data modify storage switch:temp copy set from storage switch:advancements all
data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_advancements_loop with storage switch:temp copy[0]

# Ratings
data modify storage switch:temp copy set from storage switch:ratings all
data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_ratings_loop with storage switch:temp copy[0]


# Shops
$function switch:player/username_change/update_shops {username:"$(username)", old_username:"$(old_username)"}
""")

	# /username_change/update_ratings_loop
	write_function(f"{path}/username_change/update_ratings_loop", """
# Update username
$data remove storage switch:ratings all[{id:"$(id)"}].players[{name:"$(username)"}]
$execute if data storage switch:ratings all[{id:"$(id)"}].players[{name:"$(old_username)"}] run data modify storage switch:ratings all[{id:"$(id)"}].players[{name:"$(old_username)"}].name set value "$(username)"

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_ratings_loop with storage switch:temp copy[0]
""")

	# /username_change/update_stats_loop
	write_function(f"{path}/username_change/update_stats_loop", """
# Update username
$data remove storage switch:stats all.modes.$(id).played[{name:"$(username)"}]
$data remove storage switch:stats all.modes.$(id).wins[{name:"$(username)"}]
$execute if data storage switch:stats all.modes.$(id).played[{name:"$(old_username)"}] run data modify storage switch:stats all.modes.$(id).played[{name:"$(old_username)"}].name set value "$(username)"
$execute if data storage switch:stats all.modes.$(id).wins[{name:"$(old_username)"}] run data modify storage switch:stats all.modes.$(id).wins[{name:"$(old_username)"}].name set value "$(username)"
$scoreboard players operation $(username) switch.stats.played.$(id) = $(old_username) switch.stats.played.$(id)
$scoreboard players operation $(username) switch.stats.wins.$(id) = $(old_username) switch.stats.wins.$(id)

# Continue loop
data remove storage switch:temp copy[0]
execute if data storage switch:temp copy[0] run data modify storage switch:temp copy[0] merge from storage switch:temp input
execute if data storage switch:temp copy[0] run function switch:player/username_change/update_stats_loop with storage switch:temp copy[0]
""")

	# /username_change/with_macro
	write_function(f"{path}/username_change/with_macro", """
# Compare usernames
$execute if data storage switch:main UUIDs[{UUID:"$(UUID)"}] run function switch:player/username_change/compare_usernames {UUID:"$(UUID)",username:"$(username)"}

# Add/update player to list in every case
$data modify storage switch:main UUIDs[{UUID:"$(UUID)"}].username set value "$(username)"
""")
