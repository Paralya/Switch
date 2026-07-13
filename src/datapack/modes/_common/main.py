
# ruff: noqa: E501
# Imports
from stewbeet import Mem, write_function

from ...kits import Kit, KitItem

def pvp_arena_kit() -> Kit:
	""" The melee loadout shared by castagne and pvpswap (castagne adds a fishing rod of its own).
	Built lazily: the axe's modifier id embeds the project namespace, unknown at import time. """
	ns: str = Mem.ctx.project_id
	return Kit("pvp_arena", items=(
		KitItem(item="leather_helmet[enchantments={projectile_protection:2}]", slot="armor.head"),
		KitItem(item="leather_chestplate[enchantments={projectile_protection:2}]", slot="armor.chest"),
		KitItem(item="leather_leggings[enchantments={projectile_protection:2}]", slot="armor.legs"),
		KitItem(item="leather_boots[enchantments={projectile_protection:2}]", slot="armor.feet"),
		KitItem(role="melee", item="wooden_sword[enchantments={sharpness:1,knockback:1}]", slot="hotbar.0"),
		KitItem(role="ranged", item="bow", slot="hotbar.1"),
		KitItem(role="mobility", item="water_bucket", slot="hotbar.2"),
		KitItem(role="tool", item="iron_pickaxe[enchantments={efficiency:1}]", slot="hotbar.3"),
		KitItem(role="axe", item=f'iron_axe[enchantments={{efficiency:1}},attribute_modifiers=[{{type:"minecraft:attack_damage",slot:"mainhand",id:"{ns}.attack_damage",amount:2,operation:"add_value"}}]]', slot="hotbar.4"),
		KitItem(role="ammo", item="arrow", count=8, slot="hotbar.6"),
		KitItem(role="blocks", item="oak_planks", count=64, slot="hotbar.7"),
		KitItem(role="heal", item="golden_apple", count=12, slot="hotbar.8"),
		KitItem(item="tnt", count=4, slot="inventory.25"),
		KitItem(item="flint_and_steel", slot="inventory.26"),
	))

