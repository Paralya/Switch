
#> switch:modes/rush_the_point/right_click
#
# @executed	as the player & at current position
#
# @within	advancement switch:rush_the_point/right_click
#

# Revoke advancement and make the right click action
advancement revoke @s only switch:rush_the_point/right_click
execute if data entity @s SelectedItem.components."minecraft:custom_data".switch.class_item store result score @s switch.temp.chosen_class run data get entity @s SelectedItem.components."minecraft:custom_data".switch.class_item
function switch:modes/rush_the_point/classes/main

