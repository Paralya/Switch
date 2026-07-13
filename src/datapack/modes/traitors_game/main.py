
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem, Variants, write_kit
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
	write_function(f"{path}/calls/inventory_changed", f"""
tag @s add {ns}.temp.inventory_changed
""")

	# Non-standard call: killed_ninja
	write_function(f"{path}/calls/killed_ninja", f"""
advancement revoke @s only {ns}:traitors_game/killed_ninja
execute if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"traitors_game"}} run scoreboard players add @s {ns}.temp.killed_ninja 1
execute unless score #test_mode {ns}.data matches 1 if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"traitors_game"}} if score @s {ns}.temp.killed_ninja matches 2 run advancement grant @s only {ns}:visible/32
""")

	# Non-standard call: ninja_revenge
	write_function(f"{path}/calls/ninja_revenge", f"""
advancement revoke @s only {ns}:traitors_game/ninja_revenge
execute unless score #test_mode {ns}.data matches 1 if score #engine_state {ns}.data matches 3 if data storage {ns}:main {{current_game:"traitors_game"}} if score @s {ns}.temp.role matches 3..4 run advancement grant @s only {ns}:visible/41
""")


	# /announce_scenarios (translation ref rewritten)
	write_function(f"{path}/announce_scenarios", f"""
function {ns}:modes/traitors_game/translations/announce_scenarios
execute if score #sc_silencieux {ns}.data matches 1 run scoreboard objectives modify {ns}.temp.sidebar displayname {{"text":"Rôles de départ","color":"gold"}}
""")

	# /death/for_detective (translation ref rewritten)
	write_function(f"{path}/death/for_detective", f"""
scoreboard players set #success {ns}.data 0
execute if predicate {ns}:chance/0.5 run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 1 if predicate {ns}:chance/0.5 run scoreboard players set #success {ns}.data 2

function {ns}:modes/traitors_game/translations/death_for_detective
""")

	# /death/for_global (translation ref rewritten)
	write_function(f"{path}/death/for_global", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
clear @a[tag=!detached,predicate={ns}:has_same_id]
function {ns}:modes/_common/death/global_effects

execute if score #sc_silencieux {ns}.data matches 1 if predicate {ns}:chance/0.33 run scoreboard players set @s {ns}.temp.role 0

# Add stolen message
data modify storage {ns}:temp stolen set value ""
execute if entity @s[tag={ns}.floupy] run data modify storage {ns}:temp stolen set value " (flouped)"

# Add solitaire message
data modify storage {ns}:temp solitaireFR set value ""
data modify storage {ns}:temp solitaireEN set value ""
execute if entity @s[tag={ns}.solitaire] run data modify storage {ns}:temp solitaireFR set value " (solitaire)"
execute if entity @s[tag={ns}.solitaire] run data modify storage {ns}:temp solitaireEN set value " (solitary)"

function {ns}:modes/traitors_game/translations/death_for_global

kill @s
execute unless score #sc_silencieux {ns}.data matches 1 run function {ns}:modes/traitors_game/update_sidebar
""")

	# /death/player (translation ref rewritten)
	write_function(f"{path}/death/player", f"""
# Voleur (Floupy role = 7)
execute if entity @a[tag=!detached,scores={{{ns}.temp.kills=-1..,{ns}.temp.role=7}}] run function {ns}:modes/traitors_game/roles/vol

# Death management
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s {ns}.temp.role matches 3 run scoreboard players set @s {ns}.alive 0
execute if score @s {ns}.temp.role matches 3 run scoreboard players set @s {ns}.temp.role 4
attribute @s[scores={{{ns}.alive=0}}] max_health base reset
tag @s[scores={{{ns}.alive=0}}] add {ns}.to_tp
gamemode spectator @s[scores={{{ns}.alive=0}}]
effect clear @s[scores={{{ns}.alive=0}}]


# Second life management for Ninja role
function {ns}:modes/traitors_game/translations/death_player
attribute @s[scores={{{ns}.alive=1..,{ns}.temp.role=4}}] max_health base set 10.0
attribute @s[scores={{{ns}.alive=1..,{ns}.temp.role=4}}] movement_speed base set 0.115
tag @s[scores={{{ns}.alive=1..,{ns}.temp.role=4}}] add {ns}.ninja_death
""")

	# /death/process
	write_function(f"{path}/death/process", f"""
scoreboard players add @s {ns}.temp.cooldown 1

execute if score @s {ns}.temp.cooldown matches 1 run function {ns}:modes/traitors_game/death/for_detective
execute if score @s {ns}.temp.cooldown matches 160 run function {ns}:modes/traitors_game/death/for_global
""")

	# /death/to_tp
	write_function(f"{path}/death/to_tp", f"""
function {ns}:maps/spread_one_player
execute at @s run playsound entity.wither.break_block ambient @s
tag @s remove {ns}.ninja_death
""")

	# /detect_end (translation ref rewritten)
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
# Role reminder (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
execute if entity @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=..4}}] run scoreboard players add #game_state {ns}.data 1
execute if entity @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=5}}] run scoreboard players add #game_state {ns}.data 2
execute if entity @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=6}}] run scoreboard players add #game_state {ns}.data 4

# Details with scenarios
execute if score #sc_solitaire {ns}.data matches 1 if entity @a[tag={ns}.solitaire,scores={{{ns}.alive=1..}}] run scoreboard players set #game_state {ns}.data 8
execute if score #sc_solitaire {ns}.data matches 1 if score #game_state {ns}.data matches 8 unless entity @a[tag=!{ns}.solitaire,scores={{{ns}.alive=1..}}] run scoreboard players set #game_state {ns}.data 9
execute if score #sc_floupy {ns}.data matches 1 if entity @a[scores={{{ns}.alive=1..,{ns}.temp.role=7}}] run scoreboard players set #game_state {ns}.data 10

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
execute if score #game_state {ns}.data matches 1 run scoreboard players set #traitors_game_seconds {ns}.data 100000
execute if score #game_state {ns}.data matches 2 run scoreboard players set #traitors_game_seconds {ns}.data 100000
execute if score #game_state {ns}.data matches 4 run scoreboard players set #traitors_game_seconds {ns}.data 100000
execute if score #game_state {ns}.data matches 9 run scoreboard players set #traitors_game_seconds {ns}.data 100000
execute if score #traitors_game_seconds {ns}.data matches 100000 as @e[type=marker,tag={ns}.player_dead] run function {ns}:modes/traitors_game/death/for_global

# Cas des vainqueurs
execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=..4}}] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=5}},tag=!{ns}.traitors_game.big_traitor] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 4 as @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=6}}] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 9 as @a[tag=!detached,scores={{{ns}.alive=1..}},tag={ns}.solitaire] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 4 unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=6}}] only {ns}:visible/5
execute if score #traitors_game_seconds {ns}.data matches 1200 if score #game_state {ns}.data matches 1 as @a[scores={{{ns}.alive=1..,{ns}.temp.role=..4}}] at @s run function {ns}:engine/add_win

# Cas des égalités
function {ns}:modes/traitors_game/translations/detect_end


# Visuel de fin de partie
execute if score #traitors_game_seconds {ns}.data matches 1200.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /give_items
	# The armour and the sword each come in two flavours, drawn by a coin flip.
	# The three slotless gives at the end used to fill the last free slots in order (the pickaxe in
	# hotbar.2, the planks in hotbar.5, and the anvil overflowing into inventory.0); they now say so.
	write_kit(f"{path}/give_items", Kit("traitors_game", pre=f"""
function {ns}:utils/reset_attributes
attribute @s attack_speed base set 1024

scoreboard players set #armor {ns}.data 0
scoreboard players set #sword {ns}.data 0
execute if predicate {ns}:chance/0.5 run scoreboard players set #armor {ns}.data 1
execute if predicate {ns}:chance/0.5 run scoreboard players set #sword {ns}.data 1
""", items=(
		KitItem(slot="armor.head", variants=Variants(score="#armor {ns}.data", items=(
			"iron_helmet[enchantments={protection:2}]", "diamond_helmet"))),
		KitItem(slot="armor.chest", variants=Variants(score="#armor {ns}.data", items=(
			"diamond_chestplate", "iron_chestplate[enchantments={protection:1}]"))),
		KitItem(slot="armor.legs", variants=Variants(score="#armor {ns}.data", items=(
			"iron_leggings[enchantments={protection:2}]", "diamond_leggings"))),
		KitItem(slot="armor.feet", variants=Variants(score="#armor {ns}.data", items=(
			"diamond_boots", "iron_boots[enchantments={protection:2}]"))),
		KitItem(role="melee", slot="hotbar.0", variants=Variants(score="#sword {ns}.data", items=(
			"iron_sword[enchantments={sharpness:2}]", "diamond_sword[enchantments={sharpness:1}]"))),
		KitItem(role="ranged", item="bow[enchantments={power:1}]", slot="hotbar.1"),
		KitItem(role="axe", slot="hotbar.3", item='stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}]]'),
		KitItem(role="food", item="apple", count=16, slot="hotbar.4"),
		KitItem(role="heal", item="golden_apple", count=6, slot="hotbar.8"),
		KitItem(role="ammo", item="arrow", count=28, slot="hotbar.6"),
		KitItem(role="mobility", item="water_bucket", slot="hotbar.7"),
		KitItem(role="tool", slot="hotbar.2", loot="{ns}:traitors_game/all_starter"),
		KitItem(role="blocks", item="oak_planks", count=100, slot="hotbar.5"),
		KitItem(item="anvil", slot="inventory.0"),
	), post=f"""
# Random items (0 or 1 or 2)
execute if predicate {ns}:chance/0.5 run function {ns}:modes/traitors_game/random_items
execute if predicate {ns}:chance/0.5 run function {ns}:modes/traitors_game/random_items
"""))

	# /joined
	write_function(f"{path}/joined", f"""
# Ici : dans tous les cas, tuer la personne qui join (+ exception pour le ninja)
execute if score @s {ns}.temp.role matches 3 run scoreboard players set @s {ns}.temp.role 4
function {ns}:modes/traitors_game/death/player

# If new player, make sure to remove all tags
tag @s remove {ns}.solitaire
tag @s remove {ns}.floupy
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

# Kill tout le monde
execute if score #process_end {ns}.data matches 1 run scoreboard objectives remove {ns}.temp.role
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {ns}:modes/traitors_game/death/player
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /random_items (translation ref rewritten)
	write_function(f"{path}/random_items", f"""
function {ns}:modes/traitors_game/translations/random_items

execute store result score #random {ns}.data run random value 0..46
execute if score #random {ns}.data matches 0 run give @s iron_ore 32
execute if score #random {ns}.data matches 1 run give @s gold_ore 32
execute if score #random {ns}.data matches 2 run give @s diamond_ore 3
execute if score #random {ns}.data matches 3 run give @s spyglass
execute if score #random {ns}.data matches 4 run give @s ender_pearl
execute if score #random {ns}.data matches 5 run give @s ender_pearl
execute if score #random {ns}.data matches 6 run give @s netherite_shovel[enchantments={{efficiency:10}},item_name={{"text":"Teuse","color":"gold"}},lore=[{{"text":"C'est la pelle Teuse MDR !","color":"white","italic":false}}]]
execute if score #random {ns}.data matches 7 run give @s golden_sword[damage=30,enchantments={{knockback:10}},item_name={{"text":"Baseball Bat","color":"gold"}},lore=[{{"text":"Excitant n'est-ce pas ?","color":"white","italic":false}}]]
execute if score #random {ns}.data matches 8 run give @s lava_bucket 2
execute if score #random {ns}.data matches 9 run give @s golden_apple 4
execute if score #random {ns}.data matches 10 run give @s golden_apple 2
execute if score #random {ns}.data matches 11 run give @s arrow 12
execute if score #random {ns}.data matches 12 run give @s arrow 20
execute if score #random {ns}.data matches 13 run give @s diamond 5
execute if score #random {ns}.data matches 14 run give @s trident
execute if score #random {ns}.data matches 15 run give @s creeper_spawn_egg 2
execute if score #random {ns}.data matches 16 run give @s polar_bear_spawn_egg 2
execute if score #random {ns}.data matches 17 run give @s zoglin_spawn_egg 2
execute if score #random {ns}.data matches 18 run give @s fox_spawn_egg 8
execute if score #random {ns}.data matches 19 run give @s frog_spawn_egg 8
execute if score #random {ns}.data matches 20 run give @s pufferfish_spawn_egg[item_name={{"text":"Bubulle","color":"yellow"}}] 8
execute if score #random {ns}.data matches 21 run give @s elytra[damage=415]
execute if score #random {ns}.data matches 22 run give @s spectral_arrow 32
execute if score #random {ns}.data matches 23 run give @s splash_potion[potion_contents="minecraft:long_slow_falling"]
execute if score #random {ns}.data matches 24 run give @s splash_potion[potion_contents="minecraft:strong_swiftness"]
execute if score #random {ns}.data matches 25 run give @s splash_potion[potion_contents="minecraft:strong_healing"]
execute if score #random {ns}.data matches 26 run give @s splash_potion[potion_contents="minecraft:strong_leaping"]
execute if score #random {ns}.data matches 27 run give @s enchanted_book[stored_enchantments={{unbreaking:3}}]
execute if score #random {ns}.data matches 28 run give @s enchanted_book[stored_enchantments={{efficiency:5}}]
execute if score #random {ns}.data matches 29 run give @s enchanted_book[stored_enchantments={{protection:1}}] 2
execute if score #random {ns}.data matches 30 run give @s enchanted_book[stored_enchantments={{projectile_protection:2}}]
execute if score #random {ns}.data matches 31 run give @s enchanted_book[stored_enchantments={{blast_protection:2}}]
execute if score #random {ns}.data matches 32 run give @s enchanted_book[stored_enchantments={{fire_protection:2}}]
execute if score #random {ns}.data matches 33 run give @s enchanted_book[stored_enchantments={{thorns:1}}]
execute if score #random {ns}.data matches 34 run give @s enchanted_book[stored_enchantments={{depth_strider:3}}]
execute if score #random {ns}.data matches 35 run give @s enchanted_book[stored_enchantments={{feather_falling:4}}]
execute if score #random {ns}.data matches 36 run give @s enchanted_book[stored_enchantments={{sharpness:2}}]
execute if score #random {ns}.data matches 37 run give @s enchanted_book[stored_enchantments={{fire_aspect:1}}]
execute if score #random {ns}.data matches 38 run give @s enchanted_book[stored_enchantments={{knockback:2}}]
execute if score #random {ns}.data matches 39 run give @s enchanted_book[stored_enchantments={{fortune:3}}]
execute if score #random {ns}.data matches 40 run give @s enchanted_book[stored_enchantments={{power:2}}]
execute if score #random {ns}.data matches 41 run give @s enchanted_book[stored_enchantments={{flame:1}}]
execute if score #random {ns}.data matches 42 run give @s enchanted_book[stored_enchantments={{infinity:1}}]
execute if score #random {ns}.data matches 43 run give @s enchanted_book[stored_enchantments={{punch:2}}]
execute if score #random {ns}.data matches 44 run give @s enchanted_book[stored_enchantments={{mending:10}}] 4
execute if score #random {ns}.data matches 45 run give @s enchanted_book[stored_enchantments={{vanishing_curse:10}}] 4
execute if score #random {ns}.data matches 46 run loot give @s loot {ns}:traitors_game/bomber_man
""")

	# /roles/announcement (translation ref rewritten)
	write_function(f"{path}/roles/announcement", f"""
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25

item replace entity @a[scores={{{ns}.temp.role=5..6}}] inventory.26 with potion[item_name={{"text":"Potion de Traître","color":"white"}},potion_contents={{custom_color:7505152,custom_effects:[{{id:"speed",amplifier:0b,duration:1200}},{{id:"strength",amplifier:0b,duration:200}},{{id:"instant_health",amplifier:0b,duration:20}},{{id:"resistance",amplifier:0b,duration:300}}]}}]

function {ns}:modes/traitors_game/translations/roles_announcement
""")

	# /roles/choose_solitaire (translation ref rewritten)
	write_function(f"{path}/roles/choose_solitaire", f"""
# Choose a solitaire alive
tag @r[tag=!detached,scores={{{ns}.alive=1..,{ns}.temp.role=2..4}}] add {ns}.solitaire

# Tellraw
function {ns}:modes/traitors_game/translations/roles_choose_solitaire
attribute @p[tag={ns}.solitaire] max_health base set 24
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
tag @s add {ns}.temp
tag @s remove {ns}.solitaire
tag @s remove {ns}.floupy

# Role selection (1 = inspecteur, 2 = innocent, 3 & 4 = ninja, 5 = traitor, 6 = big traitor)
scoreboard players add #next_player_id {ns}.data 1
scoreboard players add #next_role {ns}.data 1
# Inspecteur
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.inspector @s
execute if score #next_role {ns}.data matches 1 run scoreboard players set @s {ns}.temp.role 1
execute if score #next_role {ns}.data matches 1 run attribute @s max_health base set 16
execute if score #next_role {ns}.data matches 1 run item replace entity @s hotbar.1 with bow[enchantments={{power:2}},attribute_modifiers=[{{type:"movement_speed",slot:"mainhand",id:"{ns}.movement_speed",amount:0.16,operation:"add_multiplied_total"}},{{type:"movement_speed",slot:"offhand",id:"{ns}.movement_speed",amount:0.16,operation:"add_multiplied_total"}}]]
# Traitre
execute if score #next_role {ns}.data matches 2 run scoreboard players set @s {ns}.temp.role 5
# Ninja
execute if score #next_role {ns}.data matches 3 run scoreboard players set @s {ns}.temp.role 3
execute if score #next_role {ns}.data matches 3 run attribute @s movement_speed base set 0.115
# Traitre
execute if score #next_role {ns}.data matches 4 run scoreboard players set @s {ns}.temp.role 5
# Innocents (but first is Floupy if scenario)
execute if score #next_role {ns}.data matches 5..6 run scoreboard players set @s {ns}.temp.role 2
execute if score #next_role {ns}.data matches 5 if score #sc_floupy {ns}.data matches 1 run function {ns}:modes/traitors_game/random_items
execute if score #next_role {ns}.data matches 5 if score #sc_floupy {ns}.data matches 1 run scoreboard players set @s {ns}.temp.role 7
execute if score #next_role {ns}.data matches 5 if score #sc_floupy {ns}.data matches 1 run tag @s add {ns}.floupy
# Gros Traitre
execute if score #next_role {ns}.data matches 7 run scoreboard players set @s {ns}.temp.role 6
execute if score #next_role {ns}.data matches 7 run attribute @s max_health base set 30
# Innocents
execute if score #next_role {ns}.data matches 8..9 run scoreboard players set @s {ns}.temp.role 2
# Traitre
execute if score #next_role {ns}.data matches 10 run scoreboard players set @s {ns}.temp.role 5
# Innocent
execute if score #next_role {ns}.data matches 11 run scoreboard players set @s {ns}.temp.role 2
# Traitre
execute if score #next_role {ns}.data matches 12 run scoreboard players set @s {ns}.temp.role 5
# Innocent
execute if score #next_role {ns}.data matches 13 run scoreboard players set @s {ns}.temp.role 2
# Traitre
execute if score #next_role {ns}.data matches 14 run scoreboard players set @s {ns}.temp.role 5

# Reroll at 7
execute if score #next_role {ns}.data matches 14 run scoreboard players set #next_role {ns}.data 7


## Linked marker for offline players
setblock 0 11 0 yellow_shulker_box
loot insert 0 11 0 loot {ns}:get_username
summon marker 0 11 0 {{Tags:["{ns}.temp.player","{ns}.new"]}}
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute as @e[tag={ns}.new] run function {ns}:modes/traitors_game/roles/marker
setblock 0 11 0 air

tag @s remove {ns}.temp
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", f"""
scoreboard players operation @s {ns}.id = #player_id {ns}.id
data modify entity @s data.name set from block 0 11 0 Items[0].components."minecraft:profile".name
data modify entity @s Tags set from entity @p[tag={ns}.temp] Tags
scoreboard players operation @s {ns}.temp.role = @p[tag={ns}.temp] {ns}.temp.role
tag @s add {ns}.temp.player
""")

	# /roles/vol (translation ref rewritten)
	write_function(f"{path}/roles/vol", f"""
# Tag the Floupy and copy new role
tag @p[tag=!detached,scores={{{ns}.temp.kills=-1..,{ns}.temp.role=7}}] add {ns}.temp.floupy
scoreboard players operation #role {ns}.data = @s {ns}.temp.role
scoreboard players operation #player_id {ns}.id = @p[tag={ns}.temp.floupy] {ns}.id
scoreboard players operation @p[tag={ns}.temp.floupy] {ns}.temp.role = #role {ns}.data
scoreboard players operation @e[type=marker,predicate={ns}:has_same_id] {ns}.temp.role = #role {ns}.data

# Copy solitaire if any
execute if entity @s[tag={ns}.solitaire] run tag @p[tag={ns}.temp.floupy] add {ns}.solitaire
execute if entity @s[tag={ns}.solitaire] run tag @e[type=marker,predicate={ns}:has_same_id] add {ns}.solitaire

# Tellraws
function {ns}:modes/traitors_game/translations/roles_vol

# Effects
execute if score #role {ns}.data matches 1 run attribute @p[tag={ns}.temp.floupy] max_health base set 16
execute if score #role {ns}.data matches 1 run team join {ns}.temp.inspector @p[tag={ns}.temp.floupy]
execute if score #role {ns}.data matches 3..4 run attribute @p[tag={ns}.temp.floupy] movement_speed base set 0.115
execute if score #role {ns}.data matches 7 run attribute @p[tag={ns}.temp.floupy] max_health base set 30

# Remove tag
scoreboard players reset @a[tag={ns}.temp.floupy] {ns}.temp.kills
tag @a[tag={ns}.temp.floupy] remove {ns}.temp.floupy
""")

	# /second (translation ref rewritten)
	write_function(f"{path}/second", f"""
scoreboard players add #traitors_game_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

execute if score #traitors_game_seconds {ns}.data matches 0.. run function {ns}:modes/traitors_game/xp_bar
execute if score #traitors_game_seconds {ns}.data matches 0 run function {ns}:modes/traitors_game/roles/announcement
execute if score #traitors_game_seconds {ns}.data matches 5 if score #has_scenarios {ns}.data matches 1 run function {ns}:modes/traitors_game/announce_scenarios

# Lootboxes summon
execute if score #traitors_game_seconds {ns}.data matches 30 run function {ns}:modes/traitors_game/summon_lootboxes
execute if score #traitors_game_seconds {ns}.data matches 90 run function {ns}:modes/traitors_game/summon_lootboxes
execute if score #traitors_game_seconds {ns}.data matches 150 run function {ns}:modes/traitors_game/summon_lootboxes

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,gamemode=survival,distance=0.1..48] run effect give @s glowing 2 0 true
execute as @e[type=chest_minecart] if data entity @s Items[0] run data modify entity @s Glowing set value 0b
execute as @e[type=chest_minecart] run data modify entity @s Glowing set value 1b

# Innocent solitaire
execute if score #sc_solitaire {ns}.data matches 1 if score #traitors_game_seconds {ns}.data matches 90 run function {ns}:modes/traitors_game/roles/choose_solitaire

# Actionbar
function {ns}:modes/_common/compute_mins_secs
function {ns}:modes/traitors_game/translations/second
""")

	# /start (brace-heavy + § chars: plain string, translation ref rewritten)
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] {ns}.alive 1
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs + give d'items
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"traitors_game", maps:["traitor_original","mushroom_plains","trials_run","hider_mansion","bancalvivor_s3","stardust_pvp_zone","la_fromagerie"]}}

function {ns}:modes/_common/standard_combat_rules

function {ns}:modes/traitors_game/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 1210
scoreboard players set #traitors_game_seconds {ns}.data -15
scoreboard players set #traitors_game_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #cut_clean {ns}.data 1

scoreboard objectives add {ns}.temp.role dummy
scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.sidebar dummy {{"text":"Remaining Roles","color":"gold"}}
scoreboard objectives add {ns}.temp.killed_ninja dummy
scoreboard objectives add {ns}.temp.kills playerKillCount
scoreboard objectives setdisplay sidebar {ns}.temp.sidebar

team add {ns}.temp.inspector {{"text":"[Inspector]","color":"green"}}
team modify {ns}.temp.inspector color green

team add {ns}.temp.sidebar.5 {{"text":"[Sidebar 5]"}}
team add {ns}.temp.sidebar.4 {{"text":"[Sidebar 4]"}}
team add {ns}.temp.sidebar.3 {{"text":"[Sidebar 3]"}}
team add {ns}.temp.sidebar.2 {{"text":"[Sidebar 2]"}}
team add {ns}.temp.sidebar.1 {{"text":"[Sidebar 1]"}}
team add {ns}.temp.sidebar.0 {{"text":"[Sidebar 0]"}}
team modify {ns}.temp.sidebar.5 suffix [{{"text":"Inspector: ","color":"green"}},{{"text":"1","color":"yellow"}}]
team modify {ns}.temp.sidebar.4 suffix [{{"text":"Ninja: ","color":"green"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.3 suffix [{{"text":"Innocent: ","color":"green"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.2 suffix [{{"text":"Traitor: ","color":"red"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.1 suffix [{{"text":"Big Traitor: ","color":"dark_red"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.0 suffix [{{"text":"Floupy: ","color":"gold"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.5 color green
team modify {ns}.temp.sidebar.4 color green
team modify {ns}.temp.sidebar.3 color green
team modify {ns}.temp.sidebar.2 color red
team modify {ns}.temp.sidebar.1 color dark_red
team modify {ns}.temp.sidebar.0 color gold
team join {ns}.temp.sidebar.5 §5
team join {ns}.temp.sidebar.4 §4
team join {ns}.temp.sidebar.3 §3
team join {ns}.temp.sidebar.2 §2
team join {ns}.temp.sidebar.1 §1
team join {ns}.temp.sidebar.0 §0
scoreboard players set §5 {ns}.temp.sidebar 5
scoreboard players set §4 {ns}.temp.sidebar 4
scoreboard players set §3 {ns}.temp.sidebar 3
scoreboard players set §2 {ns}.temp.sidebar 2
scoreboard players set §1 {ns}.temp.sidebar 1
scoreboard players set §0 {ns}.temp.sidebar 0
scoreboard players display numberformat §5 {ns}.temp.sidebar blank
scoreboard players display numberformat §4 {ns}.temp.sidebar blank
scoreboard players display numberformat §3 {ns}.temp.sidebar blank
scoreboard players display numberformat §2 {ns}.temp.sidebar blank
scoreboard players display numberformat §1 {ns}.temp.sidebar blank
scoreboard players display numberformat §0 {ns}.temp.sidebar blank

## Scenarios
# Get new players and players count
scoreboard players add @a[tag=!detached] {ns}.stats.played.traitors_game 0
execute store result score #starting_count {ns}.data if entity @a[tag=!detached]
execute store result score #new_players {ns}.data if entity @a[tag=!detached,scores={{{ns}.stats.played.traitors_game=0}}]
# Traitors, affichage des scénarios supplémentaires en début de partie :
# - Détraqué : Innocent solitaire (ça peut être le ninja) (role = 8)
# - Floupy : Voleur (annule la deuxième vie du ninja) (role = 7)
# - Silencieux : n'importe qui peut avoir (1st kill non affiché).
scoreboard players set #sc_solitaire {ns}.data 0
scoreboard players set #sc_floupy {ns}.data 0
scoreboard players set #sc_silencieux {ns}.data 0
execute unless score #new_players {ns}.data matches 3.. if score #starting_count {ns}.data matches 8.. if predicate {ns}:chance/0.5 run scoreboard players set #sc_solitaire {ns}.data 1
execute unless score #new_players {ns}.data matches 3.. if score #starting_count {ns}.data matches 8.. if predicate {ns}:chance/0.5 run scoreboard players set #sc_floupy {ns}.data 1
execute unless score #new_players {ns}.data matches 3.. if predicate {ns}:chance/0.5 run scoreboard players set #sc_silencieux {ns}.data 1
scoreboard players set #has_scenarios {ns}.data 1
execute if score #sc_solitaire {ns}.data matches 0 if score #sc_floupy {ns}.data matches 0 if score #sc_silencieux {ns}.data matches 0 run scoreboard players set #has_scenarios {ns}.data 0

# Choix des rôles
scoreboard players set #next_role {ns}.data 0
scoreboard players set #next_player_id {ns}.data 0
execute as @a[tag=!detached] at @s run function {ns}:modes/traitors_game/give_items
execute as @a[tag=!detached,sort=random] at @s run function {ns}:modes/traitors_game/roles/main
function {ns}:modes/traitors_game/update_sidebar
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.inspector
team remove {ns}.temp.sidebar.5
team remove {ns}.temp.sidebar.4
team remove {ns}.temp.sidebar.3
team remove {ns}.temp.sidebar.2
team remove {ns}.temp.sidebar.1

scoreboard objectives remove {ns}.temp.role
scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.sidebar
scoreboard objectives remove {ns}.temp.killed_ninja
scoreboard objectives remove {ns}.temp.kills

tag @a remove {ns}.solitaire
""")

	# /summon_lootboxes (translation ref rewritten)
	write_function(f"{path}/summon_lootboxes", f"""
# Get player count
execute store result score #count {ns}.data if entity @a[tag=!detached,gamemode=!spectator]

# Summon lootboxes depending on the player count
summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 6.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 10.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 14.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 18.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 22.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 26.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}
execute if score #count {ns}.data matches 30.. run summon chest_minecart ~ ~ ~ {{LootTable:"{ns}:traitors_game/lootbox",Tags:["{ns}.new"]}}

# Spreadplayers
execute as @e[type=chest_minecart,tag={ns}.new] run function {ns}:maps/spread_one_player
tag @e[type=chest_minecart,tag={ns}.new] remove {ns}.new

# Tellraw & playsound
function {ns}:modes/traitors_game/translations/summon_lootboxes
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
""")


	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #traitors_game_ticks {ns}.data 1

