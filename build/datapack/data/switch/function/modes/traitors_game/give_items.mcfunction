
#> switch:modes/traitors_game/give_items
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/traitors_game/start [ as @a[tag=!detached] & at @s ]
#

function switch:utils/reset_attributes
attribute @s attack_speed base set 1024

scoreboard players set #armor switch.data 0
scoreboard players set #sword switch.data 0
execute if predicate switch:chance/0.5 run scoreboard players set #armor switch.data 1
execute if predicate switch:chance/0.5 run scoreboard players set #sword switch.data 1
execute if score #armor switch.data matches 0 run item replace entity @s armor.head with iron_helmet[enchantments={protection:2}]
execute if score #armor switch.data matches 1 run item replace entity @s armor.head with diamond_helmet
execute if score #armor switch.data matches 0 run item replace entity @s armor.chest with diamond_chestplate
execute if score #armor switch.data matches 1 run item replace entity @s armor.chest with iron_chestplate[enchantments={protection:1}]
execute if score #armor switch.data matches 0 run item replace entity @s armor.legs with iron_leggings[enchantments={protection:2}]
execute if score #armor switch.data matches 1 run item replace entity @s armor.legs with diamond_leggings
execute if score #armor switch.data matches 0 run item replace entity @s armor.feet with diamond_boots
execute if score #armor switch.data matches 1 run item replace entity @s armor.feet with iron_boots[enchantments={protection:2}]
item replace entity @s inventory.0 with anvil
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"axe",claim:1,canon:4,sibling:0},{i:3,role:"food",claim:1,canon:5,sibling:0},{i:4,role:"heal",claim:1,canon:9,sibling:0},{i:5,role:"ammo",claim:1,canon:7,sibling:0},{i:6,role:"mobility",claim:1,canon:8,sibling:0},{i:7,role:"tool",claim:1,canon:3,sibling:0},{i:8,role:"blocks",claim:1,canon:6,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/traitors_game/give_items/items with storage switch:layout out
# Random items (0 or 1 or 2)
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items
execute if predicate switch:chance/0.5 run function switch:modes/traitors_game/random_items

