
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import write_function


# Top-level "switch:*" functions that don't belong to a deeper subsystem.
# (load / tick are handled by write_load_file / write_tick_file in src/link.py)
@stp.measure_time(message="Generated root files")
def main() -> None:
	ns: str = "switch"

	# switch:none (no-op target)
	write_function(f"{ns}:none", """
# Function that does nothing
""")

	# switch:cut_clean (turn raw ores into ingots when dropped, keeping custom items intact)
	write_function(f"{ns}:cut_clean", """
tag @s add switch.cut_clean

scoreboard players set #custom switch.data 1
scoreboard players set #success switch.data 0
execute store result score #count switch.data run data get entity @s Item.count

# Vanilla Items
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_iron"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:iron_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_gold"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:gold_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:raw_copper"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:copper_ingot"
execute if score #success switch.data matches 0 store success score #success switch.data if data entity @s Item{id:"minecraft:ancient_debris"} unless data entity @s Item.components."minecraft:item_model" run data modify entity @s Item.id set value "minecraft:netherite_scrap"
execute if score #success switch.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count switch.data

# Custom Items
execute if score #success switch.data matches 0 run scoreboard players set #custom switch.data 0
execute if score #success switch.data matches 0 run setblock 0 1 0 air
execute if score #success switch.data matches 0 run setblock 0 1 0 yellow_shulker_box
execute if score #custom switch.data matches 1 run data modify entity @s Item set from block 0 1 0 Items[0]
execute if score #custom switch.data matches 1 store result entity @s Item.count int 1 run scoreboard players get #count switch.data
execute if score #success switch.data matches 0 run setblock 0 1 0 air
""")

	# switch:auto_index (recursive: index the minigames list into indexed_minigames)
	write_function(f"{ns}:auto_index", """
# Copy the minigames list to a temporary storage and add an index
data modify storage switch:main temp set from storage switch:main minigames[0]
execute store result storage switch:main temp.index int 1 run scoreboard players get #index switch.data
scoreboard players add #index switch.data 1

# Copy name for differents langs
execute unless data storage switch:main temp.name_en run data modify storage switch:main temp.name_en set from storage switch:main temp.name_fr
execute unless data storage switch:main temp.name_jp run data modify storage switch:main temp.name_jp set from storage switch:main temp.name_fr

# Copy the temporary storage back to the new minigames list
data modify storage switch:main indexed_minigames append from storage switch:main temp

# Create the stats objectives for the minigame
function switch:utils/create_stats_stuff with storage switch:main temp

# Remove the first minigame from the list and continue
data remove storage switch:main minigames[0]
execute if data storage switch:main minigames[0] run function switch:auto_index
""")

	# switch:test_mode (toggle the global test mode)
	write_function(f"{ns}:test_mode", """
# Get test mode state
scoreboard players set #is_enabled switch.data 0
execute if score #test_mode switch.data matches 1 run scoreboard players set #is_enabled switch.data 1

# Test Mode OFF -> ON
execute if score #is_enabled switch.data matches 0 run scoreboard players set #test_mode switch.data 1
execute if score #is_enabled switch.data matches 0 run scoreboard players set #can_attach switch.data 0

# Test Mode ON -> OFF
execute if score #is_enabled switch.data matches 1 run scoreboard players set #test_mode switch.data 0
execute if score #is_enabled switch.data matches 1 run scoreboard players set #can_attach switch.data 1

# Message the player
function switch:translations/test_mode
""")

	# switch:lobby_second
	write_function(f"{ns}:lobby_second", r"""
# If players in the lobby, show title action bar with the current game and number of players
function switch:player/detached_action_bar

# Prevent end gateway's beam
data modify block 34 82 47 Age set value 143L

# Jumps
execute positioned -8 81.5 -22 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_green\\\"}].players",path:"jump_green",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000001"}
execute positioned 22 88.5 0 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_white\\\"}].players",path:"jump_white",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000002"}
execute positioned 0 81.5 -39 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_blue\\\"}].players",path:"jump_blue",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000003"}
execute positioned 33 83.5 47 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_dripstone\\\"}].players",path:"jump_dripstone",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000004"}
execute positioned 63 88.5 10 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_yellow\\\"}].players",path:"jump_yellow",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000005"}
execute positioned -26 91.5 15 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_red\\\"}].players",path:"jump_red",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000006"}
execute positioned 44 86.5 82 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_duality\\\"}].players",path:"jump_duality",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000007"}
execute positioned -44 93.5 27 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_pink\\\"}].players",path:"jump_pink",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000008"}
execute positioned -20 75.5 -78 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_brown\\\"}].players",path:"jump_brown",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000009"}
execute positioned -42 94.5 32 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_purple\\\"}].players",path:"jump_purple",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000010"}
execute positioned -123 79.5 -11 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_bricks\\\"}].players",path:"jump_bricks",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000011"}
execute positioned -83 100.5 71 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_graviglitch\\\"}].players",path:"jump_graviglitch",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000012"}
execute positioned 36 83.5 -73 run function switch:stats/display/tick_adv {adv_path:"all[{id:\\\"jump_obsidian\\\"}].players",path:"jump_obsidian",label:"Completion Order",uuid:"20180612-2024-2025-2026-201000000013"}

# Black holes (lobby and tutorial area)
execute positioned 0 69 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000001 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000001"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_lobby"],transformation:{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
execute positioned -500 69 -500 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000002 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000002"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_tutorial"],transformation:{scale:[-100f,-100f,-100f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}


### Minigames stats
## None
execute positioned 47.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.TODO2.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000001"}
execute positioned 36.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.TODOO.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000002"}
execute positioned -80.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.TODO.total_games",label:"???",mode:2,uuid:"20180612-2024-2025-2026-101000000003"}

## Global
execute positioned -5 71.5 -15 run function switch:stats/display/tick_macro {path:"all.player.total_deaths",label:"Deaths",mode:3,uuid:"20180612-2024-2025-2026-102000000001"}
execute positioned -5 71.5 -18 run function switch:stats/display/tick_macro {path:"all.player.total_kills",label:"Kills",mode:3,uuid:"20180612-2024-2025-2026-102000000002"}
execute positioned -3 71.5 -20 run function switch:stats/display/tick_macro {path:"all.player.total_wins",label:"Victories",mode:3,uuid:"20180612-2024-2025-2026-102000000003"}
execute positioned 0 71.5 -21 run function switch:stats/display/tick_macro {path:"all.player.played_win_ratio",label:"Win rate",mode:3,uuid:"20180612-2024-2025-2026-102000000004"}
execute positioned 3 71.5 -20 run function switch:stats/display/tick_macro {path:"all.player.total_played",label:"Games played",mode:3,uuid:"20180612-2024-2025-2026-102000000005"}
execute positioned 5 71.5 -18 run function switch:stats/display/tick_macro {path:"all.player.advancement_count",label:"Advancements",mode:3,uuid:"20180612-2024-2025-2026-102000000006"}
execute positioned 5 71.5 -15 run function switch:stats/display/tick_macro {path:"all.player.total_money",label:"Current money",mode:3,uuid:"20180612-2024-2025-2026-102000000007"}


## Solo multiple winners
# Murder mystery
execute positioned 14.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.murder_mystery.total_games",label:"Murder Mystery",mode:2,uuid:"20180612-2024-2025-2026-103000000001"}
execute positioned 13 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.murder_mystery.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-103000000002"}
execute positioned 16 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.murder_mystery.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-103000000003"}

# Pitch creep
execute positioned 25.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.pitch_creep.total_games",label:"Pitch Creep",mode:2,uuid:"20180612-2024-2025-2026-104000000001"}
execute positioned 24 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.pitch_creep.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-104000000002"}
execute positioned 27 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.pitch_creep.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-104000000003"}

# Warden escape
execute positioned 36.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.warden_escape.total_games",label:"Warden Escape",mode:2,uuid:"20180612-2024-2025-2026-105000000001"}
execute positioned 35 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.warden_escape.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-105000000002"}
execute positioned 38 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.warden_escape.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-105000000003"}

# Panic chase
execute positioned 47.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.panic_chase.total_games",label:"Panic Chase",mode:2,uuid:"20180612-2024-2025-2026-106000000001"}
execute positioned 49 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.panic_chase.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-106000000002"}
execute positioned 46 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.panic_chase.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-106000000003"}

# Creeper apocalypse
execute positioned 25.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.creeper_apocalypse.total_games",label:"Creeper Apocalypse",mode:2,uuid:"20180612-2024-2025-2026-107000000001"}
execute positioned 27 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.creeper_apocalypse.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-107000000002"}
execute positioned 24 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.creeper_apocalypse.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-107000000003"}

# Infected
execute positioned 14.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.infected.total_games",label:"Infected",mode:2,uuid:"20180612-2024-2025-2026-108000000001"}
execute positioned 16 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.infected.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-108000000002"}
execute positioned 13 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.infected.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-108000000003"}

## Solo one winner
# Spleef
execute positioned 2 70.5 14.5 run function switch:stats/display/tick_macro {path:"all.modes.spleef.total_games",label:"Spleef",mode:2,uuid:"20180612-2024-2025-2026-109000000001"}
execute positioned 6 70.5 13 run function switch:stats/display/tick_macro {path:"all.modes.spleef.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-109000000002"}
execute positioned 6 70.5 16 run function switch:stats/display/tick_macro {path:"all.modes.spleef.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-109000000003"}

# Dé à coudre
execute positioned 6 70.5 24 run function switch:stats/display/tick_macro {path:"all.modes.de_a_coudre.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-110000000001"}
execute positioned 2 70.5 25.5 run function switch:stats/display/tick_macro {path:"all.modes.de_a_coudre.total_games",label:"Dé à Coudre",mode:2,uuid:"20180612-2024-2025-2026-110000000002"}
execute positioned 6 70.5 27 run function switch:stats/display/tick_macro {path:"all.modes.de_a_coudre.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-110000000003"}

# TNT run
execute positioned 2 70.5 36.5 run function switch:stats/display/tick_macro {path:"all.modes.tnt_run.total_games",label:"TNT Run",mode:2,uuid:"20180612-2024-2025-2026-111000000001"}
execute positioned 6 70.5 35 run function switch:stats/display/tick_macro {path:"all.modes.tnt_run.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-111000000002"}
execute positioned 6 70.5 38 run function switch:stats/display/tick_macro {path:"all.modes.tnt_run.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-111000000003"}

# Block party
execute positioned 2 70.5 47.5 run function switch:stats/display/tick_macro {path:"all.modes.block_party.total_games",label:"Block Party",mode:2,uuid:"20180612-2024-2025-2026-112000000001"}
execute positioned 6 70.5 46 run function switch:stats/display/tick_macro {path:"all.modes.block_party.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-112000000002"}
execute positioned 6 70.5 49 run function switch:stats/display/tick_macro {path:"all.modes.block_party.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-112000000003"}

# Snowball painter
execute positioned 2 70.5 58.5 run function switch:stats/display/tick_macro {path:"all.modes.snowball_painter.total_games",label:"Snowball Painter",mode:2,uuid:"20180612-2024-2025-2026-113000000001"}
execute positioned 6 70.5 57 run function switch:stats/display/tick_macro {path:"all.modes.snowball_painter.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-113000000002"}
execute positioned 6 70.5 60 run function switch:stats/display/tick_macro {path:"all.modes.snowball_painter.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-113000000003"}

# Coin chaser
execute positioned 2 70.5 69.5 run function switch:stats/display/tick_macro {path:"all.modes.coin_chaser.total_games",label:"Coin Chaser",mode:2,uuid:"20180612-2024-2025-2026-114000000001"}
execute positioned 6 70.5 68 run function switch:stats/display/tick_macro {path:"all.modes.coin_chaser.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-114000000002"}
execute positioned 6 70.5 71 run function switch:stats/display/tick_macro {path:"all.modes.coin_chaser.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-114000000003"}

# Bombardement
execute positioned 2 70.5 80.5 run function switch:stats/display/tick_macro {path:"all.modes.bombardement.total_games",label:"Bombardement",mode:2,uuid:"20180612-2024-2025-2026-115000000001"}
execute positioned 6 70.5 79 run function switch:stats/display/tick_macro {path:"all.modes.bombardement.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-115000000002"}
execute positioned 6 70.5 82 run function switch:stats/display/tick_macro {path:"all.modes.bombardement.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-115000000003"}

# Minigolf
execute positioned 2 70.5 91.5 run function switch:stats/display/tick_macro {path:"all.modes.minigolf.total_games",label:"MiniGolf",mode:2,uuid:"20180612-2024-2025-2026-116000000001"}
execute positioned 6 70.5 90 run function switch:stats/display/tick_macro {path:"all.modes.minigolf.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-116000000002"}
execute positioned 6 70.5 93 run function switch:stats/display/tick_macro {path:"all.modes.minigolf.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-116000000003"}

# MLG à coudre
execute positioned 2 70.5 102.5 run function switch:stats/display/tick_macro {path:"all.modes.mlg_a_coudre.total_games",label:"MLG à Coudre",mode:2,uuid:"20180612-2024-2025-2026-117000000001"}
execute positioned 6 70.5 101 run function switch:stats/display/tick_macro {path:"all.modes.mlg_a_coudre.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-117000000002"}
execute positioned 6 70.5 104 run function switch:stats/display/tick_macro {path:"all.modes.mlg_a_coudre.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-117000000003"}

# Fish fight
execute positioned 2 70.5 113.5 run function switch:stats/display/tick_macro {path:"all.modes.fish_fight.total_games",label:"Fish Fight",mode:2,uuid:"20180612-2024-2025-2026-118000000001"}
execute positioned 6 70.5 112 run function switch:stats/display/tick_macro {path:"all.modes.fish_fight.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-118000000002"}
execute positioned 6 70.5 115 run function switch:stats/display/tick_macro {path:"all.modes.fish_fight.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-118000000003"}

# Fireblast
execute positioned 2 70.5 124.5 run function switch:stats/display/tick_macro {path:"all.modes.fireblast.total_games",label:"Fireblast",mode:2,uuid:"20180612-2024-2025-2026-119000000001"}
execute positioned 6 70.5 123 run function switch:stats/display/tick_macro {path:"all.modes.fireblast.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-119000000002"}
execute positioned 6 70.5 126 run function switch:stats/display/tick_macro {path:"all.modes.fireblast.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-119000000003"}
execute unless entity 20180612-2024-2025-2026-119000000004 run summon small_fireball 6 70.42 124.5 {UUID:uuid("20180612-2024-2025-2026-119000000004")}

# Race
execute positioned 2 70.5 135.5 run function switch:stats/display/tick_macro {path:"all.modes.race.total_games",label:"Race",mode:2,uuid:"20180612-2024-2025-2026-120000000001"}
execute positioned 6 70.5 134 run function switch:stats/display/tick_macro {path:"all.modes.race.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-120000000002"}
execute positioned 6 70.5 137 run function switch:stats/display/tick_macro {path:"all.modes.race.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-120000000003"}

# One shot
execute positioned -2 70.5 135.5 run function switch:stats/display/tick_macro {path:"all.modes.one_shot.total_games",label:"One Shot",mode:2,uuid:"20180612-2024-2025-2026-121000000001"}
execute positioned -6 70.5 137 run function switch:stats/display/tick_macro {path:"all.modes.one_shot.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-121000000002"}
execute positioned -6 70.5 134 run function switch:stats/display/tick_macro {path:"all.modes.one_shot.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-121000000003"}

# Pillars of fortune
execute positioned -2 70.5 124.5 run function switch:stats/display/tick_macro {path:"all.modes.pillars_of_fortune.total_games",label:" Pillars of Fortune ",mode:2,uuid:"20180612-2024-2025-2026-122000000001"}
execute positioned -6 70.5 126 run function switch:stats/display/tick_macro {path:"all.modes.pillars_of_fortune.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-122000000002"}
execute positioned -6 70.5 123 run function switch:stats/display/tick_macro {path:"all.modes.pillars_of_fortune.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-122000000003"}

# Memory mine
execute positioned -2 70.5 113.5 run function switch:stats/display/tick_macro {path:"all.modes.memory_mine.total_games",label:"Memory Mine",mode:2,uuid:"20180612-2024-2025-2026-123000000001"}
execute positioned -6 70.5 115 run function switch:stats/display/tick_macro {path:"all.modes.memory_mine.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-123000000002"}
execute positioned -6 70.5 112 run function switch:stats/display/tick_macro {path:"all.modes.memory_mine.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-123000000003"}
execute if predicate switch:chance/0.25 run particle dust{color:[1.0,0.0,0.0],scale:1.0} -5 69.55 114 0 0 0 0 1 normal

# Cigogne
execute positioned -2 70.5 102.5 run function switch:stats/display/tick_macro {path:"all.modes.cigogne.total_games",label:"Cigogne",mode:2,uuid:"20180612-2024-2025-2026-124000000001"}
execute positioned -6 70.5 104 run function switch:stats/display/tick_macro {path:"all.modes.cigogne.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-124000000002"}
execute positioned -6 70.5 101 run function switch:stats/display/tick_macro {path:"all.modes.cigogne.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-124000000003"}

# Shoot da'sheep
execute positioned -2 70.5 91.5 run function switch:stats/display/tick_macro {path:"all.modes.shoot_da_sheep.total_games",label:"Shoot Da\'Sheep",mode:2,uuid:"20180612-2024-2025-2026-125000000001"}
execute positioned -6 70.5 93 run function switch:stats/display/tick_macro {path:"all.modes.shoot_da_sheep.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-125000000002"}
execute positioned -6 70.5 90 run function switch:stats/display/tick_macro {path:"all.modes.shoot_da_sheep.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-125000000003"}

# Simultaneous jump
execute positioned -2 70.5 80.5 run function switch:stats/display/tick_macro {path:"all.modes.simultaneous_jump.total_games",label:"Simultaneous Jump",mode:2,uuid:"20180612-2024-2025-2026-126000000001"}
execute positioned -6 70.5 82 run function switch:stats/display/tick_macro {path:"all.modes.simultaneous_jump.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-126000000002"}
execute positioned -6 70.5 79 run function switch:stats/display/tick_macro {path:"all.modes.simultaneous_jump.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-126000000003"}

# Build battle
execute positioned -2 70.5 69.5 run function switch:stats/display/tick_macro {path:"all.modes.build_battle.total_games",label:"Build Battle",mode:2,uuid:"20180612-2024-2025-2026-127000000001"}
execute positioned -6 70.5 71 run function switch:stats/display/tick_macro {path:"all.modes.build_battle.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-127000000002"}
execute positioned -6 70.5 68 run function switch:stats/display/tick_macro {path:"all.modes.build_battle.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-127000000003"}

# Moutron
execute positioned -2 70.5 58.5 run function switch:stats/display/tick_macro {path:"all.modes.moutron.total_games",label:"Moutron",mode:2,uuid:"20180612-2024-2025-2026-128000000001"}
execute positioned -6 70.5 60 run function switch:stats/display/tick_macro {path:"all.modes.moutron.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-128000000002"}
execute positioned -6 70.5 57 run function switch:stats/display/tick_macro {path:"all.modes.moutron.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-128000000003"}

# Thunder spear
execute positioned -2 70.5 47.5 run function switch:stats/display/tick_macro {path:"all.modes.thunder_spear.total_games",label:"Thunder Spear",mode:2,uuid:"20180612-2024-2025-2026-129000000001"}
execute positioned -6 70.5 49 run function switch:stats/display/tick_macro {path:"all.modes.thunder_spear.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-129000000002"}
execute positioned -6 70.5 46 run function switch:stats/display/tick_macro {path:"all.modes.thunder_spear.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-129000000003"}

# Castagne
execute positioned -2 70.5 36.5 run function switch:stats/display/tick_macro {path:"all.modes.castagne.total_games",label:"Castagne",mode:2,uuid:"20180612-2024-2025-2026-130000000001"}
execute positioned -6 70.5 38 run function switch:stats/display/tick_macro {path:"all.modes.castagne.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-130000000002"}
execute positioned -6 70.5 35 run function switch:stats/display/tick_macro {path:"all.modes.castagne.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-130000000003"}

# Feed fast
execute positioned -2 70.5 25.5 run function switch:stats/display/tick_macro {path:"all.modes.feed_fast.total_games",label:"Feed Fast",mode:2,uuid:"20180612-2024-2025-2026-131000000001"}
execute positioned -6 70.5 27 run function switch:stats/display/tick_macro {path:"all.modes.feed_fast.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-131000000002"}
execute positioned -6 70.5 24 run function switch:stats/display/tick_macro {path:"all.modes.feed_fast.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-131000000003"}

# Pitchout
execute positioned -2 70.5 14.5 run function switch:stats/display/tick_macro {path:"all.modes.pitchout.total_games",label:"Pitchout",mode:2,uuid:"20180612-2024-2025-2026-132000000001"}
execute positioned -6 70.5 16 run function switch:stats/display/tick_macro {path:"all.modes.pitchout.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-132000000002"}
execute positioned -6 70.5 13 run function switch:stats/display/tick_macro {path:"all.modes.pitchout.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-132000000003"}


## Team VS Team
# Spectres game
execute positioned -14.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.spectres_game.total_games",label:"Spectres Game",mode:2,uuid:"20180612-2024-2025-2026-133000000001"}
execute positioned -13 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.spectres_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-133000000002"}
execute positioned -16 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.spectres_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-133000000003"}
particle dolphin -15 69.55 4 0.2 0 0.2 0 2 normal

# SheepWars
execute positioned -25.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.sheepwars.total_games",label:"SheepWars",mode:2,uuid:"20180612-2024-2025-2026-134000000001"}
execute positioned -24 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.sheepwars.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-134000000002"}
execute positioned -27 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.sheepwars.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-134000000003"}

# Rush the flag
execute positioned -36.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_flag.total_games",label:"Rush The Flag",mode:2,uuid:"20180612-2024-2025-2026-135000000001"}
execute positioned -35 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_flag.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-135000000002"}
execute positioned -38 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_flag.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-135000000003"}

# Guy shooter
execute positioned -46 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.gay_shooter.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-136000000001"}
execute positioned -47.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.gay_shooter.total_games",label:"Guy Shooter",mode:2,uuid:"20180612-2024-2025-2026-136000000002"}
execute positioned -49 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.gay_shooter.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-136000000003"}

# Layers 4 teams
execute positioned -58.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.layers_4_teams.total_games",label:"Layers 4 Teams",mode:2,uuid:"20180612-2024-2025-2026-137000000001"}
execute positioned -57 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.layers_4_teams.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-137000000002"}
execute positioned -60 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.layers_4_teams.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-137000000003"}

# Beat the kings
execute positioned -69.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.beat_the_kings.total_games",label:"Beat The Kings",mode:2,uuid:"20180612-2024-2025-2026-138000000001"}
execute positioned -68 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.beat_the_kings.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-138000000002"}
execute positioned -71 70.5 6 run function switch:stats/display/tick_macro {path:"all.modes.beat_the_kings.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-138000000003"}

# GlassRunner
execute positioned -80.5 70.5 2 run function switch:stats/display/tick_macro {path:"all.modes.glassrunner.total_games",label:"GlassRunner",mode:2,uuid:"20180612-2024-2025-2026-139000000001"}
execute positioned -79 70.5 7 run function switch:stats/display/tick_macro {path:"all.modes.glassrunner.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-139000000002"}
execute positioned -82 70.5 7 run function switch:stats/display/tick_macro {path:"all.modes.glassrunner.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-139000000003"}
execute unless entity 20180612-2024-2025-2026-139000000004 run summon snowball -80.42 72.20 6.05 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000004")}
execute unless entity 20180612-2024-2025-2026-139000000005 run summon snowball -80.48 73.40 7.30 {NoGravity:1b,UUID:uuid("20180612-2024-2025-2026-139000000005")}

# Laser game
execute positioned -69.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.laser_game.total_games",label:"Laser Game",mode:2,uuid:"20180612-2024-2025-2026-140000000001"}
execute positioned -71 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.laser_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-140000000002"}
execute positioned -68 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.laser_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-140000000003"}

# Layers 2 teams
execute positioned -58.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.layers_2_teams.total_games",label:"Layers 2 Teams",mode:2,uuid:"20180612-2024-2025-2026-141000000001"}
execute positioned -60 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.layers_2_teams.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-141000000002"}
execute positioned -57 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.layers_2_teams.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-141000000003"}

# Protect the king
execute positioned -47.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.protect_the_king.total_games",label:"Protect The King",mode:2,uuid:"20180612-2024-2025-2026-142000000001"}
execute positioned -49 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.protect_the_king.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-142000000002"}
execute positioned -46 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.protect_the_king.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-142000000003"}

# Rush the point
execute positioned -36.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_point.total_games",label:"Rush The Point",mode:2,uuid:"20180612-2024-2025-2026-143000000001"}
execute positioned -38 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_point.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-143000000002"}
execute positioned -35 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.rush_the_point.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-143000000003"}

# Capture the flag
execute positioned -25.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.capture_the_flag.total_games",label:"Capture The Flag",mode:2,uuid:"20180612-2024-2025-2026-144000000001"}
execute positioned -27 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.capture_the_flag.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-144000000002"}
execute positioned -24 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.capture_the_flag.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-144000000003"}

# Traitors game
execute positioned -14.5 70.5 -2 run function switch:stats/display/tick_macro {path:"all.modes.traitors_game.total_games",label:"Traitors Game",mode:2,uuid:"20180612-2024-2025-2026-145000000001"}
execute positioned -16 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.traitors_game.played",label:"Games played",mode:1,uuid:"20180612-2024-2025-2026-145000000002"}
execute positioned -13 70.5 -6 run function switch:stats/display/tick_macro {path:"all.modes.traitors_game.wins",label:"Victories",mode:1,uuid:"20180612-2024-2025-2026-145000000003"}
""")

	# switch:lobby_tick
	write_function(f"{ns}:lobby_tick", """
# Prevent entities
kill @e[type=arrow,distance=..200]
kill @e[type=tnt,distance=..200]
kill @e[type=creeper,distance=..200]
kill @e[type=sheep,distance=..200]
kill @e[type=falling_block,distance=..200,nbt={Time:20}]

# Duality Jump (tick)
execute if score #players_in_lobby switch.data matches 1.. if block 20 79 94 stone_button[powered=true] run summon spectral_arrow 21.00 80.38 93.50 {Motion:[1.5,0.085,0.0],Rotation:[90f,0f],pickup:0b,life:1170s}
execute if score #players_in_lobby switch.data matches 1.. if block 20 79 94 stone_button[powered=true] run setblock 20 79 94 stone_button[face=wall,facing=south,powered=false]
execute if score #players_in_lobby switch.data matches 1.. if block 28 79 90 stone_button[powered=true] run summon spectral_arrow 26.95 80.38 90.50 {Motion:[-1.5,0.093,0.0],Rotation:[-90f,0f],pickup:0b,life:1170s}
execute if score #players_in_lobby switch.data matches 1.. if block 28 79 90 stone_button[powered=true] run setblock 28 79 90 stone_button[face=wall,facing=east,powered=false]
execute if score #players_in_lobby switch.data matches 1.. if block 45 87 90 stone_button[powered=true] run setblock 44 86 90 water
execute if score #players_in_lobby switch.data matches 1.. unless block 45 87 90 stone_button[powered=true] run setblock 44 86 90 air

execute if score #players_in_lobby switch.data matches 1.. unless block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 waxed_copper_block
execute if score #players_in_lobby switch.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run setblock 34 79 103 redstone_block
execute if score #players_in_lobby switch.data matches 1.. if block 27 80 102 light_weighted_pressure_plate[power=1] run particle minecraft:dust{color:[1,0,0],scale:1} 32 78.5 102 1.8 .01 .01 1 5

# NPCs
execute if score #players_in_lobby switch.data matches 1.. positioned -22 69.8 3 run function switch:npc/ofchara/tick
""")

	# switch:second
	write_function(f"{ns}:second", """
# Timer
scoreboard players set #tick switch.data 0
scoreboard players add #global_second switch.data 1
scoreboard players add #score switch.reconnect 1
scoreboard players operation @a switch.reconnect = #score switch.reconnect

# Others
execute if score #engine_state switch.data matches 3 run function switch:engine/signals/second

# Last death timer & play time
scoreboard players add @a switch.last_death 1
scoreboard players add @a switch.play_time 1

# Second Right click reset
scoreboard players reset @a switch.second_right_click

# Stat display life
scoreboard players add @e[type=text_display,tag=switch.stat_display] switch.data 1
kill @e[type=text_display,tag=switch.stat_display,scores={switch.data=60..}]

# Kill items out of the map
execute if score #engine_state switch.data matches 3 as @e[type=item] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #switch:out_of_map run kill @s
execute if score #engine_state switch.data matches 3 as @e[type=item] at @s if block ~ ~-1 ~ barrier if block ~ ~ ~ #switch:out_of_map run kill @s

# Tutorial 5 seconds loop (1/5 times)
scoreboard players operation #temp switch.data = #global_second switch.data
scoreboard players operation #temp switch.data %= #5 switch.data
execute if score #temp switch.data matches 0 as @a[team=switch.tutorial] at @s run function switch:player/tutorial/second

# Lobby second
execute if score #players_in_lobby switch.data matches 1.. in minecraft:overworld positioned 0 69 0 run function switch:lobby_second

# Additional black hole for switch_space in switch:game
execute in switch:game positioned 0 100 0 if loaded ~ ~ ~ unless entity 20180612-2024-2025-2026-000000000003 run summon item_display ~ ~ ~ {UUID:uuid("20180612-2024-2025-2026-000000000003"),item:{id:"stone",count:1,components:{"item_model":"switch:bg_black_hole"}},Tags:["switch.black_hole_lobby"],transformation:{scale:[-300f,-200f,-300f],left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]}}
""")

	# switch:load (called by the load function tag, registered in link.py)
	write_function(f"{ns}:load", r"""
scoreboard objectives add switch.lang dummy

scoreboard objectives add switch.id dummy
scoreboard objectives add switch.data dummy
scoreboard objectives add switch.tutorial dummy
scoreboard objectives add switch.health health
scoreboard objectives add switch.money dummy
scoreboard objectives add switch.money_bonus dummy
scoreboard objectives add switch.last_total_games dummy
scoreboard objectives add switch.right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add switch.second_right_click minecraft.used:minecraft.warped_fungus_on_a_stick
scoreboard objectives add switch.reconnect dummy
scoreboard objectives add switch.alive dummy
scoreboard objectives add switch.play_time dummy
scoreboard objectives add switch.advancements dummy
scoreboard objectives add switch.lobby_respawn dummy

scoreboard objectives add switch.death deathCount
scoreboard objectives add switch.kill playerKillCount
scoreboard objectives add switch.last_death dummy

scoreboard objectives add switch.trigger.lang trigger
scoreboard objectives add switch.trigger.help trigger
scoreboard objectives add switch.trigger.money trigger
scoreboard objectives add switch.trigger.game_vote trigger
scoreboard objectives add switch.trigger.stats trigger
scoreboard objectives add switch.trigger.changelog trigger
scoreboard objectives add switch.trigger.detach trigger
scoreboard objectives add switch.trigger.attach trigger
scoreboard objectives add switch.trigger.shop trigger
scoreboard objectives add switch.trigger.tutorial trigger
scoreboard objectives add switch.trigger.succes trigger
scoreboard objectives add switch.trigger.rating trigger
scoreboard objectives add switch.trigger.night_vision trigger
scoreboard objectives add switch.trigger.music trigger
scoreboard objectives add switch.trigger.coupdetat trigger

scoreboard objectives add switch.stats.kills playerKillCount
scoreboard objectives add switch.stats.deaths deathCount
scoreboard objectives add switch.stats.played dummy
scoreboard objectives add switch.stats.wins dummy
scoreboard objectives add switch.stats.winrate dummy

scoreboard objectives add switch.win_streak dummy
scoreboard objectives add switch.lobby_easter_egg_counter dummy

team add switch.no_pvp {"text":"[No PvP]"}
team add switch.detached {"text":"[Detached]","color":"dark_gray"}
team add switch.tutorial {"text":"[Tutorial]","color":"yellow"}
team modify switch.no_pvp friendlyFire false
team modify switch.no_pvp color white
team modify switch.detached friendlyFire false
team modify switch.detached color gray
team modify switch.detached prefix {"text":"[Lobby] ","color":"dark_gray"}
team modify switch.tutorial prefix {"text":"[Tutorial] ","color":"yellow"}
team modify switch.tutorial color gold

gamerule minecraft:max_command_sequence_length 2147483647
forceload add 0 0
execute in switch:game run forceload add 0 0
execute store result score #cinematic_entities switch.data if entity @e[tag=switch.cinematic]


## Storage
# tellraw @a ["\n",{"nbt":"Paralya","storage":"switch:main","interpret":true},{"text":" Souhaitez tous la bienvenue à "},{"selector":"@s","color":"aqua"},{"text":" !\nIl est le "},{"score":{"name":"#next_id","objective":"switch.data"},"color":"aqua"},{"text":"ème joueur a rejoindre !"}]
data modify storage switch:main ParalyaMusic set value {"text":"[ParalyaMusic]","color":"dark_purple"}
data modify storage switch:main ParalyaStats set value {"text":"[ParalyaStats]","color":"yellow"}
data modify storage switch:main ParalyaError set value {"text":"[ParalyaError]","color":"red"}
data modify storage switch:main ParalyaWarning set value {"text":"[Paralya]","color":"gold"}
data modify storage switch:main ParalyaHelp set value [{"text":"[","color":"dark_aqua"},{"text":"ParalyaHelp","color":"aqua"},{"text":"]","color":"dark_aqua"}]
data modify storage switch:main Paralya set value [{"text":"[","color":"dark_aqua"},{"text":"Paralya","color":"aqua"},{"text":"]","color":"dark_aqua"}]

data modify storage switch:main ParalyaSapphiresFR set value [{"text":"","color":"blue"},{"text":"[","color":"#1b1796"},{"text":"Saphirs","color":"blue"},{"text":"]","color":"#1b1796"}]
data modify storage switch:main ParalyaAstuceFR set value [{"text":"[","color":"dark_green"},{"text":"ParalyaAstuceFR","color":"green"},{"text":"]","color":"dark_green"}]
data modify storage switch:main ParalyaPvPOldFR set value {"text":"[PvP 1.8 : Vitesse d'attaque infinie]","color":"dark_aqua"}
data modify storage switch:main ParalyaPvPNewFR set value {"text":"[PvP 1.9+ : Nouveau PvP]","color":"dark_green"}

data modify storage switch:main ParalyaSapphiresEN set value [{"text":"","color":"blue"},{"text":"[","color":"#1b1796"},{"text":"Sapphires","color":"blue"},{"text":"]","color":"#1b1796"}]
data modify storage switch:main ParalyaAstuceEN set value [{"text":"[","color":"dark_green"},{"text":"ParalyaTip","color":"green"},{"text":"]","color":"dark_green"}]
data modify storage switch:main ParalyaPvPOldEN set value {"text":"[PvP 1.8 : Infinite attack speed]","color":"dark_aqua"}
data modify storage switch:main ParalyaPvPNewEN set value {"text":"[PvP 1.9+ : New PvP]","color":"dark_green"}

# Sapphire icon
# Example: tellraw @s {"nbt":"SapphireFR","storage":"switch:main","interpret":true}
data modify storage switch:main SapphireFR set value {"text":"S","color":"white","font":"switch:main","hover_event":{"action":"show_text","value":{"text":"Saphirs","color":"blue"}}}
data modify storage switch:main SapphireEN set value {"text":"S","color":"white","font":"switch:main","hover_event":{"action":"show_text","value":{"text":"Sapphires","color":"blue"}}}

# Setup stats storage if needed
execute unless data storage switch:stats all run data modify storage switch:stats all set value {player:{total_played:[],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{}}
# ex: all = {player:{total_played:[{name:"Stoupy51",value:0}],total_wins:[],total_kills:[],total_deaths:[],total_money:[],played_win_ratio:[],advancement_count:[]},modes:{pitch_creep:{total_games:0,played:[],wins:[],played_win_ratio:[]}, ...}}

# Setup storages if needed
execute unless data storage switch:ratings all run data modify storage switch:ratings all set value []
execute unless data storage switch:main UUIDs run data modify storage switch:main UUIDs set value []

# Scoreboard constants, shop load, advancements, and music load
function switch:shop/_load
function switch:advancements/_load
function switch:music/load
execute unless score #can_attach switch.data matches 0.. run scoreboard players set #can_attach switch.data 1
execute unless score #test_mode switch.data matches 0.. run scoreboard players set #test_mode switch.data 0
execute unless score #min_required switch.data matches 1.. run scoreboard players set #min_required switch.data 5


## Define mini-games list
data modify storage switch:main minigames set value []
function switch:modes/load


# Auto index
data modify storage switch:main indexed_minigames set value []
scoreboard players set #index switch.data 1
function switch:auto_index
data modify storage switch:main minigames set from storage switch:main indexed_minigames
data remove storage switch:main temp

## States
execute if score #engine_state switch.data matches -1 run tell none désactivé
execute if score #engine_state switch.data matches 0 run tell none à l arrêt
execute if score #engine_state switch.data matches 1 run tell none engine start
execute if score #engine_state switch.data matches 2 run tell none temps de vote
execute if score #engine_state switch.data matches 3 run tell none game en cours

# Games and maps picks history
execute unless data storage switch:main history run data modify storage switch:main history set value {games:[],maps:[],time_since_last_play:{}}
""")

	# switch:tick (called by the tick function tag, registered in link.py)
	write_function(f"{ns}:tick", """
# Last death timer
scoreboard players set @a[scores={switch.death=1..}] switch.last_death 0
scoreboard players set @a[scores={switch.death=1..}] switch.death 0

## Timer and tick related
scoreboard players add #tick switch.data 1
scoreboard players set #players_in_lobby switch.data 0
execute as @a[sort=random] at @s run function switch:player/tick
execute if score #tick switch.data matches 20.. run function switch:second

# Engine : games ticks, start, stop
execute if score #engine_state switch.data matches 3 run function switch:engine/signals/tick
execute if score #engine_state switch.data matches 0 if entity @a[tag=!detached] run function switch:engine/start
execute unless score #engine_state switch.data matches 0 unless entity @a[tag=!detached] run function switch:engine/stop

# Cut Clean support
execute if score #cut_clean switch.data matches 1 as @e[type=item,tag=!switch.cut_clean,nbt={Age:2s}] run function switch:cut_clean

# Cinematic entities
execute if score #cinematic_entities switch.data matches 1.. as @e[type=item_display,tag=switch.cinematic] at @s run function switch:cinematic/entity_tick_at_self

# Kill players out of the map
execute if score #engine_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~-2 ~ #switch:out_of_map run function switch:player/kill_out_of_map
execute if score #engine_state switch.data matches 3 as @a[tag=!detached,gamemode=!spectator,gamemode=!creative] at @s if block ~ ~-1 ~ barrier if block ~ ~ ~ #switch:out_of_map run function switch:player/kill_out_of_map

# Right click reset
scoreboard players reset @a switch.right_click

# Spectral arrow fix in lobby
execute as @e[type=spectral_arrow,x=26,y=80,z=93,distance=..10,nbt=!{pickup:0b}] run data modify entity @s pickup set value 0b

# Lobby tick
execute in minecraft:overworld positioned 0 69 0 run function switch:lobby_tick

## Profiling
#execute as Stoupy51 run function switch:profiling/start
""")
