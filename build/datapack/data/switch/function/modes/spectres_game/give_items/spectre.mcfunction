
#> switch:modes/spectres_game/give_items/spectre
#
# @executed	as @a[tag=!detached] & at @s
#
# @within	switch:modes/spectres_game/give_items
#

execute if score @s switch.spectres_game.sp_arrows matches 0 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 24
execute if score @s switch.spectres_game.sp_arrows matches 1 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 26
execute if score @s switch.spectres_game.sp_arrows matches 2 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 28
execute if score @s switch.spectres_game.sp_arrows matches 3 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 30
execute if score @s switch.spectres_game.sp_arrows matches 4 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 32
execute if score @s switch.spectres_game.sp_arrows matches 5 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 34
execute if score @s switch.spectres_game.sp_arrows matches 6 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 36
execute if score @s switch.spectres_game.sp_arrows matches 7 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 38
execute if score @s switch.spectres_game.sp_arrows matches 8 run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 40
execute if score @s switch.spectres_game.sp_arrows matches 9.. run item replace entity @s[team=switch.temp.spectre] inventory.0 with arrow 42
item replace entity @s[team=switch.temp.spectre] inventory.1 with stone_axe[attribute_modifiers=[{type:"minecraft:attack_damage",slot:"mainhand",id:"switch.attack_damage",amount:4,operation:"add_value"}]]
data modify storage switch:layout kit set value {reserved:[],items:[{i:0,role:"mobility",claim:1,canon:1,sibling:0},{i:1,role:"melee",claim:1,canon:2,sibling:0},{i:2,role:"ranged",claim:1,canon:4,sibling:0},{i:3,role:"heal",claim:1,canon:8,sibling:0},{i:4,role:"blocks",claim:1,canon:9,sibling:0},{i:5,role:"tool",claim:1,canon:5,sibling:0}]}
function switch:player/layout/resolve
function switch:modes/spectres_game/give_items/spectre/items with storage switch:layout out
effect give @s[team=switch.temp.spectre] invisibility infinite 255 true
effect give @s[team=switch.temp.spectre] resistance infinite 0 true
effect give @s[team=switch.temp.spectre] resistance 30 1 true
effect give @s[team=switch.temp.spectre] speed infinite 0 true

