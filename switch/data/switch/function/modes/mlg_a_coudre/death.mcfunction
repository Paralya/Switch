
execute if score @s switch.temp.lives matches 1.. run scoreboard players remove @s switch.temp.lives 1
function switch:translations/modes_mlg_a_coudre_death
execute if score @s switch.temp.lives matches 0 run scoreboard players reset @s switch.temp.lives

gamemode spectator @s
execute at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
effect clear @s
clear @s

