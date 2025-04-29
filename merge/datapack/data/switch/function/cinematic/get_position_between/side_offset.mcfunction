
# Go to the half position
data modify entity @s Pos set from storage switch:temp half_position

# Look at the target position (because looking at half position is looking at the target position)
execute positioned ~ ~ ~ facing entity @s feet positioned as @s run tp @s ~ ~ ~ ~ ~

# Rotate based on yaw direction
execute if score #yaw_diff switch.data matches 1.. at @s run tp @s ~ ~ ~ ~-90 ~
execute if score #yaw_diff switch.data matches ..0 at @s run tp @s ~ ~ ~ ~90 ~

# Move forward
$execute at @s run tp @s ^ ^ ^$(amount)

# Remember the position
data modify storage switch:temp half_position set from entity @s Pos

# Kill the entity
kill @s[type=!player]

