
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function


# Top-level "switch:*" functions that don't belong to a deeper subsystem.
# (load / tick are handled by write_load_file / write_tick_file in src/link.py)
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

	# switch:second
	write_function(f"{ns}:second", f"""
# Timer (#clock_secs tracks the last wall-clock second we fired, see switch:tick)
scoreboard players set #tick {ns}.data 0
scoreboard players add #clock_secs {ns}.data 1
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
execute if score #players_in_lobby {ns}.data matches 1.. in minecraft:overworld positioned 0 69 0 run function {ns}:lobby/second

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
scoreboard objectives add {ns}.trigger.layout trigger

scoreboard objectives add {ns}.stats.kills playerKillCount
scoreboard objectives add {ns}.stats.deaths deathCount
scoreboard objectives add {ns}.stats.played dummy
scoreboard objectives add {ns}.stats.wins dummy
scoreboard objectives add {ns}.stats.winrate dummy

scoreboard objectives add {ns}.win_streak dummy
scoreboard objectives add {ns}.lobby_easter_egg_counter dummy

# Wall-clock game timer (lag resistant): the per-second signal is driven by real elapsed time
# instead of counting 20 ticks, so games/timers keep real-time pace even when the server lags.
stopwatch create {ns}:game_clock
stopwatch restart {ns}:game_clock
scoreboard players set #clock_secs {ns}.data 0

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

# Resume any map regeneration that a /reload or a server restart interrupted: a /reload clears every
# scheduled function, which leaves the #rg_<map> counter stuck and makes the map's NEXT end-of-game
# regeneration resume from the stale layer instead of doing a full pass (bridges below it survive).
function {ns}:maps/resume_regeneration
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

# Fire the per-second logic from the wall clock (lag resistant): fire once whenever another whole
# second of real time has elapsed (at most one catch-up second per tick). The 20-tick rule is only
# a safety fallback so nothing ever freezes if the /stopwatch command is unavailable.
execute store result score #now_secs {ns}.data run stopwatch query {ns}:game_clock 1
execute if score #now_secs {ns}.data > #clock_secs {ns}.data run function {ns}:second
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
execute in minecraft:overworld positioned 0 69 0 run function {ns}:lobby/tick

## Profiling
#execute as Stoupy51 run function {ns}:devtools/profiling/start
""")
