
#> switch:modes/fish_fight/death
#
# @within	switch:modes/fish_fight/joined
#			switch:modes/fish_fight/tick [ as @a[tag=!detached,gamemode=survival,scores={switch.temp.deathCooldown=60..}] ]
#			switch:modes/fish_fight/tick [ as @a[scores={switch.alive=1..},predicate=switch:in_water,sort=random] ]
#

function switch:translations/modes_fish_fight_death

scoreboard players remove @s switch.alive 1
execute if entity @s[scores={switch.alive=1..}] run function switch:modes/fish_fight/teams_tp/tp_give

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s


scoreboard players set @s switch.temp.deathCooldown 0