# The stone-tools loadout shared by layers_2_teams and layers_4_teams.
LAYERS_STARTER_KIT: Kit = Kit("layers_starter", pre="attribute @s attack_speed base set 2048", items=(
	KitItem(role="tool", item="stone_pickaxe", slot="hotbar.0"),
	KitItem(role="axe", item="stone_axe", slot="hotbar.1"),
	KitItem(role="special", item="netherite_upgrade_smithing_template", count=5, slot="hotbar.2"),
	KitItem(role="food", item="apple", count=12, slot="hotbar.3"),
	KitItem(role="explosive", item="tnt", count=4, slot="hotbar.4", claim=True),
	KitItem(role="explosive", item="flint_and_steel", slot="hotbar.5", sibling=True),
))

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
	write_function(f"{path}/death_spectator", f"""
execute if entity @s[gamemode=!spectator] run scoreboard players add @s {ns}.stats.deaths 1

gamemode spectator @s
execute unless score #process_end {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
effect clear @s
clear @s
""")

	# /death_spectator_lives (like death_spectator but gated on @s having no lives left,
	# i.e. switch.alive < 1: count the death, spectate, return to the map marker, clear effects/items)
	write_function(f"{path}/death_spectator_lives", f"""
execute unless score @s {ns}.alive matches 1.. run scoreboard players add @s {ns}.stats.deaths 1
execute unless score @s {ns}.alive matches 1.. run gamemode spectator @s
execute unless score @s {ns}.alive matches 1.. at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s {ns}.alive matches 1.. run effect clear @s
execute unless score @s {ns}.alive matches 1.. run clear @s
""")

	# /death/detect (shared "linked-player missing?" check for marker-based death systems: if the
	# linked player is gone, mark @s dead; otherwise teleport to them and sync inventory on change)
	write_function(f"{path}/death/detect", f"""
# Detect if linked player is missing
scoreboard players set #success {ns}.data 0
scoreboard players operation #player_id {ns}.id = @s {ns}.id
execute store success score #success {ns}.data run tag @a[scores={{{ns}.alive=1..}},predicate={ns}:has_same_id] add {ns}.temp

execute if score #success {ns}.data matches 0 run tag @s add {ns}.player_dead
execute if score #success {ns}.data matches 1 run tp @s @p[tag={ns}.temp]
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp Inventory set from entity @p[tag={ns}.temp] Inventory
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp equipment set from entity @p[tag={ns}.temp] equipment
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp Inventory append from storage {ns}:temp equipment.head
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp Inventory append from storage {ns}:temp equipment.chest
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp Inventory append from storage {ns}:temp equipment.legs
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp Inventory append from storage {ns}:temp equipment.feet
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify storage {ns}:temp Inventory append from storage {ns}:temp equipment.offhand
execute if score #success {ns}.data matches 1 if entity @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] run data modify entity @s data.Inventory set from storage {ns}:temp Inventory
execute if score #success {ns}.data matches 1 run tag @p[tag={ns}.temp,tag={ns}.temp.inventory_changed] remove {ns}.temp.inventory_changed

tag @a remove {ns}.temp
""")

	# /detect_chosen_class
	write_function(f"{path}/detect_chosen_class", f"""
# Get which class got chosen
execute if score @s {ns}.temp.chosen_class matches 0 unless items entity @s hotbar.0 * run scoreboard players set @s {ns}.temp.chosen_class 1
execute if score @s {ns}.temp.chosen_class matches 0 unless items entity @s hotbar.1 * run scoreboard players set @s {ns}.temp.chosen_class 2
execute if score @s {ns}.temp.chosen_class matches 0 unless items entity @s hotbar.2 * run scoreboard players set @s {ns}.temp.chosen_class 3
execute if score @s {ns}.temp.chosen_class matches 0 unless items entity @s hotbar.3 * run scoreboard players set @s {ns}.temp.chosen_class 4
execute if score @s {ns}.temp.chosen_class matches 0 unless items entity @s hotbar.4 * run scoreboard players set @s {ns}.temp.chosen_class 5
""")

	# /compute_mins_secs (split #remaining_time into #mins and #secs for actionbar/timer displays)
	write_function(f"{path}/compute_mins_secs", f"""
scoreboard players operation #mins {ns}.data = #remaining_time {ns}.data
scoreboard players operation #mins {ns}.data /= #60 {ns}.data
scoreboard players operation #secs {ns}.data = #remaining_time {ns}.data
scoreboard players operation #secs {ns}.data %= #60 {ns}.data
""")

	# /layers_starter_kit (shared stone-tools loadout for the layers_2_teams / layers_4_teams modes)
	LAYERS_STARTER_KIT.write(f"{path}/layers_starter_kit")

	# /racing_start_setup (ranking teams generated from RANKING_TEAMS)
	team_add: str = "\n".join(
		f'team add {ns}.temp.{i} {{"text":"[{label}]","color":"{color}"}}'
		for i, (label, color) in enumerate(RANKING_TEAMS, start=1)
	)
	team_collision: str = "\n".join(f"team modify {ns}.temp.{i} collisionRule never" for i in range(1, 11))
	team_suffix: str = "\n".join(
		f'team modify {ns}.temp.{i} suffix {{"text":" [{label}]","color":"{color}"}}'
		for i, (label, color) in enumerate(RANKING_TEAMS, start=1)
	)
	write_function(f"{path}/racing_start_setup", f"""
scoreboard objectives add {ns}.temp dummy
scoreboard objectives add {ns}.temp.old_speed dummy
scoreboard objectives add {ns}.temp.compteur dummy
scoreboard objectives add {ns}.temp.dx dummy
scoreboard objectives add {ns}.temp.dy dummy
scoreboard objectives add {ns}.temp.dz dummy
scoreboard objectives add {ns}.temp.id dummy
scoreboard objectives add {ns}.temp.vote_collisions dummy
scoreboard objectives add {ns}.temp.change_map dummy
scoreboard objectives add {ns}.temp.checkpoint dummy
scoreboard objectives add {ns}.temp.classement dummy
scoreboard objectives add {ns}.temp.pv_classement dummy
scoreboard objectives add {ns}.temp.pos_on_last_lap dummy
scoreboard objectives add {ns}.temp.sidebar dummy {{"text":"Ranking","color":"dark_purple"}}
scoreboard objectives add {ns}.respawn_cp_id dummy
scoreboard objectives add {ns}.hard_respawn_cp_id dummy
scoreboard objectives add {ns}.checkpoint dummy
scoreboard objectives add {ns}.lap dummy
scoreboard objectives add {ns}.effects.last dummy
scoreboard objectives add {ns}.effects.timer dummy
scoreboard players set @a[tag=!detached] {ns}.respawn_cp_id -1
scoreboard players set @a[tag=!detached] {ns}.hard_respawn_cp_id -1
scoreboard players set @a[tag=!detached] {ns}.temp.checkpoint 0
scoreboard players set @a[tag=!detached] {ns}.checkpoint 0
scoreboard players set @a[tag=!detached] {ns}.lap 1
scoreboard objectives setdisplay sidebar {ns}.temp.sidebar

team add {ns}.temp.kart {{"text":"[Kart]"}}
{team_add}
team add {ns}.temp.10+ {{"text":"[10+th]","color":"#9200DF"}}
team modify {ns}.temp.kart collisionRule never
{team_collision}
team modify {ns}.temp.10+ collisionRule never
{team_suffix}
team modify {ns}.temp.10+ suffix {{"text":" [10+th]","color":"#9200DF"}}

## Number of checkpoints and laps per map
scoreboard players set #total_laps {ns}.data 3
scoreboard players set #total_checkpoints {ns}.data 1
""")

	# /place_wool_count_sides (set @s's wool color block here, then count how many of the 4 horizontal
	# neighbours are solid (not water/air) into #points 1..5; used by de_a_coudre / simultaneous_jump)
	write_function(f"{path}/place_wool_count_sides", f"""
scoreboard players operation #block {ns}.data = @s {ns}.temp.color
function {ns}:modes/_common/set_wool_color

scoreboard players set #points {ns}.data 1
execute positioned ~-1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points {ns}.data 1
execute positioned ~ ~ ~-1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points {ns}.data 1
execute positioned ~ ~ ~1 unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points {ns}.data 1
execute positioned ~1 ~ ~ unless block ~ ~ ~ water unless block ~ ~ ~ air run scoreboard players add #points {ns}.data 1
""")

	# /set_wool_color
	setblocks: str = "\n".join(
		f"execute if score #block {ns}.data matches {i} run setblock ~ ~ ~ {color}_wool"
		for i, color in enumerate(WOOL_COLORS, start=1)
	)
	write_function(f"{path}/set_wool_color", f"""
scoreboard players operation #block {ns}.data %= #16 {ns}.data
scoreboard players add #block {ns}.data 1

{setblocks}
""")

	# /xp_bar/levels
	write_function(f"{path}/xp_bar/levels", f"""
# Set XP levels
data modify storage {ns}:main temp set value {{selector:"@a[tag=!detached]", xp:0, type:" levels"}}
execute store result storage {ns}:main temp.xp int 1 run scoreboard players get #levels {ns}.data
function {ns}:modes/_common/xp_bar/macro with storage {ns}:main temp
""")

	# /xp_bar/levels_at_s
	write_function(f"{path}/xp_bar/levels_at_s", f"""
# Set XP levels
data modify storage {ns}:main temp set value {{selector:"@s", xp:0, type:" levels"}}
execute store result storage {ns}:main temp.xp int 1 run scoreboard players get #levels {ns}.data
function {ns}:modes/_common/xp_bar/macro with storage {ns}:main temp
""")

	# /xp_bar/macro (macro function with $ line)
	write_function(f"{path}/xp_bar/macro", """
$xp set $(selector) $(xp)$(type)
""")

	# /xp_bar/time (shared time-based XP bar preamble; caller sets #divide beforehand)
	write_function(f"{path}/xp_bar/time", f"""
$scoreboard players operation #points {ns}.data = $(points_score) {ns}.data
scoreboard players operation #points {ns}.data *= #1000000 {ns}.data
function {ns}:modes/_common/xp_bar/points
$scoreboard players operation #levels {ns}.data = $(levels_score) {ns}.data
function {ns}:modes/_common/xp_bar/levels
""")

	# /xp_bar/points
	write_function(f"{path}/xp_bar/points", f"""
# Divide points
scoreboard players operation #points {ns}.data /= #divide {ns}.data
scoreboard players set #divide {ns}.data 1
execute if score #points {ns}.data matches ..0 run scoreboard players set #points {ns}.data 0
execute if score #points {ns}.data matches 1000.. run scoreboard players set #points {ns}.data 1000

# XP from 0 to 1000 points
xp set @a[tag=!detached] 130 levels
data modify storage {ns}:main temp set value {{selector:"@a[tag=!detached]", xp:0, type:""}}
execute store result storage {ns}:main temp.xp int 1 run scoreboard players get #points {ns}.data
function {ns}:modes/_common/xp_bar/macro with storage {ns}:main temp
xp set @a[tag=!detached] 0 levels
""")

	# /xp_bar/points_at_s
	write_function(f"{path}/xp_bar/points_at_s", f"""
# Divide points
scoreboard players operation #points {ns}.data /= #divide {ns}.data
scoreboard players set #divide {ns}.data 1
execute if score #points {ns}.data matches ..0 run scoreboard players set #points {ns}.data 0
execute if score #points {ns}.data matches 1000.. run scoreboard players set #points {ns}.data 1000

# XP from 0 to 1000 points
xp set @s 130 levels
data modify storage {ns}:main temp set value {{selector:"@s", xp:0, type:""}}
execute store result storage {ns}:main temp.xp int 1 run scoreboard players get #points {ns}.data
function {ns}:modes/_common/xp_bar/macro with storage {ns}:main temp
xp set @s 0 levels
""")

	# /xp_bar/three_lives (lives-based bar: 1/2/3 remaining lives -> 333/666/1000 points then points_at_s)
	write_function(f"{path}/xp_bar/three_lives", f"""
execute if entity @s[scores={{{ns}.alive=1}}] run scoreboard players set #points {ns}.data 333
execute if entity @s[scores={{{ns}.alive=2}}] run scoreboard players set #points {ns}.data 666
execute if entity @s[scores={{{ns}.alive=3}}] run scoreboard players set #points {ns}.data 1000
function {ns}:modes/_common/xp_bar/points_at_s
""")

	# /teleport_to_death (teleport @s onto the matching marker, used by id-based death systems)
	write_function(f"{path}/teleport_to_death", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
tp @s @e[type=!player,predicate={ns}:has_same_id,limit=1]
tag @s remove {ns}.to_tp
""")

	# /update_sidebar (compute Red/Blue points + remaining time, then call the macro)
	write_function(f"{path}/update_sidebar", f"""
data modify storage {ns}:main input set value {{blue:0,red:0,minutes:0,seconds:0,optional_zero:""}}
execute store result storage {ns}:main input.blue int 1 run scoreboard players get #blue_points {ns}.data
execute store result storage {ns}:main input.red int 1 run scoreboard players get #red_points {ns}.data

scoreboard players operation #minutes {ns}.data = #remaining_time {ns}.data
scoreboard players operation #minutes {ns}.data /= #60 {ns}.data
scoreboard players operation #seconds {ns}.data = #remaining_time {ns}.data
scoreboard players operation #seconds {ns}.data %= #60 {ns}.data

execute store result storage {ns}:main input.minutes int 1 run scoreboard players get #minutes {ns}.data
execute store result storage {ns}:main input.seconds int 1 run scoreboard players get #seconds {ns}.data
execute if score #seconds {ns}.data matches 0..9 run data modify storage {ns}:main input.optional_zero set value "0"

function {ns}:modes/_common/update_sidebar_macro with storage {ns}:main input
""")

	# /update_sidebar_macro (Red/Blue team sidebar with remaining time)
	write_function(f"{path}/update_sidebar_macro", f"""
$team modify {ns}.temp.sidebar.3 suffix [{{"text":"Time remaining: "}},{{"text":"$(minutes)","color":"yellow"}},{{"text":"m"}},{{"text":"$(optional_zero)$(seconds)","color":"yellow"}},{{"text":"s"}}]
$team modify {ns}.temp.sidebar.2 suffix [{{"text":"Blue Team: ","color":"blue"}},{{"text":"$(blue)","color":"yellow"}}]
$team modify {ns}.temp.sidebar.1 suffix [{{"text":"Red Team: ","color":"red"}},{{"text":"$(red)","color":"yellow"}}]
""")

	# /fireball/get_motion (sample a launch direction by teleporting a marker forward)
	write_function(f"{path}/fireball/get_motion", f"""
data modify entity @s Rotation set from storage {ns}:main Rotation
execute at @s run tp @s ^ ^ ^1000
data modify storage {ns}:main Pos set from entity @s Pos
kill @s
""")

	# /fireball/set_motion (apply the sampled direction as the fireball's motion)
	write_function(f"{path}/fireball/set_motion", f"""
execute store result entity @s Motion[0] double 0.001 run data get storage {ns}:main Pos[0]
execute store result entity @s Motion[1] double 0.001 run data get storage {ns}:main Pos[1]
execute store result entity @s Motion[2] double 0.001 run data get storage {ns}:main Pos[2]
tag @s remove {ns}.new
""")

	# /fireball/aim_and_launch (shared fireblast / rush_the_point launch core: sample the shooter's
	# aim with a marker then apply it as the freshly summoned switch.new fireball's motion)
	write_function(f"{path}/fireball/aim_and_launch", f"""
data modify storage {ns}:main Rotation set from entity @s Rotation
execute positioned 0 0 0 summon marker run function {ns}:modes/_common/fireball/get_motion
execute as @e[type=fireball,tag={ns}.new] run function {ns}:modes/_common/fireball/set_motion
""")

	# /death/inventory_drop (drop the dead player's inventory items one by one)
	write_function(f"{path}/death/inventory_drop", f"""
loot spawn ~ ~ ~ loot {ns}:temp_item
data modify entity @n[type=item,distance=..1,nbt={{Item:{{components:{{"minecraft:custom_data":{{{ns}:{{"temp_item":true}}}}}}}}}}] Item set from entity @s data.Inventory[0]
data remove entity @s data.Inventory[0]

execute if data entity @s data.Inventory[0] run function {path}/death/inventory_drop
""")

	# /death/for_global (shared by capture_the_flag / rush_the_point: clear the dead player's linked
	# copies, drop their mode-filtered inventory, then park the marker off-map. {filter} = that mode's
	# death/inventory_filter function path.)
	write_function(f"{path}/death/for_global", f"""
scoreboard players operation #player_id {ns}.id = @s {ns}.id
clear @a[tag=!detached,predicate={ns}:has_same_id]

$function $(filter)
execute if data entity @s data.Inventory[0] at @s run function {ns}:modes/_common/death/inventory_drop

tag @s add {ns}.processed
tp @s 0 69 0
""")

	# /death/global_effects (shared spectres_game / traitors_game death/for_global core: drop the
	# filtered inventory, roll a 50/50 #success, then clap thunder for everyone)
	write_function(f"{path}/death/global_effects", f"""
execute at @s run function {ns}:modes/_common/death/inventory_drop

scoreboard players set #success {ns}.data 0
execute if predicate {ns}:chance/0.5 run scoreboard players set #success {ns}.data 1

execute as @a[tag=!detached] at @s run playsound entity.lightning_bolt.impact ambient @s ~ ~ ~ 1 0.2
""")

	# /death/keep_combat_items (shared beat_the_kings / spectres_game inventory_filter head: rebuild
	# the saved Inventory from only the golden apples, arrows and TNT the dead player was carrying)
	write_function(f"{path}/death/keep_combat_items", f"""
data modify storage {ns}:main Inventory set value []
data modify storage {ns}:main Inventory append from entity @s data.Inventory[{{id:"minecraft:golden_apple"}}]
data modify storage {ns}:main Inventory append from entity @s data.Inventory[{{id:"minecraft:arrow"}}]
data modify storage {ns}:main Inventory append from entity @s data.Inventory[{{id:"minecraft:tnt"}}]
""")

	# /process_end/winner_by_points (shared end-of-game block for point-based modes: tag the
	# highest-switch.temp.points player(s) as the winner, reward + announce. All lines self-guard on
	# #process_end==1, so modes call this unconditionally inside their /process_end.)
	write_function(f"{path}/process_end/winner_by_points", f"""
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.winner
execute if score #process_end {ns}.data matches 1 run scoreboard players set #max {ns}.data 0
execute if score #process_end {ns}.data matches 1 run scoreboard players operation #max {ns}.data > @a[tag=!detached] {ns}.temp.points
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] if score @s {ns}.temp.points = #max {ns}.data run tag @s add {ns}.winner
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached,tag={ns}.winner] at @s run function {ns}:engine/add_win
function {ns}:translations/common/process_end_winner_points
execute if score #process_end {ns}.data matches 1 run tag @a remove {ns}.winner
""")

	# /process_end/last_survivor (shared full process_end for last-man-standing adventure modes:
	# reward the lone survivor, announce, spectate everyone, run the mode's own death, then loop to
	# restart. The per-mode death function is passed as the {death:"..."} macro argument.)
	write_function(f"{path}/process_end/last_survivor", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 as @a[tag=!detached,gamemode=adventure] at @s run function {ns}:engine/add_win
function {ns}:translations/common/process_end_winner_adventure
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
$execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function $(death)
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game

execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /process_end/spectate_only (process_end for modes that reward the winner elsewhere, e.g. in
	# detect_end: just spectate everyone, rate the game, then loop to restart.)
	write_function(f"{path}/process_end/spectate_only", f"""
