
# Imports
from stewbeet import Mem, write_function
from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "beat_the_kings"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_function(f"{path}/calls/inventory_changed", """
tag @s add switch.temp.inventory_changed
""")
	write_translations()

	# /start
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
scoreboard players set @a[tag=!detached] switch.alive 1

effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
function switch:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers switch.data 1
function switch:utils/choose_map_for {{id:"{mode}", maps:["traitor_original","mushroom_plains","dark_forest_hills","zonweeb_highschool","hider_mansion","nuketown_no_barrier"]}}

execute in switch:game run gamerule minecraft:mob_griefing true
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true

function {translations}/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time switch.data 901
scoreboard players set #beat_the_kings_seconds switch.data -10
scoreboard players set #beat_the_kings_ticks switch.data 0
scoreboard players set #process_end switch.data 0

scoreboard objectives add switch.temp.cooldown dummy
scoreboard objectives add switch.temp.killed_kings teamkill.dark_purple
scoreboard objectives setdisplay list switch.health

# Choix des rôles + give d'items
team add switch.temp.civil {{"text":"[Civil]","color":"gray"}}
team add switch.temp.king {{"text":"[King]","color":"dark_purple"}}
team modify switch.temp.civil color gray
team modify switch.temp.king color dark_purple
scoreboard players set #next_role switch.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/roles/main
execute as @a[tag=!detached] at @s run function {path}/give_items

