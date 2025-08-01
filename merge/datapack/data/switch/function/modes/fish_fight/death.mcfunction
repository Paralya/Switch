
function switch:translations/modes_fish_fight_death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] run function switch:modes/fish_fight/teams_tp/tp_give


execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s



scoreboard players set @s switch.temp.deathCooldown 0