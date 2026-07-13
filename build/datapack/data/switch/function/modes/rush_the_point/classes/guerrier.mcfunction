
#> switch:modes/rush_the_point/classes/guerrier
#
# @executed	as the player & at current position
#
# @within	switch:modes/rush_the_point/classes/main
#

function switch:modes/rush_the_point/classes/_common

item replace entity @s[team=switch.rush_the_point.blue] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=3827848,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.blue] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=546752,enchantments={"protection":4}]

item replace entity @s[team=switch.rush_the_point.red] armor.head with leather_helmet[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.chest with leather_chestplate[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.legs with leather_leggings[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=16731469,enchantments={"protection":4}]
item replace entity @s[team=switch.rush_the_point.red] armor.feet with leather_boots[unbreakable={},tooltip_display={"hidden_components":["minecraft:unbreakable"]},dyed_color=13369344,enchantments={"protection":4}]
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"blocks",claim:0,canon:10,sibling:0},{i:1,role:"melee",claim:1,canon:1,sibling:0},{i:2,role:"tool",claim:1,canon:2,sibling:0},{i:3,role:"blocks",claim:1,canon:3,sibling:0},{i:4,role:"heal",claim:1,canon:7,sibling:0},{i:5,role:"heal",claim:0,canon:8,sibling:1},{i:6,role:"food",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/rush_the_point/classes/guerrier/items with storage switch:layout out

