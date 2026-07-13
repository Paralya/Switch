
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .kits import spectre_kit, visible_kit
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "spectres_game"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:modes/spectres_game/death/player"})
	write_translations()

	# Non-standard call: inventory_changed
	write_function(f"{path}/calls/inventory_changed", f"""
tag @s add {ns}.temp.inventory_changed
""")


	# /absorption
	write_function(f"{path}/absorption", """
effect clear @s absorption
effect give @s absorption 120 0 true
""")

	# /death/detect
	write_function(f"{path}/death/detect", f"""
# Detect if linked player is missing

scoreboard players set #success {ns}.data 0
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute store success score #success {ns}.data run tag @a[scores={{{ns}.alive=1..}},predicate={ns}:has_same_id] add {ns}.temp

execute if score #success {ns}.data matches 0 run tag @s add {ns}.player_dead
execute if score #success {ns}.data matches 1 run tp @s @p[tag={ns}.temp]
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify entity @s data.Inventory set from entity @p[tag={ns}.temp] Inventory
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify entity @s data.Inventory append from entity @p[tag={ns}.temp] equipment.offhand
execute if score #success {ns}.data matches 1 run tag @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] remove {ns}.temp.inventory_changed

tag @a remove {ns}.temp
""")

	# /death/for_global (translation ref rewritten)
	write_function(f"{path}/death/for_global", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
tag @a[tag=!detached,predicate={ns}:has_same_id] add {ns}.temp
clear @a[tag={ns}.temp]

function {ns}:modes/spectres_game/death/inventory_filter
function {ns}:modes/_common/death/global_effects
execute if entity @a[tag={ns}.temp,scores={{{ns}.temp.spectror=1}}] run scoreboard players set @s {ns}.alive 3


function {ns}:modes/spectres_game/translations/death_for_global

execute if entity @s[scores={{{ns}.alive=1}}] run scoreboard players add #nb_dead_spectres {ns}.data 1
execute if entity @s[scores={{{ns}.alive=2}}] run scoreboard players add #nb_dead_visibles {ns}.data 1


# Kill marker and remove player temp tag
tag @a[tag={ns}.temp] remove {ns}.temp
kill @s
""")

	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", f"""
function {ns}:modes/_common/death/keep_combat_items
execute store result storage {ns}:main Inventory[{{id:"minecraft:golden_apple"}}].count int 0.25 run data get entity @s Inventory[{{id:"minecraft:golden_apple"}}].count
data modify entity @s data.Inventory set from storage {ns}:main Inventory
""")

	# /death/player
	write_function(f"{path}/death/player", f"""
function {ns}:utils/classic_death
scoreboard players set @s {ns}.alive 0
tag @s add {ns}.to_tp
""")

	# /death/revive_visible
	write_function(f"{path}/death/revive_visible", f"""
scoreboard players set #next_role {ns}.data 1
function {ns}:modes/spectres_game/roles/main

item replace entity @s armor.head with diamond_helmet[enchantments={{protection:3}}]
item replace entity @s armor.chest with chainmail_chestplate[enchantments={{fire_protection:2}}]
item replace entity @s armor.legs with chainmail_leggings[enchantments={{protection:3}}]
item replace entity @s armor.feet with chainmail_boots[enchantments={{fire_protection:2}}]
item replace entity @s hotbar.0 with stone_sword[enchantments={{sharpness:1}}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]
item replace entity @s hotbar.3 with oak_planks 64
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 3
item replace entity @s inventory.0 with arrow 12
give @s iron_pickaxe[enchantments={{efficiency:2}}]

scoreboard players set @s {ns}.alive 1
function {ns}:maps/spread_one_player
gamemode survival @s
""")

	# /detect_end (translation ref rewritten)
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
execute if entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.visible] unless entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.spectre] run scoreboard players set #game_state {ns}.data 1
execute if entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.spectre] unless entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.visible] run scoreboard players set #game_state {ns}.data 2
execute if score #game_state {ns}.data matches 2 unless entity @a[scores={{{ns}.alive=1..,{ns}.temp.spectror=0}}] run scoreboard players set #game_state {ns}.data 4
execute unless entity @a[scores={{{ns}.alive=1..}}] run scoreboard players set #game_state {ns}.data 3

# 1 = que des visibles
# 2 = que des spectres
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..4 run scoreboard players set #spectres_game_seconds {ns}.data 100000

# Cas des vainqueurs
function {ns}:modes/spectres_game/translations/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.visible] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.spectre] unless score @s {ns}.temp.spectror matches 1 at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 4 as @a[tag=!detached,scores={{{ns}.temp.spectror=1}},team={ns}.temp.spectre] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 1 unless score #test_mode {ns}.data matches 1 if score #nb_dead_visibles {ns}.data matches 0 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.visible] run advancement grant @s only {ns}:visible/12
execute if score #game_state {ns}.data matches 2 unless score #test_mode {ns}.data matches 1 if score #nb_dead_spectres {ns}.data matches 0 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.spectre] run advancement grant @s only {ns}:visible/12


# Visuel de fin de partie
execute if score #spectres_game_seconds {ns}.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /give_items/spectre and /give_items/visible (declared in kits.py); both keep their team
	# selector, so give_items can call them unconditionally.
	spectre_kit().write(f"{path}/give_items/spectre")
	visible_kit().write(f"{path}/give_items/visible")

	# /give_items
	write_function(f"{path}/give_items", f"""
function {ns}:modes/spectres_game/give_items/spectre
function {ns}:modes/spectres_game/give_items/visible

# TNT in inventory
item replace entity @s inventory.25 with flint_and_steel
item replace entity @s inventory.26 with tnt 3
execute if score @s {ns}.spectres_game.sp_tnt matches 1 run item replace entity @s[team={ns}.temp.spectre] inventory.26 with tnt 4
execute if score @s {ns}.spectres_game.sp_tnt matches 2 run item replace entity @s[team={ns}.temp.spectre] inventory.26 with tnt 5
execute if score @s {ns}.spectres_game.sp_tnt matches 3 run item replace entity @s[team={ns}.temp.spectre] inventory.26 with tnt 6
execute if score @s {ns}.spectres_game.vi_tnt matches 1 run item replace entity @s[team={ns}.temp.visible] inventory.26 with tnt 4
execute if score @s {ns}.spectres_game.vi_tnt matches 2 run item replace entity @s[team={ns}.temp.visible] inventory.26 with tnt 5
execute if score @s {ns}.spectres_game.vi_tnt matches 3 run item replace entity @s[team={ns}.temp.visible] inventory.26 with tnt 6

effect give @s resistance 10 255 true
attribute @s attack_speed base set 1024

## Game specific events
# Pommes en plus pour le spectror en cas de spectror game
execute if score #SPECTROR_GAME {ns}.data matches 1 run give @s[scores={{{ns}.temp.spectror=1}}] golden_apple 2
""")

	# /obsidian_effect (translation ref rewritten)
	write_function(f"{path}/obsidian_effect", f"""
# Tirage au sort du bonus pour les visibles
execute store result score #random {ns}.data run random value 0..12

# si le score est 0, on donne un effet de heal aux visibles
execute if score #random {ns}.data matches 0 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.visible] instant_health 1 1 true
execute if score #random {ns}.data matches 0 if entity @s[team={ns}.temp.spectre] run effect give @a[tag=!detached,team={ns}.temp.spectre] regeneration 5 1 true
execute if score #random {ns}.data matches 0 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 1, on donne un effet de speed aux visibles ou spectre
execute if score #random {ns}.data matches 1 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.visible] speed 12 1 true
execute if score #random {ns}.data matches 1 if entity @s[team={ns}.temp.spectre] run effect give @a[tag=!detached,team={ns}.temp.spectre] speed 12 1 true
execute if score #random {ns}.data matches 1 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s

# si le score est 2, on donne deux pommes d'or aux visibles ou spectre
execute if score #random {ns}.data matches 2 if entity @s[team={ns}.temp.visible] run give @a[tag=!detached,team={ns}.temp.visible] golden_apple 1
execute if score #random {ns}.data matches 2 if entity @s[team={ns}.temp.spectre] run give @a[tag=!detached,team={ns}.temp.spectre] golden_apple 1
execute if score #random {ns}.data matches 2 as @a[tag=!detached] at @s run playsound entity.eat ambient @s

# si le score est 3, on donne un effet d'absorption aux visibles ou spectre
execute if score #random {ns}.data matches 3 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.visible] absorption 25 1 true
execute if score #random {ns}.data matches 3 if entity @s[team={ns}.temp.spectre] run effect give @a[tag=!detached,team={ns}.temp.spectre] absorption 25 1 true
execute if score #random {ns}.data matches 3 as @a[tag=!detached] at @s run playsound entity.splash_potion.throw ambient @s

# si le score est 4, on résucite un visible ou on donne 5 tnt à chaque spectres
execute if score #random {ns}.data matches 4 if entity @s[team={ns}.temp.visible] as @r[tag=!detached,team={ns}.temp.visible,scores={{{ns}.alive=0}}] run function {ns}:modes/spectres_game/death/revive_visible
execute if score #random {ns}.data matches 4 if entity @s[team={ns}.temp.spectre] run give @a[tag=!detached,team={ns}.temp.spectre] tnt 5
execute if score #random {ns}.data matches 4 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s

# si le score est 5, on donne un effet de résistance aux visibles ou donner deux oeufs de creeper à chaque visible
execute if score #random {ns}.data matches 5 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.visible] resistance 33 0 true
execute if score #random {ns}.data matches 5 if entity @s[team={ns}.temp.spectre] run give @a[tag=!detached,team={ns}.temp.spectre] creeper_spawn_egg 2
execute if score #random {ns}.data matches 5 if entity @s[team={ns}.temp.spectre] run give @a[tag=!detached,team={ns}.temp.spectre] zombie_villager_spawn_egg 2
execute if score #random {ns}.data matches 5 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 6, on donne un effet d'invisibilité aux visibles ou on summon 3 golems de fer
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.visible] invisibility 25 0 true
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {{Tags:["{ns}.new"]}}
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {{Tags:["{ns}.new"]}}
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.spectre] run summon minecraft:iron_golem ~ ~ ~ {{Tags:["{ns}.new"]}}
execute if score #random {ns}.data matches 6 if entity @s[team={ns}.temp.spectre] as @e[type=iron_golem,tag={ns}.new] run function {ns}:maps/spread_one_player
execute if score #random {ns}.data matches 6 as @a[tag=!detached] at @s run playsound entity.drink ambient @s

