
#> switch:modes/gay_shooter/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/gay_shooter/joined
#			switch:modes/gay_shooter/process_end [ as @a[tag=!detached] ]
#			string in switch:modes/gay_shooter/tick
#

execute unless score #process_end switch.data matches 1 run tp @s 114057 119 114044
gamemode spectator @s[team=!switch.temp.gays]
effect clear @s
clear @s

effect give @s[team=switch.temp.gays] saturation infinite 255 true

