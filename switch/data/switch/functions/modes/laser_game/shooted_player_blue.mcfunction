
function switch:modes/laser_game/shooted_both

execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #red_points switch.data 10
execute unless score @s switch.temp.shield matches 1.. run function switch:modes/laser_game/update_sidebar/red_points/

