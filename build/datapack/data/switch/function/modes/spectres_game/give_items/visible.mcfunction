
#> switch:modes/spectres_game/give_items/visible
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items
#

item replace entity @s[team=switch.temp.visible] armor.head with chainmail_helmet[enchantments={protection:1}]
item replace entity @s[team=switch.temp.visible] armor.chest with iron_chestplate[enchantments={fire_protection:1}]
item replace entity @s[team=switch.temp.visible] armor.legs with iron_leggings[enchantments={protection:1}]
item replace entity @s[team=switch.temp.visible] armor.feet with diamond_boots[enchantments={fire_protection:1}]
execute if score @s switch.spectres_game.vi_arrows matches 0 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 16
execute if score @s switch.spectres_game.vi_arrows matches 1 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 18
execute if score @s switch.spectres_game.vi_arrows matches 2 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 20
execute if score @s switch.spectres_game.vi_arrows matches 3 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 22
execute if score @s switch.spectres_game.vi_arrows matches 4 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 24
execute if score @s switch.spectres_game.vi_arrows matches 5 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 26
execute if score @s switch.spectres_game.vi_arrows matches 6 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 28
execute if score @s switch.spectres_game.vi_arrows matches 7 run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 30
execute if score @s switch.spectres_game.vi_arrows matches 8.. run item replace entity @s[team=switch.temp.visible] inventory.0 with arrow 32
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"melee",claim:1,canon:1,sibling:0},{i:1,role:"ranged",claim:1,canon:2,sibling:0},{i:2,role:"axe",claim:1,canon:3,sibling:0},{i:3,role:"blocks",claim:1,canon:4,sibling:0},{i:4,role:"mobility",claim:1,canon:8,sibling:0},{i:5,role:"heal",claim:1,canon:9,sibling:0},{i:6,role:"tool",claim:1,canon:5,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/spectres_game/give_items/visible/items with storage switch:layout out

