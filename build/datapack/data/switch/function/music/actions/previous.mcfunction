
#> switch:music/actions/previous
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/music/main
#

# Go previous song if not playing or if playing and less than 5 seconds
execute unless score @s switch.music.progress matches 1.. if score @s switch.music.current matches 100.. run scoreboard players remove @s switch.music.current 1
execute unless score @s switch.music.progress matches 1.. if score @s switch.music.current matches 99 run scoreboard players operation @s switch.music.current = #last_index switch.music.current
execute if score @s switch.music.progress matches 1..99 if score @s switch.music.current matches 100.. run scoreboard players remove @s switch.music.current 1
execute if score @s switch.music.progress matches 1..99 if score @s switch.music.current matches 99 run scoreboard players operation @s switch.music.current = #last_index switch.music.current

# In every case reset progress
execute if score @s switch.music.progress matches 1.. run scoreboard players set @s switch.music.progress 1
execute if score @s switch.music.progress matches ..-1 run scoreboard players set @s switch.music.progress -1

function switch:music/browser

