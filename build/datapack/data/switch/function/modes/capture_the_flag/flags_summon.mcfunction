
#> switch:modes/capture_the_flag/flags_summon
#
# @within	switch:modes/capture_the_flag/second
#

# Maps
execute if data storage switch:main {map:"operation_pigclaw"} run summon armor_stand 36117 151 35926 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[45.0f,0.0f],Glowing:true}],Rotation:[45.0f,0.0f]}
execute if data storage switch:main {map:"operation_pigclaw"} run summon armor_stand 35934 135 36074 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[-135.0f,0.0f],Glowing:true}],Rotation:[-135.0f,0.0f]}
execute if data storage switch:main {map:"ctf_plains_castles"} run summon armor_stand 146039 127 146114 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[-90.0f,0.0f],Glowing:true}],Rotation:[-90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_plains_castles"} run summon armor_stand 146285 127 146114 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[90.0f,0.0f],Glowing:true}],Rotation:[90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_mountains_castles"} run summon armor_stand 147285 213 147106 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_mountains_castles"} run summon armor_stand 147076 213 147107 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_flowers"} run summon armor_stand 148178 131 148052 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[90.0f,0.0f],Glowing:true}],Rotation:[90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_flowers"} run summon armor_stand 148024 131 148053 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[-90.0f,0.0f],Glowing:true}],Rotation:[-90.0f,0.0f]}
execute if data storage switch:main {map:"ctf_nether"} run summon armor_stand 149100 143 149029 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[0.0f,0.0f],Glowing:true}],Rotation:[0.0f,0.0f]}
execute if data storage switch:main {map:"ctf_nether"} run summon armor_stand 149102 143 149321 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}
execute if data storage switch:main {map:"ctf_forest_castles"} run summon armor_stand 150050 114 150034 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.blue_flag"],item:{id:"blue_banner",count:1},Rotation:[0.0f,0.0f],Glowing:true}],Rotation:[0.0f,0.0f]}
execute if data storage switch:main {map:"ctf_forest_castles"} run summon armor_stand 150050 114 150180 {Invisible:true,Invulnerable:true,Marker:true,Passengers:[{id:"item_display",Tags:["switch.flag","switch.free","switch.original_pos","switch.red_flag"],item:{id:"red_banner",count:1},Rotation:[180.0f,0.0f],Glowing:true}],Rotation:[180.0f,0.0f]}

# Stuff
execute as @e[tag=switch.flag] at @s run data modify entity @s item.components."minecraft:custom_data".Pos set from entity @e[type=armor_stand,sort=nearest,limit=1] Pos
execute as @e[tag=switch.flag] at @s run data modify entity @s item.components."minecraft:custom_data".Rotation set from entity @e[type=armor_stand,sort=nearest,limit=1] Rotation
execute as @e[tag=switch.flag] run data modify entity @s transformation.translation[1] set value 0.5f

