
#> switch:modes/_coupdetat/give_items
#
# @within	switch:modes/_coupdetat/start
#

loot replace entity @s armor.head loot switch:i/sapphire_helmet
loot replace entity @s armor.chest loot switch:i/sapphire_chestplate
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"heal",claim:1,canon:2,sibling:0},{i:2,role:"explosive",claim:1,canon:8,sibling:0},{i:3,role:"explosive",claim:0,canon:9,sibling:1}]}
function switch:player/layout/resolve
function switch:modes/_coupdetat/give_items/items with storage switch:layout out