scoreboard players add #process_end {ns}.data 1
execute if score #process_end {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game
execute if score #process_end {ns}.data matches 200 run function {ns}:engine/restart
""")

	# /process_end/winner_by_health (shared core for survival last-standing modes: reward the lone
	# survivor + show their health, run the mode's own death, then rate. The caller adds its own
	# restart tail (and any extra logic). The per-mode death function is the {death:"..."} macro arg.)
	write_function(f"{path}/process_end/winner_by_health", f"""
scoreboard players add #process_end {ns}.data 1

execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 store result score #health {ns}.data run data get entity @r[gamemode=survival] Health
execute if score #process_end {ns}.data matches 1 if score #remaining_players {ns}.data matches 1 as @a[tag=!detached,gamemode=survival] at @s run function {ns}:engine/add_win
function {ns}:translations/common/process_end_winner_health
$execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function $(death)
execute if score #process_end {ns}.data matches 1 as @a[tag=!detached] run function {ns}:player/trigger/rating/print_current_game
""")

	# /flag/release_holders (shared by capture_the_flag / rush_the_flag flag_drop: kill whoever holds
	# the flag matching @s's color and strip their has_*_flag tag)
	write_function(f"{path}/flag/release_holders", f"""
execute if entity @s[tag={ns}.blue_flag] run kill @a[tag={ns}.has_blue_flag]
execute if entity @s[tag={ns}.red_flag] run kill @a[tag={ns}.has_red_flag]
execute if entity @s[tag={ns}.blue_flag] run tag @a[tag={ns}.has_blue_flag] remove {ns}.has_blue_flag
execute if entity @s[tag={ns}.red_flag] run tag @a[tag={ns}.has_red_flag] remove {ns}.has_red_flag
""")

	# /flag/score_fireworks (shared by capture_the_flag / rush_the_flag score_point: scoring
	# advancement, blast sound, a colored firework, and the point increment for the scoring team)
	write_function(f"{path}/flag/score_fireworks", f"""
