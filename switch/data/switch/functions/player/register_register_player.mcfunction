
# Default values
data modify storage permanent_storage:main copy set value {UUID:[I;0,0,0,0],Name:"",scores:{}}

# Register UUID
data modify storage permanent_storage:main copy.UUID set from entity @s UUID

# Register Name
setblock -30000000 14 1610 yellow_shulker_box
loot insert -30000000 14 1610 loot switch:get_username
data modify storage permanent_storage:main copy.Name set from block -30000000 14 1610 Items[0].tag.SkullOwner.Name

# Register Storage
data modify storage permanent_storage:players list append from storage permanent_storage:main copy

