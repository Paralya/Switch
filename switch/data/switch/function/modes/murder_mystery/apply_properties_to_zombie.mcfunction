
data merge entity @s {NoAI:1b,Invulnerable:1b,IsBaby:1b,Silent:1b}
data modify entity @s Rotation set from storage switch:main Rotation

# Copy Name to CustomName
data modify storage switch:main temp set from block 0 0 0 Items[0].components."minecraft:profile".name
item replace entity @s armor.head from block 0 0 0 container.0
setblock 0 0 0 oak_sign
data modify block 0 0 0 front_text.messages[0] set value '{"nbt":"temp","storage":"switch:main"}'
data modify entity @s CustomName set from block 0 0 0 front_text.messages[0]
setblock 0 0 0 air

