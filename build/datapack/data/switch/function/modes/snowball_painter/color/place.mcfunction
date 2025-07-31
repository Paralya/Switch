
#> switch:modes/snowball_painter/color/place
#
# @executed	positioned ~1 ~1 ~1
#
# @within	switch:modes/snowball_painter/explode_marker [ positioned ~1 ~1 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~1 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~1 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~0 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~0 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~0 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~-1 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~-1 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~1 ~-1 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~1 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~1 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~1 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~0 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~0 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~0 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~-1 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~-1 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~0 ~-1 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~1 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~1 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~1 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~0 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~0 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~0 ~-1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~-1 ~1 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~-1 ~0 ]
#			switch:modes/snowball_painter/explode_marker [ positioned ~-1 ~-1 ~-1 ]
#

# Depending on the color, place the corresponding block
execute if score #new_color switch.data matches 0 unless block ~ ~ ~ orange_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 0 unless block ~ ~ ~ orange_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 0 unless block ~ ~ ~ orange_wool run setblock ~ ~ ~ orange_wool
execute if score #new_color switch.data matches 1 unless block ~ ~ ~ magenta_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 1 unless block ~ ~ ~ magenta_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 1 unless block ~ ~ ~ magenta_wool run setblock ~ ~ ~ magenta_wool
execute if score #new_color switch.data matches 2 unless block ~ ~ ~ light_blue_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 2 unless block ~ ~ ~ light_blue_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 2 unless block ~ ~ ~ light_blue_wool run setblock ~ ~ ~ light_blue_wool
execute if score #new_color switch.data matches 3 unless block ~ ~ ~ yellow_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 3 unless block ~ ~ ~ yellow_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 3 unless block ~ ~ ~ yellow_wool run setblock ~ ~ ~ yellow_wool
execute if score #new_color switch.data matches 4 unless block ~ ~ ~ lime_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 4 unless block ~ ~ ~ lime_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 4 unless block ~ ~ ~ lime_wool run setblock ~ ~ ~ lime_wool
execute if score #new_color switch.data matches 5 unless block ~ ~ ~ pink_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 5 unless block ~ ~ ~ pink_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 5 unless block ~ ~ ~ pink_wool run setblock ~ ~ ~ pink_wool
execute if score #new_color switch.data matches 6 unless block ~ ~ ~ gray_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 6 unless block ~ ~ ~ gray_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 6 unless block ~ ~ ~ gray_wool run setblock ~ ~ ~ gray_wool
execute if score #new_color switch.data matches 7 unless block ~ ~ ~ light_gray_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 7 unless block ~ ~ ~ light_gray_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 7 unless block ~ ~ ~ light_gray_wool run setblock ~ ~ ~ light_gray_wool
execute if score #new_color switch.data matches 8 unless block ~ ~ ~ cyan_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 8 unless block ~ ~ ~ cyan_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 8 unless block ~ ~ ~ cyan_wool run setblock ~ ~ ~ cyan_wool
execute if score #new_color switch.data matches 9 unless block ~ ~ ~ purple_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 9 unless block ~ ~ ~ purple_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 9 unless block ~ ~ ~ purple_wool run setblock ~ ~ ~ purple_wool
execute if score #new_color switch.data matches 10 unless block ~ ~ ~ blue_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 10 unless block ~ ~ ~ blue_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 10 unless block ~ ~ ~ blue_wool run setblock ~ ~ ~ blue_wool
execute if score #new_color switch.data matches 11 unless block ~ ~ ~ brown_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 11 unless block ~ ~ ~ brown_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 11 unless block ~ ~ ~ brown_wool run setblock ~ ~ ~ brown_wool
execute if score #new_color switch.data matches 12 unless block ~ ~ ~ green_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 12 unless block ~ ~ ~ green_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 12 unless block ~ ~ ~ green_wool run setblock ~ ~ ~ green_wool
execute if score #new_color switch.data matches 13 unless block ~ ~ ~ red_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 13 unless block ~ ~ ~ red_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 13 unless block ~ ~ ~ red_wool run setblock ~ ~ ~ red_wool
execute if score #new_color switch.data matches 14 unless block ~ ~ ~ black_wool run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 14 unless block ~ ~ ~ black_wool run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 14 unless block ~ ~ ~ black_wool run setblock ~ ~ ~ black_wool

