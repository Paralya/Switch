
# Remove free tag and original_pos tag
tag @s remove switch.original_pos
tag @s remove switch.free

# Depending on the flag color, tag the respective player
execute if entity @s[tag=switch.blue_flag] run tag @p[team=switch.temp.red,distance=..1] add switch.has_blue_flag
execute if entity @s[tag=switch.red_flag] run tag @p[team=switch.temp.blue,distance=..1] add switch.has_red_flag
execute if entity @s[tag=switch.blue_flag] run tellraw @a[tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"bleu","color":"blue"},{"text":" a été ramassé !"}]
execute if entity @s[tag=switch.red_flag] run tellraw @a[tag=!detached] ["",{"text":"[RushTheFlag]","color":"yellow"},{"text":" Le drapeau "},{"text":"rouge","color":"red"},{"text":" a été ramassé !"}]
data remove entity @s item

# Translation & Playsound
data modify entity @s transformation.translation[1] set value 0.69f
execute as @a[tag=!detached] at @s run playsound entity.experience_orb.pickup ambient @s

