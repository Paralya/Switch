
#> switch:utils/classic_death
#
# @within	switch:modes/beat_the_kings/death/player
#			switch:modes/capture_the_flag/death/player
#			switch:modes/castagne/death
#			switch:modes/cigogne/death
#			switch:modes/creeper_apocalypse/death
#			switch:modes/fireblast/death
#			switch:modes/layers_2_teams/death
#			switch:modes/layers_4_teams/death
#			switch:modes/minigolf/joined
#			switch:modes/murder_mystery/death
#			switch:modes/panic_chase/death
#			switch:modes/pillars_of_fortune/death
#			switch:modes/pitch_creep/death
#			switch:modes/protect_the_king/death
#			switch:modes/pvpswap/death
#			switch:modes/replicate_the_build/death
#			switch:modes/rush_the_point/death/player
#			switch:modes/sheepwars/death
#			switch:modes/shoot_da_sheep/joined
#			switch:modes/spectres_game/death/player
#			switch:modes/thunder_spear/death
#			switch:modes/warden_escape/death
#

# If just died, teleport to the death pos, else teleport back to the map
scoreboard players set #success switch.data 0
execute if score @s switch.last_death matches ..2 if score @s switch.reconnect = #score switch.reconnect run scoreboard players set #success switch.data 1
execute if score #success switch.data matches 1 run function switch:utils/death_tp
execute unless score #success switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~

# Clear & spectator
gamemode spectator @s
effect clear @s
clear @s

