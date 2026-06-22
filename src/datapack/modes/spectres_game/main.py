
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "spectres_game"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# Non-standard call: inventory_changed
	write_function(f"{path}/calls/inventory_changed", """
tag @s add switch.temp.inventory_changed
""")


	# /absorption
	write_function(f"{path}/absorption", """
effect clear @s absorption
effect give @s absorption 120 0 true
""")

	# /death/detect
	write_function(f"{path}/death/detect", """
# Detect if linked player is missing

scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.id = @s switch.id
execute store success score #success switch.data run tag @a[scores={switch.alive=1..},predicate=switch:has_same_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 run tp @s @p[tag=switch.temp]
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory set from entity @p[tag=switch.temp] Inventory
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory append from entity @p[tag=switch.temp] equipment.offhand
execute if score #success switch.data matches 1 run tag @p[tag=switch.temp,tag=switch.temp.inventory_changed] remove switch.temp.inventory_changed

tag @a remove switch.temp
""")

	# /death/for_global (translation ref rewritten)
	write_function(f"{path}/death/for_global", """
scoreboard players operation #player_id switch.id = @s switch.id
tag @a[tag=!detached,predicate=switch:has_same_id] add switch.temp
clear @a[tag=switch.temp]

function switch:modes/spectres_game/death/inventory_filter
execute at @s run function switch:modes/_common/death/inventory_drop

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
execute if entity @a[tag=switch.temp,scores={switch.temp.spectror=1}] run scoreboard players set @s switch.alive 3


function switch:modes/spectres_game/translations/death_for_global

execute if entity @s[scores={switch.alive=1}] run scoreboard players add #nb_dead_spectres switch.data 1
execute if entity @s[scores={switch.alive=2}] run scoreboard players add #nb_dead_visibles switch.data 1


# Kill marker and remove player temp tag
tag @a[tag=switch.temp] remove switch.temp
kill @s
""")

	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", """
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]
execute store result storage switch:main Inventory[{id:"minecraft:golden_apple"}].count int 0.25 run data get entity @s Inventory[{id:"minecraft:golden_apple"}].count
data modify entity @s data.Inventory set from storage switch:main Inventory
""")

	# /death/player
	write_function(f"{path}/death/player", """
function switch:utils/classic_death
scoreboard players set @s switch.alive 0
tag @s add switch.to_tp
""")

	# /death/revive_visible
	write_function(f"{path}/death/revive_visible", """

scoreboard players set #next_role switch.data 1
function switch:modes/spectres_game/roles/main

item replace entity @s armor.head with diamond_helmet[enchantments={protection:3}]
item replace entity @s armor.chest with chainmail_chestplate[enchantments={fire_protection:2}]
item replace entity @s armor.legs with chainmail_leggings[enchantments={protection:3}]
item replace entity @s armor.feet with chainmail_boots[enchantments={fire_protection:2}]
item replace entity @s hotbar.0 with stone_sword[enchantments={sharpness:1}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s hotbar.3 with oak_planks 64
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 3
item replace entity @s inventory.0 with arrow 12
give @s iron_pickaxe[enchantments={efficiency:2}]

scoreboard players set @s switch.alive 1
function switch:maps/spread_one_player
gamemode survival @s
""")

	# /detect_end (translation ref rewritten)
	write_function(f"{path}/detect_end", """
scoreboard players set #game_state switch.data 0
execute if entity @a[scores={switch.alive=1..},team=switch.temp.visible] unless entity @a[scores={switch.alive=1..},team=switch.temp.spectre] run scoreboard players set #game_state switch.data 1
execute if entity @a[scores={switch.alive=1..},team=switch.temp.spectre] unless entity @a[scores={switch.alive=1..},team=switch.temp.visible] run scoreboard players set #game_state switch.data 2
execute if score #game_state switch.data matches 2 unless entity @a[scores={switch.alive=1..,switch.temp.spectror=0}] run scoreboard players set #game_state switch.data 4
execute unless entity @a[scores={switch.alive=1..}] run scoreboard players set #game_state switch.data 3

# 1 = que des visibles
# 2 = que des spectres
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..4 run scoreboard players set #spectres_game_seconds switch.data 100000

# Cas des vainqueurs
function switch:modes/spectres_game/translations/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.visible] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.spectre] unless score @s switch.temp.spectror matches 1 at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 4 as @a[tag=!detached,scores={switch.temp.spectror=1},team=switch.temp.spectre] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 unless score #test_mode switch.data matches 1 if score #nb_dead_visibles switch.data matches 0 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.visible] run advancement grant @s only switch:visible/12
execute if score #game_state switch.data matches 2 unless score #test_mode switch.data matches 1 if score #nb_dead_spectres switch.data matches 0 as @a[tag=!detached,scores={switch.alive=1..},team=switch.temp.spectre] run advancement grant @s only switch:visible/12


