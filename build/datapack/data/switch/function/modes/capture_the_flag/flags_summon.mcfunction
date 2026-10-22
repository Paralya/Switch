
#> switch:modes/capture_the_flag/flags_summon
#
# @within	switch:modes/capture_the_flag/second
#

# Maps
execute if data storage switch:main {map:"operation_pigclaw"} run summon armor_stand 6290 151 6258 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[45.0f,0.0f],Glowing:true}],Rotation:[45.0f,0.0f]}
execute if data storage switch:main {map:"operation_pigclaw"} run summon armor_stand 6107 135 6406 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[-135.0f,0.0f],Glowing:true}],Rotation:[-135.0f,0.0f]}
execute if data storage switch:main {map:"ctf_plains_castles"} run summon armor_stand -11961 127 -3886 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[-90.0f,0.0f],Glowing:true}],Rotation:[-90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_plains_castles"} run summon armor_stand -11715 127 -3886 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[90.0f,0.0f],Glowing:true}],Rotation:[90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_mountains_castles"} run summon armor_stand -11714 213 -5894 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_mountains_castles"} run summon armor_stand -11923 213 -5893 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_flowers"} run summon armor_stand -11822 131 -7948 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[90.0f,0.0f],Glowing:true}],Rotation:[90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_flowers"} run summon armor_stand -11976 131 -7947 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[-90.0f,0.0f],Glowing:true}],Rotation:[-90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_nether"} run summon armor_stand -11900 143 -9971 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[0.0f,0.0f],Glowing:true}],Rotation:[0.0f,0.0f]}
execute if data storage switch:main {map:"ctf_nether"} run summon armor_stand -11898 143 -9679 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_forest_castles"} run summon armor_stand -11950 114 -11966 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[0.0f,0.0f],Glowing:true}],Rotation:[0.0f,0.0f]}
execute if data storage switch:main {map:"ctf_forest_castles"} run summon armor_stand -11950 114 -11820 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}

# Stuff
execute as @e[tag=switch.flag] at @s run data modify entity @s item.components."minecraft:custom_data".Pos set from entity @e[type=armor_stand,sort=nearest,limit=1] Pos
execute as @e[tag=switch.flag] at @s run data modify entity @s item.components."minecraft:custom_data".Rotation set from entity @e[type=armor_stand,sort=nearest,limit=1] Rotation
execute as @e[tag=switch.flag] run data modify entity @s transformation.translation[1] set value 0.5f

