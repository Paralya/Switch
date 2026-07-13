
#> switch:modes/capture_the_flag/classes/chemister
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/main
#

function switch:modes/capture_the_flag/classes/_common
item replace entity @s armor.chest with golden_chestplate
item replace entity @s armor.legs with diamond_leggings
item replace entity @s armor.feet with golden_boots
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"axe",claim:1,canon:2,sibling:0},{i:2,role:"heal",claim:1,canon:3,sibling:0},{i:3,role:"mobility",claim:1,canon:4,sibling:0},{i:4,role:"throwable",claim:1,canon:5,sibling:0},{i:5,role:"throwable",claim:0,canon:6,sibling:1},{i:6,role:"special",claim:1,canon:7,sibling:0},{i:7,role:"blocks",claim:1,canon:8,sibling:0},{i:8,role:"food",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/capture_the_flag/classes/chemister/items with storage switch:layout out
attribute @s movement_speed base set 0.10
attribute @s attack_speed base set 2048
attribute @s max_health base reset
attribute @s jump_strength base reset