# Visuel de fin de partie
execute if score #spectres_game_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Spectre gear
item replace entity @s[team=switch.temp.spectre] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.spectre] hotbar.1 with stone_sword[enchantments={unbreaking:3,sharpness:3,fire_aspect:1}]
item replace entity @s[team=switch.temp.spectre] hotbar.3 with bow[enchantments={punch:1}]
item replace entity @s[team=switch.temp.spectre] hotbar.7 with golden_apple 8
item replace entity @s[team=switch.temp.spectre] hotbar.8 with oak_planks 64
execute if score @s switch.spectres_game.sp_arrows matches 0 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 24
execute if score @s switch.spectres_game.sp_arrows matches 1 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 26
execute if score @s switch.spectres_game.sp_arrows matches 2 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 28
execute if score @s switch.spectres_game.sp_arrows matches 3 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 30
execute if score @s switch.spectres_game.sp_arrows matches 4 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 32
execute if score @s switch.spectres_game.sp_arrows matches 5 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 34
execute if score @s switch.spectres_game.sp_arrows matches 6 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 36
execute if score @s switch.spectres_game.sp_arrows matches 7 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 38
execute if score @s switch.spectres_game.sp_arrows matches 8 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 40
execute if score @s switch.spectres_game.sp_arrows matches 9.. run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 42
item replace entity @s[team=switch.temp.spectre] inventory.1 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
effect give @s[team=switch.temp.spectre] invisibility infinite 255 true
effect give @s[team=switch.temp.spectre] resistance infinite 0 true
effect give @s[team=switch.temp.spectre] resistance 30 1 true
effect give @s[team=switch.temp.spectre] speed infinite 0 true

# Visible gear
item replace entity @s[team=switch.temp.visible] armor.head with chainmail_helmet[enchantments={protection:1}]
item replace entity @s[team=switch.temp.visible] armor.chest with iron_chestplate[enchantments={fire_protection:1}]
item replace entity @s[team=switch.temp.visible] armor.legs with iron_leggings[enchantments={protection:1}]
item replace entity @s[team=switch.temp.visible] armor.feet with diamond_boots[enchantments={fire_protection:1}]
item replace entity @s[team=switch.temp.visible] hotbar.0 with stone_sword[enchantments={sharpness:1}]
item replace entity @s[team=switch.temp.visible] hotbar.1 with bow
item replace entity @s[team=switch.temp.visible] hotbar.2 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
item replace entity @s[team=switch.temp.visible] hotbar.3 with oak_planks 64
item replace entity @s[team=switch.temp.visible] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.visible] hotbar.8 with golden_apple 5
execute if score @s switch.spectres_game.vi_arrows matches 0 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 16
execute if score @s switch.spectres_game.vi_arrows matches 1 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 18
execute if score @s switch.spectres_game.vi_arrows matches 2 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 20
execute if score @s switch.spectres_game.vi_arrows matches 3 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 22
execute if score @s switch.spectres_game.vi_arrows matches 4 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 24
execute if score @s switch.spectres_game.vi_arrows matches 5 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 26
execute if score @s switch.spectres_game.vi_arrows matches 6 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 28
execute if score @s switch.spectres_game.vi_arrows matches 7 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 30
execute if score @s switch.spectres_game.vi_arrows matches 8.. run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 32