# si le score est 7, on téléporte tous les visibles sur l'un des visibles
execute if score #random {ns}.data matches 7 run teleport @a[tag=!detached,team={ns}.temp.visible,scores={{{ns}.alive=1}}] @r[tag=!detached,team={ns}.temp.visible,scores={{{ns}.alive=1}}]
execute if score #random {ns}.data matches 7 as @a[tag=!detached] at @s run playsound entity.enderman.teleport ambient @s

# si le score est 8, on donne 10 flèches à tous les visibles
execute if score #random {ns}.data matches 8 if entity @s[team={ns}.temp.visible] run give @a[tag=!detached,team={ns}.temp.visible] arrow 10
execute if score #random {ns}.data matches 8 if entity @s[team={ns}.temp.spectre] run give @a[tag=!detached,team={ns}.temp.spectre] spectral_arrow 10
execute if score #random {ns}.data matches 8 as @a[tag=!detached] at @s run playsound entity.arrow.shoot ambient @s


# si le score est 9, on donne un effet temporaire de slowness à tous les spectres
execute if score #random {ns}.data matches 9 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.spectre] slowness 21 1 true
execute if score #random {ns}.data matches 9 if entity @s[team={ns}.temp.spectre] run effect give @a[tag=!detached,team={ns}.temp.visible] slowness 21 1 true
execute if score #random {ns}.data matches 9 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s

