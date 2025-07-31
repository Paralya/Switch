
#> switch:modes/infected/secrets/lost_graveyard/item_tick
#
# @executed	at @s
#
# @within	switch:modes/infected/secrets/lost_graveyard/_tick [ at @s ]
#

# Owner become nearest human
data modify entity @s Owner set value [I;1,1,1,1]
execute if entity @s[tag=switch.infected.shovel] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:stone_shovel"}]}] UUID
execute if entity @s[tag=switch.infected.iron_ingot] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:iron_ingot"}]}] UUID

# Add switch.checked tag
tag @s add switch.checked

