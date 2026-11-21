
#> switch:modes/tnt_run/dash/award
#
# @executed	as @a[tag=!detached,gamemode=adventure]
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure] ]
#

execute if score @s switch.temp.blocks >= @s switch.temp.dash_next run function switch:modes/tnt_run/dash/grant