# si le score est 10, on donne un effet temporaire de glowing à tous les spectres ou un effet temporaire de poison à tous les visibles
execute if score #random {ns}.data matches 10 if entity @s[team={ns}.temp.visible] run effect give @a[tag=!detached,team={ns}.temp.spectre] glowing 3 0 true
execute if score #random {ns}.data matches 10 if entity @s[team={ns}.temp.spectre] run effect give @a[tag=!detached,team={ns}.temp.visible] poison 8 0 true
execute if score #random {ns}.data matches 10 as @a[tag=!detached] at @s run playsound entity.zombie.hurt ambient @s

# si le score est 11, un visible aléatoire obtient un effet de glowing ainsi qu'un puissant effet d'absorption et de vitesse
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.visible] run scoreboard objectives add {ns}.temp.puissant dummy
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.visible] run scoreboard players set @r[tag=!detached,team={ns}.temp.visible,scores={{{ns}.alive=1}}] {ns}.temp.puissant 1
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.visible] run effect give @a[scores={{{ns}.temp.puissant=1}}] glowing 20 1 true
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.visible] run effect give @a[scores={{{ns}.temp.puissant=1}}] absorption 25 2 true
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.visible] run effect give @a[scores={{{ns}.temp.puissant=1}}] speed 25 1 true
#supprimer l'objectif puissant
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.visible] run scoreboard objectives remove {ns}.temp.puissant
#effet si c'est un spectre
execute if score #random {ns}.data matches 11 if entity @s[team={ns}.temp.spectre] run effect give @a[tag=!detached,team={ns}.temp.visible] blindness 8 1 true

