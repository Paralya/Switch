
#> switch:modes/pitch_creep/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/pitch_creep/second [ as @a[tag=!detached] & at @s ]
#

data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"ammo",claim:1,canon:3,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/pitch_creep/give_items/items with storage switch:layout out

