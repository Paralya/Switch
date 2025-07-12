
# If body is locked, set a score
execute store success score #body_locked switch.data if entity @s[tag=switch.npc.body_locked]

# Store previous yaw rotation (if body is locked)
execute if score #body_locked switch.data matches 1 store result score #previous_yaw switch.data run data get entity @s Rotation[0] 1000

# Face the player
$execute anchored eyes facing entity $(facing) eyes run tp @s ~ ~ ~ ~ ~

# Store head rotation (pitch)
execute store result entity @s Pose.Head[0] float 1 run data get entity @s Rotation[1]

# If body locked, store yaw rotation (current yaw - previous yaw), then reset the rotation
execute if score #body_locked switch.data matches 1 store result score #new_yaw switch.data run data get entity @s Rotation[0] 1000
execute if score #body_locked switch.data matches 1 run scoreboard players operation #new_yaw switch.data -= #previous_yaw switch.data
execute if score #body_locked switch.data matches 1 store result entity @s Pose.Head[1] float 0.001 run scoreboard players get #new_yaw switch.data
execute if entity @s[tag=switch.npc.body_locked] run tp @s ~ ~ ~ ~ ~

# If body isn't locked, reset head yaw
execute if score #body_locked switch.data matches 0 run data modify entity @s Pose.Head[1] set value 0.0f

# Make sure the armor stand is riding the interaction entity
ride @s mount @n[type=interaction,tag=switch.npc,distance=..5]

