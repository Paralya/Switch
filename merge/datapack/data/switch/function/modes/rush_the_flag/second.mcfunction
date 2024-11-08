
function switch:modes/rush_the_point/second_common

# White wool at center
execute if score #rush_the_point_seconds switch.data matches ..-1 if data storage switch:main {map:"rush_the_point_1"} run fill 14010 98 13990 13990 98 14010 white_wool replace #minecraft:wool

# Summon the flags
execute if score #rush_the_point_seconds switch.data matches 0 if data storage switch:main {map:"rush_the_point_1"} run summon armor_stand 14077 99 14000 {Invisible:true,Invulnerable:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[-90.0f,0.0f]}],Rotation:[-90.0f,0.0f]}
execute if score #rush_the_point_seconds switch.data matches 0 if data storage switch:main {map:"rush_the_point_1"} run summon armor_stand 13923 99 14000 {Invisible:true,Invulnerable:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[90.0f,0.0f]}],Rotation:[90.0f,0.0f]}
execute if score #rush_the_point_seconds switch.data matches 0 as @e[tag=switch.flag] run data modify entity @s transformation.translation[1] set value -1.5f