give @r[team=switch.temp.king] splash_potion[item_name={{"text":"Potion dévastatrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:7039516,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:110,show_particles:0b}}]}}]
give @r[team=switch.temp.king] splash_potion[item_name={{"text":"Potion destructrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:5711412,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:1b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:320,show_particles:0b}}]}}]
give @r[team=switch.temp.king] splash_potion[item_name={{"text":"Potion de malnutrition du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{custom_color:12763581,custom_effects:[{{id:"mining_fatigue",amplifier:1b,duration:60}},{{id:"hunger",amplifier:1b,duration:300}},{{id:"poison",amplifier:1b,duration:40}}]}}]

give @r[team=switch.temp.king] splash_potion[item_name={{"text":"Potion dévastatrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:7039516,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"mining_fatigue",amplifier:0b,duration:400,show_particles:0b}},{{id:"blindness",amplifier:0b,duration:110,show_particles:0b}}]}}]
give @r[team=switch.temp.king] splash_potion[item_name={{"text":"Potion destructrice du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{potion:"minecraft:water",custom_color:5711412,custom_effects:[{{id:"slowness",amplifier:0b,duration:400,show_particles:0b}},{{id:"nausea",amplifier:1b,duration:200,show_particles:0b}},{{id:"poison",amplifier:0b,duration:320,show_particles:0b}}]}}]
give @r[team=switch.temp.king] splash_potion[item_name={{"text":"Potion de malnutrition du tyran"}},lore=[{{"text":"À lancer sur les civils","color":"white","italic":false}}],potion_contents={{custom_color:12763581,custom_effects:[{{id:"mining_fatigue",amplifier:1b,duration:60}},{{id:"hunger",amplifier:1b,duration:300}},{{id:"poison",amplifier:1b,duration:40}}]}}]

# Teleportation des joueurs ensemble (par team)
tp @a[team=switch.temp.civil] @r[team=switch.temp.civil]
tp @a[team=switch.temp.king] @r[team=switch.temp.king]
""")

	# /stop
	write_function(f"{path}/stop", """
team remove switch.temp.civil
team remove switch.temp.king

scoreboard objectives remove switch.temp.cooldown
scoreboard objectives remove switch.temp.killed_kings
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #beat_the_kings_ticks switch.data 1

execute as @a[tag=!detached,tag=switch.to_tp] run function {path}/teleport_to_death

function switch:utils/on_death_run_function {{function:"{path}/death/player"}}
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.temp.player,tag=!switch.player_dead] run function {path}/death/detect
execute if score #beat_the_kings_seconds switch.data matches 1..900 as @e[type=marker,tag=switch.player_dead] run function {path}/death/for_global

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[scores={{switch.temp.killed_kings=1..}}] only switch:visible/66

# Détection de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 1..900 run function {path}/detect_end
execute if score #beat_the_kings_seconds switch.data matches 901.. run function {path}/process_end
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #beat_the_kings_seconds switch.data 1
execute if score #remaining_time switch.data matches 1.. run scoreboard players remove #remaining_time switch.data 1

execute if score #beat_the_kings_seconds switch.data matches 0.. run function {path}/xp_bar
execute if score #beat_the_kings_seconds switch.data matches 0.. run effect give @a[tag=!detached,team=switch.temp.king] resistance infinite 3 true
execute if score #beat_the_kings_seconds switch.data matches 0 run function {path}/roles/announcement

execute if score #beat_the_kings_seconds switch.data matches 30 as @a[tag=!detached,team=switch.temp.king] at @s run playsound entity.experience_orb.pickup ambient @s

# Remaining time
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
function {translations}/second
""")

	# /joined
	write_function(f"{path}/joined", f"""
function {path}/death/player
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state switch.data 0
execute if entity @a[scores={{switch.alive=1..}},team=switch.temp.civil] unless entity @a[scores={{switch.alive=1..}},team=switch.temp.king] run scoreboard players add #game_state switch.data 1
execute if entity @a[scores={{switch.alive=1..}},team=switch.temp.king] unless entity @a[scores={{switch.alive=1..}},team=switch.temp.civil] run scoreboard players add #game_state switch.data 2
execute unless entity @a[scores={{switch.alive=1..}}] run scoreboard players add #game_state switch.data 3

# 1 = que des civils
# 2 = que des kings
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #beat_the_kings_seconds switch.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state switch.data matches 1 as @a[tag=!detached,scores={{switch.alive=1..}},team=switch.temp.civil] at @s run function switch:engine/add_win
execute if score #game_state switch.data matches 2 as @a[tag=!detached,scores={{switch.alive=1..}},team=switch.temp.king] at @s run function switch:engine/add_win

# Visuel de fin de partie
execute if score #beat_the_kings_seconds switch.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function {path}/death/player
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /give_items
	write_function(f"{path}/give_items", """
# Starter kit
item replace entity @s[team=switch.temp.civil] armor.head with iron_helmet
item replace entity @s[team=switch.temp.civil] armor.chest with diamond_chestplate
item replace entity @s[team=switch.temp.civil] armor.legs with chainmail_leggings
item replace entity @s[team=switch.temp.civil] armor.feet with iron_boots[enchantments={feather_falling:2}]
item replace entity @s[team=switch.temp.civil] weapon.offhand with oak_planks 64
item replace entity @s[team=switch.temp.civil] hotbar.0 with iron_sword[enchantments={sharpness:5}]
item replace entity @s[team=switch.temp.civil] hotbar.1 with bow
item replace entity @s[team=switch.temp.civil] hotbar.7 with water_bucket
item replace entity @s[team=switch.temp.civil] hotbar.8 with golden_apple 5
item replace entity @s[team=switch.temp.civil] inventory.0 with arrow 16

item replace entity @s[team=switch.temp.king] armor.head with golden_helmet[enchantments={protection:3,unbreaking:10}]
item replace entity @s[team=switch.temp.king] hotbar.0 with water_bucket
item replace entity @s[team=switch.temp.king] hotbar.1 with golden_sword[enchantments={unbreaking:3,sharpness:3}]
item replace entity @s[team=switch.temp.king] hotbar.3 with bow[enchantments={flame:1,punch:1}]
item replace entity @s[team=switch.temp.king] hotbar.7 with golden_apple 8
item replace entity @s[team=switch.temp.king] hotbar.8 with oak_planks 64
item replace entity @s[team=switch.temp.king] inventory.0 with arrow 45
effect give @s[team=switch.temp.king] resistance infinite 3 true
effect give @s[team=switch.temp.king] speed infinite 0 true
effect give @s[team=switch.temp.king] health_boost infinite 1 true

attribute @s attack_speed base set 1024
""")

	# /xp_bar
	write_function(f"{path}/xp_bar", """
# 900 seconds = 100%
scoreboard players operation #points switch.data = #remaining_time switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
scoreboard players set #divide switch.data 900000
function switch:modes/_common/xp_bar/points

scoreboard players operation #levels switch.data = #remaining_time switch.data
function switch:modes/_common/xp_bar/levels
""")

	# /teleport_to_death
	write_function(f"{path}/teleport_to_death", """
scoreboard players operation #player_id switch.id = @s switch.id
tp @s @e[type=!player,predicate=switch:has_same_id,limit=1]
tag @s remove switch.to_tp
""")

	# /_force_start
	write_function(f"{path}/_force_start", f"""
function switch:engine/force_start_macro {{id:"{mode}"}}
""")

	# /death/player
	write_function(f"{path}/death/player", """
scoreboard players set @s switch.alive 0
tag @s add switch.to_tp
function switch:utils/classic_death
""")

	# /death/detect  (delegates to traitors_game)
	write_function(f"{path}/death/detect", """
function switch:modes/traitors_game/death/detect
""")

	# /death/for_global
	write_function(f"{path}/death/for_global", f"""
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]

function {path}/death/inventory_filter
execute at @s run function {path}/death/inventory_drop
execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
kill @s
""")

	# /death/inventory_drop
	write_function(f"{path}/death/inventory_drop", f"""
loot spawn ~ ~ ~ loot switch:temp_item
data modify entity @e[type=item,nbt={{Item:{{components:{{"minecraft:custom_data":{{switch:{{"temp_item":true}}}}}}}}}},limit=1] Item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data entity @s data.Inventory[0] run function {path}/death/inventory_drop
""")

	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", """
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]
data modify entity @s data.Inventory set from storage switch:main Inventory
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
# Role selection (1/4 kings)
scoreboard players add #next_role switch.data 1
execute if score #next_role switch.data matches 1 run team join switch.temp.king @s
execute if score #next_role switch.data matches 2..5 run team join switch.temp.civil @s
execute if score #next_role switch.data matches 6 run team join switch.temp.king @s
execute if score #next_role switch.data matches 7..10 run team join switch.temp.civil @s
execute if score #next_role switch.data matches 10.. run scoreboard players set #next_role switch.data 0

# Linked marker for offline players
setblock 0 3 0 yellow_shulker_box
loot insert 0 3 0 loot switch:get_username
scoreboard players operation #player_id switch.id = @s switch.id
tag @s add switch.temp
execute summon marker run function {path}/roles/marker
tag @s remove switch.temp
setblock 0 3 0 air
""")

	# /roles/announcement
	write_function(f"{path}/roles/announcement", f"""
execute as @a[tag=!detached] at @s run playsound entity.wither.spawn ambient @s ~ ~ ~ 0.25
function {translations}/roles_announcement
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", """
scoreboard players operation @s switch.id = #player_id switch.id
data modify entity @s data.name set from block 0 3 0 Items[0].components."minecraft:profile".name
execute if entity @p[tag=switch.temp,team=switch.temp.king] run scoreboard players set @s switch.alive 1
execute if entity @p[tag=switch.temp,team=switch.temp.civil] run scoreboard players set @s switch.alive 2
tag @s add switch.temp.player
""")
