
#> switch:custom_blocks/uranium_ore/replace_item
#
# @within	switch:custom_blocks/uranium_ore/destroy
#

# If silk touch applied
execute if score #is_silk_touch switch.data matches 1 run data modify entity @s Item.id set from storage switch:items all.uranium_ore.id
execute if score #is_silk_touch switch.data matches 1 run data modify entity @s Item.components set from storage switch:items all.uranium_ore.components

# Else, no silk touch
execute if score #is_silk_touch switch.data matches 0 run data modify entity @s Item.id set from storage switch:items all.raw_uranium.id
execute if score #is_silk_touch switch.data matches 0 run data modify entity @s Item.components set from storage switch:items all.raw_uranium.components

# Get item count in every case
execute store result entity @s Item.count byte 1 run scoreboard players get #item_count switch.data

