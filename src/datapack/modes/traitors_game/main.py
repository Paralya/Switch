
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "traitors_game"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# Non-standard call: inventory_changed
	write_function(f"{path}/calls/inventory_changed", """
tag @s add switch.temp.inventory_changed
""")

	# Non-standard call: killed_ninja
	write_function(f"{path}/calls/killed_ninja", """
advancement revoke @s only switch:traitors_game/killed_ninja
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"traitors_game"} run scoreboard players add @s switch.temp.killed_ninja 1
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"traitors_game"} if score @s switch.temp.killed_ninja matches 2 run advancement grant @s only switch:visible/32
""")

	# Non-standard call: ninja_revenge
	write_function(f"{path}/calls/ninja_revenge", """
advancement revoke @s only switch:traitors_game/ninja_revenge
execute unless score #test_mode switch.data matches 1 if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"traitors_game"} if score @s switch.temp.role matches 3..4 run advancement grant @s only switch:visible/41
""")


	# /announce_scenarios (translation ref rewritten)
	write_function(f"{path}/announce_scenarios", """
function switch:modes/traitors_game/translations/announce_scenarios
execute if score #sc_silencieux switch.data matches 1 run scoreboard objectives modify switch.temp.sidebar displayname {"text":"Rôles de départ","color":"gold"}
""")

	# /death/detect
	write_function(f"{path}/death/detect", """
# Detect if linked player is missing
scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.id = @s switch.id
execute store success score #success switch.data run tag @a[scores={switch.alive=1..},predicate=switch:has_same_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 run tp @s @p[tag=switch.temp]
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory set from entity @p[tag=switch.temp] Inventory
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp equipment set from entity @p[tag=switch.temp] equipment
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.head
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.chest
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.legs
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.feet
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.offhand
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory set from storage switch:temp Inventory
execute if score #success switch.data matches 1 run tag @p[tag=switch.temp,tag=switch.temp.inventory_changed] remove switch.temp.inventory_changed

tag @a remove switch.temp
""")

	# /death/for_detective (translation ref rewritten)
	write_function(f"{path}/death/for_detective", """
scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 if predicate switch:chance/0.5 run scoreboard players set #success switch.data 2

function switch:modes/traitors_game/translations/death_for_detective
""")

	# /death/for_global (translation ref rewritten)
	write_function(f"{path}/death/for_global", """
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]
execute at @s run function switch:modes/_common/death/inventory_drop

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2

execute if score #sc_silencieux switch.data matches 1 if predicate switch:chance/0.33 run scoreboard players set @s switch.temp.role 0

# Add stolen message
data modify storage switch:temp stolen set value ""
execute if entity @s[tag=switch.floupy] run data modify storage switch:temp stolen set value " (flouped)"

# Add solitaire message
data modify storage switch:temp solitaireFR set value ""
data modify storage switch:temp solitaireEN set value ""
execute if entity @s[tag=switch.solitaire] run data modify storage switch:temp solitaireFR set value " (solitaire)"
execute if entity @s[tag=switch.solitaire] run data modify storage switch:temp solitaireEN set value " (solitary)"

function switch:modes/traitors_game/translations/death_for_global

kill @s
execute unless score #sc_silencieux switch.data matches 1 run function switch:modes/traitors_game/update_sidebar
""")

	# /death/player (translation ref rewritten)
	write_function(f"{path}/death/player", """
# Voleur (Floupy role = 7)
execute if entity @a[tag=!detached,scores={switch.temp.kills=-1..,switch.temp.role=7}] run function switch:modes/traitors_game/roles/vol

# Death management
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.temp.role matches 3 run scoreboard players set @s switch.alive 0
execute if score @s switch.temp.role matches 3 run scoreboard players set @s switch.temp.role 4
attribute @s[scores={switch.alive=0}] max_health base reset
tag @s[scores={switch.alive=0}] add switch.to_tp
gamemode spectator @s[scores={switch.alive=0}]
effect clear @s[scores={switch.alive=0}]


# Second life management for Ninja role
function switch:modes/traitors_game/translations/death_player
attribute @s[scores={switch.alive=1..,switch.temp.role=4}] max_health base set 10.0
attribute @s[scores={switch.alive=1..,switch.temp.role=4}] movement_speed base set 0.115
tag @s[scores={switch.alive=1..,switch.temp.role=4}] add switch.ninja_death
""")

	# /death/process
	write_function(f"{path}/death/process", """
scoreboard players add @s switch.temp.cooldown 1

execute if score @s switch.temp.cooldown matches 1 run function switch:modes/traitors_game/death/for_detective
execute if score @s switch.temp.cooldown matches 160 run function switch:modes/traitors_game/death/for_global
""")

	# /death/to_tp
	write_function(f"{path}/death/to_tp", """
function switch:maps/spread_one_player
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove switch.ninja_death
""")

	# /detect_end (translation ref rewritten)
	write_function(f"{path}/detect_end", """
scoreboard players set #game_state switch.data 0
# Role reminder (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=..4}] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=5}] run scoreboard players add #game_state switch.data 2
execute if entity @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] run scoreboard players add #game_state switch.data 4

# Details with scenarios
execute if score #sc_solitaire switch.data matches 1 if entity @a[tag=switch.solitaire,scores={switch.alive=1..}] run scoreboard players set #game_state switch.data 8
execute if score #sc_solitaire switch.data matches 1 if score #game_state switch.data matches 8 unless entity @a[tag=!switch.solitaire,scores={switch.alive=1..}] run scoreboard players set #game_state switch.data 9
execute if score #sc_floupy switch.data matches 1 if entity @a[scores={switch.alive=1..,switch.temp.role=7}] run scoreboard players set #game_state switch.data 10

# 1 = que des innocents
# 2 = que des traitres normaux
# 3 = Innocents et traitres
# 4 = que le gros traitre
# 5 = gros traitre + innocent
# 6 = gros traitre + traitres normaux
# 7 = encore tous les camps
# 8 = solitaire et autre restant
# 9 = solitaire seulement
# 10 = floupy (non volé) et autre restant

# Cas de fin de partie
execute if score #game_state switch.data matches 1 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 2 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 4 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #game_state switch.data matches 9 run scoreboard players set #traitors_game_seconds switch.data 100000
execute if score #traitors_game_seconds switch.data matches 100000 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/for_global

# Cas des vainqueurs
execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=..4}] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=5},tag=!switch.traitors_game.big_traitor] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 9 as @a[tag=!detached,scores={switch.alive=1..},tag=switch.solitaire] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.alive=1..,switch.temp.role=6}] only switch:visible/5
execute if score #traitors_game_seconds switch.data matches 1200 if score #game_state switch.data matches 1 as @a[scores={switch.alive=1..,switch.temp.role=..4}] at @s run function switch:engine/add_win

# Cas des égalités
function switch:modes/traitors_game/translations/detect_end


# Visuel de fin de partie
execute if score #traitors_game_seconds switch.data matches 1200.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /give_items
	write_function(f"{path}/give_items", """
function switch:utils/reset_attributes
attribute @s attack_speed base set 1024

scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.head with iron_helmet[enchantments={protection:2}]
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:2}]
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.head with diamond_helmet
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:1}]
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2}]
execute if score #sword switch.data matches 1 run item replace entity @s hotbar.0 with diamond_sword[enchantments={sharpness:1}]
execute if score #sword switch.data matches 0 run item replace entity @s hotbar.0 with iron_sword[enchantments={sharpness:2}]
item replace entity @s hotbar.1 with bow[enchantments={power:1}]
item replace entity @s hotbar.3 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s hotbar.4 with apple 16
item replace entity @s hotbar.8 with golden_apple 6
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
loot give @s loot switch:traitors_game/all_starter
give @s oak_planks 100
give @s anvil

