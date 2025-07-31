
#> switch:modes/laser_game/shooted_player_blue
#
# @executed	as @e[tag=...,scores={switch.alive=10}] & at @s
#
# @within	switch:modes/laser_game/shoot [ as @e[tag=...,scores={switch.alive=10}] & at @s ]
#

function switch:modes/laser_game/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #red_points switch.data 10

