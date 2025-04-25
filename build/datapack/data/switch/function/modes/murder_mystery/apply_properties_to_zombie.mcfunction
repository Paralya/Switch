
#> switch:modes/murder_mystery/apply_properties_to_zombie
#
# @within	switch:modes/murder_mystery/kill_player
#

data merge entity @s {NoAI:true,Invulnerable:true,IsBaby:true,Silent:true}
data modify entity @s Rotation set from storage switch:main Rotation

# Copy name to CustomName
data modify storage switch:main temp set from block 0 7 0 Items[0].components."minecraft:profile".name
item replace entity @s armor.head from block 0 7 0 container.0
setblock 0 7 0 oak_sign
data modify block 0 7 0 front_text.messages[0] set value {"nbt":"temp","storage":"switch:main"}
data modify entity @s CustomName set from block 0 7 0 front_text.messages[0]