# Random items (0 or 1 or 2)
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items
""")

	# /joined
	write_function(f"{path}/joined", """
# Ici : dans tous les cas, tuer la personne qui join (+ exception pour le ninja)
execute if score @s switch.temp.role matches 3 run scoreboard players set @s switch.temp.role 4
function switch:modes/traitors_game/death/player

# If new player, make sure to remove all tags
tag @s remove switch.solitaire
tag @s remove switch.floupy
""")

	# /process_end
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 run scoreboard objectives remove switch.temp.role
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/traitors_game/death/player
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /random_items (translation ref rewritten)
	write_function(f"{path}/random_items", """
function switch:modes/traitors_game/translations/random_items

execute store result score #random switch.data run random value 0..46
execute if score #random switch.data matches 0 run give @s iron_ore 32
execute if score #random switch.data matches 1 run give @s gold_ore 32
execute if score #random switch.data matches 2 run give @s diamond_ore 3
execute if score #random switch.data matches 3 run give @s spyglass
execute if score #random switch.data matches 4 run give @s ender_pearl
execute if score #random switch.data matches 5 run give @s ender_pearl
execute if score #random switch.data matches 6 run give @s netherite_shovel[enchantments={efficiency:10},item_name={"text":"Teuse","color":"gold"},lore=[{"text":"C'est la pelle Teuse MDR !","color":"white","italic":false}]]
execute if score #random switch.data matches 7 run give @s golden_sword[damage=30,enchantments={knockback:10},item_name={"text":"Baseball Bat","color":"gold"},lore=[{"text":"Excitant n'est-ce pas ?","color":"white","italic":false}]]
execute if score #random switch.data matches 8 run give @s lava_bucket 2
execute if score #random switch.data matches 9 run give @s golden_apple 4
execute if score #random switch.data matches 10 run give @s golden_apple 2
execute if score #random switch.data matches 11 run give @s arrow 12
execute if score #random switch.data matches 12 run give @s arrow 20
execute if score #random switch.data matches 13 run give @s diamond 5
execute if score #random switch.data matches 14 run give @s trident
execute if score #random switch.data matches 15 run give @s creeper_spawn_egg 2
execute if score #random switch.data matches 16 run give @s polar_bear_spawn_egg 2
execute if score #random switch.data matches 17 run give @s zoglin_spawn_egg 2
execute if score #random switch.data matches 18 run give @s fox_spawn_egg 8
execute if score #random switch.data matches 19 run give @s frog_spawn_egg 8
execute if score #random switch.data matches 20 run give @s pufferfish_spawn_egg[item_name={"text":"Bubulle","color":"yellow"}] 8
execute if score #random switch.data matches 21 run give @s elytra[damage=415]
execute if score #random switch.data matches 22 run give @s spectral_arrow 32
execute if score #random switch.data matches 23 run give @s splash_potion[potion_contents="minecraft:long_slow_falling"]
execute if score #random switch.data matches 24 run give @s splash_potion[potion_contents="minecraft:strong_swiftness"]
execute if score #random switch.data matches 25 run give @s splash_potion[potion_contents="minecraft:strong_healing"]
execute if score #random switch.data matches 26 run give @s splash_potion[potion_contents="minecraft:strong_leaping"]
execute if score #random switch.data matches 27 run give @s enchanted_book[stored_enchantments={unbreaking:3}]
execute if score #random switch.data matches 28 run give @s enchanted_book[stored_enchantments={efficiency:5}]
execute if score #random switch.data matches 29 run give @s enchanted_book[stored_enchantments={protection:1}] 2
execute if score #random switch.data matches 30 run give @s enchanted_book[stored_enchantments={projectile_protection:2}]
execute if score #random switch.data matches 31 run give @s enchanted_book[stored_enchantments={blast_protection:2}]
execute if score #random switch.data matches 32 run give @s enchanted_book[stored_enchantments={fire_protection:2}]
execute if score #random switch.data matches 33 run give @s enchanted_book[stored_enchantments={thorns:1}]
execute if score #random switch.data matches 34 run give @s enchanted_book[stored_enchantments={depth_strider:3}]
execute if score #random switch.data matches 35 run give @s enchanted_book[stored_enchantments={feather_falling:4}]
execute if score #random switch.data matches 36 run give @s enchanted_book[stored_enchantments={sharpness:2}]
execute if score #random switch.data matches 37 run give @s enchanted_book[stored_enchantments={fire_aspect:1}]
execute if score #random switch.data matches 38 run give @s enchanted_book[stored_enchantments={knockback:2}]
execute if score #random switch.data matches 39 run give @s enchanted_book[stored_enchantments={fortune:3}]
execute if score #random switch.data matches 40 run give @s enchanted_book[stored_enchantments={power:2}]
execute if score #random switch.data matches 41 run give @s enchanted_book[stored_enchantments={flame:1}]
execute if score #random switch.data matches 42 run give @s enchanted_book[stored_enchantments={infinity:1}]
execute if score #random switch.data matches 43 run give @s enchanted_book[stored_enchantments={punch:2}]
execute if score #random switch.data matches 44 run give @s enchanted_book[stored_enchantments={mending:10}] 4
execute if score #random switch.data matches 45 run give @s enchanted_book[stored_enchantments={vanishing_curse:10}] 4
execute if score #random switch.data matches 46 run loot give @s loot switch:traitors_game/bomber_man
""")

	# /roles/announcement (translation ref rewritten)
	write_function(f"{path}/roles/announcement", """
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

