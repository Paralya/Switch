
#> switch:music/player_tick
#
# @within	switch:player/tick
#

execute if score @s switch.music.current matches 100 run function switch:music/ticks/the_maze_of_mayonnaise
execute if score @s switch.music.current matches 101 run function switch:music/ticks/invincible
execute if score @s switch.music.current matches 102 run function switch:music/ticks/nekozilla
execute if score @s switch.music.current matches 103 run function switch:music/ticks/at_the_speed_of_light
execute if score @s switch.music.current matches 104 run function switch:music/ticks/blank
execute if score @s switch.music.current matches 105 run function switch:music/ticks/dance_of_the_violins
execute if score @s switch.music.current matches 106 run function switch:music/ticks/ludicrous_speed
execute if score @s switch.music.current matches 107 run function switch:music/ticks/stereo_madness
execute if score @s switch.music.current matches 108 run function switch:music/ticks/fingerdash
execute if score @s switch.music.current matches 109 run function switch:music/ticks/stay_inside_me
execute if score @s switch.music.current matches 110 run function switch:music/ticks/never_gonna_give_you_up
execute if score @s switch.music.current matches 111 run function switch:music/ticks/overworld_day
execute if score @s switch.music.current matches 112 run function switch:music/ticks/main_theme
execute if score @s switch.music.current matches 113 run function switch:music/ticks/mayday
execute if score @s switch.music.current matches 114 run function switch:music/ticks/monody
execute if score @s switch.music.current matches 115 run function switch:music/ticks/never_be_alone
execute if score @s switch.music.current matches 116 run function switch:music/ticks/hope
execute if score @s switch.music.current matches 117 run function switch:music/ticks/unravel
execute if score @s switch.music.current matches -1 run function switch:music/next_music

