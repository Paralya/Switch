
#> switch:modes/murder_mystery/apply_properties_to_mannequin
#
# @executed	as the player & at current position
#
# @within	switch:modes/murder_mystery/kill_player
#

data merge entity @s {Invulnerable:true,Silent:true,hide_description:true,pose:"sleeping",immovable:true}
data modify entity @s Rotation set from storage switch:main Rotation

# Copy name to CustomName
data modify entity @s profile set from block 0 7 0 Items[0].components."minecraft:profile"
setblock 0 7 0 oak_sign
data modify block 0 7 0 front_text.messages[0] set value {"nbt":"temp","storage":"switch:main"}
data modify entity @s CustomName set from block 0 7 0 front_text.messages[0]

