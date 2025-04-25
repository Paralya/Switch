
#> switch:player/username_change/check
#
# @within	switch:player/joined
#			switch:player/tick
#

# Get username and UUID
setblock 0 15 0 air
setblock 0 15 0 yellow_shulker_box
loot insert 0 15 0 loot switch:get_username
data modify storage switch:temp input set value {username:"",UUID:[]}
data modify storage switch:temp input.username set from block 0 15 0 Items[0].components."minecraft:profile".name
data modify storage switch:temp input.UUID set from entity @s UUID
setblock 0 15 0 air

# Macro with UUID and username
function switch:player/username_change/with_macro with storage switch:temp input

