
#> switch:modes/pvpswap/give_items
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/pvpswap/start [ as @a[tag=!detached] ]
#

item replace entity @s armor.head with leather_helmet[enchantments={projectile_protection:2}]
item replace entity @s armor.chest with leather_chestplate[enchantments={projectile_protection:2}]
item replace entity @s armor.legs with leather_leggings[enchantments={projectile_protection:2}]
item replace entity @s armor.feet with leather_boots[enchantments={projectile_protection:2}]
item replace entity @s inventory.25 with tnt 4
item replace entity @s inventory.26 with flint_and_steel
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"mobility",claim:1,canon:3,sibling:0},{i:3,role:"tool",claim:1,canon:4,sibling:0},{i:4,role:"axe",claim:1,canon:5,sibling:0},{i:5,role:"ammo",claim:1,canon:7,sibling:0},{i:6,role:"blocks",claim:1,canon:8,sibling:0},{i:7,role:"heal",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/pvpswap/give_items/items with storage switch:layout out
scoreboard players add #initial_count switch.data 1
data modify storage switch:temp temp set value {id:0,hurt:[]}
execute store result storage switch:temp temp.id int 1 run scoreboard players get @s switch.id
data modify storage switch:temp pvpswap append from storage switch:temp temp
data remove storage switch:temp temp