execute unless score #test_mode {ns}.data matches 1 if entity @s[tag={ns}.blue_flag] run advancement grant @p[tag={ns}.has_blue_flag] only {ns}:visible/33
execute unless score #test_mode {ns}.data matches 1 if entity @s[tag={ns}.red_flag] run advancement grant @p[tag={ns}.has_red_flag] only {ns}:visible/33
execute as @a[tag=!detached] at @s run playsound entity.firework_rocket.blast ambient @s

execute if entity @s[tag={ns}.blue_flag] run summon firework_rocket ~ ~ ~ {{LifeTime:0,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:firework_explosion":{{"shape":"burst","has_trail":true,"has_flicker":true,"colors":[16711680],"fade_colors":[16711680]}}}}}}}}
execute if entity @s[tag={ns}.red_flag] run summon firework_rocket ~ ~ ~ {{LifeTime:0,FireworksItem:{{id:"minecraft:firework_rocket",count:1,components:{{"minecraft:firework_explosion":{{"shape":"burst","has_trail":true,"has_flicker":true,"colors":[255],"fade_colors":[255]}}}}}}}}

# Add point
execute if entity @s[tag={ns}.blue_flag] run scoreboard players add #red_points {ns}.data 1
execute if entity @s[tag={ns}.red_flag] run scoreboard players add #blue_points {ns}.data 1
""")

	# /flag/sync_motion (shared capture_the_flag / rush_the_flag flag_tick block: while carried, copy the
	# holder's Motion onto the flag and round-trip its Rotation[0] through switch:main)
	write_function(f"{path}/flag/sync_motion", f"""
execute if entity @s[tag=!{ns}.free,tag={ns}.blue_flag] on vehicle run data modify entity @s Motion set from entity @p[tag={ns}.has_blue_flag] Motion
execute if entity @s[tag=!{ns}.free,tag={ns}.red_flag] on vehicle run data modify entity @s Motion set from entity @p[tag={ns}.has_red_flag] Motion
execute on vehicle run data modify storage {ns}:main Rotation set from entity @s Rotation[0]
data modify entity @s Rotation[0] set from storage {ns}:main Rotation
""")

	# /pvp_arena/kit is no longer a function: castagne and pvpswap build their loadout from
	# pvp_arena_kit() above, so the player's layout resolves the whole kit (fishing rod
	# included) in one pass instead of two functions fighting over the same slots.

	# /pvp_arena/combat_tick (shared castagne / pvpswap tick body: classic-death detection, glow when
	# isolated, and the kill-streak advancement with its cooldown bookkeeping)
	write_function(f"{path}/pvp_arena/combat_tick", f"""
## Death system
function {ns}:utils/on_death_run_function {{function:"{ns}:utils/classic_death"}}

# Glowing
execute as @a[tag=!detached,gamemode=survival] at @s unless entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect give @s glowing 2 255 true
execute as @a[tag=!detached,gamemode=survival] at @s if entity @a[tag=!detached,distance=0.001..25,gamemode=survival] run effect clear @s glowing

# Advancement
execute unless score #test_mode {ns}.data matches 1 run advancement grant @a[tag=!detached,scores={{{ns}.temp.kill=1..,{ns}.temp.cooldown_kill=1..}}] only {ns}:visible/9
scoreboard players set @a[tag=!detached,scores={{{ns}.temp.kill=1..}}] {ns}.temp.cooldown_kill 200
scoreboard players remove @a[tag=!detached,scores={{{ns}.temp.kill=1..}}] {ns}.temp.kill 1
scoreboard players remove @a[tag=!detached,scores={{{ns}.temp.cooldown_kill=1..}}] {ns}.temp.cooldown_kill 1
""")

	# /pvp_arena/start_common (shared castagne / pvpswap /start middle: buff effects, dynamic time, then
	# arm the spreadplayers flag; callers add their own gamemode/effects before and choose_map_for after)
	write_function(f"{path}/pvp_arena/start_common", f"""
effect give @a[tag=!detached] saturation 10 255 true
effect give @a[tag=!detached] resistance 10 255 true
effect give @a[tag=!detached] regeneration 10 255 true
function {ns}:utils/set_dynamic_time

## Téléportation des joueurs
scoreboard players set #do_spreadplayers {ns}.data 1
""")

	# /standard_combat_rules (mob griefing on, hidden death messages, no natural regen, kept inventory;
	# shared by creeper_apocalypse / spectres_game / traitors_game)
	write_function(f"{path}/standard_combat_rules", f"""
execute in {ns}:game run gamerule minecraft:mob_griefing true
execute in {ns}:game run gamerule minecraft:show_death_messages false
execute in {ns}:game run gamerule minecraft:natural_health_regeneration false
execute in {ns}:game run gamerule minecraft:keep_inventory true
""")

	# /detect_2team_state (shared red/blue "who's left standing" check for the 2-team elimination modes
	# layers_2_teams / sheepwars: #game_state = 1 red wins, 2 blue wins, 3 nobody left; ends the timer)
	write_function(f"{path}/detect_2team_state", f"""
# On regarde l'état de la partie
scoreboard players set #game_state {ns}.data 0
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.red] unless entity @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.red] run scoreboard players add #game_state {ns}.data 1
execute if entity @a[tag=!detached,gamemode=!spectator,team={ns}.temp.blue] unless entity @a[tag=!detached,gamemode=!spectator,team=!{ns}.temp.blue] run scoreboard players add #game_state {ns}.data 2
execute unless entity @a[tag=!detached,gamemode=!spectator] run scoreboard players add #game_state {ns}.data 3

