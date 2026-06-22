
#> switch:modes/_common/process_end/winner_by_points
#
# @within	switch:modes/coin_chaser/process_end
#			switch:modes/feed_fast/process_end
#			switch:modes/shoot_da_sheep/process_end
#			switch:modes/simultaneous_jump/process_end
#			switch:modes/snowball_painter/process_end
#

execute if score #process_end switch.data matches 1 run tag @a remove switch.winner
execute if score #process_end switch.data matches 1 run scoreboard players set #max switch.data 0
execute if score #process_end switch.data matches 1 run scoreboard players operation #max switch.data > @a[tag=!detached] switch.temp.points
execute if score #process_end switch.data matches 1 as @a[tag=!detached] if score @s switch.temp.points = #max switch.data run tag @s add switch.winner
execute if score #process_end switch.data matches 1 as @a[tag=!detached,tag=switch.winner] at @s run function switch:engine/add_win
function switch:translations/common/process_end_winner_points
execute if score #process_end switch.data matches 1 run tag @a remove switch.winner

