
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "capture_the_flag"
	path: str = f"{ns}:modes/{mode}"
	translations: str = f"{path}/translations"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()

	# /calls/inventory_changed (non-standard call)
	write_function(f"{path}/calls/inventory_changed", f"""
tag @s add {ns}.temp.inventory_changed
""")


	# /choose_map_for
	write_function(f"{path}/choose_map_for", f"""
execute store result score #count {ns}.data if entity @a[tag=!detached]
function {ns}:utils/choose_map_for {{id:"capture_the_flag", maps:["operation_pigclaw","ctf_plains_castles","ctf_mountains_castles","ctf_flowers","ctf_nether","ctf_forest_castles"]}}

## If not enough players for certain maps, restart it
execute if score #count {ns}.data matches ..30 if data storage {ns}:main {{map:"ctf_nether"}} run function {path}/choose_map_for
execute if score #count {ns}.data matches ..14 if data storage {ns}:main {{map:"ctf_mountains_castles"}} run function {path}/choose_map_for
""")

	# /flag_drop
	write_function(f"{path}/flag_drop", f"""
# Drop the flag
function {translations}/flag_drop
function {ns}:modes/_common/flag/release_holders
execute on vehicle run tp @s ~ ~-2 ~

# Add free tag
tag @s add {ns}.free
""")

	# /flag_pickup
	write_function(f"{path}/flag_pickup", f"""
# Remove free tag and original_pos tag
tag @s remove {ns}.original_pos
tag @s remove {ns}.free

# Depending on the flag color, tag the respective player
execute if entity @s[tag={ns}.blue_flag] run tag @p[team={ns}.temp.red,distance=..1] add {ns}.has_blue_flag
execute if entity @s[tag={ns}.red_flag] run tag @p[team={ns}.temp.blue,distance=..1] add {ns}.has_red_flag
execute if entity @s[tag={ns}.blue_flag] run scoreboard players add #red_flag_pickups {ns}.data 1
execute if entity @s[tag={ns}.red_flag] run scoreboard players add #blue_flag_pickups {ns}.data 1
function {translations}/flag_pickup

# Translation & Playsound
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
""")

	# /flag_reset
	write_function(f"{path}/flag_reset", f"""
# Advancement
execute unless score #test_mode {ns}.data matches 1 if entity @s[tag={ns}.blue_flag] run advancement grant @p[team={ns}.temp.blue,distance=..1] only {ns}:visible/81
execute unless score #test_mode {ns}.data matches 1 if entity @s[tag={ns}.red_flag] run advancement grant @p[team={ns}.temp.red,distance=..1] only {ns}:visible/81

# Copy initial pos and rotation
data modify storage {ns}:temp Pos set from entity @s item.components."minecraft:custom_data".Pos
data modify storage {ns}:temp Rotation set from entity @s item.components."minecraft:custom_data".Rotation
execute on vehicle run data modify entity @s Pos set from storage {ns}:temp Pos
execute on vehicle run data modify entity @s Rotation set from storage {ns}:temp Rotation
data modify entity @s Rotation set from storage {ns}:temp Rotation

# Flag Reset Blue
execute if entity @s[tag={ns}.blue_flag] run tag @a[tag={ns}.has_blue_flag] remove {ns}.has_blue_flag

# Flag Reset Red
execute if entity @s[tag={ns}.red_flag] run tag @a[tag={ns}.has_red_flag] remove {ns}.has_red_flag
function {translations}/flag_reset

# Reset Banner
tag @s add {ns}.original_pos
tag @s add {ns}.free
""")

	# /flag_tick
	write_function(f"{path}/flag_tick", f"""
# If the flag is free and a player is nearby, the flag is picked up
execute if entity @s[tag={ns}.free,tag={ns}.blue_flag] if entity @p[team={ns}.temp.red,distance=..1] run function {path}/flag_pickup
execute if entity @s[tag={ns}.free,tag={ns}.red_flag] if entity @p[team={ns}.temp.blue,distance=..1] run function {path}/flag_pickup

# If not free, check if the player holding the flag is nearby, if not, drop the flag
execute if entity @s[tag=!{ns}.free,tag={ns}.blue_flag] unless entity @p[tag={ns}.has_blue_flag,distance=..5] run function {path}/flag_drop
execute if entity @s[tag=!{ns}.free,tag={ns}.red_flag] unless entity @p[tag={ns}.has_red_flag,distance=..5] run function {path}/flag_drop

# If not free, teleport to the player holding the flag
execute if entity @s[tag=!{ns}.free,tag={ns}.blue_flag] on vehicle at @p[tag={ns}.has_blue_flag] run tp @s ~ ~2 ~ ~180 0
execute if entity @s[tag=!{ns}.free,tag={ns}.red_flag] on vehicle at @p[tag={ns}.has_red_flag] run tp @s ~ ~2 ~ ~180 0

function {ns}:modes/_common/flag/sync_motion

# If the flag is out of bounds, it is returned
execute store result score #y {ns}.data on vehicle run data get entity @s Pos[1]
execute if score #y {ns}.data matches ..50 run function {path}/flag_reset

# If the flag is free, not at original pos, and a player of the same team is nearby, it is returned
execute if entity @s[tag={ns}.free,tag=!{ns}.original_pos,tag={ns}.blue_flag] if entity @p[team={ns}.temp.blue,distance=..1] run function {path}/flag_reset
execute if entity @s[tag={ns}.free,tag=!{ns}.original_pos,tag={ns}.red_flag] if entity @p[team={ns}.temp.red,distance=..1] run function {path}/flag_reset

# Score a point
execute if entity @s[tag=!{ns}.free,tag={ns}.blue_flag] positioned ~ ~-2 ~ if entity @e[tag={ns}.original_pos,tag={ns}.red_flag,distance=..1] run function {path}/score_point
execute if entity @s[tag=!{ns}.free,tag={ns}.red_flag] positioned ~ ~-2 ~ if entity @e[tag={ns}.original_pos,tag={ns}.blue_flag,distance=..1] run function {path}/score_point

# Kill every tnt and remove blocks in range
execute if entity @s[tag={ns}.free] run kill @e[type=tnt,distance=..5]
execute if entity @s[tag={ns}.free] run fill ~-3 ~-3 ~-3 ~3 ~3 ~3 air replace #wool
""")

	# /flags_summon
	write_function(f"{path}/flags_summon", f"""
# Maps
execute if data storage {ns}:main {{map:"operation_pigclaw"}} run summon armor_stand 36117 151 35926 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.blue_flag"],item:{{id:"blue_banner",count:1}},Rotation:[45.0f,0.0f],Glowing:true}}],Rotation:[45.0f,0.0f]}}
execute if data storage {ns}:main {{map:"operation_pigclaw"}} run summon armor_stand 35934 135 36074 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.red_flag"],item:{{id:"red_banner",count:1}},Rotation:[-135.0f,0.0f],Glowing:true}}],Rotation:[-135.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} run summon armor_stand 146039 127 146114 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.blue_flag"],item:{{id:"blue_banner",count:1}},Rotation:[-90.0f,0.0f],Glowing:true}}],Rotation:[-90.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} run summon armor_stand 146285 127 146114 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.red_flag"],item:{{id:"red_banner",count:1}},Rotation:[90.0f,0.0f],Glowing:true}}],Rotation:[90.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_mountains_castles"}} run summon armor_stand 147285 213 147106 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.blue_flag"],item:{{id:"blue_banner",count:1}},Rotation:[180.0f,0.0f],Glowing:true}}],Rotation:[180.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_mountains_castles"}} run summon armor_stand 147076 213 147107 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.red_flag"],item:{{id:"red_banner",count:1}},Rotation:[180.0f,0.0f],Glowing:true}}],Rotation:[180.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_flowers"}} run summon armor_stand 148178 131 148052 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.blue_flag"],item:{{id:"blue_banner",count:1}},Rotation:[90.0f,0.0f],Glowing:true}}],Rotation:[90.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_flowers"}} run summon armor_stand 148024 131 148053 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.red_flag"],item:{{id:"red_banner",count:1}},Rotation:[-90.0f,0.0f],Glowing:true}}],Rotation:[-90.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_nether"}} run summon armor_stand 149100 143 149029 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.blue_flag"],item:{{id:"blue_banner",count:1}},Rotation:[0.0f,0.0f],Glowing:true}}],Rotation:[0.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_nether"}} run summon armor_stand 149102 143 149321 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.red_flag"],item:{{id:"red_banner",count:1}},Rotation:[180.0f,0.0f],Glowing:true}}],Rotation:[180.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_forest_castles"}} run summon armor_stand 150050 114 150034 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.blue_flag"],item:{{id:"blue_banner",count:1}},Rotation:[0.0f,0.0f],Glowing:true}}],Rotation:[0.0f,0.0f]}}
execute if data storage {ns}:main {{map:"ctf_forest_castles"}} run summon armor_stand 150050 114 150180 {{Invisible:true,Invulnerable:true,Marker:true,Passengers:[{{id:"item_display",Tags:["{ns}.flag","{ns}.free","{ns}.original_pos","{ns}.red_flag"],item:{{id:"red_banner",count:1}},Rotation:[180.0f,0.0f],Glowing:true}}],Rotation:[180.0f,0.0f]}}

# Stuff
execute as @e[tag={ns}.flag] at @s run data modify entity @s item.components."minecraft:custom_data".Pos set from entity @e[type=armor_stand,sort=nearest,limit=1] Pos
execute as @e[tag={ns}.flag] at @s run data modify entity @s item.components."minecraft:custom_data".Rotation set from entity @e[type=armor_stand,sort=nearest,limit=1] Rotation
execute as @e[tag={ns}.flag] run data modify entity @s transformation.translation[1] set value 0.5f
""")

	# /items_check
	write_function(f"{path}/items_check", f"""
tag @s add {ns}.checked
execute if data entity @s Item.components."minecraft:custom_data".{ns}.class_item run kill @s

# No drop
data modify entity @s[nbt=!{{Item:{{id:"minecraft:white_wool"}}}},nbt=!{{Item:{{id:"minecraft:blue_wool"}}}},nbt=!{{Item:{{id:"minecraft:red_wool"}}}},nbt=!{{Item:{{id:"minecraft:arrow"}}}}] PickupDelay set value 0s
data modify entity @s[nbt=!{{Item:{{id:"minecraft:white_wool"}}}},nbt=!{{Item:{{id:"minecraft:blue_wool"}}}},nbt=!{{Item:{{id:"minecraft:red_wool"}}}},nbt=!{{Item:{{id:"minecraft:arrow"}}}}] Owner set from entity @s Thrower
""")

	# /joined
	write_function(f"{path}/joined", f"""
tag @s remove {ns}.has_blue_flag
tag @s remove {ns}.has_red_flag
execute if score #reconnect {ns}.data matches 0 run function {path}/roles/main
function {ns}:translations/common/joined_reconnect
execute if score #reconnect {ns}.data matches 1 run function {path}/teleport_to_spawn
""")

	# /process_end
	write_function(f"{path}/process_end", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,sort=random] run function {path}/death/player
