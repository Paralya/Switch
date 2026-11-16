
#> switch:player/layout/tick
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick
#

scoreboard players remove @s switch.layout.cd 1
execute if score @s switch.layout.cd matches 1.. run return 0
tag @s remove switch.layout.dirty
function switch:player/layout/learn

