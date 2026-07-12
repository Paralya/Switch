
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import Mem, write_function


# Top-level "switch:*" functions that don't belong to a deeper subsystem.
# (load / tick are handled by write_load_file / write_tick_file in src/link.py)
@stp.measure_time(message="Generated root files")
def main() -> None:
	ns: str = Mem.ctx.project_id

	# switch:none (no-op target)
	write_function(f"{ns}:none", """
# Function that does nothing
""")

	# switch:cut_clean (turn raw ores into ingots when dropped, keeping custom items intact)
	write_function(f"{ns}:cut_clean", f"""
tag @s add {ns}.cut_clean

scoreboard players set #custom {ns}.data 1
scoreboard players set #success {ns}.data 0
execute store result score #count {ns}.data run data get entity @s Item.count

# Vanilla Items
execute if score #success {ns}.data matches 0 store success score #success {ns}.data if data entity @s Item{{id:"minecraft:raw_iron"}} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if score #success {ns}.data matches 0 store success score #success {ns}.data if data entity @s Item{{id:"minecraft:raw_gold"}} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if score #success {ns}.data matches 0 store success score #success {ns}.data if data entity @s Item{{id:"minecraft:raw_copper"}} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if score #success {ns}.data matches 0 store success score #success {ns}.data if data entity @s Item{{id:"minecraft:ancient_debris"}} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:netherite_scrap"
execute if score #success {ns}.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count {ns}.data

# Custom Items
execute if score #success {ns}.data matches 0 run scoreboard players set #custom {ns}.data 0
execute if score #success {ns}.data matches 0 run setblock 0 1 0 air
execute if score #success {ns}.data matches 0 run setblock 0 1 0 yellow_shulker_box
execute if score #custom {ns}.data matches 1 run data modify entity @s Item set from block 0 1 0 Items[0]
execute if score #custom {ns}.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count {ns}.data
execute if score #success {ns}.data matches 0 run setblock 0 1 0 air
""")

	# switch:auto_index (recursive: index the minigames list into indexed_minigames)
	write_function(f"{ns}:auto_index", f"""
# Copy the minigames list to a temporary storage and add an index
data modify storage {ns}:main temp set from storage {ns}:main minigames[0]
execute store result storage {ns}:main temp.index int 1 run scoreboard players get #index {ns}.data
scoreboard players add #index {ns}.data 1

# Copy name for differents langs
execute unless data storage {ns}:main temp.name_en run data modify storage {ns}:main temp.name_en set from storage {ns}:main temp.name_fr
execute unless data storage {ns}:main temp.name_jp run data modify storage {ns}:main temp.name_jp set from storage {ns}:main temp.name_fr

# Copy the temporary storage back to the new minigames list
data modify storage {ns}:main indexed_minigames append from storage {ns}:main temp

# Create the stats objectives for the minigame
function {ns}:utils/create_stats_stuff with storage {ns}:main temp

# Remove the first minigame from the list and continue
data remove storage {ns}:main minigames[0]
execute if data storage {ns}:main minigames[0] run function {ns}:auto_index
""")

	# switch:build_groups_games (recursive: map each voting group id to the list of its minigames)
	write_function(f"{ns}:build_groups_games", f"""
# Append the first minigame of the copy to its group list
$data modify storage {ns}:main groups_games.$(group) append from storage {ns}:temp copy[0]

# Remove it from the copy and continue
data remove storage {ns}:temp copy[0]
execute if data storage {ns}:temp copy[0] run function {ns}:build_groups_games with storage {ns}:temp copy[0]
""")

	# switch:test_mode (toggle the global test mode)
	write_function(f"{ns}:test_mode", f"""
# Get test mode state
scoreboard players set #is_enabled {ns}.data 0
execute if score #test_mode {ns}.data matches 1 run scoreboard players set #is_enabled {ns}.data 1

# Test Mode OFF -> ON
execute if score #is_enabled {ns}.data matches 0 run scoreboard players set #test_mode {ns}.data 1
execute if score #is_enabled {ns}.data matches 0 run scoreboard players set #can_attach {ns}.data 0

# Test Mode ON -> OFF
execute if score #is_enabled {ns}.data matches 1 run scoreboard players set #test_mode {ns}.data 0
execute if score #is_enabled {ns}.data matches 1 run scoreboard players set #can_attach {ns}.data 1

# Message the player
function {ns}:translations/test_mode
""")

	# switch:lobby_second
	# Jump best times leaderboards: (x, y, z, jump key, display uuid)
	jump_displays: list[tuple[int, float, int, str, str]] = [
		(-8, 81.5, -22, "green", "20180612-2024-2025-2026-201000000001"),
		(22, 88.5, 0, "white", "20180612-2024-2025-2026-201000000002"),
		(0, 81.5, -39, "blue", "20180612-2024-2025-2026-201000000003"),
		(33, 83.5, 47, "dripstone", "20180612-2024-2025-2026-201000000004"),
		(63, 88.5, 10, "yellow", "20180612-2024-2025-2026-201000000005"),
		(-26, 91.5, 15, "red", "20180612-2024-2025-2026-201000000006"),
		(44, 86.5, 82, "duality", "20180612-2024-2025-2026-201000000007"),
		(-44, 93.5, 27, "pink", "20180612-2024-2025-2026-201000000008"),
		(-20, 75.5, -78, "brown", "20180612-2024-2025-2026-201000000009"),
		(-42, 94.5, 32, "purple", "20180612-2024-2025-2026-201000000010"),
		(-123, 79.5, -11, "bricks", "20180612-2024-2025-2026-201000000011"),
		(-83, 100.5, 71, "graviglitch", "20180612-2024-2025-2026-201000000012"),
		(36, 83.5, -73, "obsidian", "20180612-2024-2025-2026-201000000013"),
	]
	jump_display_lines: str = "\n".join(
		f'execute positioned {x} {y} {z} run function {ns}:stats/display/tick_jump_times {{jump:"{key}",path:"jump_{key}",label:"Best Times",uuid:"{uuid}"}}'
		for x, y, z, key, uuid in jump_displays
	)
	write_function(f"{ns}:lobby_second", rf"""
# If players in the lobby, show title action bar with the current game and number of players
function {ns}:player/detached_action_bar

# Prevent end gateway's beam
data modify block 34 82 47 Age set value 143L

# Jumps best times leaderboards
{jump_display_lines}

# Black holes (lobby and tutorial area)
execute positioned 0 69 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000001 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000001"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_lobby"],transformation:{{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}}}
execute positioned -500 69 -500 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000002 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000002"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_tutorial"],transformation:{{scale:[-100f,-100f,-100f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}}}


### Minigames stats
## None
execute positioned 47.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.TODO2.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000001"}}
execute positioned 36.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.TODOO.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000002"}}
execute positioned -80.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.TODO.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000003"}}

## Global
execute positioned -5 71.5 -15 run function {ns}:stats/display/tick_macro {{path:"all.player.total_deaths",label:"Deaths",mode:3,uuid:"20180612-2024-2025-2026-102000000001"}}
execute positioned -5 71.5 -18 run function {ns}:stats/display/tick_macro {{path:"all.player.total_kills",label:"Kills",mode:3,uuid:"20180612-2024-2025-2026-102000000002"}}
execute positioned -3 71.5 -20 run function {ns}:stats/display/tick_macro {{path:"all.player.total_wins",label:"Victories",mode:3,uuid:"20180612-2024-2025-2026-102000000003"}}
execute positioned 0 71.5 -21 run function {ns}:stats/display/tick_macro {{path:"all.player.played_win_ratio",label:"Win rate",mode:3,uuid:"20180612-2024-2025-2026-102000000004"}}
execute positioned 3 71.5 -20 run function {ns}:stats/display/tick_macro {{path:"all.player.total_played",label:"Games played",mode:3,uuid:"20180612-2024-2025-2026-102000000005"}}
execute positioned 5 71.5 -18 run function {ns}:stats/display/tick_macro {{path:"all.player.advancement_count",label:"Advancements",mode:3,uuid:"20180612-2024-2025-2026-102000000006"}}
execute positioned 5 71.5 -15 run function {ns}:stats/display/tick_macro {{path:"all.player.total_money",label:"Current money",mode:3,uuid:"20180612-2024-2025-2026-102000000007"}}


## Solo multiple winners
# Murder mystery
execute positioned 14.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.murder_mystery.total_games",label:"Murder Mystery",mode:2,uuid:"20180612-2024-2025-2026-103000000001"}}
execute positioned 13 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.murder_mystery.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-103000000002"}}
execute positioned 16 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.murder_mystery.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-103000000003"}}

# Pitch creep
execute positioned 25.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.pitch_creep.total_games",label:"Pitch Creep",mode:2,uuid:"20180612-2024-2025-2026-104000000001"}}
execute positioned 24 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.pitch_creep.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-104000000002"}}
execute positioned 27 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.pitch_creep.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-104000000003"}}

# Warden escape
execute positioned 36.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.warden_escape.total_games",label:"Warden Escape",mode:2,uuid:"20180612-2024-2025-2026-105000000001"}}
execute positioned 35 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.warden_escape.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-105000000002"}}
execute positioned 38 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.warden_escape.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-105000000003"}}

# Panic chase
execute positioned 47.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.panic_chase.total_games",label:"Panic Chase",mode:2,uuid:"20180612-2024-2025-2026-106000000001"}}
execute positioned 49 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.panic_chase.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-106000000002"}}
execute positioned 46 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.panic_chase.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-106000000003"}}

# Creeper apocalypse
execute positioned 25.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.creeper_apocalypse.total_games",label:"Creeper Apocalypse",mode:2,uuid:"20180612-2024-2025-2026-107000000001"}}
execute positioned 27 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.creeper_apocalypse.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-107000000002"}}
execute positioned 24 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.creeper_apocalypse.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-107000000003"}}

# Infected
execute positioned 14.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.infected.total_games",label:"Infected",mode:2,uuid:"20180612-2024-2025-2026-108000000001"}}
execute positioned 16 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.infected.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-108000000002"}}
execute positioned 13 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.infected.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-108000000003"}}

## Solo one winner
# Spleef
execute positioned 2 70.5 14.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.spleef.total_games",label:"Spleef",mode:2,uuid:"20180612-2024-2025-2026-109000000001"}}
execute positioned 6 70.5 13 run function {ns}:stats/display/tick_macro {{path:"all.modes.spleef.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-109000000002"}}
execute positioned 6 70.5 16 run function {ns}:stats/display/tick_macro {{path:"all.modes.spleef.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-109000000003"}}

# Dé à coudre
execute positioned 6 70.5 24 run function {ns}:stats/display/tick_macro {{path:"all.modes.de_a_coudre.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-110000000001"}}
execute positioned 2 70.5 25.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.de_a_coudre.total_games",label:"Dé à Coudre",mode:2,uuid:"20180612-2024-2025-2026-110000000002"}}
execute positioned 6 70.5 27 run function {ns}:stats/display/tick_macro {{path:"all.modes.de_a_coudre.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-110000000003"}}

# TNT run
execute positioned 2 70.5 36.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.tnt_run.total_games",label:"TNT Run",mode:2,uuid:"20180612-2024-2025-2026-111000000001"}}
execute positioned 6 70.5 35 run function {ns}:stats/display/tick_macro {{path:"all.modes.tnt_run.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-111000000002"}}
execute positioned 6 70.5 38 run function {ns}:stats/display/tick_macro {{path:"all.modes.tnt_run.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-111000000003"}}

# Block party
execute positioned 2 70.5 47.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.block_party.total_games",label:"Block Party",mode:2,uuid:"20180612-2024-2025-2026-112000000001"}}
execute positioned 6 70.5 46 run function {ns}:stats/display/tick_macro {{path:"all.modes.block_party.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-112000000002"}}
execute positioned 6 70.5 49 run function {ns}:stats/display/tick_macro {{path:"all.modes.block_party.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-112000000003"}}

# Snowball painter
execute positioned 2 70.5 58.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.snowball_painter.total_games",label:"Snowball Painter",mode:2,uuid:"20180612-2024-2025-2026-113000000001"}}
execute positioned 6 70.5 57 run function {ns}:stats/display/tick_macro {{path:"all.modes.snowball_painter.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-113000000002"}}
execute positioned 6 70.5 60 run function {ns}:stats/display/tick_macro {{path:"all.modes.snowball_painter.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-113000000003"}}

# Coin chaser
execute positioned 2 70.5 69.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.coin_chaser.total_games",label:"Coin Chaser",mode:2,uuid:"20180612-2024-2025-2026-114000000001"}}
execute positioned 6 70.5 68 run function {ns}:stats/display/tick_macro {{path:"all.modes.coin_chaser.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-114000000002"}}
execute positioned 6 70.5 71 run function {ns}:stats/display/tick_macro {{path:"all.modes.coin_chaser.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-114000000003"}}

# Bombardement
execute positioned 2 70.5 80.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.bombardement.total_games",label:"Bombardement",mode:2,uuid:"20180612-2024-2025-2026-115000000001"}}
execute positioned 6 70.5 79 run function {ns}:stats/display/tick_macro {{path:"all.modes.bombardement.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-115000000002"}}
execute positioned 6 70.5 82 run function {ns}:stats/display/tick_macro {{path:"all.modes.bombardement.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-115000000003"}}

# Minigolf
execute positioned 2 70.5 91.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.minigolf.total_games",label:"MiniGolf",mode:2,uuid:"20180612-2024-2025-2026-116000000001"}}
execute positioned 6 70.5 90 run function {ns}:stats/display/tick_macro {{path:"all.modes.minigolf.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-116000000002"}}
execute positioned 6 70.5 93 run function {ns}:stats/display/tick_macro {{path:"all.modes.minigolf.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-116000000003"}}

# MLG à coudre
execute positioned 2 70.5 102.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.mlg_a_coudre.total_games",label:"MLG à Coudre",mode:2,uuid:"20180612-2024-2025-2026-117000000001"}}
execute positioned 6 70.5 101 run function {ns}:stats/display/tick_macro {{path:"all.modes.mlg_a_coudre.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-117000000002"}}
execute positioned 6 70.5 104 run function {ns}:stats/display/tick_macro {{path:"all.modes.mlg_a_coudre.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-117000000003"}}

# Fish fight
execute positioned 2 70.5 113.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.fish_fight.total_games",label:"Fish Fight",mode:2,uuid:"20180612-2024-2025-2026-118000000001"}}
execute positioned 6 70.5 112 run function {ns}:stats/display/tick_macro {{path:"all.modes.fish_fight.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-118000000002"}}
execute positioned 6 70.5 115 run function {ns}:stats/display/tick_macro {{path:"all.modes.fish_fight.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-118000000003"}}

# Fireblast
execute positioned 2 70.5 124.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.fireblast.total_games",label:"Fireblast",mode:2,uuid:"20180612-2024-2025-2026-119000000001"}}
execute positioned 6 70.5 123 run function {ns}:stats/display/tick_macro {{path:"all.modes.fireblast.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-119000000002"}}
execute positioned 6 70.5 126 run function {ns}:stats/display/tick_macro {{path:"all.modes.fireblast.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-119000000003"}}
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {{UUID:uuid("20180612-2024-2025-2026-119000000004")}}

# Race
execute positioned 2 70.5 135.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.race.total_games",label:"Race",mode:2,uuid:"20180612-2024-2025-2026-120000000001"}}
execute positioned 6 70.5 134 run function {ns}:stats/display/tick_macro {{path:"all.modes.race.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-120000000002"}}
execute positioned 6 70.5 137 run function {ns}:stats/display/tick_macro {{path:"all.modes.race.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-120000000003"}}

# One shot
execute positioned -2 70.5 135.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.one_shot.total_games",label:"One Shot",mode:2,uuid:"20180612-2024-2025-2026-121000000001"}}
execute positioned -6 70.5 137 run function {ns}:stats/display/tick_macro {{path:"all.modes.one_shot.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-121000000002"}}
execute positioned -6 70.5 134 run function {ns}:stats/display/tick_macro {{path:"all.modes.one_shot.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-121000000003"}}

# Pillars of fortune
execute positioned -2 70.5 124.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.pillars_of_fortune.total_games",label:" Pillars of Fortune ",mode:2,uuid:"20180612-2024-2025-2026-122000000001"}}
execute positioned -6 70.5 126 run function {ns}:stats/display/tick_macro {{path:"all.modes.pillars_of_fortune.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-122000000002"}}
execute positioned -6 70.5 123 run function {ns}:stats/display/tick_macro {{path:"all.modes.pillars_of_fortune.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-122000000003"}}

# Memory mine
execute positioned -2 70.5 113.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.memory_mine.total_games",label:"Memory Mine",mode:2,uuid:"20180612-2024-2025-2026-123000000001"}}
execute positioned -6 70.5 115 run function {ns}:stats/display/tick_macro {{path:"all.modes.memory_mine.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-123000000002"}}
execute positioned -6 70.5 112 run function {ns}:stats/display/tick_macro {{path:"all.modes.memory_mine.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-123000000003"}}
execute if predicate {ns}:chance/0.25 run particle dust{{color:[1.0,0.0,0.0],scale:1.0}} -5 69.55 114 0 0 0 0 1 normal

# Cigogne
execute positioned -2 70.5 102.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.cigogne.total_games",label:"Cigogne",mode:2,uuid:"20180612-2024-2025-2026-124000000001"}}
execute positioned -6 70.5 104 run function {ns}:stats/display/tick_macro {{path:"all.modes.cigogne.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-124000000002"}}
execute positioned -6 70.5 101 run function {ns}:stats/display/tick_macro {{path:"all.modes.cigogne.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-124000000003"}}

# Shoot da'sheep
execute positioned -2 70.5 91.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.shoot_da_sheep.total_games",label:"Shoot Da\'Sheep",mode:2,uuid:"20180612-2024-2025-2026-125000000001"}}
execute positioned -6 70.5 93 run function {ns}:stats/display/tick_macro {{path:"all.modes.shoot_da_sheep.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-125000000002"}}
execute positioned -6 70.5 90 run function {ns}:stats/display/tick_macro {{path:"all.modes.shoot_da_sheep.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-125000000003"}}

# Simultaneous jump
execute positioned -2 70.5 80.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.simultaneous_jump.total_games",label:"Simultaneous Jump",mode:2,uuid:"20180612-2024-2025-2026-126000000001"}}
execute positioned -6 70.5 82 run function {ns}:stats/display/tick_macro {{path:"all.modes.simultaneous_jump.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-126000000002"}}
execute positioned -6 70.5 79 run function {ns}:stats/display/tick_macro {{path:"all.modes.simultaneous_jump.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-126000000003"}}

# Build battle
execute positioned -2 70.5 69.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.build_battle.total_games",label:"Build Battle",mode:2,uuid:"20180612-2024-2025-2026-127000000001"}}
execute positioned -6 70.5 71 run function {ns}:stats/display/tick_macro {{path:"all.modes.build_battle.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-127000000002"}}
execute positioned -6 70.5 68 run function {ns}:stats/display/tick_macro {{path:"all.modes.build_battle.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-127000000003"}}

# Moutron
execute positioned -2 70.5 58.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.moutron.total_games",label:"Moutron",mode:2,uuid:"20180612-2024-2025-2026-128000000001"}}
execute positioned -6 70.5 60 run function {ns}:stats/display/tick_macro {{path:"all.modes.moutron.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-128000000002"}}
execute positioned -6 70.5 57 run function {ns}:stats/display/tick_macro {{path:"all.modes.moutron.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-128000000003"}}

# Thunder spear
execute positioned -2 70.5 47.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.thunder_spear.total_games",label:"Thunder Spear",mode:2,uuid:"20180612-2024-2025-2026-129000000001"}}
execute positioned -6 70.5 49 run function {ns}:stats/display/tick_macro {{path:"all.modes.thunder_spear.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-129000000002"}}
execute positioned -6 70.5 46 run function {ns}:stats/display/tick_macro {{path:"all.modes.thunder_spear.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-129000000003"}}

# Castagne
execute positioned -2 70.5 36.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.castagne.total_games",label:"Castagne",mode:2,uuid:"20180612-2024-2025-2026-130000000001"}}
execute positioned -6 70.5 38 run function {ns}:stats/display/tick_macro {{path:"all.modes.castagne.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-130000000002"}}
execute positioned -6 70.5 35 run function {ns}:stats/display/tick_macro {{path:"all.modes.castagne.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-130000000003"}}

# Feed fast
execute positioned -2 70.5 25.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.feed_fast.total_games",label:"Feed Fast",mode:2,uuid:"20180612-2024-2025-2026-131000000001"}}
execute positioned -6 70.5 27 run function {ns}:stats/display/tick_macro {{path:"all.modes.feed_fast.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-131000000002"}}
execute positioned -6 70.5 24 run function {ns}:stats/display/tick_macro {{path:"all.modes.feed_fast.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-131000000003"}}

# Pitchout
execute positioned -2 70.5 14.5 run function {ns}:stats/display/tick_macro {{path:"all.modes.pitchout.total_games",label:"Pitchout",mode:2,uuid:"20180612-2024-2025-2026-132000000001"}}
execute positioned -6 70.5 16 run function {ns}:stats/display/tick_macro {{path:"all.modes.pitchout.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-132000000002"}}
execute positioned -6 70.5 13 run function {ns}:stats/display/tick_macro {{path:"all.modes.pitchout.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-132000000003"}}


## Team VS Team
# Spectres game
execute positioned -14.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.spectres_game.total_games",label:"Spectres Game",mode:2,uuid:"20180612-2024-2025-2026-133000000001"}}
execute positioned -13 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.spectres_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-133000000002"}}
execute positioned -16 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.spectres_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-133000000003"}}
particle dolphin -15 69.55 4 0.2 0 0.2 0 2 normal

# SheepWars
execute positioned -25.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.sheepwars.total_games",label:"SheepWars",mode:2,uuid:"20180612-2024-2025-2026-134000000001"}}
execute positioned -24 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.sheepwars.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-134000000002"}}
execute positioned -27 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.sheepwars.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-134000000003"}}

# Rush the flag
execute positioned -36.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.rush_the_flag.total_games",label:"Rush The Flag",mode:2,uuid:"20180612-2024-2025-2026-135000000001"}}
execute positioned -35 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.rush_the_flag.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-135000000002"}}
execute positioned -38 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.rush_the_flag.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-135000000003"}}

# Guy shooter
execute positioned -46 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.gay_shooter.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-136000000001"}}
execute positioned -47.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.gay_shooter.total_games",label:"Guy Shooter",mode:2,uuid:"20180612-2024-2025-2026-136000000002"}}
execute positioned -49 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.gay_shooter.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-136000000003"}}

# Layers 4 teams
execute positioned -58.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.layers_4_teams.total_games",label:"Layers 4 Teams",mode:2,uuid:"20180612-2024-2025-2026-137000000001"}}
execute positioned -57 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.layers_4_teams.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-137000000002"}}
execute positioned -60 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.layers_4_teams.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-137000000003"}}

# Beat the kings
execute positioned -69.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.beat_the_kings.total_games",label:"Beat The Kings",mode:2,uuid:"20180612-2024-2025-2026-138000000001"}}
execute positioned -68 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.beat_the_kings.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-138000000002"}}
execute positioned -71 70.5 6 run function {ns}:stats/display/tick_macro {{path:"all.modes.beat_the_kings.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-138000000003"}}

# GlassRunner
execute positioned -80.5 70.5 2 run function {ns}:stats/display/tick_macro {{path:"all.modes.glassrunner.total_games",label:"GlassRunner",mode:2,uuid:"20180612-2024-2025-2026-139000000001"}}
execute positioned -79 70.5 7 run function {ns}:stats/display/tick_macro {{path:"all.modes.glassrunner.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-139000000002"}}
execute positioned -82 70.5 7 run function {ns}:stats/display/tick_macro {{path:"all.modes.glassrunner.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-139000000003"}}
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {{NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {{NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}}

# Laser game
execute positioned -69.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.laser_game.total_games",label:"Laser Game",mode:2,uuid:"20180612-2024-2025-2026-140000000001"}}
execute positioned -71 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.laser_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-140000000002"}}
execute positioned -68 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.laser_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-140000000003"}}

# Layers 2 teams
execute positioned -58.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.layers_2_teams.total_games",label:"Layers 2 Teams",mode:2,uuid:"20180612-2024-2025-2026-141000000001"}}
execute positioned -60 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.layers_2_teams.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-141000000002"}}
execute positioned -57 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.layers_2_teams.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-141000000003"}}

# Protect the king
execute positioned -47.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.protect_the_king.total_games",label:"Protect The King",mode:2,uuid:"20180612-2024-2025-2026-142000000001"}}
execute positioned -49 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.protect_the_king.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-142000000002"}}
execute positioned -46 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.protect_the_king.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-142000000003"}}

# Rush the point
execute positioned -36.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.rush_the_point.total_games",label:"Rush The Point",mode:2,uuid:"20180612-2024-2025-2026-143000000001"}}
execute positioned -38 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.rush_the_point.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-143000000002"}}
execute positioned -35 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.rush_the_point.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-143000000003"}}

# Capture the flag
execute positioned -25.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.capture_the_flag.total_games",label:"Capture The Flag",mode:2,uuid:"20180612-2024-2025-2026-144000000001"}}
execute positioned -27 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.capture_the_flag.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-144000000002"}}
execute positioned -24 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.capture_the_flag.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-144000000003"}}

# Traitors game
execute positioned -14.5 70.5 -2 run function {ns}:stats/display/tick_macro {{path:"all.modes.traitors_game.total_games",label:"Traitors Game",mode:2,uuid:"20180612-2024-2025-2026-145000000001"}}
execute positioned -16 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.traitors_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-145000000002"}}
execute positioned -13 70.5 -6 run function {ns}:stats/display/tick_macro {{path:"all.modes.traitors_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-145000000003"}}
""")

	# switch:lobby_tick
	write_function(f"{ns}:lobby_tick", f"""
# Prevent entities (detached entities are lobby-owned, never wiped)
kill @e[type=arrow,distance=..200,tag=!detached]
kill @e[type=tnt,distance=..200,tag=!detached]
kill @e[type=creeper,distance=..200,tag=!detached]
kill @e[type=sheep,distance=..200,tag=!detached]
kill @e[type=falling_block,distance=..200,tag=!detached,nbt={{Time:20}}]

# Duality Jump (tick)
execute if score #players_in_lobby {ns}.data matches 1.. if block 20 79 94 stone_button[powered=true] run summon spectral_arrow 21.00 80.38 93.50 {{Tags:["detached"],Motion:[1.5,0.085,0.0],Rotation:[90f,0f],pickup:0b,life:1170s}}
execute if score #players_in_lobby {ns}.data matches 1.. if block 20 79 94 stone_button[powered=true] run setblock 20 79 94 stone_button[face=wall,facing=south,powered=false]
execute if score #players_in_lobby {ns}.data matches 1.. if block 28 79 90 stone_button[powered=true] run summon spectral_arrow 26.95 80.38 90.50 {{Tags:["detached"],Motion:[-1.5,0.093,0.0],Rotation:[-90f,0f],pickup:0b,life:1170s}}
execute if score #players_in_lobby {ns}.data matches 1.. if block 28 79 90 stone_button[powered=true] run setblock 28 79 90 stone_button[face=wall,facing=east,powered=false]
execute if score #players_in_lobby {ns}.data matches 1.. if block 45 87 90 stone_button[powered=true] run setblock 44 86 90 water
execute if score #players_in_lobby {ns}.data matches 1.. unless block 45 87 90 stone_button[powered=true] run setblock 44 86 90 air

execute if score #players_in_lobby {ns}.data matches 1.. unless block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 waxed_copper_block
execute if score #players_in_lobby {ns}.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 redstone_block
execute if score #players_in_lobby {ns}.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run particle minecraft:dust{{color:[1,0,0],scale:1}} 32 78.5 102 1.8 .01 .01 1 5

# NPCs
execute if score #players_in_lobby {ns}.data matches 1.. positioned -22 69.8 3 run function {ns}:npc/ofchara/tick
""")

	# switch:second
	write_function(f"{ns}:second", f"""
# Timer
scoreboard players set #tick {ns}.data 0
scoreboard players add #global_second {ns}.data 1
scoreboard players add #score {ns}.reconnect 1
scoreboard players operation @a {ns}.reconnect = #score {ns}.reconnect

# Others
execute if score #engine_state {ns}.data matches 3 run function {ns}:engine/signals/second

# Last death timer & play time
scoreboard players add @a {ns}.last_death 1
scoreboard players add @a {ns}.play_time 1

# Second Right click reset
scoreboard players reset @a {ns}.second_right_click

# Stat display life
scoreboard players add @e[type=text_display,tag={ns}.stat_display] {ns}.data 1
kill @e[type=text_display,tag={ns}.stat_display,scores={{{ns}.data=60..}}]

# Kill items out of the map
execute if score #engine_state {ns}.data matches 3 as @e[type=item] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #{ns}:out_of_map run kill @s
execute if score #engine_state {ns}.data matches 3 as @e[type=item] at @s if block ~ ~-1 ~ barrier if block ~ ~ ~ #{ns}:out_of_map run kill @s

# Tutorial 5 seconds loop (1/5 times)
scoreboard players operation #temp {ns}.data = #global_second {ns}.data
scoreboard players operation #temp {ns}.data %= #5 {ns}.data
execute if score #temp {ns}.data matches 0 as @a[team={ns}.tutorial] at @s run function {ns}:player/tutorial/second

# Lobby second
execute if score #players_in_lobby {ns}.data matches 1.. in minecraft:overworld positioned 0 69 0 run function {ns}:lobby_second

# Additional black hole for switch_space in {ns}:game
execute in {ns}:game positioned 0 100 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000003 run summon item_display ~ ~ ~ {{UUID:uuid("20180612-2024-2025-2026-000000000003"),item:{{id:"stone",count:1,components:{{"item_model":"{ns}:bg_black_hole"}}}},Tags:["{ns}.black_hole_lobby"],transformation:{{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}}}
""")

	# switch:load (called by the load function tag, registered in link.py)
	write_function(f"{ns}:load", rf"""
scoreboard objectives add {ns}.lang dummy

scoreboard objectives add {ns}.id dummy
scoreboard objectives add {ns}.data dummy
scoreboard objectives add {ns}.tutorial dummy
scoreboard objectives add {ns}.health health
scoreboard objectives add {ns}.money dummy
scoreboard objectives add {ns}.money_bonus dummy
scoreboard objectives add {ns}.last_total_games dummy
scoreboard objectives add {ns}.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add {ns}.second_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add {ns}.reconnect dummy
scoreboard objectives add {ns}.alive dummy
scoreboard objectives add {ns}.play_time dummy
scoreboard objectives add {ns}.advancements dummy
scoreboard objectives add {ns}.lobby_respawn dummy

scoreboard objectives add {ns}.death deathCount
scoreboard objectives add {ns}.kill playerKillCount
scoreboard objectives add {ns}.last_death dummy

scoreboard objectives add {ns}.trigger.lang trigger
scoreboard objectives add {ns}.trigger.help trigger
scoreboard objectives add {ns}.trigger.money trigger
scoreboard objectives add {ns}.trigger.game_vote trigger
scoreboard objectives add {ns}.trigger.stats trigger
scoreboard objectives add {ns}.trigger.changelog trigger
scoreboard objectives add {ns}.trigger.detach trigger
scoreboard objectives add {ns}.trigger.attach trigger
scoreboard objectives add {ns}.trigger.shop trigger
scoreboard objectives add {ns}.trigger.tutorial trigger
scoreboard objectives add {ns}.trigger.succes trigger
scoreboard objectives add {ns}.trigger.rating trigger
scoreboard objectives add {ns}.trigger.night_vision trigger
scoreboard objectives add {ns}.trigger.music trigger
scoreboard objectives add {ns}.trigger.coupdetat trigger

scoreboard objectives add {ns}.stats.kills playerKillCount
scoreboard objectives add {ns}.stats.deaths deathCount
scoreboard objectives add {ns}.stats.played dummy
scoreboard objectives add {ns}.stats.wins dummy
scoreboard objectives add {ns}.stats.winrate dummy

scoreboard objectives add {ns}.win_streak dummy
scoreboard objectives add {ns}.lobby_easter_egg_counter dummy

team add {ns}.no_pvp {{"text":"[No PvP]"}}
team add {ns}.detached {{"text":"[Detached]","color":"dark_gray"}}
team add {ns}.tutorial {{"text":"[Tutorial]","color":"yellow"}}
team modify {ns}.no_pvp friendlyFire false
team modify {ns}.no_pvp color white
team modify {ns}.detached friendlyFire false
team modify {ns}.detached color gray
team modify {ns}.detached prefix {{"text":"[Lobby] ","color":"dark_gray"}}
team modify {ns}.tutorial prefix {{"text":"[Tutorial] ","color":"yellow"}}
team modify {ns}.tutorial color gold

gamerule minecraft:max_command_sequence_length 2147483647
forceload add 0 0
execute in {ns}:game run forceload add 0 0
execute store result score #cinematic_entities {ns}.data if entity @e[tag={ns}.cinematic]


## Storage
# tellraw @a ["\n",{{"nbt":"Paralya","storage":"{ns}:main","interpret":true}},{{"text":" Souhaitez tous la bienvenue à "}},{{"selector":"@s","color":"aqua"}},{{"text":" !\nIl est le "}},{{"score":{{"name":"#next_id","objective":"{ns}.data"}},"color":"aqua"}},{{"text":"ème joueur a rejoindre !"}}]
data modify storage {ns}:main ParalyaMusic set value {{"text":"[ParalyaMusic]","color":"dark_purple"}}
data modify storage {ns}:main ParalyaStats set value {{"text":"[ParalyaStats]","color":"yellow"}}
data modify storage {ns}:main ParalyaError set value {{"text":"[ParalyaError]","color":"red"}}
data modify storage {ns}:main ParalyaWarning set value {{"text":"[Paralya]","color":"gold"}}
data modify storage {ns}:main ParalyaHelp set value [{{"text":"[","color":"dark_aqua"}},{{"text":"ParalyaHelp","color":"aqua"}},{{"text":"]","color":"dark_aqua"}}]
data modify storage {ns}:main Paralya set value [{{"text":"[","color":"dark_aqua"}},{{"text":"Paralya","color":"aqua"}},{{"text":"]","color":"dark_aqua"}}]

data modify storage {ns}:main ParalyaSapphiresFR set value [{{"text":"","color":"blue"}},{{"text":"[","color":"#1b1796"}},{{"text":"Saphirs","color":"blue"}},{{"text":"]","color":"#1b1796"}}]
data modify storage {ns}:main ParalyaAstuceFR set value [{{"text":"[","color":"dark_green"}},{{"text":"ParalyaAstuceFR","color":"green"}},{{"text":"]","color":"dark_green"}}]
data modify storage {ns}:main ParalyaPvPOldFR set value {{"text":"[PvP 1.8 : Vitesse d'attaque infinie]","color":"dark_aqua"}}
data modify storage {ns}:main ParalyaPvPNewFR set value {{"text":"[PvP 1.9+ : Nouveau PvP]","color":"dark_green"}}

data modify storage {ns}:main ParalyaSapphiresEN set value [{{"text":"","color":"blue"}},{{"text":"[","color":"#1b1796"}},{{"text":"Sapphires","color":"blue"}},{{"text":"]","color":"#1b1796"}}]
data modify storage {ns}:main ParalyaAstuceEN set value [{{"text":"[","color":"dark_green"}},{{"text":"ParalyaTip","color":"green"}},{{"text":"]","color":"dark_green"}}]
data modify storage {ns}:main ParalyaPvPOldEN set value {{"text":"[PvP 1.8 : Infinite attack speed]","color":"dark_aqua"}}
data modify storage {ns}:main ParalyaPvPNewEN set value {{"text":"[PvP 1.9+ : New PvP]","color":"dark_green"}}

# Sapphire icon
# Example: tellraw @s {{"nbt":"SapphireFR","storage":"{ns}:main","interpret":true}}
data modify storage {ns}:main SapphireFR set value {{"text":"S","color":"white","font":"{ns}:main","hover_event":{{"action":"show_text","value":{{"text":"Saphirs","color":"blue"}}}}}}
data modify storage {ns}:main SapphireEN set value {{"text":"S","color":"white","font":"{ns}:main","hover_event":{{"action":"show_text","value":{{"text":"Sapphires","color":"blue"}}}}}}

# Setup stats storage if needed
execute unless data storage {ns}:stats all run data modify storage {ns}:stats all set value {{player:{{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}},modes:{{}}}}
# ex: all = {{player:{{total_played:[{{name:"Stoupy51",value:0}}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]}},modes:{{pitch_creep:{{total_games:0,played:[],wins:[],played_win_ratio:[]}}, ...}}}}

# Setup storages if needed
execute unless data storage {ns}:ratings all run data modify storage {ns}:ratings all set value []
execute unless data storage {ns}:main UUIDs run data modify storage {ns}:main UUIDs set value []

# Scoreboard constants, shop load, advancements, and music load
function {ns}:shop/_load
function {ns}:advancements/_load
function {ns}:music/load
execute unless score #can_attach {ns}.data matches 0.. run scoreboard players set #can_attach {ns}.data 1
execute unless score #test_mode {ns}.data matches 0.. run scoreboard players set #test_mode {ns}.data 0
execute unless score #min_required {ns}.data matches 1.. run scoreboard players set #min_required {ns}.data 5


## Define mini-games list
data modify storage {ns}:main minigames set value []
function {ns}:modes/load


# Auto index
data modify storage {ns}:main indexed_minigames set value []
scoreboard players set #index {ns}.data 1
function {ns}:auto_index
data modify storage {ns}:main minigames set from storage {ns}:main indexed_minigames
data remove storage {ns}:main temp

# Map each voting group id to the list of its minigames (used to resolve a group once voted)
data modify storage {ns}:main groups_games set value {{}}
data modify storage {ns}:temp copy set from storage {ns}:main minigames
execute if data storage {ns}:temp copy[0] run function {ns}:build_groups_games with storage {ns}:temp copy[0]

## States
execute if score #engine_state {ns}.data matches -1 run tell none désactivé
execute if score #engine_state {ns}.data matches 0 run tell none à l arrêt
execute if score #engine_state {ns}.data matches 1 run tell none engine start
execute if score #engine_state {ns}.data matches 2 run tell none temps de vote
execute if score #engine_state {ns}.data matches 3 run tell none game en cours

# Games and maps picks history
execute unless data storage {ns}:main history run data modify storage {ns}:main history set value {{games:[],maps:[],time_since_last_play:{{}}}}
""")

	# switch:tick (called by the tick function tag, registered in link.py)
	write_function(f"{ns}:tick", f"""
# Last death timer
scoreboard players set @a[scores={{{ns}.death=1..}}] {ns}.last_death 0
scoreboard players set @a[scores={{{ns}.death=1..}}] {ns}.death 0

## Timer and tick related
scoreboard players add #tick {ns}.data 1
scoreboard players set #players_in_lobby {ns}.data 0
execute as @a[sort=random] at @s run function {ns}:player/tick
execute if score #tick {ns}.data matches 20.. run function {ns}:second

# Engine : games ticks, start, stop
execute if score #engine_state {ns}.data matches 3 run function {ns}:engine/signals/tick
execute if score #engine_state {ns}.data matches 0 if entity @a[tag=!detached] run function {ns}:engine/start
execute unless score #engine_state {ns}.data matches 0 unless entity @a[tag=!detached] run function {ns}:engine/stop

# Cut Clean support
execute if score #cut_clean {ns}.data matches 1 as @e[type=item,tag=!{ns}.cut_clean,nbt={{Age:2s}}] run function {ns}:cut_clean

# Cinematic entities
execute if score #cinematic_entities {ns}.data matches 1.. as @e[type=item_display,tag={ns}.cinematic] at @s run function {ns}:cinematic/entity_tick_at_self

# Kill players out of the map
execute if score #engine_state {ns}.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #{ns}:out_of_map run function {ns}:player/kill_out_of_map
execute if score #engine_state {ns}.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~ ~ #{ns}:out_of_map run function {ns}:player/kill_out_of_map

# Right click reset
scoreboard players reset @a {ns}.right_click

# Spectral arrow fix in lobby
execute as @e[type=spectral_arrow,x=26,y=80,z=93,distance=..10,nbt=!{{pickup:0b}}] run data modify entity @s pickup set value 0b

# Lobby tick
execute in minecraft:overworld positioned 0 69 0 run function {ns}:lobby_tick

## Profiling
#execute as Stoupy51 run function {ns}:profiling/start
""")
