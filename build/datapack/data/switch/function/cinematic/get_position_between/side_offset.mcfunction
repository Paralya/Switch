
#> switch:cinematic/get_position_between/side_offset
#
# @within	switch:cinematic/get_position_between/main with storage switch:temp forward
#

# Go to the half position
data modify entity @s Pos set from storage switch:temp half_position

# Look at the target position (because looking at half position is looking at the target position)
execute positioned ~ ~ ~ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# Rotate 180 degrees (+ or -)
execute store result score #random switch.data run random value 0..1
execute if score #random switch.data matches 0 at @s run tp @s ~ ~ ~ ~-90 ~
execute if score #random switch.data matches 1 at @s run tp @s ~ ~ ~ ~90 ~

# Move forward
$execute at @s run tp @s ^$(amount) ^ ^

# Remember the position
data modify storage switch:temp half_position set from entity @s Pos

# Kill the entity
kill @s[type=!player]