function {translations}/process_end
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data > #blue_points {ns}.data as @a[tag=!detached,team={ns}.temp.red] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data < #blue_points {ns}.data as @a[tag=!detached,team={ns}.temp.blue] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #red_flag_pickups {ns}.data > #blue_flag_pickups {ns}.data as @a[tag=!detached,team={ns}.temp.red] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 if score #red_points {ns}.data = #blue_points {ns}.data if score #red_flag_pickups {ns}.data < #blue_flag_pickups {ns}.data as @a[tag=!detached,team={ns}.temp.blue] at @s run function {ns}:engine/add_win
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.to_tp
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /right_click
	write_function(f"{path}/right_click", f"""
# Revoke advancement and make the right click action
advancement revoke @s only {ns}:capture_the_flag/right_click
execute if data entity @s SelectedItem.components."minecraft:custom_data".{ns}.class_item store result score @s {ns}.temp.chosen_class run data get entity @s SelectedItem.components."minecraft:custom_data".{ns}.class_item
function {path}/classes/main
""")

	# /score_point
	write_function(f"{path}/score_point", f"""
# Tellraw + sound + fireworks
function {translations}/score_point
function {ns}:modes/_common/flag/score_fireworks

# Teleport the scorer back to spawn
execute if entity @s[tag={ns}.blue_flag] as @p[tag={ns}.has_blue_flag] run function {path}/teleport_to_spawn
execute if entity @s[tag={ns}.red_flag] as @p[tag={ns}.has_red_flag] run function {path}/teleport_to_spawn

# Reset the flag
function {path}/flag_reset
""")

	# /second
	write_function(f"{path}/second", f"""
# Increment game timer and decrement remaining time if greater than 0
scoreboard players add #capture_the_flag_seconds {ns}.data 1
execute if score #remaining_time {ns}.data matches 1.. run scoreboard players remove #remaining_time {ns}.data 1

# Before game starts (negative seconds) - Apply effects to freeze players
execute if score #capture_the_flag_seconds {ns}.data matches ..-1 as @a[tag=!detached] run attribute @s jump_strength base set 0
execute if score #capture_the_flag_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] slowness 100 250 true
execute if score #capture_the_flag_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] blindness 100 250 true
execute if score #capture_the_flag_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] night_vision 100 250 true
execute if score #capture_the_flag_seconds {ns}.data matches ..-1 run effect give @a[tag=!detached] darkness 100 250 true

# When game starts (0 seconds) - Remove freeze effects
execute if score #capture_the_flag_seconds {ns}.data matches 0 run effect clear @a[tag=!detached] slowness
execute if score #capture_the_flag_seconds {ns}.data matches 0 run effect clear @a[tag=!detached] blindness
execute if score #capture_the_flag_seconds {ns}.data matches 0 run effect clear @a[tag=!detached] night_vision
execute if score #capture_the_flag_seconds {ns}.data matches 0 run effect clear @a[tag=!detached] darkness
execute if score #capture_the_flag_seconds {ns}.data matches 0 as @a[tag=!detached] run attribute @s jump_strength base reset

# Clear empty glass bottles from players
execute if score #capture_the_flag_seconds {ns}.data matches 1.. run clear @a[tag=!detached] glass_bottle

# Summon the flags when game starts
execute if score #capture_the_flag_seconds {ns}.data matches 0 run function {path}/flags_summon

# Display game messages
function {ns}:modes/_common/compute_mins_secs
function {ns}:translations/common/basic_actionbar
""")

	# /start
	write_function(f"{path}/start", f"""
function {ns}:utils/set_dynamic_time

## Placement de la map et des joueurs
function {path}/choose_map_for

execute in {ns}:game run gamerule minecraft:block_drops false
execute in {ns}:game run gamerule minecraft:keep_inventory true

scoreboard objectives add {ns}.temp.chosen_class dummy
scoreboard objectives add {ns}.temp.sidebar dummy {{"text":"Points","color":"yellow"}}
scoreboard objectives setdisplay sidebar {ns}.temp.sidebar
scoreboard objectives setdisplay list {ns}.health

scoreboard players set #blue_points {ns}.data 0
scoreboard players set #red_points {ns}.data 0
scoreboard players set #process_end {ns}.data 0
scoreboard players set #red_flag_pickups {ns}.data 0
scoreboard players set #blue_flag_pickups {ns}.data 0

function {translations}/start

team add {ns}.temp.sidebar.5 {{"text":"[Sidebar 5]"}}
team add {ns}.temp.sidebar.3 {{"text":"[Sidebar 3]"}}
team add {ns}.temp.sidebar.2 {{"text":"[Sidebar 2]"}}
team add {ns}.temp.sidebar.1 {{"text":"[Sidebar 1]"}}
team modify {ns}.temp.sidebar.5 suffix [{{"text":"Goal: "}},{{"text":"5","color":"yellow"}},{{"text":" flags"}}]
team modify {ns}.temp.sidebar.3 suffix [{{"text":"Time remaining: "}},{{"text":"15","color":"yellow"}},{{"text":"m"}},{{"text":"00","color":"yellow"}},{{"text":"s"}}]
function {ns}:modes/_common/sidebar_setup

# Choix des rôles + give d'items
team add {ns}.temp.red {{"text":"[Red]","color":"red"}}
team add {ns}.temp.blue {{"text":"[Blue]","color":"blue"}}
team modify {ns}.temp.red color red
team modify {ns}.temp.blue color blue
team modify {ns}.temp.red nametagVisibility hideForOtherTeams
team modify {ns}.temp.blue nametagVisibility hideForOtherTeams
team modify {ns}.temp.red friendlyFire false
team modify {ns}.temp.blue friendlyFire false
scoreboard players set #next_role {ns}.data 0
execute as @a[tag=!detached,sort=random] at @s run function {path}/roles/main

scoreboard players set #remaining_time {ns}.data 910
scoreboard players set #capture_the_flag_seconds {ns}.data -10
scoreboard players set #capture_the_flag_ticks {ns}.data 0
tag @a remove {ns}.has_blue_flag
tag @a remove {ns}.has_red_flag

# Spawn effects
effect clear @a[tag=!detached]
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
effect give @a[tag=!detached] weakness 10 255 true
""")

	# /stop
	write_function(f"{path}/stop", f"""
scoreboard objectives remove {ns}.temp.chosen_class
scoreboard objectives remove {ns}.temp.sidebar
team remove {ns}.temp.sidebar.5
team remove {ns}.temp.sidebar.4
team remove {ns}.temp.sidebar.3
team remove {ns}.temp.sidebar.2
team remove {ns}.temp.sidebar.1
team remove {ns}.temp.red
team remove {ns}.temp.blue
tag @a remove {ns}.has_red_flag
tag @a remove {ns}.has_blue_flag
tag @a remove {ns}.to_tp
""")

	# /teleport_to_death
	write_function(f"{path}/teleport_to_death", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
data modify entity @e[type=!player,predicate={ns}:has_same_id,limit=1] Tags set value ["{ns}.temp.player"]
function {path}/teleport_to_spawn
""")

	# /teleport_to_spawn
	write_function(f"{path}/teleport_to_spawn", f"""
## Maps spawn
# Map Plains Castles
execute if data storage {ns}:main {{map:"operation_pigclaw"}} run tp @s[team={ns}.temp.blue] 36125 145 35919 -135 0
execute if data storage {ns}:main {{map:"operation_pigclaw"}} run tp @s[team={ns}.temp.red] 35926 129 36081 45 0
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} store result score #random {ns}.data run random value 0..1
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} if score #random {ns}.data matches 0 run tp @s[team={ns}.temp.red] 146325 129 146138 90 0
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} if score #random {ns}.data matches 1 run tp @s[team={ns}.temp.red] 146322 129 146090 90 0
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} if score #random {ns}.data matches 0 run tp @s[team={ns}.temp.blue] 146003 129 146138 -90 0
execute if data storage {ns}:main {{map:"ctf_plains_castles"}} if score #random {ns}.data matches 1 run tp @s[team={ns}.temp.blue] 146003 129 146090 -90 0
execute if data storage {ns}:main {{map:"ctf_mountains_castles"}} run tp @s[team={ns}.temp.blue] 147285 201 147135 180 0
execute if data storage {ns}:main {{map:"ctf_mountains_castles"}} run tp @s[team={ns}.temp.red] 147077 201 147135 180 0
execute if data storage {ns}:main {{map:"ctf_flowers"}} run tp @s[team={ns}.temp.blue] 148187 150 148031 90 0
execute if data storage {ns}:main {{map:"ctf_flowers"}} run tp @s[team={ns}.temp.red] 148016 144 148072 -90 0
execute if data storage {ns}:main {{map:"ctf_nether"}} run tp @s[team={ns}.temp.blue] 149100 149 149009 0 0
execute if data storage {ns}:main {{map:"ctf_nether"}} run tp @s[team={ns}.temp.red] 149102 149 149341 180 0
execute if data storage {ns}:main {{map:"ctf_forest_castles"}} run tp @s[team={ns}.temp.blue] 150050 130 150031 0 0
execute if data storage {ns}:main {{map:"ctf_forest_castles"}} run tp @s[team={ns}.temp.red] 150050 130 150183 180 0

