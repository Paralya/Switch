
#> switch:modes/capture_the_flag/classes/demolisher
#
# @executed	as the player & at current position
#
# @within	switch:modes/capture_the_flag/classes/main
#

function switch:modes/capture_the_flag/classes/_common
item replace entity @s armor.chest with iron_chestplate
item replace entity @s armor.legs with chainmail_leggings
item replace entity @s armor.feet with iron_boots
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"axe",claim:1,canon:2,sibling:0},{i:2,role:"heal",claim:1,canon:3,sibling:0},{i:3,role:"special",claim:1,canon:5,sibling:0},{i:4,role:"blocks",claim:1,canon:6,sibling:0},{i:5,role:"explosive",claim:1,canon:7,sibling:1},{i:6,role:"explosive",claim:1,canon:8,sibling:0},{i:7,role:"food",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/capture_the_flag/classes/demolisher/items with storage switch:layout out
function switch:modes/capture_the_flag/classes/_soldier_attrs

