
## /execute as @s positioned 0 69 0 rotated -55 10 run function switch:cinematic/launch {x:19.5,y:82.5,z:23.5,time:60,with:{yaw:30,pitch:-15,particle:1,interpolation:1}}
# TODO: Add rotation
# Pos 1 = current position
# Pos 2 = target position ($(x) $(y) $(z))

# Tag the player and remember it's id
scoreboard players operation #player_id switch.id = @s switch.id
tag @s add switch.temp

## Get the arguments
# Get the target position as double type (and increment height by 1.6)
$data modify storage switch:temp temp set value [$(x),$(y),$(z)]
data modify storage switch:temp target_position set value [0.0d, 0.0d, 0.0d]
execute store result storage switch:temp target_position[0] double 0.001 run data get storage switch:temp temp[0] 1000
execute store result score #temp switch.data run data get storage switch:temp temp[1] 1000
scoreboard players add #temp switch.data 1600
execute store result storage switch:temp target_position[1] double 0.001 run scoreboard players get #temp switch.data
execute store result storage switch:temp target_position[2] double 0.001 run data get storage switch:temp temp[2] 1000

# Get the time as int type
$scoreboard players set #cinematic_time switch.data $(time)

# Get the current position (y + 1.6) and rotation
tp @s ~ ~1.6 ~ ~ ~
data modify storage switch:temp current_position set from entity @s Pos
data modify storage switch:temp current_rotation set from entity @s Rotation
data modify storage switch:temp target_rotation set from storage switch:temp current_rotation


## Remember the additional arguments
$data modify storage switch:temp with set value $(with)
execute unless data storage switch:temp with.interpolation run data modify storage switch:temp with.interpolation set value 1
execute store result score #cinematic_interpolation switch.data run data get storage switch:temp with.interpolation
execute if data storage switch:temp with.pitch if data storage switch:temp with.yaw run function switch:cinematic/get_rotation_arguments with storage switch:temp with


## Summon the entity that will control the player
execute summon item_display run function switch:cinematic/setup_entity

# Remove the tag
tag @s remove switch.temp