execute if score #new_color switch.data matches 15 unless block ~ ~ ~ orange_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 15 unless block ~ ~ ~ orange_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 15 unless block ~ ~ ~ orange_concrete_powder run setblock ~ ~ ~ orange_concrete_powder
execute if score #new_color switch.data matches 16 unless block ~ ~ ~ magenta_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 16 unless block ~ ~ ~ magenta_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 16 unless block ~ ~ ~ magenta_concrete_powder run setblock ~ ~ ~ magenta_concrete_powder
execute if score #new_color switch.data matches 17 unless block ~ ~ ~ light_blue_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 17 unless block ~ ~ ~ light_blue_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 17 unless block ~ ~ ~ light_blue_concrete_powder run setblock ~ ~ ~ light_blue_concrete_powder
execute if score #new_color switch.data matches 18 unless block ~ ~ ~ yellow_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 18 unless block ~ ~ ~ yellow_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 18 unless block ~ ~ ~ yellow_concrete_powder run setblock ~ ~ ~ yellow_concrete_powder
execute if score #new_color switch.data matches 19 unless block ~ ~ ~ lime_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 19 unless block ~ ~ ~ lime_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 19 unless block ~ ~ ~ lime_concrete_powder run setblock ~ ~ ~ lime_concrete_powder
execute if score #new_color switch.data matches 20 unless block ~ ~ ~ pink_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 20 unless block ~ ~ ~ pink_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 20 unless block ~ ~ ~ pink_concrete_powder run setblock ~ ~ ~ pink_concrete_powder
execute if score #new_color switch.data matches 21 unless block ~ ~ ~ gray_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 21 unless block ~ ~ ~ gray_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 21 unless block ~ ~ ~ gray_concrete_powder run setblock ~ ~ ~ gray_concrete_powder
execute if score #new_color switch.data matches 22 unless block ~ ~ ~ light_gray_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 22 unless block ~ ~ ~ light_gray_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 22 unless block ~ ~ ~ light_gray_concrete_powder run setblock ~ ~ ~ light_gray_concrete_powder
execute if score #new_color switch.data matches 23 unless block ~ ~ ~ cyan_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 23 unless block ~ ~ ~ cyan_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 23 unless block ~ ~ ~ cyan_concrete_powder run setblock ~ ~ ~ cyan_concrete_powder
execute if score #new_color switch.data matches 24 unless block ~ ~ ~ purple_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 24 unless block ~ ~ ~ purple_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 24 unless block ~ ~ ~ purple_concrete_powder run setblock ~ ~ ~ purple_concrete_powder
execute if score #new_color switch.data matches 25 unless block ~ ~ ~ blue_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 25 unless block ~ ~ ~ blue_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 25 unless block ~ ~ ~ blue_concrete_powder run setblock ~ ~ ~ blue_concrete_powder
execute if score #new_color switch.data matches 26 unless block ~ ~ ~ brown_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 26 unless block ~ ~ ~ brown_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 26 unless block ~ ~ ~ brown_concrete_powder run setblock ~ ~ ~ brown_concrete_powder
execute if score #new_color switch.data matches 27 unless block ~ ~ ~ green_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 27 unless block ~ ~ ~ green_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 27 unless block ~ ~ ~ green_concrete_powder run setblock ~ ~ ~ green_concrete_powder
execute if score #new_color switch.data matches 28 unless block ~ ~ ~ red_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 28 unless block ~ ~ ~ red_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 28 unless block ~ ~ ~ red_concrete_powder run setblock ~ ~ ~ red_concrete_powder
execute if score #new_color switch.data matches 29 unless block ~ ~ ~ black_concrete_powder run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 29 unless block ~ ~ ~ black_concrete_powder run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 29 unless block ~ ~ ~ black_concrete_powder run setblock ~ ~ ~ black_concrete_powder

