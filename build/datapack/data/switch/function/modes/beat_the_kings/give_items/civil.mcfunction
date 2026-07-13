
#> switch:modes/beat_the_kings/give_items/civil
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items
#

# Starter kit
item replace entity @s[team=switch.temp.civil] armor.head with iron_helmet
item replace entity @s[team=switch.temp.civil] armor.chest with diamond_chestplate
item replace entity @s[team=switch.temp.civil] armor.legs with chainmail_leggings
item replace entity @s[team=switch.temp.civil] armor.feet with iron_boots[enchantments={feather_falling:2}]
item replace entity @s[team=switch.temp.civil] inventory.0 with arrow 16
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"blocks",claim:1,canon:10,sibling:0},{i:1,role:"melee",claim:1,canon:1,sibling:0},{i:2,role:"ranged",claim:1,canon:2,sibling:0},{i:3,role:"mobility",claim:1,canon:8,sibling:0},{i:4,role:"heal",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/beat_the_kings/give_items/civil/items with storage switch:layout out

