
#> switch:utils/classic_death
#
# @within	switch:modes/_coupdetat/calls/joined
#			switch:modes/beat_the_kings/death/player
#			switch:modes/capture_the_flag/death/player
#			switch:modes/castagne/calls/joined
#			switch:modes/cigogne/calls/joined
#			switch:modes/creeper_apocalypse/death
#			switch:modes/fireblast/death
#			switch:modes/layers_2_teams/joined
#			switch:modes/layers_4_teams/joined
#			switch:modes/minigolf/calls/joined
#			switch:modes/murder_mystery/calls/joined
#			switch:modes/panic_chase/calls/joined
#			switch:modes/pillars_of_fortune/calls/joined
#			switch:modes/pitch_creep/death
#			switch:modes/protect_the_king/joined
#			switch:modes/pvpswap/calls/joined
#			switch:modes/pvpswap/process_end [ as @a[tag=!detached] ]
#			switch:modes/replicate_the_build/death
#			switch:modes/sheepwars/joined
#			switch:modes/shoot_da_sheep/calls/joined
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

