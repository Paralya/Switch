
#> switch:modes/infected/death/early_respawn
#
# @within	switch:modes/infected/joined
#			switch:modes/infected/start
#

team join switch.temp.human @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s
effect give @s hunger 12 255 true

