
#> switch:modes/beat_the_kings/give_items/king
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/beat_the_kings/give_items
#

item replace entity @s[team=switch.temp.king] armor.head with golden_helmet[enchantments={protection:3,unbreaking:10}]
item replace entity @s[team=switch.temp.king] inventory.0 with arrow 45
data modify storage switch:layout kit set value {reserved:[{s:8}],items:[{i:0,role:"mobility",claim:1,canon:1,sibling:0},{i:1,role:"melee",claim:1,canon:2,sibling:0},{i:2,role:"ranged",claim:1,canon:4,sibling:0},{i:3,role:"blocks",claim:1,canon:9,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/beat_the_kings/give_items/king/items with storage switch:layout out
execute if entity @s[team=switch.temp.king] run function switch:modes/beat_the_kings/give_king_gaps with storage switch:temp king_gaps
effect give @s[team=switch.temp.king] resistance infinite 3 true
effect give @s[team=switch.temp.king] speed infinite 0 true
effect give @s[team=switch.temp.king] health_boost infinite 1 true

