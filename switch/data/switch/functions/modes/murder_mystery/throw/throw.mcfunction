
# Clear slowness
effect clear @s slowness

# Summon the item
data modify storage switch:main Rotation set from entity @s Rotation
execute rotated ~ 0 run summon armor_stand ^ ^1 ^1.5 {Tags:["switch.thrown"],Marker:1b,Invisible:1b,Passengers:[{id:"minecraft:item_display",item:{id:"minecraft:golden_sword",Count:1b},item_display:"firstperson_righthand",Tags:["switch.thrown"]}]}
execute as @e[tag=switch.thrown,sort=nearest,limit=2] run data modify entity @s Rotation set from storage switch:main Rotation

