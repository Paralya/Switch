
# Imports
from stewbeet import Mem, write_function

# Vanilla dye colors, in scoreboard order (used by /set_wool_color)
WOOL_COLORS: tuple[str, ...] = (
	"white", "orange", "magenta", "light_blue", "yellow", "lime", "pink", "gray",
	"light_gray", "cyan", "purple", "blue", "brown", "green", "red", "black",
)

# Race ranking teams: (suffix label, color) for positions 1..10, then the "10+" bucket
RANKING_TEAMS: tuple[tuple[str, str], ...] = (
	("1st", "#FFE700"), ("2nd", "#C0C0C0"), ("3rd", "#CD7F32"), ("4th", "#696969"),
	("5th", "#696969"), ("6th", "#696969"), ("7th", "#696969"), ("8th", "#696969"),
	("9th", "#696969"), ("10th", "#696969"),
)


def write_mode():
	""" Write the shared _common helper functions at switch:modes/_common/* (no calls, no translations) """
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:modes/_common"

	# /death_spectator
	write_function(f"{path}/death_spectator", """
execute if entity @s[gamemode=!spectator] run scoreboard players add @s switch.stats.deaths 1

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /detect_chosen_class
	write_function(f"{path}/detect_chosen_class", """
# Get which class got chosen
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.0 * run scoreboard players set @s switch.temp.chosen_class 1
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.1 * run scoreboard players set @s switch.temp.chosen_class 2
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.2 * run scoreboard players set @s switch.temp.chosen_class 3
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.3 * run scoreboard players set @s switch.temp.chosen_class 4
execute if score @s switch.temp.chosen_class matches 0 unless items entity @s hotbar.4 * run scoreboard players set @s switch.temp.chosen_class 5
""")

	# /compute_mins_secs (split #remaining_time into #mins and #secs for actionbar/timer displays)
	write_function(f"{path}/compute_mins_secs", """
scoreboard players operation #mins switch.data = #remaining_time switch.data
scoreboard players operation #mins switch.data /= #60 switch.data
scoreboard players operation #secs switch.data = #remaining_time switch.data
scoreboard players operation #secs switch.data %= #60 switch.data
""")

	# /layers_starter_kit (shared stone-tools loadout for the layers_2_teams / layers_4_teams modes)
	write_function(f"{path}/layers_starter_kit", """
attribute @s attack_speed base set 2048
give @s stone_pickaxe
give @s stone_axe
give @s netherite_upgrade_smithing_template 5
give @s apple 12
give @s tnt 4
give @s flint_and_steel 1
""")

	# /racing_start_setup (ranking teams generated from RANKING_TEAMS)
	team_add: str = "\n".join(
		f'team add switch.temp.{i} {{"text":"[{label}]","color":"{color}"}}'
		for i, (label, color) in enumerate(RANKING_TEAMS, start=1)
	)
	team_collision: str = "\n".join(f"team modify switch.temp.{i} collisionRule never" for i in range(1, 11))
	team_suffix: str = "\n".join(
		f'team modify switch.temp.{i} suffix {{"text":" [{label}]","color":"{color}"}}'
		for i, (label, color) in enumerate(RANKING_TEAMS, start=1)
	)
	write_function(f"{path}/racing_start_setup", f"""
scoreboard objectives add switch.temp dummy
scoreboard objectives add switch.temp.old_speed dummy
scoreboard objectives add switch.temp.compteur dummy
scoreboard objectives add switch.temp.dx dummy
scoreboard objectives add switch.temp.dy dummy
scoreboard objectives add switch.temp.dz dummy
scoreboard objectives add switch.temp.id dummy
scoreboard objectives add switch.temp.vote_collisions dummy
scoreboard objectives add switch.temp.change_map dummy
scoreboard objectives add switch.temp.checkpoint dummy
scoreboard objectives add switch.temp.classement dummy
scoreboard objectives add switch.temp.pv_classement dummy
scoreboard objectives add switch.temp.pos_on_last_lap dummy
scoreboard objectives add switch.temp.sidebar dummy {{"text":"Ranking","color":"dark_purple"}}
scoreboard objectives add switch.respawn_cp_id dummy
scoreboard objectives add switch.hard_respawn_cp_id dummy
scoreboard objectives add switch.checkpoint dummy
scoreboard objectives add switch.lap dummy
scoreboard objectives add switch.effects.last dummy
scoreboard objectives add switch.effects.timer dummy
scoreboard players set @a[tag=!detached] switch.respawn_cp_id -1
scoreboard players set @a[tag=!detached] switch.hard_respawn_cp_id -1
scoreboard players set @a[tag=!detached] switch.temp.checkpoint 0
scoreboard players set @a[tag=!detached] switch.checkpoint 0
scoreboard players set @a[tag=!detached] switch.lap 1
scoreboard objectives setdisplay sidebar switch.temp.sidebar

team add switch.temp.kart {{"text":"[Kart]"}}
{team_add}
team add switch.temp.10+ {{"text":"[10+th]","color":"#9200DF"}}
team modify switch.temp.kart collisionRule never
{team_collision}
team modify switch.temp.10+ collisionRule never
{team_suffix}
team modify switch.temp.10+ suffix {{"text":" [10+th]","color":"#9200DF"}}

## Number of checkpoints and laps per map
scoreboard players set #total_laps switch.data 3
scoreboard players set #total_checkpoints switch.data 1
""")

	# /set_wool_color
	setblocks: str = "\n".join(
		f"execute if score #block switch.data matches {i} run setblock ~ ~ ~ {color}_wool"
		for i, color in enumerate(WOOL_COLORS, start=1)
	)
	write_function(f"{path}/set_wool_color", f"""
scoreboard players operation #block switch.data %= #16 switch.data
scoreboard players add #block switch.data 1

{setblocks}
""")

	# /xp_bar/levels
	write_function(f"{path}/xp_bar/levels", """
# Set XP levels
data modify storage switch:main temp set value {selector:"@a[tag=!detached]", xp:0, type:" levels"}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #levels switch.data
function switch:modes/_common/xp_bar/macro with storage switch:main temp
""")

	# /xp_bar/levels_at_s
	write_function(f"{path}/xp_bar/levels_at_s", """
# Set XP levels
data modify storage switch:main temp set value {selector:"@s", xp:0, type:" levels"}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #levels switch.data
function switch:modes/_common/xp_bar/macro with storage switch:main temp
""")

	# /xp_bar/macro (macro function with $ line)
	write_function(f"{path}/xp_bar/macro", """
$xp set $(selector) $(xp)$(type)
""")

	# /xp_bar/time (shared time-based XP bar preamble; caller sets #divide beforehand)
	write_function(f"{path}/xp_bar/time", """
$scoreboard players operation #points switch.data = $(points_score) switch.data
scoreboard players operation #points switch.data *= #1000000 switch.data
function switch:modes/_common/xp_bar/points
$scoreboard players operation #levels switch.data = $(levels_score) switch.data
function switch:modes/_common/xp_bar/levels
""")

	# /xp_bar/points
	write_function(f"{path}/xp_bar/points", """
# Divide points
scoreboard players operation #points switch.data /= #divide switch.data
scoreboard players set #divide switch.data 1
execute if score #points switch.data matches ..0 run scoreboard players set #points switch.data 0
execute if score #points switch.data matches 1000.. run scoreboard players set #points switch.data 1000

# XP from 0 to 1000 points
xp set @a[tag=!detached] 130 levels
data modify storage switch:main temp set value {selector:"@a[tag=!detached]", xp:0, type:""}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #points switch.data
function switch:modes/_common/xp_bar/macro with storage switch:main temp
xp set @a[tag=!detached] 0 levels
""")

	# /xp_bar/points_at_s
	write_function(f"{path}/xp_bar/points_at_s", """
# Divide points
scoreboard players operation #points switch.data /= #divide switch.data
scoreboard players set #divide switch.data 1
execute if score #points switch.data matches ..0 run scoreboard players set #points switch.data 0
execute if score #points switch.data matches 1000.. run scoreboard players set #points switch.data 1000

# XP from 0 to 1000 points
xp set @s 130 levels
data modify storage switch:main temp set value {selector:"@s", xp:0, type:""}
execute store result storage switch:main temp.xp int 1 run scoreboard players get #points switch.data
function switch:modes/_common/xp_bar/macro with storage switch:main temp
xp set @s 0 levels
""")

	# /teleport_to_death (teleport @s onto the matching marker, used by id-based death systems)
	write_function(f"{path}/teleport_to_death", """
scoreboard players operation #player_id switch.id = @s switch.id
tp @s @e[type=!player,predicate=switch:has_same_id,limit=1]
tag @s remove switch.to_tp
""")

	# /update_sidebar (compute Red/Blue points + remaining time, then call the macro)
	write_function(f"{path}/update_sidebar", """
data modify storage switch:main input set value {blue:0,red:0,minutes:0,seconds:0,optional_zero:""}
execute store result storage switch:main input.blue int 1 run scoreboard players get #blue_points switch.data
execute store result storage switch:main input.red int 1 run scoreboard players get #red_points switch.data

scoreboard players operation #minutes switch.data = #remaining_time switch.data
scoreboard players operation #minutes switch.data /= #60 switch.data
scoreboard players operation #seconds switch.data = #remaining_time switch.data
scoreboard players operation #seconds switch.data %= #60 switch.data

execute store result storage switch:main input.minutes int 1 run scoreboard players get #minutes switch.data
execute store result storage switch:main input.seconds int 1 run scoreboard players get #seconds switch.data
execute if score #seconds switch.data matches 0..9 run data modify storage switch:main input.optional_zero set value "0"

function switch:modes/_common/update_sidebar_macro with storage switch:main input
""")

	# /update_sidebar_macro (Red/Blue team sidebar with remaining time)
	write_function(f"{path}/update_sidebar_macro", """
$team modify switch.temp.sidebar.3 suffix [{"text":"Time remaining: "},{"text":"$(minutes)","color":"yellow"},{"text":"m"},{"text":"$(optional_zero)$(seconds)","color":"yellow"},{"text":"s"}]
$team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"$(blue)","color":"yellow"}]
$team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"$(red)","color":"yellow"}]
""")

	# /fireball/get_motion (sample a launch direction by teleporting a marker forward)
	write_function(f"{path}/fireball/get_motion", """
