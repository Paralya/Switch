
#> switch:modes/de_a_coudre/death
#
# @within	switch:modes/de_a_coudre/joined
#			switch:modes/de_a_coudre/process_end
#

function switch:translations/modes_de_a_coudre_death

gamemode spectator @s
execute at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s