item replace entity @a[scores={switch.temp.role=5..6}] inventory.26 with potion[item_name={"text":"Potion de Traître","color":"white"},potion_contents={custom_color:7505152,custom_effects:[{id:"speed",amplifier:0b,duration:1200},{id:"strength",amplifier:0b,duration:200},{id:"instant_health",amplifier:0b,duration:20},{id:"resistance",amplifier:0b,duration:300}]}]

function switch:modes/traitors_game/translations/roles_announcement
""")

	# /roles/choose_solitaire (translation ref rewritten)
	write_function(f"{path}/roles/choose_solitaire", """
# Choose a solitaire alive
tag @r[tag=!detached,scores={switch.alive=1..,switch.temp.role=2..4}] add switch.solitaire

# Tellraw
function switch:modes/traitors_game/translations/roles_choose_solitaire
attribute @p[tag=switch.solitaire] max_health base set 24
""")

	# /roles/main
	write_function(f"{path}/roles/main", """
tag @s add switch.temp
tag @s remove switch.solitaire
tag @s remove switch.floupy

# Role selection (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
scoreboard players add #next_player_id switch.data 1
scoreboard players add #next_role switch.data 1
# Inspecteur
execute if score #next_role switch.data matches 1 run team join switch.temp.inspector @s
execute if score #next_role switch.data matches 1 run scoreboard players set @s switch.temp.role 1
execute if score #next_role switch.data matches 1 run attribute @s max_health base set 16
execute if score #next_role switch.data matches 1 run item replace entity @s hotbar.1 with bow[enchantments={power:2},attribute_modifiers=[{type:"movement_speed",slot:"mainhand",id:"switch.movement_speed",amount:0.16,operation:"add_multiplied_total"},{type:"movement_speed",slot:"offhand",id:"switch.movement_speed",amount:0.16,operation:"add_multiplied_total"}]]
# Traitre
execute if score #next_role switch.data matches 2 run scoreboard players set @s switch.temp.role 5
# Ninja
execute if score #next_role switch.data matches 3 run scoreboard players set @s switch.temp.role 3
execute if score #next_role switch.data matches 3 run attribute @s movement_speed base set 0.115
# Traitre
execute if score #next_role switch.data matches 4 run scoreboard players set @s switch.temp.role 5
# Innocents (but first is Floupy if scenario)
execute if score #next_role switch.data matches 5..6 run scoreboard players set @s switch.temp.role 2
execute if score #next_role switch.data matches 5 if score #sc_floupy switch.data matches 1 run function switch:modes/traitors_game/random_items
execute if score #next_role switch.data matches 5 if score #sc_floupy switch.data matches 1 run scoreboard players set @s switch.temp.role 7
execute if score #next_role switch.data matches 5 if score #sc_floupy switch.data matches 1 run tag @s add switch.floupy
# Gros Traitre
execute if score #next_role switch.data matches 7 run scoreboard players set @s switch.temp.role 6
execute if score #next_role switch.data matches 7 run attribute @s max_health base set 30
# Innocents
execute if score #next_role switch.data matches 8..9 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 10 run scoreboard players set @s switch.temp.role 5
# Innocent
execute if score #next_role switch.data matches 11 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 12 run scoreboard players set @s switch.temp.role 5
# Innocent
execute if score #next_role switch.data matches 13 run scoreboard players set @s switch.temp.role 2
# Traitre
execute if score #next_role switch.data matches 14 run scoreboard players set @s switch.temp.role 5

