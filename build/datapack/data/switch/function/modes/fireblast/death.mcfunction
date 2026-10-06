
#> switch:modes/fireblast/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/fireblast/joined
#			switch:modes/fireblast/process_end [ as @a[tag=!detached] ]
#			switch:modes/fireblast/tick [ as @a[tag=!detached,gamemode=!spectator] & at @s ]
#			string in switch:modes/fireblast/tick
#

execute if entity @s[gamemode=adventure] run function switch:modes/fireblast/translations/death
function switch:utils/classic_death

