
#> switch:modes/race/joined
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:modes/race/calls/joined
#			string in switch:modes/race/tick
#

# Ici : dans tous les cas, mettre la personne qui join en spec
scoreboard players reset @s switch.alive
function switch:modes/race/complete

