
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "beat_the_kings"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode, targets={"joined": f"{ns}:modes/beat_the_kings/death/player"})
	write_function(f"{path}/calls/inventory_changed", f"""
tag @s add {ns}.temp.inventory_changed
""")
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] {ns}.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"{mode}", maps:["traitor_original","mushroom_plains","dark_forest_hills","zonweeb_highschool","hider_mansion","nuketown_no_barrier"]}}

execute in {ns}:game run gamerule minecraft:mob_griefing true
execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true

function {translations}/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 901
scoreboard players set #beat_the_kings_seconds {ns}.data -10
scoreboard players set #beat_the_kings_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0

scoreboard objectives add {ns}.temp.cooldown dummy
scoreboard objectives add {ns}.temp.killed_kings teamkill.dark_purple
scoreboard objectives setdisplay list {ns}.health

# Choix des rôles + give d'items
team add {ns}.temp.civil {{"text":"[Civil]","color":"gray"}}
team add {ns}.temp.king {{"text":"[King]","color":"dark_purple"}}
team modify {ns}.temp.civil color gray
team modify {ns}.temp.king color dark_purple
scoreboard players set #next_role {ns}.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/roles/main

# Equilibrage : on adapte le nombre de gaps du roi au ratio civils/roi (4 civils/roi = optimal = 8 gaps)
function {path}/balance_king_gaps

execute as @a[tag=!detached] at @s run function {path}/give_items

give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion dévastatrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:7039516,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:110,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion destructrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:5711412,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:1b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:320,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion de malnutrition du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{custom_color:12763581,custom_effects:[{{id:"mining_fatigue",amplifier:1b,duration:60}},{{id:"hunger",amplifier:1b,duration:300}},{{id:"poison",amplifier:1b,duration:40}}]}}]

give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion dévastatrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:7039516,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:110,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion destructrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:5711412,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:1b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:320,show_particles:0b}}]}}]
give @r[team={ns}.temp.king] splash_potion[item_name={{"text":"Potion de malnutrition du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{custom_color:12763581,custom_effects:[{{id:"mining_fatigue",amplifier:1b,duration:60}},{{id:"hunger",amplifier:1b,duration:300}},{{id:"poison",amplifier:1b,duration:40}}]}}]

# Teleportation des joueurs ensemble (par team)
tp @a[team={ns}.temp.civil] @r[team={ns}.temp.civil]
tp @a[team={ns}.temp.king] @r[team={ns}.temp.king]
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.civil
team remove {ns}.temp.king

scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.killed_kings
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #beat_the_kings_ticks {ns}.data 1

execute as @a[tag=!detached,tag={ns}.to_tp] run function {ns}:modes/_common/teleport_to_death

function {ns}:utils/on_death_run_function {{function:"{path}/death/player"}}
execute if score #beat_the_kings_seconds {ns}.data matches 1..900 as @e[type=marker,tag={ns}.temp.player,tag=!{ns}.player_dead] run function {ns}:modes/_common/death/detect
execute if score #beat_the_kings_seconds {ns}.data matches 1..900 as @e[type=marker,tag={ns}.player_dead] run function {path}/death/for_global

# Advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @a[scores={{{ns}.temp.killed_kings=1..}}] only {ns}:visible/66

# Détection de fin de partie
execute if score #beat_the_kings_seconds {ns}.data matches 1..900 run function {path}/detect_end
execute if score #beat_the_kings_seconds {ns}.data matches 901.. run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #beat_the_kings_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

execute if score #beat_the_kings_seconds {ns}.data matches 0.. run function {path}/xp_bar
execute if score #beat_the_kings_seconds {ns}.data matches 0.. run effect give @a[tag=!detached,team={ns}.temp.king] resistance infinite 3 true
execute if score #beat_the_kings_seconds {ns}.data matches 0 run function {path}/roles/announcement

execute if score #beat_the_kings_seconds {ns}.data matches 30 as @a[tag=!detached,team={ns}.temp.king] at @s run playsound entity.experience_orb.pickup ambient @s

# Remaining time
function {ns}:modes/_common/compute_mins_secs
function {translations}/second
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
execute if entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.civil] unless entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.king] run scoreboard players add #game_state {ns}.data 1
execute if entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.king] unless entity @a[scores={{{ns}.alive=1..}},team={ns}.temp.civil] run scoreboard players add #game_state {ns}.data 2
execute unless entity @a[scores={{{ns}.alive=1..}}] run scoreboard players add #game_state {ns}.data 3

# 1 = que des civils
# 2 = que des kings
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..3 run scoreboard players set #beat_the_kings_seconds {ns}.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.civil] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,scores={{{ns}.alive=1..}},team={ns}.temp.king] at @s run function {ns}:engine/add_win

