
#> switch:utils/classic_death
#
# @executed	as @a[sort=random] & at @s
#
# @within	string in switch:modes/_common/pvp_arena/combat_tick
#			switch:modes/_coupdetat/calls/joined
#			string in switch:modes/_coupdetat/tick
#			switch:modes/beat_the_kings/death/player
#			switch:modes/capture_the_flag/death/player
#			switch:modes/castagne/calls/joined
#			switch:modes/cigogne/calls/joined
#			string in switch:modes/cigogne/tick
#			switch:modes/creeper_apocalypse/death
#			switch:modes/fireblast/death
#			switch:modes/layers_2_teams/joined
#			string in switch:modes/layers_2_teams/tick
#			switch:modes/layers_4_teams/joined
#			string in switch:modes/layers_4_teams/tick
#			switch:modes/minigolf/calls/joined
#			switch:modes/murder_mystery/calls/joined
#			string in switch:modes/murder_mystery/tick
#			switch:modes/panic_chase/calls/joined
#			switch:modes/panic_chase/process_end [ as @a[tag=!detached,sort=random] ]
#			string in switch:modes/panic_chase/tick
#			switch:modes/pillars_of_fortune/calls/joined
#			string in switch:modes/pillars_of_fortune/tick
#			switch:modes/pitch_creep/death
#			switch:modes/protect_the_king/joined
#			string in switch:modes/protect_the_king/tick
#			switch:modes/pvpswap/calls/joined
#			switch:modes/pvpswap/process_end [ as @a[tag=!detached] ]
#			switch:modes/replicate_the_build/death
#			switch:modes/sheepwars/joined
#			string in switch:modes/sheepwars/tick
#			switch:modes/shoot_da_sheep/calls/joined
#			string in switch:modes/shoot_da_sheep/tick
#			switch:modes/spectres_game/death/player
#			switch:modes/thunder_spear/process_end [ as @a[tag=!detached] ]
#			switch:modes/warden_escape/death
#

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