execute if score #random {ns}.data matches 11 as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

#si le score est 12, on donne un effet de water breathing aux visibles
execute if score #random {ns}.data matches 12 run effect give @a[tag=!detached,team={ns}.temp.visible] water_breathing 40 0 true
execute if score #random {ns}.data matches 12 as @a[tag=!detached] at @s run playsound block.water.ambient ambient @s
function {ns}:modes/spectres_game/translations/obsidian_effect


# on reset le score de break obsidian
scoreboard players remove @s {ns}.temp.break_obsidian 1
""")

	# /percentage/choose_spectre
	write_function(f"{path}/percentage/choose_spectre", f"""
# Get a list of all players ID multiple times depending on their score
data modify storage {ns}:temp list set value []
execute as @a[team={ns}.temp.visible] run function {ns}:modes/spectres_game/percentage/get_spectre_id

## Choose a random ID from the list
# Get a random value from 0 to the length of the list
function {ns}:modes/murder_mystery/percentage/_choose_from_list
execute as @a[team={ns}.temp.visible] if score @s {ns}.id = #chosen_id {ns}.data run team join {ns}.temp.spectre


# Loop again until all spectres are chosen
scoreboard players remove #spectre_to_choose {ns}.data 1
execute if score #spectre_to_choose {ns}.data matches 1.. run function {ns}:modes/spectres_game/percentage/choose_spectre
""")

	# /percentage/get_spectre_id
	write_function(f"{path}/percentage/get_spectre_id", f"""
# Store ID in storage
execute store result storage {ns}:temp temp int 1 run scoreboard players get @s {ns}.id

# Add it multiple times
scoreboard players set #count {ns}.data 0
scoreboard players operation #count {ns}.data = @s {ns}.games_not_being_spectre
execute if score #count {ns}.data matches 0.. run function {ns}:modes/spectres_game/percentage/get_spectre_id_loop
""")

	# /percentage/get_spectre_id_loop
	write_function(f"{path}/percentage/get_spectre_id_loop", f"""
# Add the ID to the list
data modify storage {ns}:temp list append from storage {ns}:temp temp

# Loop again
scoreboard players remove #count {ns}.data 1
execute if score #count {ns}.data matches 0.. run function {ns}:modes/spectres_game/percentage/get_spectre_id_loop
""")

	# /percentage/select_roles
	write_function(f"{path}/percentage/select_roles", f"""
# Set everyone to visible
team join {ns}.temp.visible @a[tag=!detached]

# Get number of spectre to choose (1/3 of the players)
execute store result score #spectre_to_choose {ns}.data if entity @a[team={ns}.temp.visible]
scoreboard players add #spectre_to_choose {ns}.data 2
scoreboard players operation #spectre_to_choose {ns}.data /= #3 {ns}.data

# Choose all spectres
execute if score #spectre_to_choose {ns}.data matches 1.. run function {ns}:modes/spectres_game/percentage/choose_spectre

# Probabilities
scoreboard players add @a[team={ns}.temp.visible] {ns}.games_not_being_spectre 1
scoreboard players set @a[team={ns}.temp.spectre] {ns}.games_not_being_spectre 0
""")

	# /place_obsidian_from_chicken
	write_function(f"{path}/place_obsidian_from_chicken", """