# Visuel de fin de partie
execute if score #beat_the_kings_seconds {ns}.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {path}/death/player
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /give_items
	write_function(f"{path}/give_items", f"""
# Starter kit
item replace entity @s[team={ns}.temp.civil] armor.head with iron_helmet
item replace entity @s[team={ns}.temp.civil] armor.chest with diamond_chestplate
item replace entity @s[team={ns}.temp.civil] armor.legs with chainmail_leggings
item replace entity @s[team={ns}.temp.civil] armor.feet with iron_boots[enchantments={{feather_falling:2}}]
item replace entity @s[team={ns}.temp.civil] weapon.offhand with oak_planks 64
item replace entity @s[team={ns}.temp.civil] hotbar.0 with iron_sword[enchantments={{sharpness:5}}]
item replace entity @s[team={ns}.temp.civil] hotbar.1 with bow
item replace entity @s[team={ns}.temp.civil] hotbar.7 with water_bucket
item replace entity @s[team={ns}.temp.civil] hotbar.8 with golden_apple 5
item replace entity @s[team={ns}.temp.civil] inventory.0 with arrow 16

item replace entity @s[team={ns}.temp.king] armor.head with golden_helmet[enchantments={{protection:3,unbreaking:10}}]
item replace entity @s[team={ns}.temp.king] hotbar.0 with water_bucket
item replace entity @s[team={ns}.temp.king] hotbar.1 with golden_sword[enchantments={{unbreaking:3,sharpness:3}}]
item replace entity @s[team={ns}.temp.king] hotbar.3 with bow[enchantments={{flame:1,punch:1}}]
execute if entity @s[team={ns}.temp.king] run function {path}/give_king_gaps with storage {ns}:temp king_gaps
item replace entity @s[team={ns}.temp.king] hotbar.8 with oak_planks 64
item replace entity @s[team={ns}.temp.king] inventory.0 with arrow 45
effect give @s[team={ns}.temp.king] resistance infinite 3 true
effect give @s[team={ns}.temp.king] speed infinite 0 true
effect give @s[team={ns}.temp.king] health_boost infinite 1 true

attribute @s attack_speed base set 1024
""")

	# /balance_king_gaps
	# Le roi est trop fort quand il y a moins de civils que prévu par tête. On calcule le ratio
	# civils/roi (optimal = 4, ce qui donne 8 gaps) et on descend le nombre de gaps du roi jusqu'à
	# un minimum de 3, pour rééquilibrer les parties avec un nombre de joueurs non optimal.
	write_function(f"{path}/balance_king_gaps", f"""
scoreboard players set #n_civils {ns}.data 0
scoreboard players set #n_kings {ns}.data 1
execute store result score #n_civils {ns}.data if entity @a[tag=!detached,team={ns}.temp.civil]
execute store result score #n_kings {ns}.data if entity @a[tag=!detached,team={ns}.temp.king]
execute if score #n_kings {ns}.data matches ..0 run scoreboard players set #n_kings {ns}.data 1

# Gaps = 2 * (civils / roi), borné entre 3 et 8
scoreboard players operation #king_gaps {ns}.data = #n_civils {ns}.data
scoreboard players operation #king_gaps {ns}.data /= #n_kings {ns}.data
scoreboard players operation #king_gaps {ns}.data *= #2 {ns}.data
execute if score #king_gaps {ns}.data matches 8.. run scoreboard players set #king_gaps {ns}.data 8
execute if score #king_gaps {ns}.data matches ..3 run scoreboard players set #king_gaps {ns}.data 3

execute store result storage {ns}:temp king_gaps.count int 1 run scoreboard players get #king_gaps {ns}.data
""")

	# /give_king_gaps (macro: count)
	write_function(f"{path}/give_king_gaps", """
$item replace entity @s hotbar.7 with golden_apple $(count)
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)



	# /death/player
	write_function(f"{path}/death/player", f"""
scoreboard players set @s {ns}.alive 0
tag @s add {ns}.to_tp
function {ns}:utils/classic_death
""")

	# /death/for_global
	write_function(f"{path}/death/for_global", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
clear @a[tag=!detached,predicate={ns}:has_same_id]

function {path}/death/inventory_filter
execute at @s run function {ns}:modes/_common/death/inventory_drop
execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
kill @s
""")


	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", f"""
function {ns}:modes/_common/death/keep_combat_items
data modify entity @s data.Inventory set from storage {ns}:main Inventory
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
# Role selection (1/4 kings)
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.king @s
execute if score #next_role {ns}.data matches 2..5 run team join {ns}.temp.civil @s
execute if score #next_role {ns}.data matches 6 run team join {ns}.temp.king @s
execute if score #next_role {ns}.data matches 7..10 run team join {ns}.temp.civil @s
execute if score #next_role {ns}.data matches 10.. run scoreboard players set #next_role {ns}.data 0

# Linked marker for offline players
setblock 0 3 0 yellow_shulker_box
loot insert 0 3 0 loot {ns}:get_username
scoreboard players operation #player_id {ns}.id = @s {ns}.id
tag @s add {ns}.temp
execute summon marker run function {path}/roles/marker
tag @s remove {ns}.temp
setblock 0 3 0 air
""")

	# /roles/announcement
	write_function(f"{path}/roles/announcement", f"""
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
function {translations}/roles_announcement
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", f"""
scoreboard players operation @s {ns}.id = #player_id {ns}.id
data modify entity @s data.name set from block 0 3 0 Items[0].components."minecraft:profile".name
execute if entity @p[tag={ns}.temp,team={ns}.temp.king] run scoreboard players set @s {ns}.alive 1
execute if entity @p[tag={ns}.temp,team={ns}.temp.civil] run scoreboard players set @s {ns}.alive 2
tag @s add {ns}.temp.player
""")