data modify entity @s Rotation set from storage switch:main Rotation
execute at @s run tp @s ^ ^ ^1000
data modify storage switch:main Pos set from entity @s Pos
kill @s
""")

	# /fireball/set_motion (apply the sampled direction as the fireball's motion)
	write_function(f"{path}/fireball/set_motion", """
execute store result entity @s Motion[0] double 0.001 run data get storage switch:main Pos[0]
execute store result entity @s Motion[1] double 0.001 run data get storage switch:main Pos[1]
execute store result entity @s Motion[2] double 0.001 run data get storage switch:main Pos[2]
tag @s remove switch.new
""")

	# /death/inventory_drop (drop the dead player's inventory items one by one)
	write_function(f"{path}/death/inventory_drop", f"""
loot spawn ~ ~ ~ loot switch:temp_item
data modify entity @n[type=item,distance=..1,nbt={{Item:{{components:{{"minecraft:custom_data":{{switch:{{"temp_item":true}}}}}}}}}}] Item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data entity @s data.Inventory[0] run function {path}/death/inventory_drop
""")

	# /process_end/winner_by_points (shared end-of-game block for point-based modes: tag the
	# highest-switch.temp.points player(s) as the winner, reward + announce. All lines self-guard on
	# #process_end==1, so modes call this unconditionally inside their /process_end.)
	write_function(f"{path}/process_end/winner_by_points", """
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_points
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
""")

	# /process_end/last_survivor (shared full process_end for last-man-standing adventure modes:
	# reward the lone survivor, announce, spectate everyone, run the mode's own death, then loop to
	# restart. The per-mode death function is passed as the {death:"..."} macro argument.)
	write_function(f"{path}/process_end/last_survivor", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=adventure] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_adventure
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
$execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function $(death)
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game

execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

	# /process_end/spectate_only (process_end for modes that reward the winner elsewhere, e.g. in
	# detect_end: just spectate everyone, rate the game, then loop to restart.)
	write_function(f"{path}/process_end/spectate_only", """
scoreboard players add #process_end switch.data 1
execute if score #process_end switch.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
execute if score #process_end switch.data matches 200 run function switch:engine/restart
""")

