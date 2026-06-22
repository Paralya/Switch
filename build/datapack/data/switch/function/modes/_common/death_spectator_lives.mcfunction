
#> switch:modes/_common/death_spectator_lives
#
# @within	switch:modes/fish_fight/death
#			switch:modes/pitchout/death
#

execute unless score @s switch.alive matches 1.. run scoreboard players add @s switch.stats.deaths 1
execute unless score @s switch.alive matches 1.. run gamemode spectator @s
execute unless score @s switch.alive matches 1.. at @n[type=marker,tag=switch.selected_map] run tp @s ~ ~ ~ ~ ~
execute unless score @s switch.alive matches 1.. run effect clear @s
execute unless score @s switch.alive matches 1.. run clear @s

