
# Drop the flag
execute if entity @s[tag=switch.blue_flag] run tellraw @a[tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" vient de lâcher !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" vient de lâcher !"}]
execute if entity @s[tag=switch.blue_flag] run kill @a[tag=switch.has_blue_flag]
execute if entity @s[tag=switch.red_flag] run kill @a[tag=switch.has_red_flag]
execute if entity @s[tag=switch.blue_flag] run tag @a[tag=switch.has_blue_flag] remove switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @a[tag=switch.has_red_flag] remove switch.has_red_flag
data modify entity @s item set value {id:"minecraft:blue_banner",Count:1b}
data modify entity @s transformation.translation[1] set value -1.5f

# Add free tag
tag @s add switch.free

