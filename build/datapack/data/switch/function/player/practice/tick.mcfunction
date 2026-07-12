
#> switch:player/practice/tick
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick_detach
#

# Toggle item detection (only when the jump inventory is stable, setup_lobby_inventory handles the other cases)
execute if score #inventory switch.data matches 13 run function switch:player/practice/check_inventory

# The rest is only for players with practice mode enabled
execute unless entity @s[tag=switch.practice] run return 1

# Right click actions on the practice items
execute if score @s switch.right_click matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".switch.practice_place run function switch:player/practice/place_checkpoint
execute if score @s switch.right_click matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".switch.practice_respawn run function switch:player/practice/respawn_click
execute if score @s switch.right_click matches 1.. if data entity @s SelectedItem.components."minecraft:custom_data".switch.practice_remove run function switch:player/practice/remove_checkpoint

# Respawn to the last checkpoint when falling (runs before the default lobby respawn detection)
execute if entity @s[gamemode=!creative,gamemode=!spectator,y=-64,dy=127] run function switch:player/practice/respawn_fall

# Show own checkpoints particles when holding the place/remove items
execute if data entity @s SelectedItem.components."minecraft:custom_data".switch.practice_viewer run function switch:player/practice/show_particles

