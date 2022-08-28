
playsound entity.player.hurt player @s
execute as @a[tag=switch.temp] at @s run playsound entity.arrow.hit_player player @s
function switch:modes/laser_game/shooted_both

execute unless score @s switch.temp.shield matches 1.. run scoreboard players add #blue_points switch.data 10
execute unless score @s switch.temp.shield matches 1.. run function switch:modes/laser_game/update_sidebar/blue_points

