
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_classic_death, write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "protect_the_king"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /better_tp
	write_function(f"{path}/better_tp", """
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
execute as @a[tag=!detached,team=switch.temp.red_king] at @s if entity @p[team=switch.temp.blue_king,distance=..30] run function switch:maps/spread_one_player
""")

	# /death
	write_classic_death(f"{path}/death")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #protect_the_king_seconds switch.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 1 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] at @s run function switch:engine/add_win

# Advancements
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 1 unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=switch.temp.red_king] only switch:visible/14
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 2 unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue_king] only switch:visible/14
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 1 unless entity @a[tag=!detached,gamemode=spectator,team=switch.temp.red] run advancement grant @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue,team=!switch.temp.blue_king,team=!] only switch:visible/65
execute unless score #test_mode switch.data matches 1 if score #game_state switch.data matches 2 unless entity @a[tag=!detached,gamemode=spectator,team=switch.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red,team=!switch.temp.red_king,team=!] only switch:visible/65

# Visuel de fin de partie
execute if score #protect_the_king_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Starter kit
loot replace entity @s armor.chest loot switch:i/steel_chestplate
item replace entity @s armor.legs with chainmail_leggings[enchantments={protection:2}]
item replace entity @s armor.feet with chainmail_boots[enchantments={projectile_protection:5}]
loot replace entity @s hotbar.0 loot switch:i/steel_sword
item modify entity @s hotbar.0 {function:"minecraft:set_enchantments",enchantments:{"minecraft:knockback":1}}
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.3 with stone_axe
item replace entity @s hotbar.6 with arrow 28
item replace entity @s hotbar.7 with water_bucket
item replace entity @s hotbar.8 with golden_apple 6
give @s oak_planks 100
give @s anvil

effect give @s[team=!switch.temp.red,team=!switch.temp.blue] glowing infinite 255 true
loot replace entity @s[team=!switch.temp.red,team=!switch.temp.blue] hotbar.0 loot switch:i/obsidian_sword
item modify entity @s[team=!switch.temp.red,team=!switch.temp.blue] hotbar.0 {function:"minecraft:set_enchantments",enchantments:{"minecraft:sharpness":1}}
attribute @s[team=!switch.temp.red,team=!switch.temp.blue] max_health base set 40.0

# Leather cap color
item replace entity @s[team=switch.temp.red] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=16711680,attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.red_king] armor.head with diamond_helmet[unbreakable={},enchantments={protection:2},item_model="switch:ruby_helmet",equippable={"slot":"head","asset_id":"switch:ruby"},attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue] armor.head with leather_helmet[unbreakable={},enchantments={protection:2},dyed_color=255,attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
item replace entity @s[team=switch.temp.blue_king] armor.head with diamond_helmet[unbreakable={},enchantments={protection:2},item_model="switch:sapphire_helmet",equippable={"slot":"head","asset_id":"switch:sapphire"},attribute_modifiers=[{type:"armor",slot:"head",id:"switch.helmet.armor",amount:3,operation:"add_value"},{type:"armor_toughness",slot:"head",id:"switch.helmet.armor_toughness",amount:2,operation:"add_value"}]]
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect switch.data matches 0 run function {path}/death
""")

	# /process_end
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /random_tp
	write_function(f"{path}/random_tp", """
execute if data storage switch:main {map:"traitor_original"} run spreadplayers 1500 1500 1 100 under 160 false @s
execute if data storage switch:main {map:"mushroom_plains"} run spreadplayers 4000 4000 1 50 under 150 false @s
execute if data storage switch:main {map:"jayl_dark_forest"} run spreadplayers 33931 33923 1 30 under 180 false @s
execute if data storage switch:main {map:"dark_forest_hills"} run spreadplayers 39069 39111 1 50 under 160 false @s
""")

	# /roles
	write_function(f"{path}/roles", """
# Role selection
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.red_king @s
execute if score #next_role switch.data matches 2 run team join switch.temp.blue_king @s
execute if score #next_role switch.data matches 3 run team join switch.temp.red @s
execute if score #next_role switch.data matches 4 run team join switch.temp.blue @s
execute if score #next_role switch.data matches 4 run scoreboard players set #next_role switch.data 2
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #protect_the_king_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #protect_the_king_seconds switch.data matches 0.. run function {path}/xp_bar
execute if score #protect_the_king_seconds switch.data matches 0.. run effect give @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red,team=!switch.temp.blue] glowing infinite 255 true
execute if score #protect_the_king_seconds switch.data matches 0 run team modify switch.temp.red collisionRule always
execute if score #protect_the_king_seconds switch.data matches 0 run team modify switch.temp.blue collisionRule always

# Remaining time
function switch:modes/_common/compute_mins_secs
function switch:translations/common/actionbar_time_pvp19
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] slowness 8 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {id:"protect_the_king", maps:["traitor_original","mushroom_plains","baby_park","snow_travel","cathedrale_liege","jayl_dark_forest","operation_pigclaw","dark_forest_hills","paralya_lobby_noel","zonweeb_highschool","hider_mansion","nuketown_no_barrier","lightium_spawn","paralya_lobby","stardust_spawn","stardust_boss_zone","stardust_boss_zone_nether","stardust_pvp_zone","jn_biomes_relief"]}

