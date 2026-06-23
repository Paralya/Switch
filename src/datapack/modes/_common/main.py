
# ruff: noqa: E501
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

	# /death_spectator_lives (like death_spectator but gated on @s having no lives left,
	# i.e. switch.alive < 1: count the death, spectate, return to the map marker, clear effects/items)
	write_function(f"{path}/death_spectator_lives", """
execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s
""")

	# /death/detect (shared "linked-player missing?" check for marker-based death systems: if the
	# linked player is gone, mark @s dead; otherwise teleport to them and sync inventory on change)
	write_function(f"{path}/death/detect", """
# Detect if linked player is missing
scoreboard players set #success switch.data 0
scoreboard players operation #player_id switch.id = @s switch.id
execute store success score #success switch.data run tag @a[scores={switch.alive=1..},predicate=switch:has_same_id] add switch.temp

execute if score #success switch.data matches 0 run tag @s add switch.player_dead
execute if score #success switch.data matches 1 run tp @s @p[tag=switch.temp]
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory set from entity @p[tag=switch.temp] Inventory
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp equipment set from entity @p[tag=switch.temp] equipment
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.head
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.chest
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.legs
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.feet
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify storage switch:temp Inventory append from storage switch:temp equipment.offhand
execute if score #success switch.data matches 1 if entity @p[tag=switch.temp,tag=switch.temp.inventory_changed] run data modify entity @s data.Inventory set from storage switch:temp Inventory
execute if score #success switch.data matches 1 run tag @p[tag=switch.temp,tag=switch.temp.inventory_changed] remove switch.temp.inventory_changed

tag @a remove switch.temp
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

	# /place_wool_count_sides (set @s's wool color block here, then count how many of the 4 horizontal
	# neighbours are solid (not water/air) into #points 1..5; used by de_a_coudre / simultaneous_jump)
	write_function(f"{path}/place_wool_count_sides", """
scoreboard players operation #block switch.data = @s switch.temp.color
function switch:modes/_common/set_wool_color

scoreboard players set #points switch.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points switch.data 1
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

	# /xp_bar/three_lives (lives-based bar: 1/2/3 remaining lives -> 333/666/1000 points then points_at_s)
	write_function(f"{path}/xp_bar/three_lives", """
execute if entity @s[scores={switch.alive=1}] run scoreboard players set #points switch.data 333
execute if entity @s[scores={switch.alive=2}] run scoreboard players set #points switch.data 666
execute if entity @s[scores={switch.alive=3}] run scoreboard players set #points switch.data 1000
function switch:modes/_common/xp_bar/points_at_s
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

	# /death/for_global (shared by capture_the_flag / rush_the_point: clear the dead player's linked
	# copies, drop their mode-filtered inventory, then park the marker off-map. {filter} = that mode's
	# death/inventory_filter function path.)
	write_function(f"{path}/death/for_global", """
scoreboard players operation #player_id switch.id = @s switch.id
clear @a[tag=!detached,predicate=switch:has_same_id]

$function $(filter)
execute if data entity @s data.Inventory[0] at @s run function switch:modes/_common/death/inventory_drop

tag @s add switch.processed
tp @s 0 69 0
""")

	# /death/global_effects (shared spectres_game / traitors_game death/for_global core: drop the
	# filtered inventory, roll a 50/50 #success, then clap thunder for everyone)
	write_function(f"{path}/death/global_effects", """
execute at @s run function switch:modes/_common/death/inventory_drop

scoreboard players set #success switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #success switch.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
""")

	# /death/keep_combat_items (shared beat_the_kings / spectres_game inventory_filter head: rebuild
	# the saved Inventory from only the golden apples, arrows and TNT the dead player was carrying)
	write_function(f"{path}/death/keep_combat_items", """
data modify storage switch:main Inventory set value []
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:golden_apple"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:arrow"}]
data modify storage switch:main Inventory append from entity @s data.Inventory[{id:"minecraft:tnt"}]
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

	# /process_end/winner_by_health (shared core for survival last-standing modes: reward the lone
	# survivor + show their health, run the mode's own death, then rate. The caller adds its own
	# restart tail (and any extra logic). The per-mode death function is the {death:"..."} macro arg.)
	write_function(f"{path}/process_end/winner_by_health", """
scoreboard players add #process_end switch.data 1

execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 store result score #health switch.data run data get entity @r[gamemode=survival] Health
execute if score #process_end switch.data matches 1 if score #remaining_players switch.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_health
$execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function $(death)
execute if score #process_end switch.data matches 1 as @a[tag=!detached] run function switch:player/trigger/rating/print_current_game
""")

	# /flag/release_holders (shared by capture_the_flag / rush_the_flag flag_drop: kill whoever holds
	# the flag matching @s's color and strip their has_*_flag tag)
	write_function(f"{path}/flag/release_holders", """
execute if entity @s[tag=switch.blue_flag] run kill @a[tag=switch.has_blue_flag]
execute if entity @s[tag=switch.red_flag] run kill @a[tag=switch.has_red_flag]
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
""")

	# /flag/score_fireworks (shared by capture_the_flag / rush_the_flag score_point: scoring
	# advancement, blast sound, a colored firework, and the point increment for the scoring team)
	write_function(f"{path}/flag/score_fireworks", """
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.blue_flag] run advancement grant @p[tag=switch.has_blue_flag] only switch:visible/33
execute unless score #test_mode switch.data matches 1 if entity @s[tag=switch.red_flag] run advancement grant @p[tag=switch.has_red_flag] only switch:visible/33
execute as @a[tag=!detached] at @s run playsound entity.firework_rocket.blast ambient @s

execute if entity @s[tag=switch.blue_flag] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:firework_explosion":{"shape":"burst","has_trail":true,"has_flicker":true,"colors":[16711680],"fade_colors":[16711680]}}}}
execute if entity @s[tag=switch.red_flag] run summon firework_rocket ~ ~ ~ {LifeTime:0,FireworksItem:{id:"minecraft:firework_rocket",count:1,components:{"minecraft:firework_explosion":{"shape":"burst","has_trail":true,"has_flicker":true,"colors":[255],"fade_colors":[255]}}}}

# Add point
execute if entity @s[tag=switch.blue_flag] run scoreboard players add #red_points switch.data 1
execute if entity @s[tag=switch.red_flag] run scoreboard players add #blue_points switch.data 1
""")

	# /pvp_arena/kit (shared melee loadout for castagne / pvpswap; castagne adds a fishing_rod on its own)
	write_function(f"{path}/pvp_arena/kit", """
item replace entity @s armor.head with leather_helmet[enchantments={projectile_protection:2}]
item replace entity @s armor.chest with leather_chestplate[enchantments={projectile_protection:2}]
item replace entity @s armor.legs with leather_leggings[enchantments={projectile_protection:2}]
item replace entity @s armor.feet with leather_boots[enchantments={projectile_protection:2}]
item replace entity @s hotbar.0 with wooden_sword[enchantments={sharpness:1,knockback:1}]
item replace entity @s hotbar.1 with bow
item replace entity @s hotbar.2 with water_bucket
item replace entity @s hotbar.3 with iron_pickaxe[enchantments={efficiency:1}]
item replace entity @s hotbar.4 with iron_axe[enchantments={efficiency:1},attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:2,operation:"add_value"}]]
item replace entity @s hotbar.6 with arrow 8
item replace entity @s hotbar.7 with oak_planks 64
item replace entity @s hotbar.8 with golden_apple 12
item replace entity @s inventory.25 with tnt 4
item replace entity @s inventory.26 with flint_and_steel
""")

	# /pvp_arena/combat_tick (shared castagne / pvpswap tick body: classic-death detection, glow when
	# isolated, and the kill-streak advancement with its cooldown bookkeeping)
	write_function(f"{path}/pvp_arena/combat_tick", """
## Death system
function switch:utils/on_death_run_function {function:"switch:utils/classic_death"}

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect give @s glowing 2 255 true
execute as @a[tag=!detached,gamemode=survival] at @s if entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect clear @s glowing

# Advancement
execute unless score #test_mode switch.data matches 1 run advancement grant @a[tag=!detached,scores={switch.temp.kill=1..,switch.temp.cooldown_kill=1..}] only switch:visible/9
scoreboard players set @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.cooldown_kill 200
scoreboard players remove @a[tag=!detached,scores={switch.temp.kill=1..}] switch.temp.kill 1
scoreboard players remove @a[tag=!detached,scores={switch.temp.cooldown_kill=1..}] switch.temp.cooldown_kill 1
""")

	# /standard_combat_rules (mob griefing on, hidden death messages, no natural regen, kept inventory;
	# shared by creeper_apocalypse / spectres_game / traitors_game)
	write_function(f"{path}/standard_combat_rules", """
execute in switch:game run gamerule minecraft:mob_griefing true
execute in switch:game run gamerule minecraft:show_death_messages false
execute in switch:game run gamerule minecraft:natural_health_regeneration false
execute in switch:game run gamerule minecraft:keep_inventory true
""")

	# /detect_2team_state (shared red/blue "who's left standing" check for the 2-team elimination modes
	# layers_2_teams / sheepwars: #game_state = 1 red wins, 2 blue wins, 3 nobody left; ends the timer)
	write_function(f"{path}/detect_2team_state", """
# On regarde l'état de la partie
scoreboard players set #game_state switch.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.red] run scoreboard players add #game_state switch.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team=switch.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!switch.temp.blue] run scoreboard players add #game_state switch.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state switch.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state switch.data matches 1..3 run scoreboard players set #remaining_time switch.data 0
""")

	# /sidebar_setup (shared Blue/Red sidebar rows + the fixed §-fakeplayer ordering, used by the
	# Red-vs-Blue point modes; callers set their own sidebar.5 "Goal" and sidebar.3 "Time" suffixes)
	write_function(f"{path}/sidebar_setup", """
team modify switch.temp.sidebar.2 suffix [{"text":"Blue Team: ","color":"blue"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.1 suffix [{"text":"Red Team: ","color":"red"},{"text":"0","color":"yellow"}]
team modify switch.temp.sidebar.2 color blue
team modify switch.temp.sidebar.1 color red
team join switch.temp.sidebar.5 §3
team join switch.temp.sidebar.3 §5
team join switch.temp.sidebar.2 §2
team join switch.temp.sidebar.1 §1
scoreboard players set §5 switch.temp.sidebar 5
scoreboard players set §r switch.temp.sidebar 4
scoreboard players set §3 switch.temp.sidebar 3
scoreboard players set §2 switch.temp.sidebar 2
scoreboard players set §1 switch.temp.sidebar 1
scoreboard players display numberformat §5 switch.temp.sidebar blank
scoreboard players display numberformat §r switch.temp.sidebar blank
scoreboard players display numberformat §3 switch.temp.sidebar blank
scoreboard players display numberformat §2 switch.temp.sidebar blank
scoreboard players display numberformat §1 switch.temp.sidebar blank
""")