execute if score #new_color switch.data matches 30 unless block ~ ~ ~ orange_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 30 unless block ~ ~ ~ orange_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 30 unless block ~ ~ ~ orange_terracotta run setblock ~ ~ ~ orange_terracotta
execute if score #new_color switch.data matches 31 unless block ~ ~ ~ magenta_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 31 unless block ~ ~ ~ magenta_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 31 unless block ~ ~ ~ magenta_terracotta run setblock ~ ~ ~ magenta_terracotta
execute if score #new_color switch.data matches 32 unless block ~ ~ ~ light_blue_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 32 unless block ~ ~ ~ light_blue_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 32 unless block ~ ~ ~ light_blue_terracotta run setblock ~ ~ ~ light_blue_terracotta
execute if score #new_color switch.data matches 33 unless block ~ ~ ~ yellow_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 33 unless block ~ ~ ~ yellow_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 33 unless block ~ ~ ~ yellow_terracotta run setblock ~ ~ ~ yellow_terracotta
execute if score #new_color switch.data matches 34 unless block ~ ~ ~ lime_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 34 unless block ~ ~ ~ lime_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 34 unless block ~ ~ ~ lime_terracotta run setblock ~ ~ ~ lime_terracotta
execute if score #new_color switch.data matches 35 unless block ~ ~ ~ pink_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 35 unless block ~ ~ ~ pink_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 35 unless block ~ ~ ~ pink_terracotta run setblock ~ ~ ~ pink_terracotta
execute if score #new_color switch.data matches 36 unless block ~ ~ ~ gray_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 36 unless block ~ ~ ~ gray_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 36 unless block ~ ~ ~ gray_terracotta run setblock ~ ~ ~ gray_terracotta
execute if score #new_color switch.data matches 37 unless block ~ ~ ~ light_gray_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 37 unless block ~ ~ ~ light_gray_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 37 unless block ~ ~ ~ light_gray_terracotta run setblock ~ ~ ~ light_gray_terracotta
execute if score #new_color switch.data matches 38 unless block ~ ~ ~ cyan_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 38 unless block ~ ~ ~ cyan_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 38 unless block ~ ~ ~ cyan_terracotta run setblock ~ ~ ~ cyan_terracotta
execute if score #new_color switch.data matches 39 unless block ~ ~ ~ purple_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 39 unless block ~ ~ ~ purple_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 39 unless block ~ ~ ~ purple_terracotta run setblock ~ ~ ~ purple_terracotta
execute if score #new_color switch.data matches 40 unless block ~ ~ ~ blue_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 40 unless block ~ ~ ~ blue_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 40 unless block ~ ~ ~ blue_terracotta run setblock ~ ~ ~ blue_terracotta
execute if score #new_color switch.data matches 41 unless block ~ ~ ~ brown_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 41 unless block ~ ~ ~ brown_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 41 unless block ~ ~ ~ brown_terracotta run setblock ~ ~ ~ brown_terracotta
execute if score #new_color switch.data matches 42 unless block ~ ~ ~ green_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 42 unless block ~ ~ ~ green_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 42 unless block ~ ~ ~ green_terracotta run setblock ~ ~ ~ green_terracotta
execute if score #new_color switch.data matches 43 unless block ~ ~ ~ red_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 43 unless block ~ ~ ~ red_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 43 unless block ~ ~ ~ red_terracotta run setblock ~ ~ ~ red_terracotta
execute if score #new_color switch.data matches 44 unless block ~ ~ ~ black_terracotta run scoreboard players add @p[tag=switch.temp] switch.temp.points 1
execute if score #new_color switch.data matches 44 unless block ~ ~ ~ black_terracotta run function switch:modes/snowball_painter/color/remove_point_to_old_color
execute if score #new_color switch.data matches 44 unless block ~ ~ ~ black_terracotta run setblock ~ ~ ~ black_terracotta