## Items to choose a class
tag @s remove {ns}.to_tp
clear @s
attribute @s jump_strength base set 0
effect give @s resistance infinite 250 true
effect give @s slowness infinite 250 true
effect give @s blindness infinite 250 true
effect give @s night_vision infinite 250 true
effect give @s darkness infinite 250 true
gamemode survival @s
scoreboard players set @s {ns}.temp.chosen_class 0
item replace entity @s hotbar.0 with diamond_chestplate[item_name={{"text":"Tank","color":"red"}},custom_data={{{ns}:{{class_item:1b,ctf_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.2 with iron_sword[item_name={{"text":"Warrior","color":"red"}},custom_data={{{ns}:{{class_item:2b,ctf_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.4 with arrow[item_name={{"text":"Archer","color":"red"}},custom_data={{{ns}:{{class_item:3b,ctf_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.6 with tnt[item_name={{"text":"Demolisher","color":"red"}},custom_data={{{ns}:{{class_item:4b,ctf_class:true}}}},consumable={{consume_seconds:1024}}]
item replace entity @s hotbar.8 with blaze_powder[item_name={{"text":"Chemister","color":"red"}},custom_data={{{ns}:{{class_item:5b,ctf_class:true}}}},consumable={{consume_seconds:1024}}]
""")

	# /tick
	write_function(f"{path}/tick", f"""
# Timer & Manage dropped items
scoreboard players add #capture_the_flag_ticks {ns}.data 1
execute as @e[type=item,tag=!{ns}.checked] run function {path}/items_check

# Class System
execute as @a[scores={{{ns}.temp.chosen_class=0}}] run function {path}/classes/main

# Death System
execute as @e[type=player,tag={ns}.to_tp] run function {path}/teleport_to_death
function {ns}:utils/on_death_run_function {{function:"{path}/death/player"}}
execute if score #remaining_time {ns}.data matches 1.. as @e[type=marker,tag={ns}.temp.player,tag=!{ns}.player_dead] run function {ns}:modes/_common/death/detect
execute if score #remaining_time {ns}.data matches 1.. as @e[type=marker,tag={ns}.player_dead,tag=!{ns}.processed] run function {path}/death/for_global

# Update sidebar & Flag tick
function {ns}:modes/_common/update_sidebar
execute as @e[type=item_display,tag={ns}.flag,sort=random] at @s positioned ~ ~ ~ run function {path}/flag_tick

# Hotbar when having a flag
effect give @a[tag={ns}.has_blue_flag] slowness 1 0 true
effect give @a[tag={ns}.has_red_flag] slowness 1 0 true

# Détection de fin de partie
execute if score #remaining_time {ns}.data matches 1.. if score #red_points {ns}.data matches 5.. run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches 1.. if score #blue_points {ns}.data matches 5.. run scoreboard players set #remaining_time {ns}.data 0
execute if score #remaining_time {ns}.data matches ..0 run function {path}/process_end
""")



	# /classes/main
	write_function(f"{path}/classes/main", f"""
function {ns}:modes/_common/detect_chosen_class

# Switch case
execute if score @s {ns}.temp.chosen_class matches 1 run function {path}/classes/tank
execute if score @s {ns}.temp.chosen_class matches 2 run function {path}/classes/warrior
execute if score @s {ns}.temp.chosen_class matches 3 run function {path}/classes/archer
execute if score @s {ns}.temp.chosen_class matches 4 run function {path}/classes/demolisher
execute if score @s {ns}.temp.chosen_class matches 5 run function {path}/classes/chemister
execute if score @s {ns}.temp.chosen_class matches 1..5 run effect give @s slow_falling 10 0 true
""")

	# /classes/_common
	write_function(f"{path}/classes/_common", f"""
clear @s
effect clear @s
item replace entity @s[team={ns}.temp.red] armor.head with leather_helmet[dyed_color=16711680]
item replace entity @s[team={ns}.temp.blue] armor.head with leather_helmet[dyed_color=255]
""")

	# /classes/_soldier_attrs
	write_function(f"{path}/classes/_soldier_attrs", """
attribute @s movement_speed base set 0.10
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset
""")

	# /classes/_soldier_base
	write_function(f"{path}/classes/_soldier_base", f"""
item replace entity @s armor.chest with iron_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots
item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]
item replace entity @s hotbar.2 with potion[potion_contents="minecraft:strong_healing"]
""")

	# /classes/archer
	write_function(f"{path}/classes/archer", f"""
function {path}/classes/_common

item replace entity @s armor.chest with chainmail_chestplate
item replace entity @s armor.legs with iron_leggings
item replace entity @s armor.feet with chainmail_boots
item replace entity @s hotbar.0 with stone_sword
item replace entity @s hotbar.1 with crossbow[charged_projectiles=[{{id:"minecraft:arrow"}}]]
item replace entity @s hotbar.2 with stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]
item replace entity @s hotbar.3 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.4 with arrow 24
item replace entity @s hotbar.6 with potion[item_name={{"text":"Suicide Potion","color":"dark_purple"}},potion_contents={{custom_color:4391004,custom_effects:[{{id:"instant_damage",amplifier:3b,duration:20}},{{id:"wither",amplifier:10b,duration:-1}},{{id:"poison",amplifier:10b,duration:-1}}]}}]
item replace entity @s[team={ns}.temp.red] hotbar.7 with red_wool 24
item replace entity @s[team={ns}.temp.blue] hotbar.7 with blue_wool 24
item replace entity @s hotbar.8 with bread 21

attribute @s movement_speed base set 0.11
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset
""")

	# /classes/chemister
	write_function(f"{path}/classes/chemister", f"""
function {path}/classes/_common

item replace entity @s armor.chest with golden_chestplate
item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.feet with golden_boots
item replace entity @s hotbar.0 with iron_sword
item replace entity @s hotbar.1 with stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]
item replace entity @s hotbar.2 with lingering_potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.3 with lingering_potion[potion_contents="minecraft:long_swiftness"]
item replace entity @s hotbar.4 with lingering_potion[potion_contents="minecraft:strong_harming"]
item replace entity @s hotbar.5 with lingering_potion[potion_contents="minecraft:strong_poison"]
item replace entity @s hotbar.6 with potion[item_name={{"text":"Suicide Potion","color":"dark_purple"}},potion_contents={{custom_color:4391004,custom_effects:[{{id:"instant_damage",amplifier:1b,duration:20}},{{id:"wither",amplifier:10b,duration:-1}},{{id:"poison",amplifier:10b,duration:-1}}]}}]
item replace entity @s[team={ns}.temp.red] hotbar.7 with red_wool 8
item replace entity @s[team={ns}.temp.blue] hotbar.7 with blue_wool 8
item replace entity @s hotbar.8 with bread 21

attribute @s movement_speed base set 0.10
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset
""")

	# /classes/demolisher
	write_function(f"{path}/classes/demolisher", f"""
function {path}/classes/_common

function {path}/classes/_soldier_base
item replace entity @s hotbar.4 with potion[item_name={{"text":"Suicide Potion","color":"dark_purple"}},potion_contents={{custom_color:4391004,custom_effects:[{{id:"instant_damage",amplifier:1b,duration:20}},{{id:"wither",amplifier:10b,duration:-1}},{{id:"poison",amplifier:10b,duration:-1}}]}}]
item replace entity @s[team={ns}.temp.red] hotbar.5 with red_wool 8
item replace entity @s[team={ns}.temp.blue] hotbar.5 with blue_wool 8
item replace entity @s hotbar.6 with flint_and_steel
item replace entity @s hotbar.7 with tnt 2
item replace entity @s hotbar.8 with bread 21

function {path}/classes/_soldier_attrs
""")

	# /classes/tank
	write_function(f"{path}/classes/tank", f"""
function {path}/classes/_common

item replace entity @s armor.chest with diamond_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots
item replace entity @s hotbar.0 with stone_sword
item replace entity @s hotbar.1 with stone_axe[attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:4,operation:"add_value"}}]]
item replace entity @s hotbar.2 with golden_apple 2
item replace entity @s hotbar.6 with potion[item_name={{"text":"Suicide Potion","color":"dark_purple"}},potion_contents={{custom_color:4391004,custom_effects:[{{id:"instant_damage",amplifier:1b,duration:20}},{{id:"wither",amplifier:10b,duration:-1}},{{id:"poison",amplifier:10b,duration:-1}}]}}]
item replace entity @s[team={ns}.temp.red] hotbar.7 with red_wool 18
item replace entity @s[team={ns}.temp.blue] hotbar.7 with blue_wool 18
item replace entity @s hotbar.8 with bread 21

attribute @s movement_speed base set 0.09
attribute @s attack_speed base set 2048
attribute @s max_health base set 24
attribute @s jump_strength base reset
""")

	# /classes/warrior
	write_function(f"{path}/classes/warrior", f"""
function {path}/classes/_common
function {path}/classes/_soldier_base
item replace entity @s hotbar.3 with potion[potion_contents="minecraft:strong_healing"]
item replace entity @s hotbar.6 with potion[item_name={{"text":"Suicide Potion","color":"dark_purple"}},potion_contents={{custom_color:4391004,custom_effects:[{{id:"instant_damage",amplifier:1b,duration:20}},{{id:"wither",amplifier:10b,duration:-1}},{{id:"poison",amplifier:10b,duration:-1}}]}}]
item replace entity @s[team={ns}.temp.red] hotbar.7 with red_wool 12
item replace entity @s[team={ns}.temp.blue] hotbar.7 with blue_wool 12
item replace entity @s hotbar.8 with bread 21

function {path}/classes/_soldier_attrs
""")

	# /death/for_global
	write_function(f"{path}/death/for_global", f"""
function {ns}:modes/_common/death/for_global {{filter:"{ns}:modes/capture_the_flag/death/inventory_filter"}}
""")


	# /death/inventory_filter
	write_function(f"{path}/death/inventory_filter", f"""
data modify storage {ns}:main Inventory set value []
data modify storage {ns}:main Inventory append from entity @s data.Inventory[{{components:{{"minecraft:potion_contents":{{potion:"minecraft:strong_healing"}}}}}}]
data modify entity @s data.Inventory set from storage {ns}:main Inventory
""")

	# /death/player
	write_function(f"{path}/death/player", f"""
function {ns}:utils/classic_death
tag @s add {ns}.to_tp
""")

	# /roles/main
	write_function(f"{path}/roles/main", f"""
tag @s add {ns}.temp

# Role selection
scoreboard players add #next_role {ns}.data 1
execute if score #next_role {ns}.data matches 1 run team join {ns}.temp.red @s
execute if score #next_role {ns}.data matches 2 run team join {ns}.temp.blue @s
execute if score #next_role {ns}.data matches 2 run scoreboard players set #next_role {ns}.data 0

# Linked marker for offline players
setblock 0 6 0 yellow_shulker_box
loot insert 0 6 0 loot {ns}:get_username
summon marker 0 6 0 {{Tags:["{ns}.temp.player","{ns}.new"]}}
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute as @e[tag={ns}.new] run function {path}/roles/marker
setblock 0 6 0 air

tag @s remove {ns}.temp

function {path}/teleport_to_spawn
execute at @s run playsound entity.player.levelup ambient @s
""")

	# /roles/marker
	write_function(f"{path}/roles/marker", f"""
scoreboard players operation @s {ns}.id = #player_id {ns}.id
data modify entity @s data.name set from block 0 6 0 Items[0].components."minecraft:profile".name
tag @s add {ns}.temp.player
tag @s remove {ns}.new
""")
