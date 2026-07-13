
#> switch:modes/one_shot/give_items
#
# @within	switch:modes/one_shot/joined
#			switch:modes/one_shot/second [ as @a[tag=!detached] & at @s ]
#

# Give items to the player
clear @s
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"ranged",claim:1,canon:1,sibling:0},{i:1,role:"melee",claim:1,canon:2,sibling:0},{i:2,role:"ammo",claim:1,canon:3,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/one_shot/give_items/items with storage switch:layout out
attribute @s attack_speed base set 1024
attribute @s max_health base set 1

