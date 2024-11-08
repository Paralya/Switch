
#> switch:calls/common_signals/on_ore_destroyed
#
# @within	switch:calls/common_signals/new_item
#

# Get in a score the item count and if it is a silk touch
scoreboard players set #item_count switch.data 0
scoreboard players set #is_silk_touch switch.data 0
execute store result score #item_count switch.data run data get entity @s Item.count
execute store success score #is_silk_touch switch.data if data entity @s Item.components."minecraft:custom_data".common_signals.silk_touch

# Try to destroy the block
execute as @e[tag=switch.custom_block,dx=0,dy=0,dz=0] at @s run function switch:custom_blocks/destroy