# TNT in inventory
item replace entity @s inventory.25 with flint_and_steel
item replace entity @s inventory.26 with tnt 3
execute if score @s switch.spectres_game.sp_tnt matches 1 run item replace entity @s[team=switch.temp.spectre] inventory.26 with tnt 4
execute if score @s switch.spectres_game.sp_tnt matches 2 run item replace entity @s[team=switch.temp.spectre] inventory.26 with tnt 5
execute if score @s switch.spectres_game.sp_tnt matches 3 run item replace entity @s[team=switch.temp.spectre] inventory.26 with tnt 6
execute if score @s switch.spectres_game.vi_tnt matches 1 run item replace entity @s[team=switch.temp.visible] inventory.26 with tnt 4
execute if score @s switch.spectres_game.vi_tnt matches 2 run item replace entity @s[team=switch.temp.visible] inventory.26 with tnt 5
execute if score @s switch.spectres_game.vi_tnt matches 3 run item replace entity @s[team=switch.temp.visible] inventory.26 with tnt 6

effect give @s resistance 10 255 true
attribute @s attack_speed base set 1024

## Game specific events
# Pommes en plus pour le spectror en cas de spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run give @s[scores={switch.temp.spectror=1}] golden_apple 2

# Emerald pickaxe if task game
execute if score #TASKS_GAME switch.data matches 1 run loot replace entity @s hotbar.4 loot switch:i/emerald_pickaxe
execute if score #TASKS_GAME switch.data matches 1 run item modify entity @s hotbar.4 {"function":"minecraft:set_components","components":{"minecraft:max_damage":10}}
""")

	# /joined
	write_function(f"{path}/joined", """
# Ici : dans tous les cas, tuer la personne qui join
function switch:modes/spectres_game/death/player
""")

	# /obsidian_effect (translation ref rewritten)
	write_function(f"{path}/obsidian_effect", """
# Tirage au sort du bonus pour les visibles
execute store result score #random switch.data run random value 0..12

# si le score est 0, on donne un effet de heal aux visibles
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] instant_health 1 1 true
execute if score #random switch.data matches 0 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.spectre] regeneration 5 1 true
execute if score #random switch.data matches 0 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 1, on donne un effet de speed aux visibles ou spectre
execute if score #random switch.data matches 1 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] speed 12 1 true
execute if score #random switch.data matches 1 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.spectre] speed 12 1 true
execute if score #random switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s

# si le score est 2, on donne deux pommes d'or aux visibles ou spectre
execute if score #random switch.data matches 2 if entity @s[team=switch.temp.visible] run give @a[tag=!detached,team=switch.temp.visible] golden_apple 1
execute if score #random switch.data matches 2 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] golden_apple 1
execute if score #random switch.data matches 2 as @a[tag=!detached] at @s run playsound entity.eat ambient @s

# si le score est 3, on donne un effet d'absorption aux visibles ou spectre
execute if score #random switch.data matches 3 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] absorption 25 1 true
execute if score #random switch.data matches 3 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.spectre] absorption 25 1 true
execute if score #random switch.data matches 3 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s

# si le score est 4, on résucite un visible ou on donne 5 tnt à chaque spectres
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.visible] as @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=0}] run function switch:modes/spectres_game/death/revive_visible
execute if score #random switch.data matches 4 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] tnt 5
execute if score #random switch.data matches 4 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

