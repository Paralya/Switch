
#> switch:modes/creeper_apocalypse/death
#
# @within	switch:modes/creeper_apocalypse/joined
#			switch:modes/creeper_apocalypse/process_end [ as @a[tag=!detached,sort=random] ]
#

function switch:modes/creeper_apocalypse/translations/death
function switch:utils/classic_death
scoreboard players set @s switch.alive 0

