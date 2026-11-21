
#> switch:modes/creeper_apocalypse/death
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/creeper_apocalypse/joined
#			string in switch:modes/creeper_apocalypse/tick
#

function switch:modes/creeper_apocalypse/translations/death
function switch:utils/classic_death
scoreboard players set @s switch.alive 0

