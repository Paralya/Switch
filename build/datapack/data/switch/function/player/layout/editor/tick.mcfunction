
#> switch:player/layout/editor/tick
#
# @executed	as @a[sort=random] & at @s
#
# @within	switch:player/tick_detach
#

execute unless entity @s[tag=switch.layout_editor] run return 0

# Kill any editor item dropped on the ground (dropping IS the action, the ground entity is noise)
kill @e[type=item,distance=..16,nbt={Item:{components:{"minecraft:custom_data":{switch:{layout_item:true}}}}}]

execute unless items entity @s container.* *[custom_data~{switch:{layout_save:true}}] unless items entity @s weapon.offhand *[custom_data~{switch:{layout_save:true}}] unless items entity @s player.cursor *[custom_data~{switch:{layout_save:true}}] run return run function switch:player/layout/editor/save_and_close
execute unless items entity @s container.* *[custom_data~{switch:{layout_reset:true}}] unless items entity @s weapon.offhand *[custom_data~{switch:{layout_reset:true}}] unless items entity @s player.cursor *[custom_data~{switch:{layout_reset:true}}] run return run function switch:player/layout/editor/reset