tp @e[type=vex] 0 -10000 0
kill @e[type=item,nbt={{Item:{{id:"minecraft:chest_minecart"}}}}]
execute as @e[type=chest_minecart] unless data entity @s Items[0] unless data entity @s LootTable run kill @s
execute as @a[tag=!detached,tag={ns}.to_tp] run function {ns}:modes/_common/teleport_to_death
execute as @a[tag=!detached,tag={ns}.ninja_death] run function {ns}:modes/traitors_game/death/to_tp

# Glow particles pour le détective, particules rouges pour traitres (si >= 5 joueurs)
execute at @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=1}}] run particle glow ~ ~ ~ 0.2 0 0.2 0 5
execute if score #starting_count {ns}.data matches 5.. at @a[tag=!detached,gamemode=!spectator,scores={{{ns}.temp.role=5..6}}] run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} ~ ~2.1 ~ 0.2 0 0.2 0 1 force @a[scores={{{ns}.temp.role=5..6}}]

function {ns}:utils/on_death_run_function {{function:"{ns}:modes/traitors_game/death/player"}}
execute if score #traitors_game_seconds {ns}.data matches 1..1200 as @e[type=marker,tag={ns}.temp.player,tag=!{ns}.player_dead] run function {ns}:modes/_common/death/detect
execute if score #traitors_game_seconds {ns}.data matches 1..1200 as @e[type=marker,tag={ns}.player_dead] run function {ns}:modes/traitors_game/death/process

