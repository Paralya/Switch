
#> switch:modes/laser_game/shooted_player_red
#
# @executed	anchored eyes & positioned ^ ^ ^
#
# @within	switch:modes/laser_game/shoot_hit_entity
#

function switch:modes/laser_game/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #blue_points switch.data 10