# Reroll at 7
execute if score #next_role switch.data matches 14 run scoreboard players set #next_role switch.data 7


## Linked marker for offline players
setblock 0 11 0 yellow_shulker_box
loot insert 0 11 0 loot switch:get_username
summon marker 0 11 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/traitors_game/roles/marker
setblock 0 11 0 air

tag @s remove switch.temp
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", """
scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 11 0 Items[0].components."minecraft:profile".name
data modify entity @s Tags set from entity @p[tag=switch.temp] Tags
scoreboard players operation @s switch.temp.role = @p[tag=switch.temp] switch.temp.role
tag @s add switch.temp.player
""")

	# /roles/vol (translation ref rewritten)
	write_function(f"{path}/roles/vol", """
# Tag the Floupy and copy new role
tag @p[tag=!detached,scores={switch.temp.kills=-1..,switch.temp.role=7}] add switch.temp.floupy
scoreboard players operation #role switch.data = @s switch.temp.role
scoreboard players operation #player_id switch.id = @p[tag=switch.temp.floupy] switch.id
scoreboard players operation @p[tag=switch.temp.floupy] switch.temp.role = #role switch.data
scoreboard players operation @e[type=marker,predicate=switch:has_same_id] switch.temp.role = #role switch.data

# Copy solitaire if any
execute if entity @s[tag=switch.solitaire] run tag @p[tag=switch.temp.floupy] add switch.solitaire
execute if entity @s[tag=switch.solitaire] run tag @e[type=marker,predicate=switch:has_same_id] add switch.solitaire

