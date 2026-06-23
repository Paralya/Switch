
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ..common import write_modes_calls
from .translations import write_translations


def write_mode():
	ns: str = Mem.ctx.project_id
	mode: str = "rush_the_flag"
	path: str = f"{ns}:modes/{mode}"

	# Write /calls/ and /translations/ functions
	write_modes_calls(mode)
	write_translations()


	# /advancements/break_obsidian
	write_function(f"{path}/advancements/break_obsidian", """
advancement revoke @s only switch:rush_the_flag/break_obsidian
execute if score #engine_state switch.data matches 3 if data storage switch:main {current_game:"rush_the_flag"} run function switch:modes/rush_the_flag/advancements/break_obsidian_confirm
""")

	# /advancements/break_obsidian_confirm (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/advancements/break_obsidian_confirm", """
scoreboard players set #color switch.data 0
execute store success score #color switch.data if entity @s[team=switch.rush_the_point.blue]
execute as @a[tag=!detached] at @s run playsound entity.player.levelup ambient @s
scoreboard players remove @s switch.temp.break_obsidian 1

# Random
execute store result score #random switch.data run random value 0..9

# Color red
execute if score #random switch.data matches 0 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.red] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 0 run summon wither 14000 110 14000 {Team:"switch.rush_the_point.red",CustomName:{"text":"Wither Rouge","color":"red"}}
execute if score #random switch.data matches 5 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 0 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] weakness 60 0 true

# Color blue
execute if score #random switch.data matches 0 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] absorption 60 4 true
execute if score #random switch.data matches 1 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] speed 60 0 true
execute if score #random switch.data matches 2 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] strength 60 0 true
execute if score #random switch.data matches 3 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.blue] resistance 60 0 true
execute if score #random switch.data matches 4 if score #color switch.data matches 1 run summon wither 14000 110 14000 {Team:"switch.rush_the_point.blue",CustomName:{"text":"Wither Bleu","color":"blue"}}
execute if score #random switch.data matches 5 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] slowness 60 1 true
execute if score #random switch.data matches 6 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] glowing 60 0 true
execute if score #random switch.data matches 7 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] levitation 1 20 true
execute if score #random switch.data matches 8 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] wither 60 0 true
execute if score #random switch.data matches 9 if score #color switch.data matches 1 run effect give @a[tag=!detached,team=switch.rush_the_point.red] weakness 60 0 true

# Messages
function switch:modes/rush_the_flag/translations/advancements_break_obsidian_confirm
""")

	# /flag_drop (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/flag_drop", """
# Drop the flag
function switch:modes/rush_the_flag/translations/flag_drop
function switch:modes/_common/flag/release_holders
data modify entity @s[tag=switch.blue_flag] item set value {id:"blue_banner",count:1}
data modify entity @s[tag=switch.red_flag] item set value {id:"red_banner",count:1}
data modify entity @s transformation.translation[1] set value -1.5f

# Add free tag
tag @s add switch.free
""")

	# /flag_hotbar
	write_function(f"{path}/flag_hotbar", """
item replace entity @s weapon.offhand with air
item replace entity @s[team=switch.rush_the_point.red] hotbar.0 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.1 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.2 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.3 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.4 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.5 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.6 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.7 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] hotbar.8 with red_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.red] armor.head with blue_banner
item replace entity @s[team=switch.rush_the_point.blue] hotbar.0 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.1 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.2 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.3 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.4 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.5 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.6 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.7 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] hotbar.8 with blue_wool[can_break={blocks:["cut_sandstone","smooth_sandstone_stairs","obsidian","fire","tnt"]}]
item replace entity @s[team=switch.rush_the_point.blue] armor.head with red_banner
""")

	# /flag_pickup (translation ref rewritten)
	write_function(f"{path}/flag_pickup", """
# Remove free tag and original_pos tag
tag @s remove switch.original_pos
tag @s remove switch.free

# Depending on the flag color, tag the respective player
execute if entity @s[tag=switch.blue_flag] run tag @p[team=switch.rush_the_point.red,distance=..1] add switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @p[team=switch.rush_the_point.blue,distance=..1] add switch.has_red_flag
execute if entity @s[tag=switch.blue_flag] run scoreboard players add #red_flag_pickups switch.data 1
execute if entity @s[tag=switch.red_flag] run scoreboard players add #blue_flag_pickups switch.data 1
function switch:modes/rush_the_flag/translations/flag_pickup
data remove entity @s item

