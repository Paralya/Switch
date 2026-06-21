
# ruff: noqa: E501
# Imports
import stouputils as stp
from stewbeet import write_function

from .translations import write_translations


@stp.measure_time(message="Generated utils files")
def main() -> None:
	path: str = "switch:utils"
	write_translations()

	# /choose_map_for
	write_function(f"{path}/choose_map_for", """
## Vérification de la liste des maps
# Détection du nombre restant de maps à charger
scoreboard players set #mc switch.data 0
$execute store result score #mc switch.data run data get storage switch:maps choose_from.$(id)

# Si il n'y a plus de maps à charger, ajouter les maps à la liste des maps à charger
$execute if score #mc switch.data matches 0 run data modify storage switch:maps choose_from.$(id) set value $(maps)

## Chargement de la map
# Passage en paramètre de la liste des maps à charger
$data modify storage switch:temp maps_to_choose set from storage switch:maps choose_from.$(id)

# Fonction de chargement de la map
function switch:maps/load

## Suppression de la map chargée de la liste des maps à charger
# Passage en paramètre de la liste des maps à charger
$data modify storage switch:main copy set from storage switch:maps choose_from.$(id)

# Suppression de la map chargée de la liste des maps à charger
function switch:maps/storage_map_list/remove_from_storage

# Application de la nouvelle liste des maps à charger
$data modify storage switch:maps choose_from.$(id) set from storage switch:main new
""")

	# /classic_death
	write_function(f"{path}/classic_death", """
# If just died, teleport to the death pos, else teleport back to the map
scoreboard players set #success switch.data 0
execute if score @s switch.last_death matches ..2 if score @s switch.reconnect = #score switch.reconnect run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 run function switch:utils/death_tp
execute unless score #success switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~

# Clear & spectator
attribute @s waypoint_transmit_range base set 0
gamemode spectator @s
effect clear @s
clear @s
""")

	# /create_stats_stuff
	write_function(f"{path}/create_stats_stuff", """
# Create scoreboard objectives
$scoreboard objectives add switch.stats.played.$(id) dummy
$scoreboard objectives add switch.stats.wins.$(id) dummy

# Create storages if not defined
$execute unless data storage switch:stats all.modes.$(id) run data modify storage switch:stats all.modes.$(id) set value {total_games:0,played:[],wins:[],played_win_ratio:[]}
$execute unless data storage switch:ratings all[{id:"$(id)"}] run data modify storage switch:ratings all append value {id:"$(id)",name_fr:"",points:0,int:0,digits:0,players:[]}
$data modify storage switch:ratings all[{id:"$(id)"}].name_fr set value "$(name_fr)"
$data modify storage switch:ratings all[{id:"$(id)"}].name_en set value "$(name_en)"
$data modify storage switch:ratings all[{id:"$(id)"}].index set value $(index)
$data modify storage switch:ratings all[{id:"$(id)"}].index_hundred set value $(index)00
""")

	# /death_tp
	write_function(f"{path}/death_tp", """
data modify storage switch:temp input.x set from entity @s LastDeathLocation.pos[0]
data modify storage switch:temp input.y set from entity @s LastDeathLocation.pos[1]
data modify storage switch:temp input.z set from entity @s LastDeathLocation.pos[2]
data modify storage switch:temp input.dimension set from entity @s LastDeathLocation.dimension
function switch:utils/death_tp_2 with storage switch:temp input
""")

	# /death_tp_2
	write_function(f"{path}/death_tp_2", """
$execute in $(dimension) run tp @s $(x) $(y) $(z)
""")

	# /get_random/macro
	write_function(f"{path}/get_random/macro", """
$execute store result score #random switch.data run random value 0..$(max)
""")

	# /get_random/main
	write_function(f"{path}/get_random/main", """
data modify storage switch:main temp set value {max:0}
scoreboard players operation #temp switch.data = #modulo_rand switch.data
scoreboard players remove #temp switch.data 1
execute if score #temp switch.data matches ..-1 run return fail
execute store result storage switch:main temp.max int 1 run scoreboard players get #temp switch.data
function switch:utils/get_random/macro with storage switch:main temp
""")

	# /lag/disable
	write_function(f"{path}/lag/disable", """
kill @e[tag=switch.lag_maker]
schedule clear switch:utils/lag/enable
""")

	# /lag/enable
	write_function(f"{path}/lag/enable", """
# Kill previous
kill @e[tag=switch.lag_maker]

# Summon new
execute as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=2] as @e[limit=3] run summon zombie 0 10 0 {Tags:["switch.lag_maker"],DeathLootTable:"none"}

# Recall
schedule function switch:utils/lag/enable 1t
""")

	# /on_death_run_function
	write_function(f"{path}/on_death_run_function", """
$execute as @a[tag=!detached,predicate=switch:is_at_spawn] run function $(function)
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
""")

	# /reset_players
	write_function(f"{path}/reset_players", """
# Attributes
execute as @a[tag=!detached] run function switch:utils/reset_attributes

# Gamemode
execute unless score #set_spec switch.data matches 1 run gamemode adventure @a[tag=!detached]
execute if score #set_spec switch.data matches 1 run gamemode spectator @a[tag=!detached]
scoreboard players reset #set_spec switch.data

# Clear inventory (if /disable, clear only players that doesn't have convention.debug tag)
execute unless score #disable switch.data matches 1 run clear @a[tag=!detached]
execute if score #disable switch.data matches 1 run clear @a[tag=!detached,tag=!convention.debug]

# Other stuff
team empty switch.no_pvp
execute in switch:game run spawnpoint @a 0 70 0
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
	write_function(f"{path}/set_dynamic_time", """
execute store result score #random switch.data run random value 0..2
execute if score #random switch.data matches 0 run time set 0
execute if score #random switch.data matches 1 run time set 6000
execute if score #random switch.data matches 2 run time set 12000
""")

	# /sqrt
	write_function(f"{path}/sqrt", """
# Initialize values
scoreboard players set #output switch.data 0
scoreboard players set #increment switch.data 32768
# Execute recursive function
function switch:utils/sqrt_loop
""")

	# /sqrt_loop
	write_function(f"{path}/sqrt_loop", """
# Compute test
scoreboard players operation #test switch.data = #output switch.data
scoreboard players operation #test switch.data += #increment switch.data
scoreboard players operation #test switch.data *= #test switch.data
# Compare values
execute if score #test switch.data <= #input switch.data run scoreboard players operation #output switch.data += #increment switch.data
# Execute recursive function
scoreboard players operation #increment switch.data /= #2 switch.data
execute if score #increment switch.data matches 1.. run function switch:utils/sqrt_loop
""")

	# /who_voted
	write_function(f"{path}/who_voted", """
function switch:utils/translations/who_voted
""")