# Tellraws
function switch:modes/traitors_game/translations/roles_vol

# Effects
execute if score #role switch.data matches 1 run attribute @p[tag=switch.temp.floupy] max_health base set 16
execute if score #role switch.data matches 1 run team join switch.temp.inspector @p[tag=switch.temp.floupy]
execute if score #role switch.data matches 3..4 run attribute @p[tag=switch.temp.floupy] movement_speed base set 0.115
execute if score #role switch.data matches 7 run attribute @p[tag=switch.temp.floupy] max_health base set 30

# Remove tag
scoreboard players reset @a[tag=switch.temp.floupy] switch.temp.kills
tag @a[tag=switch.temp.floupy] remove switch.temp.floupy
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", """
scoreboard players add #traitors_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #traitors_game_seconds switch.data matches 0.. run function switch:modes/traitors_game/xp_bar
execute if score #traitors_game_seconds switch.data matches 0 run function switch:modes/traitors_game/roles/announcement
execute if score #traitors_game_seconds switch.data matches 5 if score #has_scenarios switch.data matches 1 run function switch:modes/traitors_game/announce_scenarios

# Lootboxes summon
execute if score #traitors_game_seconds switch.data matches 30 run function switch:modes/traitors_game/summon_lootboxes
execute if score #traitors_game_seconds switch.data matches 90 run function switch:modes/traitors_game/summon_lootboxes
execute if score #traitors_game_seconds switch.data matches 150 run function switch:modes/traitors_game/summon_lootboxes

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true
execute as @e[type=chest_minecart] if data entity @s Items[0] run data modify entity @s Glowing set value 0b
execute as @e[type=chest_minecart] run data modify entity @s Glowing set value 1b

# Innocent solitaire
execute if score #sc_solitaire switch.data matches 1 if score #traitors_game_seconds switch.data matches 90 run function switch:modes/traitors_game/roles/choose_solitaire

