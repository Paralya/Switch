
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem
from ..common import write_modes_calls, write_time_xp_bar
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "protect_the_king"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /better_tp (run the spread several times so the two kings end up far apart)
	better_tp: str = "\n".join(
		f"execute as @a[tag=!detached,team={ns}.temp.red_king] at @s if entity @p[team={ns}.temp.blue_king,distance=..30] run function {ns}:maps/spread_one_player"
		for _ in range(11)
	)
	write_function(f"{path}/better_tp", f"""
{better_tp}
""")

	# /detect_end
	write_function(f"{path}/detect_end", f"""
scoreboard players set #game_state {ns}.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red_king] unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue_king] run scoreboard players add #game_state {ns}.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue_king] unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red_king] run scoreboard players add #game_state {ns}.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state {ns}.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..3 run scoreboard players set #protect_the_king_seconds {ns}.data 100000

# Cas des vainqueurs
function {translations}/detect_end

execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red_king] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 1 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue_king] at @s run function {ns}:engine/add_win
execute if score #game_state {ns}.data matches 2 as @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] at @s run function {ns}:engine/add_win

# Advancements
execute unless score #test_mode {ns}.data matches 1 if score #game_state {ns}.data matches 1 unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red_king] only {ns}:visible/14
execute unless score #test_mode {ns}.data matches 1 if score #game_state {ns}.data matches 2 unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue_king] only {ns}:visible/14
execute unless score #test_mode {ns}.data matches 1 if score #game_state {ns}.data matches 1 unless entity @a[tag=!detached,gamemode=spectator,team={ns}.temp.red] run advancement grant @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.blue,team=!{ns}.temp.blue_king,team=!] only {ns}:visible/65
execute unless score #test_mode {ns}.data matches 1 if score #game_state {ns}.data matches 2 unless entity @a[tag=!detached,gamemode=spectator,team={ns}.temp.blue] run advancement grant @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.red,team=!{ns}.temp.red_king,team=!] only {ns}:visible/65

# Visuel de fin de partie
execute if score #protect_the_king_seconds {ns}.data matches 900.. as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
""")

	# /give_items
	# The trailing `give @s oak_planks 100` / `give @s anvil` used to land in hotbar.2 and hotbar.4
	# (the first free slots); they now say so, which also makes them remappable.
	# The king (neither red nor blue) swaps the steel sword out for an obsidian one in the same slot.
	king: str = f"team=!{ns}.temp.red,team=!{ns}.temp.blue"
	Kit("protect_the_king", pre="# Starter kit", items=(
		KitItem(slot="armor.chest", loot=f"{ns}:i/steel_chestplate"),
		KitItem(slot="armor.legs", item=r"chainmail_leggings[enchantments={protection:2}]"),
		KitItem(slot="armor.feet", item=r"chainmail_boots[enchantments={projectile_protection:5}]"),
		KitItem(role="melee", slot="hotbar.0", loot=f"{ns}:i/steel_sword",
			modify='{function:"minecraft:set_enchantments",enchantments:{"minecraft:knockback":1}}'),
		KitItem(role="ranged", item="bow", slot="hotbar.1"),
		KitItem(role="axe", item="stone_axe", slot="hotbar.3"),
		KitItem(role="ammo", item="arrow", count=28, slot="hotbar.6"),
		KitItem(role="mobility", item="water_bucket", slot="hotbar.7"),
		KitItem(role="heal", item="golden_apple", count=6, slot="hotbar.8"),
		KitItem(role="blocks", item="oak_planks", count=100, slot="hotbar.2"),
		KitItem(role="special", item="anvil", slot="hotbar.4"),
		KitItem(role="melee", override=True, selector=king, loot=f"{ns}:i/obsidian_sword",
			modify='{function:"minecraft:set_enchantments",enchantments:{"minecraft:sharpness":1}}'),
	), post=f"""
effect give @s[{king}] glowing infinite 255 true
attribute @s[{king}] max_health base set 40.0
""").write(f"{path}/give_items")

	# /give_items (leather cap colors, appended: armour is never remapped)
	write_function(f"{path}/give_items", f"""
# Leather cap color
item replace entity @s[team={ns}.temp.red] armor.head with leather_helmet[unbreakable={{}},enchantments={{protection:2}},dyed_color=16711680,attribute_modifiers=[{{type:"armor",slot:"head",id:"{ns}.helmet.armor",amount:3,operation:"add_value"}},{{type:"armor_toughness",slot:"head",id:"{ns}.helmet.armor_toughness",amount:2,operation:"add_value"}}]]
item replace entity @s[team={ns}.temp.red_king] armor.head with diamond_helmet[unbreakable={{}},enchantments={{protection:2}},item_model="{ns}:ruby_helmet",equippable={{"slot":"head","asset_id":"{ns}:ruby"}},attribute_modifiers=[{{type:"armor",slot:"head",id:"{ns}.helmet.armor",amount:3,operation:"add_value"}},{{type:"armor_toughness",slot:"head",id:"{ns}.helmet.armor_toughness",amount:2,operation:"add_value"}}]]
item replace entity @s[team={ns}.temp.blue] armor.head with leather_helmet[unbreakable={{}},enchantments={{protection:2}},dyed_color=255,attribute_modifiers=[{{type:"armor",slot:"head",id:"{ns}.helmet.armor",amount:3,operation:"add_value"}},{{type:"armor_toughness",slot:"head",id:"{ns}.helmet.armor_toughness",amount:2,operation:"add_value"}}]]
item replace entity @s[team={ns}.temp.blue_king] armor.head with diamond_helmet[unbreakable={{}},enchantments={{protection:2}},item_model="{ns}:sapphire_helmet",equippable={{"slot":"head","asset_id":"{ns}:sapphire"}},attribute_modifiers=[{{type:"armor",slot:"head",id:"{ns}.helmet.armor",amount:3,operation:"add_value"}},{{type:"armor_toughness",slot:"head",id:"{ns}.helmet.armor_toughness",amount:2,operation:"add_value"}}]]
""")

	# /joined
	write_function(f"{path}/joined", f"""
execute if score #reconnect {ns}.data matches 0 run function {ns}:utils/classic_death
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /random_tp
	write_function(f"{path}/random_tp", f"""
execute if data storage {ns}:main {{map:"traitor_original"}} run spreadplayers 1500 1500 1 100 under 160 false @s
execute if data storage {ns}:main {{map:"mushroom_plains"}} run spreadplayers 4000 4000 1 50 under 150 false @s
execute if data storage {ns}:main {{map:"jayl_dark_forest"}} run spreadplayers 33931 33923 1 30 under 180 false @s
execute if data storage {ns}:main {{map:"dark_forest_hills"}} run spreadplayers 39069 39111 1 50 under 160 false @s
""")

	# /roles
	write_function(f"{path}/roles", f"""
# Role selection
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.red_king @s
execute if score #next_role {ns}.data matches 2 run team join {ns}.temp.blue_king @s
execute if score #next_role {ns}.data matches 3 run team join {ns}.temp.red @s
execute if score #next_role {ns}.data matches 4 run team join {ns}.temp.blue @s
execute if score #next_role {ns}.data matches 4 run scoreboard players set #next_role {ns}.data 2
""")

	# /second
	write_function(f"{path}/second", f"""
scoreboard players add #protect_the_king_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

execute if score #protect_the_king_seconds {ns}.data matches 0.. run function {path}/xp_bar
execute if score #protect_the_king_seconds {ns}.data matches 0.. run effect give @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.red,team=!{ns}.temp.blue] glowing infinite 255 true
execute if score #protect_the_king_seconds {ns}.data matches 0 run team modify {ns}.temp.red collisionRule always
execute if score #protect_the_king_seconds {ns}.data matches 0 run team modify {ns}.temp.blue collisionRule always

# Remaining time
function {ns}:modes/_common/compute_mins_secs
function {ns}:translations/common/actionbar_time_pvp19
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", f"""
gamemode survival @a[tag=!detached]
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] resistance 15 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 15 255 true
effect give @a[tag=!detached] blindness 10 255 true
effect give @a[tag=!detached] slowness 8 255 true
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
function {ns}:utils/choose_map_for {{id:"protect_the_king", maps:["traitor_original","mushroom_plains","baby_park","snow_travel","cathedrale_liege","jayl_dark_forest","operation_pigclaw","dark_forest_hills","paralya_lobby_noel","zonweeb_highschool","hider_mansion","nuketown_no_barrier","lightium_spawn","paralya_lobby","stardust_spawn","stardust_boss_zone","stardust_boss_zone_nether","stardust_pvp_zone","jn_biomes_relief"]}}

