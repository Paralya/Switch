
#> switch:modes/capture_the_flag/right_click
#
# @within	advancement switch:capture_the_flag/right_click
#

# Revoke advancement and make the right click action
advancement revoke @s only switch:capture_the_flag/right_click
execute if data entity @s SelectedItem.components."minecraft:custom_data".switch.class_item store result score @s switch.temp.chosen_class run data get entity @s SelectedItem.components."minecraft:custom_data".switch.class_item
function switch:modes/capture_the_flag/classes/main