# Translation & Playsound
data modify entity @s transformation.translation[1] set value 0.69f
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s
""")

	# /flag_reset (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/flag_reset", """
# Advancement
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.blue_flag] run advancement grant @p[team=switch.rush_the_point.blue,distance=..1] only switch:visible/81
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.red_flag] run advancement grant @p[team=switch.rush_the_point.red,distance=..1] only switch:visible/81

# Flag Reset Blue
execute if entity @s[tag=switch.blue_flag] on vehicle run tp @s 14077 99 14000 -90 0
execute if entity @s[tag=switch.blue_flag] run data modify entity @s Rotation[0] set value -90.0f
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag

# Flag Reset Red
execute if entity @s[tag=switch.red_flag] on vehicle run tp @s 13923 99 14000 90 0
execute if entity @s[tag=switch.red_flag] run data modify entity @s Rotation[0] set value 90.0f
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
function switch:modes/rush_the_flag/translations/flag_reset

# Reset Banner
data modify entity @s[tag=switch.blue_flag] item set value {id:"blue_banner",count:1}
data modify entity @s[tag=switch.red_flag] item set value {id:"red_banner",count:1}
data modify entity @s transformation.translation[1] set value -1.5f
tag @s add switch.original_pos
tag @s add switch.free
""")

	# /flag_tick
	write_function(f"{path}/flag_tick", f"""
# If the flag is free and a player is nearby, the flag is picked up
execute if entity @s[tag=switch.free,tag=switch.blue_flag] if entity @p[team=switch.rush_the_point.red,distance=..1] run function {path}/flag_pickup
execute if entity @s[tag=switch.free,tag=switch.red_flag] if entity @p[team=switch.rush_the_point.blue,distance=..1] run function {path}/flag_pickup

# If not free, check if the player holding the flag is nearby, if not, drop the flag
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] unless entity @p[tag=switch.has_blue_flag,distance=..5] run function {path}/flag_drop
execute if entity @s[tag=!switch.free,tag=switch.red_flag] unless entity @p[tag=switch.has_red_flag,distance=..5] run function {path}/flag_drop

# If not free, teleport to the player holding the flag
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] on vehicle at @p[tag=switch.has_blue_flag] run tp @s ~ ~ ~ ~180 0
execute if entity @s[tag=!switch.free,tag=switch.red_flag] on vehicle at @p[tag=switch.has_red_flag] run tp @s ~ ~ ~ ~180 0

function switch:modes/_common/flag/sync_motion

# If the flag is out of bounds, it is returned
execute store result score #y switch.data on vehicle run data get entity @s Pos[1]
execute if score #y switch.data matches ..50 run function {path}/flag_reset

# If the flag is free, not at original pos, and a player of the same team is nearby, it is returned
execute if entity @s[tag=switch.free,tag=!switch.original_pos,tag=switch.blue_flag] if entity @p[team=switch.rush_the_point.blue,distance=..1] run function {path}/flag_reset
execute if entity @s[tag=switch.free,tag=!switch.original_pos,tag=switch.red_flag] if entity @p[team=switch.rush_the_point.red,distance=..1] run function {path}/flag_reset

# Score a point
execute if entity @s[tag=!switch.free,tag=switch.blue_flag] positioned ~ ~2 ~ if entity @e[tag=switch.original_pos,tag=switch.red_flag,distance=..1] run function {path}/score_point
execute if entity @s[tag=!switch.free,tag=switch.red_flag] positioned ~ ~2 ~ if entity @e[tag=switch.original_pos,tag=switch.blue_flag,distance=..1] run function {path}/score_point
""")

	# /joined
	write_function(f"{path}/joined", """
