
#> switch:utils/to_spectator
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/_common/process_end/winner_by_health [ as @a[tag=!detached] ]
#			switch:modes/creeper_apocalypse/process_end [ as @a[tag=!detached] ]
#			switch:utils/classic_death
#

attribute @s waypoint_transmit_range base set 0
gamemode spectator @s
effect clear @s
function switch:player/layout/deactivate
clear @s

