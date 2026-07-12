
#> switch:player/practice/check_inventory
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/practice/tick
#

# If the toggle item is missing from the inventory, the player dropped it out: toggle the practice mode
# (unless the practice items were never given, e.g. inventories saved before this feature existed: just give them)
scoreboard players set #has_toggle switch.data 0
execute store success score #has_toggle switch.data if data storage switch:temp Inventory[].components."minecraft:custom_data".switch.practice_toggle
execute if score #has_toggle switch.data matches 0 if entity @s[tag=switch.practice_given] run return run function switch:player/practice/toggle
execute if score #has_toggle switch.data matches 0 run return run function switch:player/practice/give_items

# If practice mode is enabled and an action item is missing, re-give the practice items
execute unless entity @s[tag=switch.practice] run return 1
execute store result score #practice_count switch.data if data storage switch:temp Inventory[].components."minecraft:custom_data".switch.practice_action
execute unless score #practice_count switch.data matches 3 run function switch:player/practice/give_items

