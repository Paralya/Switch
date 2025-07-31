
#> switch:custom_blocks/_groups/minecraft_emerald_block
#
# @executed	as @e[type=item_display,tag=...,predicate=!switch:check_vanilla_blocks] & at @s
#
# @within	switch:custom_blocks/destroy
#

execute if score #total_radioactive_waste_barrel switch.data matches 1.. if entity @s[tag=switch.radioactive_waste_barrel] run function switch:custom_blocks/radioactive_waste_barrel/destroy

