
#> switch:player/layout/editor/tick
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick_detach
#

execute unless entity @s[tag=switch.layout_editor] run return 0

# Kill any editor item dropped on the ground (dropping IS the action, the ground entity is noise)
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{switch:{layout_item:true}}}}}]

# Dropped the save item -> save and exit
scoreboard players set #has_item switch.data 0
execute store success score #has_item switch.data if data storage switch:temp Inventory[].components."minecraft:custom_data".switch.layout_save
execute if score #has_item switch.data matches 0 run return run function switch:player/layout/editor/save_and_close

# Dropped the reset item -> every role back to its default slot
scoreboard players set #has_item switch.data 0
execute store success score #has_item switch.data if data storage switch:temp Inventory[].components."minecraft:custom_data".switch.layout_reset
execute if score #has_item switch.data matches 0 run return run function switch:player/layout/editor/reset

