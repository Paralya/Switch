
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import Mem, write_function


@stp.measure_time(message="Generated utils files")
def main() -> None:
	ns: str = Mem.ctx.project_id
	path: str = f"{ns}:utils"

	# /choose_map_for
	write_function(f"{path}/choose_map_for", f"""
## Vérification de la liste des maps
# Si la liste des maps à charger est vide, absente ou corrompue, la ré-initialiser
# (le "[0]" garantit une liste avec au moins un élément, sinon maps/load garderait la map du jeu précédent)
$execute unless data storage {ns}:maps choose_from.$(id)[0] run data modify storage {ns}:maps choose_from.$(id) set value $(maps)

## Chargement de la map
# Passage en paramètre de la liste des maps à charger
$data modify storage {ns}:temp maps_to_choose set from storage {ns}:maps choose_from.$(id)

# Fonction de chargement de la map
function {ns}:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
$data modify storage {ns}:main copy set from storage {ns}:maps choose_from.$(id)

# Suppression de la map chargée de la liste des maps à charger
function {ns}:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
$data modify storage {ns}:maps choose_from.$(id) set from storage {ns}:main new
""")

	# /classic_death
	write_function(f"{path}/classic_death", f"""
# If just died, teleport to the death pos, else teleport back to the map
scoreboard players set #success {ns}.data 0
execute if score @s {ns}.last_death matches ..2 if score @s {ns}.reconnect = #score {ns}.reconnect run scoreboard players set #success {ns}.data 1
execute if score #success {ns}.data matches 1 run function {ns}:utils/death_tp
execute unless score #success {ns}.data matches 1 at @n[type=marker,tag={ns}.selected_map] run tp @s ~ ~ ~ ~ ~

# Clear & spectator
attribute @s waypoint_transmit_range base set 0
gamemode spectator @s
effect clear @s
clear @s
""")

	# /create_stats_stuff
	write_function(f"{path}/create_stats_stuff", f"""
# Create scoreboard objectives
$scoreboard objectives add {ns}.stats.played.$(id) dummy
$scoreboard objectives add {ns}.stats.wins.$(id) dummy

# Create storages if not defined
$execute unless data storage {ns}:stats all.modes.$(id) run data modify storage {ns}:stats all.modes.$(id) set value {{total_games:0,played:[],wins:[],played_win_ratio:[]}}
$execute unless data storage {ns}:ratings all[{{id:"$(id)"}}] run data modify storage {ns}:ratings all append value {{id:"$(id)",name_fr:"",points:0,int:0,digits:0,players:[]}}
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].name_fr set value "$(name_fr)"
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].name_en set value "$(name_en)"
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].index set value $(index)
$data modify storage {ns}:ratings all[{{id:"$(id)"}}].index_hundred set value $(index)00
""")

	# /death_tp
	write_function(f"{path}/death_tp", f"""
data modify storage {ns}:temp input.x set from entity @s LastDeathLocation.pos[0]
data modify storage {ns}:temp input.y set from entity @s LastDeathLocation.pos[1]
data modify storage {ns}:temp input.z set from entity @s LastDeathLocation.pos[2]
data modify storage {ns}:temp input.dimension set from entity @s LastDeathLocation.dimension
function {ns}:utils/death_tp_2 with storage {ns}:temp input
""")

	# /death_tp_2
	write_function(f"{path}/death_tp_2", """
$execute in $(dimension) run tp @s $(x) $(y) $(z)
""")

	# /get_random/macro
	write_function(f"{path}/get_random/macro", f"""
$execute store result score #random {ns}.data run random value 0..$(max)
""")

	# /get_random/main
	write_function(f"{path}/get_random/main", f"""
data modify storage {ns}:main temp set value {{max:0}}
scoreboard players operation #temp {ns}.data = #modulo_rand {ns}.data
scoreboard players remove #temp {ns}.data 1
execute if score #temp {ns}.data matches ..-1 run return fail
execute store result storage {ns}:main temp.max int 1 run scoreboard players get #temp {ns}.data
function {ns}:utils/get_random/macro with storage {ns}:main temp
""")

	# /lag/disable
	write_function(f"{path}/lag/disable", f"""
kill @e[tag={ns}.lag_maker]
schedule clear {ns}:utils/lag/enable
""")

	# /lag/enable
	write_function(f"{path}/lag/enable", f"""
# Kill previous
kill @e[tag={ns}.lag_maker]

# Summon new
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=3] run summon zombie 0 10 0 {{Tags:["{ns}.lag_maker"],DeathLootTable:"none"}}

# Recall
schedule function {ns}:utils/lag/enable 1t
""")

	# /on_death_run_function
	write_function(f"{path}/on_death_run_function", f"""
$execute as @a[tag=!detached,predicate={ns}:is_at_spawn] run function $(function)
""")

	# /reset_attributes
	write_function(f"{path}/reset_attributes", """
attribute @s armor base reset
attribute @s armor_toughness base reset
attribute @s attack_damage base reset
attribute @s attack_knockback base reset
attribute @s attack_speed base reset
attribute @s knockback_resistance base reset
attribute @s luck base reset
attribute @s max_absorption base reset
attribute @s max_health base reset
attribute @s movement_speed base reset
attribute @s scale base reset
attribute @s step_height base reset
attribute @s jump_strength base reset
attribute @s gravity base reset
attribute @s safe_fall_distance base reset
attribute @s fall_damage_multiplier base reset
attribute @s burning_time base reset
attribute @s explosion_knockback_resistance base reset
attribute @s movement_efficiency base reset
attribute @s oxygen_bonus base reset
attribute @s water_movement_efficiency base reset

attribute @s block_interaction_range base reset
attribute @s entity_interaction_range base reset
attribute @s block_break_speed base reset
attribute @s mining_efficiency base reset
attribute @s sneaking_speed base reset
attribute @s submerged_mining_speed base reset
attribute @s sweeping_damage_ratio base reset

# 1.21.6
attribute @s camera_distance base reset
attribute @s waypoint_receive_range base reset
attribute @s waypoint_transmit_range base reset
waypoint modify @s color reset

# 26.2
attribute @s air_drag_modifier base reset
attribute @s below_name_distance base reset
attribute @s bounciness base reset
attribute @s friction_modifier base reset
attribute @s name_tag_distance base reset
""")

	# /reset_gamerules
	write_function(f"{path}/reset_gamerules", """
gamerule minecraft:max_command_forks 2147483647
gamerule minecraft:max_command_sequence_length 2147483647
gamerule minecraft:send_command_feedback true
gamerule minecraft:mob_griefing false
gamerule minecraft:show_death_messages true
gamerule minecraft:natural_health_regeneration true
gamerule minecraft:keep_inventory false
gamerule minecraft:fall_damage true
gamerule minecraft:fire_damage true
gamerule minecraft:drowning_damage true
gamerule minecraft:freeze_damage true
gamerule minecraft:advance_time false
gamerule minecraft:advance_weather false
gamerule minecraft:spawn_mobs false
gamerule minecraft:fire_spread_radius_around_player 0
gamerule minecraft:block_drops true
gamerule minecraft:entity_drops true
gamerule minecraft:mob_drops true
gamerule minecraft:immediate_respawn true
gamerule minecraft:show_advancement_messages true
gamerule minecraft:spawn_wandering_traders false
gamerule minecraft:max_block_modifications 64000
gamerule minecraft:spawn_monsters false
gamerule minecraft:spawn_patrols false
gamerule minecraft:spawn_phantoms false
gamerule minecraft:spawn_wardens false
gamerule minecraft:locator_bar true
gamerule minecraft:pvp true
gamerule minecraft:tnt_explodes true
gamerule minecraft:projectiles_can_break_blocks true
gamerule minecraft:random_tick_speed 3
gamerule minecraft:ender_pearls_vanish_on_death true
""")

	# /reset_players
	write_function(f"{path}/reset_players", f"""
# Attributes
execute as @a[tag=!detached] run function {ns}:utils/reset_attributes

# Gamemode
execute unless score #set_spec {ns}.data matches 1 run gamemode adventure @a[tag=!detached]
execute if score #set_spec {ns}.data matches 1 run gamemode spectator @a[tag=!detached]
scoreboard players reset #set_spec {ns}.data

# Clear inventory (if /disable, clear only players that doesn't have convention.debug tag)
execute unless score #disable {ns}.data matches 1 run clear @a[tag=!detached]
execute if score #disable {ns}.data matches 1 run clear @a[tag=!detached,tag=!convention.debug]

# Other stuff
team empty {ns}.no_pvp
execute in {ns}:game run spawnpoint @a 0 70 0
xp set @a[tag=!detached] 0 levels
xp set @a[tag=!detached] 0 points
effect clear @a[tag=!detached]
team leave @a[tag=!detached]
""")

	# /safe_kill
	write_function(f"{path}/safe_kill", """
tp @s 0 -10000 0
kill @s
""")

	# /safe_kill_macro
	write_function(f"{path}/safe_kill_macro", """
$execute as $(selector) on passengers run ride @s[type=player] dismount
$tp $(selector) 0 -10000 0
$kill $(selector)
""")

	# /set_dynamic_time
	write_function(f"{path}/set_dynamic_time", f"""
execute store result score #random {ns}.data run random value 0..2
execute if score #random {ns}.data matches 0 run time set 0
execute if score #random {ns}.data matches 1 run time set 6000
execute if score #random {ns}.data matches 2 run time set 12000
""")

	# /sqrt
	write_function(f"{path}/sqrt", f"""
# Initialize values
scoreboard players set #output {ns}.data 0
scoreboard players set #increment {ns}.data 32768
# Execute recursive function
function {ns}:utils/sqrt_loop
""")

	# /sqrt_loop
	write_function(f"{path}/sqrt_loop", f"""
# Compute test
scoreboard players operation #test {ns}.data = #output {ns}.data
scoreboard players operation #test {ns}.data += #increment {ns}.data
scoreboard players operation #test {ns}.data *= #test {ns}.data
# Compare values
execute if score #test {ns}.data <= #input {ns}.data run scoreboard players operation #output {ns}.data += #increment {ns}.data
# Execute recursive function
scoreboard players operation #increment {ns}.data /= #2 {ns}.data
execute if score #increment {ns}.data matches 1.. run function {ns}:utils/sqrt_loop
""")

	# /who_voted (admin command: list which players voted for each game)
	write_function(f"{path}/who_voted", f"""
# French
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 1 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-1}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 2 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-2}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 3 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-3}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 4 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-4}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 5 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-5}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 6 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-6}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 7 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-7}}]"}}]
tellraw @s[scores={{{ns}.lang=0}}] [{{"text":"Vote 8 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-8}}]"}}]

# English
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 1 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-1}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 2 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-2}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 3 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-3}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 4 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-4}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 5 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-5}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 6 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-6}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 7 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-7}}]"}}]
tellraw @s[scores={{{ns}.lang=1}}] [{{"text":"Vote 8 ","color":"aqua"}},{{"selector":"@a[scores={{{ns}.trigger.game_vote=-8}}]"}}]
""")

