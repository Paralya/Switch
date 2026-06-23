
#> switch:modes/infected/secrets/area_51/item_tick
#
# @executed	at @s
#
# @within	switch:modes/infected/secrets/area_51/_tick [ at @s ]
#

function switch:modes/infected/secrets/item_set_owner
execute if entity @s[tag=switch.infected.bottle] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:glass_bottle"}]}] UUID

# Add switch.checked tag
tag @s add switch.checked

