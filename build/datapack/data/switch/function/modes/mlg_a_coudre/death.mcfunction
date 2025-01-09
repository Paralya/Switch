
#> switch:modes/mlg_a_coudre/death
#
# @within	switch:modes/mlg_a_coudre/joined
#			switch:modes/mlg_a_coudre/process_end
#

execute if score @s switch.temp.lives matches 1.. run scoreboard players remove @s switch.temp.lives 1
function switch:translations/modes_mlg_a_coudre_death
execute if score @s switch.temp.lives matches 0 run scoreboard players reset @s switch.temp.lives

gamemode spectator @s
execute unless score #process_end switch.data matches 1 at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~
effect clear @s
clear @s

