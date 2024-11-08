
#> switch:modes/gay_shooter/death
#
# @within	switch:modes/gay_shooter/joined
#			switch:modes/gay_shooter/process_end
#

execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
gamemode spectator @s[team=!switch.temp.gays]
effect clear @s
clear @s

effect give @s[team=switch.temp.gays] saturation infinite 255 true

