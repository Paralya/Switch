
execute if entity @s[tag=switch.blue_flag] on vehicle run tp @s 14077 99 14000 -90 0
execute if entity @s[tag=switch.blue_flag] run data modify entity @s Rotation[0] set value -90.0f
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag
execute if entity @s[tag=switch.blue_flag] run tellraw @a[tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" est à nouveau en place !"}]

execute if entity @s[tag=switch.red_flag] on vehicle run tp @s 13923 99 14000 90 0
execute if entity @s[tag=switch.red_flag] run data modify entity @s Rotation[0] set value 90.0f
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
execute if entity @s[tag=switch.red_flag] run tellraw @a[tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" est à nouveau en place !"}]

data modify entity @s[tag=switch.blue_flag] item set value {id:"minecraft:blue_banner",Count:1b}
data modify entity @s[tag=switch.red_flag] item set value {id:"minecraft:red_banner",Count:1b}
data modify entity @s transformation.translation[1] set value -1.5f
tag @s add switch.original_pos
tag @s add switch.free