# 1 = Victoire Rouge
# 2 = Victoire Bleue
# 3 = Plus personne

# Cas de fin de partie
execute if score #game_state {ns}.data matches 1..3 run scoreboard players set #remaining_time {ns}.data 0
""")

	# /setup_teams_red_blue (shared Red/Blue team creation for the 2-team modes layers_2_teams / sheepwars:
	# create both teams, friendly fire on, hide enemy nametags, then reset the role counter)
	write_function(f"{path}/setup_teams_red_blue", f"""
team add {ns}.temp.red {{"text":"[Red]","color":"red"}}
team add {ns}.temp.blue {{"text":"[Blue]","color":"blue"}}
team modify {ns}.temp.red color red
team modify {ns}.temp.blue color blue
team modify {ns}.temp.red friendlyFire true
team modify {ns}.temp.blue friendlyFire true
team modify {ns}.temp.red nametagVisibility hideForOtherTeams
team modify {ns}.temp.blue nametagVisibility hideForOtherTeams
scoreboard players set #next_role {ns}.data 0
""")

	# /no_pvp_start (shared pitch_creep / warden_escape /start head: no-pvp team, 1 life, buff effects, day)
	write_function(f"{path}/no_pvp_start", f"""
team join {ns}.no_pvp @a[tag=!detached]
scoreboard players set @a[tag=!detached] {ns}.alive 1
effect give @a[tag=!detached] saturation infinite 255 true
effect give @a[tag=!detached] regeneration 5 255 true
time set 18000
""")

	# /remove_movement_objectives (shared fish_fight / pitchout /stop cleanup of the run-tracking objectives)
	write_function(f"{path}/remove_movement_objectives", f"""
