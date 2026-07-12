
#> switch:player/practice/place_checkpoint
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/tick
#

# Prevent placing a checkpoint in the fall/void zone (would cause an infinite respawn loop)
execute if entity @s[y=-64,dy=127] run playsound entity.villager.no ambient @s
execute if entity @s[y=-64,dy=127] run return run function switch:player/translations/practice_cant_place_here

# Build the checkpoint compound from the current position
data modify storage switch:temp practice_cp set value {x:0.0d,y:0.0d,z:0.0d,yaw:0.0f,pitch:0.0f}
data modify storage switch:temp practice_cp.x set from entity @s Pos[0]
data modify storage switch:temp practice_cp.y set from entity @s Pos[1]
data modify storage switch:temp practice_cp.z set from entity @s Pos[2]
data modify storage switch:temp practice_cp.yaw set from entity @s Rotation[0]
data modify storage switch:temp practice_cp.pitch set from entity @s Rotation[1]

# Append it to the player's checkpoint list (kills the oldest one above 5)
data modify storage switch:temp practice_input set value {id:0}
execute store result storage switch:temp practice_input.id int 1 run scoreboard players get @s switch.id
function switch:player/practice/place_checkpoint_macro with storage switch:temp practice_input

# Feedback
playsound block.respawn_anchor.set_spawn ambient @s
particle happy_villager ~ ~1 ~ 0.3 0.5 0.3 0 15 force @s
function switch:player/translations/practice_place_checkpoint

