
# Clear slowness
effect clear @s slowness

# Use Iris to get destination
function iris:setup/load
data merge storage iris:input {MaxRecursionDepth:256, TargetEntities:0b}
execute anchored eyes positioned ^ ^ ^ run function iris:get_target
execute as @e[tag=iris.ray] at @s run function switch:modes/murder_mystery/throw/as_iris_ray

# Summon the item
data modify storage switch:main Rotation set from entity @s Rotation
execute rotated ~ 0 run summon armor_stand ^ ^1.5 ^1.5 {Tags:["switch.thrown"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:golden_sword",Count:1b},item_display:"firstperson_righthand",Tags:["switch.thrown"]}]}
execute as @e[tag=switch.thrown,sort=nearest,limit=2] run data modify entity @s Rotation set from storage switch:main Rotation
execute as @e[type=item_display,tag=switch.thrown,sort=nearest,limit=1] run data modify entity @s item.components."minecraft:custom_data".destination set from storage switch:temp destination

