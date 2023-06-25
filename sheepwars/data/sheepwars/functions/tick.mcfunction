
#> sheepwars:tick
#
# @within			none
# @executed			unknown context
#
# @description		Function that need to be executed every tick, it handles sheeps, wools, and right click detection.
#

# Right click detection
execute as @a[scores={sheepwars.right_click=1..},sort=random] at @s run function sheepwars:right_click/all

# Sheep management
execute as @e[tag=sheepwars.sheep] at @s run function sheepwars:sheeps/tick_sheep


