
#> switch:modes/cigogne/give_items
#
# @executed	as @a[tag=!detached]
#
# @within	switch:modes/cigogne/start [ as @a[tag=!detached] ]
#

attribute @s attack_speed base set 1024
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"heal",claim:1,canon:1,sibling:0},{i:1,role:"melee",claim:1,canon:3,sibling:0},{i:2,role:"ranged",claim:1,canon:5,sibling:0},{i:3,role:"ammo",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/cigogne/give_items/items with storage switch:layout out

