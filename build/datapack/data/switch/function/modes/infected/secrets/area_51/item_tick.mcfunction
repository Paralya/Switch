
#> switch:modes/infected/secrets/area_51/item_tick
#
# @executed	at @s
#
# @within	switch:modes/infected/secrets/area_51/_tick [ at @s ]
#

# Owner become nearest human
data modify entity @s Owner set value [I;1,1,1,1]
execute if entity @s[tag=switch.infected.stick] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:stick"}]}] UUID
execute if entity @s[tag=switch.infected.redstone] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:redstone"}]}] UUID
execute if entity @s[tag=switch.infected.bottle] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:glass_bottle"}]}] UUID

# Add switch.checked tag
tag @s add switch.checked

