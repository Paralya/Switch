
#> switch:modes/tnt_run/dash/award
#
# @executed	as @a[tag=!detached,gamemode=adventure]
#
# @within	switch:modes/tnt_run/tick [ as @a[tag=!detached,gamemode=adventure] ]
#

scoreboard players operation #earned switch.data = @s switch.temp.blocks
scoreboard players operation #earned switch.data /= #100 switch.data
execute if score #earned switch.data > @s switch.temp.dashes_earned run function switch:modes/tnt_run/dash/grant

