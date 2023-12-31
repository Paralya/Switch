
execute if score @s switch.glassrunner.use_snowball matches 1.. run function switch:modes/glassrunner/snowball/use

execute if predicate switch:holding_destroying_crossbow run item modify entity @s weapon.mainhand switch:charged
execute if predicate switch:holding_destroying_crossbow run effect give @s slowness 1 3 true
execute if predicate switch:holding_destroying_crossbow run effect give @s minecraft:jump_boost 1 250 true



data remove storage switch:glassrunner temp.Inventory
data modify storage switch:glassrunner temp.Inventory set from entity @s Inventory

execute unless data storage switch:glassrunner temp.Inventory[{Slot:19b}] run function switch:modes/glassrunner/shop/snowball

execute unless data storage switch:glassrunner temp.Inventory[{Slot:21b}] run function switch:modes/glassrunner/shop/arrow

