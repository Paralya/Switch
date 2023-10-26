
# Playsound & Spectator
execute as @a[tag=!detached] at @s run playsound entity.player.hurt ambient @s
gamemode spectator @s

# Summon dead body with username
setblock 0 0 0 yellow_shulker_box
loot insert 0 0 0 loot switch:get_username
data modify storage switch:main Rotation set from entity @s Rotation
execute summon zombie run function switch:modes/murder_mystery/apply_properties_to_zombie

# Drop bow if detective
execute if data entity @s Inventory[].tag.switch.detective_bow run summon item_display ~ ~1 ~ {item:{id:"minecraft:bow",Count:1b},Tags:["switch.detective_bow"],Glowing:1b}

# Title & clear
title @s title {"text":"Vous êtes mort","color":"red"}
clear @s

