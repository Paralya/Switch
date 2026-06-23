
#> switch:music/reset_progress
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:music/actions/next
#			switch:music/actions/previous
#

execute if score @s switch.music.progress matches 1.. run scoreboard players set @s switch.music.progress 1
execute if score @s switch.music.progress matches ..-1 run scoreboard players set @s switch.music.progress -1

