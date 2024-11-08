
#> switch:modes/glassrunner/fireball/explosion
#
# @within	switch:modes/glassrunner/tick
#

particle minecraft:flame ~ ~ ~ 1 1 1 .1 5


fill ~-2 ~-2 ~-2 ~2 ~2 ~2 air replace #switch:glassrunner/glass_air

scoreboard players add @s switch.data 1
kill @s[scores={switch.data=500..}]

