
# Increment the number of cinematic entities and add convention tags
scoreboard players add #cinematic_entities switch.data 1
data modify entity @s teleport_duration set value 1
tag @s add switch.cinematic
tag @s add smithed.entity
tag @s add smithed.strict
tag @s add global.ignore.kill
tag @s add global.ignore

## Stream Bezier
# Prepare storages for Stream Bezier
data modify storage bs:in spline.sample_bezier set value {points:[],step:1}

# Get the current position (for the first point)
data modify storage switch:temp current_position set from entity @s Pos
data modify storage bs:in spline.sample_bezier.points append from storage switch:temp current_position

# Get a position between (with a little offset)
function switch:cinematic/get_position_between/main

# Get the target position
data modify storage bs:in spline.sample_bezier.points append from storage switch:temp target_position
data modify storage bs:in spline.sample_bezier.points append from storage switch:temp target_position
data modify storage bs:in spline.sample_bezier.points append from storage switch:temp target_position

# Compute the step depending on the time (1 / total time, We keep 6 decimals)
scoreboard players set #cinematic_step switch.data 1000000
scoreboard players operation #cinematic_step switch.data /= #cinematic_time switch.data
execute store result storage bs:in spline.sample_bezier.step double 0.000001 run scoreboard players get #cinematic_step switch.data

## Get all the points and remember them
function #bs.spline:sample_bezier
data modify storage switch:temp item set value {id:"minecraft:stone",count:1,components:{"minecraft:item_model":"minecraft:air"}}
data modify storage switch:temp item.components."minecraft:custom_data".points set from storage bs:out spline.sample_bezier
data modify entity @s item set from storage switch:temp item

## Remember player's id and gamemode, make the player spectator, then make them mount @s (item_display)
scoreboard players operation @s switch.id = #player_id switch.id
execute if entity @p[tag=switch.temp,gamemode=survival] run tag @s add switch.was_survival
execute if entity @p[tag=switch.temp,gamemode=adventure] run tag @s add switch.was_adventure
execute if entity @p[tag=switch.temp,gamemode=creative] run tag @s add switch.was_creative
gamemode spectator @p[tag=switch.temp]
spectate @s @p[tag=switch.temp]