# Actionbar
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
function switch:modes/traitors_game/translations/second
""")

	# /start (brace-heavy + § chars: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"traitors_game", maps:["traitor_original","mushroom_plains","trials_run","hider_mansion","bancalvivor_s3","stardust_pvp_zone","la_fromagerie"]}

execute in switch:game run gamerule minecraft:mob_griefing true
execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function switch:modes/traitors_game/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 1210
scoreboard players set #traitors_game_seconds switch.data -15
scoreboard players set #traitors_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1

scoreboard objectives add switch.temp.role dummy
scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.sidebar dummy {"text":"Remaining Roles","color":"gold"}
scoreboard objectives add switch.temp.killed_ninja dummy
scoreboard objectives add switch.temp.kills playerKillCount
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.inspector {"text":"[Inspector]","color":"green"}
team modify switch.temp.inspector color green

team add switch.temp.sidebar.5 {"text":"[Sidebar 5]"}
team add switch.temp.sidebar.4 {"text":"[Sidebar 4]"}
team add switch.temp.sidebar.3 {"text":"[Sidebar 3]"}
team add switch.temp.sidebar.2 {"text":"[Sidebar 2]"}
team add switch.temp.sidebar.1 {"text":"[Sidebar 1]"}
team add switch.temp.sidebar.0 {"text":"[Sidebar 0]"}
team modify switch.temp.sidebar.5 suffix [{"text":"Inspector: ","color":"green"},{"text":"1","color":"yellow"}]
team modify switch.temp.sidebar.4 suffix [{"text":"Ninja: ","color":"green"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.3 suffix [{"text":"Innocent: ","color":"green"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 suffix [{"text":"Traitor: ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Big Traitor: ","color":"dark_red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.0 suffix [{"text":"Floupy: ","color":"gold"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.5 color green
team modify switch.temp.sidebar.4 color green
team modify switch.temp.sidebar.3 color green
team modify switch.temp.sidebar.2 color red
team modify switch.temp.sidebar.1 color dark_red
team modify switch.temp.sidebar.0 color gold
team join switch.temp.sidebar.5 §5
team join switch.temp.sidebar.4 §4
team join switch.temp.sidebar.3 §3
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
team join switch.temp.sidebar.0 §0
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §4 switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players set §0 switch.temp.sidebar 0
scoreboard players display numberformat §5 switch.temp.sidebar blank
scoreboard players display numberformat §4 switch.temp.sidebar blank
scoreboard players display numberformat §3 switch.temp.sidebar blank
scoreboard players display numberformat §2 switch.temp.sidebar blank
scoreboard players display numberformat §1 switch.temp.sidebar blank
scoreboard players display numberformat §0 switch.temp.sidebar blank

## Scenarios
# Get new players and players count
scoreboard players add @a[tag=!detached] switch.stats.played.traitors_game 0
execute store result score #starting_count switch.data if entity @a[tag=!detached]
execute store result score #new_players switch.data if entity @a[tag=!detached,scores={switch.stats.played.traitors_game=0}]
# Traitors, affichage des scénarios supplémentaires en début de partie :
# - Détraqué : Innocent solitaire (ça peut être le ninja) (role = 8)
# - Floupy : Voleur (annule la deuxième vie du ninja) (role = 7)
# - Silencieux : n'importe qui peut avoir (1st kill non affiché).
scoreboard players set #sc_solitaire switch.data 0
scoreboard players set #sc_floupy switch.data 0
scoreboard players set #sc_silencieux switch.data 0
execute unless score #new_players switch.data matches 3.. if score #starting_count switch.data matches 8.. if predicate switch:chance/0.5 run scoreboard players set #sc_solitaire switch.data 1
execute unless score #new_players switch.data matches 3.. if score #starting_count switch.data matches 8.. if predicate switch:chance/0.5 run scoreboard players set #sc_floupy switch.data 1
execute unless score #new_players switch.data matches 3.. if predicate switch:chance/0.5 run scoreboard players set #sc_silencieux switch.data 1
scoreboard players set #has_scenarios switch.data 1
execute if score #sc_solitaire switch.data matches 0 if score #sc_floupy switch.data matches 0 if score #sc_silencieux switch.data matches 0 run scoreboard players set #has_scenarios switch.data 0

# Choix des rôles
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
execute as @a[tag=!detached] at @s run function switch:modes/traitors_game/give_items
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/traitors_game/roles/main
function switch:modes/traitors_game/update_sidebar
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.inspector
team remove switch.temp.sidebar.5
team remove switch.temp.sidebar.4
team remove switch.temp.sidebar.3
team remove switch.temp.sidebar.2
team remove switch.temp.sidebar.1

scoreboard objectives remove switch.temp.role
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.sidebar
scoreboard objectives remove switch.temp.killed_ninja
scoreboard objectives remove switch.temp.kills

tag @a remove switch.solitaire
""")

	# /summon_lootboxes (translation ref rewritten)
	write_function(f"{path}/summon_lootboxes", """
# Get player count
execute store result score #count switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 6.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 10.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 14.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 18.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 22.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 26.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}
execute if score #count switch.data matches 30.. run summon chest_minecart ~ ~ ~ {LootTable:"switch:traitors_game/lootbox",Tags:["switch.new"]}

# Spreadplayers
execute as @e[type=chest_minecart,tag=switch.new] run function switch:maps/spread_one_player
tag @e[type=chest_minecart,tag=switch.new] remove switch.new

# Tellraw & playsound
function switch:modes/traitors_game/translations/summon_lootboxes
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
""")


	# /tick
	write_function(f"{path}/tick", """
scoreboard players add #traitors_game_ticks switch.data 1

tp @e[type=vex] 0 -10000 0
kill @e[type=item,nbt={Item:{id:"minecraft:chest_minecart"}}]
execute as @e[type=chest_minecart] unless data entity @s Items[0] unless data entity @s LootTable run kill @s
execute as @a[tag=!detached,tag=switch.to_tp] run function switch:modes/_common/teleport_to_death
execute as @a[tag=!detached,tag=switch.ninja_death] run function switch:modes/traitors_game/death/to_tp

# Glow particles pour le détective, particules rouges pour traitres (si >= 5 joueurs)
execute at @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=1}] run particle glow ~ ~ ~ 0.2 0 0.2 0 5
execute if score #starting_count switch.data matches 5.. at @a[tag=!detached,gamemode=!spectator,scores={switch.temp.role=5..6}] run particle dust{color:[1.0,0.0,0.0],scale:1.0} ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[scores={switch.temp.role=5..6}]

function switch:utils/on_death_run_function {function:"switch:modes/traitors_game/death/player"}
execute if score #traitors_game_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/traitors_game/death/detect
execute if score #traitors_game_seconds switch.data matches 1..1200 as @e[type=marker,tag=switch.player_dead] run function switch:modes/traitors_game/death/process

# Voleur
execute if score #sc_floupy switch.data matches 1 run scoreboard players reset @a[scores={switch.temp.kills=-1}] switch.temp.kills
execute if score #sc_floupy switch.data matches 1 run scoreboard players set @a[scores={switch.temp.kills=1..}] switch.temp.kills -1

# Détection de fin de partie
execute if score #traitors_game_seconds switch.data matches 1..1200 run function switch:modes/traitors_game/detect_end
execute if score #traitors_game_seconds switch.data matches 1201.. run function switch:modes/traitors_game/process_end
""")

	# /update_sidebar
	write_function(f"{path}/update_sidebar", """
data modify storage switch:main input set value {inspecteur:0,ninja:0,innocent:0,traitre:0,gros_traitre:0,floupy:0}
execute store result storage switch:main input.inspecteur int 1 if entity @e[type=marker,scores={switch.temp.role=1}]
execute store result storage switch:main input.ninja int 1 if entity @e[type=marker,scores={switch.temp.role=3..4}]
execute store result storage switch:main input.innocent int 1 if entity @e[type=marker,scores={switch.temp.role=2}]
execute store result storage switch:main input.traitre int 1 if entity @e[type=marker,scores={switch.temp.role=5}]
execute store result storage switch:main input.gros_traitre int 1 if entity @e[type=marker,scores={switch.temp.role=6}]
execute store result storage switch:main input.floupy int 1 if entity @e[type=marker,scores={switch.temp.role=7}]
execute if data storage switch:main input{inspecteur:0} run scoreboard players reset §5 switch.temp.sidebar
execute if data storage switch:main input{ninja:0} run scoreboard players reset §4 switch.temp.sidebar
execute if data storage switch:main input{innocent:0} run scoreboard players reset §3 switch.temp.sidebar
execute if data storage switch:main input{traitre:0} run scoreboard players reset §2 switch.temp.sidebar
execute if data storage switch:main input{gros_traitre:0} run scoreboard players reset §1 switch.temp.sidebar
execute if data storage switch:main input{floupy:0} run scoreboard players reset §0 switch.temp.sidebar

function switch:modes/traitors_game/update_sidebar_macro with storage switch:main input
""")

	# /update_sidebar_macro (macro function with $ lines)
	write_function(f"{path}/update_sidebar_macro", """
$team modify switch.temp.sidebar.5 suffix [{"text":"Inspector: ","color":"green"},{"text":"$(inspecteur)","color":"yellow"}]
$team modify switch.temp.sidebar.4 suffix [{"text":"Ninja: ","color":"green"},{"text":"$(ninja)","color":"yellow"}]
$team modify switch.temp.sidebar.3 suffix [{"text":"Innocent: ","color":"green"},{"text":"$(innocent)","color":"yellow"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Traitor: ","color":"red"},{"text":"$(traitre)","color":"yellow"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Big Traitor: ","color":"dark_red"},{"text":"$(gros_traitre)","color":"yellow"}]
$team modify switch.temp.sidebar.0 suffix [{"text":"Floupy: ","color":"gold"},{"text":"$(floupy)","color":"yellow"}]
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
