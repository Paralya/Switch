
#> switch:modes/rush_the_point/classes/archer
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/main
#

function switch:modes/rush_the_point/classes/_common

function switch:modes/rush_the_point/classes/_armor
item replace entity @s inventory.0 with arrow 64
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"blocks",claim:0,canon:10,sibling:0},{i:1,role:"ranged",claim:1,canon:1,sibling:0},{i:2,role:"melee",claim:1,canon:2,sibling:0},{i:3,role:"tool",claim:1,canon:3,sibling:0},{i:4,role:"blocks",claim:1,canon:4,sibling:0},{i:5,role:"mobility",claim:1,canon:5,sibling:0},{i:6,role:"heal",claim:1,canon:7,sibling:0},{i:7,role:"heal",claim:0,canon:8,sibling:1},{i:8,role:"food",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/rush_the_point/classes/archer/items with storage switch:layout out