execute in {ns}:game run gamerule minecraft:natural_health_regeneration false

function {ns}:modes/protect_the_king/translations/start
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s

scoreboard players set #remaining_time {ns}.data 901
scoreboard players set #protect_the_king_seconds {ns}.data -1
scoreboard players set #protect_the_king_ticks {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #cut_clean {ns}.data 1
scoreboard objectives setdisplay list {ns}.health

# Mise en place des deux bossbars
bossbar add {ns}.temp.red_king "Red King"
bossbar add {ns}.temp.blue_king "Blue King"
bossbar set {ns}.temp.red_king color red
bossbar set {ns}.temp.blue_king color blue
bossbar set {ns}.temp.red_king max 40
bossbar set {ns}.temp.blue_king max 40
bossbar set {ns}.temp.red_king value 40
bossbar set {ns}.temp.blue_king value 40
bossbar set {ns}.temp.red_king players @a[tag=!detached]
bossbar set {ns}.temp.blue_king players @a[tag=!detached]

# Choix des rôles + give d'items
team add {ns}.temp.red_king {{"text":"[Red King]","color":"dark_red"}}
team add {ns}.temp.blue_king {{"text":"[Blue King]","color":"dark_blue"}}
team add {ns}.temp.red {{"text":"[Red]","color":"red"}}
team add {ns}.temp.blue {{"text":"[Blue]","color":"blue"}}
team modify {ns}.temp.red_king color dark_red
team modify {ns}.temp.blue_king color dark_blue
team modify {ns}.temp.red color red
team modify {ns}.temp.blue color blue
team modify {ns}.temp.red collisionRule never
team modify {ns}.temp.blue collisionRule never
scoreboard players set #next_role {ns}.data 0
execute as @a[tag=!detached,sort=random] at @s run function {ns}:modes/protect_the_king/roles
function {ns}:modes/protect_the_king/better_tp
tp @a[tag=!detached,team={ns}.temp.red] @p[team={ns}.temp.red_king]
tp @a[tag=!detached,team={ns}.temp.blue] @p[team={ns}.temp.blue_king]
execute as @a[tag=!detached] at @s run function {ns}:modes/protect_the_king/give_items
""")

	# /stop
	write_function(f"{path}/stop", f"""
