
#> switch:modes/pitchout/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/pitchout/calls/joined
#			switch:modes/pitchout/process_end [ as @a[tag=!detached,sort=random] ]
#

gamemode spectator @s
scoreboard players reset @s switch.alive
function switch:modes/pitchout/death

