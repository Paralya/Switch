
#> switch:modes/pitchout/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/pitchout/second [ as @a[tag=!detached] & at @s ]
#

execute if score @s switch.pitchout.boots matches 0 run item replace entity @s armor.feet with leather_boots[max_damage=5]
execute if score @s switch.pitchout.boots matches 1 run item replace entity @s armor.feet with leather_boots[max_damage=20]
execute if score @s switch.pitchout.boots matches 2 run item replace entity @s armor.feet with leather_boots[max_damage=30]
execute if score @s switch.pitchout.boots matches 3 run item replace entity @s armor.feet with leather_boots[max_damage=40]
execute if score @s switch.pitchout.boots matches 4 run item replace entity @s armor.feet with leather_boots[max_damage=50]
execute if score @s switch.pitchout.boots matches 5.. run item replace entity @s armor.feet with leather_boots[max_damage=65]
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"ammo",claim:1,canon:3,sibling:0},{i:3,role:"mobility",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/pitchout/give_items/items with storage switch:layout out

