
function switch:translations/modes_de_a_coudre_death

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s

