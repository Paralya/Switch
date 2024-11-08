
#> switch:modes/laser_game/shooted_both
#
# @within	switch:modes/laser_game/shooted_player_blue
#			switch:modes/laser_game/shooted_player_red
#

playsound entity.player.hurt player @s
execute as @a[tag=!detached,tag=switch.temp] at @s run playsound entity.arrow.hit_player player @s
scoreboard players add @a[tag=!detached,tag=switch.temp] switch.temp.individual_points 10

execute if score @s switch.temp.shield matches 1.. run scoreboard players remove @s switch.temp.shield 1

execute unless score @s switch.temp.shield matches 1.. run tag @s add global.ignore
function switch:translations/modes_laser_game_shooted_both
execute unless score @s switch.temp.shield matches 1.. run scoreboard players set @s switch.temp.dead_cooldown -100

