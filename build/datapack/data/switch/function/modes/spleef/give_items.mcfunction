
#> switch:modes/spleef/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spleef/second [ as @a[tag=!detached] & at @s ]
#

setblock 0 10 0 air
setblock 0 10 0 yellow_shulker_box
loot insert 0 10 0 loot switch:i/ruby_shovel
data modify block 0 10 0 Items[0].components."minecraft:enchantments" set value {"minecraft:efficiency":10}
data modify block 0 10 0 Items append value {id:"white_shulker_box",count:1,Slot:1b,components:{"minecraft:item_name":{"text":"Powder Snow","color":"white","italic":false},"minecraft:item_model":"minecraft:powder_snow_bucket"}}
execute if score @s switch.spleef.powder_snow matches 0 run data modify block 0 10 0 Items[1].count set value 4
execute if score @s switch.spleef.powder_snow matches 1 run data modify block 0 10 0 Items[1].count set value 5
execute if score @s switch.spleef.powder_snow matches 2 run data modify block 0 10 0 Items[1].count set value 6
execute if score @s switch.spleef.powder_snow matches 3 run data modify block 0 10 0 Items[1].count set value 7
execute if score @s switch.spleef.powder_snow matches 4.. run data modify block 0 10 0 Items[1].count set value 8

data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"tool",claim:1,canon:1,sibling:0},{i:1,role:"mobility",claim:1,canon:2,sibling:0},{i:2,role:"blocks",claim:1,canon:9,sibling:0},{i:3,role:"special",claim:1,canon:8,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/spleef/give_items/items with storage switch:layout out
setblock 0 10 0 air

