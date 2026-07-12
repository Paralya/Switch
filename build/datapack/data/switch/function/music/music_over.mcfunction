
#> switch:music/music_over
#
# @within	???
#

# If the loop is enabled (ex: practice mode), restart the same song from the beginning
execute if score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.progress 1

# Else, stop the music
execute unless score @s switch.music.loop_state matches 1.. run function switch:music/stop