# si le score est 5, on donne un effet de résistance aux visibles ou donner deux oeufs de creeper à chaque visible
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] resistance 33 0 true
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] creeper_spawn_egg 2
execute if score #random switch.data matches 5 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] zombie_villager_spawn_egg 2
execute if score #random switch.data matches 5 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 6, on donne un effet d'invisibilité aux visibles ou on summon 3 golems de fer
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.visible] invisibility 25 0 true
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {Tags:["switch.new"]}
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {Tags:["switch.new"]}
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {Tags:["switch.new"]}
execute if score #random switch.data matches 6 if entity @s[team=switch.temp.spectre] as @e[type=iron_golem,tag=switch.new] run function switch:maps/spread_one_player
execute if score #random switch.data matches 6 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 7, on téléporte tous les visibles sur l'un des visibles
execute if score #random switch.data matches 7 run teleport @a[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}] @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}]
execute if score #random switch.data matches 7 as @a[tag=!detached] at @s run playsound entity.enderman.teleport ambient @s

# si le score est 8, on donne 10 flèches à tous les visibles
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.visible] run give @a[tag=!detached,team=switch.temp.visible] arrow 10
execute if score #random switch.data matches 8 if entity @s[team=switch.temp.spectre] run give @a[tag=!detached,team=switch.temp.spectre] spectral_arrow 10
execute if score #random switch.data matches 8 as @a[tag=!detached] at @s run playsound entity.arrow.shoot ambient @s


# si le score est 9, on donne un effet temporaire de slowness à tous les spectres
execute if score #random switch.data matches 9 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.spectre] slowness 21 1 true
execute if score #random switch.data matches 9 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.visible] slowness 21 1 true
execute if score #random switch.data matches 9 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s

# si le score est 10, on donne un effet temporaire de glowing à tous les spectres ou un effet temporaire de poison à tous les visibles
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.visible] run effect give @a[tag=!detached,team=switch.temp.spectre] glowing 3 0 true
execute if score #random switch.data matches 10 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.visible] poison 8 0 true
execute if score #random switch.data matches 10 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s

# si le score est 11, un visible aléatoire obtient un effet de glowing ainsi qu'un puissant effet d'absorption et de vitesse
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run scoreboard objectives add switch.temp.puissant dummy
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run scoreboard players set @r[tag=!detached,team=switch.temp.visible,scores={switch.alive=1}] switch.temp.puissant 1
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run effect give @a[scores={switch.temp.puissant=1}] glowing 20 1 true
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run effect give @a[scores={switch.temp.puissant=1}] absorption 25 2 true
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run effect give @a[scores={switch.temp.puissant=1}] speed 25 1 true
#supprimer l'objectif puissant
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.visible] run scoreboard objectives remove switch.temp.puissant
#effet si c'est un spectre
execute if score #random switch.data matches 11 if entity @s[team=switch.temp.spectre] run effect give @a[tag=!detached,team=switch.temp.visible] blindness 8 1 true

execute if score #random switch.data matches 11 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

#si le score est 12, on donne un effet de water breathing aux visibles
execute if score #random switch.data matches 12 run effect give @a[tag=!detached,team=switch.temp.visible] water_breathing 40 0 true
execute if score #random switch.data matches 12 as @a[tag=!detached] at @s run playsound block.water.ambient ambient @s
function switch:modes/spectres_game/translations/obsidian_effect


# on reset le score de break obsidian
scoreboard players remove @s switch.temp.break_obsidian 1
""")

	# /percentage/choose_spectre
	write_function(f"{path}/percentage/choose_spectre", """
# Get a list of all players ID multiple times depending on their score
data modify storage switch:temp list set value []
execute as @a[team=switch.temp.visible] run function switch:modes/spectres_game/percentage/get_spectre_id

## Choose a random ID from the list
# Get a random value from 0 to the length of the list
function switch:modes/murder_mystery/percentage/_choose_from_list
execute as @a[team=switch.temp.visible] if score @s switch.id = #chosen_id switch.data run team join switch.temp.spectre


# Loop again until all spectres are chosen
scoreboard players remove #spectre_to_choose switch.data 1
execute if score #spectre_to_choose switch.data matches 1.. run function switch:modes/spectres_game/percentage/choose_spectre
""")

	# /percentage/get_spectre_id
	write_function(f"{path}/percentage/get_spectre_id", """
# Store ID in storage
execute store result storage switch:temp temp int 1 run scoreboard players get @s switch.id

