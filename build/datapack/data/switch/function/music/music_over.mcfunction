
#> switch:music/music_over
#
# @within	switch:music/ticks/at_the_speed_of_light
#			switch:music/ticks/blank
#			switch:music/ticks/dance_of_the_violins
#			switch:music/ticks/fingerdash
#			switch:music/ticks/hope
#			switch:music/ticks/invincible
#			switch:music/ticks/ludicrous_speed
#			switch:music/ticks/main_theme
#			switch:music/ticks/mayday
#			switch:music/ticks/monody
#			switch:music/ticks/nekozilla
#			switch:music/ticks/never_be_alone
#			switch:music/ticks/never_gonna_give_you_up
#			switch:music/ticks/overworld_day
#			switch:music/ticks/stay_inside_me
#			switch:music/ticks/stereo_madness
#			switch:music/ticks/the_maze_of_mayonnaise
#			switch:music/ticks/unravel
#

execute unless score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.current -1
execute unless score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.progress 0

