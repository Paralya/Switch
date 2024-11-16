
#> switch:custom_blocks/radioactive_waste_barrel/replace_item
#
# @within	switch:custom_blocks/radioactive_waste_barrel/destroy
#

data modify entity @s Item.components set from storage switch:items all.radioactive_waste_barrel.components
data modify entity @s Item.id set from storage switch:items all.radioactive_waste_barrel.id

