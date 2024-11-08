
#> switch:modes/laser_game/shooted_player_blue
#
# @within	switch:modes/laser_game/shoot
#

function switch:modes/laser_game/shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #red_points switch.data 10

