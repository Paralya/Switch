
scoreboard players add #rush_the_point_seconds switch.data 1
function switch:modes/rush_the_point/second_common
execute if score #remaining_time switch.data matches 1.. run function switch:modes/rush_the_point/xp_bar