execute in switch:game run gamerule minecraft:natural_health_regeneration false

function switch:modes/protect_the_king/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #protect_the_king_seconds switch.data -10
scoreboard players set #protect_the_king_ticks switch.data 0
scoreboard players set #process_end switch.data 0
scoreboard players set #cut_clean switch.data 1
scoreboard objectives setdisplay list switch.health

# Mise en place des deux bossbars
bossbar add switch.temp.red_king "Red King"
bossbar add switch.temp.blue_king "Blue King"
bossbar set switch.temp.red_king color red
bossbar set switch.temp.blue_king color blue
bossbar set switch.temp.red_king max 40
bossbar set switch.temp.blue_king max 40
bossbar set switch.temp.red_king value 40
bossbar set switch.temp.blue_king value 40
bossbar set switch.temp.red_king players @a[tag=!detached]
bossbar set switch.temp.blue_king players @a[tag=!detached]

# Choix des rôles + give d'items
team add switch.temp.red_king {"text":"[Red King]","color":"dark_red"}
team add switch.temp.blue_king {"text":"[Blue King]","color":"dark_blue"}
team add switch.temp.red {"text":"[Red]","color":"red"}
team add switch.temp.blue {"text":"[Blue]","color":"blue"}
team modify switch.temp.red_king color dark_red
team modify switch.temp.blue_king color dark_blue
team modify switch.temp.red color red
team modify switch.temp.blue color blue
team modify switch.temp.red collisionRule never
team modify switch.temp.blue collisionRule never
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function switch:modes/protect_the_king/roles
function switch:modes/protect_the_king/better_tp
tp @a[tag=!detached,team=switch.temp.red] @p[team=switch.temp.red_king]
tp @a[tag=!detached,team=switch.temp.blue] @p[team=switch.temp.blue_king]
execute as @a[tag=!detached] at @s run function switch:modes/protect_the_king/give_items
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.red_king
team remove switch.temp.blue_king
team remove switch.temp.red
team remove switch.temp.blue
bossbar remove switch.temp.red_king
bossbar remove switch.temp.blue_king
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #protect_the_king_ticks switch.data 1

# Détection de la mort
function switch:utils/on_death_run_function {{function:"{path}/death"}}

# Particules aux pieds des rois
execute at @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red,team=!switch.temp.blue] run particle glow ~ ~ ~ 0.2 0 0.2 0 5

## Actualisation des bossbars
# Red king
execute store result score #health switch.data run data get entity @p[gamemode=!spectator,team=switch.temp.red_king] Health
execute store result score #total switch.data run data get entity @p[gamemode=!spectator,team=switch.temp.red_king] AbsorptionAmount
scoreboard players operation #total switch.data += #health switch.data
execute store result bossbar switch.temp.red_king value run scoreboard players get #total switch.data

# Blue king
execute store result score #health switch.data run data get entity @p[gamemode=!spectator,team=switch.temp.blue_king] Health
execute store result score #total switch.data run data get entity @p[gamemode=!spectator,team=switch.temp.blue_king] AbsorptionAmount
scoreboard players operation #total switch.data += #health switch.data
execute store result bossbar switch.temp.blue_king value run scoreboard players get #total switch.data

# Affichage des bossbars
bossbar set switch.temp.red_king players @a[tag=!detached]
bossbar set switch.temp.blue_king players @a[tag=!detached]

# Détection de fin de partie
execute if score #protect_the_king_seconds switch.data matches 1..900 run function {path}/detect_end
execute if score #protect_the_king_seconds switch.data matches 901.. run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
