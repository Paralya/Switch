
#> switch:modes/fireblast/death
#
# @within	switch:modes/fireblast/joined
#			switch:modes/fireblast/process_end [ as @a[tag=!detached] ]
#			switch:modes/fireblast/tick [ as @a[tag=!detached,gamemode=!spectator] & at @s ]
#

execute if entity @s[gamemode=adventure] run function switch:translations/modes_fireblast_death
function switch:utils/classic_death

