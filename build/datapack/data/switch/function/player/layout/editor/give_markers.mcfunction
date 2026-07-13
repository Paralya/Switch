
#> switch:player/layout/editor/give_markers
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/layout/editor/open
#			switch:player/layout/editor/reset
#

# Kill editor items dropped on the ground nearby, then rebuild the inventory from scratch
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{switch:{layout_item:true}}}}}]
clear @s
function switch:player/translations/layout_editor_markers

