
#> switch:modes/traitors_game/death/process
#
# @executed	as @e[type=marker,tag=switch.player_dead]
#
# @within	switch:modes/traitors_game/tick [ as @e[type=marker,tag=switch.player_dead] ]
#

scoreboard players add @s switch.temp.cooldown 1

execute if score @s switch.temp.cooldown matches 1 run function switch:modes/traitors_game/death/for_detective
execute if score @s switch.temp.cooldown matches 160 run function switch:modes/traitors_game/death/for_global

