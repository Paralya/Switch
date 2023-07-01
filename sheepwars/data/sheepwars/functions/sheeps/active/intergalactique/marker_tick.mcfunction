
#> sheepwars:sheeps/active/intergalactique/marker_tick
#
# @within			sheepwars:tick
# @executed			as & at an intergalactique marker
#
# @description		Function executed every tick, it handles sheeps, wools, and right click detection.
#

# Teleport ahead
tp @s ^ ^ ^0.1

# Do particles
particle large_smoke ~ ~ ~ 1 1 1 0.01 10 force @a
particle flame ~ ~ ~ 1 1 1 0.01 20 force @a

# If block is not air, explode and disappear
execute unless block ~ ~ ~ air run function sheepwars:sheeps/final/normal_explosion
execute unless block ~ ~ ~ air run function sheepwars:sheeps/final/disappear



