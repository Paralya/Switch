
data merge entity @s {NoAI:1b,Invulnerable:1b,IsBaby:1b,ArmorItems:[{},{},{},{id:"minecraft:leather_helmet",Count:1b,tag:{Unbreakable:1b}}]}
data modify entity @s Rotation set from storage switch:main Rotation

# Copy Name to CustomName
data modify storage switch:main temp set from block 0 0 0 Items[0].tag.SkullOwner.Name
setblock 0 0 0 oak_sign
data modify block 0 0 0 front_text.messages[0] set value '{"nbt":"temp","storage":"switch:main"}'
data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]
setblock 0 0 0 air

