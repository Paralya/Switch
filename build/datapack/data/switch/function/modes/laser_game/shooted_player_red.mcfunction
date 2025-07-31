
#> switch:modes/laser_game/shooted_player_red
#
# @executed	as @e[tag=...,scores={switch.alive=11}] & at @s
#
# @within	switch:modes/laser_game/shoot [ as @e[tag=...,scores={switch.alive=11}] & at @s ]
#

function switch:modes/laser_game/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #blue_points switch.data 10