execute if score #reconnect switch.data matches 0 run function switch:modes/rush_the_point/roles/main
function switch:translations/common/joined_reconnect
execute if score #reconnect switch.data matches 1 run function switch:modes/rush_the_point/teleport_to_spawn
tag @s remove switch.has_blue_flag
tag @s remove switch.has_red_flag
""")

	# /process_end (translation ref rewritten)
	write_function(f"{path}/process_end", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached,sort=random]
function switch:modes/rush_the_flag/translations/process_end
execute if score #process_end switch.data matches 1 if score #red_points switch.data > #blue_points switch.data as @a[tag=!detached,team=switch.rush_the_point.red] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #red_points switch.data < #blue_points switch.data as @a[tag=!detached,team=switch.rush_the_point.blue] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #red_flag_pickups switch.data > #blue_flag_pickups switch.data as @a[tag=!detached,team=switch.rush_the_point.red] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 if score #red_points switch.data = #blue_points switch.data if score #red_flag_pickups switch.data < #blue_flag_pickups switch.data as @a[tag=!detached,team=switch.rush_the_point.blue] at @s run function switch:engine/add_win
execute if score #process_end switch.data matches 1 as @a[tag=!detached] at @s run playsound item.totem.use ambient @s
execute if score #process_end switch.data matches 1 run tag @a remove switch.to_tp
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

# Obligatoire
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /score_point (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/score_point", """
# Tellraw + sound + fireworks
function switch:modes/rush_the_flag/translations/score_point
function switch:modes/_common/flag/score_fireworks

# Teleport the scorer back to spawn
execute if entity @s[tag=switch.blue_flag] as @p[tag=switch.has_blue_flag] run function switch:modes/rush_the_point/teleport_to_spawn
execute if entity @s[tag=switch.red_flag] as @p[tag=switch.has_red_flag] run function switch:modes/rush_the_point/teleport_to_spawn

# Reset the flag
function switch:modes/rush_the_flag/flag_reset
""")

	# /second
	write_function(f"{path}/second", """
function switch:modes/rush_the_point/second_common

# White wool at center
execute if score #rush_the_point_seconds switch.data matches ..-1 if data storage switch:main {map:"rush_the_point_1"} run fill 14010 98 13990 13990 98 14010 white_wool replace #minecraft:wool

# Summon the flags
execute if score #rush_the_point_seconds switch.data matches 0 if data storage switch:main {map:"rush_the_point_1"} run summon armor_stand 14077 99 14000 {Invisible:true,Invulnerable:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[-90.0f,0.0f]}],Rotation:[-90.0f,0.0f]}
execute if score #rush_the_point_seconds switch.data matches 0 if data storage switch:main {map:"rush_the_point_1"} run summon armor_stand 13923 99 14000 {Invisible:true,Invulnerable:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[90.0f,0.0f]}],Rotation:[90.0f,0.0f]}
execute if score #rush_the_point_seconds switch.data matches 0 as @e[tag=switch.flag] run data modify entity @s transformation.translation[1] set value -1.5f
""")

	# /start (brace-heavy: plain string, translation ref rewritten)
	write_function(f"{path}/start", """
function switch:modes/rush_the_point/start_common
function switch:modes/rush_the_flag/translations/start

team modify switch.temp.sidebar.5 suffix [{"text":"Goal: "},{"text":"5","color":"yellow"},{"text":" flags"}]
scoreboard players set #remaining_time switch.data 610
scoreboard players set #rush_the_point_seconds switch.data -20
scoreboard players set #rush_the_point_ticks switch.data 0
tag @a remove switch.has_blue_flag
tag @a remove switch.has_red_flag
""")

	# /stop
	write_function(f"{path}/stop", """
function switch:modes/rush_the_point/stop
tag @a remove switch.has_blue_flag
tag @a remove switch.has_red_flag
""")

	# /tick
	write_function(f"{path}/tick", f"""
function switch:modes/rush_the_point/tick_common

# Tick d'un flag
execute as @e[type=item_display,tag=switch.flag,sort=random] at @s positioned ~ ~-2 ~ run function {path}/flag_tick

# Hotbar when having a flag
execute as @a[tag=switch.has_blue_flag] run function {path}/flag_hotbar
execute as @a[tag=switch.has_red_flag] run function {path}/flag_hotbar

# Détection de fin de partie
execute if score #remaining_time switch.data matches 1.. if score #red_points switch.data matches 5.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches 1.. if score #blue_points switch.data matches 5.. run scoreboard players set #remaining_time switch.data 0
execute if score #remaining_time switch.data matches ..0 run function {path}/process_end
""")
