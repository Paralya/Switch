
#> switch:music/actions/next
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/trigger/music/main
#

# Go next song
scoreboard players add @s switch.music.current 1
execute if score @s switch.music.current > #last_index switch.music.current run scoreboard players set @s switch.music.current 100

# In every case reset progress
function switch:music/reset_progress

function switch:music/browser

