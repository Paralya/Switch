
# Clear slowness
effect clear @s slowness

# Use Bookshelf Raycast to get destination
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run {with:{blocks:true,entities:false,max_distance:128,on_entry_point:"function switch:modes/murder_mystery/throw/on_entry_point"}}

# Summon the item
data modify storage switch:main Rotation set from entity @s Rotation
execute rotated ~ 0 run summon armor_stand ^ ^1.5 ^1.5 {Tags:["switch.thrown"],Marker:true,Invisible:true,Passengers:[{id:"item_display",item:{id:"golden_sword",count:1},item_display:"firstperson_righthand",Tags:["switch.thrown"]}]}
execute as @e[tag=switch.thrown,sort=nearest,limit=2] run data modify entity @s Rotation set from storage switch:main Rotation
execute as @e[type=item_display,tag=switch.thrown,sort=nearest,limit=1] run data modify entity @s item.components."minecraft:custom_data".destination set from storage switch:temp destination