# Add it multiple times
scoreboard players set #count switch.data 0
scoreboard players operation #count switch.data = @s switch.games_not_being_spectre
execute if score #count switch.data matches 0.. run function switch:modes/spectres_game/percentage/get_spectre_id_loop
""")

	# /percentage/get_spectre_id_loop
	write_function(f"{path}/percentage/get_spectre_id_loop", """
# Add the ID to the list
data modify storage switch:temp list append from storage switch:temp temp

# Loop again
scoreboard players remove #count switch.data 1
execute if score #count switch.data matches 0.. run function switch:modes/spectres_game/percentage/get_spectre_id_loop
""")

	# /percentage/select_roles
	write_function(f"{path}/percentage/select_roles", """
# Set everyone to visible
team join switch.temp.visible @a[tag=!detached]

# Get number of spectre to choose (1/3 of the players)
execute store result score #spectre_to_choose switch.data if entity @a[team=switch.temp.visible]
scoreboard players add #spectre_to_choose switch.data 2
scoreboard players operation #spectre_to_choose switch.data /= #3 switch.data

# Choose all spectres
execute if score #spectre_to_choose switch.data matches 1.. run function switch:modes/spectres_game/percentage/choose_spectre

# Probabilities
scoreboard players add @a[team=switch.temp.visible] switch.games_not_being_spectre 1
scoreboard players set @a[team=switch.temp.spectre] switch.games_not_being_spectre 0
""")

	# /place_obsidian_from_chicken
	write_function(f"{path}/place_obsidian_from_chicken", """
# Kill self, and place crying obsidian block
execute on vehicle at @s run setblock ~ ~ ~ crying_obsidian
kill @s
""")

	# /process_end
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

# Kill tout le monde
execute if score #process_end switch.data matches 1 as @a[tag=!detached,sort=random] run function switch:modes/spectres_game/death/player
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /roles/announcement (translation ref rewritten)
	write_function(f"{path}/roles/announcement", """
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

function switch:modes/spectres_game/translations/roles_announcement

## mettre le score switch.alive des spectror à 3
scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3
""")

	# /roles/main
	write_function(f"{path}/roles/main", """
tag @s add switch.temp
scoreboard players add @s switch.temp.spectror 0

# Linked marker for offline players
setblock 0 9 0 yellow_shulker_box
loot insert 0 9 0 loot switch:get_username
summon marker 0 9 0 {Tags:["switch.temp.player","switch.new"]}
scoreboard players operation #player_id switch.id = @s switch.id
execute as @e[tag=switch.new] run function switch:modes/spectres_game/roles/marker
setblock 0 9 0 air

tag @s remove switch.temp
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", """
scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 9 0 Items[0].components."minecraft:profile".name
data modify entity @s Tags set from entity @p[tag=switch.temp] Tags
execute if entity @p[tag=switch.temp,team=switch.temp.spectre] run scoreboard players set @s switch.alive 1
execute if entity @p[tag=switch.temp,team=switch.temp.visible] run scoreboard players set @s switch.alive 2
# pour le marker switch.alive du spectror, il est programmé dans le fichier seconds
tag @s add switch.temp.player
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", """
scoreboard players add #spectres_game_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #spectres_game_seconds switch.data matches 0.. run function switch:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds switch.data matches 0.. run effect give @a[tag=!detached,team=switch.temp.spectre] resistance infinite 0 true
execute if score #spectres_game_seconds switch.data matches 0 run function switch:modes/spectres_game/roles/announcement

## Message Si Spectror
## Bruit si Spectror
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3
execute if score #spectres_game_seconds switch.data matches 6 if score #SPECTROR_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound entity.piglin.angry ambient @s

execute if score #spectres_game_seconds switch.data matches 30 as @a[tag=!detached,team=switch.temp.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

## Message Si TASKS_GAME
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.tasks=1}] switch.alive 3
execute if score #spectres_game_seconds switch.data matches 15 if score #TASKS_GAME switch.data matches 1 as @a[tag=!detached] at @s run playsound block.anvil.use ambient @s

