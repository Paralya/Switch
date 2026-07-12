
#> switch:player/practice/music_stop
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/toggle
#			switch:player/practice/disable
#

# Stop the loop, and the music itself only if it's still the practice song (a song chosen in the browser keeps playing)
scoreboard players set @s switch.music.loop_state 0
execute if score @s switch.music.current matches 111 run function switch:music/stop

