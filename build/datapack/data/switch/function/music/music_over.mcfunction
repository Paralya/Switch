
#> switch:music/music_over
#
# @within	???
#

execute unless score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.current -1
execute unless score @s switch.music.loop_state matches 1.. run scoreboard players set @s switch.music.progress 0