# Voleur
execute if score #sc_floupy {ns}.data matches 1 run scoreboard players reset @a[scores={{{ns}.temp.kills=-1}}] {ns}.temp.kills
execute if score #sc_floupy {ns}.data matches 1 run scoreboard players set @a[scores={{{ns}.temp.kills=1..}}] {ns}.temp.kills -1

# Détection de fin de partie
execute if score #traitors_game_seconds {ns}.data matches 1..1200 run function {ns}:modes/traitors_game/detect_end
execute if score #traitors_game_seconds {ns}.data matches 1201.. run function {ns}:modes/traitors_game/process_end
""")

	# /update_sidebar
	write_function(f"{path}/update_sidebar", f"""
data modify storage {ns}:main input set value {{inspecteur:0,ninja:0,innocent:0,traitre:0,gros_traitre:0,floupy:0}}
execute store result storage {ns}:main input.inspecteur int 1 if entity @e[type=marker,scores={{{ns}.temp.role=1}}]
execute store result storage {ns}:main input.ninja int 1 if entity @e[type=marker,scores={{{ns}.temp.role=3..4}}]
execute store result storage {ns}:main input.innocent int 1 if entity @e[type=marker,scores={{{ns}.temp.role=2}}]
execute store result storage {ns}:main input.traitre int 1 if entity @e[type=marker,scores={{{ns}.temp.role=5}}]
execute store result storage {ns}:main input.gros_traitre int 1 if entity @e[type=marker,scores={{{ns}.temp.role=6}}]
execute store result storage {ns}:main input.floupy int 1 if entity @e[type=marker,scores={{{ns}.temp.role=7}}]
execute if data storage {ns}:main input{{inspecteur:0}} run scoreboard players reset §5 {ns}.temp.sidebar
execute if data storage {ns}:main input{{ninja:0}} run scoreboard players reset §4 {ns}.temp.sidebar
execute if data storage {ns}:main input{{innocent:0}} run scoreboard players reset §3 {ns}.temp.sidebar
execute if data storage {ns}:main input{{traitre:0}} run scoreboard players reset §2 {ns}.temp.sidebar
execute if data storage {ns}:main input{{gros_traitre:0}} run scoreboard players reset §1 {ns}.temp.sidebar
execute if data storage {ns}:main input{{floupy:0}} run scoreboard players reset §0 {ns}.temp.sidebar

function {ns}:modes/traitors_game/update_sidebar_macro with storage {ns}:main input
""")

	# /update_sidebar_macro (macro function with $ lines)
	write_function(f"{path}/update_sidebar_macro", f"""
$team modify {ns}.temp.sidebar.5 suffix [{{"text":"Inspector: ","color":"green"}},{{"text":"$(inspecteur)","color":"yellow"}}]
$team modify {ns}.temp.sidebar.4 suffix [{{"text":"Ninja: ","color":"green"}},{{"text":"$(ninja)","color":"yellow"}}]
$team modify {ns}.temp.sidebar.3 suffix [{{"text":"Innocent: ","color":"green"}},{{"text":"$(innocent)","color":"yellow"}}]
$team modify {ns}.temp.sidebar.2 suffix [{{"text":"Traitor: ","color":"red"}},{{"text":"$(traitre)","color":"yellow"}}]
$team modify {ns}.temp.sidebar.1 suffix [{{"text":"Big Traitor: ","color":"dark_red"}},{{"text":"$(gros_traitre)","color":"yellow"}}]
$team modify {ns}.temp.sidebar.0 suffix [{{"text":"Floupy: ","color":"gold"}},{{"text":"$(floupy)","color":"yellow"}}]
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