# Vagues d'obsidiennes
execute if score #TASKS_GAME switch.data matches 1 run scoreboard players set #modulo switch.data 120
execute if score #TASKS_GAME switch.data matches 1 run scoreboard players operation #temp switch.data = #spectres_game_seconds switch.data
execute if score #TASKS_GAME switch.data matches 1 run scoreboard players operation #temp switch.data %= #modulo switch.data
execute if score #TASKS_GAME switch.data matches 1 if score #temp switch.data matches 40 run function switch:modes/spectres_game/task_obsidian
execute if score #TASKS_GAME switch.data matches 1 if score #temp switch.data matches 100 run function switch:modes/spectres_game/task_obsidian

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true

# Actionbar
function switch:modes/_common/compute_mins_secs
function switch:modes/spectres_game/translations/second
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1
function switch:utils/set_dynamic_time

# Get new players and players count
scoreboard players add @a[tag=!detached] switch.stats.played.spectres_game 0
execute store result score #count switch.data if entity @a[tag=!detached]
execute store result score #new_players switch.data if entity @a[tag=!detached,scores={switch.stats.played.spectres_game=0}]

## Partie spectror game aléatoire
scoreboard objectives add switch.temp.spectror dummy
scoreboard players set #SPECTROR_GAME switch.data 0
execute unless score #new_players switch.data matches 2.. if predicate switch:chance/0.33 run scoreboard players set #SPECTROR_GAME switch.data 1
#mettre le score à 1

## Partie TASKS GAME aléatoire
scoreboard objectives add switch.temp.break_obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard players set #TASKS_GAME switch.data 0
execute unless score #new_players switch.data matches 2.. if predicate switch:chance/0.33 run scoreboard players set #TASKS_GAME switch.data 1
#mettre le score à 1




## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"spectres_game", maps:["spectre_original","mushroom_plains","sky_island_tower","floating_island","jn_sakura_pvpbox","luxium_spectres_remake","old_japan","cluedo_camping","la_juste_recette","torg_arena"]}

execute in switch:game run gamerule minecraft:mob_griefing true
execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function switch:modes/spectres_game/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s


scoreboard players set #remaining_time switch.data 901
scoreboard players set #spectres_game_seconds switch.data -10
scoreboard players set #spectres_game_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard players set #nb_dead_spectres switch.data 0
scoreboard players set #nb_dead_visibles switch.data 0

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.kills playerKillCount {"text":"Killed players","color":"red"}
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.visible {"text":"[Visible]","color":"dark_green"}
team add switch.temp.spectre {"text":"[Spectre]","color":"yellow"}
team modify switch.temp.visible color dark_green
team modify switch.temp.spectre color yellow
scoreboard players set #next_role switch.data 0
scoreboard players set #next_player_id switch.data 0
scoreboard objectives add switch.games_not_being_spectre dummy
function switch:modes/spectres_game/percentage/select_roles
execute as @a[tag=!detached] run function switch:modes/spectres_game/roles/main

# Si partie spectror game
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @r[team=switch.temp.visible] switch.temp.spectror 1
execute if score #SPECTROR_GAME switch.data matches 1 run team join switch.temp.spectre @a[scores={switch.temp.spectror=1}]
execute if score #SPECTROR_GAME switch.data matches 1 run scoreboard players set @a[scores={switch.temp.spectror=1}] switch.alive 3

# Give items
execute as @a[tag=!detached] at @s run function switch:modes/spectres_game/give_items
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"blindness",amplifier:0b,duration:80,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"blindness",amplifier:0b,duration:80,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b},{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b},{id:"blindness",amplifier:0b,duration:80,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:0b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:220,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:0b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:220,show_particles:0b}]}]
give @r[team=switch.temp.spectre] splash_potion[item_name={"text":"Potion dévastatrice du fantôme"},lore=[{"text":"À lancer sur les visibles","color":"white","italic":false}],potion_contents={custom_color:3080257,potion:"minecraft:water",custom_effects:[{id:"slowness",amplifier:0b,duration:400,show_particles:0b},{id:"nausea",amplifier:0b,duration:200,show_particles:0b},{id:"poison",amplifier:0b,duration:220,show_particles:0b}]}]

