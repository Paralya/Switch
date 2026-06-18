
#> switch:player/kill_out_of_map
#
# @executed	as @a[tag=!detached,gamemode=!spectator] & at @s
#
# @within	switch:tick [ as @a[tag=!detached,gamemode=!spectator] & at @s ]
#

function switch:player/translations/kill_out_of_map
tp @s ~ ~1 ~
kill @s