# Kill self, and place crying obsidian block
execute on vehicle at @s run setblock ~ ~ ~ crying_obsidian
kill @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Kill tout le monde
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {ns}:modes/spectres_game/death/player
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /roles/announcement (translation ref rewritten)
	write_function(f"{path}/roles/announcement", f"""
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

function {ns}:modes/spectres_game/translations/roles_announcement

## mettre le score {ns}.alive des spectror à 3
scoreboard players set @a[scores={{{ns}.temp.spectror=1}}] {ns}.alive 3
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
tag @s add {ns}.temp
scoreboard players add @s {ns}.temp.spectror 0

# Linked marker for offline players
setblock 0 9 0 yellow_shulker_box
loot insert 0 9 0 loot {ns}:get_username
summon marker 0 9 0 {{Tags:["{ns}.temp.player","{ns}.new"]}}
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute as @e[tag={ns}.new] run function {ns}:modes/spectres_game/roles/marker
setblock 0 9 0 air

tag @s remove {ns}.temp
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", f"""
scoreboard players operation @s {ns}.id = #player_id {ns}.id
data modify entity @s data.name set from block 0 9 0 Items[0].components."minecraft:profile".name
data modify entity @s Tags set from entity @p[tag={ns}.temp] Tags
execute if entity @p[tag={ns}.temp,team={ns}.temp.spectre] run scoreboard players set @s {ns}.alive 1
execute if entity @p[tag={ns}.temp,team={ns}.temp.visible] run scoreboard players set @s {ns}.alive 2
# pour le marker {ns}.alive du spectror, il est programmé dans le fichier seconds
tag @s add {ns}.temp.player
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", f"""
scoreboard players add #spectres_game_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

execute if score #spectres_game_seconds {ns}.data matches 0.. run function {ns}:modes/spectres_game/xp_bar
execute if score #spectres_game_seconds {ns}.data matches 0.. run effect give @a[tag=!detached,team={ns}.temp.spectre] resistance infinite 0 true
execute if score #spectres_game_seconds {ns}.data matches 0 run function {ns}:modes/spectres_game/roles/announcement

## Message Si Spectror
## Bruit si Spectror
execute if score #spectres_game_seconds {ns}.data matches 6 if score #SPECTROR_GAME {ns}.data matches 1 run scoreboard players set @a[scores={{{ns}.temp.spectror=1}}] {ns}.alive 3
execute if score #spectres_game_seconds {ns}.data matches 6 if score #SPECTROR_GAME {ns}.data matches 1 as @a[tag=!detached] at @s run playsound entity.piglin.angry ambient @s

execute if score #spectres_game_seconds {ns}.data matches 30 as @a[tag=!detached,team={ns}.temp.spectre] at @s run playsound entity.experience_orb.pickup ambient @s

## Message Si TASKS_GAME
execute if score #spectres_game_seconds {ns}.data matches 15 if score #TASKS_GAME {ns}.data matches 1 run scoreboard players set @a[scores={{{ns}.temp.tasks=1}}] {ns}.alive 3
execute if score #spectres_game_seconds {ns}.data matches 15 if score #TASKS_GAME {ns}.data matches 1 as @a[tag=!detached] at @s run playsound block.anvil.use ambient @s

# Vagues d'obsidiennes
execute if score #TASKS_GAME {ns}.data matches 1 run scoreboard players set #modulo {ns}.data 120
execute if score #TASKS_GAME {ns}.data matches 1 run scoreboard players operation #temp {ns}.data = #spectres_game_seconds {ns}.data
execute if score #TASKS_GAME {ns}.data matches 1 run scoreboard players operation #temp {ns}.data %= #modulo {ns}.data
execute if score #TASKS_GAME {ns}.data matches 1 if score #temp {ns}.data matches 40 run function {ns}:modes/spectres_game/task_obsidian
execute if score #TASKS_GAME {ns}.data matches 1 if score #temp {ns}.data matches 100 run function {ns}:modes/spectres_game/task_obsidian

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true

# Actionbar
function {ns}:modes/_common/compute_mins_secs
function {ns}:modes/spectres_game/translations/second
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] {ns}.alive 1
function {ns}:utils/set_dynamic_time

# Get new players and players count
scoreboard players add @a[tag=!detached] {ns}.stats.played.spectres_game 0
execute store result score #count {ns}.data if entity @a[tag=!detached]
execute store result score #new_players {ns}.data if entity @a[tag=!detached,scores={{{ns}.stats.played.spectres_game=0}}]

## Partie spectror game aléatoire
scoreboard objectives add {ns}.temp.spectror dummy
scoreboard players set #SPECTROR_GAME {ns}.data 0
execute unless score #new_players {ns}.data matches 2.. if predicate {ns}:chance/0.33 run scoreboard players set #SPECTROR_GAME {ns}.data 1
#mettre le score à 1

## Partie TASKS GAME aléatoire
scoreboard objectives add {ns}.temp.break_obsidian minecraft.mined:minecraft.crying_obsidian
scoreboard players set #TASKS_GAME {ns}.data 0
execute unless score #new_players {ns}.data matches 2.. if predicate {ns}:chance/0.33 run scoreboard players set #TASKS_GAME {ns}.data 1
#mettre le score à 1




## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"spectres_game", maps:["spectre_original","mushroom_plains","sky_island_tower","floating_island","jn_sakura_pvpbox","luxium_spectres_remake","old_japan","cluedo_camping","la_juste_recette","torg_arena"]}}

function {ns}:modes/_common/standard_combat_rules

function {ns}:modes/spectres_game/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s


scoreboard players set #remaining_time {ns}.data 901
scoreboard players set #spectres_game_seconds {ns}.data -10
scoreboard players set #spectres_game_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #cut_clean {ns}.data 1
scoreboard players set #nb_dead_spectres {ns}.data 0
scoreboard players set #nb_dead_visibles {ns}.data 0

scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.kills playerKillCount {{"text":"Killed players","color":"red"}}
scoreboard objectives setdisplay list {ns}.health

# Choix des rôles + give d'items
team add {ns}.temp.visible {{"text":"[Visible]","color":"dark_green"}}
team add {ns}.temp.spectre {{"text":"[Spectre]","color":"yellow"}}
team modify {ns}.temp.visible color dark_green
team modify {ns}.temp.spectre color yellow
scoreboard players set #next_role {ns}.data 0
scoreboard players set #next_player_id {ns}.data 0
scoreboard objectives add {ns}.games_not_being_spectre dummy
function {ns}:modes/spectres_game/percentage/select_roles
execute as @a[tag=!detached] run function {ns}:modes/spectres_game/roles/main

# Si partie spectror game
execute if score #SPECTROR_GAME {ns}.data matches 1 run scoreboard players set @r[team={ns}.temp.visible] {ns}.temp.spectror 1
execute if score #SPECTROR_GAME {ns}.data matches 1 run team join {ns}.temp.spectre @a[scores={{{ns}.temp.spectror=1}}]
execute if score #SPECTROR_GAME {ns}.data matches 1 run scoreboard players set @a[scores={{{ns}.temp.spectror=1}}] {ns}.alive 3

# Give items
execute as @a[tag=!detached] at @s run function {ns}:modes/spectres_game/give_items
give @r[team={ns}.temp.spectre] splash_potion[item_name={{"text":"Potion dévastatrice du fantôme"}},lore=[{{"text":"À lancer sur les visibles","color":"white","italic":false}}],potion_contents={{custom_color:3080257,potion:"minecraft:water",custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:80,show_particles:0b}}]}}]
give @r[team={ns}.temp.spectre] splash_potion[item_name={{"text":"Potion dévastatrice du fantôme"}},lore=[{{"text":"À lancer sur les visibles","color":"white","italic":false}}],potion_contents={{custom_color:3080257,potion:"minecraft:water",custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:80,show_particles:0b}}]}}]
give @r[team={ns}.temp.spectre] splash_potion[item_name={{"text":"Potion dévastatrice du fantôme"}},lore=[{{"text":"À lancer sur les visibles","color":"white","italic":false}}],potion_contents={{custom_color:3080257,potion:"minecraft:water",custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"instant_damage",amplifier:0b,duration:20,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:80,show_particles:0b}}]}}]
give @r[team={ns}.temp.spectre] splash_potion[item_name={{"text":"Potion dévastatrice du fantôme"}},lore=[{{"text":"À lancer sur les visibles","color":"white","italic":false}}],potion_contents={{custom_color:3080257,potion:"minecraft:water",custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:0b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:220,show_particles:0b}}]}}]
give @r[team={ns}.temp.spectre] splash_potion[item_name={{"text":"Potion dévastatrice du fantôme"}},lore=[{{"text":"À lancer sur les visibles","color":"white","italic":false}}],potion_contents={{custom_color:3080257,potion:"minecraft:water",custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:0b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:220,show_particles:0b}}]}}]
give @r[team={ns}.temp.spectre] splash_potion[item_name={{"text":"Potion dévastatrice du fantôme"}},lore=[{{"text":"À lancer sur les visibles","color":"white","italic":false}}],potion_contents={{custom_color:3080257,potion:"minecraft:water",custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:0b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:220,show_particles:0b}}]}}]