# Start effects give
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 18 255 true
effect give @a[tag=!detached] fire_resistance 18 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 22 255 true
effect give @a[team=switch.temp.visible] blindness 11 255 true
effect give @a[team=switch.temp.spectre] blindness 3 255 true
effect give @a[tag=!detached] slowness 8 255 true
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.visible
team remove switch.temp.spectre
scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.kills
scoreboard objectives remove switch.temp.spectror
scoreboard objectives remove switch.temp.break_obsidian
""")

	# /task_obsidian (translation ref rewritten)
	write_function(f"{path}/task_obsidian", """
# distribution des obsidiennes

# Get player count
execute store result score #count switch.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:block_display",transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:crying_obsidian"}}]}
execute if score #count switch.data matches 5.. run summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:block_display",Tags:["switch.task_obsidian"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:crying_obsidian"}}]}
execute if score #count switch.data matches 15.. run summon chicken ~ ~ ~ {Invulnerable:true,Tags:["switch.new"],Passengers:[{id:"minecraft:block_display",Tags:["switch.task_obsidian"],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]},block_state:{Name:"minecraft:crying_obsidian"}}]}

# Spreadplayers
execute as @e[type=chicken,tag=switch.new] run function switch:maps/spread_one_player


# Téléporte le bloc en hauteur pour qu'il chute plus longtemps
execute as @e[type=chicken,tag=switch.new] at @s positioned over world_surface run tp @s ~ ~-2 ~
tag @e[type=chicken,tag=switch.new] remove switch.new


# Tellraw & playsound
function switch:modes/spectres_game/translations/task_obsidian
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
""")


	# /tick
	write_function(f"{path}/tick", """
scoreboard players add #spectres_game_ticks switch.data 1

execute as @a[tag=!detached,tag=switch.to_tp] run function switch:modes/_common/teleport_to_death
kill @e[type=item,nbt={Age:200s}]

function switch:utils/on_death_run_function {function:"switch:modes/spectres_game/death/player"}
execute if score #spectres_game_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function switch:modes/spectres_game/death/detect
execute if score #spectres_game_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function switch:modes/spectres_game/death/for_global

# Si un joueur casse la crying obsidienne executer une fonction
execute as @a[tag=!detached,scores={switch.temp.break_obsidian=1..}] run function switch:modes/spectres_game/obsidian_effect

# Clear les crying obsidiennes des inventaires
clear @a[tag=!detached] crying_obsidian

# Obsidienne poulet
execute as @e[tag=switch.task_obsidian] at @s unless block ~ ~-2 ~ #minecraft:air run function switch:modes/spectres_game/place_obsidian_from_chicken


# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=!detached,team=switch.temp.spectre,gamemode=!spectator,predicate=!switch:is_sneaking,predicate=!switch:in_air,predicate=switch:is_moving] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[tag=!detached,nbt={active_effects:[{id:"minecraft:absorption"}]}] unless data entity @s active_effects[{id:"minecraft:absorption"}].show_particles run function switch:modes/spectres_game/absorption

# Particules sur tous les spectres, pour les spectres
execute at @a[tag=!detached,gamemode=!spectator,team=switch.temp.spectre] run particle dust{color:[1.0,1.0,0.5],scale:1.0} ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[tag=!detached,team=switch.temp.spectre]

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,team=switch.temp.spectre,scores={switch.temp.kills=3..}] only switch:visible/18

# Détection de fin de partie
execute if score #spectres_game_seconds switch.data matches 1..900 run function switch:modes/spectres_game/detect_end
execute if score #spectres_game_seconds switch.data matches 901.. run function switch:modes/spectres_game/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
