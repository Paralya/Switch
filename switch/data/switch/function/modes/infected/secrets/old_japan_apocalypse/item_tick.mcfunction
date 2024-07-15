
# Owner become nearest human
data modify entity @s Owner set value [I;1,1,1,1]
execute if entity @s[tag=switch.infected.pickaxe] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:diamond_pickaxe"}]}] UUID
execute if entity @s[tag=switch.infected.nether_star] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:nether_star"}]}] UUID
execute if entity @s[tag=switch.infected.glass] run data modify entity @s Owner set from entity @p[team=switch.temp.human,nbt=!{Inventory:[{id:"minecraft:glass"}]}] UUID

# Add switch.checked tag
tag @s add switch.checked

