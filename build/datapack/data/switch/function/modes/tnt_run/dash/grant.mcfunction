
#> switch:modes/tnt_run/dash/grant
#
# @executed	as @a[tag=!detached,gamemode=adventure]
#
# @within	switch:modes/tnt_run/dash/award
#

scoreboard players operation #delta switch.data = #earned switch.data
scoreboard players operation #delta switch.data -= @s switch.temp.dashes_earned
scoreboard players operation @s switch.temp.dashes += #delta switch.data
scoreboard players operation @s switch.temp.dashes_earned = #earned switch.data
execute at @s run playsound entity.player.levelup ambient @s ~ ~ ~ 1 2