scoreboard objectives remove {ns}.temp.damages
scoreboard objectives remove {ns}.temp.cooldown
scoreboard objectives remove {ns}.temp.old_x
scoreboard objectives remove {ns}.temp.old_z
scoreboard objectives remove {ns}.temp.blocks_run
""")

	# /assign_random_roles (macro: shared gay_shooter / panic_chase role kickoff — reset the counters then
	# hand out roles + items in random order. $(mode) is the caller's modes/<mode> function path.)
	write_function(f"{path}/assign_random_roles", f"""
scoreboard players set #next_role {ns}.data 0
scoreboard players set #next_player_id {ns}.data 0
$execute as @a[tag=!detached,sort=random] at @s run function $(mode)/roles
$execute as @a[tag=!detached] at @s run function $(mode)/give_items
""")

	# /sidebar_setup (shared Blue/Red sidebar rows + the fixed §-fakeplayer ordering, used by the
	# Red-vs-Blue point modes; callers set their own sidebar.5 "Goal" and sidebar.3 "Time" suffixes)
	write_function(f"{path}/sidebar_setup", f"""
team modify {ns}.temp.sidebar.2 suffix [{{"text":"Blue Team: ","color":"blue"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.1 suffix [{{"text":"Red Team: ","color":"red"}},{{"text":"0","color":"yellow"}}]
team modify {ns}.temp.sidebar.2 color blue
team modify {ns}.temp.sidebar.1 color red
team join {ns}.temp.sidebar.5 §3
team join {ns}.temp.sidebar.3 §5
team join {ns}.temp.sidebar.2 §2
team join {ns}.temp.sidebar.1 §1
scoreboard players set §5 {ns}.temp.sidebar 5
scoreboard players set §r {ns}.temp.sidebar 4
scoreboard players set §3 {ns}.temp.sidebar 3
scoreboard players set §2 {ns}.temp.sidebar 2
scoreboard players set §1 {ns}.temp.sidebar 1
scoreboard players display numberformat §5 {ns}.temp.sidebar blank
scoreboard players display numberformat §r {ns}.temp.sidebar blank
scoreboard players display numberformat §3 {ns}.temp.sidebar blank
scoreboard players display numberformat §2 {ns}.temp.sidebar blank
scoreboard players display numberformat §1 {ns}.temp.sidebar blank
""")

