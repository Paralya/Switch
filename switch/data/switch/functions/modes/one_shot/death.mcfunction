
function switch:translations/modes_one_shot_death

#scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] run function switch:modes/one_shot/teams_tp/tp_give

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @e[type=marker,tag=switch.selected_map,limit=1] run tp @s ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s

