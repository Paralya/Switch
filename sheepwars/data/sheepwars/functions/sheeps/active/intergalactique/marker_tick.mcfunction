
#> sheepwars:sheeps/active/intergalactique/marker_tick
#
# @within			sheepwars:tick
# @executed			as & at an intergalactique marker
#
# @description		Function executed every tick, it handles sheeps, wools, and right click detection.
#

# Teleport ahead
tp @s ^ ^ ^0.75

# Do particles
particle large_smoke ~ ~ ~ 1 1 1 0.01 5 force @a
particle flame ~ ~ ~ 1 1 1 0.01 10 force @a

# If block is not air, explode and disappear
scoreboard players set #is_air sheepwars.data 0
execute at @s if block ~ ~ ~ air run scoreboard players set #is_air sheepwars.data 1
execute at @s if score #is_air sheepwars.data matches 0 run function sheepwars:sheeps/final/normal_explosion
execute at @s if score #is_air sheepwars.data matches 0 run function sheepwars:sheeps/final/disappear