# Start effects give
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 18 255 true
effect give @a[tag=!detached] fire_resistance 18 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 22 255 true
effect give @a[team={ns}.temp.visible] blindness 11 255 true
effect give @a[team={ns}.temp.spectre] blindness 3 255 true
effect give @a[tag=!detached] slowness 8 255 true
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.visible
team remove {ns}.temp.spectre
scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.kills
scoreboard objectives remove {ns}.temp.spectror
scoreboard objectives remove {ns}.temp.break_obsidian
""")

	# /task_obsidian (translation ref rewritten)
	write_function(f"{path}/task_obsidian", f"""
# distribution des obsidiennes

# Get player count
execute store result score #count {ns}.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chicken ~ ~ ~ {{Invulnerable:true,Tags:["{ns}.new"],Passengers:[{{id:"minecraft:block_display",transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}},block_state:{{Name:"minecraft:crying_obsidian"}}}}]}}
execute if score #count {ns}.data matches 5.. run summon chicken ~ ~ ~ {{Invulnerable:true,Tags:["{ns}.new"],Passengers:[{{id:"minecraft:block_display",Tags:["{ns}.task_obsidian"],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}},block_state:{{Name:"minecraft:crying_obsidian"}}}}]}}
execute if score #count {ns}.data matches 15.. run summon chicken ~ ~ ~ {{Invulnerable:true,Tags:["{ns}.new"],Passengers:[{{id:"minecraft:block_display",Tags:["{ns}.task_obsidian"],transformation:{{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[-0.5f,0f,-0.5f],scale:[1f,1f,1f]}},block_state:{{Name:"minecraft:crying_obsidian"}}}}]}}

# Spreadplayers
execute as @e[type=chicken,tag={ns}.new] run function {ns}:maps/spread_one_player


# Téléporte le bloc en hauteur pour qu'il chute plus longtemps
execute as @e[type=chicken,tag={ns}.new] at @s positioned over world_surface run tp @s ~ ~-2 ~
tag @e[type=chicken,tag={ns}.new] remove {ns}.new


# Tellraw & playsound
function {ns}:modes/spectres_game/translations/task_obsidian
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
""")


	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #spectres_game_ticks {ns}.data 1

execute as @a[tag=!detached,tag={ns}.to_tp] run function {ns}:modes/_common/teleport_to_death
kill @e[type=item,nbt={{Age:200s}}]

function {ns}:utils/on_death_run_function {{function:"{ns}:modes/spectres_game/death/player"}}
execute if score #spectres_game_seconds {ns}.data matches 1..900 as @e[type=marker,tag={ns}.temp.player,tag=!{ns}.player_dead] run function {ns}:modes/spectres_game/death/detect
execute if score #spectres_game_seconds {ns}.data matches 1..900 as @e[type=marker,tag={ns}.player_dead] run function {ns}:modes/spectres_game/death/for_global

# Si un joueur casse la crying obsidienne executer une fonction
execute as @a[tag=!detached,scores={{{ns}.temp.break_obsidian=1..}}] run function {ns}:modes/spectres_game/obsidian_effect

# Clear les crying obsidiennes des inventaires
clear @a[tag=!detached] crying_obsidian

# Obsidienne poulet
execute as @e[tag={ns}.task_obsidian] at @s unless block ~ ~-2 ~ #minecraft:air run function {ns}:modes/spectres_game/place_obsidian_from_chicken


# Particules sur tous les spectres qui ne sneake pas pour tous les joueurs
execute at @a[tag=!detached,team={ns}.temp.spectre,gamemode=!spectator,predicate=!{ns}:is_sneaking,predicate=!{ns}:in_air,predicate={ns}:is_moving] run particle dolphin ~ ~ ~ 0.2 0 0.2 0 2 normal

# On enlève les particules d'absorption
execute as @a[tag=!detached,nbt={{active_effects:[{{id:"minecraft:absorption"}}]}}] unless data entity @s active_effects[{{id:"minecraft:absorption"}}].show_particles run function {ns}:modes/spectres_game/absorption

# Particules sur tous les spectres, pour les spectres
execute at @a[tag=!detached,gamemode=!spectator,team={ns}.temp.spectre] run particle dust{{color:[1.0,1.0,0.5],scale:1.0}} ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[tag=!detached,team={ns}.temp.spectre]

# Advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,team={ns}.temp.spectre,scores={{{ns}.temp.kills=3..}}] only {ns}:visible/18

# Détection de fin de partie
execute if score #spectres_game_seconds {ns}.data matches 1..900 run function {ns}:modes/spectres_game/detect_end
execute if score #spectres_game_seconds {ns}.data matches 901.. run function {ns}:modes/spectres_game/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