team remove {ns}.temp.red_king
team remove {ns}.temp.blue_king
team remove {ns}.temp.red
team remove {ns}.temp.blue
bossbar remove {ns}.temp.red_king
bossbar remove {ns}.temp.blue_king
""")

	# /tick
	write_function(f"{path}/tick", f"""
scoreboard players add #protect_the_king_ticks {ns}.data 1

# Détection de la mort
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Particules aux pieds des rois
execute at @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.red,team=!{ns}.temp.blue] run particle glow ~ ~ ~ 0.2 0 0.2 0 5

## Actualisation des bossbars
# Red king
execute store result score #health {ns}.data run data get entity @p[gamemode=!spectator,team={ns}.temp.red_king] Health
execute store result score #total {ns}.data run data get entity @p[gamemode=!spectator,team={ns}.temp.red_king] AbsorptionAmount
scoreboard players operation #total {ns}.data += #health {ns}.data
execute store result bossbar {ns}.temp.red_king value run scoreboard players get #total {ns}.data

# Blue king
execute store result score #health {ns}.data run data get entity @p[gamemode=!spectator,team={ns}.temp.blue_king] Health
execute store result score #total {ns}.data run data get entity @p[gamemode=!spectator,team={ns}.temp.blue_king] AbsorptionAmount
scoreboard players operation #total {ns}.data += #health {ns}.data
execute store result bossbar {ns}.temp.blue_king value run scoreboard players get #total {ns}.data

# Affichage des bossbars
bossbar set {ns}.temp.red_king players @a[tag=!detached]
bossbar set {ns}.temp.blue_king players @a[tag=!detached]

# Détection de fin de partie
execute if score #protect_the_king_seconds {ns}.data matches 1..900 run function {path}/detect_end
execute if score #protect_the_king_seconds {ns}.data matches 901.. run function {path}/process_end
""")

	# /xp_bar
	write_time_xp_bar(f"{path}/xp_bar", 900)
