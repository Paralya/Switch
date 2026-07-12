
#> switch:player/practice/music_stop
#
# @executed	as @a[tag=!...]
#
# @within	switch:engine/start_state [ as @a[tag=!...] ]
#			switch:player/practice/toggle
#

# Stop the loop, and the music itself only if it's still the practice song (a song chosen in the browser keeps playing)
scoreboard players set @s switch.music.loop_state 0
execute if score @s switch.music.current matches 111 run function switch:music/stop

